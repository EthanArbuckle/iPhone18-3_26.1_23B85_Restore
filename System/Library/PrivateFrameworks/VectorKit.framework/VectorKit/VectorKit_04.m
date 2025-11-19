void sub_1B27BB94C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PushLegacyRibbons>(md::ita::PushLegacyRibbons &&)::{lambda(void)#1},std::allocator<md::ita::PushLegacyRibbons &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PushLegacyRibbons>(md::ita::PushLegacyRibbons &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xE57C2F66048E40BDLL;
    v10[1] = "md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>]";
    v10[2] = 75;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xE57C2F66048E40BDLL;
    v2[1] = "md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>]";
    v2[2] = 75;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BBAB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::CommandBufferDescriptionCreation>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x7C0654221E3B4567;
    v10[1] = "md::ls::CommandBufferDescriptionCreation]";
    v10[2] = 40;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x7C0654221E3B4567;
    v2[1] = "md::ls::CommandBufferDescriptionCreation]";
    v2[2] = 40;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BBC30(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareRenderableData>(md::ita::PrepareRenderableData &&)::{lambda(void)#2},std::allocator<md::ita::PrepareRenderableData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareRenderableData>(md::ita::PrepareRenderableData &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xCF1A54FDD9A1F93FLL;
    *(v9 + 8) = "md::ls::TileRenderableDataHandle]";
    *(v9 + 16) = 32;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xCF1A54FDD9A1F93FLL;
    v2[1] = "md::ls::TileRenderableDataHandle]";
    v2[2] = 32;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xCF1A54FDD9A1F93FLL;
    v4[1] = "md::ls::TileRenderableDataHandle]";
    v4[2] = 32;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xCF1A54FDD9A1F93FLL;
  v19[1] = "md::ls::TileRenderableDataHandle]";
  v19[2] = 32;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BBE70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileRenderables>(md::ita::UpdateTileRenderables &&)::{lambda(void)#2},std::allocator<md::ita::UpdateTileRenderables &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileRenderables>(md::ita::UpdateTileRenderables &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x414BF8D9069621AELL;
    v10[1] = "md::ls::TileViewConstantDataHandle]";
    v10[2] = 34;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x414BF8D9069621AELL;
    v2[1] = "md::ls::TileViewConstantDataHandle]";
    v2[2] = 34;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BBFD4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileTransforms>(md::ita::UpdateTileTransforms &&)::{lambda(void)#1},std::allocator<md::ita::UpdateTileTransforms &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileTransforms>(md::ita::UpdateTileTransforms &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x34AE67B339EEC99CLL;
    *(v9 + 8) = "md::ls::TileBounds]";
    *(v9 + 16) = 18;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x34AE67B339EEC99CLL;
    v2[1] = "md::ls::TileBounds]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xBCC33905201D8160;
    v4[1] = "md::ls::TileMatrix]";
    v4[2] = 18;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xBCC33905201D8160;
  v19[1] = "md::ls::TileMatrix]";
  v19[2] = 18;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BC234(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileTransforms>(md::ita::UpdateTileTransforms &&)::{lambda(void)#2},std::allocator<md::ita::UpdateTileTransforms &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTileTransforms>(md::ita::UpdateTileTransforms &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xD270E8E58701C515;
    v10[1] = "md::ls::TileTransformConstantDataHandle]";
    v10[2] = 39;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xD270E8E58701C515;
    v2[1] = "md::ls::TileTransformConstantDataHandle]";
    v2[2] = 39;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BC398(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::TileMatrix>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xBCC33905201D8160;
    v10[1] = "md::ls::TileMatrix]";
    v10[2] = 18;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xBCC33905201D8160;
    v2[1] = "md::ls::TileMatrix]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BC500(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateCameraStyleLight>(md::ita::UpdateCameraStyleLight &&)::{lambda(void)#2},std::allocator<md::ita::UpdateCameraStyleLight &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateCameraStyleLight>(md::ita::UpdateCameraStyleLight &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x80A8239313E99C5FLL;
    v10[1] = "md::ls::TileStyleCameraConstantDataHandle]";
    v10[2] = 41;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x80A8239313E99C5FLL;
    v2[1] = "md::ls::TileStyleCameraConstantDataHandle]";
    v2[2] = 41;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BC674(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateClippingConstants>(md::ita::UpdateClippingConstants &&)::{lambda(void)#1},std::allocator<md::ita::UpdateClippingConstants &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateClippingConstants>(md::ita::UpdateClippingConstants &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xBCC33905201D8160;
    *(v9 + 8) = "md::ls::TileMatrix]";
    *(v9 + 16) = 18;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xBCC33905201D8160;
    v2[1] = "md::ls::TileMatrix]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x664452B21D4833;
    v19[1] = "md::ls::LayerDataReference]";
    v19[2] = 26;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x664452B21D4833;
    v4[1] = "md::ls::LayerDataReference]";
    v4[2] = 26;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x14C796C7576DD197;
    v14[1] = "md::ls::SupportsFragmentClip]";
    v14[2] = 28;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x14C796C7576DD197;
  v29[1] = "md::ls::SupportsFragmentClip]";
  v29[2] = 28;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BC9B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateDepthPrePassConstants>(md::ita::UpdateDepthPrePassConstants &&)::{lambda(void)#1},std::allocator<md::ita::UpdateDepthPrePassConstants &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateDepthPrePassConstants>(md::ita::UpdateDepthPrePassConstants &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xCF1A54FDD9A1F93FLL;
    *(v9 + 8) = "md::ls::TileRenderableDataHandle]";
    *(v9 + 16) = 32;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xCF1A54FDD9A1F93FLL;
    v2[1] = "md::ls::TileRenderableDataHandle]";
    v2[2] = 32;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xBCC33905201D8160;
    v4[1] = "md::ls::TileMatrix]";
    v4[2] = 18;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xBCC33905201D8160;
  v19[1] = "md::ls::TileMatrix]";
  v19[2] = 18;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BCC18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateShadowConstants>(md::ita::UpdateShadowConstants &&)::{lambda(void)#2},std::allocator<md::ita::UpdateShadowConstants &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateShadowConstants>(md::ita::UpdateShadowConstants &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xF2296D6406C155CBLL;
    v10[1] = "md::ls::TileShadowConstantDataHandle]";
    v10[2] = 36;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xF2296D6406C155CBLL;
    v2[1] = "md::ls::TileShadowConstantDataHandle]";
    v2[2] = 36;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BCD7C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTilePerPoint>(md::ita::UpdateTilePerPoint &&)::{lambda(void)#1},std::allocator<md::ita::UpdateTilePerPoint &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateTilePerPoint>(md::ita::UpdateTilePerPoint &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x695C99F828CA9E84;
    *(v9 + 8) = "md::ls::BaseMapTileHandle]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x695C99F828CA9E84;
    v2[1] = "md::ls::BaseMapTileHandle]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xC0EF30C6D6B08313;
    v19[1] = "md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>]";
    v19[2] = 56;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xC0EF30C6D6B08313;
    v4[1] = "md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>]";
    v4[2] = 56;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCF1A54FDD9A1F93FLL;
    v14[1] = "md::ls::TileRenderableDataHandle]";
    v14[2] = 32;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xCF1A54FDD9A1F93FLL;
  v29[1] = "md::ls::TileRenderableDataHandle]";
  v29[2] = 32;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BD0C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>(md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat &&)::{lambda(void)#1},std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>(md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xF13A29B8320B78ALL;
    v10[1] = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::Mercator>]";
    v10[2] = 65;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xF13A29B8320B78ALL;
    v2[1] = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::Mercator>]";
    v2[2] = 65;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BD224(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyPositionScaleInfo>(md::ita::ApplyPositionScaleInfo &&)::{lambda(void)#1},std::allocator<md::ita::ApplyPositionScaleInfo &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyPositionScaleInfo>(md::ita::ApplyPositionScaleInfo &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x1BBF568133D71FB7;
    v19[1] = "md::ls::RenderablePendingProcessing]";
    v19[2] = 35;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x1BBF568133D71FB7;
    v4[1] = "md::ls::RenderablePendingProcessing]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xEE00EAF3B9AFA033;
    v14[1] = "md::ls::MeshRenderablePositionScaleInfo]";
    v14[2] = 39;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xEE00EAF3B9AFA033;
  v29[1] = "md::ls::MeshRenderablePositionScaleInfo]";
  v29[2] = 39;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BD584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::UniqueStyleEmissiveDataKeyHandle>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xEBDB618C34E97A19;
    v10[1] = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    v10[2] = 40;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xEBDB618C34E97A19;
    v2[1] = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    v2[2] = 40;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BD6EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessMaterialsForUpdatedStyle>(md::ita::ProcessMaterialsForUpdatedStyle &&)::{lambda(void)#2},std::allocator<md::ita::ProcessMaterialsForUpdatedStyle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessMaterialsForUpdatedStyle>(md::ita::ProcessMaterialsForUpdatedStyle &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x849CB194B84BB63DLL;
    *(v9 + 8) = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    *(v9 + 16) = 45;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x849CB194B84BB63DLL;
    v2[1] = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    v2[2] = 45;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xE515B39146CD9FB7;
    v4[1] = "md::ls::UniqueMaterialZIndexHandle]";
    v4[2] = 34;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xE515B39146CD9FB7;
  v19[1] = "md::ls::UniqueMaterialZIndexHandle]";
  v19[2] = 34;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BD95C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateSSAOIntensityData>(md::ita::UpdateSSAOIntensityData &&)::{lambda(void)#1},std::allocator<md::ita::UpdateSSAOIntensityData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateSSAOIntensityData>(md::ita::UpdateSSAOIntensityData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x3209EBE3B62CF3D3;
    *(v9 + 8) = "md::ls::UniqueMaterialData]";
    *(v9 + 16) = 26;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x3209EBE3B62CF3D3;
    v2[1] = "md::ls::UniqueMaterialData]";
    v2[2] = 26;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x4F4D36B2531D496FLL;
    v19[1] = "md::ls::UniqueSSAOIntensityDataHandle]";
    v19[2] = 37;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x4F4D36B2531D496FLL;
    v4[1] = "md::ls::UniqueSSAOIntensityDataHandle]";
    v4[2] = 37;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCE1B2B8E676E76D8;
    v14[1] = "md::ls::MaterialPendingProcessing]";
    v14[2] = 33;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xCE1B2B8E676E76D8;
  v29[1] = "md::ls::MaterialPendingProcessing]";
  v29[2] = 33;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BDCB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveMaterialAlbedoTexture>(md::ita::ResolveMaterialAlbedoTexture &&)::{lambda(void)#1},std::allocator<md::ita::ResolveMaterialAlbedoTexture &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveMaterialAlbedoTexture>(md::ita::ResolveMaterialAlbedoTexture &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x3209EBE3B62CF3D3;
    *(v9 + 8) = "md::ls::UniqueMaterialData]";
    *(v9 + 16) = 26;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x3209EBE3B62CF3D3;
    v2[1] = "md::ls::UniqueMaterialData]";
    v2[2] = 26;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xCE1B2B8E676E76D8;
    v4[1] = "md::ls::MaterialPendingProcessing]";
    v4[2] = 33;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xCE1B2B8E676E76D8;
  v19[1] = "md::ls::MaterialPendingProcessing]";
  v19[2] = 33;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BDF08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveMaterialAlbedoTexture>(md::ita::ResolveMaterialAlbedoTexture &&)::{lambda(void)#2},std::allocator<md::ita::ResolveMaterialAlbedoTexture &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ResolveMaterialAlbedoTexture>(md::ita::ResolveMaterialAlbedoTexture &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x5FF8F613B2E16249;
    *(v9 + 8) = "md::ls::UniqueMaterialAlbedoTexture]";
    *(v9 + 16) = 35;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x5FF8F613B2E16249;
    v2[1] = "md::ls::UniqueMaterialAlbedoTexture]";
    v2[2] = 35;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x9AAE33FEB51FAC5BLL;
    v4[1] = "md::ls::SharedMaterialAlbedoTexture]";
    v4[2] = 35;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x9AAE33FEB51FAC5BLL;
  v19[1] = "md::ls::SharedMaterialAlbedoTexture]";
  v19[2] = 35;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27BE160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CollectMaterialColorData>(md::ita::CollectMaterialColorData &&)::{lambda(void)#2},std::allocator<md::ita::CollectMaterialColorData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CollectMaterialColorData>(md::ita::CollectMaterialColorData &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x60915CB292001F47;
    *(v9 + 8) = "md::ls::UniqueColorDataHandle]";
    *(v9 + 16) = 29;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x60915CB292001F47;
    v2[1] = "md::ls::UniqueColorDataHandle]";
    v2[2] = 29;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xC893C1C4D3D90FF5;
    v19[1] = "md::ls::SharedColorDataHandle]";
    v19[2] = 29;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xC893C1C4D3D90FF5;
    v4[1] = "md::ls::SharedColorDataHandle]";
    v4[2] = 29;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xA3F884E4E2541296;
    v14[1] = "md::ls::ColorDataHandle]";
    v14[2] = 23;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xA3F884E4E2541296;
  v29[1] = "md::ls::ColorDataHandle]";
  v29[2] = 23;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BE49C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareShadowBounds>(md::ita::PrepareShadowBounds &&)::{lambda(void)#2},std::allocator<md::ita::PrepareShadowBounds &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareShadowBounds>(md::ita::PrepareShadowBounds &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x5EBA003AC7A96B8ALL;
    v10[1] = "md::ls::SharedRenderableDataHandle]";
    v10[2] = 34;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x5EBA003AC7A96B8ALL;
    v2[1] = "md::ls::SharedRenderableDataHandle]";
    v2[2] = 34;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BE608(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMainSliceWithCulled>(md::ita::PrepareMainSliceWithCulled &&)::{lambda(void)#1},std::allocator<md::ita::PrepareMainSliceWithCulled &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareMainSliceWithCulled>(md::ita::PrepareMainSliceWithCulled &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 4uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x45B31C2960E9BCB1;
    v19[1] = "md::ls::VisibilityGroupID]";
    v19[2] = 25;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x45B31C2960E9BCB1;
    v4[1] = "md::ls::VisibilityGroupID]";
    v4[2] = 25;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x6CA90C12C415463ALL;
    v29[1] = "md::ls::WantsCulledSlices]";
    v29[2] = 25;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x6CA90C12C415463ALL;
    v14[1] = "md::ls::WantsCulledSlices]";
    v14[2] = 25;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x731F9AB6193E8641;
    v24[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledMain>]";
    v24[2] = 51;
    v34 = (v24 + 3);
    goto LABEL_49;
  }

  v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
  v37 = 2 * v36;
  if (2 * v36 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  if (v36 >= 0x555555555555555)
  {
    v38 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
  }

  v39 = (8 * ((v24 - *a1) >> 3));
  *v39 = 0x731F9AB6193E8641;
  v39[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledMain>]";
  v39[2] = 51;
  v34 = 24 * v35 + 24;
  v40 = a1[1] - *a1;
  v41 = 24 * v35 - v40;
  memcpy(v39 - v40, *a1, v40);
  v42 = *a1;
  *a1 = v41;
  a1[1] = v34;
  a1[2] = 0;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_49:
  a1[1] = v34;
}

void sub_1B27BEA34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareCulledShadowSlice>(md::ita::PrepareCulledShadowSlice &&)::{lambda(void)#1},std::allocator<md::ita::PrepareCulledShadowSlice &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareCulledShadowSlice>(md::ita::PrepareCulledShadowSlice &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 6uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xCEB05E103001C9FELL;
    v19[1] = "md::ls::SliceAssignmentT<md::SliceType::AllShadow>]";
    v19[2] = 50;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xCEB05E103001C9FELL;
    v4[1] = "md::ls::SliceAssignmentT<md::SliceType::AllShadow>]";
    v4[2] = 50;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x45B31C2960E9BCB1;
    v29[1] = "md::ls::VisibilityGroupID]";
    v29[2] = 25;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x45B31C2960E9BCB1;
    v14[1] = "md::ls::VisibilityGroupID]";
    v14[2] = 25;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x5EBA003AC7A96B8ALL;
    v39[1] = "md::ls::SharedRenderableDataHandle]";
    v39[2] = 34;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x5EBA003AC7A96B8ALL;
    v24[1] = "md::ls::SharedRenderableDataHandle]";
    v24[2] = 34;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_74;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0xA054AACDFDD6A6BLL;
    v49[1] = "md::ls::AppliedWantsDynamicShadowBounds]";
    v49[2] = 39;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0xA054AACDFDD6A6BLL;
    v34[1] = "md::ls::AppliedWantsDynamicShadowBounds]";
    v34[2] = 39;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0x2523AFF0E364AA00;
    v44[1] = "md::BoundData]";
    v44[2] = 13;
    v54 = (v44 + 3);
    goto LABEL_73;
  }

  v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
  if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_74:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
  v57 = 2 * v56;
  if (2 * v56 <= v55 + 1)
  {
    v57 = v55 + 1;
  }

  if (v56 >= 0x555555555555555)
  {
    v58 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v58 = v57;
  }

  if (v58)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
  }

  v59 = (8 * ((v44 - *a1) >> 3));
  *v59 = 0x2523AFF0E364AA00;
  v59[1] = "md::BoundData]";
  v59[2] = 13;
  v54 = 24 * v55 + 24;
  v60 = a1[1] - *a1;
  v61 = 24 * v55 - v60;
  memcpy(v59 - v60, *a1, v60);
  v62 = *a1;
  *a1 = v61;
  a1[1] = v54;
  a1[2] = 0;
  if (v62)
  {
    operator delete(v62);
  }

LABEL_73:
  a1[1] = v54;
}

void sub_1B27BF038(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::PassToCommandBuffers>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xA7E255916A50AFB1;
    v10[1] = "md::ls::PassToCommandBuffers]";
    v10[2] = 28;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xA7E255916A50AFB1;
    v2[1] = "md::ls::PassToCommandBuffers]";
    v2[2] = 28;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BF1A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForStyleGroundOcclusion>(md::ita::ProcessRenderableForStyleGroundOcclusion &&)::{lambda(void)#1},std::allocator<md::ita::ProcessRenderableForStyleGroundOcclusion &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForStyleGroundOcclusion>(md::ita::ProcessRenderableForStyleGroundOcclusion &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xBEF372B431A710A8;
    v19[1] = "md::ls::UnitsPerMeter]";
    v19[2] = 21;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xBEF372B431A710A8;
    v4[1] = "md::ls::UnitsPerMeter]";
    v4[2] = 21;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xA219A074B7259E0FLL;
    v14[1] = "md::ls::InView]";
    v14[2] = 14;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xA219A074B7259E0FLL;
  v29[1] = "md::ls::InView]";
  v29[2] = 14;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BF4F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareRasterOverlayDataHandle>(md::ita::PrepareRasterOverlayDataHandle &&)::{lambda(void)#2},std::allocator<md::ita::PrepareRasterOverlayDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareRasterOverlayDataHandle>(md::ita::PrepareRasterOverlayDataHandle &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xDC66BF6D06F6D0BALL;
    v10[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v10[2] = 39;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xDC66BF6D06F6D0BALL;
    v2[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v2[2] = 39;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27BF66C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateStyleTextureIfNecessary>(md::ita::UpdateStyleTextureIfNecessary &&)::{lambda(void)#1},std::allocator<md::ita::UpdateStyleTextureIfNecessary &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateStyleTextureIfNecessary>(md::ita::UpdateStyleTextureIfNecessary &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 5uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA219A074B7259E0FLL;
    *(v9 + 8) = "md::ls::InView]";
    *(v9 + 16) = 14;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA219A074B7259E0FLL;
    v2[1] = "md::ls::InView]";
    v2[2] = 14;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x8DCCA4FD35258189;
    v19[1] = "md::ls::MeshRenderableID]";
    v19[2] = 24;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x8DCCA4FD35258189;
    v4[1] = "md::ls::MeshRenderableID]";
    v4[2] = 24;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0xB6C12FBB402E8E70;
    v29[1] = "md::ls::RenderableMaterialData]";
    v29[2] = 30;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0xB6C12FBB402E8E70;
    v14[1] = "md::ls::RenderableMaterialData]";
    v14[2] = 30;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x9D7520A01DC69D83;
    v39[1] = "md::ls::HasMaterialRaster]";
    v39[2] = 25;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x9D7520A01DC69D83;
    v24[1] = "md::ls::HasMaterialRaster]";
    v24[2] = 25;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 < v43)
  {
    *v34 = 0x7A5110AF346E0C7FLL;
    v34[1] = "md::ls::MaterialRasterMaxIndex]";
    v34[2] = 30;
    v44 = (v34 + 3);
    goto LABEL_61;
  }

  v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_62:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
  v47 = 2 * v46;
  if (2 * v46 <= v45 + 1)
  {
    v47 = v45 + 1;
  }

  if (v46 >= 0x555555555555555)
  {
    v48 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v48 = v47;
  }

  if (v48)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
  }

  v49 = (8 * ((v34 - *a1) >> 3));
  *v49 = 0x7A5110AF346E0C7FLL;
  v49[1] = "md::ls::MaterialRasterMaxIndex]";
  v49[2] = 30;
  v44 = 24 * v45 + 24;
  v50 = a1[1] - *a1;
  v51 = 24 * v45 - v50;
  memcpy(v49 - v50, *a1, v50);
  v52 = *a1;
  *a1 = v51;
  a1[1] = v44;
  a1[2] = 0;
  if (v52)
  {
    operator delete(v52);
  }

LABEL_61:
  a1[1] = v44;
}

void sub_1B27BFB94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForStyleRouteLineMask>(md::ita::ProcessRenderableForStyleRouteLineMask &&)::{lambda(void)#1},std::allocator<md::ita::ProcessRenderableForStyleRouteLineMask &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForStyleRouteLineMask>(md::ita::ProcessRenderableForStyleRouteLineMask &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA219A074B7259E0FLL;
    *(v9 + 8) = "md::ls::InView]";
    *(v9 + 16) = 14;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA219A074B7259E0FLL;
    v2[1] = "md::ls::InView]";
    v2[2] = 14;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x8DCCA4FD35258189;
    v19[1] = "md::ls::MeshRenderableID]";
    v19[2] = 24;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x8DCCA4FD35258189;
    v4[1] = "md::ls::MeshRenderableID]";
    v4[2] = 24;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x1E32B611A47A0BAALL;
    v14[1] = "md::ls::SharedGradientMaskDataHandle]";
    v14[2] = 36;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x1E32B611A47A0BAALL;
  v29[1] = "md::ls::SharedGradientMaskDataHandle]";
  v29[2] = 36;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27BFECC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::StyleRouteLineMaskDataKeyHandle>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x8E45E81B6E5A8E0ELL;
    v10[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v10[2] = 39;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x8E45E81B6E5A8E0ELL;
    v2[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v2[2] = 39;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C002C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForSSAOConstantData>(md::ita::ProcessRenderableForSSAOConstantData &&)::{lambda(void)#2},std::allocator<md::ita::ProcessRenderableForSSAOConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ProcessRenderableForSSAOConstantData>(md::ita::ProcessRenderableForSSAOConstantData &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x3AC919C8A5243F9;
    v10[1] = "md::ls::StyleSSAODataKeyHandle]";
    v10[2] = 30;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x3AC919C8A5243F9;
    v2[1] = "md::ls::StyleSSAODataKeyHandle]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C01A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyAlbedoTint>(md::ita::ApplyAlbedoTint &&)::{lambda(void)#2},std::allocator<md::ita::ApplyAlbedoTint &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::ApplyAlbedoTint>(md::ita::ApplyAlbedoTint &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xA3F884E4E2541296;
    v10[1] = "md::ls::ColorDataHandle]";
    v10[2] = 23;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xA3F884E4E2541296;
    v2[1] = "md::ls::ColorDataHandle]";
    v2[2] = 23;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C030C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareGradientParametersConstantDataHandle>(md::ita::PrepareGradientParametersConstantDataHandle &&)::{lambda(void)#1},std::allocator<md::ita::PrepareGradientParametersConstantDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareGradientParametersConstantDataHandle>(md::ita::PrepareGradientParametersConstantDataHandle &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x8DCCA4FD35258189;
    *(v9 + 8) = "md::ls::MeshRenderableID]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x8DCCA4FD35258189;
    v2[1] = "md::ls::MeshRenderableID]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xA219A074B7259E0FLL;
    v19[1] = "md::ls::InView]";
    v19[2] = 14;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xA219A074B7259E0FLL;
    v4[1] = "md::ls::InView]";
    v4[2] = 14;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x741786E98487217CLL;
    v14[1] = "md::ls::RampMaterialData]";
    v14[2] = 24;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x741786E98487217CLL;
  v29[1] = "md::ls::RampMaterialData]";
  v29[2] = 24;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27C0660(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreateMainRenderItems>(md::ita::CreateMainRenderItems &&)::{lambda(void)#1},std::allocator<md::ita::CreateMainRenderItems &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreateMainRenderItems>(md::ita::CreateMainRenderItems &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 0x40uLL);
  v2 = a1;
  _ZZN3gdc16forEachInnerTypeINSt3__15tupleIJN2md2ls16MeshRenderableIDENS4_16SliceAssignmentTILNS3_9SliceTypeE7EEENS4_26RenderableMeshVertexFormatENS4_8TileTypeENS4_17PendingProcessingENS4_14MeshLayerTypeVENS4_18IntendedSceneLayerENS4_13HasMeshHandleENS4_35PositionScaleInfoConstantDataHandleENS4_22ViewConstantDataHandleENS4_27TransformConstantDataHandleENS4_18StyleDataKeyHandleENS4_22StyleSSAODataKeyHandleENS4_26StyleEmissiveDataKeyHandleENS4_28ColorCorrectionDataKeyHandleENS4_29StyleCameraConstantDataHandleENS4_15ColorDataHandleENS4_10IndexRangeENS4_38StyleGroundOcclusionConstantDataHandleENS4_26SharedMaterialZIndexHandleENS4_13NormalsHandleENS4_23InstanceTransformHandleENS4_9UVsHandleENS4_31StyleRouteLineMaskDataKeyHandleENS4_15ElevationHandleENS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEENS4_35LandCoverSettingsConstantDataHandleENS4_24ShadowConstantDataHandleENS4_25PrepassConstantDataHandleENS4_26ClippingConstantDataHandleENS4_30PlanarParametersCacheKeyHandleENSW_INSX_10TexTextureEEENSW_INSX_15EmissiveTextureEEENSW_INSX_14OverlayTextureEEENS4_29BlendRasterConstantDataHandleENS4_31RasterOverlayConstantDataHandleENS4_40FlyoverCommonTransformConstantDataHandleENS4_30FlyoverCommonS2TransformHandleENS4_28FlyoverCommonTexcoordsHandleENS4_27FlyoverCommonMaterialHandleENS4_29FlyoverClipConstantDataHandleENSW_IN7Flyover14DiffuseTextureEEENSW_INS1I_12NightTextureEEENS4_26HasStyleAttributeRasterSetENS4_17HasMaterialRasterENS4_16NeedsClimateTintENS4_17CustomRenderStateENS4_19ColorRampDataHandleENS4_14SharedUniqueIDENS4_8IsOpaqueENS4_13IsTransparentENS4_10NeedsZBiasENS4_14PreserveHeightENS4_13InstanceCountENS4_7IsDecalENS4_10IsMaterialENS4_9TriPlanarENS4_10IsMercatorENS4_23SupportsStylizedShadingENS4_26SupportsSteepnessDarkeningENS4_15FlyoverInstanceENS4_12CustomZIndexENS4_14RenderableHashENS4_21PredefinedRenderStateEEEEZNS_18typelist_as_vectorIS28_EENS1_6vectorINS_8TypeInfoENS1_9allocatorIS2B_EEEEvEUlTyvE_EEvOT0_ENKUlTpTnmNS1_16integer_sequenceImJXspT_EEEEE_clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37ELm38ELm39ELm40ELm41ELm42ELm43ELm44ELm45ELm46ELm47ELm48ELm49ELm50ELm51ELm52ELm53ELm54ELm55ELm56ELm57ELm58ELm59ELm60ELm61ELm62ELm63EEEEDaS2J_(&v2);
}

void sub_1B27C06D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfRenderableIsUnique>(md::ita::CheckIfRenderableIsUnique &&)::{lambda(void)#1},std::allocator<md::ita::CheckIfRenderableIsUnique &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfRenderableIsUnique>(md::ita::CheckIfRenderableIsUnique &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x4F0CC5B74BC3AC16;
    *(v9 + 8) = "md::ls::UniqueRenderArrayID]";
    *(v9 + 16) = 27;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x4F0CC5B74BC3AC16;
    v2[1] = "md::ls::UniqueRenderArrayID]";
    v2[2] = 27;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x7931433C9A6EB2C6;
    v4[1] = "md::ls::SharedUniqueID]";
    v4[2] = 22;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x7931433C9A6EB2C6;
  v19[1] = "md::ls::SharedUniqueID]";
  v19[2] = 22;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27C0950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderOrder>(md::ita::AssignRenderOrder &&)::{lambda(void)#1},std::allocator<md::ita::AssignRenderOrder &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderOrder>(md::ita::AssignRenderOrder &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 9uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x76B9BA390004E44ELL;
    *(v9 + 8) = "md::ls::IsDecal]";
    *(v9 + 16) = 15;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x76B9BA390004E44ELL;
    v2[1] = "md::ls::IsDecal]";
    v2[2] = 15;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xD68EA0DE832DEC03;
    v19[1] = "md::ls::RenderItemID]";
    v19[2] = 20;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xD68EA0DE832DEC03;
    v4[1] = "md::ls::RenderItemID]";
    v4[2] = 20;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x3E8485C60908F920;
    v29[1] = "md::ls::IsMaterial]";
    v29[2] = 18;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x3E8485C60908F920;
    v14[1] = "md::ls::IsMaterial]";
    v14[2] = 18;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x3EAAB620EAA88EC8;
    v39[1] = "md::ls::CustomZIndex]";
    v39[2] = 20;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x3EAAB620EAA88EC8;
    v24[1] = "md::ls::CustomZIndex]";
    v24[2] = 20;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0x7087983DEF28DBFELL;
    v49[1] = "md::ls::IsOpaque]";
    v49[2] = 16;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0x7087983DEF28DBFELL;
    v34[1] = "md::ls::IsOpaque]";
    v34[2] = 16;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
    v57 = 2 * v56;
    if (2 * v56 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    if (v56 >= 0x555555555555555)
    {
      v58 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v58 = v57;
    }

    if (v58)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
    }

    v59 = (8 * ((v44 - *a1) >> 3));
    *v59 = 0x763953A644184BA9;
    v59[1] = "md::ls::RenderableHash]";
    v59[2] = 22;
    v54 = (24 * v55 + 24);
    v60 = a1[1] - *a1;
    v61 = 24 * v55 - v60;
    memcpy(v59 - v60, *a1, v60);
    v62 = *a1;
    *a1 = v61;
    a1[1] = v54;
    a1[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v44 = 0x763953A644184BA9;
    v44[1] = "md::ls::RenderableHash]";
    v44[2] = 22;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 >= v63)
  {
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *a1) >> 3);
    v67 = 2 * v66;
    if (2 * v66 <= v65 + 1)
    {
      v67 = v65 + 1;
    }

    if (v66 >= 0x555555555555555)
    {
      v68 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v68 = v67;
    }

    if (v68)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v68);
    }

    v69 = (8 * ((v54 - *a1) >> 3));
    *v69 = 0x9705908F280836EDLL;
    v69[1] = "md::ls::SharedMaterialZIndexHandle]";
    v69[2] = 34;
    v64 = (24 * v65 + 24);
    v70 = a1[1] - *a1;
    v71 = 24 * v65 - v70;
    memcpy(v69 - v70, *a1, v70);
    v72 = *a1;
    *a1 = v71;
    a1[1] = v64;
    a1[2] = 0;
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    *v54 = 0x9705908F280836EDLL;
    v54[1] = "md::ls::SharedMaterialZIndexHandle]";
    v54[2] = 34;
    v64 = v54 + 3;
  }

  a1[1] = v64;
  v73 = a1[2];
  if (v64 >= v73)
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_110;
    }

    v76 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *a1) >> 3);
    v77 = 2 * v76;
    if (2 * v76 <= v75 + 1)
    {
      v77 = v75 + 1;
    }

    if (v76 >= 0x555555555555555)
    {
      v78 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v78 = v77;
    }

    if (v78)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v78);
    }

    v79 = (8 * ((v64 - *a1) >> 3));
    *v79 = 0x3EB2A2A09E298E0ELL;
    v79[1] = "md::ls::IntendedStandardPassShadow]";
    v79[2] = 34;
    v74 = (24 * v75 + 24);
    v80 = a1[1] - *a1;
    v81 = 24 * v75 - v80;
    memcpy(v79 - v80, *a1, v80);
    v82 = *a1;
    *a1 = v81;
    a1[1] = v74;
    a1[2] = 0;
    if (v82)
    {
      operator delete(v82);
    }
  }

  else
  {
    *v64 = 0x3EB2A2A09E298E0ELL;
    v64[1] = "md::ls::IntendedStandardPassShadow]";
    v64[2] = 34;
    v74 = v64 + 3;
  }

  a1[1] = v74;
  v83 = a1[2];
  if (v74 < v83)
  {
    *v74 = 0xE7D1C5E790E8E07;
    v74[1] = "md::ls::IntendedStandardPassSceneDepth]";
    v74[2] = 38;
    v84 = (v74 + 3);
    goto LABEL_109;
  }

  v85 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a1) >> 3);
  if (v85 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_110:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v86 = 0xAAAAAAAAAAAAAAABLL * ((v83 - *a1) >> 3);
  v87 = 2 * v86;
  if (2 * v86 <= v85 + 1)
  {
    v87 = v85 + 1;
  }

  if (v86 >= 0x555555555555555)
  {
    v88 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v88 = v87;
  }

  if (v88)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v88);
  }

  v89 = (8 * ((v74 - *a1) >> 3));
  *v89 = 0xE7D1C5E790E8E07;
  v89[1] = "md::ls::IntendedStandardPassSceneDepth]";
  v89[2] = 38;
  v84 = 24 * v85 + 24;
  v90 = a1[1] - *a1;
  v91 = 24 * v85 - v90;
  memcpy(v89 - v90, *a1, v90);
  v92 = *a1;
  *a1 = v91;
  a1[1] = v84;
  a1[2] = 0;
  if (v92)
  {
    operator delete(v92);
  }

LABEL_109:
  a1[1] = v84;
}

void sub_1B27C121C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderOrder>(md::ita::AssignRenderOrder &&)::{lambda(void)#2},std::allocator<md::ita::AssignRenderOrder &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderOrder>(md::ita::AssignRenderOrder &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 5uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x9158B59D97A4E38DLL;
    *(v9 + 8) = "md::ls::RenderOrderToUse]";
    *(v9 + 16) = 24;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x9158B59D97A4E38DLL;
    v2[1] = "md::ls::RenderOrderToUse]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x9158B59D97A4E38DLL;
    v19[1] = "md::ls::RenderOrderToUse]";
    v19[2] = 24;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x9158B59D97A4E38DLL;
    v4[1] = "md::ls::RenderOrderToUse]";
    v4[2] = 24;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x9158B59D97A4E38DLL;
    v29[1] = "md::ls::RenderOrderToUse]";
    v29[2] = 24;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x9158B59D97A4E38DLL;
    v14[1] = "md::ls::RenderOrderToUse]";
    v14[2] = 24;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_62;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0x9158B59D97A4E38DLL;
    v39[1] = "md::ls::RenderOrderToUse]";
    v39[2] = 24;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0x9158B59D97A4E38DLL;
    v24[1] = "md::ls::RenderOrderToUse]";
    v24[2] = 24;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 < v43)
  {
    *v34 = 0x9158B59D97A4E38DLL;
    v34[1] = "md::ls::RenderOrderToUse]";
    v34[2] = 24;
    v44 = (v34 + 3);
    goto LABEL_61;
  }

  v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_62:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
  v47 = 2 * v46;
  if (2 * v46 <= v45 + 1)
  {
    v47 = v45 + 1;
  }

  if (v46 >= 0x555555555555555)
  {
    v48 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v48 = v47;
  }

  if (v48)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
  }

  v49 = (8 * ((v34 - *a1) >> 3));
  *v49 = 0x9158B59D97A4E38DLL;
  v49[1] = "md::ls::RenderOrderToUse]";
  v49[2] = 24;
  v44 = 24 * v45 + 24;
  v50 = a1[1] - *a1;
  v51 = 24 * v45 - v50;
  memcpy(v49 - v50, *a1, v50);
  v52 = *a1;
  *a1 = v51;
  a1[1] = v44;
  a1[2] = 0;
  if (v52)
  {
    operator delete(v52);
  }

LABEL_61:
  a1[1] = v44;
}

void sub_1B27C1694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>(md::ita::PrepareFunctionConstantDescriptorSpecularContribution &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorSpecularContribution &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorSpecularContribution>(md::ita::PrepareFunctionConstantDescriptorSpecularContribution &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x1631ACE79ACA9DD7;
    v10[1] = "md::ls::MaterialSpecularity]";
    v10[2] = 27;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x1631ACE79ACA9DD7;
    v2[1] = "md::ls::MaterialSpecularity]";
    v2[2] = 27;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C17F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorStylizedShading>(md::ita::PrepareFunctionConstantDescriptorStylizedShading &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorStylizedShading &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorStylizedShading>(md::ita::PrepareFunctionConstantDescriptorStylizedShading &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x6E6C3F5AAEB152E5;
    v10[1] = "md::ls::SupportsStylizedShading]";
    v10[2] = 31;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x6E6C3F5AAEB152E5;
    v2[1] = "md::ls::SupportsStylizedShading]";
    v2[2] = 31;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C1964(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPositionScale>(md::ita::PrepareFunctionConstantDescriptorPositionScale &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorPositionScale &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPositionScale>(md::ita::PrepareFunctionConstantDescriptorPositionScale &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x6C7EE74910D42096;
    *(v9 + 8) = "md::ls::PositionScaleInfoConstantDataHandle]";
    *(v9 + 16) = 43;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x6C7EE74910D42096;
    v2[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v2[2] = 43;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x237F9D3BCC905318;
    v4[1] = "md::ls::IsMercator]";
    v4[2] = 18;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0x237F9D3BCC905318;
  v19[1] = "md::ls::IsMercator]";
  v19[2] = 18;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27C1BC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>(md::ita::PrepareFunctionConstantDescriptorTextureEnabled &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorTextureEnabled &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>(md::ita::PrepareFunctionConstantDescriptorTextureEnabled &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x1D932F2BF291491;
    v10[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v10[2] = 49;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x1D932F2BF291491;
    v2[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v2[2] = 49;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C1D40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupCustomRenderStateStencilRefValue>(md::ita::SetupCustomRenderStateStencilRefValue &&)::{lambda(void)#1},std::allocator<md::ita::SetupCustomRenderStateStencilRefValue &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupCustomRenderStateStencilRefValue>(md::ita::SetupCustomRenderStateStencilRefValue &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xA0C97F52893883B7;
    *(v9 + 8) = "md::ls::CustomRenderState]";
    *(v9 + 16) = 25;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xA0C97F52893883B7;
    v2[1] = "md::ls::CustomRenderState]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xD68EA0DE832DEC03;
    v4[1] = "md::ls::RenderItemID]";
    v4[2] = 20;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xD68EA0DE832DEC03;
  v19[1] = "md::ls::RenderItemID]";
  v19[2] = 20;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27C1FA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStatesForDecals>(md::ita::SetupRenderStatesForDecals &&)::{lambda(void)#1},std::allocator<md::ita::SetupRenderStatesForDecals &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStatesForDecals>(md::ita::SetupRenderStatesForDecals &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x76B9BA390004E44ELL;
    *(v9 + 8) = "md::ls::IsDecal]";
    *(v9 + 16) = 15;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x76B9BA390004E44ELL;
    v2[1] = "md::ls::IsDecal]";
    v2[2] = 15;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xD68EA0DE832DEC03;
    v19[1] = "md::ls::RenderItemID]";
    v19[2] = 20;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xD68EA0DE832DEC03;
    v4[1] = "md::ls::RenderItemID]";
    v4[2] = 20;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x1E85A99FD528C623;
    v14[1] = "md::ls::NeedsRenderState]";
    v14[2] = 24;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0x1E85A99FD528C623;
  v29[1] = "md::ls::NeedsRenderState]";
  v29[2] = 24;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27C22D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DecidePipelineForMainPass>(md::ita::DecidePipelineForMainPass &&)::{lambda(void)#1},std::allocator<md::ita::DecidePipelineForMainPass &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DecidePipelineForMainPass>(md::ita::DecidePipelineForMainPass &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 7uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x3505F398AD5185B4;
    *(v9 + 8) = "md::ls::PendingRenderItemSetup]";
    *(v9 + 16) = 30;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x3505F398AD5185B4;
    v2[1] = "md::ls::PendingRenderItemSetup]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xDB4F0ABC43345F6ALL;
    v19[1] = "md::ls::MainPassItem]";
    v19[2] = 20;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xDB4F0ABC43345F6ALL;
    v4[1] = "md::ls::MainPassItem]";
    v4[2] = 20;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x76B9BA390004E44ELL;
    v29[1] = "md::ls::IsDecal]";
    v29[2] = 15;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x76B9BA390004E44ELL;
    v14[1] = "md::ls::IsDecal]";
    v14[2] = 15;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0xE1A4D8CDA8432F0;
    v39[1] = "md::ls::IsS2]";
    v39[2] = 12;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0xE1A4D8CDA8432F0;
    v24[1] = "md::ls::IsS2]";
    v24[2] = 12;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0x237F9D3BCC905318;
    v49[1] = "md::ls::IsMercator]";
    v49[2] = 18;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0x237F9D3BCC905318;
    v34[1] = "md::ls::IsMercator]";
    v34[2] = 18;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_86;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
    v57 = 2 * v56;
    if (2 * v56 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    if (v56 >= 0x555555555555555)
    {
      v58 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v58 = v57;
    }

    if (v58)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
    }

    v59 = (8 * ((v44 - *a1) >> 3));
    *v59 = 0x69465F3BE0BF85FBLL;
    v59[1] = "md::ls::FlyoverInstance]";
    v59[2] = 23;
    v54 = (24 * v55 + 24);
    v60 = a1[1] - *a1;
    v61 = 24 * v55 - v60;
    memcpy(v59 - v60, *a1, v60);
    v62 = *a1;
    *a1 = v61;
    a1[1] = v54;
    a1[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v44 = 0x69465F3BE0BF85FBLL;
    v44[1] = "md::ls::FlyoverInstance]";
    v44[2] = 23;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 < v63)
  {
    *v54 = 0xD49B968135FE1A73;
    v54[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v54[2] = 51;
    v64 = (v54 + 3);
    goto LABEL_85;
  }

  v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
  if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_86:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *a1) >> 3);
  v67 = 2 * v66;
  if (2 * v66 <= v65 + 1)
  {
    v67 = v65 + 1;
  }

  if (v66 >= 0x555555555555555)
  {
    v68 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v68 = v67;
  }

  if (v68)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v68);
  }

  v69 = (8 * ((v54 - *a1) >> 3));
  *v69 = 0xD49B968135FE1A73;
  v69[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
  v69[2] = 51;
  v64 = 24 * v65 + 24;
  v70 = a1[1] - *a1;
  v71 = 24 * v65 - v70;
  memcpy(v69 - v70, *a1, v70);
  v72 = *a1;
  *a1 = v71;
  a1[1] = v64;
  a1[2] = 0;
  if (v72)
  {
    operator delete(v72);
  }

LABEL_85:
  a1[1] = v64;
}

void sub_1B27C29C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DecidePipelineForMainPass>(md::ita::DecidePipelineForMainPass &&)::{lambda(void)#2},std::allocator<md::ita::DecidePipelineForMainPass &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DecidePipelineForMainPass>(md::ita::DecidePipelineForMainPass &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xE54E641F7C1F9B89;
    v10[1] = "md::ls::RequiredPipelinePoolID]";
    v10[2] = 30;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xE54E641F7C1F9B89;
    v2[1] = "md::ls::RequiredPipelinePoolID]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27C2B28(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightStylizedShadingSettings>(md::ita::AssignLightStylizedShadingSettings &&)::{lambda(void)#1},std::allocator<md::ita::AssignLightStylizedShadingSettings &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightStylizedShadingSettings>(md::ita::AssignLightStylizedShadingSettings &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 4uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x9BA1F27C43D018BELL;
    *(v9 + 8) = "md::ls::NeedsFunctionConstantsUpdate]";
    *(v9 + 16) = 36;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x9BA1F27C43D018BELL;
    v2[1] = "md::ls::NeedsFunctionConstantsUpdate]";
    v2[2] = 36;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x6E6C3F5AAEB152E5;
    v19[1] = "md::ls::SupportsStylizedShading]";
    v19[2] = 31;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x6E6C3F5AAEB152E5;
    v4[1] = "md::ls::SupportsStylizedShading]";
    v4[2] = 31;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0xC48764EACEE66A08;
    v29[1] = "md::ls::SupportsSteepnessDarkening]";
    v29[2] = 34;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0xC48764EACEE66A08;
    v14[1] = "md::ls::SupportsSteepnessDarkening]";
    v14[2] = 34;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x38CA2B944B3EDDDELL;
    v24[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>]";
    v24[2] = 100;
    v34 = (v24 + 3);
    goto LABEL_49;
  }

  v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
  v37 = 2 * v36;
  if (2 * v36 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  if (v36 >= 0x555555555555555)
  {
    v38 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
  }

  v39 = (8 * ((v24 - *a1) >> 3));
  *v39 = 0x38CA2B944B3EDDDELL;
  v39[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>]";
  v39[2] = 100;
  v34 = 24 * v35 + 24;
  v40 = a1[1] - *a1;
  v41 = 24 * v35 - v40;
  memcpy(v39 - v40, *a1, v40);
  v42 = *a1;
  *a1 = v41;
  a1[1] = v34;
  a1[2] = 0;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_49:
  a1[1] = v34;
}

void sub_1B27C2F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderTargetSizeConstantData>(md::ita::AssignRenderTargetSizeConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignRenderTargetSizeConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRenderTargetSizeConstantData>(md::ita::AssignRenderTargetSizeConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0x3505F398AD5185B4;
    *(v9 + 8) = "md::ls::PendingRenderItemSetup]";
    *(v9 + 16) = 30;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0x3505F398AD5185B4;
    v2[1] = "md::ls::PendingRenderItemSetup]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xA20E903AC8423AE1;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>]";
    v4[2] = 92;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xA20E903AC8423AE1;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>]";
  v19[2] = 92;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27C31D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradientParametersConstantData>(md::ita::AssignGradientParametersConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignGradientParametersConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradientParametersConstantData>(md::ita::AssignGradientParametersConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 4uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xC120277B06FDA0DALL;
    *(v9 + 8) = "md::ls::ItemsPrepared]";
    *(v9 + 16) = 21;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xC120277B06FDA0DALL;
    v2[1] = "md::ls::ItemsPrepared]";
    v2[2] = 21;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0x8963537098E96576;
    v19[1] = "md::ls::GradientConstantDataHandle1]";
    v19[2] = 35;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0x8963537098E96576;
    v4[1] = "md::ls::GradientConstantDataHandle1]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x8963527098E963C3;
    v29[1] = "md::ls::GradientConstantDataHandle2]";
    v29[2] = 35;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x8963527098E963C3;
    v14[1] = "md::ls::GradientConstantDataHandle2]";
    v14[2] = 35;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x7B8C320EC5754EB9;
    v24[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>]";
    v24[2] = 94;
    v34 = (v24 + 3);
    goto LABEL_49;
  }

  v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
  v37 = 2 * v36;
  if (2 * v36 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  if (v36 >= 0x555555555555555)
  {
    v38 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v38 = v37;
  }

  if (v38)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
  }

  v39 = (8 * ((v24 - *a1) >> 3));
  *v39 = 0x7B8C320EC5754EB9;
  v39[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>]";
  v39[2] = 94;
  v34 = 24 * v35 + 24;
  v40 = a1[1] - *a1;
  v41 = 24 * v35 - v40;
  memcpy(v39 - v40, *a1, v40);
  v42 = *a1;
  *a1 = v41;
  a1[1] = v34;
  a1[2] = 0;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_49:
  a1[1] = v34;
}

void sub_1B27C3600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradient1TextureIndex>(md::ita::AssignGradient1TextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignGradient1TextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradient1TextureIndex>(md::ita::AssignGradient1TextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 3uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xC120277B06FDA0DALL;
    *(v9 + 8) = "md::ls::ItemsPrepared]";
    *(v9 + 16) = 21;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xC120277B06FDA0DALL;
    v2[1] = "md::ls::ItemsPrepared]";
    v2[2] = 21;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_38;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xCAA3A5E853432887;
    v19[1] = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    v19[2] = 55;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xCAA3A5E853432887;
    v4[1] = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    v4[2] = 55;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xF8B8367F26B933A6;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>]";
    v14[2] = 58;
    v24 = (v14 + 3);
    goto LABEL_37;
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
  if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
  v27 = 2 * v26;
  if (2 * v26 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  if (v26 >= 0x555555555555555)
  {
    v28 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
  }

  v29 = (8 * ((v14 - *a1) >> 3));
  *v29 = 0xF8B8367F26B933A6;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>]";
  v29[2] = 58;
  v24 = 24 * v25 + 24;
  v30 = a1[1] - *a1;
  v31 = 24 * v25 - v30;
  memcpy(v29 - v30, *a1, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v24;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_37:
  a1[1] = v24;
}

void sub_1B27C393C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PushRenderItems>(md::ita::PushRenderItems &&)::{lambda(void)#1},std::allocator<md::ita::PushRenderItems &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PushRenderItems>(md::ita::PushRenderItems &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 2uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xD68EA0DE832DEC03;
    *(v9 + 8) = "md::ls::RenderItemID]";
    *(v9 + 16) = 20;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xD68EA0DE832DEC03;
    v2[1] = "md::ls::RenderItemID]";
    v2[2] = 20;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xC120277B06FDA0DALL;
    v4[1] = "md::ls::ItemsPrepared]";
    v4[2] = 21;
    v14 = (v4 + 3);
    goto LABEL_25;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  v17 = 2 * v16;
  if (2 * v16 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  if (v16 >= 0x555555555555555)
  {
    v18 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
  }

  v19 = (8 * ((v4 - *a1) >> 3));
  *v19 = 0xC120277B06FDA0DALL;
  v19[1] = "md::ls::ItemsPrepared]";
  v19[2] = 21;
  v14 = 24 * v15 + 24;
  v20 = a1[1] - *a1;
  v21 = 24 * v15 - v20;
  memcpy(v19 - v20, *a1, v20);
  v22 = *a1;
  *a1 = v21;
  a1[1] = v14;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_25:
  a1[1] = v14;
}

void sub_1B27C3B9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::Monitorable(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  if (*a1)
  {
    v3 = *(a1 + 8) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *(a1 + 16) = GEOConfigGetBOOL();
  }

  *(a1 + 24) = 0;
  operator new();
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::Monitorable(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  if (*a1)
  {
    v3 = *(a1 + 8) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *(a1 + 16) = GEOConfigGetInteger();
  }

  *(a1 + 24) = 0;
  operator new();
}

uint64_t *std::unique_ptr<md::HomeQueueScheduler>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::condition_variable::~condition_variable((v2 + 240));
    std::mutex::~mutex((v2 + 176));

    std::deque<std::function<void ()(void)>>::~deque[abi:nn200100](v2 + 120);
    std::condition_variable::~condition_variable((v2 + 72));
    std::mutex::~mutex((v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *geo::linear_map<gdc::TypeInfo,std::shared_ptr<void>,std::equal_to<gdc::TypeInfo>,std::allocator<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>,std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>>::operator[](void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*a2 != *v5)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v8 = *a2;
    v6 = a2[2];
    v10 = 0;
    v11 = 0;
    v9 = v6;
    if (v3 == v4)
    {
      goto LABEL_12;
    }

    while (v8 != *v3)
    {
      v3 += 5;
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    if (v3 == v4)
    {
LABEL_12:
      std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>::push_back[abi:nn200100](a1, &v8);
      v3 = (a1[1] - 40);
    }

    v5 = v3;
  }

  return v5 + 3;
}

void std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 40 * v8;
    *v12 = *a2;
    v13 = *(a2 + 3);
    *(v12 + 16) = *(a2 + 2);
    *(v12 + 24) = v13;
    v14 = *(a2 + 4);
    *(v12 + 32) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v12 + 40;
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = *(a2 + 4);
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void geo::linear_map<gdc::TypeInfo,std::shared_ptr<void>,std::equal_to<gdc::TypeInfo>,std::allocator<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>,std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>>::insert_or_assign(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    goto LABEL_12;
  }

  while (*a2 != *v2)
  {
    v2 += 5;
    if (v2 == v3)
    {
      goto LABEL_12;
    }
  }

  if (v2 == v3)
  {
LABEL_12:
    std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>::push_back[abi:nn200100](a1, a2);
  }

  else
  {
    v4 = *a2;
    v2[2] = *(a2 + 16);
    *v2 = v4;
    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v2[4];
    v2[3] = v6;
    v2[4] = v5;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

uint64_t *std::unique_ptr<md::MapEngineSignals>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::~ThreadSafeSignal(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

os_log_t __GEOGetGeoGLDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.GeoGL", "Default");
  GEOGetGeoGLDefaultLog_log = result;
  return result;
}

ggl::Data *ggl::Data::Data(ggl::Data *this, const unsigned __int8 *a2, size_t a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F2A5CA90;
  if (a3)
  {
    v6 = ggl::zone_mallocator::instance(this);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v6, a3);
    *(this + 1) = v7;
    *(this + 2) = a3;
    memcpy(v7, a2, a3);
  }

  return this;
}

ggl::zone_mallocator *ggl::CommonLibrary::CommonLibrary(ggl::zone_mallocator *a1, void *a2)
{
  v2 = a2;
  {
    v2 = a2;
    if (v5)
    {
      ggl::CommonLibrary::typedReflection(void)::desc = "CommonLibrary";
      dword_1ED6702F8 = 1598463683;
      {
        if (v6)
        {
          ggl::clearDepthStencilShaderVertexFunctionDescriptor(v6);
          CommonLibraryShaderFunctions(void)::desc = &ggl::clearDepthStencilShaderVertexFunctionDescriptor(void)::ref;
          ggl::clearDepthStencilShaderFragmentFunctionDescriptor(v7);
          qword_1ED661A40 = &ggl::clearDepthStencilShaderFragmentFunctionDescriptor(void)::ref;
          ggl::clearShaderVertexFunctionDescriptor(v8);
          qword_1ED661A48 = &ggl::clearShaderVertexFunctionDescriptor(void)::ref;
          ggl::clearShaderFragmentFunctionDescriptor(v9);
          qword_1ED661A50 = &ggl::clearShaderFragmentFunctionDescriptor(void)::ref;
          ggl::clear2ShaderVertexFunctionDescriptor(v10);
          qword_1ED661A58 = &ggl::clear2ShaderVertexFunctionDescriptor(void)::ref;
          ggl::clear2ShaderFragmentFunctionDescriptor(v11);
          qword_1ED661A60 = &ggl::clear2ShaderFragmentFunctionDescriptor(void)::ref;
          ggl::clear3ShaderVertexFunctionDescriptor(v12);
          qword_1ED661A68 = &ggl::clear3ShaderVertexFunctionDescriptor(void)::ref;
          ggl::clear3ShaderFragmentFunctionDescriptor(v13);
          qword_1ED661A70 = &ggl::clear3ShaderFragmentFunctionDescriptor(void)::ref;
          ggl::clear4ShaderVertexFunctionDescriptor(v14);
          qword_1ED661A78 = &ggl::clear4ShaderVertexFunctionDescriptor(void)::ref;
          ggl::clear4ShaderFragmentFunctionDescriptor(v15);
          qword_1ED661A80 = &ggl::clear4ShaderFragmentFunctionDescriptor(void)::ref;
          ggl::coloredTextShaderVertexFunctionDescriptor(v16);
          qword_1ED661A88 = &ggl::coloredTextShaderVertexFunctionDescriptor(void)::ref;
          ggl::coloredTextShaderFragmentFunctionDescriptor(v17);
          qword_1ED661A90 = &ggl::coloredTextShaderFragmentFunctionDescriptor(void)::ref;
          ggl::shadedColorShaderVertexFunctionDescriptor(v18);
          qword_1ED661A98 = &ggl::shadedColorShaderVertexFunctionDescriptor(void)::ref;
          ggl::shadedColorShaderFragmentFunctionDescriptor(v19);
          qword_1ED661AA0 = &ggl::shadedColorShaderFragmentFunctionDescriptor(void)::ref;
          ggl::textureRectShaderVertexFunctionDescriptor(v20);
          qword_1ED661AA8 = &ggl::textureRectShaderVertexFunctionDescriptor(void)::ref;
          ggl::textureRectShaderFragmentFunctionDescriptor(v21);
          qword_1ED661AB0 = &ggl::textureRectShaderFragmentFunctionDescriptor(void)::ref;
        }
      }

      qword_1ED670300 = &CommonLibraryShaderFunctions(void)::desc;
      *algn_1ED670308 = 16;
      {
        if (v22)
        {
          {
            if (v22)
            {
              ggl::ClearDepthStencilShader::typedReflection(void)::ref = "ClearDepthStencilShader";
              ggl::clearDepthStencilShaderVertexFunctionDescriptor(v22);
              qword_1ED66BCB8 = &ggl::clearDepthStencilShaderVertexFunctionDescriptor(void)::ref;
              dword_1ED66BCC0 = 541836799;
              ggl::clearDepthStencilShaderFragmentFunctionDescriptor(v25);
              qword_1ED66BCC8 = &ggl::clearDepthStencilShaderFragmentFunctionDescriptor(void)::ref;
              dword_1ED66BCD0 = 946805813;
              qword_1ED66BCD8 = ggl::clearDepthStencilShaderShaderConstants(void)::ref;
              unk_1ED66BCE0 = 1;
              qword_1ED66BCE8 = &ggl::clearDepthStencilShaderShaderTextures(void)::ref;
              unk_1ED66BCF0 = 0;
              qword_1ED66BCF8 = &ggl::clearDepthStencilShaderShaderSamplers(void)::ref;
              unk_1ED66BD00 = 0;
            }
          }

          CommonLibraryShaders(void)::desc = &ggl::ClearDepthStencilShader::typedReflection(void)::ref;
          ggl::ClearShader::typedReflection(v22);
          qword_1ED662088 = &ggl::ClearShader::typedReflection(void)::ref;
          {
            if (v23)
            {
              ggl::Clear2Shader::typedReflection(void)::ref = "Clear2Shader";
              ggl::clear2ShaderVertexFunctionDescriptor(v23);
              qword_1ED66DA60 = &ggl::clear2ShaderVertexFunctionDescriptor(void)::ref;
              dword_1ED66DA68 = 657411612;
              ggl::clear2ShaderFragmentFunctionDescriptor(v26);
              qword_1ED66DA70 = &ggl::clear2ShaderFragmentFunctionDescriptor(void)::ref;
              dword_1ED66DA78 = 928440790;
              qword_1ED66DA80 = ggl::clear2ShaderShaderConstants(void)::ref;
              unk_1ED66DA88 = 1;
              qword_1ED66DA90 = &ggl::clear2ShaderShaderTextures(void)::ref;
              unk_1ED66DA98 = 0;
              qword_1ED66DAA0 = &ggl::clear2ShaderShaderSamplers(void)::ref;
              unk_1ED66DAA8 = 0;
            }
          }

          qword_1ED662090 = &ggl::Clear2Shader::typedReflection(void)::ref;
          {
            if (v23)
            {
              ggl::Clear3Shader::typedReflection(void)::ref = "Clear3Shader";
              ggl::clear3ShaderVertexFunctionDescriptor(v23);
              qword_1ED66DA00 = &ggl::clear3ShaderVertexFunctionDescriptor(void)::ref;
              dword_1ED66DA08 = -88500327;
              ggl::clear3ShaderFragmentFunctionDescriptor(v27);
              qword_1ED66DA10 = &ggl::clear3ShaderFragmentFunctionDescriptor(void)::ref;
              dword_1ED66DA18 = -1901249986;
              qword_1ED66DA20 = ggl::clear3ShaderShaderConstants(void)::ref;
              unk_1ED66DA28 = 1;
              qword_1ED66DA30 = &ggl::clear3ShaderShaderTextures(void)::ref;
              unk_1ED66DA38 = 0;
              qword_1ED66DA40 = &ggl::clear3ShaderShaderSamplers(void)::ref;
              unk_1ED66DA48 = 0;
            }
          }

          qword_1ED662098 = &ggl::Clear3Shader::typedReflection(void)::ref;
          {
            if (v23)
            {
              ggl::Clear4Shader::typedReflection(void)::ref = "Clear4Shader";
              ggl::clear4ShaderVertexFunctionDescriptor(v23);
              qword_1ED66D9A0 = &ggl::clear4ShaderVertexFunctionDescriptor(void)::ref;
              dword_1ED66D9A8 = -2016767551;
              ggl::clear4ShaderFragmentFunctionDescriptor(v28);
              qword_1ED66D9B0 = &ggl::clear4ShaderFragmentFunctionDescriptor(void)::ref;
              dword_1ED66D9B8 = 363607332;
              qword_1ED66D9C0 = ggl::clear4ShaderShaderConstants(void)::ref;
              unk_1ED66D9C8 = 1;
              qword_1ED66D9D0 = &ggl::clear4ShaderShaderTextures(void)::ref;
              unk_1ED66D9D8 = 0;
              qword_1ED66D9E0 = &ggl::clear4ShaderShaderSamplers(void)::ref;
              unk_1ED66D9E8 = 0;
            }
          }

          qword_1ED6620A0 = &ggl::Clear4Shader::typedReflection(void)::ref;
          ggl::ColoredTextShader::typedReflection(v23);
          qword_1ED6620A8 = &ggl::ColoredTextShader::typedReflection(void)::ref;
          {
            if (v24)
            {
              ggl::ShadedColorShader::typedReflection(void)::ref = "ShadedColorShader";
              ggl::shadedColorShaderVertexFunctionDescriptor(v24);
              qword_1ED66D180 = &ggl::shadedColorShaderVertexFunctionDescriptor(void)::ref;
              dword_1ED66D188 = 1131861474;
              ggl::shadedColorShaderFragmentFunctionDescriptor(v29);
              qword_1ED66D190 = &ggl::shadedColorShaderFragmentFunctionDescriptor(void)::ref;
              dword_1ED66D198 = -625736848;
              qword_1ED66D1A0 = ggl::shadedColorShaderShaderConstants(void)::ref;
              unk_1ED66D1A8 = 2;
              qword_1ED66D1B0 = &ggl::shadedColorShaderShaderTextures(void)::ref;
              unk_1ED66D1B8 = 0;
              qword_1ED66D1C0 = &ggl::shadedColorShaderShaderSamplers(void)::ref;
              unk_1ED66D1C8 = 0;
            }
          }

          qword_1ED6620B0 = &ggl::ShadedColorShader::typedReflection(void)::ref;
          ggl::TextureRectShader::typedReflection(v24);
          qword_1ED6620B8 = &ggl::TextureRectShader::typedReflection(void)::ref;
        }
      }

      qword_1ED670310 = &CommonLibraryShaders(void)::desc;
      *algn_1ED670318 = 8;
      qword_1ED670320 = &CommonLibraryComputeShaders(void)::desc;
      unk_1ED670328 = 0;
      qword_1ED670330 = &CommonLibraryTileShaders(void)::desc;
      unk_1ED670338 = 0;
      qword_1ED670340 = 0;
      unk_1ED670348 = 0;
      v2 = a2;
    }
  }

  result = ggl::ShaderLibrary::ShaderLibrary(a1, &ggl::CommonLibrary::typedReflection(void)::desc, v2);
  *a1 = &unk_1F2A5CC78;
  return result;
}

void ggl::clearDepthStencilShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clearDepthStencilShaderVertexFunctionDescriptor(void)::ref = 541836799;
    qword_1ED66FD58 = "ClearDepthStencilShader";
    unk_1ED66FD60 = ggl::clearDepthStencilShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED66FD68 = 1;
    unk_1ED66FD70 = &ggl::clearDepthStencilShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FD78 = 1;
    unk_1ED66FD80 = &ggl::clearDepthStencilShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FD88 = 0;
    unk_1ED66FD90 = &ggl::clearDepthStencilShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FD98 = 0;
    unk_1ED66FDA0 = &ggl::clearDepthStencilShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FDB0 = 0;
    unk_1ED66FDB8 = 0;
    qword_1ED66FDA8 = 0;
  }
}

void ggl::clearDepthStencilShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clearDepthStencilShaderFragmentFunctionDescriptor(void)::ref = 0x1386F1C35;
    qword_1ED6704C0 = "ClearDepthStencilShader";
    unk_1ED6704C8 = 0;
    qword_1ED6704D0 = 0;
    unk_1ED6704D8 = &ggl::clearDepthStencilShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6704E0 = 1;
    unk_1ED6704E8 = &ggl::clearDepthStencilShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6704F0 = 0;
    unk_1ED6704F8 = &ggl::clearDepthStencilShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED670500 = 0;
    unk_1ED670508 = &ggl::clearDepthStencilShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670518 = 0;
    unk_1ED670520 = 0;
    qword_1ED670510 = 0;
  }
}

void ggl::clearShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clearShaderVertexFunctionDescriptor(void)::ref = 3249028960;
    qword_1ED670698 = "ClearShader";
    unk_1ED6706A0 = ggl::clearShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6706A8 = 1;
    unk_1ED6706B0 = &ggl::clearShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6706B8 = 1;
    unk_1ED6706C0 = &ggl::clearShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6706C8 = 0;
    unk_1ED6706D0 = &ggl::clearShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6706D8 = 0;
    unk_1ED6706E0 = &ggl::clearShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6706F0 = 0;
    unk_1ED6706F8 = 0;
    qword_1ED6706E8 = 0;
  }
}

void ggl::shadedColorShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::shadedColorShaderVertexFunctionDescriptor(void)::ref = 1131861474;
    qword_1ED670010 = "ShadedColorShader";
    unk_1ED670018 = ggl::shadedColorShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED670020 = 1;
    unk_1ED670028 = &ggl::shadedColorShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED670030 = 2;
    unk_1ED670038 = &ggl::shadedColorShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED670040 = 0;
    unk_1ED670048 = &ggl::shadedColorShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED670050 = 0;
    unk_1ED670058 = &ggl::shadedColorShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670068 = 0;
    unk_1ED670070 = 0;
    qword_1ED670060 = 0;
  }
}

void ggl::animatableTextureShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::animatableTextureShaderVertexFunctionDescriptor(void)::ref = 3734584708;
    qword_1ED670530 = "AnimatableTextureShader";
    unk_1ED670538 = ggl::animatableTextureShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED670540 = 1;
    unk_1ED670548 = &ggl::animatableTextureShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED670550 = 1;
    unk_1ED670558 = &ggl::animatableTextureShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED670560 = 0;
    unk_1ED670568 = &ggl::animatableTextureShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED670570 = 0;
    unk_1ED670578 = &ggl::animatableTextureShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670588 = 0;
    unk_1ED670590 = 0;
    qword_1ED670580 = 0;
  }
}

void ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(void)::ref = 0x179228E28;
    qword_1ED66FBF8 = "BuildingFacadeDepthShader";
    unk_1ED66FC00 = 0;
    qword_1ED66FC08 = 0;
    unk_1ED66FC10 = &ggl::buildingFacadeDepthShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FC18 = 0;
    unk_1ED66FC20 = &ggl::buildingFacadeDepthShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FC28 = 0;
    unk_1ED66FC30 = &ggl::buildingFacadeDepthShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FC38 = 0;
    unk_1ED66FC40 = &ggl::buildingFacadeDepthShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FC50 = 0;
    unk_1ED66FC58 = 0;
    qword_1ED66FC48 = 0;
  }
}

void ggl::buildingFlatShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFlatShaderVertexFunctionDescriptor(void)::ref = 872130158;
    qword_1ED6686D0 = "BuildingFlatShader";
    unk_1ED6686D8 = ggl::buildingFlatShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6686E0 = 1;
    unk_1ED6686E8 = &ggl::buildingFlatShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6686F0 = 2;
    unk_1ED6686F8 = &ggl::buildingFlatShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668700 = 0;
    unk_1ED668708 = &ggl::buildingFlatShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668710 = 0;
    unk_1ED668718 = &ggl::buildingFlatShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668728 = 0;
    unk_1ED668730 = 0;
    qword_1ED668720 = 0;
  }
}

void ggl::buildingFlatShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFlatShaderFragmentFunctionDescriptor(void)::ref = 0x1848E843CLL;
    qword_1ED667928 = "BuildingFlatShader";
    unk_1ED667930 = 0;
    qword_1ED667938 = 0;
    unk_1ED667940 = &ggl::buildingFlatShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667948 = 0;
    unk_1ED667950 = &ggl::buildingFlatShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667958 = 0;
    unk_1ED667960 = &ggl::buildingFlatShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED667968 = 0;
    unk_1ED667970 = &ggl::buildingFlatShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667980 = 0;
    unk_1ED667988 = 0;
    qword_1ED667978 = 0;
  }
}

void ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(void)::ref = 1378715407;
    qword_1ED665820 = "BuildingFlatStrokeShader";
    unk_1ED665828 = ggl::buildingFlatStrokeShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED665830 = 1;
    unk_1ED665838 = &ggl::buildingFlatStrokeShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED665840 = 2;
    unk_1ED665848 = &ggl::buildingFlatStrokeShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED665850 = 0;
    unk_1ED665858 = &ggl::buildingFlatStrokeShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED665860 = 0;
    unk_1ED665868 = &ggl::buildingFlatStrokeShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665878 = 0;
    unk_1ED665880 = 0;
    qword_1ED665870 = 0;
  }
}

void ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(void)::ref = 2982781435;
    qword_1ED663D60 = "BuildingPointyRoofDepthShader";
    unk_1ED663D68 = ggl::buildingPointyRoofDepthShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED663D70 = 1;
    unk_1ED663D78 = &ggl::buildingPointyRoofDepthShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663D80 = 2;
    unk_1ED663D88 = &ggl::buildingPointyRoofDepthShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663D90 = 0;
    unk_1ED663D98 = &ggl::buildingPointyRoofDepthShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663DA0 = 0;
    unk_1ED663DA8 = &ggl::buildingPointyRoofDepthShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663DB8 = 0;
    unk_1ED663DC0 = 0;
    qword_1ED663DB0 = 0;
  }
}

void ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(void)::ref = 0x1B401AF52;
    qword_1ED664A88 = "BuildingFlatStrokeShader";
    unk_1ED664A90 = 0;
    qword_1ED664A98 = 0;
    unk_1ED664AA0 = &ggl::buildingFlatStrokeShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED664AA8 = 0;
    unk_1ED664AB0 = &ggl::buildingFlatStrokeShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED664AB8 = 0;
    unk_1ED664AC0 = &ggl::buildingFlatStrokeShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED664AC8 = 1;
    unk_1ED664AD0 = &ggl::buildingFlatStrokeShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664AE0 = 0;
    unk_1ED664AE8 = 0;
    qword_1ED664AD8 = 1;
  }
}

void ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(void)::ref = 0x116DCEDF2;
    qword_1ED6634B8 = "BuildingPointyRoofDepthShader";
    unk_1ED6634C0 = 0;
    qword_1ED6634C8 = 0;
    unk_1ED6634D0 = &ggl::buildingPointyRoofDepthShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6634D8 = 0;
    unk_1ED6634E0 = &ggl::buildingPointyRoofDepthShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6634E8 = 0;
    unk_1ED6634F0 = &ggl::buildingPointyRoofDepthShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6634F8 = 0;
    unk_1ED663500 = &ggl::buildingPointyRoofDepthShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663510 = 0;
    unk_1ED663518 = 0;
    qword_1ED663508 = 0;
  }
}

void ggl::buildingShadowShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingShadowShaderVertexFunctionDescriptor(void)::ref = 2756320326;
    qword_1ED6678B0 = "BuildingShadowShader";
    unk_1ED6678B8 = ggl::buildingShadowShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6678C0 = 1;
    unk_1ED6678C8 = &ggl::buildingShadowShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6678D0 = 2;
    unk_1ED6678D8 = &ggl::buildingShadowShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6678E0 = 0;
    unk_1ED6678E8 = &ggl::buildingShadowShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6678F0 = 0;
    unk_1ED6678F8 = &ggl::buildingShadowShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667908 = 0;
    unk_1ED667910 = 0;
    qword_1ED667900 = 0;
  }
}

void ggl::buildingShadowShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingShadowShaderFragmentFunctionDescriptor(void)::ref = 0x1F267E7B5;
    qword_1ED666688 = "BuildingShadowShader";
    unk_1ED666690 = 0;
    qword_1ED666698 = 0;
    unk_1ED6666A0 = &ggl::buildingShadowShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6666A8 = 1;
    unk_1ED6666B0 = &ggl::buildingShadowShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6666B8 = 0;
    unk_1ED6666C0 = &ggl::buildingShadowShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6666C8 = 1;
    unk_1ED6666D0 = &ggl::buildingShadowShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6666E0 = 0;
    unk_1ED6666E8 = 0;
    qword_1ED6666D8 = 1;
  }
}

void ggl::buildingTopDepthShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingTopDepthShaderVertexFunctionDescriptor(void)::ref = 3203911219;
    qword_1ED666618 = "BuildingTopDepthShader";
    unk_1ED666620 = ggl::buildingTopDepthShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666628 = 1;
    unk_1ED666630 = &ggl::buildingTopDepthShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666638 = 2;
    unk_1ED666640 = &ggl::buildingTopDepthShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666648 = 0;
    unk_1ED666650 = &ggl::buildingTopDepthShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666658 = 0;
    unk_1ED666660 = &ggl::buildingTopDepthShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666670 = 0;
    unk_1ED666678 = 0;
    qword_1ED666668 = 0;
  }
}

void ggl::buildingTopDepthShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingTopDepthShaderFragmentFunctionDescriptor(void)::ref = 0x1C8F2C343;
    qword_1ED6657B0 = "BuildingTopDepthShader";
    unk_1ED6657B8 = 0;
    qword_1ED6657C0 = 0;
    unk_1ED6657C8 = &ggl::buildingTopDepthShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6657D0 = 0;
    unk_1ED6657D8 = &ggl::buildingTopDepthShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6657E0 = 0;
    unk_1ED6657E8 = &ggl::buildingTopDepthShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6657F0 = 0;
    unk_1ED6657F8 = &ggl::buildingTopDepthShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665808 = 0;
    unk_1ED665810 = 0;
    qword_1ED665800 = 0;
  }
}

