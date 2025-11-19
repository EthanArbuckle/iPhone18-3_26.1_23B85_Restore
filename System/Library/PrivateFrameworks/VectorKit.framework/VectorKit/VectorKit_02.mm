void sub_1B27A18D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorShadows>(md::ita::PrepareFunctionConstantDescriptorShadows &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorShadows &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorShadows>(md::ita::PrepareFunctionConstantDescriptorShadows &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x4C30532B0D2F6731;
    *(v9 + 8) = "md::ls::UsesShadow]";
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
    *v2 = 0x4C30532B0D2F6731;
    v2[1] = "md::ls::UsesShadow]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xE7D1C5E790E8E07;
    v4[1] = "md::ls::IntendedStandardPassSceneDepth]";
    v4[2] = 38;
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
  *v19 = 0xE7D1C5E790E8E07;
  v19[1] = "md::ls::IntendedStandardPassSceneDepth]";
  v19[2] = 38;
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

void sub_1B27A1B38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::HasMaterialRasterRenderItem>>(void **a1)
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
    *v10 = 0xD5B48B62BD07EF80;
    v10[1] = "md::ls::HasMaterialRasterRenderItem]";
    v10[2] = 35;
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
    *v2 = 0xD5B48B62BD07EF80;
    v2[1] = "md::ls::HasMaterialRasterRenderItem]";
    v2[2] = 35;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A1CA8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorFog>(md::ita::PrepareFunctionConstantDescriptorFog &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorFog &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorFog>(md::ita::PrepareFunctionConstantDescriptorFog &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x3E8485C60908F920;
    *(v9 + 8) = "md::ls::IsMaterial]";
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
    *v2 = 0x3E8485C60908F920;
    v2[1] = "md::ls::IsMaterial]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xDB4F0ABC43345F6ALL;
    v4[1] = "md::ls::MainPassItem]";
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
  *v19 = 0xDB4F0ABC43345F6ALL;
  v19[1] = "md::ls::MainPassItem]";
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

void sub_1B27A1F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorAO>(md::ita::PrepareFunctionConstantDescriptorAO &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorAO &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorAO>(md::ita::PrepareFunctionConstantDescriptorAO &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xD5AD9B8C3FE62EE8;
    v10[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v10[2] = 46;
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
    *v2 = 0xD5AD9B8C3FE62EE8;
    v2[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v2[2] = 46;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A207C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorECEF>(md::ita::PrepareFunctionConstantDescriptorECEF &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorECEF &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorECEF>(md::ita::PrepareFunctionConstantDescriptorECEF &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x237F9D3BCC905318;
    *(v9 + 8) = "md::ls::IsMercator]";
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
    *v2 = 0x237F9D3BCC905318;
    v2[1] = "md::ls::IsMercator]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0xB3266AFC8DD8D727;
    v4[1] = "md::ls::IsNotMercator]";
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
  *v19 = 0xB3266AFC8DD8D727;
  v19[1] = "md::ls::IsNotMercator]";
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

void sub_1B27A22E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorTileClipping>(md::ita::PrepareFunctionConstantDescriptorTileClipping &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorTileClipping &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorTileClipping>(md::ita::PrepareFunctionConstantDescriptorTileClipping &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x9292F9031FE6DB5;
    *(v9 + 8) = "md::ls::ClippingConstantDataHandle]";
    *(v9 + 16) = 34;
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
    *v2 = 0x9292F9031FE6DB5;
    v2[1] = "md::ls::ClippingConstantDataHandle]";
    v2[2] = 34;
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

void sub_1B27A254C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>(md::ita::PrepareFunctionConstantDescriptorIdentityMatrix &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>(md::ita::PrepareFunctionConstantDescriptorIdentityMatrix &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x944162BB9DE8E7EBLL;
    v10[1] = "md::ls::UseIdentityMatrix]";
    v10[2] = 25;
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
    *v2 = 0x944162BB9DE8E7EBLL;
    v2[1] = "md::ls::UseIdentityMatrix]";
    v2[2] = 25;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A26B0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>(md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>(md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xE7D1C5E790E8E07;
    v10[1] = "md::ls::IntendedStandardPassSceneDepth]";
    v10[2] = 38;
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
    *v2 = 0xE7D1C5E790E8E07;
    v2[1] = "md::ls::IntendedStandardPassSceneDepth]";
    v2[2] = 38;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A2824(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPlanar>(md::ita::PrepareFunctionConstantDescriptorPlanar &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorPlanar &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPlanar>(md::ita::PrepareFunctionConstantDescriptorPlanar &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0xD02B5FD100F36AA2;
    *(v9 + 8) = "md::ls::PlanarParametersCacheKeyHandle]";
    *(v9 + 16) = 38;
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
    *v2 = 0xD02B5FD100F36AA2;
    v2[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v2[2] = 38;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 < v13)
  {
    *v4 = 0x1223E23132DA4D6ALL;
    v4[1] = "md::ls::TriPlanar]";
    v4[2] = 17;
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
  *v19 = 0x1223E23132DA4D6ALL;
  v19[1] = "md::ls::TriPlanar]";
  v19[2] = 17;
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

void sub_1B27A2A8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>(md::ita::PrepareFunctionConstantDescriptorPreserveHeight &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorPreserveHeight &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>(md::ita::PrepareFunctionConstantDescriptorPreserveHeight &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x98A9F01DBB8BCCCELL;
    v10[1] = "md::ls::PreserveHeight]";
    v10[2] = 22;
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
    *v2 = 0x98A9F01DBB8BCCCELL;
    v2[1] = "md::ls::PreserveHeight]";
    v2[2] = 22;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A2C08(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>(md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>(md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xA50DD2A5BD75DBD6;
    v10[1] = "md::ls::StyleEmissiveDataKeyHandle]";
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
    *v2 = 0xA50DD2A5BD75DBD6;
    v2[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v2[2] = 34;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A2D7C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>(md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>(md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xCE03281732FA0019;
    v10[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v10[2] = 54;
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
    *v2 = 0xCE03281732FA0019;
    v2[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v2[2] = 54;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A2EF0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>(md::ita::PrepareFunctionConstantDescriptorUseCameraZBias &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>(md::ita::PrepareFunctionConstantDescriptorUseCameraZBias &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x499CE17DBD9A1615;
    v10[1] = "md::ls::NeedsZBias]";
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
    *v2 = 0x499CE17DBD9A1615;
    v2[1] = "md::ls::NeedsZBias]";
    v2[2] = 18;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A306C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorClimateTint>(md::ita::PrepareFunctionConstantDescriptorClimateTint &&)::{lambda(void)#1},std::allocator<md::ita::PrepareFunctionConstantDescriptorClimateTint &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::PrepareFunctionConstantDescriptorClimateTint>(md::ita::PrepareFunctionConstantDescriptorClimateTint &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x11BB47B172EB0B40;
    v10[1] = "md::ls::NeedsClimateTint]";
    v10[2] = 24;
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
    *v2 = 0x11BB47B172EB0B40;
    v2[1] = "md::ls::NeedsClimateTint]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A31EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupDefaultRenderState>(md::ita::SetupDefaultRenderState &&)::{lambda(void)#1},std::allocator<md::ita::SetupDefaultRenderState &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupDefaultRenderState>(md::ita::SetupDefaultRenderState &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x1E85A99FD528C623;
    *(v9 + 8) = "md::ls::NeedsRenderState]";
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
    *v2 = 0x1E85A99FD528C623;
    v2[1] = "md::ls::NeedsRenderState]";
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
    *v19 = 0x73F0259EC1934FB1;
    v19[1] = "md::ls::IsTransparent]";
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
    *v4 = 0x73F0259EC1934FB1;
    v4[1] = "md::ls::IsTransparent]";
    v4[2] = 21;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xD68EA0DE832DEC03;
    v14[1] = "md::ls::RenderItemID]";
    v14[2] = 20;
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
  *v29 = 0xD68EA0DE832DEC03;
  v29[1] = "md::ls::RenderItemID]";
  v29[2] = 20;
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

void sub_1B27A3554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupCustomRenderState>(md::ita::SetupCustomRenderState &&)::{lambda(void)#1},std::allocator<md::ita::SetupCustomRenderState &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupCustomRenderState>(md::ita::SetupCustomRenderState &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x5DA2A39FD10CA33BLL;
    v19[1] = "md::ls::IntendedSceneLayerType<md::SceneLayer::AboveRoute>]";
    v19[2] = 58;
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
    *v4 = 0x5DA2A39FD10CA33BLL;
    v4[1] = "md::ls::IntendedSceneLayerType<md::SceneLayer::AboveRoute>]";
    v4[2] = 58;
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

void sub_1B27A3894(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStatesForSeeThrough>(md::ita::SetupRenderStatesForSeeThrough &&)::{lambda(void)#1},std::allocator<md::ita::SetupRenderStatesForSeeThrough &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStatesForSeeThrough>(md::ita::SetupRenderStatesForSeeThrough &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x40FCAF57579CC039;
    *(v9 + 8) = "md::ls::IntendedSceneLayerType<md::SceneLayer::SeeThrough>]";
    *(v9 + 16) = 58;
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
    *v2 = 0x40FCAF57579CC039;
    v2[1] = "md::ls::IntendedSceneLayerType<md::SceneLayer::SeeThrough>]";
    v2[2] = 58;
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
    *v29 = 0x73F0259EC1934FB1;
    v29[1] = "md::ls::IsTransparent]";
    v29[2] = 21;
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
    *v14 = 0x73F0259EC1934FB1;
    v14[1] = "md::ls::IsTransparent]";
    v14[2] = 21;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x1E85A99FD528C623;
    v24[1] = "md::ls::NeedsRenderState]";
    v24[2] = 24;
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
  *v39 = 0x1E85A99FD528C623;
  v39[1] = "md::ls::NeedsRenderState]";
  v39[2] = 24;
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

void sub_1B27A3CC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStates>(md::ita::SetupRenderStates &&)::{lambda(void)#1},std::allocator<md::ita::SetupRenderStates &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupRenderStates>(md::ita::SetupRenderStates &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x56D66E00519BD989;
    v10[1] = "md::ls::NeedsNewRenderState]";
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
    *v2 = 0x56D66E00519BD989;
    v2[1] = "md::ls::NeedsNewRenderState]";
    v2[2] = 27;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A3E3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupPredefinedRenderState>(md::ita::SetupPredefinedRenderState &&)::{lambda(void)#1},std::allocator<md::ita::SetupPredefinedRenderState &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::SetupPredefinedRenderState>(md::ita::SetupPredefinedRenderState &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0xCB8AA7FBA6BCD25CLL;
    *(v9 + 8) = "md::ls::PredefinedRenderState]";
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
    *v2 = 0xCB8AA7FBA6BCD25CLL;
    v2[1] = "md::ls::PredefinedRenderState]";
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
    *v29 = 0x1E85A99FD528C623;
    v29[1] = "md::ls::NeedsRenderState]";
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
    *v14 = 0x1E85A99FD528C623;
    v14[1] = "md::ls::NeedsRenderState]";
    v14[2] = 24;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x69465F3BE0BF85FBLL;
    v24[1] = "md::ls::FlyoverInstance]";
    v24[2] = 23;
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
  *v39 = 0x69465F3BE0BF85FBLL;
  v39[1] = "md::ls::FlyoverInstance]";
  v39[2] = 23;
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

void sub_1B27A4270(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::PendingRenderItemSetup,md::ls::RequiredPipelinePoolID>>(const void **a1)
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
    *v4 = 0xE54E641F7C1F9B89;
    v4[1] = "md::ls::RequiredPipelinePoolID]";
    v4[2] = 30;
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
  *v19 = 0xE54E641F7C1F9B89;
  v19[1] = "md::ls::RequiredPipelinePoolID]";
  v19[2] = 30;
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

void sub_1B27A44CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreatePipelineStates>(md::ita::CreatePipelineStates &&)::{lambda(void)#1},std::allocator<md::ita::CreatePipelineStates &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CreatePipelineStates>(md::ita::CreatePipelineStates &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xC62D89929260CB56;
    v19[1] = "md::ls::FunctionConstants]";
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
    *v4 = 0xC62D89929260CB56;
    v4[1] = "md::ls::FunctionConstants]";
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
    *v29 = 0xE54E641F7C1F9B89;
    v29[1] = "md::ls::RequiredPipelinePoolID]";
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
    *v14 = 0xE54E641F7C1F9B89;
    v14[1] = "md::ls::RequiredPipelinePoolID]";
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
    *v39 = 0x7087983DEF28DBFELL;
    v39[1] = "md::ls::IsOpaque]";
    v39[2] = 16;
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
    *v24 = 0x7087983DEF28DBFELL;
    v24[1] = "md::ls::IsOpaque]";
    v24[2] = 16;
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
    *v49 = 0xB160D04D0F4A35A4;
    v49[1] = "md::ls::PipelineState]";
    v49[2] = 21;
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
    *v34 = 0xB160D04D0F4A35A4;
    v34[1] = "md::ls::PipelineState]";
    v34[2] = 21;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0x73F0259EC1934FB1;
    v44[1] = "md::ls::IsTransparent]";
    v44[2] = 21;
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
  *v59 = 0x73F0259EC1934FB1;
  v59[1] = "md::ls::IsTransparent]";
  v59[2] = 21;
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

void sub_1B27A4AF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateColorRampGradientResources>(md::ita::UpdateColorRampGradientResources &&)::{lambda(void)#1},std::allocator<md::ita::UpdateColorRampGradientResources &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateColorRampGradientResources>(md::ita::UpdateColorRampGradientResources &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0xE103B5C60804137ELL;
    v4[1] = "md::ls::ColorRampDataHandle]";
    v4[2] = 27;
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
  *v19 = 0xE103B5C60804137ELL;
  v19[1] = "md::ls::ColorRampDataHandle]";
  v19[2] = 27;
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

void sub_1B27A4D54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateStyleColorConstantDataHandle>(md::ita::UpdateStyleColorConstantDataHandle &&)::{lambda(void)#1},std::allocator<md::ita::UpdateStyleColorConstantDataHandle &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateStyleColorConstantDataHandle>(md::ita::UpdateStyleColorConstantDataHandle &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0xA3F884E4E2541296;
    v4[1] = "md::ls::ColorDataHandle]";
    v4[2] = 23;
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
  *v19 = 0xA3F884E4E2541296;
  v19[1] = "md::ls::ColorDataHandle]";
  v19[2] = 23;
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

void sub_1B27A4FB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::TransferPipelines>(md::ita::TransferPipelines &&)::{lambda(void)#1},std::allocator<md::ita::TransferPipelines &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::TransferPipelines>(md::ita::TransferPipelines &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xBBB17A4464CB2E03;
    v19[1] = "md::ls::PipelineSetupToApply]";
    v19[2] = 28;
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
    *v4 = 0xBBB17A4464CB2E03;
    v4[1] = "md::ls::PipelineSetupToApply]";
    v4[2] = 28;
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
    *v29 = 0xB3837544666C5A60;
    v29[1] = "md::ls::DataIDSetToUse]";
    v29[2] = 22;
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
    *v14 = 0xB3837544666C5A60;
    v14[1] = "md::ls::DataIDSetToUse]";
    v14[2] = 22;
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
    *v39 = 0xB160D04D0F4A35A4;
    v39[1] = "md::ls::PipelineState]";
    v39[2] = 21;
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
    *v24 = 0xB160D04D0F4A35A4;
    v24[1] = "md::ls::PipelineState]";
    v24[2] = 21;
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
    *v49 = 0x3505F398AD5185B4;
    v49[1] = "md::ls::PendingRenderItemSetup]";
    v49[2] = 30;
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
    *v34 = 0x3505F398AD5185B4;
    v34[1] = "md::ls::PendingRenderItemSetup]";
    v34[2] = 30;
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
    *v59 = 0x52AC71251090DBDELL;
    v59[1] = "md::ls::RenderState]";
    v59[2] = 19;
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
    *v44 = 0x52AC71251090DBDELL;
    v44[1] = "md::ls::RenderState]";
    v44[2] = 19;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 < v63)
  {
    *v54 = 0xD68EA0DE832DEC03;
    v54[1] = "md::ls::RenderItemID]";
    v54[2] = 20;
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
  *v69 = 0xD68EA0DE832DEC03;
  v69[1] = "md::ls::RenderItemID]";
  v69[2] = 20;
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

void sub_1B27A56A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssembleRenderItems>(md::ita::AssembleRenderItems &&)::{lambda(void)#1},std::allocator<md::ita::AssembleRenderItems &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssembleRenderItems>(md::ita::AssembleRenderItems &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v29 = 0xE53EF176130D7769;
    v29[1] = "md::ls::InstanceCount]";
    v29[2] = 21;
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
    *v14 = 0xE53EF176130D7769;
    v14[1] = "md::ls::InstanceCount]";
    v14[2] = 21;
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
    *v39 = 0x9EC66CE0B60A2DFFLL;
    v39[1] = "md::ls::StencilRefValueToUse]";
    v39[2] = 28;
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
    *v24 = 0x9EC66CE0B60A2DFFLL;
    v24[1] = "md::ls::StencilRefValueToUse]";
    v24[2] = 28;
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
    *v49 = 0x71CBA64B1A9CA230;
    v49[1] = "md::ls::IndexRange]";
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
    *v34 = 0x71CBA64B1A9CA230;
    v34[1] = "md::ls::IndexRange]";
    v34[2] = 18;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0xCD844FF303308290;
    v44[1] = "md::ls::HasMeshHandle]";
    v44[2] = 21;
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
  *v59 = 0xCD844FF303308290;
  v59[1] = "md::ls::HasMeshHandle]";
  v59[2] = 21;
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

void sub_1B27A5CAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssembleRenderItems>(md::ita::AssembleRenderItems &&)::{lambda(void)#2},std::allocator<md::ita::AssembleRenderItems &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssembleRenderItems>(md::ita::AssembleRenderItems &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xD68EA0DE832DEC03;
    v10[1] = "md::ls::RenderItemID]";
    v10[2] = 20;
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
    *v2 = 0xD68EA0DE832DEC03;
    v2[1] = "md::ls::RenderItemID]";
    v2[2] = 20;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A5E10(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::MarkPipelineDataRequirements>(md::ita::MarkPipelineDataRequirements &&)::{lambda(void)#1},std::allocator<md::ita::MarkPipelineDataRequirements &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::MarkPipelineDataRequirements>(md::ita::MarkPipelineDataRequirements &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x9BA1F27C43D018BELL;
    v19[1] = "md::ls::NeedsFunctionConstantsUpdate]";
    v19[2] = 36;
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
    *v4 = 0x9BA1F27C43D018BELL;
    v4[1] = "md::ls::NeedsFunctionConstantsUpdate]";
    v4[2] = 36;
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
    *v29 = 0xB3837544666C5A60;
    v29[1] = "md::ls::DataIDSetToUse]";
    v29[2] = 22;
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
    *v14 = 0xB3837544666C5A60;
    v14[1] = "md::ls::DataIDSetToUse]";
    v14[2] = 22;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0xE54E641F7C1F9B89;
    v24[1] = "md::ls::RequiredPipelinePoolID]";
    v24[2] = 30;
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
  *v39 = 0xE54E641F7C1F9B89;
  v39[1] = "md::ls::RequiredPipelinePoolID]";
  v39[2] = 30;
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

void sub_1B27A6240(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::PipelineSetup>>(void **a1)
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
    *v10 = 0x9C4E7BCF9B8D6334;
    v10[1] = "md::ls::PipelineSetup]";
    v10[2] = 21;
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
    *v2 = 0x9C4E7BCF9B8D6334;
    v2[1] = "md::ls::PipelineSetup]";
    v2[2] = 21;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A63A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DetermineIfShouldRender>(md::ita::DetermineIfShouldRender &&)::{lambda(void)#1},std::allocator<md::ita::DetermineIfShouldRender &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DetermineIfShouldRender>(md::ita::DetermineIfShouldRender &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0xFA77EBF8E4CA45B8;
    *(v9 + 8) = "md::ls::VisibilityGroupTest]";
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
    *v2 = 0xFA77EBF8E4CA45B8;
    v2[1] = "md::ls::VisibilityGroupTest]";
    v2[2] = 27;
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
    *v19 = 0x22E5462B4C348FD9;
    v19[1] = "md::ls::ShouldSkipRender]";
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
    *v4 = 0x22E5462B4C348FD9;
    v4[1] = "md::ls::ShouldSkipRender]";
    v4[2] = 24;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x171C8753A53C145FLL;
    v14[1] = "md::ls::DataForCommandBuffer]";
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
  *v29 = 0x171C8753A53C145FLL;
  v29[1] = "md::ls::DataForCommandBuffer]";
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

void sub_1B27A66E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleConstantData>(md::ita::AssignStyleConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleConstantData>(md::ita::AssignStyleConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x9C1597C84433D2CALL;
    v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>]";
    v19[2] = 81;
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
    *v4 = 0x9C1597C84433D2CALL;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>]";
    v4[2] = 81;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x1BB343378E1EE5BLL;
    v14[1] = "md::ls::StyleDataKeyHandle]";
    v14[2] = 26;
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
  *v29 = 0x1BB343378E1EE5BLL;
  v29[1] = "md::ls::StyleDataKeyHandle]";
  v29[2] = 26;
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

void sub_1B27A6A2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignColorCorrectionFactor>(md::ita::AssignColorCorrectionFactor &&)::{lambda(void)#1},std::allocator<md::ita::AssignColorCorrectionFactor &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignColorCorrectionFactor>(md::ita::AssignColorCorrectionFactor &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xFA89E73840C3EC51;
    v19[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v19[2] = 36;
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
    *v4 = 0xFA89E73840C3EC51;
    v4[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v4[2] = 36;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x31572B1B4D58BE2BLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>]";
    v14[2] = 97;
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
  *v29 = 0x31572B1B4D58BE2BLL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>]";
  v29[2] = 97;
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

void sub_1B27A6D70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightSpecularConfiguration>(md::ita::AssignLightSpecularConfiguration &&)::{lambda(void)#1},std::allocator<md::ita::AssignLightSpecularConfiguration &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightSpecularConfiguration>(md::ita::AssignLightSpecularConfiguration &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
      goto LABEL_28;
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

  v13 = 0;
  a1[1] = v4;
  v14 = 0xCBF29CE484222325;
  do
  {
    v14 = 0x100000001B3 * (v14 ^ aStdStringViewG_681[v13++ + 38]);
  }

  while (v13 != 103);
  v15 = a1[2];
  if (v4 < v15)
  {
    *v4 = v14;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>]";
    v4[2] = 103;
    v16 = (v4 + 3);
    goto LABEL_27;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_28:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a1) >> 3);
  v19 = 2 * v18;
  if (2 * v18 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  if (v18 >= 0x555555555555555)
  {
    v20 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v20);
  }

  v21 = 24 * v17;
  *v21 = v14;
  *(v21 + 8) = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>]";
  *(v21 + 16) = 103;
  v16 = 24 * v17 + 24;
  v22 = a1[1] - *a1;
  v23 = v21 - v22;
  memcpy((v21 - v22), *a1, v22);
  v24 = *a1;
  *a1 = v23;
  a1[1] = v16;
  a1[2] = 0;
  if (v24)
  {
    operator delete(v24);
  }

LABEL_27:
  a1[1] = v16;
}

void sub_1B27A6FF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignPositionScaleInfo>(md::ita::AssignPositionScaleInfo &&)::{lambda(void)#1},std::allocator<md::ita::AssignPositionScaleInfo &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignPositionScaleInfo>(md::ita::AssignPositionScaleInfo &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x6C7EE74910D42096;
    v19[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v19[2] = 43;
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
    *v4 = 0x6C7EE74910D42096;
    v4[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v4[2] = 43;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x9E3F3811EAB07CCALL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>]";
    v14[2] = 90;
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
  *v29 = 0x9E3F3811EAB07CCALL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>]";
  v29[2] = 90;
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

void sub_1B27A7334(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileViewData>(md::ita::AssignTileViewData &&)::{lambda(void)#1},std::allocator<md::ita::AssignTileViewData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileViewData>(md::ita::AssignTileViewData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xCFE242268B958ADALL;
    v19[1] = "md::ls::ViewConstantDataHandle]";
    v19[2] = 30;
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
    *v4 = 0xCFE242268B958ADALL;
    v4[1] = "md::ls::ViewConstantDataHandle]";
    v4[2] = 30;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x90CDA7E17AF1623ELL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>]";
    v14[2] = 77;
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
  *v29 = 0x90CDA7E17AF1623ELL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>]";
  v29[2] = 77;
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

void sub_1B27A7678(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleColorData>(md::ita::AssignStyleColorData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleColorData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleColorData>(md::ita::AssignStyleColorData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x7E6F38B7040F8E0FLL;
    v19[1] = "md::ls::StyleColorConstantDataHandle]";
    v19[2] = 36;
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
    *v4 = 0x7E6F38B7040F8E0FLL;
    v4[1] = "md::ls::StyleColorConstantDataHandle]";
    v4[2] = 36;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xF10E3A2DC308C279;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>]";
    v14[2] = 86;
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
  *v29 = 0xF10E3A2DC308C279;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>]";
  v29[2] = 86;
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

void sub_1B27A79BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRasterOverlayData>(md::ita::AssignRasterOverlayData &&)::{lambda(void)#1},std::allocator<md::ita::AssignRasterOverlayData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRasterOverlayData>(md::ita::AssignRasterOverlayData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xDC66BF6D06F6D0BALL;
    v19[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v19[2] = 39;
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
    *v4 = 0xDC66BF6D06F6D0BALL;
    v4[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v4[2] = 39;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xDC269C102C25EFECLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>]";
    v14[2] = 89;
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
  *v29 = 0xDC269C102C25EFECLL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>]";
  v29[2] = 89;
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

void sub_1B27A7D00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignSRGBBlendStyleData>(md::ita::AssignSRGBBlendStyleData &&)::{lambda(void)#1},std::allocator<md::ita::AssignSRGBBlendStyleData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignSRGBBlendStyleData>(md::ita::AssignSRGBBlendStyleData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xDF0018B9242ADFDBLL;
    v19[1] = "md::ls::BlendRasterConstantDataHandle]";
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
    *v4 = 0xDF0018B9242ADFDBLL;
    v4[1] = "md::ls::BlendRasterConstantDataHandle]";
    v4[2] = 37;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xF94A4E2652CF266ELL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>]";
    v14[2] = 91;
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
  *v29 = 0xF94A4E2652CF266ELL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>]";
  v29[2] = 91;
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

void sub_1B27A8044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileElevatedStrokeData>(md::ita::AssignTileElevatedStrokeData &&)::{lambda(void)#1},std::allocator<md::ita::AssignTileElevatedStrokeData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileElevatedStrokeData>(md::ita::AssignTileElevatedStrokeData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xB3E1F50BFD41E071;
    v19[1] = "md::ls::ElevatedStrokeConstantDataHandle]";
    v19[2] = 40;
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
    *v4 = 0xB3E1F50BFD41E071;
    v4[1] = "md::ls::ElevatedStrokeConstantDataHandle]";
    v4[2] = 40;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xDC9FD09A63403ED3;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>]";
    v14[2] = 90;
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
  *v29 = 0xDC9FD09A63403ED3;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>]";
  v29[2] = 90;
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

void sub_1B27A8388(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleTransitionToFlatData>(md::ita::AssignStyleTransitionToFlatData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleTransitionToFlatData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleTransitionToFlatData>(md::ita::AssignStyleTransitionToFlatData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0x4ED66455113F81E3;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>]";
    v4[2] = 97;
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
  *v19 = 0x4ED66455113F81E3;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>]";
  v19[2] = 97;
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

void sub_1B27A85E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleSunMatrixData>(md::ita::AssignStyleSunMatrixData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleSunMatrixData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleSunMatrixData>(md::ita::AssignStyleSunMatrixData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0x7EE4E2CB5D22239;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>]";
    v4[2] = 90;
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
  *v19 = 0x7EE4E2CB5D22239;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>]";
  v19[2] = 90;
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

void sub_1B27A8848(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightingConfigurationVertexData>(md::ita::AssignLightingConfigurationVertexData &&)::{lambda(void)#1},std::allocator<md::ita::AssignLightingConfigurationVertexData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightingConfigurationVertexData>(md::ita::AssignLightingConfigurationVertexData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0x4A991B37E344929BLL;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>]";
    v4[2] = 101;
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
  *v19 = 0x4A991B37E344929BLL;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>]";
  v19[2] = 101;
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

void sub_1B27A8AA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightingDebugOptionsConstantData>(md::ita::AssignLightingDebugOptionsConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignLightingDebugOptionsConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLightingDebugOptionsConstantData>(md::ita::AssignLightingDebugOptionsConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xE3549AC6494FE40ELL;
    v10[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>]";
    v10[2] = 96;
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
    *v2 = 0xE3549AC6494FE40ELL;
    v2[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>]";
    v2[2] = 96;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27A8C0C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignClippingConstantData>(md::ita::AssignClippingConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignClippingConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignClippingConstantData>(md::ita::AssignClippingConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x9292F9031FE6DB5;
    v19[1] = "md::ls::ClippingConstantDataHandle]";
    v19[2] = 34;
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
    *v4 = 0x9292F9031FE6DB5;
    v4[1] = "md::ls::ClippingConstantDataHandle]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x365426C0E4B6F01DLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>]";
    v14[2] = 81;
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
  *v29 = 0x365426C0E4B6F01DLL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>]";
  v29[2] = 81;
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

void sub_1B27A8F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleCameraLightingConstantData>(md::ita::AssignStyleCameraLightingConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleCameraLightingConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleCameraLightingConstantData>(md::ita::AssignStyleCameraLightingConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x96F87A2692FE4013;
    v19[1] = "md::ls::StyleCameraConstantDataHandle]";
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
    *v4 = 0x96F87A2692FE4013;
    v4[1] = "md::ls::StyleCameraConstantDataHandle]";
    v4[2] = 37;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x8AED3586A1D729D9;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>]";
    v14[2] = 95;
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
  *v29 = 0x8AED3586A1D729D9;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>]";
  v29[2] = 95;
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

void sub_1B27A929C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileTransformConstantData>(md::ita::AssignTileTransformConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignTileTransformConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTileTransformConstantData>(md::ita::AssignTileTransformConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x74DC502726E97929;
    v19[1] = "md::ls::TransformConstantDataHandle]";
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
    *v4 = 0x74DC502726E97929;
    v4[1] = "md::ls::TransformConstantDataHandle]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCDFBB34DE0FFB731;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>]";
    v14[2] = 82;
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
  *v29 = 0xCDFBB34DE0FFB731;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>]";
  v29[2] = 82;
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

void sub_1B27A95E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignPlanarParametersConstantData>(md::ita::AssignPlanarParametersConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignPlanarParametersConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignPlanarParametersConstantData>(md::ita::AssignPlanarParametersConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD02B5FD100F36AA2;
    v19[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v19[2] = 38;
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
    *v4 = 0xD02B5FD100F36AA2;
    v4[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v4[2] = 38;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xA14CF6DCDEA3F5F5;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>]";
    v14[2] = 92;
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
  *v29 = 0xA14CF6DCDEA3F5F5;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>]";
  v29[2] = 92;
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

void sub_1B27A9924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGroundAtmosphereConstantData>(md::ita::AssignGroundAtmosphereConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignGroundAtmosphereConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGroundAtmosphereConstantData>(md::ita::AssignGroundAtmosphereConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0x2E4DB0E7E1795086;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>]";
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
  *v19 = 0x2E4DB0E7E1795086;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>]";
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

void sub_1B27A9B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleBlendConstantData>(md::ita::AssignStyleBlendConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleBlendConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleBlendConstantData>(md::ita::AssignStyleBlendConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0x24EEF26FD15B5B85;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>]";
    v4[2] = 86;
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
  *v19 = 0x24EEF26FD15B5B85;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>]";
  v19[2] = 86;
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

void sub_1B27A9DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleSSAOConstantData>(md::ita::AssignStyleSSAOConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleSSAOConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleSSAOConstantData>(md::ita::AssignStyleSSAOConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x3AC919C8A5243F9;
    v19[1] = "md::ls::StyleSSAODataKeyHandle]";
    v19[2] = 30;
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
    *v4 = 0x3AC919C8A5243F9;
    v4[1] = "md::ls::StyleSSAODataKeyHandle]";
    v4[2] = 30;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCDC9872DC17B96C4;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>]";
    v14[2] = 85;
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
  *v29 = 0xCDC9872DC17B96C4;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>]";
  v29[2] = 85;
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

void sub_1B27AA120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignShadowConstantData>(md::ita::AssignShadowConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignShadowConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignShadowConstantData>(md::ita::AssignShadowConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xEAA0B82FC49F7277;
    v19[1] = "md::ls::ShadowConstantDataHandle]";
    v19[2] = 32;
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
    *v4 = 0xEAA0B82FC49F7277;
    v4[1] = "md::ls::ShadowConstantDataHandle]";
    v4[2] = 32;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x58EA03DA808C73B1;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
    v14[2] = 82;
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
  *v29 = 0x58EA03DA808C73B1;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
  v29[2] = 82;
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

void sub_1B27AA46C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignDepthPrePassConstantData>(md::ita::AssignDepthPrePassConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignDepthPrePassConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignDepthPrePassConstantData>(md::ita::AssignDepthPrePassConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x70E01531993BB945;
    v19[1] = "md::ls::PrepassShadowConstantDataHandle]";
    v19[2] = 39;
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
    *v4 = 0x70E01531993BB945;
    v4[1] = "md::ls::PrepassShadowConstantDataHandle]";
    v4[2] = 39;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x58EA03DA808C73B1;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
    v14[2] = 82;
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
  *v29 = 0x58EA03DA808C73B1;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
  v29[2] = 82;
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

void sub_1B27AA7B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleShadowConstantData>(md::ita::AssignStyleShadowConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleShadowConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleShadowConstantData>(md::ita::AssignStyleShadowConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0x5E7EAD35976A86ALL;
    v4[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>]";
    v4[2] = 87;
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
  *v19 = 0x5E7EAD35976A86ALL;
  v19[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>]";
  v19[2] = 87;
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

void sub_1B27AAA10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLinearDepthConstantData>(md::ita::AssignLinearDepthConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignLinearDepthConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLinearDepthConstantData>(md::ita::AssignLinearDepthConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x1EBB3E0519E8FF9DLL;
    v19[1] = "md::ls::PrepassConstantDataHandle]";
    v19[2] = 33;
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
    *v4 = 0x1EBB3E0519E8FF9DLL;
    v4[1] = "md::ls::PrepassConstantDataHandle]";
    v4[2] = 33;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x6CB2880B0A690EDBLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>]";
    v14[2] = 84;
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
  *v29 = 0x6CB2880B0A690EDBLL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>]";
  v29[2] = 84;
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

void sub_1B27AAD54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLandCoverSettingsConstantData>(md::ita::AssignLandCoverSettingsConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignLandCoverSettingsConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignLandCoverSettingsConstantData>(md::ita::AssignLandCoverSettingsConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xDC98991DB7473274;
    v19[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v19[2] = 43;
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
    *v4 = 0xDC98991DB7473274;
    v4[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v4[2] = 43;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x6635AEA306F3CF3ELL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>]";
    v14[2] = 93;
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
  *v29 = 0x6635AEA306F3CF3ELL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>]";
  v29[2] = 93;
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

void sub_1B27AB098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleEmissiveColorConstantData>(md::ita::AssignStyleEmissiveColorConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleEmissiveColorConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleEmissiveColorConstantData>(md::ita::AssignStyleEmissiveColorConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xA50DD2A5BD75DBD6;
    v19[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v19[2] = 34;
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
    *v4 = 0xA50DD2A5BD75DBD6;
    v4[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xB22A7749D4CDB850;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>]";
    v14[2] = 94;
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
  *v29 = 0xB22A7749D4CDB850;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>]";
  v29[2] = 94;
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

void sub_1B27AB3D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleRouteLineMaskConstantData>(md::ita::AssignStyleRouteLineMaskConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleRouteLineMaskConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleRouteLineMaskConstantData>(md::ita::AssignStyleRouteLineMaskConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x8E45E81B6E5A8E0ELL;
    v19[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v19[2] = 39;
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
    *v4 = 0x8E45E81B6E5A8E0ELL;
    v4[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v4[2] = 39;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x12E52FADC2088C61;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>]";
    v14[2] = 94;
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
  *v29 = 0x12E52FADC2088C61;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>]";
  v29[2] = 94;
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

void sub_1B27AB718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleGroundOcclusionConstantData>(md::ita::AssignStyleGroundOcclusionConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleGroundOcclusionConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleGroundOcclusionConstantData>(md::ita::AssignStyleGroundOcclusionConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD5AD9B8C3FE62EE8;
    v19[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v19[2] = 46;
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
    *v4 = 0xD5AD9B8C3FE62EE8;
    v4[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v4[2] = 46;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xCD7B3DB2C2D258CALL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>]";
    v14[2] = 96;
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
  *v29 = 0xCD7B3DB2C2D258CALL;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>]";
  v29[2] = 96;
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

void sub_1B27ABA5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignMaterialStyleConstantData>(md::ita::AssignMaterialStyleConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignMaterialStyleConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignMaterialStyleConstantData>(md::ita::AssignMaterialStyleConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x8DB28088BB3C2FE3;
    v19[1] = "md::ls::MaterialStyleConstantDataHandle]";
    v19[2] = 39;
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
    *v4 = 0x8DB28088BB3C2FE3;
    v4[1] = "md::ls::MaterialStyleConstantDataHandle]";
    v4[2] = 39;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x4B8054294B8B9B55;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>]";
    v14[2] = 89;
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
  *v29 = 0x4B8054294B8B9B55;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>]";
  v29[2] = 89;
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

void sub_1B27ABDA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAmbientTextureIndexAll>(md::ita::AssignAmbientTextureIndexAll &&)::{lambda(void)#1},std::allocator<md::ita::AssignAmbientTextureIndexAll &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAmbientTextureIndexAll>(md::ita::AssignAmbientTextureIndexAll &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0xAEACE637C9751345;
    v10[1] = "md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>]";
    v10[2] = 56;
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
    *v2 = 0xAEACE637C9751345;
    v2[1] = "md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>]";
    v2[2] = 56;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27ABF14(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAmbientTextureIndexFiltered>(md::ita::AssignAmbientTextureIndexFiltered &&)::{lambda(void)#1},std::allocator<md::ita::AssignAmbientTextureIndexFiltered &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAmbientTextureIndexFiltered>(md::ita::AssignAmbientTextureIndexFiltered &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0xAEACE637C9751345;
    v4[1] = "md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>]";
    v4[2] = 56;
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
  *v19 = 0xAEACE637C9751345;
  v19[1] = "md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>]";
  v19[2] = 56;
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

void sub_1B27AC17C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignShadowTextureIndex>(md::ita::AssignShadowTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignShadowTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignShadowTextureIndex>(md::ita::AssignShadowTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
  if (v4 < v13)
  {
    *v4 = 0x4B2419C7BBAFEE01;
    v4[1] = "md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>]";
    v4[2] = 55;
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
  *v19 = 0x4B2419C7BBAFEE01;
  v19[1] = "md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>]";
  v19[2] = 55;
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