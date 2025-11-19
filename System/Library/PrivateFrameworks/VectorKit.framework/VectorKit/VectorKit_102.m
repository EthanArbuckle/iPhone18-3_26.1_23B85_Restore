void sub_1B2F17C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignTileElevatedStrokeData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileElevatedStrokeData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 1313, *a3);
  if (v10 == v8[1318] || (v11 = (v10 - v8[1317]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[1326] + v12), ++*(*(v8[1320] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignTileElevatedStrokeData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileElevatedStrokeData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15A70;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleTransitionToFlatData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15AB8;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F181B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleTransitionToFlatData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTransitionToFlatData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = *((*(*v7 + 48))(v7) + 1408);
  v9 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a4);
  v11 = Pipeline;
  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v8);
  }

  if (*(a3 + 1) == 1)
  {
    v12 = *(a3 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v11, v12, v8);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleTransitionToFlatData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTransitionToFlatData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15AB8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleSunMatrixData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15B00;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F18718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleSunMatrixData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleSunMatrixData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = *((*(*v7 + 48))(v7) + 1392);
  v9 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a4);
  v11 = Pipeline;
  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v8);
  }

  if (*(a3 + 1) == 1)
  {
    v12 = *(a3 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v11, v12, v8);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleSunMatrixData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleSunMatrixData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15B00;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignLightingConfigurationVertexData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15B48;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F18C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLightingConfigurationVertexData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightingConfigurationVertexData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = v6[1];
  if (!v7)
  {
    v8 = **v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_5;
    }

    while (*v9 != 0x22D45F5AAD4BF408)
    {
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_5;
      }
    }

    if (v9 == v10)
    {
LABEL_5:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v11 = v9[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    v6[1] = v7;
  }

  v12 = (**v7)(v7);
  v13 = md::LayoutContext::get<md::LightingLogicContext>(*(v12 + 8));
  if (v13)
  {
    v15 = v13[2];
    v14 = v13[3];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v6[2];
    if (!v16)
    {
      v17 = **v6;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v18 == v19)
      {
        goto LABEL_15;
      }

      while (*v18 != 0x41D4E9297E100630)
      {
        v16 = 0;
        v18 += 5;
        if (v18 == v19)
        {
          goto LABEL_18;
        }
      }

      if (v18 == v19)
      {
LABEL_15:
        v16 = 0;
      }

      else
      {
        v16 = v18[3];
        v24 = v18[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }
      }

LABEL_18:
      v6[2] = v16;
    }

    md::VKMRenderResourcesStore::getPipelineDataSet(v16, *a4);
    Pipeline = md::VKMRenderResourcesStore::getPipeline(v16, *a4);
    v21 = Pipeline;
    if (*a3)
    {
      v22 = 4;
    }

    else
    {
      if (*(a3 + 1) != 1)
      {
LABEL_25:
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*a3 == 1)
        {
          ggl::PipelineSetup::setConstantDataWithoutCheck(v21, *(a3 + 4), v15);
        }

        if (*(a3 + 1) == 1)
        {
          ggl::PipelineSetup::setConstantDataWithoutCheck(v21, *(a3 + 8), v15);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);

          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        return;
      }

      v22 = 8;
    }

    v23 = *(a3 + v22);
    if (v23 != -1)
    {
      ggl::PipelineSetup::setResetFlag(Pipeline, v23, 0, 0);
    }

    goto LABEL_25;
  }
}

uint64_t std::__function::__func<md::ita::AssignLightingConfigurationVertexData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightingConfigurationVertexData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15B48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLightingDebugOptionsConstantData::operator()(ecs2::Query<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightingDebugOptionsConstantData::operator()(ecs2::Query<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::PassListProvider *>::service<md::PassListProvider>(v5);
  v7 = (*(*v6 + 8))(v6);
  if (v7)
  {
    v8 = *(v7 + 344);
    v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v5);
    md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a3);
    Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a3);
    v11 = Pipeline;
    if (*a2 == 1)
    {
      ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a2 + 4), v8);
    }

    if (*(a2 + 1) == 1)
    {
      v12 = *(a2 + 8);

      ggl::PipelineSetup::setConstantDataWithoutCheck(v11, v12, v8);
    }
  }
}

uint64_t std::__function::__func<md::ita::AssignLightingDebugOptionsConstantData::operator()(ecs2::Query<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightingDebugOptionsConstantData::operator()(ecs2::Query<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15B90;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleBlendConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15BD8;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F19534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleBlendConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleBlendConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = *((*(*v7 + 48))(v7) + 1608);
  v9 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a4);
  v11 = Pipeline;
  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v8);
  }

  if (*(a3 + 1) == 1)
  {
    v12 = *(a3 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v11, v12, v8);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleBlendConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleBlendConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15BD8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignGroundAtmosphereConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15C20;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F19A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignGroundAtmosphereConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGroundAtmosphereConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = *((*(*v7 + 48))(v7) + 1328);
  v9 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a4);
  v11 = Pipeline;
  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v8);
  }

  if (*(a3 + 1) == 1)
  {
    v12 = *(a3 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v11, v12, v8);
  }
}

uint64_t std::__function::__func<md::ita::AssignGroundAtmosphereConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGroundAtmosphereConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15C20;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignClippingConstantData::operator()(uint64_t **a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v44 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v51[0] = &unk_1F2A15C68;
  v51[1] = &v44;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v45 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F1A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignClippingConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignClippingConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a5);
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a5);
  v10 = md::VKMRenderResourcesStore::getConstantDataStorage<ggl::Tile::Clipping>(**(a1 + 8), *a3);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v11);
  }

  if (*(a4 + 1) == 1)
  {
    v12 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v12, v11);
  }
}

uint64_t std::__function::__func<md::ita::AssignClippingConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignClippingConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ClippingConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15C68;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleCameraLightingConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A15CB0;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F1A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleCameraLightingConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleCameraLightingConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::StyleCameraLighting>(v8, *a3);
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v10);
  }

  if (*(a4 + 1) == 1)
  {
    v11 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v11, v10);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleCameraLightingConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleCameraLightingConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::StyleCameraConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15CB0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignRenderTargetSizeConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15CF8;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F1AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignRenderTargetSizeConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRenderTargetSizeConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::PassListProvider *>::service<md::PassListProvider>(v6);
  v9 = (*(*v8 + 8))(v8);
  if (v9)
  {
    v10 = *(v9 + 328);
    md::VKMRenderResourcesStore::getPipelineDataSet(v7, *a4);
    Pipeline = md::VKMRenderResourcesStore::getPipeline(v7, *a4);
    v12 = Pipeline;
    if (*a3 == 1)
    {
      ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v10);
    }

    if (*(a3 + 1) == 1)
    {
      v13 = *(a3 + 8);

      ggl::PipelineSetup::setConstantDataWithoutCheck(v12, v13, v10);
    }
  }
}

uint64_t std::__function::__func<md::ita::AssignRenderTargetSizeConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRenderTargetSizeConstantData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15CF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ita::AssignStyleSSAOConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleSSAOConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>(v8 + 285, *a3);
  v11 = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(v8 + 275, v10);
  if (v11)
  {
    v12 = v11[6];
  }

  else
  {
    v12 = 0;
  }

  v13 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 231, v12);
  if (v13 == v8[236] || (v14 = (v13 - v8[235]) >> 3, v15 = (v14 >> 3) & 0x1FFFFFFFFFFFFFF8, v16 = *(v8[244] + v15), ++*(*(v8[238] + v15) + 24 * (v14 & 0x3F)), !v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 24 * (v14 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v17);
  }

  if (*(a4 + 1) == 1)
  {
    v18 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v18, v17);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleSSAOConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleSSAOConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15D40;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignTileTransformConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A15D88;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F1B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignTileTransformConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileTransformConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::Transform>(v8, *a3);
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v10);
  }

  if (*(a4 + 1) == 1)
  {
    v11 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v11, v10);
  }
}

uint64_t std::__function::__func<md::ita::AssignTileTransformConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileTransformConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::TransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15D88;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignPlanarParametersConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15DD0;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignPlanarParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignPlanarParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::getStorage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>(v8 + 609, *a3);
  v11 = std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>(v8 + 599, v10);
  if (v11)
  {
    v12 = v11[4];
  }

  else
  {
    v12 = 0;
  }

  v13 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 555, v12);
  if (v13 == v8[560] || (v14 = (v13 - v8[559]) >> 3, v15 = (v14 >> 3) & 0x1FFFFFFFFFFFFFF8, v16 = *(v8[568] + v15), ++*(*(v8[562] + v15) + 24 * (v14 & 0x3F)), !v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 24 * (v14 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v17);
  }

  if (*(a4 + 1) == 1)
  {
    v18 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v18, v17);
  }
}