void ggl::circleShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::circleShaderVertexFunctionDescriptor(void)::ref = 3104410927;
    qword_1ED669AA8 = "CircleShader";
    unk_1ED669AB0 = ggl::circleShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669AB8 = 1;
    unk_1ED669AC0 = &ggl::circleShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669AC8 = 2;
    unk_1ED669AD0 = &ggl::circleShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669AD8 = 0;
    unk_1ED669AE0 = &ggl::circleShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669AE8 = 0;
    unk_1ED669AF0 = &ggl::circleShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669B00 = 0;
    unk_1ED669B08 = 0;
    qword_1ED669AF8 = 0;
  }
}

void ggl::circleShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::circleShaderFragmentFunctionDescriptor(void)::ref = 0x1C15089CALL;
    qword_1ED6693F0 = "CircleShader";
    unk_1ED6693F8 = 0;
    qword_1ED669400 = 0;
    unk_1ED669408 = &ggl::circleShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669410 = 2;
    unk_1ED669418 = &ggl::circleShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED669420 = 0;
    unk_1ED669428 = &ggl::circleShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED669430 = 0;
    unk_1ED669438 = &ggl::circleShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669448 = 0;
    unk_1ED669450 = 0;
    qword_1ED669440 = 0;
  }
}

void ggl::circleMultiStrokeShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::circleMultiStrokeShaderVertexFunctionDescriptor(void)::ref = 3431080149;
    qword_1ED65CA20 = "CircleMultiStrokeShader";
    unk_1ED65CA28 = ggl::circleMultiStrokeShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65CA30 = 1;
    unk_1ED65CA38 = &ggl::circleMultiStrokeShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CA40 = 4;
    unk_1ED65CA48 = &ggl::circleMultiStrokeShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CA50 = 0;
    unk_1ED65CA58 = &ggl::circleMultiStrokeShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CA60 = 0;
    unk_1ED65CA68 = &ggl::circleMultiStrokeShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CA78 = 0;
    unk_1ED65CA80 = 0;
    qword_1ED65CA70 = 0;
  }
}

void ggl::circleMultiStrokeShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::circleMultiStrokeShaderFragmentFunctionDescriptor(void)::ref = 0x187642A23;
    qword_1ED65C618 = "CircleMultiStrokeShader";
    unk_1ED65C620 = 0;
    qword_1ED65C628 = 0;
    unk_1ED65C630 = &ggl::circleMultiStrokeShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65C638 = 1;
    unk_1ED65C640 = &ggl::circleMultiStrokeShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65C648 = 0;
    unk_1ED65C650 = &ggl::circleMultiStrokeShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65C658 = 0;
    unk_1ED65C660 = &ggl::circleMultiStrokeShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65C670 = 0;
    unk_1ED65C678 = 0;
    qword_1ED65C668 = 0;
  }
}