uint64_t std::__function::__func<md::ita::AssignPlanarParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignPlanarParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15DD0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignLandCoverSettingsConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15E18;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLandCoverSettingsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLandCoverSettingsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 771, *a3);
  if (v10 == v8[776] || (v11 = (v10 - v8[775]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[784] + v12), ++*(*(v8[778] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignLandCoverSettingsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLandCoverSettingsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::LandCoverSettingsConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15E18;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleEmissiveColorConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15E60;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1C3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleEmissiveColorConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleEmissiveColorConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getKeyHandle<md::StyleEmissiveColorCacheKey>(v8, *a3);
  if (v10 && ((v11 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v8 + 501, v10), (v12 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(v8 + 491, v11)) == 0) ? (v13 = 0) : (v13 = v12[5]), (v14 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 447, v13), v14 != v8[452]) && (v15 = (v14 - v8[451]) >> 3, v16 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8, v17 = *(v8[460] + v16), ++*(*(v8[454] + v16) + 24 * (v15 & 0x3F)), v17)))
  {
    v18 = *(v17 + 24 * (v15 & 0x3F));
  }

  else
  {
    v18 = 0;
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v18);
  }

  if (*(a4 + 1) == 1)
  {
    v19 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v19, v18);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleEmissiveColorConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleEmissiveColorConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleEmissiveDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15E60;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleRouteLineMaskConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15EA8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1CA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleRouteLineMaskConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleRouteLineMaskConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v8 + 393, *a3);
  v11 = std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>(v8 + 383, v10);
  if (v11)
  {
    v12 = v11[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v8 + 339, v12);
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleRouteLineMaskConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleRouteLineMaskConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleRouteLineMaskDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15EA8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleGroundOcclusionConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15EF0;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleGroundOcclusionConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleGroundOcclusionConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 1393, *a3);
  if (v10 == v8[1398] || (v11 = (v10 - v8[1397]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[1406] + v12), ++*(*(v8[1400] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleGroundOcclusionConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleGroundOcclusionConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleGroundOcclusionConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15EF0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignMaterialStyleConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15FC0;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialStyleConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignMaterialStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignMaterialStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 1501, *a3);
  if (v10 == v8[1506] || (v11 = (v10 - v8[1505]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[1514] + v12), ++*(*(v8[1508] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignMaterialStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignMaterialStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::MaterialStyleConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15FC0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignGradientParametersConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v60[0] = &unk_1F2A16008;
  v60[1] = a1;
  v61 = v60;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle1>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle2>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v62[0] = v9;
  v62[1] = v10;
  v11 = 8;
  v12 = v4;
  v13 = v62;
  do
  {
    if (*(*(v62 + v11) + 40) - *(*(v62 + v11) + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = *(v62 + v11);
      v13 = v62 + v11;
    }

    v11 += 8;
  }

  while (v11 != 32);
  v15 = *(*v13 + 32);
  v14 = *(*v13 + 40);
  v53 = v15;
  v54 = v14;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v51 = v14;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>,std::tuple<>>::isValid(&v53))
  {
    v15 += 2;
    v53 = v15;
    v14 = v51;
  }

  v16 = v53;
  if (v53 == v51)
  {
    v22 = _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v43 = 0;
    goto LABEL_27;
  }

  v50 = a2;
  v17 = v55;
  v18 = v56;
  v19 = v57;
  v20 = v58;
  v21 = v59;
  v22 = _ZTWN4ecs27Runtime11_localStateE();
  v23 = _ZTWN4ecs27Runtime11_stackIndexE();
  v52 = 0;
  v24 = v54;
  do
  {
    v25 = v16[1];
    v26 = v25 >> 6;
    v27 = v25 & 0x3F;
    v28 = v19[1];
    if (v26 >= (v19[2] - v28) >> 3)
    {
LABEL_15:
      v29 = 0;
      goto LABEL_16;
    }

    v29 = *(v28 + 8 * v26);
    if (v29)
    {
      if (*(v29 + 4 * v27) != *v16)
      {
        goto LABEL_15;
      }

      v30 = *(v29 + 4 * v27 + 2);
      v29 = *(v19[7] + ((v30 >> 3) & 0x1FF8)) + 8 * (v30 & 0x3F);
    }

LABEL_16:
    v31 = *(*(*(v17 + 8) + 8 * v26) + 4 * v27 + 2);
    v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
    v33 = *(*(*(v18 + 8) + 8 * v26) + 4 * v27 + 2);
    v34 = *(*(v18 + 56) + ((v33 >> 3) & 0x1FF8));
    v35 = *(*(*(v20 + 8) + 8 * v26) + 4 * v27 + 2);
    v36 = *(*(v20 + 56) + ((v35 >> 3) & 0x1FF8));
    v37 = *(*(*(v21 + 8) + 8 * v26) + 4 * v27 + 2);
    v38 = *(*(v21 + 56) + ((v37 >> 3) & 0x1FF8));
    *(v22 + 104 * *v23 + 24) = *v16;
    *&v62[0] = v29;
    if (!v61)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v61 + 48))(v61, v32 + 8 * (v31 & 0x3F), v34 + 8 * (v33 & 0x3F), v62, v36 + 12 * (v35 & 0x3F), v38 + 8 * (v37 & 0x3F));
    ++v52;
    while (1)
    {
      v39 = v16;
      v16 += 2;
      v53 = v16;
      if (v16 == v24)
      {
        break;
      }

      if (ecs2::ViewIterator<void,std::tuple<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>,std::tuple<>>::isValid(&v53))
      {
        v40 = v39 + 2;
        goto LABEL_22;
      }
    }

    v40 = v16;
    v16 = v24;
LABEL_22:
    v41 = v16 == v51;
    v16 = v40;
  }

  while (!v41);
  v42 = *(v50 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v42 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v42 + 4096);
  v43 = v52;
LABEL_27:
  *(v22 + 104 * *v23 + 24) = -65536;
  v44 = v22 + 104 * *v23;
  v45 = *(v44 + 92);
  *(v44 + 92) = v45 + 1;
  *(v44 + 4 * v45 + 28) = v43;
  v46 = v22 + 104 * *v23;
  v48 = *(v46 + 92);
  v47 = (v46 + 92);
  if (v48 >= 0x10)
  {
    *v47 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v60);
}

void sub_1B2F1DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35450;
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

void ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle2,64ul>::~storage(a1);
}

void *ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::erase(void *a1, unsigned __int16 *a2)
{
  v2 = *(*(a1[1] + ((a2[1] >> 3) & 0x1FF8)) + 4 * (a2[1] & 0x3FLL) + 2);
  v3 = ((a1[5] - a1[4]) >> 2) - 1;
  v4 = v3 & 0x3F;
  v5 = a1[7];
  v6 = *(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v7 = v2 & 0x3F;
  v8 = *(v5 + ((v2 >> 3) & 0x1FF8));
  v9 = *(v8 + 8 * v7);
  *(v8 + 8 * v7) = *(v6 + 8 * v4);
  *(v6 + 8 * v4) = v9;
  return ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, *a2, a2[1]);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35338;
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

void ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t **a4, uint64_t a5, unint64_t *a6)
{
  v8 = *a4;
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v12 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(v9, *a3);
  if (v8)
  {
    v13 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(v9, *v8);
  }

  else
  {
    v13 = 0;
  }

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(PipelineDataSet, Pipeline, v12, 0);

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(PipelineDataSet, Pipeline, v13, 1);
}

void md::typeToIntOrVectorMap(md *this)
{
  v1[2] = *MEMORY[0x1E69E9840];
  {
    {
      v1[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
      v1[1] = 0xFFFFFFFFFLL;
      std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(&md::typeToIntOrVectorMap(void)::typeToIntOrVectorMap, v1, 1);
    }
  }
}

uint64_t std::__function::__func<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16008;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignAmbientTextureIndexFiltered::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A16050;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F1E6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a4);
  v10 = (*(*v7 + 88))(v7);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a3, Pipeline, v10);
}

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16050;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v5);
  v7 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v5);
  md::VKMRenderResourcesStore::getPipelineDataSet(v7, *a3);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v7, *a3);
  v9 = (*(*v6 + 88))(v6);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a2, Pipeline, v9);
}

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16098;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A160E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignTexTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16170;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a3);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16170;
  a2[1] = v2;
  return result;
}