void ggl::clutShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clutShaderVertexFunctionDescriptor(void)::ref = 3665615994;
    qword_1ED66A078 = "ClutShader";
    unk_1ED66A080 = ggl::clutShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED66A088 = 1;
    unk_1ED66A090 = &ggl::clutShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED66A098 = 3;
    unk_1ED66A0A0 = &ggl::clutShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED66A0A8 = 0;
    unk_1ED66A0B0 = &ggl::clutShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED66A0B8 = 0;
    unk_1ED66A0C0 = &ggl::clutShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66A0D0 = 0;
    unk_1ED66A0D8 = 0;
    qword_1ED66A0C8 = 0;
  }
}

void ggl::clutShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clutShaderFragmentFunctionDescriptor(void)::ref = 0x11AF022CCLL;
    qword_1ED6699C0 = "ClutShader";
    unk_1ED6699C8 = 0;
    qword_1ED6699D0 = 0;
    unk_1ED6699D8 = &ggl::clutShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6699E0 = 1;
    unk_1ED6699E8 = &ggl::clutShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6699F0 = 0;
    unk_1ED6699F8 = &ggl::clutShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED669A00 = 2;
    unk_1ED669A08 = &ggl::clutShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669A18 = 0;
    unk_1ED669A20 = 0;
    qword_1ED669A10 = 2;
  }
}

void ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref = 252514057;
    qword_1ED6637F0 = "ColorGlyphWithNormalHaloShader";
    unk_1ED6637F8 = ggl::colorGlyphWithNormalHaloShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED663800 = 1;
    unk_1ED663808 = &ggl::colorGlyphWithNormalHaloShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663810 = 3;
    unk_1ED663818 = &ggl::colorGlyphWithNormalHaloShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663820 = 0;
    unk_1ED663828 = &ggl::colorGlyphWithNormalHaloShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663830 = 1;
    unk_1ED663838 = &ggl::colorGlyphWithNormalHaloShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663848 = 0;
    unk_1ED663850 = 0;
    qword_1ED663840 = 1;
  }
}

void ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref = 0x101385EE6;
    qword_1ED662FB8 = "ColorGlyphWithNormalHaloShader";
    unk_1ED662FC0 = 0;
    qword_1ED662FC8 = 0;
    unk_1ED662FD0 = &ggl::colorGlyphWithNormalHaloShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662FD8 = 2;
    unk_1ED662FE0 = &ggl::colorGlyphWithNormalHaloShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662FE8 = 0;
    unk_1ED662FF0 = &ggl::colorGlyphWithNormalHaloShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED662FF8 = 1;
    unk_1ED663000 = &ggl::colorGlyphWithNormalHaloShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663010 = 0;
    unk_1ED663018 = 0;
    qword_1ED663008 = 1;
  }
}