uint64_t *ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(uint64_t **a1)
{
  v1 = a1[2];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x41D4E9297E100630)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[2] = v1;
  }

  return v1;
}

__n128 std::__function::__func<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A161B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignEmissiveTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16200;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a3);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16200;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignOverlayTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16248;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16248;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleIndexTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16290;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = HasMaterialRasterRender;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = HasMaterialRasterRender;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F202E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, ggl::Texture ***a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = Pipeline;
  v11 = *a3;
  v13 = **a3;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v13);
  }

  if (*(a4 + 1) == 1)
  {
    ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 8), v13);
  }

  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16290;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A162D8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = HasMaterialRasterRender;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = HasMaterialRasterRender;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F20880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture *std::__function::__func<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, md::MaterialRaster **a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  result = md::MaterialRaster::styleTexture(*a3, *(*a3 + 122));
  v11 = result;
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), result);
  }

  if (*(a4 + 1) == 1)
  {
    v12 = *(a4 + 8);
    v13 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v13, v12, v11);
  }

  return result;
}

void md::StyleTexture<md::LowZoomStyle>::textureData()
{
  {
    {
      md::StyleTexture<md::LowZoomStyle>::textureData(void)::bytesPerPixel = 4;
    }
  }

  std::allocate_shared[abi:nn200100]<ggl::TextureData2D,std::allocator<ggl::TextureData2D>,unsigned int,unsigned int,int,ggl::PixelFormat const&,BOOL,0>();
}

void sub_1B2F20B94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

double ggl::Texture2D::Texture2D(uint64_t a1, void *a2, void *a3)
{
  ggl::Texture::Texture(a1, "", 1, 1, 0, *(*a2 + 12), 1, 1);
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *v5 = &unk_1F2A5D9F0;
  *(v5 + 40) = &unk_1F2A5DA10;
  v7 = *a2;
  v6 = a2[1];
  *(v5 + 104) = *(*a2 + 8);
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 128) = 0;
  *(v5 + 130) = 1;
  v8 = a3[1];
  *(v5 + 136) = *a3;
  *(v5 + 144) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(*a2 + 16);
  *(v5 + 80) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A162D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, unint64_t *a5)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a5);
  result = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a5);
  v10 = result;
  if (*(*(a1 + 16) + 2) == 1)
  {
    result = md::StyleAttributeRasterSet::textureForAttribute(*a3, 0x9Au);
    v11 = *(a1 + 24);
    if (!result)
    {
      result = *v11;
    }

    *v11 = result;
  }

  v12 = **(a1 + 24);
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 4), v12);
  }

  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(v10 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v14, v13, v12);
  }

  return result;
}

__n128 std::__function::__func<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, unint64_t *a5)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a5);
  result = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a5);
  v10 = result;
  if (*(*(a1 + 16) + 3) == 1)
  {
    result = md::StyleAttributeRasterSet::textureForAttribute(*a3, 0x99u);
    v11 = *(a1 + 24);
    if (!result)
    {
      result = *v11;
    }

    *v11 = result;
  }

  v12 = **(a1 + 24);
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 4), v12);
  }

  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(v10 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v14, v13, v12);
  }

  return result;
}

__n128 std::__function::__func<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignGradient1TextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A163B0;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F213EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::erase(void *a1, unsigned __int16 *a2)
{
  v2 = *(*(a1[1] + ((a2[1] >> 3) & 0x1FF8)) + 4 * (a2[1] & 0x3FLL) + 2);
  v3 = ((a1[5] - a1[4]) >> 2) - 1;
  v4 = v3 & 0x3F;
  v5 = a1[7];
  v6 = *(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v7 = v2 & 0x3F;
  v8 = *(v5 + ((v2 >> 3) & 0x1FF8));
  v9 = *(v8 + 16 * v7);
  *(v8 + 16 * v7) = *(v6 + 16 * v4);
  *(v6 + 16 * v4) = v9;
  return ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, *a2, a2[1]);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35548;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35568;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35548;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);
}

ggl::Texture **std::__function::__func<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A163B0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignGradient2TextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A163F8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F21CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35680;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);
}

ggl::Texture **std::__function::__func<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A163F8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignDiffuseTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16440;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 12 * (v27 & 0x3F), v30 + 16 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F2250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a4);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a3 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a3 + 4), v16);
  }

  if (*(a3 + 1) == 1)
  {
    v17 = *(a3 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16440;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignInstanceTransformDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16488;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F22B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16488;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignElevationsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A164D0;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F230D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A164D0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignNormalsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16518;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F23690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16518;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignUVsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16560;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F23C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16560;
  a2[1] = v2;
  return result;
}

float md::PolylinePixelHiker::computeBisector(_BYTE *a1, float32x2_t *a2, int a3, float32x2_t *a4, float32x2_t *a5, int a6, md::LabelPoint *this)
{
  if (a1[65] == 1)
  {
    md::LabelPoint::geocentricPoint(this);
    for (i = 0; i != 3; ++i)
    {
      *&v66[i] = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(this + i * 8);
    }

    v15 = gm::Matrix<double,3,1>::normalized<int,void>(v66);
    v16 = 0;
    *v66 = v15;
    v66[1] = v17;
    v66[2] = v18;
    do
    {
      v19 = *&v66[v16];
      *(&v63 + v16++) = v19;
    }

    while (v16 != 3);
    if (a3)
    {
      v20 = *a4 ^ *a2 | (a4[1].i32[0] ^ a2[1].i32[0]);
      v21 = v20 != 0;
      if ((a6 & 1) == 0)
      {
        if (!v20)
        {
          return 0.0;
        }

        goto LABEL_40;
      }

LABEL_16:
      v23 = *a4 ^ *a5 | (a4[1].i32[0] ^ a5[1].i32[0]);
      if (!v21 && !v23)
      {
        return 0.0;
      }

      if (v23)
      {
        if (v21)
        {
          for (j = 0; j != 3; ++j)
          {
            *(v66 + j * 4) = a4->f32[j] - a2->f32[j];
          }

          v25 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v26 = 0;
          *v61 = v25;
          v61[1] = v27;
          v61[2] = v28;
          do
          {
            *(v66 + v26 * 4) = a5->f32[v26] - a4->f32[v26];
            ++v26;
          }

          while (v26 != 3);
          v29 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v30 = 0;
          *v60 = v29;
          v60[1] = v31;
          v60[2] = v32;
          do
          {
            *(v66 + v30 * 4) = *&v60[v30] + *&v61[v30];
            ++v30;
          }

          while (v30 != 3);
          v33 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v35 = v34;
          v36 = v63;
          result = -((v34 * v65) - (v37 * v64));
          v39 = -((v63 * v37) - (v33 * v65));
          v40 = v33 * v64;
LABEL_46:
          *v62 = result;
          *&v62[1] = v39;
          *&v62[2] = -(v40 - (v36 * v35));
          if (a1[11] == 1 && (a1[12] & 1) == 0)
          {
            for (k = 0; k != 3; ++k)
            {
              *(v66 + k * 4) = -*&v62[k];
            }

            return *v66;
          }

          return result;
        }

        for (m = 0; m != 3; ++m)
        {
          *(v66 + m * 4) = a5->f32[m] - a4->f32[m];
        }

LABEL_45:
        v55 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
        v35 = v56;
        v36 = v63;
        result = -((v65 * v56) - (v64 * v57));
        v39 = -((v63 * v57) - (v65 * v55));
        v40 = v64 * v55;
        goto LABEL_46;
      }

LABEL_40:
      for (n = 0; n != 3; ++n)
      {
        *(v66 + n * 4) = a4->f32[n] - a2->f32[n];
      }

      goto LABEL_45;
    }

    if (a6)
    {
      v21 = 0;
      goto LABEL_16;
    }

    return 0.0;
  }

  if (a3)
  {
    v22 = *a4 != *a2;
    if ((a6 & 1) == 0)
    {
      if (*a4 == *a2)
      {
        return 0.0;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (!a6)
    {
      return 0.0;
    }

    v22 = 0;
  }

  v41 = *a4;
  v42 = *a5;
  if (!v22 && *&v41 == *&v42)
  {
    return 0.0;
  }

  if (*&v41 == *&v42)
  {
LABEL_36:
    v52 = vsub_f32(*a2, *a4);
    result = vmuls_lane_f32(1.0 / sqrtf(vaddv_f32(vmul_f32(v52, v52))), v52, 1);
    goto LABEL_37;
  }

  if (v22)
  {
    v43 = a4->f32[1];
    v44 = a4->f32[0] - a2->f32[0];
    v45 = v43 - a2->f32[1];
    v46 = 1.0 / sqrtf((v44 * v44) + (v45 * v45));
    v47 = v46 * v44;
    v48 = v46 * v45;
    v49 = a5->f32[0] - a4->f32[0];
    v50 = a5->f32[1] - v43;
    v51 = 1.0 / sqrtf((v49 * v49) + (v50 * v50));
    result = -((v48 + (v51 * v50)) * (1.0 / sqrtf(((v47 + (v51 * v49)) * (v47 + (v51 * v49))) + ((v48 + (v51 * v50)) * (v48 + (v51 * v50))))));
  }

  else
  {
    v59 = vsub_f32(*a5, *a4);
    result = -(v59.f32[1] * (1.0 / sqrtf(vaddv_f32(vmul_f32(v59, v59)))));
  }

LABEL_37:
  if (a1[11] == 1 && (a1[12] & 1) == 0)
  {
    return -result;
  }

  return result;
}

void md::PolylinePixelHiker::getCursorPosition(md::PolylinePixelHiker *this)
{
  (*(*this + 88))(this);
  v2 = *(this + 69);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2F24420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  (*(*v12 + 8))(v12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<md::RoadPosition  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::RoadPosition  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinciTraffic::BaseMesh::~BaseMesh(ggl::DaVinciTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinciTraffic::BasePipelineState::~BasePipelineState(ggl::DaVinciTraffic::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t VKPolynomialCoefficientsForHermitePolynomialWithConstraints(uint64_t result, __n128 a2, double a3, __n128 a4, double a5, __n128 a6, double a7, __n128 a8, double a9)
{
  v9 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a9;
  do
  {
    v10 = 0;
    v11 = (&VKHermiteMatrix + 32 * v9);
    v13 = *v11;
    v12 = v11[1];
    do
    {
      *&v14.f64[0] = v16.n128_u64[v10];
      *&v15.f64[0] = v20.n128_u64[v10];
      *&v14.f64[1] = v18.n128_u64[v10];
      *&v15.f64[1] = v22.n128_u64[v10];
      *(result + v10 * 8) = vaddvq_f64(vmlaq_f64(vmulq_f64(v15, v12), v13, v14));
      ++v10;
    }

    while (v10 != 3);
    ++v9;
    result += 24;
  }

  while (v9 != 4);
  return result;
}

void md::FlyoverTileData::~FlyoverTileData(md::FlyoverTileData *this)
{
  md::FlyoverTileData::~FlyoverTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A16768;
  *(this + 80) = &unk_1F2A167B0;
  md::RegistryManager::removeRegistry(*(this + 98), this);
  v3 = (this + 800);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (this + 752);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);

  md::MapTileData::~MapTileData(this);
}

void sub_1B2F248FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 800);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 792);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  a10 = (v10 + 752);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
  md::MapTileData::~MapTileData(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = **(result + 16);
  if (*(*(result + 16) + 8) != v1)
  {
    v2 = result;
    v20 = result;
    v3 = **(result + 16);
    v4 = *(result + 24);
    if (v1[24] == 1)
    {
      geo::QuadTile::computeHash(v1);
      v3[24] = 0;
    }

    v5 = v4[1];
    if (v5)
    {
      v6 = *(v3 + 2);
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.u32[0];
      if (v7.u32[0] > 1uLL)
      {
        v9 = *(v3 + 2);
        if (v6 >= *&v5)
        {
          v9 = v6 % *&v5;
        }
      }

      else
      {
        v9 = (*&v5 - 1) & v6;
      }

      v10 = *(*v4 + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
        v2 = v20;
        goto LABEL_34;
      }

      v12 = *(v3 + 2);
      while (1)
      {
        v13 = *(v11 + 1);
        if (v13 == v6)
        {
          if (v11[40] == 1)
          {
            geo::QuadTile::computeHash(v11 + 16);
            v11[40] = 0;
            v14 = *(v11 + 4);
            if (v3[24])
            {
              v15 = (v3[1] + ((*v3 - 0x61C8864680B583EBLL) << 6) + ((*v3 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*v3 - 0x61C8864680B583EBLL);
              v16 = (*(v3 + 1) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
              v12 = (*(v3 + 2) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
              *(v3 + 2) = v12;
              v3[24] = 0;
            }

            else
            {
              v12 = *(v3 + 2);
            }
          }

          else
          {
            v14 = *(v11 + 4);
          }

          if (v14 == v12 && v11[16] == *v3 && v11[17] == v3[1] && *(v11 + 5) == *(v3 + 1) && *(v11 + 6) == *(v3 + 2))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v13 >= *&v5)
            {
              v13 %= *&v5;
            }
          }

          else
          {
            v13 &= *&v5 - 1;
          }

          if (v13 != v9)
          {
LABEL_33:
            v2 = v20;
            break;
          }
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_34:
    v17 = **(v2 + 32);
    if (v17)
    {
      v18 = *(v17 + 144);
      v19 = *(v17 + 152);
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = 257;
    v23 = 1;
    v25 = 0x3F80000000000000;
    v24 = 0;
    md::HeightMeshBuilder::generateHeightMesh(&v21, v3, v18, &v22);
  }

  return result;
}

void sub_1B2F25200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](a14);
  if (a72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a72);
  }

  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x218]);
  }

  if (STACK[0x208])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F252C8()
{
  if (STACK[0x2A8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2A8]);
  }

  if (STACK[0x268])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x268]);
    if (!v0)
    {
      goto LABEL_8;
    }
  }

  else if (!v0)
  {
    goto LABEL_8;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v0);
LABEL_8:
  JUMPOUT(0x1B2F25288);
}

void std::vector<std::shared_ptr<ggl::CommonMesh::Pos4UVMesh>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

uint64_t *std::vector<md::Mesh>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v9;
    }

    v22 = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v11);
    }

    v12 = 80 * v8;
    *(&v21 + 1) = 0;
    *v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
    *(v12 + 46) = *(a2 + 46);
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    *(v12 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *&v21 = 80 * v8 + 80;
    v15 = v2[1];
    v16 = (80 * v8 + *v2 - v15);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v18 = v2[2];
    v19 = v21;
    *(v2 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v20[0] = v17;
    v20[1] = v17;
    result = std::__split_buffer<md::Mesh>::~__split_buffer(v20);
    v7 = v19;
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 46) = *(a2 + 46);
    v3[1] = v5;
    v3[2] = v6;
    v3[4] = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v7 = v3 + 5;
  }

  v2[1] = v7;
  return result;
}