void ggl::instancedDebugShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::instancedDebugShaderVertexFunctionDescriptor(void)::ref = 148998421;
    qword_1ED667588 = "InstancedDebugShader";
    unk_1ED667590 = ggl::instancedDebugShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED667598 = 2;
    unk_1ED6675A0 = &ggl::instancedDebugShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6675A8 = 3;
    unk_1ED6675B0 = &ggl::instancedDebugShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6675B8 = 1;
    unk_1ED6675C0 = &ggl::instancedDebugShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6675C8 = 0;
    unk_1ED6675D0 = &ggl::instancedDebugShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6675E0 = 0;
    unk_1ED6675E8 = 0;
    qword_1ED6675D8 = 0;
  }
}

void ggl::instancedDebugShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::instancedDebugShaderFragmentFunctionDescriptor(void)::ref = 0x1E3942242;
    qword_1ED6664B8 = "InstancedDebugShader";
    unk_1ED6664C0 = 0;
    qword_1ED6664C8 = 0;
    unk_1ED6664D0 = &ggl::instancedDebugShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6664D8 = 1;
    unk_1ED6664E0 = &ggl::instancedDebugShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6664E8 = 0;
    unk_1ED6664F0 = &ggl::instancedDebugShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6664F8 = 0;
    unk_1ED666500 = &ggl::instancedDebugShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666510 = 0;
    unk_1ED666518 = 0;
    qword_1ED666508 = 0;
  }
}

void ggl::debugShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::debugShaderVertexFunctionDescriptor(void)::ref = 1903617105;
    qword_1ED669CE8 = "DebugShader";
    unk_1ED669CF0 = ggl::debugShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669CF8 = 1;
    unk_1ED669D00 = &ggl::debugShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669D08 = 3;
    unk_1ED669D10 = &ggl::debugShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669D18 = 0;
    unk_1ED669D20 = &ggl::debugShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669D28 = 0;
    unk_1ED669D30 = &ggl::debugShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669D40 = 0;
    unk_1ED669D48 = 0;
    qword_1ED669D38 = 0;
  }
}

void ggl::debugShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::debugShaderFragmentFunctionDescriptor(void)::ref = 0x14482CC31;
    qword_1ED669630 = "DebugShader";
    unk_1ED669638 = 0;
    qword_1ED669640 = 0;
    unk_1ED669648 = &ggl::debugShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669650 = 1;
    unk_1ED669658 = &ggl::debugShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED669660 = 0;
    unk_1ED669668 = &ggl::debugShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED669670 = 0;
    unk_1ED669678 = &ggl::debugShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669688 = 0;
    unk_1ED669690 = 0;
    qword_1ED669680 = 0;
  }
}

void ggl::debugExtendedShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::debugExtendedShaderVertexFunctionDescriptor(void)::ref = 3333867715;
    qword_1ED667FF8 = "DebugExtendedShader";
    unk_1ED668000 = ggl::debugExtendedShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668008 = 1;
    unk_1ED668010 = &ggl::debugExtendedShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668018 = 3;
    unk_1ED668020 = &ggl::debugExtendedShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668028 = 0;
    unk_1ED668030 = &ggl::debugExtendedShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668038 = 0;
    unk_1ED668040 = &ggl::debugExtendedShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668050 = 0;
    unk_1ED668058 = 0;
    qword_1ED668048 = 0;
  }
}

void ggl::debugExtendedShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::debugExtendedShaderFragmentFunctionDescriptor(void)::ref = 0x1352DFF8ALL;
    qword_1ED667010 = "DebugExtendedShader";
    unk_1ED667018 = 0;
    qword_1ED667020 = 0;
    unk_1ED667028 = &ggl::debugExtendedShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667030 = 1;
    unk_1ED667038 = &ggl::debugExtendedShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667040 = 0;
    unk_1ED667048 = &ggl::debugExtendedShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED667050 = 0;
    unk_1ED667058 = &ggl::debugExtendedShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667068 = 0;
    unk_1ED667070 = 0;
    qword_1ED667060 = 0;
  }
}

void ggl::debugLineShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::debugLineShaderVertexFunctionDescriptor(void)::ref = 167696548;
    qword_1ED65D0F8 = "DebugLineShader";
    unk_1ED65D100 = ggl::debugLineShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65D108 = 1;
    unk_1ED65D110 = &ggl::debugLineShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65D118 = 4;
    unk_1ED65D120 = &ggl::debugLineShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65D128 = 0;
    unk_1ED65D130 = &ggl::debugLineShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65D138 = 0;
    unk_1ED65D140 = &ggl::debugLineShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65D150 = 0;
    unk_1ED65D158 = 0;
    qword_1ED65D148 = 0;
  }
}

void ggl::debugLineShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::debugLineShaderFragmentFunctionDescriptor(void)::ref = 0x10226DDC6;
    qword_1ED65CF20 = "DebugLineShader";
    unk_1ED65CF28 = 0;
    qword_1ED65CF30 = 0;
    unk_1ED65CF38 = &ggl::debugLineShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CF40 = 1;
    unk_1ED65CF48 = &ggl::debugLineShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CF50 = 0;
    unk_1ED65CF58 = &ggl::debugLineShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CF60 = 0;
    unk_1ED65CF68 = &ggl::debugLineShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CF78 = 0;
    unk_1ED65CF80 = 0;
    qword_1ED65CF70 = 0;
  }
}

void ggl::hillshadeShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::hillshadeShaderVertexFunctionDescriptor(void)::ref = 368518581;
    qword_1ED65D080 = "HillshadeShader";
    unk_1ED65D088 = ggl::hillshadeShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65D090 = 1;
    unk_1ED65D098 = &ggl::hillshadeShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65D0A0 = 2;
    unk_1ED65D0A8 = &ggl::hillshadeShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65D0B0 = 0;
    unk_1ED65D0B8 = &ggl::hillshadeShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65D0C0 = 0;
    unk_1ED65D0C8 = &ggl::hillshadeShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65D0D8 = 0;
    unk_1ED65D0E0 = 0;
    qword_1ED65D0D0 = 0;
  }
}

void ggl::diffuseBuildingShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::diffuseBuildingShaderVertexFunctionDescriptor(void)::ref = 116142625;
    qword_1ED666FA0 = "DiffuseBuildingShader";
    unk_1ED666FA8 = ggl::diffuseBuildingShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666FB0 = 1;
    unk_1ED666FB8 = &ggl::diffuseBuildingShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666FC0 = 6;
    unk_1ED666FC8 = &ggl::diffuseBuildingShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666FD0 = 0;
    unk_1ED666FD8 = &ggl::diffuseBuildingShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666FE0 = 0;
    unk_1ED666FE8 = &ggl::diffuseBuildingShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666FF8 = 0;
    unk_1ED667000 = 0;
    qword_1ED666FF0 = 0;
  }
}

void ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(void)::ref = 1347535206;
    qword_1ED663448 = "DiffuseBuildingPointyRoofShader";
    unk_1ED663450 = ggl::diffuseBuildingPointyRoofShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED663458 = 1;
    unk_1ED663460 = &ggl::diffuseBuildingPointyRoofShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663468 = 6;
    unk_1ED663470 = &ggl::diffuseBuildingPointyRoofShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663478 = 0;
    unk_1ED663480 = &ggl::diffuseBuildingPointyRoofShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663488 = 0;
    unk_1ED663490 = &ggl::diffuseBuildingPointyRoofShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6634A0 = 0;
    unk_1ED6634A8 = 0;
    qword_1ED663498 = 0;
  }
}

void ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref = 1112635246;
    qword_1ED665738 = "DiffuseBuildingTopShader";
    unk_1ED665740 = ggl::diffuseBuildingTopShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED665748 = 1;
    unk_1ED665750 = &ggl::diffuseBuildingTopShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED665758 = 6;
    unk_1ED665760 = &ggl::diffuseBuildingTopShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED665768 = 0;
    unk_1ED665770 = &ggl::diffuseBuildingTopShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED665778 = 0;
    unk_1ED665780 = &ggl::diffuseBuildingTopShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665790 = 0;
    unk_1ED665798 = 0;
    qword_1ED665788 = 0;
  }
}

void ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref = 0x1755A17D4;
    qword_1ED664A10 = "DiffuseBuildingTopShader";
    unk_1ED664A18 = 0;
    qword_1ED664A20 = 0;
    unk_1ED664A28 = &ggl::diffuseBuildingTopShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED664A30 = 3;
    unk_1ED664A38 = &ggl::diffuseBuildingTopShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED664A40 = 0;
    unk_1ED664A48 = &ggl::diffuseBuildingTopShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED664A50 = 0;
    unk_1ED664A58 = &ggl::diffuseBuildingTopShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664A68 = 0;
    unk_1ED664A70 = 0;
    qword_1ED664A60 = 0;
  }
}

void ggl::diffuseLandmarkShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::diffuseLandmarkShaderVertexFunctionDescriptor(void)::ref = 638573751;
    qword_1ED666F28 = "DiffuseLandmarkShader";
    unk_1ED666F30 = ggl::diffuseLandmarkShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666F38 = 1;
    unk_1ED666F40 = &ggl::diffuseLandmarkShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666F48 = 6;
    unk_1ED666F50 = &ggl::diffuseLandmarkShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666F58 = 0;
    unk_1ED666F60 = &ggl::diffuseLandmarkShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666F68 = 0;
    unk_1ED666F70 = &ggl::diffuseLandmarkShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666F80 = 0;
    unk_1ED666F88 = 0;
    qword_1ED666F78 = 0;
  }
}

void ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(void)::ref = 2431374733;
    qword_1ED65B468 = "ElevatedFillNoWidthClipColorShader";
    unk_1ED65B470 = ggl::elevatedFillNoWidthClipColorShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65B478 = 1;
    unk_1ED65B480 = &ggl::elevatedFillNoWidthClipColorShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B488 = 4;
    unk_1ED65B490 = &ggl::elevatedFillNoWidthClipColorShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B498 = 0;
    unk_1ED65B4A0 = &ggl::elevatedFillNoWidthClipColorShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B4A8 = 0;
    unk_1ED65B4B0 = &ggl::elevatedFillNoWidthClipColorShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B4C0 = 0;
    unk_1ED65B4C8 = 0;
    qword_1ED65B4B8 = 0;
  }
}

void ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(void)::ref = 0x138D1A785;
    qword_1ED65B1B0 = "ElevatedFillNoWidthClipColorShader";
    unk_1ED65B1B8 = 0;
    qword_1ED65B1C0 = 0;
    unk_1ED65B1C8 = &ggl::elevatedFillNoWidthClipColorShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65B1D0 = 2;
    unk_1ED65B1D8 = &ggl::elevatedFillNoWidthClipColorShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65B1E0 = 0;
    unk_1ED65B1E8 = &ggl::elevatedFillNoWidthClipColorShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65B1F0 = 0;
    unk_1ED65B1F8 = &ggl::elevatedFillNoWidthClipColorShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65B208 = 0;
    unk_1ED65B210 = 0;
    qword_1ED65B200 = 0;
  }
}

void ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(void)::ref = 0x1F73A1BC0;
    qword_1ED65AE20 = "ElevatedStrokeColorWithDistanceShader";
    unk_1ED65AE28 = 0;
    qword_1ED65AE30 = 0;
    unk_1ED65AE38 = &ggl::elevatedStrokeColorWithDistanceShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65AE40 = 3;
    unk_1ED65AE48 = &ggl::elevatedStrokeColorWithDistanceShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65AE50 = 0;
    unk_1ED65AE58 = &ggl::elevatedStrokeColorWithDistanceShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65AE60 = 1;
    unk_1ED65AE68 = &ggl::elevatedStrokeColorWithDistanceShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65AE78 = 0;
    unk_1ED65AE80 = 0;
    qword_1ED65AE70 = 1;
  }
}

void ggl::fogShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::fogShaderFragmentFunctionDescriptor(void)::ref = 0x1BF0B2D19;
    qword_1ED669C70 = "FogShader";
    unk_1ED669C78 = 0;
    qword_1ED669C80 = 0;
    unk_1ED669C88 = &ggl::fogShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669C90 = 0;
    unk_1ED669C98 = &ggl::fogShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED669CA0 = 0;
    unk_1ED669CA8 = &ggl::fogShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED669CB0 = 0;
    unk_1ED669CB8 = &ggl::fogShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669CC8 = 0;
    unk_1ED669CD0 = 0;
    qword_1ED669CC0 = 0;
  }
}

void ggl::fogShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::fogShaderVertexFunctionDescriptor(void)::ref = 3022043563;
    qword_1ED66A158 = "FogShader";
    unk_1ED66A160 = ggl::fogShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED66A168 = 1;
    unk_1ED66A170 = &ggl::fogShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED66A178 = 2;
    unk_1ED66A180 = &ggl::fogShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED66A188 = 0;
    unk_1ED66A190 = &ggl::fogShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED66A198 = 0;
    unk_1ED66A1A0 = &ggl::fogShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66A1B0 = 0;
    unk_1ED66A1B8 = 0;
    qword_1ED66A1A8 = 0;
  }
}

void ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(void)::ref = 2959764180;
    qword_1ED664600 = "FoggedDiffuseBuildingShader";
    unk_1ED664608 = ggl::foggedDiffuseBuildingShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED664610 = 1;
    unk_1ED664618 = &ggl::foggedDiffuseBuildingShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED664620 = 6;
    unk_1ED664628 = &ggl::foggedDiffuseBuildingShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED664630 = 0;
    unk_1ED664638 = &ggl::foggedDiffuseBuildingShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED664640 = 0;
    unk_1ED664648 = &ggl::foggedDiffuseBuildingShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664658 = 0;
    unk_1ED664660 = 0;
    qword_1ED664650 = 0;
  }
}

void ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref = 2280077226;
    qword_1ED663708 = "FoggedDiffuseBuildingTopShader";
    unk_1ED663710 = ggl::foggedDiffuseBuildingTopShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED663718 = 1;
    unk_1ED663720 = &ggl::foggedDiffuseBuildingTopShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED663728 = 6;
    unk_1ED663730 = &ggl::foggedDiffuseBuildingTopShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED663738 = 0;
    unk_1ED663740 = &ggl::foggedDiffuseBuildingTopShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663748 = 0;
    unk_1ED663750 = &ggl::foggedDiffuseBuildingTopShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663760 = 0;
    unk_1ED663768 = 0;
    qword_1ED663758 = 0;
  }
}

void ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref = 0x1AC1081B8;
    qword_1ED662F40 = "FoggedDiffuseBuildingTopShader";
    unk_1ED662F48 = 0;
    qword_1ED662F50 = 0;
    unk_1ED662F58 = &ggl::foggedDiffuseBuildingTopShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662F60 = 3;
    unk_1ED662F68 = &ggl::foggedDiffuseBuildingTopShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662F70 = 0;
    unk_1ED662F78 = &ggl::foggedDiffuseBuildingTopShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED662F80 = 0;
    unk_1ED662F88 = &ggl::foggedDiffuseBuildingTopShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662F98 = 0;
    unk_1ED662FA0 = 0;
    qword_1ED662F90 = 0;
  }
}

void ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(void)::ref = 2424931394;
    qword_1ED664590 = "FoggedDiffuseLandmarkShader";
    unk_1ED664598 = ggl::foggedDiffuseLandmarkShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6645A0 = 1;
    unk_1ED6645A8 = &ggl::foggedDiffuseLandmarkShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6645B0 = 6;
    unk_1ED6645B8 = &ggl::foggedDiffuseLandmarkShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6645C0 = 0;
    unk_1ED6645C8 = &ggl::foggedDiffuseLandmarkShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6645D0 = 0;
    unk_1ED6645D8 = &ggl::foggedDiffuseLandmarkShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6645E8 = 0;
    unk_1ED6645F0 = 0;
    qword_1ED6645E0 = 0;
  }
}

void ggl::foggedSpecularBuildingTopShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::foggedSpecularBuildingTopShaderFragmentFunctionDescriptor(void)::ref = 0x113B913CCLL;
    qword_1ED662C08 = "FoggedSpecularBuildingTopShader";
    unk_1ED662C10 = 0;
    qword_1ED662C18 = 0;
    unk_1ED662C20 = &ggl::foggedSpecularBuildingTopShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662C28 = 4;
    unk_1ED662C30 = &ggl::foggedSpecularBuildingTopShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662C38 = 0;
    unk_1ED662C40 = &ggl::foggedSpecularBuildingTopShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED662C48 = 0;
    unk_1ED662C50 = &ggl::foggedSpecularBuildingTopShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662C60 = 0;
    unk_1ED662C68 = 0;
    qword_1ED662C58 = 0;
  }
}

void ggl::globeAtmosphereShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::globeAtmosphereShaderVertexFunctionDescriptor(void)::ref = 982826680;
    qword_1ED666CE0 = "GlobeAtmosphereShader";
    unk_1ED666CE8 = ggl::globeAtmosphereShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666CF0 = 1;
    unk_1ED666CF8 = &ggl::globeAtmosphereShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666D00 = 2;
    unk_1ED666D08 = &ggl::globeAtmosphereShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666D10 = 0;
    unk_1ED666D18 = &ggl::globeAtmosphereShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666D20 = 0;
    unk_1ED666D28 = &ggl::globeAtmosphereShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666D38 = 0;
    unk_1ED666D40 = 0;
    qword_1ED666D30 = 0;
  }
}

void ggl::glowShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::glowShaderVertexFunctionDescriptor(void)::ref = 117578436;
    qword_1ED66A000 = "GlowShader";
    unk_1ED66A008 = ggl::glowShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED66A010 = 1;
    unk_1ED66A018 = &ggl::glowShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED66A020 = 3;
    unk_1ED66A028 = &ggl::glowShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED66A030 = 0;
    unk_1ED66A038 = &ggl::glowShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED66A040 = 0;
    unk_1ED66A048 = &ggl::glowShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66A058 = 0;
    unk_1ED66A060 = 0;
    qword_1ED66A050 = 0;
  }
}

void ggl::glyph3dShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::glyph3dShaderVertexFunctionDescriptor(void)::ref = 1243171896;
    qword_1ED669550 = "Glyph3dShader";
    unk_1ED669558 = ggl::glyph3dShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669560 = 1;
    unk_1ED669568 = &ggl::glyph3dShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669570 = 4;
    unk_1ED669578 = &ggl::glyph3dShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669580 = 0;
    unk_1ED669588 = &ggl::glyph3dShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669590 = 2;
    unk_1ED669598 = &ggl::glyph3dShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6695A8 = 0;
    unk_1ED6695B0 = 0;
    qword_1ED6695A0 = 2;
  }
}

void ggl::glyph3dShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::glyph3dShaderFragmentFunctionDescriptor(void)::ref = 0x128B00C6ALL;
    qword_1ED6690A8 = "Glyph3dShader";
    unk_1ED6690B0 = 0;
    qword_1ED6690B8 = 0;
    unk_1ED6690C0 = &ggl::glyph3dShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6690C8 = 2;
    unk_1ED6690D0 = &ggl::glyph3dShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6690D8 = 0;
    unk_1ED6690E0 = &ggl::glyph3dShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6690E8 = 1;
    unk_1ED6690F0 = &ggl::glyph3dShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669100 = 0;
    unk_1ED669108 = 0;
    qword_1ED6690F8 = 1;
  }
}

void ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(void)::ref = 0x1ABE06293;
    qword_1ED664518 = "Glyph3dLowPrecisionShader";
    unk_1ED664520 = 0;
    qword_1ED664528 = 0;
    unk_1ED664530 = &ggl::glyph3dLowPrecisionShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED664538 = 2;
    unk_1ED664540 = &ggl::glyph3dLowPrecisionShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED664548 = 0;
    unk_1ED664550 = &ggl::glyph3dLowPrecisionShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED664558 = 1;
    unk_1ED664560 = &ggl::glyph3dLowPrecisionShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664570 = 0;
    unk_1ED664578 = 0;
    qword_1ED664568 = 1;
  }
}

void ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(void)::ref = 0x136600E4BLL;
    qword_1ED665CA8 = "Glyph3dRaymarchShader";
    unk_1ED665CB0 = 0;
    qword_1ED665CB8 = 0;
    unk_1ED665CC0 = &ggl::glyph3dRaymarchShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED665CC8 = 2;
    unk_1ED665CD0 = &ggl::glyph3dRaymarchShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED665CD8 = 0;
    unk_1ED665CE0 = &ggl::glyph3dRaymarchShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED665CE8 = 1;
    unk_1ED665CF0 = &ggl::glyph3dRaymarchShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665D00 = 0;
    unk_1ED665D08 = 0;
    qword_1ED665CF8 = 1;
  }
}

void ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref = 1716606755;
    qword_1ED664F90 = "GlyphWithNormalHaloShader";
    unk_1ED664F98 = ggl::glyphWithNormalHaloShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED664FA0 = 1;
    unk_1ED664FA8 = &ggl::glyphWithNormalHaloShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED664FB0 = 2;
    unk_1ED664FB8 = &ggl::glyphWithNormalHaloShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED664FC0 = 0;
    unk_1ED664FC8 = &ggl::glyphWithNormalHaloShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED664FD0 = 1;
    unk_1ED664FD8 = &ggl::glyphWithNormalHaloShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664FE8 = 0;
    unk_1ED664FF0 = 0;
    qword_1ED664FE0 = 1;
  }
}

void ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref = 0x10BE32254;
    qword_1ED6644A8 = "GlyphWithNormalHaloShader";
    unk_1ED6644B0 = 0;
    qword_1ED6644B8 = 0;
    unk_1ED6644C0 = &ggl::glyphWithNormalHaloShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6644C8 = 2;
    unk_1ED6644D0 = &ggl::glyphWithNormalHaloShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6644D8 = 0;
    unk_1ED6644E0 = &ggl::glyphWithNormalHaloShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6644E8 = 1;
    unk_1ED6644F0 = &ggl::glyphWithNormalHaloShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664500 = 0;
    unk_1ED664508 = 0;
    qword_1ED6644F8 = 1;
  }
}

void ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(void)::ref = 0x1AE8C75D5;
    qword_1ED6627F0 = "GradientPolylineOverlayFillShader";
    unk_1ED6627F8 = 0;
    qword_1ED662800 = 0;
    unk_1ED662808 = &ggl::gradientPolylineOverlayFillShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662810 = 2;
    unk_1ED662818 = &ggl::gradientPolylineOverlayFillShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662820 = 0;
    unk_1ED662828 = &ggl::gradientPolylineOverlayFillShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED662830 = 1;
    unk_1ED662838 = &ggl::gradientPolylineOverlayFillShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662848 = 0;
    unk_1ED662850 = 0;
    qword_1ED662840 = 1;
  }
}

void ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(void)::ref = 1527713323;
    qword_1ED6629C8 = "GradientPolylineOverlayAlphaShader";
    unk_1ED6629D0 = ggl::gradientPolylineOverlayAlphaShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6629D8 = 1;
    unk_1ED6629E0 = &ggl::gradientPolylineOverlayAlphaShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6629E8 = 3;
    unk_1ED6629F0 = &ggl::gradientPolylineOverlayAlphaShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6629F8 = 0;
    unk_1ED662A00 = &ggl::gradientPolylineOverlayAlphaShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED662A08 = 0;
    unk_1ED662A10 = &ggl::gradientPolylineOverlayAlphaShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662A20 = 0;
    unk_1ED662A28 = 0;
    qword_1ED662A18 = 0;
  }
}

void ggl::gridUVShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::gridUVShaderFragmentFunctionDescriptor(void)::ref = 0x13457111DLL;
    qword_1EB82F868 = "GridUVShader";
    unk_1EB82F870 = 0;
    qword_1EB82F878 = 0;
    unk_1EB82F880 = &ggl::gridUVShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1EB82F888 = 2;
    unk_1EB82F890 = &ggl::gridUVShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1EB82F898 = 0;
    unk_1EB82F8A0 = &ggl::gridUVShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1EB82F8A8 = 0;
    unk_1EB82F8B0 = &ggl::gridUVShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1EB82F8C0 = 0;
    unk_1EB82F8C8 = 0;
    qword_1EB82F8B8 = 0;
  }
}

void ggl::iconShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::iconShaderFragmentFunctionDescriptor(void)::ref = 0x1FF0EB27DLL;
    qword_1ED669868 = "IconShader";
    unk_1ED669870 = 0;
    qword_1ED669878 = 0;
    unk_1ED669880 = &ggl::iconShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669888 = 1;
    unk_1ED669890 = &ggl::iconShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED669898 = 0;
    unk_1ED6698A0 = &ggl::iconShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6698A8 = 1;
    unk_1ED6698B0 = &ggl::iconShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6698C0 = 0;
    unk_1ED6698C8 = 0;
    qword_1ED6698B8 = 1;
  }
}

void ggl::maskedIconShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::maskedIconShaderVertexFunctionDescriptor(void)::ref = 1655942737;
    qword_1ED65D010 = "MaskedIconShader";
    unk_1ED65D018 = ggl::maskedIconShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65D020 = 1;
    unk_1ED65D028 = &ggl::maskedIconShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65D030 = 4;
    unk_1ED65D038 = &ggl::maskedIconShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65D040 = 0;
    unk_1ED65D048 = &ggl::maskedIconShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65D050 = 2;
    unk_1ED65D058 = &ggl::maskedIconShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65D068 = 0;
    unk_1ED65D070 = 0;
    qword_1ED65D060 = 2;
  }
}

void ggl::maskedIconShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::maskedIconShaderFragmentFunctionDescriptor(void)::ref = 0x1D28B777ALL;
    qword_1ED65CDC8 = "MaskedIconShader";
    unk_1ED65CDD0 = 0;
    qword_1ED65CDD8 = 0;
    unk_1ED65CDE0 = &ggl::maskedIconShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CDE8 = 1;
    unk_1ED65CDF0 = &ggl::maskedIconShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CDF8 = 0;
    unk_1ED65CE00 = &ggl::maskedIconShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CE08 = 1;
    unk_1ED65CE10 = &ggl::maskedIconShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CE20 = 0;
    unk_1ED65CE28 = 0;
    qword_1ED65CE18 = 1;
  }
}

void ggl::waypointShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::waypointShaderFragmentFunctionDescriptor(void)::ref = 0x1690CCF7FLL;
    qword_1ED65CF98 = "WaypointShader";
    unk_1ED65CFA0 = 0;
    qword_1ED65CFA8 = 0;
    unk_1ED65CFB0 = &ggl::waypointShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CFB8 = 1;
    unk_1ED65CFC0 = &ggl::waypointShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CFC8 = 0;
    unk_1ED65CFD0 = &ggl::waypointShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CFD8 = 0;
    unk_1ED65CFE0 = &ggl::waypointShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CFF0 = 0;
    unk_1ED65CFF8 = 0;
    qword_1ED65CFE8 = 0;
  }
}

void ggl::shadowShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::shadowShaderVertexFunctionDescriptor(void)::ref = 3973622088;
    qword_1EB82F8E0 = "ShadowShader";
    unk_1EB82F8E8 = ggl::shadowShaderVertShaderFunctionAttributes(void)::ref;
    qword_1EB82F8F0 = 1;
    unk_1EB82F8F8 = &ggl::shadowShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1EB82F900 = 3;
    unk_1EB82F908 = &ggl::shadowShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1EB82F910 = 0;
    unk_1EB82F918 = &ggl::shadowShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1EB82F920 = 2;
    unk_1EB82F928 = &ggl::shadowShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1EB82F938 = 0;
    unk_1EB82F940 = 0;
    qword_1EB82F930 = 2;
  }
}

void ggl::imageCopyShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::imageCopyShaderVertexFunctionDescriptor(void)::ref = 1332569269;
    qword_1ED669030 = "ImageCopyShader";
    unk_1ED669038 = ggl::imageCopyShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669040 = 1;
    unk_1ED669048 = &ggl::imageCopyShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669050 = 0;
    unk_1ED669058 = &ggl::imageCopyShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669060 = 0;
    unk_1ED669068 = &ggl::imageCopyShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669070 = 0;
    unk_1ED669078 = &ggl::imageCopyShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669088 = 0;
    unk_1ED669090 = 0;
    qword_1ED669080 = 0;
  }
}

void ggl::imageCopyShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::imageCopyShaderFragmentFunctionDescriptor(void)::ref = 0x1932847E2;
    qword_1ED668A58 = "ImageCopyShader";
    unk_1ED668A60 = 0;
    qword_1ED668A68 = 0;
    unk_1ED668A70 = &ggl::imageCopyShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED668A78 = 0;
    unk_1ED668A80 = &ggl::imageCopyShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED668A88 = 0;
    unk_1ED668A90 = &ggl::imageCopyShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED668A98 = 1;
    unk_1ED668AA0 = &ggl::imageCopyShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668AB0 = 0;
    unk_1ED668AB8 = 0;
    qword_1ED668AA8 = 1;
  }
}

void ggl::landmarkDepthShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::landmarkDepthShaderVertexFunctionDescriptor(void)::ref = 1369970059;
    qword_1ED667E18 = "LandmarkDepthShader";
    unk_1ED667E20 = ggl::landmarkDepthShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED667E28 = 1;
    unk_1ED667E30 = &ggl::landmarkDepthShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED667E38 = 2;
    unk_1ED667E40 = &ggl::landmarkDepthShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED667E48 = 0;
    unk_1ED667E50 = &ggl::landmarkDepthShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED667E58 = 0;
    unk_1ED667E60 = &ggl::landmarkDepthShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667E70 = 0;
    unk_1ED667E78 = 0;
    qword_1ED667E68 = 0;
  }
}

void ggl::landmarkDepthShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::landmarkDepthShaderFragmentFunctionDescriptor(void)::ref = 0x1F5EF03F0;
    qword_1ED666C00 = "LandmarkDepthShader";
    unk_1ED666C08 = 0;
    qword_1ED666C10 = 0;
    unk_1ED666C18 = &ggl::landmarkDepthShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED666C20 = 0;
    unk_1ED666C28 = &ggl::landmarkDepthShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED666C30 = 0;
    unk_1ED666C38 = &ggl::landmarkDepthShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED666C40 = 0;
    unk_1ED666C48 = &ggl::landmarkDepthShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666C58 = 0;
    unk_1ED666C60 = 0;
    qword_1ED666C50 = 0;
  }
}

void ggl::landmarkFlatShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::landmarkFlatShaderVertexFunctionDescriptor(void)::ref = 1183933787;
    qword_1ED668398 = "LandmarkFlatShader";
    unk_1ED6683A0 = ggl::landmarkFlatShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6683A8 = 1;
    unk_1ED6683B0 = &ggl::landmarkFlatShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6683B8 = 4;
    unk_1ED6683C0 = &ggl::landmarkFlatShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6683C8 = 0;
    unk_1ED6683D0 = &ggl::landmarkFlatShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6683D8 = 0;
    unk_1ED6683E0 = &ggl::landmarkFlatShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6683F0 = 0;
    unk_1ED6683F8 = 0;
    qword_1ED6683E8 = 0;
  }
}

void ggl::outerShadowRibbonShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::outerShadowRibbonShaderVertexFunctionDescriptor(void)::ref = 2596518777;
    qword_1ED665C38 = "OuterShadowRibbonShader";
    unk_1ED665C40 = ggl::outerShadowRibbonShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED665C48 = 1;
    unk_1ED665C50 = &ggl::outerShadowRibbonShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED665C58 = 3;
    unk_1ED665C60 = &ggl::outerShadowRibbonShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED665C68 = 0;
    unk_1ED665C70 = &ggl::outerShadowRibbonShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED665C78 = 0;
    unk_1ED665C80 = &ggl::outerShadowRibbonShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665C90 = 0;
    unk_1ED665C98 = 0;
    qword_1ED665C88 = 0;
  }
}

void ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(void)::ref = 609136837;
    qword_1ED6639C8 = "PolygonOverlayAntialiasShader";
    unk_1ED6639D0 = ggl::polygonOverlayAntialiasShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6639D8 = 1;
    unk_1ED6639E0 = &ggl::polygonOverlayAntialiasShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED6639E8 = 3;
    unk_1ED6639F0 = &ggl::polygonOverlayAntialiasShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6639F8 = 0;
    unk_1ED663A00 = &ggl::polygonOverlayAntialiasShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED663A08 = 0;
    unk_1ED663A10 = &ggl::polygonOverlayAntialiasShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED663A20 = 0;
    unk_1ED663A28 = 0;
    qword_1ED663A18 = 0;
  }
}

void ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(void)::ref = 0x13DA943FALL;
    qword_1ED6630A0 = "PolygonOverlayAntialiasShader";
    unk_1ED6630A8 = 0;
    qword_1ED6630B0 = 0;
    unk_1ED6630B8 = &ggl::polygonOverlayAntialiasShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6630C0 = 2;
    unk_1ED6630C8 = &ggl::polygonOverlayAntialiasShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6630D0 = 0;
    unk_1ED6630D8 = &ggl::polygonOverlayAntialiasShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6630E0 = 1;
    unk_1ED6630E8 = &ggl::polygonOverlayAntialiasShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6630F8 = 0;
    unk_1ED663100 = 0;
    qword_1ED6630F0 = 1;
  }
}

void ggl::maskingOverlayFillShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::maskingOverlayFillShaderVertexFunctionDescriptor(void)::ref = 2178772497;
    qword_1ED65C768 = "MaskingOverlayFillShader";
    unk_1ED65C770 = ggl::maskingOverlayFillShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65C778 = 1;
    unk_1ED65C780 = &ggl::maskingOverlayFillShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65C788 = 3;
    unk_1ED65C790 = &ggl::maskingOverlayFillShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65C798 = 0;
    unk_1ED65C7A0 = &ggl::maskingOverlayFillShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65C7A8 = 0;
    unk_1ED65C7B0 = &ggl::maskingOverlayFillShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65C7C0 = 0;
    unk_1ED65C7C8 = 0;
    qword_1ED65C7B8 = 0;
  }
}

void ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(void)::ref = 3568596431;
    qword_1ED65C118 = "MaskingOverlayMaskingShader";
    unk_1ED65C120 = ggl::maskingOverlayMaskingShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65C128 = 1;
    unk_1ED65C130 = &ggl::maskingOverlayMaskingShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65C138 = 2;
    unk_1ED65C140 = &ggl::maskingOverlayMaskingShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65C148 = 0;
    unk_1ED65C150 = &ggl::maskingOverlayMaskingShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65C158 = 0;
    unk_1ED65C160 = &ggl::maskingOverlayMaskingShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65C170 = 0;
    unk_1ED65C178 = 0;
    qword_1ED65C168 = 0;
  }
}

void ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(void)::ref = 0x12C486DB5;
    qword_1ED65BE60 = "MaskingOverlayMaskingShader";
    unk_1ED65BE68 = 0;
    qword_1ED65BE70 = 0;
    unk_1ED65BE78 = &ggl::maskingOverlayMaskingShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65BE80 = 1;
    unk_1ED65BE88 = &ggl::maskingOverlayMaskingShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65BE90 = 0;
    unk_1ED65BE98 = &ggl::maskingOverlayMaskingShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65BEA0 = 0;
    unk_1ED65BEA8 = &ggl::maskingOverlayMaskingShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65BEB8 = 0;
    unk_1ED65BEC0 = 0;
    qword_1ED65BEB0 = 0;
  }
}

void ggl::patternedRibbonShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::patternedRibbonShaderVertexFunctionDescriptor(void)::ref = 2551977489;
    qword_1ED666AA0 = "PatternedRibbonShader";
    unk_1ED666AA8 = ggl::patternedRibbonShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED666AB0 = 1;
    unk_1ED666AB8 = &ggl::patternedRibbonShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED666AC0 = 4;
    unk_1ED666AC8 = &ggl::patternedRibbonShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED666AD0 = 0;
    unk_1ED666AD8 = &ggl::patternedRibbonShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED666AE0 = 0;
    unk_1ED666AE8 = &ggl::patternedRibbonShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED666AF8 = 0;
    unk_1ED666B00 = 0;
    qword_1ED666AF0 = 0;
  }
}

void ggl::patternedRibbonShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::patternedRibbonShaderFragmentFunctionDescriptor(void)::ref = 0x1E748F96ELL;
    qword_1ED665BC8 = "PatternedRibbonShader";
    unk_1ED665BD0 = 0;
    qword_1ED665BD8 = 0;
    unk_1ED665BE0 = &ggl::patternedRibbonShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED665BE8 = 2;
    unk_1ED665BF0 = &ggl::patternedRibbonShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED665BF8 = 0;
    unk_1ED665C00 = &ggl::patternedRibbonShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED665C08 = 1;
    unk_1ED665C10 = &ggl::patternedRibbonShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED665C20 = 0;
    unk_1ED665C28 = 0;
    qword_1ED665C18 = 1;
  }
}

void ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(void)::ref = 0x11CF0EFDFLL;
    qword_1ED662708 = "WriteStencilPatternedRibbonShader";
    unk_1ED662710 = 0;
    qword_1ED662718 = 0;
    unk_1ED662720 = &ggl::writeStencilPatternedRibbonShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED662728 = 1;
    unk_1ED662730 = &ggl::writeStencilPatternedRibbonShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED662738 = 0;
    unk_1ED662740 = &ggl::writeStencilPatternedRibbonShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED662748 = 0;
    unk_1ED662750 = &ggl::writeStencilPatternedRibbonShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED662760 = 0;
    unk_1ED662768 = 0;
    qword_1ED662758 = 0;
  }
}

void ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(void)::ref = 2829142177;
    qword_1ED664438 = "PolygonAnimatableFillShader";
    unk_1ED664440 = ggl::polygonAnimatableFillShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED664448 = 1;
    unk_1ED664450 = &ggl::polygonAnimatableFillShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED664458 = 3;
    unk_1ED664460 = &ggl::polygonAnimatableFillShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED664468 = 0;
    unk_1ED664470 = &ggl::polygonAnimatableFillShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED664478 = 0;
    unk_1ED664480 = &ggl::polygonAnimatableFillShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED664490 = 0;
    unk_1ED664498 = 0;
    qword_1ED664488 = 0;
  }
}

void ggl::polygonFillShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::polygonFillShaderVertexFunctionDescriptor(void)::ref = 3492893098;
    qword_1ED6689E8 = "PolygonFillShader";
    unk_1ED6689F0 = ggl::polygonFillShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED6689F8 = 1;
    unk_1ED668A00 = &ggl::polygonFillShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668A08 = 3;
    unk_1ED668A10 = &ggl::polygonFillShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668A18 = 0;
    unk_1ED668A20 = &ggl::polygonFillShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668A28 = 0;
    unk_1ED668A30 = &ggl::polygonFillShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668A40 = 0;
    unk_1ED668A48 = 0;
    qword_1ED668A38 = 0;
  }
}

void ggl::polygonFillShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::polygonFillShaderFragmentFunctionDescriptor(void)::ref = 0x108C11203;
    qword_1ED667C40 = "PolygonFillShader";
    unk_1ED667C48 = 0;
    qword_1ED667C50 = 0;
    unk_1ED667C58 = &ggl::polygonFillShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667C60 = 1;
    unk_1ED667C68 = &ggl::polygonFillShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667C70 = 0;
    unk_1ED667C78 = &ggl::polygonFillShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED667C80 = 1;
    unk_1ED667C88 = &ggl::polygonFillShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED667C98 = 0;
    unk_1ED667CA0 = 0;
    qword_1ED667C90 = 1;
  }
}