void *md::components::TexturedMeshInstance::TexturedMeshInstance(void *a1, uint64_t a2, __int128 *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v9 = md::components::MeshInstance::MeshInstance(a1, a2, a3, 0, a6, 0);
  v10 = a4[1];
  *(v9 + 112) = *a4;
  *(v9 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  std::vector<std::shared_ptr<ggl::Texture2D>>::__init_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>((a1 + 16), *a5, a5[1], (a5[1] - *a5) >> 4);
  return a1;
}

void sub_1B2F25738(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F25B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 120);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::__split_buffer<md::components::TexturedMeshInstance>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_2::operator()(uint64_t **a1, unsigned int a2)
{
  v2 = **a1;
  if (v2)
  {
    v5 = a1[1];
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    if (v7)
    {
      v8 = **a1;
      v9 = *(v8 + 144);
      v10 = *(v8 + 152);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1065353216;
      md::HeightMeshBuilder::getHeightMesh(&v23, (v5 + 21), v9, a2, &v17);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v21 = xmmword_1B33AFF10;
      v22 = 0x80000000800000;
      v11 = v23;
      v12 = v24;
      if (v23 != v24)
      {
        do
        {
          for (i = 0; i != 12; i += 4)
          {
            v14 = (&v21 + i);
            v15 = *&v11[i];
            *v14 = fminf(v15, *(&v21 + i));
            v14[3] = fmaxf(*(&v21 + i + 12), v15);
          }

          v11 += 12;
        }

        while (v11 != v12);
      }

      md::constructBoundingVolume(&v16);
    }
  }
}

void sub_1B2F25D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void gdc::ComponentStorageWrapper<md::components::BoundingVolume>::emplace(uint64_t *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v35);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v19 = a1[10];
      v20 = (v7 - v19) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = v8 - v19;
      if (v22 >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (!(v23 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = a3[1];
      v25 = (32 * v20);
      *v25 = *a3;
      v25[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = a3[3];
      *(32 * v20 + 0x10) = a3[2];
      *(32 * v20 + 0x18) = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v25 + 4;
      v34 = (v25 + 4);
      v27 = a1[10];
      v28 = a1[11];
      v29 = (v25 + v27 - v28);
      if (v28 != v27)
      {
        v30 = a1[10];
        v31 = v29;
        do
        {
          *v31 = *v30;
          *v30 = 0;
          *(v30 + 8) = 0;
          v31[1] = *(v30 + 16);
          *(v30 + 16) = 0;
          *(v30 + 24) = 0;
          v30 += 32;
          v31 += 2;
        }

        while (v30 != v28);
        do
        {
          std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v27);
          v27 += 32;
        }

        while (v27 != v28);
      }

      v32 = a1[10];
      a1[10] = v29;
      *(a1 + 11) = v34;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = a3[3];
      v7[2] = a3[2];
      v7[3] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v7 + 4;
    }

    a1[11] = v11;
    v17 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v17, &v35, 1);
    }

    return;
  }

  v12 = a1[10] + 4 * (v5 - a1[7]);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(a3 + 1);
  a3[2] = 0;
  a3[3] = 0;
  v16 = *(v12 + 24);
  *(v12 + 16) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = a1[31];
  if (v12 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v35, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::BoundingVolume>::remove(void *a1, uint64_t a2)
{
  v18 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 4 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 32);
    v8 = *(v7 - 24);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v12 = *(v7 - 16);
    v11 = *(v7 - 8);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v6[3];
    v6[2] = v12;
    v6[3] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = a1[11] - 32;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v14);
    a1[11] = v14;
    v15 = a1[28];
    if (v15)
    {
      v16 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v15[6], v16, &v18, 1);
        v15 = *v15;
      }

      while (v15);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::BoundingVolume>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 32;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::BoundingVolume>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::__split_buffer<md::components::TexturedMeshInstance>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(i - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16810;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16810;
  v1 = a1[6];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16810;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *v1;
  v44 = v1[1];
  if (*v1 != v44)
  {
    v47 = *(a1 + 8);
    do
    {
      v3 = *v2;
      v56 = 0;
      v55 = 0;
      v46 = v2;
      v49 = v3;
      if (**(a1 + 24) == *(*(a1 + 24) + 8))
      {
        v7 = 0;
      }

      else
      {
        md::HeightMeshBuilder::getImageOfType(&v60, v3, 2u);
        md::HeightMeshBuilder::getImageOfType(&v57, *v2, 4u);
        v4 = **(a1 + 24);
        v6 = *(v4 + 32);
        v5 = *(v4 + 40);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = 0;
        if (v60 && v57 && v6)
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v58);
        }

        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        }
      }

      v8 = &v59;
      geo::RigidTransform<double,double>::toMatrix(&v59, (v49 + 19));
      v9 = 0;
      v10 = v54;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          *v12 = v8[v11];
          v12 += 3;
          v11 += 4;
        }

        while (v11 != 12);
        ++v9;
        v10 += 8;
        ++v8;
      }

      while (v9 != 3);
      v13 = v49[19];
      v14 = v49[20];
      v15 = v49[21];
      gm::Matrix<double,4,4>::inverted<int,void>(&v52, (v47 + 352));
      v16 = 0;
      v17 = v51;
      v18 = v54;
      do
      {
        v19 = 0;
        v20 = v17;
        do
        {
          *v20 = *&v18[v19];
          v20 += 4;
          v19 += 24;
        }

        while (v19 != 72);
        ++v16;
        ++v17;
        v18 += 8;
      }

      while (v16 != 3);
      v21 = 0;
      v51[3] = 0;
      v51[7] = 0;
      v51[11] = 0;
      v51[12] = v13;
      v51[13] = v14;
      v51[14] = v15;
      v22 = &v52;
      v51[15] = 0x3FF0000000000000;
      do
      {
        v23 = 0;
        v24 = v51;
        do
        {
          v25 = 0;
          v26 = 0.0;
          v27 = v22;
          do
          {
            v28 = *v27;
            v27 += 4;
            v26 = v26 + *&v24[v25++] * v28;
          }

          while (v25 != 4);
          *(&v59 + 4 * v23++ + v21) = v26;
          v24 += 4;
        }

        while (v23 != 4);
        ++v21;
        ++v22;
      }

      while (v21 != 4);
      v29 = 0;
      v30 = &v59;
      do
      {
        v32 = *v30;
        v31 = *(v30 + 1);
        v30 += 4;
        *&v53[v29] = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
        v29 += 16;
      }

      while (v29 != 64);
      v33 = 0;
      v34 = v51;
      v35 = v53;
      do
      {
        v36 = 0;
        v37 = v34;
        do
        {
          *v37 = *&v35[v36];
          v37 += 3;
          v36 += 16;
        }

        while (v36 != 64);
        ++v33;
        v34 = (v34 + 4);
        v35 += 4;
      }

      while (v33 != 3);
      v38 = *(a1 + 32);
      v50[2] = v47;
      v50[3] = v38;
      v50[4] = v51;
      v39 = v49[32];
      v48 = v49[33];
      if (v39 != v48)
      {
        do
        {
          if (*(v39 + 177) - 3 < 2)
          {
            md::HeightMeshBuilder::getImageOfType(v50, *v2, 5u);
            if ((*(a1 + 56) & 1) == 0)
            {
              goto LABEL_46;
            }

            v40 = **(a1 + 48);
            v41 = *(v40 + 144);
            v42 = *(v40 + 152);
            if (v42)
            {
              atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
            }

            if (v41)
            {
              v43 = &unk_1F2A310B0;
              v61 = v41;
            }

            else
            {
LABEL_46:
              v43 = &unk_1F2A310F8;
            }

            v60 = v43;
            v62 = &v60;
            v59 = 0xAAAAAAAAAAAAAAABLL * ((*(v39 + 88) - *(v39 + 80)) >> 2);
            LOBYTE(v52) = 7;
            std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>>,char const(&)[19],unsigned long,ggl::BufferUsage,0>();
          }

          if (!*(v39 + 177))
          {
            v59 = 0xAAAAAAAAAAAAAAABLL * ((*(v39 + 88) - *(v39 + 80)) >> 2);
            LOBYTE(v52) = 7;
            std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>>,char const(&)[19],unsigned long,ggl::BufferUsage,0>();
          }

          v39 += 184;
        }

        while (v39 != v48);
        v7 = v56;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v2 += 2;
    }

    while (v46 + 2 != v44);
  }
}

void sub_1B2F277A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2D0]);
  }

  v41 = *(v39 - 192);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  _Unwind_Resume(a1);
}

void md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0::operator() const(ggl::ResourceAccessor *)::{lambda(std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::c3m::SubMesh const&,gm::Box<float,3> const&,std::vector<gdc::Resource::LoadMetadata> &&<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const::Texture2D> const&)#1}::operator()(void *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 736);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a2;
    v18 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = *a2;
    v18 = 0;
  }

  v17 = v8;
  v19 = v10;
  v20 = 3;
  v21 = *a3;
  v22 = *(a3 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<md::Mesh>::push_back[abi:nn200100]((v6 + 752), &v17);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v11 = *(v6 + 760) - 80;
  v13 = a1[1];
  v12 = a1[2];
  memset(v16, 0, sizeof(v16));
  LOBYTE(v14) = 0;
  v15 = 0;
  md::components::TexturedMeshInstance::TexturedMeshInstance(&v17, v11, v12, a4, v16, &v14);
  gdc::Registry::createWith<md::components::TexturedMeshInstance>(v13);
}

void sub_1B2F27A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  *(v31 - 56) = v30 + 128;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v31 - 56));
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A167C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void md::RenderLayer::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v11, "Render Layer ");
  std::to_string(&v10, *(a1 + 34));
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v10;
  }

  else
  {
    v4 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v11, v4, size);
  v12 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  gdc::DebugTreeNode::DebugTreeNode(a2, &v12);
  std::string::basic_string[abi:nn200100]<0>(&v11, "Active");
  gdc::DebugTreeValue::DebugTreeValue(v7, *(a1 + 32));
  gdc::DebugTreeNode::addProperty(a2, &v11, v7);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void md::PolylineLabelPlacement::lineOffset(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 8);
  v4 = *(this + 40);
  v5 = *(v3 + 8);
  if (v4 < (*(v3 + 16) - v5) >> 4)
  {
    v6 = 0.0;
    if (*(this + 40))
    {
      v7 = *(v3 + 8);
      v8 = *(this + 40);
      do
      {
        v9 = *v7;
        v7 += 2;
        v6 = *(v9 + 8) + v6;
        --v8;
      }

      while (v8);
    }

    md::LabelLineSegment::offsetAtCoordinate(*(v5 + 16 * v4), *(v5 + 16 * v4 + 8), *(this + 41), *(this + 21));
  }
}

uint64_t md::PolylineLabelPlacement::forward(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 6);
  if (v3)
  {
    if (*(this + 22) != *(v3 + 16))
    {
      goto LABEL_6;
    }

    v3 = *(this + 9);
    if (v3)
    {
      if ((*(this + 41) & 0x80000000) == 0)
      {
        LOBYTE(v3) = *(v3 + 8);
        return v3 & 1;
      }

LABEL_6:
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t md::PolylineLabelPlacement::textIndex(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::textIndex((this + 48));
}

uint64_t md::PolylineLabelPlacement::travelDirection(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::travelDirection((this + 48));
}

uint64_t md::PolylineLabelPlacement::geoTransitLink(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 6);
  if (v3 && *(this + 22) == *(v3 + 16) && (v4 = *(this + 9)) != 0 && (*(this + 41) & 0x80000000) == 0 && (v5 = *v4) != 0 && *(v5 + 32) == 2)
  {
    return *(v5 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t md::PolylineLabelPlacement::geoFeature(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::geoFeature((this + 48));
}

uint64_t md::PolylineLabelPlacement::hasAnnotation(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::hasAnnotation((this + 48));
}

uint64_t md::LabelLinePosition::hasAnnotation(md::LabelLinePosition *this)
{
  if (*(*this + 152))
  {
    return 0;
  }

  result = md::LabelLinePosition::geoFeature(this);
  if (result)
  {
    return *(result + 150) != 0;
  }

  return result;
}

unint64_t md::PolylineLabelPlacement::positionInTraffic(uint64_t a1, void *a2, double a3)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((a1 + 48), a3);
  if (!a2[5])
  {
    return 0;
  }

  result = md::LabelLinePosition::geoFeature((a1 + 48));
  if (!result)
  {
    return result;
  }

  v6 = a2[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (result & 0x1FFFFFFF) + 8) ^ HIDWORD(result));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(v6);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v6)
    {
      v11 = v9 % *&v6;
    }
  }

  else
  {
    v11 = v9 & (*&v6 - 1);
  }

  v12 = *(*a2 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (!v13)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13[1];
    if (v9 == v14)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v11)
    {
      return 0;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (v13[2] != result)
  {
    goto LABEL_18;
  }

  v15 = v13[3];
  v16 = v13[4] - v15;
  v17 = md::LabelLinePosition::section((a1 + 48));
  if (v17 >= v16 >> 5)
  {
    return 0;
  }

  v18 = (v15 + 32 * v17);
  v19 = *v18;
  v20 = v18[1];
  if (v19 == v20)
  {
    return 0;
  }

  v21 = *(a1 + 82);
  v22 = *(a1 + 84);
  while (1)
  {
    v23 = *(v19 + 16);
    v24 = *(v19 + 20);
    if (v23 <= v24)
    {
      v25 = *(v19 + 20);
    }

    else
    {
      v25 = *(v19 + 16);
    }

    v26 = *(v19 + 24);
    v27 = *(v19 + 28);
    if (v24 >= v23)
    {
      v28 = *(v19 + 16);
    }

    else
    {
      v28 = *(v19 + 20);
    }

    if (v24 >= v23)
    {
      v29 = fminf(v27, v26);
      v30 = fmaxf(v26, v27);
      if (v23 == v24)
      {
        v26 = v30;
      }

      else
      {
        v29 = *(v19 + 24);
        v26 = *(v19 + 28);
      }

      v27 = v29;
    }

    if (v28 < v21 || (v28 == v21 ? (v31 = v27 <= v22) : (v31 = 0), v31))
    {
      if (v25 > v21)
      {
        break;
      }

      if (v25 == v21 && v26 >= v22)
      {
        break;
      }
    }

    result = 0;
    v19 += 32;
    if (v19 == v20)
    {
      return result;
    }
  }

  return 1;
}

uint64_t md::PolylineLabelPlacement::secondaryMercatorPosition(uint64_t a1, double *a2, double a3)
{
  v5 = md::LabelPoint::mercatorPoint((a1 + 152));
  v6 = *v5;
  *a2 = *v5;
  v7 = *(v5 + 8);
  *a2 = v6 + a3;
  *(a2 + 1) = v7;
  return 1;
}

void md::PolylineLabelPlacement::debugRoadNameForPosition(md::PolylineLabelPlacement *this@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v3 = a2;
  v4 = (this + 48);
  if (*(*(this + 6) + 152))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a3);
  v5 = md::LabelLinePosition::geoFeature(v4);
  v39 = 0;
  if (geo::codec::featureGetNativeLabelCount(v5))
  {
    geo::codec::featureGetNativeLabel(v5, 0, &v39, 0);
  }

  std::string::basic_string[abi:nn200100]<0>(&v33, "RoadPosition name=");
  if (v39)
  {
    v6 = v39;
  }

  else
  {
    v6 = "*** no name ***";
  }

  v7 = strlen(v6);
  v8 = std::string::append(&v33, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v34, " index=", 7uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v12 = *&v35.__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition(v4, v12);
  v13 = md::LabelLinePosition::textIndex(v4);
  std::to_string(&v32, v13);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v32;
  }

  else
  {
    v14 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v35, v14, size);
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v36, " travelDir=", 0xBuLL);
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v20 = *&v37.__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition(v4, v20);
  v21 = md::LabelLinePosition::travelDirection(v4);
  std::string::basic_string[abi:nn200100]<0>(__p, off_1E7B35F28[v21]);
  if ((v31 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v23 = v31;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v37, v22, v23);
  __src = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v26 = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    p_src = __src.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_src = &__src;
    v26 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    v28 = mdm::zone_mallocator::instance(v24);
    v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v28, v27);
    v3[1] = v26;
    v3[2] = v27 | 0x8000000000000000;
    *v3 = v29;
    v3 = v29;
  }

  else
  {
    *(v3 + 23) = v26;
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  memmove(v3, p_src, v26);
LABEL_32:
  *(v3 + v26) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1B2F284A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v47 < 0)
  {
    operator delete(*(v48 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PolylineLabelPlacement::lock@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(this + 48) + 56);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    this = std::mutex::try_lock(v3);
    *a2 = v3;
    *(a2 + 8) = this;
  }

  return this;
}

void std::__shared_ptr_emplace<md::PolylineLabelPlacement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolylineLabelPlacement::~PolylineLabelPlacement(md::PolylineLabelPlacement *this)
{
  *this = &unk_1F2A168B0;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A168B0;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

_DWORD *md::RoadPosition::setValidAtZoom(_DWORD *this, uint64_t a2, int a3)
{
  v3 = a2;
  v4 = this[3];
  v5 = v4 | (1 << a2);
  if (!a3)
  {
    v5 = v4 & ~(1 << a2);
  }

  this[3] = v5;
  if (this[6] < a2)
  {
    v6 = this;
    this = (*(*this + 176))(this, a2, 1.0);
    v6[6] = v3;
  }

  return this;
}

uint64_t md::PolylineLabelPlacement::PolylineLabelPlacement(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, int a6, double a7, float a8)
{
  *(a1 + 8) = 0;
  *(a1 + 9) = a3;
  *(a1 + 10) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = a6;
  *(a1 + 24) = -1;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 44) = 0;
  *(a1 + 45) = a4;
  *a1 = &unk_1F2A168B0;
  md::LabelLineResolvedPosition::LabelLineResolvedPosition(a1 + 48, a2);
  md::RoadPosition::setValidAtZoom(a1, a5, 1);
  return a1;
}

void sub_1B2F288A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *md::GraphTraversalContext::pushItem(void *a1, uint64_t a2)
{
  v4 = a1[12];
  v5 = a1[13];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 46 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[15];
  if (v6 == a1[16] + v7)
  {
    v8 = v7 >= 0x2E;
    v9 = v7 - 46;
    if (!v8)
    {
      v10 = a1[14];
      v11 = a1[11];
      if (v5 - v4 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[15] = v9;
    v16 = *v4;
    a1[12] = v4 + 8;
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1 + 11, &v16);
    v4 = a1[12];
    v5 = a1[13];
  }

  if (v5 == v4)
  {
    v14 = 0;
  }

  else
  {
    v13 = a1[16] + a1[15];
    v14 = *&v4[8 * (v13 / 0x2E)] - 4048 * (v13 / 0x2E) + 88 * v13;
  }

  *v14 = *a2;
  result = md::GraphTraversalPath::GraphTraversalPath((v14 + 8), (a2 + 8));
  *(v14 + 80) = *(a2 + 80);
  ++a1[16];
  return result;
}

void sub_1B2F28DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__emplace_unique_key_args<md::MuninJunction const*,md::MuninJunction const*&>(void *result, unint64_t a2)
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

BOOL md::GraphTraversalContext::hasVisited(int8x8_t *this, const MuninRoadEdge *a2)
{
  if (this->i8[0] != 1)
  {
    v6 = this[7];
    if (v6)
    {
      v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ (a2 >> 32));
      v8 = 0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v7 >> 47) ^ v7);
      v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      v10 = vcnt_s8(v6);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v9;
        if (v9 >= *&v6)
        {
          v11 = v9 % *&v6;
        }
      }

      else
      {
        v11 = v9 & (*&v6 - 1);
      }

      v12 = *(*&this[6] + 8 * v11);
      if (v12)
      {
        v13 = *v12;
        if (v13)
        {
          while (1)
          {
            v14 = v13[1];
            if (v9 == v14)
            {
              if (v13[2] == a2)
              {
                return 1;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v14 >= *&v6)
                {
                  v14 %= *&v6;
                }
              }

              else
              {
                v14 &= *&v6 - 1;
              }

              if (v14 != v11)
              {
                return 0;
              }
            }

            v13 = *v13;
            if (!v13)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  v2 = this[17];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(*&v2 + 24);
  v4 = *(*&v2 + 32);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

void md::MuninAvailabilityDaVinciLayerDataSource::~MuninAvailabilityDaVinciLayerDataSource(md::MuninAvailabilityDaVinciLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelManager::debugString(md::LabelManager *this, uint64_t a2, int a3)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v146);
  if (a3)
  {
    v6 = v146;
    *(&v146 + *(v146 - 24) + 8) = *(&v146 + *(v146 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v148[0].__locale_ + *(v6 - 24)) = 2;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "LayoutZoom:", 11);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Loading Counts: image=", 22);
    v8 = atomic_load((*(a2 + 264) + 140));
    v9 = MEMORY[0x1B8C61C90](&v146, v8);
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ", textData=", 11);
    v11 = atomic_load((*(a2 + 272) + 56));
    v12 = MEMORY[0x1B8C61C90](v10, v11);
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ", glyphImage=", 13);
    v14 = atomic_load((*(a2 + 280) + 64));
    v15 = MEMORY[0x1B8C61C90](v13, v14);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
    v16 = *(a2 + 360);
    v18 = v16[12];
    v17 = v16[13];
    v19 = v16[11];
    v21 = v16[37];
    v20 = v16[38];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Occlusions:(Labels,Graphics) unsubmitted=(", 42);
    v22 = MEMORY[0x1B8C61CB0](&v146, v19);
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ",", 1);
    v24 = MEMORY[0x1B8C61CB0](v23, v21);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ") pending=(", 11);
    v26 = MEMORY[0x1B8C61CB0](v25, (v17 - v18) >> 4);
    v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ",", 1);
    v28 = MEMORY[0x1B8C61CB0](v27, v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, ")\n", 2);
    if (*(a2 + 3072) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Scissor Rect: min=(", 19);
      v29 = MEMORY[0x1B8C61C90](&v146, *(a2 + 3056));
      v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, ", ", 2);
      v31 = MEMORY[0x1B8C61C90](v30, *(a2 + 3060));
      v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "), max=(", 8);
      v33 = MEMORY[0x1B8C61C90](v32, *(a2 + 3064));
      v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, ", ", 2);
      v35 = MEMORY[0x1B8C61C90](v34, *(a2 + 3068));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, ")\n", 2);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "RouteTrafficFeaturesActive=", 27);
    v36 = (*(**(*(a2 + 168) + 48) + 16))(*(*(a2 + 168) + 48));
    v37 = MEMORY[0x1B8C61C80](&v146, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "\n", 1);
    v38 = *(a2 + 3168);
    v39 = *(v38 + 144);
    v40 = *(v38 + 148);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Staging GlyphCache: hits=", 25);
    v41 = MEMORY[0x1B8C61C90](&v146, v39);
    v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, " misses=", 8);
    v43 = MEMORY[0x1B8C61C90](v42, v40);
    *(v43 + *(*v43 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " hit%=", 6);
    v44 = std::ostream::operator<<();
    v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, " size=", 6);
    v46 = MEMORY[0x1B8C61C90](v45, *(*(a2 + 3168) + 152));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "\n", 1);
    v47 = *(*(a2 + 304) + 128);
    v48 = v47[36];
    v49 = v47[37];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Atlas GlyphCache: hits=", 23);
    v50 = MEMORY[0x1B8C61C90](&v146, v48);
    v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, " misses=", 8);
    v52 = MEMORY[0x1B8C61C90](v51, v49);
    *(v52 + *(*v52 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, " hit%=", 6);
    v53 = std::ostream::operator<<();
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " size=", 6);
    v55 = MEMORY[0x1B8C61C90](v54, v47[38]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Atlas glyphs=", 13);
    v56 = MEMORY[0x1B8C61C80](&v146, *(*(a2 + 304) + 96));
    v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, " workingSize=", 13);
    v58 = MEMORY[0x1B8C61C90](v57, *(*(a2 + 304) + 116));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, "\n", 1);
    v59 = *(a2 + 264);
    v61 = *(v59 + 88);
    v60 = *(v59 + 96);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "ImageLoader[", 12);
    v62 = MEMORY[0x1B8C61C90](&v146, v61);
    v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, "]: hits=", 8);
    v64 = MEMORY[0x1B8C61C90](v63, HIDWORD(v61));
    v65 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v64, " misses=", 8);
    v66 = MEMORY[0x1B8C61C90](v65, v60);
    *(v66 + *(*v66 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v66, " hit%=", 6);
    v67 = std::ostream::operator<<();
    v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, " size=", 6);
    v69 = MEMORY[0x1B8C61C90](v68, HIDWORD(v60));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, "\n", 1);
    v70 = (*(***(a2 + 280) + 24))(**(a2 + 280));
    v71 = (*(***(a2 + 280) + 32))(**(a2 + 280));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphLoader: large-scale=", 25);
    v72 = MEMORY[0x1B8C61CF0](&v146, v71);
    v73 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, ", total=", 8);
    v74 = MEMORY[0x1B8C61CF0](v73, v70);
    v75 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v74, ", %=", 4);
    *(v75 + *(*v75 - 24) + 16) = 1;
    v76 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v76, "\n", 1);
    v77 = (*(***(a2 + 280) + 40))(**(a2 + 280));
    v79 = v78;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphLoader CTFont[", 19);
    v80 = MEMORY[0x1B8C61C90](&v146, v77);
    v81 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, "]: hits=", 8);
    v82 = MEMORY[0x1B8C61C90](v81, HIDWORD(v77));
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, " misses=", 8);
    v84 = MEMORY[0x1B8C61C90](v83, v79);
    *(v84 + *(*v84 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, " hit%=", 6);
    v85 = std::ostream::operator<<();
    v86 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v85, " size=", 6);
    v87 = MEMORY[0x1B8C61C90](v86, HIDWORD(v79));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v87, "\n", 1);
    v88 = *(a2 + 304);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphSizes:", 11);
    v90 = *(v88 + 136);
    v89 = *(v88 + 144);
    if (v89 != v90)
    {
      v91 = 0;
      v92 = 0;
      v93 = 1;
      do
      {
        if (*(v90 + 4 * v92))
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " ", 1);
          v94 = MEMORY[0x1B8C61C90](&v146, v91);
          v95 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, "=", 1);
          MEMORY[0x1B8C61C90](v95, *(*(v88 + 136) + 4 * v92));
          v90 = *(v88 + 136);
          v89 = *(v88 + 144);
        }

        v92 = v93++;
        v91 = (v91 + 16);
      }

      while (v92 < (v89 - v90) >> 2);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "RoadPath Glyphs Placed: ", 24);
    v96 = MEMORY[0x1B8C61C90](&v146, *(a2 + 3432));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v96, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Renderer: descs=", 16);
    v97 = MEMORY[0x1B8C61C90](&v146, *(*(a2 + 328) + 1808));
    v98 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, ", items=", 8);
    v99 = MEMORY[0x1B8C61C90](v98, (*(*(a2 + 328) + 1812) + *(*(a2 + 328) + 1816)));
    v100 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v99, "(glyph=", 7);
    v101 = MEMORY[0x1B8C61C90](v100, *(*(a2 + 328) + 1812));
    v102 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v101, ",icon=", 6);
    v103 = MEMORY[0x1B8C61C90](v102, *(*(a2 + 328) + 1816));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v103, ")", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "DevBuff:fl=", 11);
    v104 = MEMORY[0x1B8C61C90](&v146, *(*(a2 + 328) + 1624));
    v105 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v104, ",by=", 4);
    v106 = MEMORY[0x1B8C61C90](v105, *(*(a2 + 328) + 1768));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v106, "\n", 1);
    v107 = *(a2 + 336);
    std::mutex::lock(v107);
    v109 = *(v107 + 408);
    v108 = *(v107 + 416);
    std::mutex::unlock(v107);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Styles[Shared][", 15);
    v110 = MEMORY[0x1B8C61C90](&v146, v109);
    v111 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v110, "]: hits=", 8);
    v112 = MEMORY[0x1B8C61C90](v111, HIDWORD(v109));
    v113 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v112, " misses=", 8);
    v114 = MEMORY[0x1B8C61C90](v113, v108);
    *(v114 + *(*v114 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v114, " hit%=", 6);
    v115 = std::ostream::operator<<();
    v116 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v115, " size=", 6);
    v117 = MEMORY[0x1B8C61C90](v116, HIDWORD(v108));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v117, "\n", 1);
    v118 = *(a2 + 336);
    std::mutex::lock(v118);
    v120 = *(v118 + 296);
    v119 = *(v118 + 304);
    std::mutex::unlock(v118);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Styles[Layout][", 15);
    v121 = MEMORY[0x1B8C61C90](&v146, v120);
    v122 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v121, "]: hits=", 8);
    v123 = MEMORY[0x1B8C61C90](v122, HIDWORD(v120));
    v124 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v123, " misses=", 8);
    v125 = MEMORY[0x1B8C61C90](v124, v119);
    *(v125 + *(*v125 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v125, " hit%=", 6);
    v126 = std::ostream::operator<<();
    v127 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v126, " size=", 6);
    v128 = MEMORY[0x1B8C61C90](v127, HIDWORD(v119));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v128, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Scales:", 7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " content=", 9);
    v129 = std::ostream::operator<<();
    v130 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v129, " label=", 7);
    v131 = MEMORY[0x1B8C61C80](v130, *(a2 + 3400));
    v132 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v131, " resolved=", 10);
    MEMORY[0x1B8C61C80](v132, *(a2 + 3401));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " shield=", 8);
    v133 = MEMORY[0x1B8C61C80](&v146, *(a2 + 3392));
    v134 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, " navShield=", 11);
    MEMORY[0x1B8C61C80](v134, *(a2 + 3393));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "\n", 1);
    md::LabelTextureAtlasStore::debugString(&__p, *(a2 + 256));
    if ((v145 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v145 & 0x80u) == 0)
    {
      v136 = v145;
    }

    else
    {
      v136 = v144;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, p_p, v136);
    if (v145 < 0)
    {
      operator delete(__p);
    }
  }

  (*(**(a2 + 240) + 288))(&__p);
  if ((v145 & 0x80u) == 0)
  {
    v137 = &__p;
  }

  else
  {
    v137 = __p;
  }

  if ((v145 & 0x80u) == 0)
  {
    v138 = v145;
  }

  else
  {
    v138 = v144;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, v137, v138);
  if (v145 < 0)
  {
    operator delete(__p);
  }

  if ((v153 & 0x10) != 0)
  {
    v140 = v152;
    if (v152 < v149)
    {
      v152 = v149;
      v140 = v149;
    }

    locale = v148[4].__locale_;
  }

  else
  {
    if ((v153 & 8) == 0)
    {
      v139 = 0;
      *(this + 23) = 0;
      goto LABEL_38;
    }

    locale = v148[1].__locale_;
    v140 = v148[3].__locale_;
  }

  v139 = v140 - locale;
  if ((v140 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v139 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v139;
  if (v139)
  {
    memmove(this, locale, v139);
  }

LABEL_38:
  *(this + v139) = 0;
  v146 = *MEMORY[0x1E69E54E8];
  *(&v146 + *(v146 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v147 = MEMORY[0x1E69E5548] + 16;
  if (v151 < 0)
  {
    operator delete(v150);
  }

  v147 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v148);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v154);
}

void sub_1B2F2A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void md::FlyoverMetaData::~FlyoverMetaData(md::FlyoverMetaData *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 8);
  v2 = *(this + 5);
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

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void md::FlyoverMetaData::elevationBoundsForTile(md::FlyoverMetaData *this, md::FlyoverRegionManager ***a2, const geo::QuadTile *a3)
{
  RegionAreas = md::FlyoverRegionManager::getRegionAreas(**a2, a3);
  if (*RegionAreas == RegionAreas[1])
  {
    *this = 0;
    *(this + 16) = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    md::FlyoverMetaData::heightIndices(**a2, a3, &v14);
    v7 = v14;
    v8 = v15;
    if (v14 != v15)
    {
      v9 = -20000.0;
      v10 = 20000.0;
      v11 = v14;
      while (1)
      {
        md::FlyoverMetaData::elevationBoundsForHeightTile(v12, **a2, a3, *v11);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v10 = fmin(v10, v12[0]);
        v9 = fmax(v12[1], v9);
        if (++v11 == v8)
        {
          if (v9 < v10)
          {
            break;
          }

          *this = v10;
          *(this + 1) = v9;
          *(this + 16) = 1;
          if (v7)
          {
            goto LABEL_8;
          }

          return;
        }
      }
    }

    *this = 0;
    *(this + 16) = 0;
    if (v7)
    {
LABEL_8:
      operator delete(v7);
    }
  }
}

void sub_1B2F2A3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::FlyoverMetaData::heightIndices(md::FlyoverRegionManager *a1, uint64_t a2, void *a3)
{
  RegionAreas = md::FlyoverRegionManager::getRegionAreas(a1, a2);
  v6 = RegionAreas[1];
  if (*RegionAreas != v6)
  {
    v7 = *RegionAreas + 24;
    do
    {
      v8 = *(a2 + 8);
      v10[0] = *(a2 + 1) | ((~(-1 << *(a2 + 1)) - *(a2 + 4)) << 32);
      v10[1] = v8;
      geo::c3mm::C3mmArea::getHeightIndices(*(v7 - 24), v10);
      v9 = *a3 != a3[1] || v7 == v6;
      v7 += 24;
    }

    while (!v9);
  }
}

uint64_t *md::FlyoverMetaData::elevationBoundsForHeightTile(md::FlyoverMetaData *this, const geo::QuadTile *a2, geo::QuadTile *a3, uint64_t a4)
{
  result = md::FlyoverRegionManager::getRegionAreas(a2, a3);
  v8 = *result;
  v9 = result[1];
  if (*result == v9)
  {
    *this = 0;
    *(this + 16) = 0;
  }

  else
  {
    v10 = *(a3 + 2) | (a4 << 32);
    v17[0] = *(a3 + 1) | ((~(-1 << *(a3 + 1)) - *(a3 + 1)) << 32);
    v17[1] = v10;
    v14[0] = 0;
    v14[1] = 0;
    v15 = 1;
    v16 = 0;
    v11 = v8 + 24;
    while (1)
    {
      result = geo::c3mm::C3mmArea::getEntry(*(v11 - 24), v17, v14);
      if (result != -1)
      {
        break;
      }

      if ((vcgt_f32(vdup_lane_s32(v14[0], 1), v14[0]).u8[0] & 1) == 0)
      {
        v12 = v11 == v9;
        v11 += 24;
        if (!v12)
        {
          continue;
        }
      }

      *this = vcvtq_f64_f32(v14[0]);
      v13 = 1;
      goto LABEL_10;
    }

    v13 = 0;
    *this = 0;
LABEL_10:
    *(this + 16) = v13;
  }

  return result;
}

uint64_t md::FlyoverMetaData::tileType(md::FlyoverMetaData *this, const geo::QuadTile *a2, uint64_t a3)
{
  md::FlyoverMetaData::tileCacheLookup(v11, this, a2, a3, 0);
  if (v17 == 1)
  {
    if (v15 == 1)
    {
      geo::QuadTile::computeHash(v11);
    }

    v4 = v14;
    if (*(a2 + 24))
    {
      v9 = (*(a2 + 1) + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
      v10 = (*(a2 + 1) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583EBLL) ^ v9;
      v5 = (*(a2 + 2) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583EBLL) ^ v10;
      *(a2 + 2) = v5;
      *(a2 + 24) = 0;
    }

    else
    {
      v5 = *(a2 + 2);
    }

    if (v4 == v5 && v11[0] == *a2 && v11[1] == *(a2 + 1) && v12 == *(a2 + 1) && v13 == *(a2 + 2))
    {
      v6 = 1;
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}