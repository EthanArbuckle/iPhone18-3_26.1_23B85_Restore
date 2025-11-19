void sub_1B27AC3DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTexTextureIndex>(md::ita::AssignTexTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignTexTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTexTextureIndex>(md::ita::AssignTexTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x1D932F2BF291491;
    v19[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v19[2] = 49;
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
    *v4 = 0x1D932F2BF291491;
    v4[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v4[2] = 49;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xC5F6E84B67A27720;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::TexTexture>]";
    v14[2] = 52;
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
  *v29 = 0xC5F6E84B67A27720;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::TexTexture>]";
  v29[2] = 52;
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

void sub_1B27AC720(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignOcclusionTextureIndex>(md::ita::AssignOcclusionTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignOcclusionTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignOcclusionTextureIndex>(md::ita::AssignOcclusionTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0x561A1640388A2320;
    v4[1] = "md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>]";
    v4[2] = 58;
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
  *v19 = 0x561A1640388A2320;
  v19[1] = "md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>]";
  v19[2] = 58;
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

void sub_1B27AC980(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRouteMaskTextureIndex>(md::ita::AssignRouteMaskTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignRouteMaskTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignRouteMaskTextureIndex>(md::ita::AssignRouteMaskTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0x3B44468EF6722590;
    v4[1] = "md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>]";
    v4[2] = 58;
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
  *v19 = 0x3B44468EF6722590;
  v19[1] = "md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>]";
  v19[2] = 58;
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

void sub_1B27ACBE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignEmissiveTextureIndex>(md::ita::AssignEmissiveTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignEmissiveTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignEmissiveTextureIndex>(md::ita::AssignEmissiveTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xCE03281732FA0019;
    v19[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v19[2] = 54;
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
    *v4 = 0xCE03281732FA0019;
    v4[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v4[2] = 54;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x19CB8E83B6F501F6;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>]";
    v14[2] = 57;
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
  *v29 = 0x19CB8E83B6F501F6;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>]";
  v29[2] = 57;
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

void sub_1B27ACF24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignOverlayTextureIndex>(md::ita::AssignOverlayTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignOverlayTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignOverlayTextureIndex>(md::ita::AssignOverlayTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD2D99CA7D5B116C8;
    v19[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v19[2] = 53;
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
    *v4 = 0xD2D99CA7D5B116C8;
    v4[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v4[2] = 53;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x954EA3109050D2A9;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>]";
    v14[2] = 56;
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
  *v29 = 0x954EA3109050D2A9;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>]";
  v29[2] = 56;
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

void sub_1B27AD268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleIndexTextureIndex>(md::ita::AssignStyleIndexTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleIndexTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleIndexTextureIndex>(md::ita::AssignStyleIndexTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD5B48B62BD07EF80;
    v19[1] = "md::ls::HasMaterialRasterRenderItem]";
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
    *v4 = 0xD5B48B62BD07EF80;
    v4[1] = "md::ls::HasMaterialRasterRenderItem]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xC69E45AA7591636ELL;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>]";
    v14[2] = 59;
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
  *v29 = 0xC69E45AA7591636ELL;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>]";
  v29[2] = 59;
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

void sub_1B27AD5AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleTextureIndex>(md::ita::AssignStyleTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignStyleTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignStyleTextureIndex>(md::ita::AssignStyleTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD5B48B62BD07EF80;
    v19[1] = "md::ls::HasMaterialRasterRenderItem]";
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
    *v4 = 0xD5B48B62BD07EF80;
    v4[1] = "md::ls::HasMaterialRasterRenderItem]";
    v4[2] = 35;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x57EF686AEB2B6CD0;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>]";
    v14[2] = 54;
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
  *v29 = 0x57EF686AEB2B6CD0;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>]";
  v29[2] = 54;
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

void sub_1B27AD8F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAridityTextureIndex>(md::ita::AssignAridityTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignAridityTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignAridityTextureIndex>(md::ita::AssignAridityTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x985FB09D9DF9959FLL;
    v19[1] = "md::ls::HasStyleAttributeRasterSet]";
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
    *v4 = 0x985FB09D9DF9959FLL;
    v4[1] = "md::ls::HasStyleAttributeRasterSet]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x563FF6883E9740F7;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>]";
    v14[2] = 56;
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
  *v29 = 0x563FF6883E9740F7;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>]";
  v29[2] = 56;
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

void sub_1B27ADC34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTemperatureTextureIndex>(md::ita::AssignTemperatureTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignTemperatureTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignTemperatureTextureIndex>(md::ita::AssignTemperatureTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x985FB09D9DF9959FLL;
    v19[1] = "md::ls::HasStyleAttributeRasterSet]";
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
    *v4 = 0x985FB09D9DF9959FLL;
    v4[1] = "md::ls::HasStyleAttributeRasterSet]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x9FD60998017D8C7FLL;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>]";
    v14[2] = 60;
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
  *v29 = 0x9FD60998017D8C7FLL;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>]";
  v29[2] = 60;
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

void sub_1B27ADF78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradient2TextureIndex>(md::ita::AssignGradient2TextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignGradient2TextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignGradient2TextureIndex>(md::ita::AssignGradient2TextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xC55E4C6C5DFCA74ALL;
    v19[1] = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
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
    *v4 = 0xC55E4C6C5DFCA74ALL;
    v4[1] = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
    v4[2] = 55;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x662527E578BE28E3;
    v14[1] = "md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>]";
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
  *v29 = 0x662527E578BE28E3;
  v29[1] = "md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>]";
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

void sub_1B27AE2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignDiffuseTextureIndex>(md::ita::AssignDiffuseTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignDiffuseTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignDiffuseTextureIndex>(md::ita::AssignDiffuseTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x3BD94B5787965DA7;
    v19[1] = "md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>]";
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
    *v4 = 0x3BD94B5787965DA7;
    v4[1] = "md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>]";
    v4[2] = 56;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xDD9825BCFA7911B2;
    v14[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v14[2] = 53;
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
  *v29 = 0xDD9825BCFA7911B2;
  v29[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
  v29[2] = 53;
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

void sub_1B27AE600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignInstanceTransformDeviceData>(md::ita::AssignInstanceTransformDeviceData &&)::{lambda(void)#1},std::allocator<md::ita::AssignInstanceTransformDeviceData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignInstanceTransformDeviceData>(md::ita::AssignInstanceTransformDeviceData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xAF179EFD8A4C83D4;
    v19[1] = "md::ls::InstanceTransformHandle]";
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
    *v4 = 0xAF179EFD8A4C83D4;
    v4[1] = "md::ls::InstanceTransformHandle]";
    v4[2] = 31;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xF2AA04C63467A586;
    v14[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>]";
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
  *v29 = 0xF2AA04C63467A586;
  v29[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>]";
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

void sub_1B27AE944(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignElevationsDeviceData>(md::ita::AssignElevationsDeviceData &&)::{lambda(void)#1},std::allocator<md::ita::AssignElevationsDeviceData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignElevationsDeviceData>(md::ita::AssignElevationsDeviceData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xD443D3DCBB78491ALL;
    v19[1] = "md::ls::ElevationHandle]";
    v19[2] = 23;
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
    *v4 = 0xD443D3DCBB78491ALL;
    v4[1] = "md::ls::ElevationHandle]";
    v4[2] = 23;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x5FEC906E580C2ACDLL;
    v14[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>]";
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
  *v29 = 0x5FEC906E580C2ACDLL;
  v29[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>]";
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

void sub_1B27AEC88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignNormalsDeviceData>(md::ita::AssignNormalsDeviceData &&)::{lambda(void)#1},std::allocator<md::ita::AssignNormalsDeviceData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignNormalsDeviceData>(md::ita::AssignNormalsDeviceData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x3218EFD67197A145;
    v19[1] = "md::ls::NormalsHandle]";
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
    *v4 = 0x3218EFD67197A145;
    v4[1] = "md::ls::NormalsHandle]";
    v4[2] = 21;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xE913BA7B7D110BFBLL;
    v14[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>]";
    v14[2] = 79;
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
  *v29 = 0xE913BA7B7D110BFBLL;
  v29[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>]";
  v29[2] = 79;
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

void sub_1B27AEFCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignUVsDeviceData>(md::ita::AssignUVsDeviceData &&)::{lambda(void)#1},std::allocator<md::ita::AssignUVsDeviceData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignUVsDeviceData>(md::ita::AssignUVsDeviceData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xCBB77B1CBD05D7C5;
    v19[1] = "md::ls::UVsHandle]";
    v19[2] = 17;
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
    *v4 = 0xCBB77B1CBD05D7C5;
    v4[1] = "md::ls::UVsHandle]";
    v4[2] = 17;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0xD68EAE6708C7203BLL;
    v14[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>]";
    v14[2] = 75;
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
  *v29 = 0xD68EAE6708C7203BLL;
  v29[1] = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>]";
  v29[2] = 75;
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

void sub_1B27AF310(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverTransformConstantData>(md::ita::AssignFlyoverTransformConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverTransformConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverTransformConstantData>(md::ita::AssignFlyoverTransformConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x7D9191A7B57B7B35;
    v19[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v19[2] = 48;
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
    *v4 = 0x7D9191A7B57B7B35;
    v4[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v4[2] = 48;
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
    *v29 = 0x48075849379D7E1DLL;
    v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>]";
    v29[2] = 91;
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
    *v14 = 0x48075849379D7E1DLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>]";
    v14[2] = 91;
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

void sub_1B27AF740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverClipConstantData>(md::ita::AssignFlyoverClipConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverClipConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverClipConstantData>(md::ita::AssignFlyoverClipConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x5E4DB6CB13CB5848;
    v19[1] = "md::ls::FlyoverClipConstantDataHandle]";
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
    *v4 = 0x5E4DB6CB13CB5848;
    v4[1] = "md::ls::FlyoverClipConstantDataHandle]";
    v4[2] = 37;
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
    *v29 = 0x3CCD86F46BBA1B2DLL;
    v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>]";
    v29[2] = 86;
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
    *v14 = 0x3CCD86F46BBA1B2DLL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>]";
    v14[2] = 86;
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

void sub_1B27AFB70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverSharedConstantData>(md::ita::AssignFlyoverSharedConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverSharedConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverSharedConstantData>(md::ita::AssignFlyoverSharedConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0xE57F1B6EAAE9263ALL;
    *(v9 + 8) = "md::ls::FlyoverSharedConstants]";
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
    *v2 = 0xE57F1B6EAAE9263ALL;
    v2[1] = "md::ls::FlyoverSharedConstants]";
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
    *v19 = 0x69465F3BE0BF85FBLL;
    v19[1] = "md::ls::FlyoverInstance]";
    v19[2] = 23;
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
    *v4 = 0x69465F3BE0BF85FBLL;
    v4[1] = "md::ls::FlyoverInstance]";
    v4[2] = 23;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 < v23)
  {
    *v14 = 0x5E5AF20C38ADA136;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>]";
    v14[2] = 88;
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
  *v29 = 0x5E5AF20C38ADA136;
  v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>]";
  v29[2] = 88;
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

void sub_1B27AFEB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverS2TransformConstantData>(md::ita::AssignFlyoverS2TransformConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverS2TransformConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverS2TransformConstantData>(md::ita::AssignFlyoverS2TransformConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x81BF69EEE736436;
    v19[1] = "md::ls::FlyoverCommonS2TransformHandle]";
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
    *v4 = 0x81BF69EEE736436;
    v4[1] = "md::ls::FlyoverCommonS2TransformHandle]";
    v4[2] = 38;
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
    *v29 = 0x69465F3BE0BF85FBLL;
    v29[1] = "md::ls::FlyoverInstance]";
    v29[2] = 23;
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
    *v14 = 0x69465F3BE0BF85FBLL;
    v14[1] = "md::ls::FlyoverInstance]";
    v14[2] = 23;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 < v33)
  {
    *v24 = 0x68B9076D41547F1ALL;
    v24[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>]";
    v24[2] = 93;
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
  *v39 = 0x68B9076D41547F1ALL;
  v39[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>]";
  v39[2] = 93;
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

void sub_1B27B02E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverTexcoordsConstantData>(md::ita::AssignFlyoverTexcoordsConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverTexcoordsConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverTexcoordsConstantData>(md::ita::AssignFlyoverTexcoordsConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0x5B12559DCF20DC9ALL;
    v19[1] = "md::ls::FlyoverCommonTexcoordsHandle]";
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
    *v4 = 0x5B12559DCF20DC9ALL;
    v4[1] = "md::ls::FlyoverCommonTexcoordsHandle]";
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
    *v29 = 0xCB8B71FD962316ALL;
    v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>]";
    v29[2] = 91;
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
    *v14 = 0xCB8B71FD962316ALL;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>]";
    v14[2] = 91;
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

void sub_1B27B0714(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverMaterialConstantData>(md::ita::AssignFlyoverMaterialConstantData &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverMaterialConstantData &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverMaterialConstantData>(md::ita::AssignFlyoverMaterialConstantData &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xB70B6DE024A5B9DALL;
    v19[1] = "md::ls::FlyoverCommonMaterialHandle]";
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
    *v4 = 0xB70B6DE024A5B9DALL;
    v4[1] = "md::ls::FlyoverCommonMaterialHandle]";
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
    *v29 = 0x8756C476CCEB09D6;
    v29[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>]";
    v29[2] = 90;
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
    *v14 = 0x8756C476CCEB09D6;
    v14[1] = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>]";
    v14[2] = 90;
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

void sub_1B27B0B44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverDiffuseTextureIndex>(md::ita::AssignFlyoverDiffuseTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverDiffuseTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverDiffuseTextureIndex>(md::ita::AssignFlyoverDiffuseTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xEC8E73EF48115BAELL;
    v19[1] = "md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>]";
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
    *v4 = 0xEC8E73EF48115BAELL;
    v4[1] = "md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>]";
    v4[2] = 56;
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
    *v29 = 0xBAA35DF429A7267FLL;
    v29[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v29[2] = 53;
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
    *v14 = 0xBAA35DF429A7267FLL;
    v14[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v14[2] = 53;
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

void sub_1B27B0F74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverAtmosphereTextureIndex>(md::ita::AssignFlyoverAtmosphereTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverAtmosphereTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverAtmosphereTextureIndex>(md::ita::AssignFlyoverAtmosphereTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v4 = 0xD2597E061104B596;
    v4[1] = "md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>]";
    v4[2] = 59;
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
  *v19 = 0xD2597E061104B596;
  v19[1] = "md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>]";
  v19[2] = 59;
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

void sub_1B27B11D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverNightTextureIndex>(md::ita::AssignFlyoverNightTextureIndex &&)::{lambda(void)#1},std::allocator<md::ita::AssignFlyoverNightTextureIndex &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::AssignFlyoverNightTextureIndex>(md::ita::AssignFlyoverNightTextureIndex &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v19 = 0xF9931FC5DA4F362;
    v19[1] = "md::ls::RequiresShaderTextureID<Flyover::NightTexture>]";
    v19[2] = 54;
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
    *v4 = 0xF9931FC5DA4F362;
    v4[1] = "md::ls::RequiresShaderTextureID<Flyover::NightTexture>]";
    v4[2] = 54;
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
    *v29 = 0xD49B968135FE1A73;
    v29[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v29[2] = 51;
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
    *v14 = 0xD49B968135FE1A73;
    v14[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v14[2] = 51;
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

void sub_1B27B1604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateProcessedStatusRenderables>(md::ita::UpdateProcessedStatusRenderables &&)::{lambda(void)#1},std::allocator<md::ita::UpdateProcessedStatusRenderables &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::UpdateProcessedStatusRenderables>(md::ita::UpdateProcessedStatusRenderables &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0xCAB567F400206020;
    *(v9 + 8) = "md::ls::FinishedProcessing]";
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
    *v2 = 0xCAB567F400206020;
    v2[1] = "md::ls::FinishedProcessing]";
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
    *v19 = 0x75DBD6381F1903FFLL;
    v19[1] = "md::ls::PendingProcessing]";
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
    *v4 = 0x75DBD6381F1903FFLL;
    v4[1] = "md::ls::PendingProcessing]";
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
    *v29 = 0x343B7A672BA2F664;
    v29[1] = "md::ls::FinishedProcessingShadow]";
    v29[2] = 32;
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
    *v14 = 0x343B7A672BA2F664;
    v14[1] = "md::ls::FinishedProcessingShadow]";
    v14[2] = 32;
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
    *v39 = 0xEC85A518158AB507;
    v39[1] = "md::ls::PendingProcessingShadow]";
    v39[2] = 31;
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
    *v24 = 0xEC85A518158AB507;
    v24[1] = "md::ls::PendingProcessingShadow]";
    v24[2] = 31;
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
    *v49 = 0x2B00F9EAE99A5837;
    v49[1] = "md::ls::FinishedProcessingDepthPrePass]";
    v49[2] = 38;
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
    *v34 = 0x2B00F9EAE99A5837;
    v34[1] = "md::ls::FinishedProcessingDepthPrePass]";
    v34[2] = 38;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0xB7D4B4C2109DE954;
    v44[1] = "md::ls::PendingProcessingDepthPrePass]";
    v44[2] = 37;
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
  *v59 = 0xB7D4B4C2109DE954;
  v59[1] = "md::ls::PendingProcessingDepthPrePass]";
  v59[2] = 37;
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

void sub_1B27B1C3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::function<ecs2::ModuleDescriptor ()(void)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<ecs2::ModuleDescriptor ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double gdc::Statistics::Statistics(gdc::Statistics *this)
{
  *this = &unk_1F2A609B0;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 26) = 1065353216;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 1065353216;
  *(this + 76) = 0;
  return result;
}

uint64_t ggl::StencilManager::StencilManager(uint64_t this)
{
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 28) = 1065353216;
  *(this + 32) = -1;
  *(this + 36) = 128;
  *(this + 2) = -1;
  *this = -255;
  return this;
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::Monitorable(uint64_t a1, _OWORD *a2)
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
    GEOConfigGetDouble();
    *(a1 + 16) = v4;
  }

  *(a1 + 24) = 0;
  operator new();
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::Monitorable(uint64_t a1, _OWORD *a2)
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
    *(a1 + 16) = GEOConfigGetUint64();
  }

  *(a1 + 24) = 0;
  operator new();
}

void geo::concurrent_queue_base<std::function<void ()(void)>,geo::BasicStoragePolicy<std::function<void ()(void)>>>::close(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  *a1 = 1;
  while (*(a1 + 160))
  {
    std::deque<std::function<void ()(void)>>::pop_front(a1 + 120);
  }

  std::condition_variable::notify_all((a1 + 72));

  std::mutex::unlock((a1 + 8));
}

double ecs2::FlowExecutor::FlowExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN3ggl12SamplerStateENS_9allocatorIS2_EEEC2B8nn200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2A5D628;
  ggl::RenderDataHolder::RenderDataHolder(a1 + 24);
  *(a1 + 24) = &unk_1F2A5D6B8;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a1 + 60) = v2;
  *(a1 + 76) = 0x100000001;
  *(a1 + 84) = 0;
  return a1;
}

uint64_t ggl::RenderDataHolder::RenderDataHolder(uint64_t this)
{
  *this = &unk_1F2A5D1D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t **std::__hash_table<std::__hash_value_type<md::FeatureFlag,BOOL>,std::__unordered_map_hasher<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::hash<md::FeatureFlag>,std::equal_to<md::FeatureFlag>,true>,std::__unordered_map_equal<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::equal_to<md::FeatureFlag>,std::hash<md::FeatureFlag>,true>,std::allocator<std::__hash_value_type<md::FeatureFlag,BOOL>>>::__emplace_unique_key_args<md::FeatureFlag,std::piecewise_construct_t const&,std::tuple<md::FeatureFlag&&>,std::tuple<>>(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

md::FeatureFlagProvider **std::unique_ptr<md::FeatureFlagProvider>::~unique_ptr[abi:nn200100](md::FeatureFlagProvider **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::FeatureFlagProvider::~FeatureFlagProvider(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void gdc::ServiceLocator::associate<md::RouteElevationSource,md::StandardRouteElevationSource>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (*v1 != 0xA89E774940B82160)
    {
      v1 += 5;
      if (v1 == v2)
      {
        return;
      }
    }

    if (v1 != v2)
    {
      v5[0] = 0xAB4154EC82453679;
      v5[1] = "md::RouteElevationSource]";
      v3 = v1[3];
      v4 = v1[4];
      v5[2] = 24;
      v5[3] = v3;
      v5[4] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      geo::linear_map<gdc::TypeInfo,std::shared_ptr<void>,std::equal_to<gdc::TypeInfo>,std::allocator<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>,std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>>::insert_or_assign(a1, v5);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }
  }
}

void sub_1B27B284C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:nn200100]<unsigned long long>(char *a1, char *a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  v7 = a2 - a1;
  if (v5 == 4)
  {
    if (v7 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, v7 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
    {
      if (!HIDWORD(a3))
      {
        return std::__itoa::__base_10_u32[abi:nn200100](a1, a3);
      }

      if (a3 >= 0x2540BE400)
      {
        a1 = std::__itoa::__base_10_u32[abi:nn200100](a1, a3 / 0x2540BE400);
        v4 %= 0x2540BE400uLL;
      }

      return std::__itoa::__append10[abi:nn200100]<unsigned long long>(a1, v4);
    }
  }

  else if (v5)
  {
    if (v5 == 3)
    {
      v14 = (86 * (66 - __clz(a3 | 1))) >> 8;
      if (v7 >= v14)
      {
        a2 = &a1[v14];
        if (a3 < 0x41)
        {
          v16 = a3;
          v15 = &a1[v14];
        }

        else
        {
          v15 = &a1[v14];
          do
          {
            v16 = v4 >> 6;
            *(v15 - 1) = std::__itoa::__base_8_lut[v4 & 0x3F];
            v15 -= 2;
            v4 = v16;
          }

          while (v16 > 0x40);
        }

        v26 = v15 - 1;
        do
        {
          *v26-- = a01234567[v16 & 7];
          v20 = v16 > 7;
          v16 >>= 3;
        }

        while (v20);
      }
    }

    else if (v5 == 7)
    {
      v11 = 67 - __clz(a3 | 1);
      if (v7 >= (v11 >> 2))
      {
        a2 = &a1[v11 >> 2];
        if (a3 < 0x101)
        {
          v13 = a3;
          v12 = &a1[v11 >> 2];
        }

        else
        {
          v12 = &a1[v11 >> 2];
          do
          {
            v13 = v4 >> 8;
            *(v12 - 1) = std::__itoa::__base_16_lut[v4];
            v12 -= 2;
            v4 = v13;
          }

          while (v13 > 0x100);
        }

        v28 = v12 - 1;
        do
        {
          *v28-- = a0123456789abcd_0[v13 & 0xF];
          v20 = v13 > 0xF;
          v13 >>= 4;
        }

        while (v20);
      }
    }

    else
    {
      if (a4 <= a3)
      {
        v22 = 0;
        v23 = a4 * a4;
        v24 = (v23 * v23);
        v25 = a3;
        while (1)
        {
          if (v25 < v23)
          {
            v21 = v22 | 2;
            goto LABEL_52;
          }

          if (v25 < v23 * a4)
          {
            v21 = v22 | 3;
            goto LABEL_52;
          }

          if (v25 < v24)
          {
            break;
          }

          v25 /= v24;
          v22 += 4;
          if (v25 < a4)
          {
            v21 = v22 | 1;
            goto LABEL_52;
          }
        }

        v21 = v22 + 4;
      }

      else
      {
        v21 = 1;
      }

LABEL_52:
      if (v7 >= v21)
      {
        a2 = &a1[v21];
        v29 = a2 - 1;
        do
        {
          *v29-- = a0123456789abcd[v4 % a4];
          v30 = v4 >= a4;
          v4 /= a4;
        }

        while (v30);
      }
    }
  }

  else
  {
    v17 = 64 - __clz(a3 | 1);
    if (v7 >= v17)
    {
      a2 = &a1[v17];
      if (a3 < 0x11)
      {
        v19 = a3;
        v18 = &a1[v17];
      }

      else
      {
        v18 = &a1[v17];
        do
        {
          v19 = v4 >> 4;
          *(v18 - 1) = std::__itoa::__base_2_lut[v4 & 0xF];
          v18 -= 4;
          v20 = v4 > 0x10F;
          v4 >>= 4;
        }

        while (v20);
      }

      v27 = v18 - 1;
      do
      {
        *v27-- = a01[v19 & 1];
        v20 = v19 > 1;
        v19 >>= 1;
      }

      while (v20);
    }
  }

  return a2;
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char *a5, char *a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:nn200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x1E69E5368]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_1B27B2EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ggl::MetalDevice::MetalDevice(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  v2 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = xmmword_1B33B09D0;
  *(a1 + 56) = 0xF0000000ELL;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x100000000;
  *a1 = &unk_1F2A5D7F0;
  *(a1 + 104) = 0u;
  v3 = (a1 + 104);
  *(a1 + 144) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v4 = MTLCreateSystemDefaultDevice();
  v5 = *v3;
  *v3 = v4;

  if (*v3)
  {
    v7 = ggl::zone_mallocator::instance(v6);
    geo::read_write_lock::read_lock((v7 + 32));
    v8 = malloc_type_zone_malloc(*v7, 0x160uLL, 0x1081040CC4C9F18uLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
    *(v8 + 8) = 0u;
    *v8 = &unk_1F2A5D880;
    v9 = v8 + 32;
    *(v8 + 11) = 0;
    *(v8 + 6) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 9) = 0;
    *(v8 + 15) = 850045863;
    *(v8 + 8) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 26) = 0;
    *(v8 + 54) = 1065353216;
    *(v8 + 28) = 850045863;
    *(v8 + 35) = 0;
    *(v8 + 36) = a1;
    *(v8 + 248) = 0u;
    *(v8 + 232) = 0u;
    *(v8 + 264) = 0u;
    *(v8 + 4) = &unk_1F2A5CCB8;
    *(v8 + 86) = 0;
    *(v8 + 296) = 0u;
    *(v8 + 312) = 0u;
    *(v8 + 41) = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("Resource Destruction Queue", v10);
    v12 = *(v8 + 38);
    *(v8 + 38) = v11;

    *&v13 = v8 + 32;
    *(&v13 + 1) = v8;
    v14 = *(v8 + 6);
    if (v14)
    {
      if (v14->__shared_owners_ != -1)
      {
        goto LABEL_7;
      }

      v30 = v13;
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
      *(v8 + 5) = v9;
      *(v8 + 6) = v8;
      std::__shared_weak_count::__release_weak(v14);
    }

    else
    {
      v30 = v13;
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
      *(v8 + 5) = v9;
      *(v8 + 6) = v8;
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    v13 = v30;
LABEL_7:
    v15 = *(a1 + 88);
    *(a1 + 80) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = [*v3 newCommandQueue];
    v17 = *(a1 + 112);
    *(a1 + 112) = v16;

    v18 = *(a1 + 112);
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.MapKit"];
    [v18 setLabel:v19];

    if ([*v3 supportsFamily:1001])
    {
      v20 = 0x2000;
    }

    else
    {
      if (![*v3 supportsFamily:1003])
      {
        goto LABEL_14;
      }

      v20 = 0x4000;
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = v20;
    *(a1 + 28) = v20;
    *(a1 + 32) = 0x100000010;
LABEL_14:
    v21 = *v3;
    if (*v3)
    {
      [v21 maxThreadsPerThreadgroup];
      v21 = *v3;
      v22 = vmovn_s64(0);
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 40) = v22;
    *(a1 + 48) = 0;
    *(a1 + 17) = 1;
    *(a1 + 18) = [v21 supportsMemorylessRenderTargets];
    v23 = [MEMORY[0x1E6974000] sharedCaptureManager];
    *(a1 + 19) = [v23 supportsDestination:2];

    *(a1 + 56) = 0xF0000000ELL;
    *(a1 + 64) = 0;
    if ([*(a1 + 104) supportsFamily:1001])
    {
      *(a1 + 20) = 1;
    }

    v24 = getenv("GGL_DISABLE_FBF");
    if (v24)
    {
      v25 = v24;
      if (GEOGetGeoGLDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
      }

      v26 = GEOGetGeoGLDefaultLog_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        buf[0] = 136315138;
        *&buf[1] = v25;
        _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_INFO, "GGL_DISABLE_FBF=%s", buf, 0xCu);
      }

      if (atoi(v25))
      {
        *(a1 + 20) = 0;
      }
    }

    if (GEOGetGeoGLDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
    }

    v27 = GEOGetGeoGLDefaultLog_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 20);
      buf[0] = 67109120;
      buf[1] = v28;
      _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_INFO, "SupportsFramebufferFetch=%d", buf, 8u);
    }

    if ([*v3 supportsFamily:1006])
    {
      *(a1 + 22) = 1;
    }

    if ([*v3 supportsFamily:1005])
    {
      *(a1 + 36) = 16;
    }

    if ([*v3 supportsFamily:1004])
    {
      *(a1 + 21) = 1;
    }

    if ([*v3 supportsFamily:1002])
    {
      *v2 = 1;
    }

    if ([*v3 supportsFamily:1005])
    {
      *(a1 + 23) = [*v3 supportsUnalignedVertexFetch];
    }

    operator new();
  }

  return a1;
}

void sub_1B27B3760(_Unwind_Exception *a1)
{
  v9 = v6;

  std::mutex::~mutex(v3);
  v11 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *v1 = v2;
  v12 = *(v1 + 88);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t ggl::zone_mallocator::instance(ggl::zone_mallocator *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return ggl::zone_mallocator::instance(void)::zone;
}

pthread_rwlock_t *geo::read_write_lock::read_write_lock(pthread_rwlock_t *this)
{
  *&this->__opaque[184] = 0;
  *&this->__opaque[152] = 0u;
  *&this->__opaque[168] = 0u;
  *&this->__opaque[120] = 0u;
  *&this->__opaque[136] = 0u;
  *&this->__opaque[88] = 0u;
  *&this->__opaque[104] = 0u;
  *&this->__opaque[56] = 0u;
  *&this->__opaque[72] = 0u;
  *&this->__opaque[24] = 0u;
  *&this->__opaque[40] = 0u;
  *&this->__sig = 0u;
  *&this->__opaque[8] = 0u;
  v2 = pthread_rwlock_init(this, 0);
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "initialization", v3);
  }

  return this;
}

void geo::read_write_lock::read_lock(pthread_rwlock_t *this)
{
  v1 = pthread_rwlock_rdlock(this);
  if (v1)
  {

    geo::read_write_lock::logFailure(v1, "read lock", v2);
  }
}

void geo::read_write_lock::unlock(pthread_rwlock_t *this)
{
  v1 = pthread_rwlock_unlock(this);
  if (v1)
  {

    geo::read_write_lock::logFailure(v1, "unlock", v2);
  }
}

ggl::zone_mallocator *ggl::CommonLibraryMTLData::CommonLibraryMTLData(ggl::zone_mallocator *a1, uint64_t *a2)
{
  v2 = a2;
  {
    v2 = a2;
    if (v5)
    {
      commonLibraryFunctionIds(void)::ids = xmmword_1B33B23A0;
      *algn_1ED6703D0 = xmmword_1B33B23B0;
      xmmword_1ED6703E0 = xmmword_1B33B23C0;
      unk_1ED6703F0 = xmmword_1B33B23D0;
      v2 = a2;
    }
  }

  result = ggl::MTLShaderLibraryData::MTLShaderLibraryData(a1, 0, v2, &commonLibraryFunctionIds(void)::ids, commonLibraryMTLFunctionSignatures(void)::signatures, 16);
  *a1 = &unk_1F2A5CC98;
  return result;
}

ggl::zone_mallocator *ggl::MTLShaderLibraryData::MTLShaderLibraryData(ggl::zone_mallocator *a1, int a2, uint64_t *a3, uint64_t a4, char **a5, uint64_t a6)
{
  v6 = a6;
  v9 = a1;
  *a1 = &unk_1F2A5CF08;
  *(a1 + 1) = 0;
  v10 = *a3;
  *a3 = 0;
  *(a1 + 2) = v10;
  *(a1 + 3) = 0;
  v11 = (a1 + 24);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  if (a6)
  {
    v65 = a1 + 48;
    v12 = ggl::zone_mallocator::instance(a1);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v12, v6);
    v14 = *(v9 + 3);
    v15 = *(v9 + 4) - v14;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], v14, v15);
    v17 = *(v9 + 3);
    *(v9 + 3) = v16;
    *(v9 + 4) = v13;
    v18 = *(v9 + 5);
    *(v9 + 5) = &v13[4 * v6];
    v63 = v17;
    v64 = v18;
    v61 = v17;
    v62 = v17;
    a1 = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,ggl::zone_mallocator> &>::~__split_buffer(&v61);
    v19 = *(v9 + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
  do
  {
    v21 = *(v9 + 5);
    if (v19 >= v21)
    {
      v22 = *v11;
      v23 = v19 - *v11;
      v24 = v23 >> 2;
      v25 = (v23 >> 2) + 1;
      if (v25 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = v21 - v22;
      if (v26 >> 1 > v25)
      {
        v25 = v26 >> 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v27 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      v65 = v9 + 48;
      if (v27)
      {
        v28 = ggl::zone_mallocator::instance(a1);
        v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v28, v27);
        v22 = *(v9 + 3);
        v23 = *(v9 + 4) - v22;
      }

      else
      {
        v29 = 0;
      }

      v30 = &v29[4 * v24];
      v31 = &v29[4 * v27];
      v32 = &v30[-4 * (v23 >> 2)];
      *v30 = *(a4 + 4 * v20);
      v19 = v30 + 4;
      memcpy(v32, v22, v23);
      v33 = *(v9 + 3);
      *(v9 + 3) = v32;
      *(v9 + 4) = v19;
      v34 = *(v9 + 5);
      *(v9 + 5) = v31;
      v63 = v33;
      v64 = v34;
      v61 = v33;
      v62 = v33;
      a1 = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,ggl::zone_mallocator> &>::~__split_buffer(&v61);
    }

    else
    {
      *v19 = *(a4 + 4 * v20);
      v19 += 4;
    }

    *(v9 + 4) = v19;
    ++v20;
  }

  while (v6 != v20);
  *v9 = &unk_1F2A5CF28;
  *(v9 + 7) = 0;
  v35 = (v9 + 56);
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  *(v9 + 22) = a2;
  v65 = v9 + 80;
  v36 = ggl::zone_mallocator::instance(a1);
  v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v36, v6);
  v38 = *(v9 + 8) - *(v9 + 7);
  v39 = &v37[-v38];
  memcpy(&v37[-v38], *(v9 + 7), v38);
  v40 = *(v9 + 7);
  *(v9 + 7) = v39;
  v41 = *(v9 + 9);
  *(v9 + 8) = v37;
  *(v9 + 9) = &v37[24 * v6];
  v63 = v40;
  v64 = v41;
  v61 = v40;
  v62 = v40;
  v42 = std::__split_buffer<std::string,geo::allocator_adapter<std::string,ggl::zone_mallocator> &>::~__split_buffer(&v61);
  v43 = *(v9 + 8);
  do
  {
    v44 = *a5;
    v45 = *(v9 + 9);
    if (v43 >= v45)
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * (&v43[-*v35] >> 3);
      v47 = v46 + 1;
      if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *v35) >> 3);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v47;
      }

      v65 = v9 + 80;
      if (v49)
      {
        v50 = ggl::zone_mallocator::instance(v42);
        v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v50, v49);
      }

      else
      {
        v51 = 0;
      }

      v52 = &v51[24 * v46];
      v53 = &v51[24 * v49];
      std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(v52, v44);
      v43 = v52 + 24;
      v54 = *(v9 + 7);
      v55 = *(v9 + 8) - v54;
      v56 = &v52[-v55];
      memcpy(&v52[-v55], v54, v55);
      v57 = *(v9 + 7);
      *(v9 + 7) = v56;
      *(v9 + 8) = v52 + 24;
      v58 = *(v9 + 9);
      *(v9 + 9) = v53;
      v63 = v57;
      v64 = v58;
      v61 = v57;
      v62 = v57;
      v42 = std::__split_buffer<std::string,geo::allocator_adapter<std::string,ggl::zone_mallocator> &>::~__split_buffer(&v61);
    }

    else
    {
      v42 = std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(v43, *a5);
      v43 += 24;
    }

    *(v9 + 8) = v43;
    ++a5;
    --v6;
  }

  while (v6);
  return v9;
}

ggl::zone_mallocator *std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::__split_buffer<std::string,geo::allocator_adapter<std::string,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 2) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 2);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v6, v5);
  }

  return a1;
}

unint64_t std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(_BYTE *a1, char *__s)
{
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memmove(a1, __s, result);
  }

  a1[v5] = 0;
  return result;
}

ggl::MTLBundleShaderLibraryData *ggl::MTLBundleShaderLibraryData::MTLBundleShaderLibraryData(ggl::MTLBundleShaderLibraryData *this, const char *a2, char **a3, const char **a4)
{
  v6 = 0;
  ggl::MTLShaderLibraryData::MTLShaderLibraryData(this, 1, &v6, a2, a3, a4);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *this = &unk_1F2A5CF48;
  *(this + 12) = "com.apple.VectorKit";
  return this;
}

void ggl::clearShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clearShaderFragmentFunctionDescriptor(void)::ref = 0x193DE7001;
    qword_1ED670100 = "ClearShader";
    unk_1ED670108 = 0;
    qword_1ED670110 = 0;
    unk_1ED670118 = &ggl::clearShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED670120 = 1;
    unk_1ED670128 = &ggl::clearShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED670130 = 0;
    unk_1ED670138 = &ggl::clearShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED670140 = 0;
    unk_1ED670148 = &ggl::clearShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670158 = 0;
    unk_1ED670160 = 0;
    qword_1ED670150 = 0;
  }
}

void ggl::clear2ShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clear2ShaderVertexFunctionDescriptor(void)::ref = 657411612;
    qword_1ED670620 = "Clear2Shader";
    unk_1ED670628 = ggl::clear2ShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED670630 = 1;
    unk_1ED670638 = &ggl::clear2ShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED670640 = 1;
    unk_1ED670648 = &ggl::clear2ShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED670650 = 0;
    unk_1ED670658 = &ggl::clear2ShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED670660 = 0;
    unk_1ED670668 = &ggl::clear2ShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670678 = 0;
    unk_1ED670680 = 0;
    qword_1ED670670 = 0;
  }
}

void ggl::clear2ShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clear2ShaderFragmentFunctionDescriptor(void)::ref = 0x13756E1D6;
    qword_1ED670088 = "Clear2Shader";
    unk_1ED670090 = 0;
    qword_1ED670098 = 0;
    unk_1ED6700A0 = &ggl::clear2ShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6700A8 = 1;
    unk_1ED6700B0 = &ggl::clear2ShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6700B8 = 0;
    unk_1ED6700C0 = &ggl::clear2ShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6700C8 = 0;
    unk_1ED6700D0 = &ggl::clear2ShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6700E0 = 0;
    unk_1ED6700E8 = 0;
    qword_1ED6700D8 = 0;
  }
}

void ggl::clear3ShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clear3ShaderVertexFunctionDescriptor(void)::ref = 4206466969;
    qword_1ED670170 = "Clear3Shader";
    unk_1ED670178 = ggl::clear3ShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED670180 = 1;
    unk_1ED670188 = &ggl::clear3ShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED670190 = 1;
    unk_1ED670198 = &ggl::clear3ShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6701A0 = 0;
    unk_1ED6701A8 = &ggl::clear3ShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6701B0 = 0;
    unk_1ED6701B8 = &ggl::clear3ShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6701C8 = 0;
    unk_1ED6701D0 = 0;
    qword_1ED6701C0 = 0;
  }
}

void ggl::clear3ShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clear3ShaderFragmentFunctionDescriptor(void)::ref = 0x18EAD3A3ELL;
    qword_1ED6705A8 = "Clear3Shader";
    unk_1ED6705B0 = 0;
    qword_1ED6705B8 = 0;
    unk_1ED6705C0 = &ggl::clear3ShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED6705C8 = 1;
    unk_1ED6705D0 = &ggl::clear3ShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6705D8 = 0;
    unk_1ED6705E0 = &ggl::clear3ShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6705E8 = 0;
    unk_1ED6705F0 = &ggl::clear3ShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED670600 = 0;
    unk_1ED670608 = 0;
    qword_1ED6705F8 = 0;
  }
}

void ggl::clear4ShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::clear4ShaderVertexFunctionDescriptor(void)::ref = 2278199745;
    qword_1ED669A30 = "Clear4Shader";
    unk_1ED669A38 = ggl::clear4ShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED669A40 = 1;
    unk_1ED669A48 = &ggl::clear4ShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED669A50 = 1;
    unk_1ED669A58 = &ggl::clear4ShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED669A60 = 0;
    unk_1ED669A68 = &ggl::clear4ShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED669A70 = 0;
    unk_1ED669A78 = &ggl::clear4ShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED669A88 = 0;
    unk_1ED669A90 = 0;
    qword_1ED669A80 = 0;
  }
}

void ggl::clear4ShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::clear4ShaderFragmentFunctionDescriptor(void)::ref = 0x115AC3524;
    qword_1ED669378 = "Clear4Shader";
    unk_1ED669380 = 0;
    qword_1ED669388 = 0;
    unk_1ED669390 = &ggl::clear4ShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED669398 = 1;
    unk_1ED6693A0 = &ggl::clear4ShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED6693A8 = 0;
    unk_1ED6693B0 = &ggl::clear4ShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6693B8 = 0;
    unk_1ED6693C0 = &ggl::clear4ShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6693D0 = 0;
    unk_1ED6693D8 = 0;
    qword_1ED6693C8 = 0;
  }
}

void ggl::coloredTextShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::coloredTextShaderVertexFunctionDescriptor(void)::ref = 2068447380;
    qword_1ED668BB0 = "ColoredTextShader";
    unk_1ED668BB8 = ggl::coloredTextShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668BC0 = 1;
    unk_1ED668BC8 = &ggl::coloredTextShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668BD0 = 1;
    unk_1ED668BD8 = &ggl::coloredTextShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668BE0 = 0;
    unk_1ED668BE8 = &ggl::coloredTextShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668BF0 = 0;
    unk_1ED668BF8 = &ggl::coloredTextShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668C08 = 0;
    unk_1ED668C10 = 0;
    qword_1ED668C00 = 0;
  }
}

void ggl::coloredTextShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::coloredTextShaderFragmentFunctionDescriptor(void)::ref = 0x15568C367;
    qword_1ED66FF28 = "ColoredTextShader";
    unk_1ED66FF30 = 0;
    qword_1ED66FF38 = 0;
    unk_1ED66FF40 = &ggl::coloredTextShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FF48 = 0;
    unk_1ED66FF50 = &ggl::coloredTextShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FF58 = 0;
    unk_1ED66FF60 = &ggl::coloredTextShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FF68 = 1;
    unk_1ED66FF70 = &ggl::coloredTextShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FF80 = 0;
    unk_1ED66FF88 = 0;
    qword_1ED66FF78 = 1;
  }
}

void ggl::shadedColorShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::shadedColorShaderFragmentFunctionDescriptor(void)::ref = 0x1DAB40370;
    qword_1ED66FEB8 = "ShadedColorShader";
    unk_1ED66FEC0 = 0;
    qword_1ED66FEC8 = 0;
    unk_1ED66FED0 = &ggl::shadedColorShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FED8 = 1;
    unk_1ED66FEE0 = &ggl::shadedColorShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FEE8 = 0;
    unk_1ED66FEF0 = &ggl::shadedColorShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FEF8 = 0;
    unk_1ED66FF00 = &ggl::shadedColorShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FF10 = 0;
    unk_1ED66FF18 = 0;
    qword_1ED66FF08 = 0;
  }
}

void ggl::textureRectShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::textureRectShaderVertexFunctionDescriptor(void)::ref = 1748348909;
    qword_1ED668828 = "TextureRectShader";
    unk_1ED668830 = ggl::textureRectShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668838 = 1;
    unk_1ED668840 = &ggl::textureRectShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668848 = 1;
    unk_1ED668850 = &ggl::textureRectShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668858 = 0;
    unk_1ED668860 = &ggl::textureRectShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668868 = 0;
    unk_1ED668870 = &ggl::textureRectShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED668880 = 0;
    unk_1ED668888 = 0;
    qword_1ED668878 = 0;
  }
}

void ggl::textureRectShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::textureRectShaderFragmentFunctionDescriptor(void)::ref = 0x1EDFCACDELL;
    qword_1ED66FE40 = "TextureRectShader";
    unk_1ED66FE48 = 0;
    qword_1ED66FE50 = 0;
    unk_1ED66FE58 = &ggl::textureRectShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FE60 = 0;
    unk_1ED66FE68 = &ggl::textureRectShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FE70 = 0;
    unk_1ED66FE78 = &ggl::textureRectShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FE80 = 1;
    unk_1ED66FE88 = &ggl::textureRectShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FE98 = 0;
    unk_1ED66FEA0 = 0;
    qword_1ED66FE90 = 1;
  }
}

void ggl::ClearShader::typedReflection(ggl::ClearShader *this)
{
  {
    if (v1)
    {
      ggl::ClearShader::typedReflection(void)::ref = "ClearShader";
      ggl::clearShaderVertexFunctionDescriptor(v1);
      qword_1ED66DCB8 = &ggl::clearShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66DCC0 = -1045938336;
      ggl::clearShaderFragmentFunctionDescriptor(v2);
      qword_1ED66DCC8 = &ggl::clearShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66DCD0 = -1814138879;
      qword_1ED66DCD8 = ggl::clearShaderShaderConstants(void)::ref;
      unk_1ED66DCE0 = 1;
      qword_1ED66DCE8 = &ggl::clearShaderShaderTextures(void)::ref;
      unk_1ED66DCF0 = 0;
      qword_1ED66DCF8 = &ggl::clearShaderShaderSamplers(void)::ref;
      unk_1ED66DD00 = 0;
    }
  }
}

void ggl::ColoredTextShader::typedReflection(ggl::ColoredTextShader *this)
{
  {
    if (v1)
    {
      ggl::ColoredTextShader::typedReflection(void)::ref = "ColoredTextShader";
      ggl::coloredTextShaderVertexFunctionDescriptor(v1);
      qword_1ED66D2E0 = &ggl::coloredTextShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D2E8 = 2068447380;
      ggl::coloredTextShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D2F0 = &ggl::coloredTextShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D2F8 = 1432929127;
      qword_1ED66D300 = ggl::coloredTextShaderShaderConstants(void)::ref;
      unk_1ED66D308 = 1;
      qword_1ED66D310 = ggl::coloredTextShaderShaderTextures(void)::ref;
      unk_1ED66D318 = 1;
      qword_1ED66D320 = &ggl::coloredTextShaderShaderSamplers(void)::ref;
      unk_1ED66D328 = 1;
    }
  }
}

void ggl::TextureRectShader::typedReflection(ggl::TextureRectShader *this)
{
  {
    if (v1)
    {
      ggl::TextureRectShader::typedReflection(void)::ref = "TextureRectShader";
      ggl::textureRectShaderVertexFunctionDescriptor(v1);
      qword_1ED66D0C8 = &ggl::textureRectShaderVertexFunctionDescriptor(void)::ref;
      dword_1ED66D0D0 = 1748348909;
      ggl::textureRectShaderFragmentFunctionDescriptor(v2);
      qword_1ED66D0D8 = &ggl::textureRectShaderFragmentFunctionDescriptor(void)::ref;
      dword_1ED66D0E0 = -302207778;
      qword_1ED66D0E8 = ggl::textureRectShaderShaderConstants(void)::ref;
      unk_1ED66D0F0 = 1;
      qword_1ED66D0F8 = ggl::textureRectShaderShaderTextures(void)::ref;
      unk_1ED66D100 = 1;
      qword_1ED66D108 = &ggl::textureRectShaderShaderSamplers(void)::ref;
      unk_1ED66D110 = 1;
    }
  }
}

ggl::zone_mallocator *ggl::ShaderLibrary::ShaderLibrary(ggl::zone_mallocator *a1, void *a2, void *a3)
{
  v4 = a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 3) = 0;
  *a1 = &unk_1F2A5C4C0;
  *(a1 + 10) = 0;
  v5 = (a1 + 80);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  v115 = (a1 + 112);
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  v116 = (a1 + 144);
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  v6 = (a1 + 176);
  *(a1 + 23) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v7 = a3[1];
  *(a1 + 26) = *a3;
  *(a1 + 27) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 6);
    v8 = *(a1 + 7);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 5) = a2;
  v9 = a2[3];
  v10 = &v8[-v7];
  v11 = &v8[-v7] >> 4;
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      v28 = (v7 + 16 * v9);
      while (v8 != v28)
      {
        a1 = *(v8 - 1);
        *(v8 - 1) = 0;
        if (a1)
        {
          a1 = (*(*a1 + 8))(a1);
        }

        v8 -= 16;
      }

      *(v4 + 7) = v28;
    }
  }

  else
  {
    v12 = v9 - v11;
    v13 = *(a1 + 8);
    if (v12 <= (v13 - v8) >> 4)
    {
      bzero(v8, 16 * v12);
      *(v4 + 7) = &v8[16 * v12];
    }

    else
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = v13 - v7;
      if (v14 >> 3 > v9)
      {
        v9 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v9;
      }

      v16 = ggl::zone_mallocator::instance(a1);
      geo::read_write_lock::read_lock((v16 + 32));
      v17 = malloc_type_zone_malloc(*v16, 16 * v15, 0x1020040D5A9D86FuLL);
      atomic_fetch_add((v16 + 24), 1u);
      geo::read_write_lock::unlock((v16 + 32));
      v18 = &v10[v17];
      v19 = v17 + 16 * v15;
      bzero(v18, 16 * v12);
      v20 = &v18[16 * v12];
      v21 = *(v4 + 6);
      v22 = *(v4 + 7);
      v23 = &v18[v21 - v22];
      if (v22 != v21)
      {
        v24 = *(v4 + 6);
        v25 = &v18[v21 - v22];
        do
        {
          *v25 = *v24;
          v26 = *(v24 + 1);
          *(v24 + 1) = 0;
          *(v25 + 1) = v26;
          v24 += 16;
          v25 += 16;
        }

        while (v24 != v22);
        do
        {
          a1 = *(v21 + 1);
          *(v21 + 1) = 0;
          if (a1)
          {
            a1 = (*(*a1 + 8))(a1);
          }

          v21 += 16;
        }

        while (v21 != v22);
        v21 = *(v4 + 6);
      }

      *(v4 + 6) = v23;
      *(v4 + 7) = v20;
      *(v4 + 8) = v19;
      if (v21)
      {
        v27 = ggl::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v27, v21);
      }
    }
  }

  v29 = a2[5];
  v30 = *(v4 + 10);
  v31 = *(v4 + 11);
  v32 = v31 - v30;
  v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  v34 = v29 - v33;
  if (v29 <= v33)
  {
    if (v29 < v33)
    {
      v51 = v30 + 24 * v29;
      while (v31 != v51)
      {
        a1 = *(v31 - 8);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v31 -= 24;
      }

      *(v4 + 11) = v51;
    }
  }

  else
  {
    v35 = *(v4 + 12);
    if (0xAAAAAAAAAAAAAAABLL * ((v35 - v31) >> 3) >= v34)
    {
      bzero(*(v4 + 11), 24 * ((24 * v34 - 24) / 0x18) + 24);
      *(v4 + 11) = v31 + 24 * ((24 * v34 - 24) / 0x18) + 24;
    }

    else
    {
      if (v29 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v30) >> 3);
      if (2 * v36 > v29)
      {
        v29 = 2 * v36;
      }

      if (v36 >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v29;
      }

      v38 = ggl::zone_mallocator::instance(a1);
      geo::read_write_lock::read_lock((v38 + 32));
      v39 = 3 * v37;
      v40 = malloc_type_zone_malloc(*v38, 24 * v37, 0x102004023CB03E4uLL);
      atomic_fetch_add((v38 + 24), 1u);
      geo::read_write_lock::unlock((v38 + 32));
      v41 = &v40[v32];
      v42 = &v40[8 * v39];
      bzero(v41, 24 * ((24 * v34 - 24) / 0x18) + 24);
      v43 = &v41[24 * ((24 * v34 - 24) / 0x18) + 24];
      v45 = *(v4 + 10);
      v44 = *(v4 + 11);
      v46 = &v41[v45 - v44];
      if (v44 != v45)
      {
        v47 = *(v4 + 10);
        v48 = &v41[v45 - v44];
        do
        {
          *v48 = *v47;
          *(v48 + 8) = *(v47 + 8);
          *(v47 + 8) = 0;
          *(v47 + 16) = 0;
          v47 += 24;
          v48 += 24;
        }

        while (v47 != v44);
        do
        {
          a1 = *(v45 + 16);
          if (a1)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v45 += 24;
        }

        while (v45 != v44);
      }

      v49 = *(v4 + 10);
      *(v4 + 10) = v46;
      *(v4 + 11) = v43;
      *(v4 + 12) = v42;
      if (v49)
      {
        v50 = ggl::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v50, v49);
      }
    }
  }

  v52 = a2[5];
  v53 = *(v4 + 22);
  v54 = *(v4 + 23);
  v55 = v54 - v53;
  v56 = (v54 - v53) >> 4;
  if (v52 <= v56)
  {
    if (v52 < v56)
    {
      v72 = v53 + 16 * v52;
      while (v54 != v72)
      {
        v73 = *(v54 - 8);
        if (v73)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v73);
        }

        v54 -= 16;
      }

      *(v4 + 23) = v72;
    }
  }

  else
  {
    v57 = v52 - v56;
    v58 = *(v4 + 24);
    if (v57 <= (v58 - v54) >> 4)
    {
      bzero(*(v4 + 23), 16 * v57);
      *(v4 + 23) = v54 + 16 * v57;
    }

    else
    {
      if (v52 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v59 = v58 - v53;
      if (v59 >> 3 > v52)
      {
        v52 = v59 >> 3;
      }

      if (v59 >= 0x7FFFFFFFFFFFFFF0)
      {
        v60 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v52;
      }

      v61 = ggl::zone_mallocator::instance(a1);
      geo::read_write_lock::read_lock((v61 + 32));
      v62 = malloc_type_zone_malloc(*v61, 16 * v60, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v61 + 24), 1u);
      geo::read_write_lock::unlock((v61 + 32));
      v63 = &v62[v55];
      v64 = &v62[16 * v60];
      bzero(v63, 16 * v57);
      v65 = &v63[16 * v57];
      v66 = *(v4 + 22);
      v67 = *(v4 + 23) - v66;
      v68 = &v63[-v67];
      v69 = memcpy(&v63[-v67], v66, v67);
      v70 = *(v4 + 22);
      *(v4 + 22) = v68;
      *(v4 + 23) = v65;
      *(v4 + 24) = v64;
      if (v70)
      {
        v71 = ggl::zone_mallocator::instance(v69);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v71, v70);
      }
    }
  }

  std::vector<ggl::ShaderLibrary::ComputeShaderEntry,geo::allocator_adapter<ggl::ShaderLibrary::ComputeShaderEntry,ggl::zone_mallocator>>::resize(v115, a2[7]);
  std::vector<ggl::ShaderLibrary::ComputeShaderEntry,geo::allocator_adapter<ggl::ShaderLibrary::ComputeShaderEntry,ggl::zone_mallocator>>::resize(v116, a2[9]);
  if (a2[3])
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = *(a2[2] + 8 * v76);
      if (v77)
      {
        LODWORD(v77) = *v77;
      }

      v78 = *(v4 + 6) + v75;
      *v78 = v77;
      v79 = ggl::zone_mallocator::instance(v74);
      v80 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v79, 0x38uLL);
      v81 = *(a2[2] + 8 * v76);
      v80[1] = 0;
      v80[2] = 0;
      *(v80 + 8) = 0;
      v80[3] = 0;
      *v80 = &unk_1F2A5DA70;
      v80[5] = v81;
      v80[6] = v4;
      v74 = *(v78 + 8);
      *(v78 + 8) = v80;
      if (v74)
      {
        v74 = (*(*v74 + 8))(v74);
      }

      ++v76;
      v75 += 16;
    }

    while (v76 != a2[3]);
  }

  if (a2[5])
  {
    v82 = 0;
    do
    {
      v83 = *(a2[4] + 8 * v82);
      if (v83)
      {
        v84 = **(v83 + 8);
        v85 = (*(v4 + 10) + 24 * v82);
        v86 = **(v83 + 24);
        *v85 = v84;
        v85[1] = v86;
        v87 = ggl::zone_mallocator::instance(v74);
        v88 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v87, 0x60uLL);
        v89 = *(a2[4] + 8 * v82);
        v90 = *v89;
        *(v88 + 12) = 0;
        *(v88 + 4) = 0;
        *(v88 + 5) = 0;
        *v88 = &unk_1F2A5DA90;
        *(v88 + 1) = v90;
        *(v88 + 2) = &unk_1F2A5DAB0;
        *(v88 + 3) = 0;
        *(v88 + 7) = 0;
        *(v88 + 8) = 0;
        *(v88 + 9) = v89;
        *(v88 + 10) = 0;
        v91 = v88 + 80;
        *(v88 + 11) = 0;
        v92 = *(v89 + 4);
        v93 = *(v89 + 8);
        *(v88 + 7) = v4;
        *(v88 + 8) = v92 | (v93 << 32);
        v94 = *(v4 + 6);
        v95 = *(v4 + 7);
        if (v94 == v95)
        {
          v98 = 0;
          *v91 = 0;
        }

        else
        {
          v96 = *(v4 + 6);
          do
          {
            if (*v96 == v92)
            {
              v97 = *(v96 + 8);
              if (v97)
              {
                goto LABEL_87;
              }
            }

            v96 += 16;
          }

          while (v96 != v95);
          v97 = 0;
LABEL_87:
          *v91 = v97;
          while (v94 != v95)
          {
            if (*v94 == v93)
            {
              v98 = *(v94 + 8);
              if (v98)
              {
                goto LABEL_96;
              }
            }

            v94 += 16;
          }

          v98 = 0;
        }

LABEL_96:
        *(v88 + 11) = v98;
        operator new();
      }

      v99 = (*v5 + 24 * v82);
      *v99 = 0;
      v99[1] = 0;
      v100 = v99[2];
      v99[2] = 0;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
      }

      v101 = *v5 + 24 * v82;
      v102 = *v6;
      v104 = *(v101 + 8);
      v103 = *(v101 + 16);
      if (v103)
      {
        atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
      }

      v105 = (v102 + 16 * v82);
      v74 = v105[1];
      *v105 = v104;
      v105[1] = v103;
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v74);
      }

      ++v82;
    }

    while (v82 != a2[5]);
  }

  v106 = a2[7];
  if (v106)
  {
    v107 = a2[6];
    v108 = *v115;
    do
    {
      v109 = *v107++;
      *v108 = v109;
      v108 += 4;
      --v106;
    }

    while (v106);
  }

  v110 = a2[9];
  if (v110)
  {
    v111 = a2[8];
    v112 = *v116;
    do
    {
      v113 = *v111++;
      *v112 = v113;
      v112 += 4;
      --v110;
    }

    while (v110);
  }

  return v4;
}

void std::vector<ggl::ShaderLibrary::ComputeShaderEntry,geo::allocator_adapter<ggl::ShaderLibrary::ComputeShaderEntry,ggl::zone_mallocator>>::resize(ggl::zone_mallocator *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v4 - *a1;
  v6 = v5 >> 4;
  if (a2 <= v5 >> 4)
  {
    if (a2 >= v6)
    {
      return;
    }

    v22 = v3 + 16 * a2;
    goto LABEL_16;
  }

  v7 = a2 - v6;
  v8 = *(a1 + 2);
  if (v7 <= (v8 - v4) >> 4)
  {
    bzero(*(a1 + 1), 16 * v7);
    v22 = v4 + 16 * v7;
LABEL_16:
    *(a1 + 1) = v22;
    return;
  }

  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 3;
  if (v9 >> 3 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = ggl::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v12 + 32));
  v13 = malloc_type_zone_malloc(*v12, 16 * v11, 0x1020040D5A9D86FuLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  v14 = &v13[v5];
  v15 = &v13[16 * v11];
  bzero(v14, 16 * v7);
  v16 = &v14[16 * v7];
  v17 = *(a1 + 1) - *a1;
  v18 = &v14[-v17];
  v19 = memcpy(&v14[-v17], *a1, v17);
  v20 = *a1;
  *a1 = v18;
  *(a1 + 1) = v16;
  *(a1 + 2) = v15;
  if (v20)
  {
    v21 = ggl::zone_mallocator::instance(v19);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v21, v20);
  }
}

uint64_t ggl::ShaderLibrary::shaderFunctionForKey(ggl::ShaderLibrary *this, ggl::ShaderLibrary *a2, int a3)
{
  while (this != a2)
  {
    if (*this == a3)
    {
      v3 = *(this + 1);
      if (v3)
      {
        return v3;
      }
    }

    this = (this + 16);
  }

  return 0;
}

void ggl::StandardLibrary::typedReflection(ggl::StandardLibrary *this)
{
  {
    ggl::StandardLibrary::typedReflection(void)::desc = "StandardLibrary";
    dword_1ED670298 = 243252359;
    {
      if (v1)
      {
        ggl::animatableTextureShaderVertexFunctionDescriptor(v1);
        StandardLibraryShaderFunctions(void)::desc = &ggl::animatableTextureShaderVertexFunctionDescriptor(void)::ref;
        ggl::animatableTextureShaderFragmentFunctionDescriptor(v2);
        qword_1ED6610B0 = &ggl::animatableTextureShaderFragmentFunctionDescriptor(void)::ref;
        ggl::aRMeshShaderVertexFunctionDescriptor(v3);
        qword_1ED6610B8 = &ggl::aRMeshShaderVertexFunctionDescriptor(void)::ref;
        ggl::aRMeshShaderFragmentFunctionDescriptor(v4);
        qword_1ED6610C0 = &ggl::aRMeshShaderFragmentFunctionDescriptor(void)::ref;
        ggl::aRDepthMeshShaderVertexFunctionDescriptor(v5);
        qword_1ED6610C8 = &ggl::aRDepthMeshShaderVertexFunctionDescriptor(void)::ref;
        ggl::aRDepthMeshShaderFragmentFunctionDescriptor(v6);
        qword_1ED6610D0 = &ggl::aRDepthMeshShaderFragmentFunctionDescriptor(void)::ref;
        ggl::aRGroundShadowShaderVertexFunctionDescriptor(v7);
        qword_1ED6610D8 = &ggl::aRGroundShadowShaderVertexFunctionDescriptor(void)::ref;
        ggl::aRGroundShadowShaderFragmentFunctionDescriptor(v8);
        qword_1ED6610E0 = &ggl::aRGroundShadowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::aRCameraImageShaderVertexFunctionDescriptor(v9);
        qword_1ED6610E8 = &ggl::aRCameraImageShaderVertexFunctionDescriptor(void)::ref;
        ggl::aRCameraImageShaderFragmentFunctionDescriptor(v10);
        qword_1ED6610F0 = &ggl::aRCameraImageShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(v11);
        qword_1ED6610F8 = &ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(v12);
        qword_1ED661100 = &ggl::buildingFacadeDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingFlatShaderVertexFunctionDescriptor(v13);
        qword_1ED661108 = &ggl::buildingFlatShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingFlatShaderFragmentFunctionDescriptor(v14);
        qword_1ED661110 = &ggl::buildingFlatShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(v15);
        qword_1ED661118 = &ggl::buildingFlatStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(v16);
        qword_1ED661120 = &ggl::buildingFlatStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(v17);
        qword_1ED661128 = &ggl::buildingPointyRoofDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(v18);
        qword_1ED661130 = &ggl::buildingPointyRoofDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingShadowShaderVertexFunctionDescriptor(v19);
        qword_1ED661138 = &ggl::buildingShadowShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingShadowShaderFragmentFunctionDescriptor(v20);
        qword_1ED661140 = &ggl::buildingShadowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::buildingTopDepthShaderVertexFunctionDescriptor(v21);
        qword_1ED661148 = &ggl::buildingTopDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::buildingTopDepthShaderFragmentFunctionDescriptor(v22);
        qword_1ED661150 = &ggl::buildingTopDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::circleShaderVertexFunctionDescriptor(v23);
        qword_1ED661158 = &ggl::circleShaderVertexFunctionDescriptor(void)::ref;
        ggl::circleShaderFragmentFunctionDescriptor(v24);
        qword_1ED661160 = &ggl::circleShaderFragmentFunctionDescriptor(void)::ref;
        ggl::circleMultiStrokeShaderVertexFunctionDescriptor(v25);
        qword_1ED661168 = &ggl::circleMultiStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::circleMultiStrokeShaderFragmentFunctionDescriptor(v26);
        qword_1ED661170 = &ggl::circleMultiStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::clutShaderVertexFunctionDescriptor(v27);
        qword_1ED661178 = &ggl::clutShaderVertexFunctionDescriptor(void)::ref;
        ggl::clutShaderFragmentFunctionDescriptor(v28);
        qword_1ED661180 = &ggl::clutShaderFragmentFunctionDescriptor(void)::ref;
        ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(v29);
        qword_1ED661188 = &ggl::colorGlyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref;
        ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(v30);
        qword_1ED661190 = &ggl::colorGlyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref;
        ggl::instancedDebugShaderVertexFunctionDescriptor(v31);
        qword_1ED661198 = &ggl::instancedDebugShaderVertexFunctionDescriptor(void)::ref;
        ggl::instancedDebugShaderFragmentFunctionDescriptor(v32);
        qword_1ED6611A0 = &ggl::instancedDebugShaderFragmentFunctionDescriptor(void)::ref;
        ggl::debugShaderVertexFunctionDescriptor(v33);
        qword_1ED6611A8 = &ggl::debugShaderVertexFunctionDescriptor(void)::ref;
        ggl::debugShaderFragmentFunctionDescriptor(v34);
        qword_1ED6611B0 = &ggl::debugShaderFragmentFunctionDescriptor(void)::ref;
        ggl::debugExtendedShaderVertexFunctionDescriptor(v35);
        qword_1ED6611B8 = &ggl::debugExtendedShaderVertexFunctionDescriptor(void)::ref;
        ggl::debugExtendedShaderFragmentFunctionDescriptor(v36);
        qword_1ED6611C0 = &ggl::debugExtendedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::debugLineShaderVertexFunctionDescriptor(v37);
        qword_1ED6611C8 = &ggl::debugLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::debugLineShaderFragmentFunctionDescriptor(v38);
        qword_1ED6611D0 = &ggl::debugLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::hillshadeShaderVertexFunctionDescriptor(v39);
        qword_1ED6611D8 = &ggl::hillshadeShaderVertexFunctionDescriptor(void)::ref;
        ggl::hillshadeShaderFragmentFunctionDescriptor(v40);
        qword_1ED6611E0 = &ggl::hillshadeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingShaderVertexFunctionDescriptor(v41);
        qword_1ED6611E8 = &ggl::diffuseBuildingShaderVertexFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingShaderFragmentFunctionDescriptor(v42);
        qword_1ED6611F0 = &ggl::diffuseBuildingShaderFragmentFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(v43);
        qword_1ED6611F8 = &ggl::diffuseBuildingPointyRoofShaderVertexFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingPointyRoofShaderFragmentFunctionDescriptor(v44);
        qword_1ED661200 = &ggl::diffuseBuildingPointyRoofShaderFragmentFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(v45);
        qword_1ED661208 = &ggl::diffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref;
        ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(v46);
        qword_1ED661210 = &ggl::diffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
        ggl::diffuseLandmarkShaderVertexFunctionDescriptor(v47);
        qword_1ED661218 = &ggl::diffuseLandmarkShaderVertexFunctionDescriptor(void)::ref;
        ggl::diffuseLandmarkShaderFragmentFunctionDescriptor(v48);
        qword_1ED661220 = &ggl::diffuseLandmarkShaderFragmentFunctionDescriptor(void)::ref;
        ggl::elevatedFillColorShaderVertexFunctionDescriptor(v49);
        qword_1ED661228 = &ggl::elevatedFillColorShaderVertexFunctionDescriptor(void)::ref;
        ggl::elevatedFillColorShaderFragmentFunctionDescriptor(v50);
        qword_1ED661230 = &ggl::elevatedFillColorShaderFragmentFunctionDescriptor(void)::ref;
        ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(v51);
        qword_1ED661238 = &ggl::elevatedFillNoWidthClipColorShaderVertexFunctionDescriptor(void)::ref;
        ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(v52);
        qword_1ED661240 = &ggl::elevatedFillNoWidthClipColorShaderFragmentFunctionDescriptor(void)::ref;
        ggl::elevatedStrokeColorShaderVertexFunctionDescriptor(v53);
        qword_1ED661248 = &ggl::elevatedStrokeColorShaderVertexFunctionDescriptor(void)::ref;
        ggl::elevatedStrokeColorShaderFragmentFunctionDescriptor(v54);
        qword_1ED661250 = &ggl::elevatedStrokeColorShaderFragmentFunctionDescriptor(void)::ref;
        ggl::elevatedStrokeColorWithDistanceShaderVertexFunctionDescriptor(v55);
        qword_1ED661258 = &ggl::elevatedStrokeColorWithDistanceShaderVertexFunctionDescriptor(void)::ref;
        ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(v56);
        qword_1ED661260 = &ggl::elevatedStrokeColorWithDistanceShaderFragmentFunctionDescriptor(void)::ref;
        ggl::fogShaderVertexFunctionDescriptor(v57);
        qword_1ED661268 = &ggl::fogShaderVertexFunctionDescriptor(void)::ref;
        ggl::fogShaderFragmentFunctionDescriptor(v58);
        qword_1ED661270 = &ggl::fogShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(v59);
        qword_1ED661278 = &ggl::foggedDiffuseBuildingShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseBuildingShaderFragmentFunctionDescriptor(v60);
        qword_1ED661280 = &ggl::foggedDiffuseBuildingShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(v61);
        qword_1ED661288 = &ggl::foggedDiffuseBuildingTopShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(v62);
        qword_1ED661290 = &ggl::foggedDiffuseBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(v63);
        qword_1ED661298 = &ggl::foggedDiffuseLandmarkShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedDiffuseLandmarkShaderFragmentFunctionDescriptor(v64);
        qword_1ED6612A0 = &ggl::foggedDiffuseLandmarkShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedSpecularBuildingShaderVertexFunctionDescriptor(v65);
        qword_1ED6612A8 = &ggl::foggedSpecularBuildingShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedSpecularBuildingShaderFragmentFunctionDescriptor(v66);
        qword_1ED6612B0 = &ggl::foggedSpecularBuildingShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedSpecularBuildingTopShaderVertexFunctionDescriptor(v67);
        qword_1ED6612B8 = &ggl::foggedSpecularBuildingTopShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedSpecularBuildingTopShaderFragmentFunctionDescriptor(v68);
        qword_1ED6612C0 = &ggl::foggedSpecularBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
        ggl::foggedSpecularLandmarkShaderVertexFunctionDescriptor(v69);
        qword_1ED6612C8 = &ggl::foggedSpecularLandmarkShaderVertexFunctionDescriptor(void)::ref;
        ggl::foggedSpecularLandmarkShaderFragmentFunctionDescriptor(v70);
        qword_1ED6612D0 = &ggl::foggedSpecularLandmarkShaderFragmentFunctionDescriptor(void)::ref;
        ggl::globeAtmosphereShaderVertexFunctionDescriptor(v71);
        qword_1ED6612D8 = &ggl::globeAtmosphereShaderVertexFunctionDescriptor(void)::ref;
        ggl::globeAtmosphereShaderFragmentFunctionDescriptor(v72);
        qword_1ED6612E0 = &ggl::globeAtmosphereShaderFragmentFunctionDescriptor(void)::ref;
        ggl::globeStarsShaderVertexFunctionDescriptor(v73);
        qword_1ED6612E8 = &ggl::globeStarsShaderVertexFunctionDescriptor(void)::ref;
        ggl::globeStarsShaderFragmentFunctionDescriptor(v74);
        qword_1ED6612F0 = &ggl::globeStarsShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glowShaderVertexFunctionDescriptor(v75);
        qword_1ED6612F8 = &ggl::glowShaderVertexFunctionDescriptor(void)::ref;
        ggl::glowShaderFragmentFunctionDescriptor(v76);
        qword_1ED661300 = &ggl::glowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glowAlphaShaderVertexFunctionDescriptor(v77);
        qword_1ED661308 = &ggl::glowAlphaShaderVertexFunctionDescriptor(void)::ref;
        ggl::glowAlphaShaderFragmentFunctionDescriptor(v78);
        qword_1ED661310 = &ggl::glowAlphaShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glyph3dShaderVertexFunctionDescriptor(v79);
        qword_1ED661318 = &ggl::glyph3dShaderVertexFunctionDescriptor(void)::ref;
        ggl::glyph3dShaderFragmentFunctionDescriptor(v80);
        qword_1ED661320 = &ggl::glyph3dShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glyph3dLowPrecisionShaderVertexFunctionDescriptor(v81);
        qword_1ED661328 = &ggl::glyph3dLowPrecisionShaderVertexFunctionDescriptor(void)::ref;
        ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(v82);
        qword_1ED661330 = &ggl::glyph3dLowPrecisionShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glyph3dLowPrecisionHaloShaderVertexFunctionDescriptor(v83);
        qword_1ED661338 = &ggl::glyph3dLowPrecisionHaloShaderVertexFunctionDescriptor(void)::ref;
        ggl::glyph3dLowPrecisionHaloShaderFragmentFunctionDescriptor(v84);
        qword_1ED661340 = &ggl::glyph3dLowPrecisionHaloShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glyph3dRaymarchShaderVertexFunctionDescriptor(v85);
        qword_1ED661348 = &ggl::glyph3dRaymarchShaderVertexFunctionDescriptor(void)::ref;
        ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(v86);
        qword_1ED661350 = &ggl::glyph3dRaymarchShaderFragmentFunctionDescriptor(void)::ref;
        ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(v87);
        qword_1ED661358 = &ggl::glyphWithNormalHaloShaderVertexFunctionDescriptor(void)::ref;
        ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(v88);
        qword_1ED661360 = &ggl::glyphWithNormalHaloShaderFragmentFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayFillShaderVertexFunctionDescriptor(v89);
        qword_1ED661368 = &ggl::gradientPolylineOverlayFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(v90);
        qword_1ED661370 = &ggl::gradientPolylineOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(v91);
        qword_1ED661378 = &ggl::gradientPolylineOverlayAlphaShaderVertexFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayAlphaShaderFragmentFunctionDescriptor(v92);
        qword_1ED661380 = &ggl::gradientPolylineOverlayAlphaShaderFragmentFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayAlphaFillShaderVertexFunctionDescriptor(v93);
        qword_1ED661388 = &ggl::gradientPolylineOverlayAlphaFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::gradientPolylineOverlayAlphaFillShaderFragmentFunctionDescriptor(v94);
        qword_1ED661390 = &ggl::gradientPolylineOverlayAlphaFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::gridShaderVertexFunctionDescriptor(v95);
        qword_1ED661398 = &ggl::gridShaderVertexFunctionDescriptor(void)::ref;
        ggl::gridShaderFragmentFunctionDescriptor(v96);
        qword_1ED6613A0 = &ggl::gridShaderFragmentFunctionDescriptor(void)::ref;
        ggl::gridUVShaderVertexFunctionDescriptor(v97);
        qword_1ED6613A8 = &ggl::gridUVShaderVertexFunctionDescriptor(void)::ref;
        ggl::gridUVShaderFragmentFunctionDescriptor(v98);
        qword_1ED6613B0 = &ggl::gridUVShaderFragmentFunctionDescriptor(void)::ref;
        ggl::iconShaderVertexFunctionDescriptor(v99);
        qword_1ED6613B8 = &ggl::iconShaderVertexFunctionDescriptor(void)::ref;
        ggl::iconShaderFragmentFunctionDescriptor(v100);
        qword_1ED6613C0 = &ggl::iconShaderFragmentFunctionDescriptor(void)::ref;
        ggl::maskedIconShaderVertexFunctionDescriptor(v101);
        qword_1ED6613C8 = &ggl::maskedIconShaderVertexFunctionDescriptor(void)::ref;
        ggl::maskedIconShaderFragmentFunctionDescriptor(v102);
        qword_1ED6613D0 = &ggl::maskedIconShaderFragmentFunctionDescriptor(void)::ref;
        ggl::waypointShaderVertexFunctionDescriptor(v103);
        qword_1ED6613D8 = &ggl::waypointShaderVertexFunctionDescriptor(void)::ref;
        ggl::waypointShaderFragmentFunctionDescriptor(v104);
        qword_1ED6613E0 = &ggl::waypointShaderFragmentFunctionDescriptor(void)::ref;
        ggl::shadowShaderVertexFunctionDescriptor(v105);
        qword_1ED6613E8 = &ggl::shadowShaderVertexFunctionDescriptor(void)::ref;
        ggl::shadowShaderFragmentFunctionDescriptor(v106);
        qword_1ED6613F0 = &ggl::shadowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::imageCopyShaderVertexFunctionDescriptor(v107);
        qword_1ED6613F8 = &ggl::imageCopyShaderVertexFunctionDescriptor(void)::ref;
        ggl::imageCopyShaderFragmentFunctionDescriptor(v108);
        qword_1ED661400 = &ggl::imageCopyShaderFragmentFunctionDescriptor(void)::ref;
        ggl::landmarkDepthShaderVertexFunctionDescriptor(v109);
        qword_1ED661408 = &ggl::landmarkDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::landmarkDepthShaderFragmentFunctionDescriptor(v110);
        qword_1ED661410 = &ggl::landmarkDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::landmarkFlatShaderVertexFunctionDescriptor(v111);
        qword_1ED661418 = &ggl::landmarkFlatShaderVertexFunctionDescriptor(void)::ref;
        ggl::landmarkFlatShaderFragmentFunctionDescriptor(v112);
        qword_1ED661420 = &ggl::landmarkFlatShaderFragmentFunctionDescriptor(void)::ref;
        ggl::lineShaderVertexFunctionDescriptor(v113);
        qword_1ED661428 = &ggl::lineShaderVertexFunctionDescriptor(void)::ref;
        ggl::lineShaderFragmentFunctionDescriptor(v114);
        qword_1ED661430 = &ggl::lineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::maneuverPointShaderVertexFunctionDescriptor(v115);
        qword_1ED661438 = &ggl::maneuverPointShaderVertexFunctionDescriptor(void)::ref;
        ggl::maneuverPointShaderFragmentFunctionDescriptor(v116);
        qword_1ED661440 = &ggl::maneuverPointShaderFragmentFunctionDescriptor(void)::ref;
        ggl::occlusionLineShaderVertexFunctionDescriptor(v117);
        qword_1ED661448 = &ggl::occlusionLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::occlusionLineShaderFragmentFunctionDescriptor(v118);
        qword_1ED661450 = &ggl::occlusionLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::optimizedTrafficShaderVertexFunctionDescriptor(v119);
        qword_1ED661458 = &ggl::optimizedTrafficShaderVertexFunctionDescriptor(void)::ref;
        ggl::optimizedTrafficShaderFragmentFunctionDescriptor(v120);
        qword_1ED661460 = &ggl::optimizedTrafficShaderFragmentFunctionDescriptor(void)::ref;
        ggl::outerShadowRibbonShaderVertexFunctionDescriptor(v121);
        qword_1ED661468 = &ggl::outerShadowRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::outerShadowRibbonShaderFragmentFunctionDescriptor(v122);
        qword_1ED661470 = &ggl::outerShadowRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonOverlayFillShaderVertexFunctionDescriptor(v123);
        qword_1ED661478 = &ggl::polygonOverlayFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonOverlayFillShaderFragmentFunctionDescriptor(v124);
        qword_1ED661480 = &ggl::polygonOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(v125);
        qword_1ED661488 = &ggl::polygonOverlayAntialiasShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(v126);
        qword_1ED661490 = &ggl::polygonOverlayAntialiasShaderFragmentFunctionDescriptor(void)::ref;
        ggl::maskingOverlayFillShaderVertexFunctionDescriptor(v127);
        qword_1ED661498 = &ggl::maskingOverlayFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::maskingOverlayFillShaderFragmentFunctionDescriptor(v128);
        qword_1ED6614A0 = &ggl::maskingOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(v129);
        qword_1ED6614A8 = &ggl::maskingOverlayMaskingShaderVertexFunctionDescriptor(void)::ref;
        ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(v130);
        qword_1ED6614B0 = &ggl::maskingOverlayMaskingShaderFragmentFunctionDescriptor(void)::ref;
        ggl::patternedRibbonShaderVertexFunctionDescriptor(v131);
        qword_1ED6614B8 = &ggl::patternedRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::patternedRibbonShaderFragmentFunctionDescriptor(v132);
        qword_1ED6614C0 = &ggl::patternedRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::writeStencilPatternedRibbonShaderVertexFunctionDescriptor(v133);
        qword_1ED6614C8 = &ggl::writeStencilPatternedRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(v134);
        qword_1ED6614D0 = &ggl::writeStencilPatternedRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(v135);
        qword_1ED6614D8 = &ggl::polygonAnimatableFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonAnimatableFillShaderFragmentFunctionDescriptor(v136);
        qword_1ED6614E0 = &ggl::polygonAnimatableFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonAnimatableStrokeShaderVertexFunctionDescriptor(v137);
        qword_1ED6614E8 = &ggl::polygonAnimatableStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonAnimatableStrokeShaderFragmentFunctionDescriptor(v138);
        qword_1ED6614F0 = &ggl::polygonAnimatableStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonFillShaderVertexFunctionDescriptor(v139);
        qword_1ED6614F8 = &ggl::polygonFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonFillShaderFragmentFunctionDescriptor(v140);
        qword_1ED661500 = &ggl::polygonFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonShadowedStrokeShaderVertexFunctionDescriptor(v141);
        qword_1ED661508 = &ggl::polygonShadowedStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonShadowedStrokeShaderFragmentFunctionDescriptor(v142);
        qword_1ED661510 = &ggl::polygonShadowedStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonSolidFillShaderVertexFunctionDescriptor(v143);
        qword_1ED661518 = &ggl::polygonSolidFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonSolidFillShaderFragmentFunctionDescriptor(v144);
        qword_1ED661520 = &ggl::polygonSolidFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonSolidFillS2ShaderVertexFunctionDescriptor(v145);
        qword_1ED661528 = &ggl::polygonSolidFillS2ShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonSolidFillS2ShaderFragmentFunctionDescriptor(v146);
        qword_1ED661530 = &ggl::polygonSolidFillS2ShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonStrokeShaderVertexFunctionDescriptor(v147);
        qword_1ED661538 = &ggl::polygonStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonStrokeShaderFragmentFunctionDescriptor(v148);
        qword_1ED661540 = &ggl::polygonStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polygonStrokeMaskShaderVertexFunctionDescriptor(v149);
        qword_1ED661548 = &ggl::polygonStrokeMaskShaderVertexFunctionDescriptor(void)::ref;
        ggl::polygonStrokeMaskShaderFragmentFunctionDescriptor(v150);
        qword_1ED661550 = &ggl::polygonStrokeMaskShaderFragmentFunctionDescriptor(void)::ref;
        ggl::hillshadeFillMaskShaderVertexFunctionDescriptor(v151);
        qword_1ED661558 = &ggl::hillshadeFillMaskShaderVertexFunctionDescriptor(void)::ref;
        ggl::hillshadeFillMaskShaderFragmentFunctionDescriptor(v152);
        qword_1ED661560 = &ggl::hillshadeFillMaskShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polylineOverlayFillShaderVertexFunctionDescriptor(v153);
        qword_1ED661568 = &ggl::polylineOverlayFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polylineOverlayFillShaderFragmentFunctionDescriptor(v154);
        qword_1ED661570 = &ggl::polylineOverlayFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polylineOverlayAlphaShaderVertexFunctionDescriptor(v155);
        qword_1ED661578 = &ggl::polylineOverlayAlphaShaderVertexFunctionDescriptor(void)::ref;
        ggl::polylineOverlayAlphaShaderFragmentFunctionDescriptor(v156);
        qword_1ED661580 = &ggl::polylineOverlayAlphaShaderFragmentFunctionDescriptor(void)::ref;
        ggl::polylineOverlayAlphaFillShaderVertexFunctionDescriptor(v157);
        qword_1ED661588 = &ggl::polylineOverlayAlphaFillShaderVertexFunctionDescriptor(void)::ref;
        ggl::polylineOverlayAlphaFillShaderFragmentFunctionDescriptor(v158);
        qword_1ED661590 = &ggl::polylineOverlayAlphaFillShaderFragmentFunctionDescriptor(void)::ref;
        ggl::pointShaderVertexFunctionDescriptor(v159);
        qword_1ED661598 = &ggl::pointShaderVertexFunctionDescriptor(void)::ref;
        ggl::pointShaderFragmentFunctionDescriptor(v160);
        qword_1ED6615A0 = &ggl::pointShaderFragmentFunctionDescriptor(void)::ref;
        ggl::pointExtendedShaderVertexFunctionDescriptor(v161);
        qword_1ED6615A8 = &ggl::pointExtendedShaderVertexFunctionDescriptor(void)::ref;
        ggl::pointExtendedShaderFragmentFunctionDescriptor(v162);
        qword_1ED6615B0 = &ggl::pointExtendedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::prefilteredLineShaderVertexFunctionDescriptor(v163);
        qword_1ED6615B8 = &ggl::prefilteredLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::prefilteredLineShaderFragmentFunctionDescriptor(v164);
        qword_1ED6615C0 = &ggl::prefilteredLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::renderTargetBlendShaderVertexFunctionDescriptor(v165);
        qword_1ED6615C8 = &ggl::renderTargetBlendShaderVertexFunctionDescriptor(void)::ref;
        ggl::renderTargetBlendShaderFragmentFunctionDescriptor(v166);
        qword_1ED6615D0 = &ggl::renderTargetBlendShaderFragmentFunctionDescriptor(void)::ref;
        ggl::routeLineShaderVertexFunctionDescriptor(v167);
        qword_1ED6615D8 = &ggl::routeLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::routeLineShaderFragmentFunctionDescriptor(v168);
        qword_1ED6615E0 = &ggl::routeLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::patternedRouteLineShaderVertexFunctionDescriptor(v169);
        qword_1ED6615E8 = &ggl::patternedRouteLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::patternedRouteLineShaderFragmentFunctionDescriptor(v170);
        qword_1ED6615F0 = &ggl::patternedRouteLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::routeLineMaskShaderVertexFunctionDescriptor(v171);
        qword_1ED6615F8 = &ggl::routeLineMaskShaderVertexFunctionDescriptor(void)::ref;
        ggl::routeLineMaskShaderFragmentFunctionDescriptor(v172);
        qword_1ED661600 = &ggl::routeLineMaskShaderFragmentFunctionDescriptor(void)::ref;
        ggl::routeLineAlphaResetShaderVertexFunctionDescriptor(v173);
        qword_1ED661608 = &ggl::routeLineAlphaResetShaderVertexFunctionDescriptor(void)::ref;
        ggl::routeLineAlphaResetShaderFragmentFunctionDescriptor(v174);
        qword_1ED661610 = &ggl::routeLineAlphaResetShaderFragmentFunctionDescriptor(void)::ref;
        ggl::routeLineArrowShaderVertexFunctionDescriptor(v175);
        qword_1ED661618 = &ggl::routeLineArrowShaderVertexFunctionDescriptor(void)::ref;
        ggl::routeLineArrowShaderFragmentFunctionDescriptor(v176);
        qword_1ED661620 = &ggl::routeLineArrowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::routeLineTrafficShaderVertexFunctionDescriptor(v177);
        qword_1ED661628 = &ggl::routeLineTrafficShaderVertexFunctionDescriptor(void)::ref;
        ggl::routeLineTrafficShaderFragmentFunctionDescriptor(v178);
        qword_1ED661630 = &ggl::routeLineTrafficShaderFragmentFunctionDescriptor(void)::ref;
        ggl::singlePassRouteLineShaderVertexFunctionDescriptor(v179);
        qword_1ED661638 = &ggl::singlePassRouteLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::singlePassRouteLineShaderFragmentFunctionDescriptor(v180);
        qword_1ED661640 = &ggl::singlePassRouteLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::dottedRouteLineShaderVertexFunctionDescriptor(v181);
        qword_1ED661648 = &ggl::dottedRouteLineShaderVertexFunctionDescriptor(void)::ref;
        ggl::dottedRouteLineShaderFragmentFunctionDescriptor(v182);
        qword_1ED661650 = &ggl::dottedRouteLineShaderFragmentFunctionDescriptor(void)::ref;
        ggl::sDFGlyphShaderVertexFunctionDescriptor(v183);
        qword_1ED661658 = &ggl::sDFGlyphShaderVertexFunctionDescriptor(void)::ref;
        ggl::sDFGlyphShaderFragmentFunctionDescriptor(v184);
        qword_1ED661660 = &ggl::sDFGlyphShaderFragmentFunctionDescriptor(void)::ref;
        ggl::sDFGlyphHaloShaderVertexFunctionDescriptor(v185);
        qword_1ED661668 = &ggl::sDFGlyphHaloShaderVertexFunctionDescriptor(void)::ref;
        ggl::sDFGlyphHaloShaderFragmentFunctionDescriptor(v186);
        qword_1ED661670 = &ggl::sDFGlyphHaloShaderFragmentFunctionDescriptor(void)::ref;
        ggl::sDFGlyphSuperSampleShaderVertexFunctionDescriptor(v187);
        qword_1ED661678 = &ggl::sDFGlyphSuperSampleShaderVertexFunctionDescriptor(void)::ref;
        ggl::sDFGlyphSuperSampleShaderFragmentFunctionDescriptor(v188);
        qword_1ED661680 = &ggl::sDFGlyphSuperSampleShaderFragmentFunctionDescriptor(void)::ref;
        ggl::simpleGridShaderVertexFunctionDescriptor(v189);
        qword_1ED661688 = &ggl::simpleGridShaderVertexFunctionDescriptor(void)::ref;
        ggl::simpleGridShaderFragmentFunctionDescriptor(v190);
        qword_1ED661690 = &ggl::simpleGridShaderFragmentFunctionDescriptor(void)::ref;
        ggl::skyShaderVertexFunctionDescriptor(v191);
        qword_1ED661698 = &ggl::skyShaderVertexFunctionDescriptor(void)::ref;
        ggl::skyShaderFragmentFunctionDescriptor(v192);
        qword_1ED6616A0 = &ggl::skyShaderFragmentFunctionDescriptor(void)::ref;
        ggl::solidRibbonShaderVertexFunctionDescriptor(v193);
        qword_1ED6616A8 = &ggl::solidRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::solidRibbonShaderFragmentFunctionDescriptor(v194);
        qword_1ED6616B0 = &ggl::solidRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::solidTrafficShaderVertexFunctionDescriptor(v195);
        qword_1ED6616B8 = &ggl::solidTrafficShaderVertexFunctionDescriptor(void)::ref;
        ggl::solidTrafficShaderFragmentFunctionDescriptor(v196);
        qword_1ED6616C0 = &ggl::solidTrafficShaderFragmentFunctionDescriptor(void)::ref;
        ggl::solidMaskedTrafficShaderVertexFunctionDescriptor(v197);
        qword_1ED6616C8 = &ggl::solidMaskedTrafficShaderVertexFunctionDescriptor(void)::ref;
        ggl::solidMaskedTrafficShaderFragmentFunctionDescriptor(v198);
        qword_1ED6616D0 = &ggl::solidMaskedTrafficShaderFragmentFunctionDescriptor(void)::ref;
        ggl::specularBuildingShaderVertexFunctionDescriptor(v199);
        qword_1ED6616D8 = &ggl::specularBuildingShaderVertexFunctionDescriptor(void)::ref;
        ggl::specularBuildingShaderFragmentFunctionDescriptor(v200);
        qword_1ED6616E0 = &ggl::specularBuildingShaderFragmentFunctionDescriptor(void)::ref;
        ggl::specularBuildingPointyRoofShaderVertexFunctionDescriptor(v201);
        qword_1ED6616E8 = &ggl::specularBuildingPointyRoofShaderVertexFunctionDescriptor(void)::ref;
        ggl::specularBuildingPointyRoofShaderFragmentFunctionDescriptor(v202);
        qword_1ED6616F0 = &ggl::specularBuildingPointyRoofShaderFragmentFunctionDescriptor(void)::ref;
        ggl::specularBuildingTopShaderVertexFunctionDescriptor(v203);
        qword_1ED6616F8 = &ggl::specularBuildingTopShaderVertexFunctionDescriptor(void)::ref;
        ggl::specularBuildingTopShaderFragmentFunctionDescriptor(v204);
        qword_1ED661700 = &ggl::specularBuildingTopShaderFragmentFunctionDescriptor(void)::ref;
        ggl::specularLandmarkShaderVertexFunctionDescriptor(v205);
        qword_1ED661708 = &ggl::specularLandmarkShaderVertexFunctionDescriptor(void)::ref;
        ggl::specularLandmarkShaderFragmentFunctionDescriptor(v206);
        qword_1ED661710 = &ggl::specularLandmarkShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainCompositeShaderVertexFunctionDescriptor(v207);
        qword_1ED661718 = &ggl::standardPostchainCompositeShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainCompositeShaderFragmentFunctionDescriptor(v208);
        qword_1ED661720 = &ggl::standardPostchainCompositeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainSplitFrameShaderVertexFunctionDescriptor(v209);
        qword_1ED661728 = &ggl::standardPostchainSplitFrameShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainSplitFrameShaderFragmentFunctionDescriptor(v210);
        qword_1ED661730 = &ggl::standardPostchainSplitFrameShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainDownsampleCoCShaderVertexFunctionDescriptor(v211);
        qword_1ED661738 = &ggl::standardPostchainDownsampleCoCShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainDownsampleCoCShaderFragmentFunctionDescriptor(v212);
        qword_1ED661740 = &ggl::standardPostchainDownsampleCoCShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainBGBlurShaderVertexFunctionDescriptor(v213);
        qword_1ED661748 = &ggl::standardPostchainBGBlurShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainBGBlurShaderFragmentFunctionDescriptor(v214);
        qword_1ED661750 = &ggl::standardPostchainBGBlurShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainFGBlurShaderVertexFunctionDescriptor(v215);
        qword_1ED661758 = &ggl::standardPostchainFGBlurShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainFGBlurShaderFragmentFunctionDescriptor(v216);
        qword_1ED661760 = &ggl::standardPostchainFGBlurShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainTentBlurShaderVertexFunctionDescriptor(v217);
        qword_1ED661768 = &ggl::standardPostchainTentBlurShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainTentBlurShaderFragmentFunctionDescriptor(v218);
        qword_1ED661770 = &ggl::standardPostchainTentBlurShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainDownsampleDepthShaderVertexFunctionDescriptor(v219);
        qword_1ED661778 = &ggl::standardPostchainDownsampleDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainDownsampleDepthShaderFragmentFunctionDescriptor(v220);
        qword_1ED661780 = &ggl::standardPostchainDownsampleDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOBlurShaderVertexFunctionDescriptor(v221);
        qword_1ED661788 = &ggl::standardPostchainSSAOBlurShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOBlurShaderFragmentFunctionDescriptor(v222);
        qword_1ED661790 = &ggl::standardPostchainSSAOBlurShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOUpsampleShaderVertexFunctionDescriptor(v223);
        qword_1ED661798 = &ggl::standardPostchainSSAOUpsampleShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOUpsampleShaderFragmentFunctionDescriptor(v224);
        qword_1ED6617A0 = &ggl::standardPostchainSSAOUpsampleShaderFragmentFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOShaderVertexFunctionDescriptor(v225);
        qword_1ED6617A8 = &ggl::standardPostchainSSAOShaderVertexFunctionDescriptor(void)::ref;
        ggl::standardPostchainSSAOShaderFragmentFunctionDescriptor(v226);
        qword_1ED6617B0 = &ggl::standardPostchainSSAOShaderFragmentFunctionDescriptor(void)::ref;
        ggl::styleTextureRibbonShaderVertexFunctionDescriptor(v227);
        qword_1ED6617B8 = &ggl::styleTextureRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::styleTextureRibbonShaderFragmentFunctionDescriptor(v228);
        qword_1ED6617C0 = &ggl::styleTextureRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::textureAlphaMaskShaderVertexFunctionDescriptor(v229);
        qword_1ED6617C8 = &ggl::textureAlphaMaskShaderVertexFunctionDescriptor(void)::ref;
        ggl::textureAlphaMaskShaderFragmentFunctionDescriptor(v230);
        qword_1ED6617D0 = &ggl::textureAlphaMaskShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedShaderVertexFunctionDescriptor(v231);
        qword_1ED6617D8 = &ggl::texturedShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedShaderFragmentFunctionDescriptor(v232);
        qword_1ED6617E0 = &ggl::texturedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedDrapedSRGBBlendShaderVertexFunctionDescriptor(v233);
        qword_1ED6617E8 = &ggl::texturedDrapedSRGBBlendShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedDrapedSRGBBlendShaderFragmentFunctionDescriptor(v234);
        qword_1ED6617F0 = &ggl::texturedDrapedSRGBBlendShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedSRGBBlendShaderVertexFunctionDescriptor(v235);
        qword_1ED6617F8 = &ggl::texturedSRGBBlendShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedSRGBBlendShaderFragmentFunctionDescriptor(v236);
        qword_1ED661800 = &ggl::texturedSRGBBlendShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedColormappedSRGBTexturedShaderVertexFunctionDescriptor(v237);
        qword_1ED661808 = &ggl::texturedColormappedSRGBTexturedShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedColormappedSRGBTexturedShaderFragmentFunctionDescriptor(v238);
        qword_1ED661810 = &ggl::texturedColormappedSRGBTexturedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedExtendedShaderVertexFunctionDescriptor(v239);
        qword_1ED661818 = &ggl::texturedExtendedShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedExtendedShaderFragmentFunctionDescriptor(v240);
        qword_1ED661820 = &ggl::texturedExtendedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::styledTexturedShaderVertexFunctionDescriptor(v241);
        qword_1ED661828 = &ggl::styledTexturedShaderVertexFunctionDescriptor(void)::ref;
        ggl::styledTexturedShaderFragmentFunctionDescriptor(v242);
        qword_1ED661830 = &ggl::styledTexturedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::screenTexturedQuadShaderVertexFunctionDescriptor(v243);
        qword_1ED661838 = &ggl::screenTexturedQuadShaderVertexFunctionDescriptor(void)::ref;
        ggl::screenTexturedQuadShaderFragmentFunctionDescriptor(v244);
        qword_1ED661840 = &ggl::screenTexturedQuadShaderFragmentFunctionDescriptor(void)::ref;
        ggl::poleTexturedBlendShaderVertexFunctionDescriptor(v245);
        qword_1ED661848 = &ggl::poleTexturedBlendShaderVertexFunctionDescriptor(void)::ref;
        ggl::poleTexturedBlendShaderFragmentFunctionDescriptor(v246);
        qword_1ED661850 = &ggl::poleTexturedBlendShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedInnerShadowRibbonShaderVertexFunctionDescriptor(v247);
        qword_1ED661858 = &ggl::texturedInnerShadowRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedInnerShadowRibbonShaderFragmentFunctionDescriptor(v248);
        qword_1ED661860 = &ggl::texturedInnerShadowRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedSolidRibbonShaderVertexFunctionDescriptor(v249);
        qword_1ED661868 = &ggl::texturedSolidRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedSolidRibbonShaderFragmentFunctionDescriptor(v250);
        qword_1ED661870 = &ggl::texturedSolidRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::textureWithReverseAlphaShaderVertexFunctionDescriptor(v251);
        qword_1ED661878 = &ggl::textureWithReverseAlphaShaderVertexFunctionDescriptor(void)::ref;
        ggl::textureWithReverseAlphaShaderFragmentFunctionDescriptor(v252);
        qword_1ED661880 = &ggl::textureWithReverseAlphaShaderFragmentFunctionDescriptor(void)::ref;
        ggl::trafficGlowShaderVertexFunctionDescriptor(v253);
        qword_1ED661888 = &ggl::trafficGlowShaderVertexFunctionDescriptor(void)::ref;
        ggl::trafficGlowShaderFragmentFunctionDescriptor(v254);
        qword_1ED661890 = &ggl::trafficGlowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::transitLineRibbonShaderVertexFunctionDescriptor(v255);
        qword_1ED661898 = &ggl::transitLineRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::transitLineRibbonShaderFragmentFunctionDescriptor(v256);
        qword_1ED6618A0 = &ggl::transitLineRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::patternedTransitLineRibbonShaderVertexFunctionDescriptor(v257);
        qword_1ED6618A8 = &ggl::patternedTransitLineRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::patternedTransitLineRibbonShaderFragmentFunctionDescriptor(v258);
        qword_1ED6618B0 = &ggl::patternedTransitLineRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::transitNodeColorizedShaderVertexFunctionDescriptor(v259);
        qword_1ED6618B8 = &ggl::transitNodeColorizedShaderVertexFunctionDescriptor(void)::ref;
        ggl::transitNodeColorizedShaderFragmentFunctionDescriptor(v260);
        qword_1ED6618C0 = &ggl::transitNodeColorizedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::transitNodeRGBShaderVertexFunctionDescriptor(v261);
        qword_1ED6618C8 = &ggl::transitNodeRGBShaderVertexFunctionDescriptor(void)::ref;
        ggl::transitNodeRGBShaderFragmentFunctionDescriptor(v262);
        qword_1ED6618D0 = &ggl::transitNodeRGBShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueWallShaderVertexFunctionDescriptor(v263);
        qword_1ED6618D8 = &ggl::venueWallShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueWallShaderFragmentFunctionDescriptor(v264);
        qword_1ED6618E0 = &ggl::venueWallShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueWallTopShaderVertexFunctionDescriptor(v265);
        qword_1ED6618E8 = &ggl::venueWallTopShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueWallTopShaderFragmentFunctionDescriptor(v266);
        qword_1ED6618F0 = &ggl::venueWallTopShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueWallEndCapShaderVertexFunctionDescriptor(v267);
        qword_1ED6618F8 = &ggl::venueWallEndCapShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueWallEndCapShaderFragmentFunctionDescriptor(v268);
        qword_1ED661900 = &ggl::venueWallEndCapShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueWallShadowShaderVertexFunctionDescriptor(v269);
        qword_1ED661908 = &ggl::venueWallShadowShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueWallShadowShaderFragmentFunctionDescriptor(v270);
        qword_1ED661910 = &ggl::venueWallShadowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::horizontalVenue3DStrokeShaderVertexFunctionDescriptor(v271);
        qword_1ED661918 = &ggl::horizontalVenue3DStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::horizontalVenue3DStrokeShaderFragmentFunctionDescriptor(v272);
        qword_1ED661920 = &ggl::horizontalVenue3DStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::verticalVenue3DStrokeShaderVertexFunctionDescriptor(v273);
        qword_1ED661928 = &ggl::verticalVenue3DStrokeShaderVertexFunctionDescriptor(void)::ref;
        ggl::verticalVenue3DStrokeShaderFragmentFunctionDescriptor(v274);
        qword_1ED661930 = &ggl::verticalVenue3DStrokeShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueOpenToBelowShadowAlphaShaderVertexFunctionDescriptor(v275);
        qword_1ED661938 = &ggl::venueOpenToBelowShadowAlphaShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueOpenToBelowShadowAlphaShaderFragmentFunctionDescriptor(v276);
        qword_1ED661940 = &ggl::venueOpenToBelowShadowAlphaShaderFragmentFunctionDescriptor(void)::ref;
        ggl::venueOpenToBelowShadowShaderVertexFunctionDescriptor(v277);
        qword_1ED661948 = &ggl::venueOpenToBelowShadowShaderVertexFunctionDescriptor(void)::ref;
        ggl::venueOpenToBelowShadowShaderFragmentFunctionDescriptor(v278);
        qword_1ED661950 = &ggl::venueOpenToBelowShadowShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciTrafficShaderVertexFunctionDescriptor(v279);
        qword_1ED661958 = &ggl::daVinciTrafficShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciTrafficShaderFragmentFunctionDescriptor(v280);
        qword_1ED661960 = &ggl::daVinciTrafficShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciDecalShaderVertexFunctionDescriptor(v281);
        qword_1ED661968 = &ggl::daVinciDecalShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciDecalShaderFragmentFunctionDescriptor(v282);
        qword_1ED661970 = &ggl::daVinciDecalShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciGroundShaderVertexFunctionDescriptor(v283);
        qword_1ED661978 = &ggl::daVinciGroundShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciGroundShaderFragmentFunctionDescriptor(v284);
        qword_1ED661980 = &ggl::daVinciGroundShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciGroundNotCompressedShaderVertexFunctionDescriptor(v285);
        qword_1ED661988 = &ggl::daVinciGroundNotCompressedShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciGroundNotCompressedShaderFragmentFunctionDescriptor(v286);
        qword_1ED661990 = &ggl::daVinciGroundNotCompressedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciGroundDepthShaderVertexFunctionDescriptor(v287);
        qword_1ED661998 = &ggl::daVinciGroundDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciGroundDepthShaderFragmentFunctionDescriptor(v288);
        qword_1ED6619A0 = &ggl::daVinciGroundDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciRibbonShaderVertexFunctionDescriptor(v289);
        qword_1ED6619A8 = &ggl::daVinciRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciRibbonShaderFragmentFunctionDescriptor(v290);
        qword_1ED6619B0 = &ggl::daVinciRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::daVinciGroundShadowMapShaderVertexFunctionDescriptor(v291);
        qword_1ED6619B8 = &ggl::daVinciGroundShadowMapShaderVertexFunctionDescriptor(void)::ref;
        ggl::daVinciGroundShadowMapShaderFragmentFunctionDescriptor(v292);
        qword_1ED6619C0 = &ggl::daVinciGroundShadowMapShaderFragmentFunctionDescriptor(void)::ref;
        ggl::linearDepthShaderVertexFunctionDescriptor(v293);
        qword_1ED6619C8 = &ggl::linearDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::linearDepthShaderFragmentFunctionDescriptor(v294);
        qword_1ED6619D0 = &ggl::linearDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::packedLinearDepthShaderVertexFunctionDescriptor(v295);
        qword_1ED6619D8 = &ggl::packedLinearDepthShaderVertexFunctionDescriptor(void)::ref;
        ggl::packedLinearDepthShaderFragmentFunctionDescriptor(v296);
        qword_1ED6619E0 = &ggl::packedLinearDepthShaderFragmentFunctionDescriptor(void)::ref;
        ggl::texturedAnimatedRibbonShaderVertexFunctionDescriptor(v297);
        qword_1ED6619E8 = &ggl::texturedAnimatedRibbonShaderVertexFunctionDescriptor(void)::ref;
        ggl::texturedAnimatedRibbonShaderFragmentFunctionDescriptor(v298);
        qword_1ED6619F0 = &ggl::texturedAnimatedRibbonShaderFragmentFunctionDescriptor(void)::ref;
        ggl::flyoverOverlayShaderVertexFunctionDescriptor(v299);
        qword_1ED6619F8 = &ggl::flyoverOverlayShaderVertexFunctionDescriptor(void)::ref;
        ggl::flyoverOverlayShaderFragmentFunctionDescriptor(v300);
        qword_1ED661A00 = &ggl::flyoverOverlayShaderFragmentFunctionDescriptor(void)::ref;
        ggl::globeTexturedShaderVertexFunctionDescriptor(v301);
        qword_1ED661A08 = &ggl::globeTexturedShaderVertexFunctionDescriptor(void)::ref;
        ggl::globeTexturedShaderFragmentFunctionDescriptor(v302);
        qword_1ED661A10 = &ggl::globeTexturedShaderFragmentFunctionDescriptor(void)::ref;
        ggl::clearTextureComputeShaderFunctionDescriptor(v303);
        qword_1ED661A18 = &ggl::clearTextureComputeShaderFunctionDescriptor(void)::ref;
        ggl::downscaleTextureComputeShaderFunctionDescriptor(v304);
        qword_1ED661A20 = &ggl::downscaleTextureComputeShaderFunctionDescriptor(void)::ref;
        ggl::resetTileShaderFunctionDescriptor(v305);
        qword_1ED661A28 = &ggl::resetTileShaderFunctionDescriptor(void)::ref;
      }
    }

    qword_1ED6702A0 = &StandardLibraryShaderFunctions(void)::desc;
    *algn_1ED6702A8 = 305;
    {
      if (v306)
      {
        {
          if (v306)
          {
            ggl::AnimatableTextureShader::typedReflection(void)::ref = "AnimatableTextureShader";
            ggl::animatableTextureShaderVertexFunctionDescriptor(v306);
            qword_1ED66BD10 = &ggl::animatableTextureShaderVertexFunctionDescriptor(void)::ref;
            dword_1ED66BD18 = -560382588;
            ggl::animatableTextureShaderFragmentFunctionDescriptor(v455);
            qword_1ED66BD20 = &ggl::animatableTextureShaderFragmentFunctionDescriptor(void)::ref;
            dword_1ED66BD28 = 1203910900;
            qword_1ED66BD30 = ggl::animatableTextureShaderShaderConstants(void)::ref;
            unk_1ED66BD38 = 2;
            qword_1ED66BD40 = ggl::animatableTextureShaderShaderTextures(void)::ref;
            unk_1ED66BD48 = 2;
            qword_1ED66BD50 = ggl::animatableTextureShaderShaderSamplers(void)::ref;
            unk_1ED66BD58 = 2;
          }
        }

        StandardLibraryShaders(void)::desc = &ggl::AnimatableTextureShader::typedReflection(void)::ref;
        ggl::ARMeshShader::typedReflection(v306);
        qword_1ED661BD0 = &ggl::ARMeshShader::typedReflection(void)::ref;
        ggl::ARDepthMeshShader::typedReflection(v307);
        qword_1ED661BD8 = &ggl::ARDepthMeshShader::typedReflection(void)::ref;
        ggl::ARGroundShadowShader::typedReflection(v308);
        qword_1ED661BE0 = &ggl::ARGroundShadowShader::typedReflection(void)::ref;
        ggl::ARCameraImageShader::typedReflection(v309);
        qword_1ED661BE8 = &ggl::ARCameraImageShader::typedReflection(void)::ref;
        ggl::BuildingFacadeDepthShader::typedReflection(v310);
        qword_1ED661BF0 = &ggl::BuildingFacadeDepthShader::typedReflection(void)::ref;
        ggl::BuildingFlatShader::typedReflection(v311);
        qword_1ED661BF8 = &ggl::BuildingFlatShader::typedReflection(void)::ref;
        ggl::BuildingFlatStrokeShader::typedReflection(v312);
        qword_1ED661C00 = &ggl::BuildingFlatStrokeShader::typedReflection(void)::ref;
        ggl::BuildingPointyRoofDepthShader::typedReflection(v313);
        qword_1ED661C08 = &ggl::BuildingPointyRoofDepthShader::typedReflection(void)::ref;
        ggl::BuildingShadowShader::typedReflection(v314);
        qword_1ED661C10 = &ggl::BuildingShadowShader::typedReflection(void)::ref;
        ggl::BuildingTopDepthShader::typedReflection(v315);
        qword_1ED661C18 = &ggl::BuildingTopDepthShader::typedReflection(void)::ref;
        ggl::CircleShader::typedReflection(v316);
        qword_1ED661C20 = &ggl::CircleShader::typedReflection(void)::ref;
        ggl::CircleMultiStrokeShader::typedReflection(v317);
        qword_1ED661C28 = &ggl::CircleMultiStrokeShader::typedReflection(void)::ref;
        ggl::ClutShader::typedReflection(v318);
        qword_1ED661C30 = &ggl::ClutShader::typedReflection(void)::ref;
        ggl::ColorGlyphWithNormalHaloShader::typedReflection(v319);
        qword_1ED661C38 = &ggl::ColorGlyphWithNormalHaloShader::typedReflection(void)::ref;
        ggl::InstancedDebugShader::typedReflection(v320);
        qword_1ED661C40 = &ggl::InstancedDebugShader::typedReflection(void)::ref;
        ggl::DebugShader::typedReflection(v321);
        qword_1ED661C48 = &ggl::DebugShader::typedReflection(void)::ref;
        ggl::DebugExtendedShader::typedReflection(v322);
        qword_1ED661C50 = &ggl::DebugExtendedShader::typedReflection(void)::ref;
        ggl::DebugLineShader::typedReflection(v323);
        qword_1ED661C58 = &ggl::DebugLineShader::typedReflection(void)::ref;
        ggl::HillshadeShader::typedReflection(v324);
        qword_1ED661C60 = &ggl::HillshadeShader::typedReflection(void)::ref;
        ggl::DiffuseBuildingShader::typedReflection(v325);
        qword_1ED661C68 = &ggl::DiffuseBuildingShader::typedReflection(void)::ref;
        ggl::DiffuseBuildingPointyRoofShader::typedReflection(v326);
        qword_1ED661C70 = &ggl::DiffuseBuildingPointyRoofShader::typedReflection(void)::ref;
        ggl::DiffuseBuildingTopShader::typedReflection(v327);
        qword_1ED661C78 = &ggl::DiffuseBuildingTopShader::typedReflection(void)::ref;
        ggl::DiffuseLandmarkShader::typedReflection(v328);
        qword_1ED661C80 = &ggl::DiffuseLandmarkShader::typedReflection(void)::ref;
        ggl::ElevatedFillColorShader::typedReflection(v329);
        qword_1ED661C88 = &ggl::ElevatedFillColorShader::typedReflection(void)::ref;
        ggl::ElevatedFillNoWidthClipColorShader::typedReflection(v330);
        qword_1ED661C90 = &ggl::ElevatedFillNoWidthClipColorShader::typedReflection(void)::ref;
        ggl::ElevatedStrokeColorShader::typedReflection(v331);
        qword_1ED661C98 = &ggl::ElevatedStrokeColorShader::typedReflection(void)::ref;
        ggl::ElevatedStrokeColorWithDistanceShader::typedReflection(v332);
        qword_1ED661CA0 = &ggl::ElevatedStrokeColorWithDistanceShader::typedReflection(void)::ref;
        ggl::FogShader::typedReflection(v333);
        qword_1ED661CA8 = &ggl::FogShader::typedReflection(void)::ref;
        ggl::FoggedDiffuseBuildingShader::typedReflection(v334);
        qword_1ED661CB0 = &ggl::FoggedDiffuseBuildingShader::typedReflection(void)::ref;
        ggl::FoggedDiffuseBuildingTopShader::typedReflection(v335);
        qword_1ED661CB8 = &ggl::FoggedDiffuseBuildingTopShader::typedReflection(void)::ref;
        ggl::FoggedDiffuseLandmarkShader::typedReflection(v336);
        qword_1ED661CC0 = &ggl::FoggedDiffuseLandmarkShader::typedReflection(void)::ref;
        ggl::FoggedSpecularBuildingShader::typedReflection(v337);
        qword_1ED661CC8 = &ggl::FoggedSpecularBuildingShader::typedReflection(void)::ref;
        ggl::FoggedSpecularBuildingTopShader::typedReflection(v338);
        qword_1ED661CD0 = &ggl::FoggedSpecularBuildingTopShader::typedReflection(void)::ref;
        ggl::FoggedSpecularLandmarkShader::typedReflection(v339);
        qword_1ED661CD8 = &ggl::FoggedSpecularLandmarkShader::typedReflection(void)::ref;
        ggl::GlobeAtmosphereShader::typedReflection(v340);
        qword_1ED661CE0 = &ggl::GlobeAtmosphereShader::typedReflection(void)::ref;
        ggl::GlobeStarsShader::typedReflection(v341);
        qword_1ED661CE8 = &ggl::GlobeStarsShader::typedReflection(void)::ref;
        ggl::GlowShader::typedReflection(v342);
        qword_1ED661CF0 = &ggl::GlowShader::typedReflection(void)::ref;
        ggl::GlowAlphaShader::typedReflection(v343);
        qword_1ED661CF8 = &ggl::GlowAlphaShader::typedReflection(void)::ref;
        ggl::Glyph3dShader::typedReflection(v344);
        qword_1ED661D00 = &ggl::Glyph3dShader::typedReflection(void)::ref;
        ggl::Glyph3dLowPrecisionShader::typedReflection(v345);
        qword_1ED661D08 = &ggl::Glyph3dLowPrecisionShader::typedReflection(void)::ref;
        ggl::Glyph3dLowPrecisionHaloShader::typedReflection(v346);
        qword_1ED661D10 = &ggl::Glyph3dLowPrecisionHaloShader::typedReflection(void)::ref;
        ggl::Glyph3dRaymarchShader::typedReflection(v347);
        qword_1ED661D18 = &ggl::Glyph3dRaymarchShader::typedReflection(void)::ref;
        ggl::GlyphWithNormalHaloShader::typedReflection(v348);
        qword_1ED661D20 = &ggl::GlyphWithNormalHaloShader::typedReflection(void)::ref;
        ggl::GradientPolylineOverlayFillShader::typedReflection(v349);
        qword_1ED661D28 = &ggl::GradientPolylineOverlayFillShader::typedReflection(void)::ref;
        ggl::GradientPolylineOverlayAlphaShader::typedReflection(v350);
        qword_1ED661D30 = &ggl::GradientPolylineOverlayAlphaShader::typedReflection(void)::ref;
        ggl::GradientPolylineOverlayAlphaFillShader::typedReflection(v351);
        qword_1ED661D38 = &ggl::GradientPolylineOverlayAlphaFillShader::typedReflection(void)::ref;
        ggl::GridShader::typedReflection(v352);
        qword_1ED661D40 = &ggl::GridShader::typedReflection(void)::ref;
        ggl::GridUVShader::typedReflection(v353);
        qword_1ED661D48 = &ggl::GridUVShader::typedReflection(void)::ref;
        ggl::IconShader::typedReflection(v354);
        qword_1ED661D50 = &ggl::IconShader::typedReflection(void)::ref;
        ggl::MaskedIconShader::typedReflection(v355);
        qword_1ED661D58 = &ggl::MaskedIconShader::typedReflection(void)::ref;
        ggl::WaypointShader::typedReflection(v356);
        qword_1ED661D60 = &ggl::WaypointShader::typedReflection(void)::ref;
        ggl::ShadowShader::typedReflection(v357);
        qword_1ED661D68 = &ggl::ShadowShader::typedReflection(void)::ref;
        ggl::ImageCopyShader::typedReflection(v358);
        qword_1ED661D70 = &ggl::ImageCopyShader::typedReflection(void)::ref;
        ggl::LandmarkDepthShader::typedReflection(v359);
        qword_1ED661D78 = &ggl::LandmarkDepthShader::typedReflection(void)::ref;
        ggl::LandmarkFlatShader::typedReflection(v360);
        qword_1ED661D80 = &ggl::LandmarkFlatShader::typedReflection(void)::ref;
        ggl::LineShader::typedReflection(v361);
        qword_1ED661D88 = &ggl::LineShader::typedReflection(void)::ref;
        ggl::ManeuverPointShader::typedReflection(v362);
        qword_1ED661D90 = &ggl::ManeuverPointShader::typedReflection(void)::ref;
        ggl::OcclusionLineShader::typedReflection(v363);
        qword_1ED661D98 = &ggl::OcclusionLineShader::typedReflection(void)::ref;
        ggl::OptimizedTrafficShader::typedReflection(v364);
        qword_1ED661DA0 = &ggl::OptimizedTrafficShader::typedReflection(void)::ref;
        ggl::OuterShadowRibbonShader::typedReflection(v365);
        qword_1ED661DA8 = &ggl::OuterShadowRibbonShader::typedReflection(void)::ref;
        ggl::PolygonOverlayFillShader::typedReflection(v366);
        qword_1ED661DB0 = &ggl::PolygonOverlayFillShader::typedReflection(void)::ref;
        ggl::PolygonOverlayAntialiasShader::typedReflection(v367);
        qword_1ED661DB8 = &ggl::PolygonOverlayAntialiasShader::typedReflection(void)::ref;
        ggl::MaskingOverlayFillShader::typedReflection(v368);
        qword_1ED661DC0 = &ggl::MaskingOverlayFillShader::typedReflection(void)::ref;
        ggl::MaskingOverlayMaskingShader::typedReflection(v369);
        qword_1ED661DC8 = &ggl::MaskingOverlayMaskingShader::typedReflection(void)::ref;
        ggl::PatternedRibbonShader::typedReflection(v370);
        qword_1ED661DD0 = &ggl::PatternedRibbonShader::typedReflection(void)::ref;
        ggl::WriteStencilPatternedRibbonShader::typedReflection(v371);
        qword_1ED661DD8 = &ggl::WriteStencilPatternedRibbonShader::typedReflection(void)::ref;
        ggl::PolygonAnimatableFillShader::typedReflection(v372);
        qword_1ED661DE0 = &ggl::PolygonAnimatableFillShader::typedReflection(void)::ref;
        ggl::PolygonAnimatableStrokeShader::typedReflection(v373);
        qword_1ED661DE8 = &ggl::PolygonAnimatableStrokeShader::typedReflection(void)::ref;
        ggl::PolygonFillShader::typedReflection(v374);
        qword_1ED661DF0 = &ggl::PolygonFillShader::typedReflection(void)::ref;
        ggl::PolygonShadowedStrokeShader::typedReflection(v375);
        qword_1ED661DF8 = &ggl::PolygonShadowedStrokeShader::typedReflection(void)::ref;
        ggl::PolygonSolidFillShader::typedReflection(v376);
        qword_1ED661E00 = &ggl::PolygonSolidFillShader::typedReflection(void)::ref;
        ggl::PolygonSolidFillS2Shader::typedReflection(v377);
        qword_1ED661E08 = &ggl::PolygonSolidFillS2Shader::typedReflection(void)::ref;
        ggl::PolygonStrokeShader::typedReflection(v378);
        qword_1ED661E10 = &ggl::PolygonStrokeShader::typedReflection(void)::ref;
        ggl::PolygonStrokeMaskShader::typedReflection(v379);
        qword_1ED661E18 = &ggl::PolygonStrokeMaskShader::typedReflection(void)::ref;
        ggl::HillshadeFillMaskShader::typedReflection(v380);
        qword_1ED661E20 = &ggl::HillshadeFillMaskShader::typedReflection(void)::ref;
        ggl::PolylineOverlayFillShader::typedReflection(v381);
        qword_1ED661E28 = &ggl::PolylineOverlayFillShader::typedReflection(void)::ref;
        ggl::PolylineOverlayAlphaShader::typedReflection(v382);
        qword_1ED661E30 = &ggl::PolylineOverlayAlphaShader::typedReflection(void)::ref;
        ggl::PolylineOverlayAlphaFillShader::typedReflection(v383);
        qword_1ED661E38 = &ggl::PolylineOverlayAlphaFillShader::typedReflection(void)::ref;
        ggl::PointShader::typedReflection(v384);
        qword_1ED661E40 = &ggl::PointShader::typedReflection(void)::ref;
        ggl::PointExtendedShader::typedReflection(v385);
        qword_1ED661E48 = &ggl::PointExtendedShader::typedReflection(void)::ref;
        ggl::PrefilteredLineShader::typedReflection(v386);
        qword_1ED661E50 = &ggl::PrefilteredLineShader::typedReflection(void)::ref;
        {
          if (v387)
          {
            ggl::RenderTargetBlendShader::typedReflection(void)::ref = "RenderTargetBlendShader";
            ggl::renderTargetBlendShaderVertexFunctionDescriptor(v387);
            qword_1ED66BBB0 = &ggl::renderTargetBlendShaderVertexFunctionDescriptor(void)::ref;
            dword_1ED66BBB8 = 1122040860;
            ggl::renderTargetBlendShaderFragmentFunctionDescriptor(v456);
            qword_1ED66BBC0 = &ggl::renderTargetBlendShaderFragmentFunctionDescriptor(void)::ref;
            dword_1ED66BBC8 = 305747641;
            qword_1ED66BBD0 = ggl::renderTargetBlendShaderShaderConstants(void)::ref;
            unk_1ED66BBD8 = 1;
            qword_1ED66BBE0 = &ggl::renderTargetBlendShaderShaderTextures(void)::ref;
            unk_1ED66BBE8 = 1;
            qword_1ED66BBF0 = &ggl::renderTargetBlendShaderShaderSamplers(void)::ref;
            unk_1ED66BBF8 = 1;
          }
        }

        qword_1ED661E58 = &ggl::RenderTargetBlendShader::typedReflection(void)::ref;
        ggl::RouteLineShader::typedReflection(v387);
        qword_1ED661E60 = &ggl::RouteLineShader::typedReflection(void)::ref;
        ggl::PatternedRouteLineShader::typedReflection(v388);
        qword_1ED661E68 = &ggl::PatternedRouteLineShader::typedReflection(void)::ref;
        ggl::RouteLineMaskShader::typedReflection(v389);
        qword_1ED661E70 = &ggl::RouteLineMaskShader::typedReflection(void)::ref;
        ggl::RouteLineAlphaResetShader::typedReflection(v390);
        qword_1ED661E78 = &ggl::RouteLineAlphaResetShader::typedReflection(void)::ref;
        ggl::RouteLineArrowShader::typedReflection(v391);
        qword_1ED661E80 = &ggl::RouteLineArrowShader::typedReflection(void)::ref;
        ggl::RouteLineTrafficShader::typedReflection(v392);
        qword_1ED661E88 = &ggl::RouteLineTrafficShader::typedReflection(void)::ref;
        ggl::SinglePassRouteLineShader::typedReflection(v393);
        qword_1ED661E90 = &ggl::SinglePassRouteLineShader::typedReflection(void)::ref;
        ggl::DottedRouteLineShader::typedReflection(v394);
        qword_1ED661E98 = &ggl::DottedRouteLineShader::typedReflection(void)::ref;
        ggl::SDFGlyphShader::typedReflection(v395);
        qword_1ED661EA0 = &ggl::SDFGlyphShader::typedReflection(void)::ref;
        ggl::SDFGlyphHaloShader::typedReflection(v396);
        qword_1ED661EA8 = &ggl::SDFGlyphHaloShader::typedReflection(void)::ref;
        ggl::SDFGlyphSuperSampleShader::typedReflection(v397);
        qword_1ED661EB0 = &ggl::SDFGlyphSuperSampleShader::typedReflection(void)::ref;
        {
          if (v398)
          {
            ggl::SimpleGridShader::typedReflection(void)::ref = "SimpleGridShader";
            ggl::simpleGridShaderVertexFunctionDescriptor(v398);
            qword_1ED66D388 = &ggl::simpleGridShaderVertexFunctionDescriptor(void)::ref;
            dword_1ED66D390 = 95198640;
            ggl::simpleGridShaderFragmentFunctionDescriptor(v457);
            qword_1ED66D398 = &ggl::simpleGridShaderFragmentFunctionDescriptor(void)::ref;
            dword_1ED66D3A0 = 708752350;
            qword_1ED66D3A8 = ggl::simpleGridShaderShaderConstants(void)::ref;
            unk_1ED66D3B0 = 3;
            qword_1ED66D3B8 = &ggl::simpleGridShaderShaderTextures(void)::ref;
            unk_1ED66D3C0 = 0;
            qword_1ED66D3C8 = &ggl::simpleGridShaderShaderSamplers(void)::ref;
            unk_1ED66D3D0 = 0;
          }
        }

        qword_1ED661EB8 = &ggl::SimpleGridShader::typedReflection(void)::ref;
        ggl::SkyShader::typedReflection(v398);
        qword_1ED661EC0 = &ggl::SkyShader::typedReflection(void)::ref;
        ggl::SolidRibbonShader::typedReflection(v399);
        qword_1ED661EC8 = &ggl::SolidRibbonShader::typedReflection(void)::ref;
        ggl::SolidTrafficShader::typedReflection(v400);
        qword_1ED661ED0 = &ggl::SolidTrafficShader::typedReflection(void)::ref;
        ggl::SolidMaskedTrafficShader::typedReflection(v401);
        qword_1ED661ED8 = &ggl::SolidMaskedTrafficShader::typedReflection(void)::ref;
        ggl::SpecularBuildingShader::typedReflection(v402);
        qword_1ED661EE0 = &ggl::SpecularBuildingShader::typedReflection(void)::ref;
        ggl::SpecularBuildingPointyRoofShader::typedReflection(v403);
        qword_1ED661EE8 = &ggl::SpecularBuildingPointyRoofShader::typedReflection(void)::ref;
        ggl::SpecularBuildingTopShader::typedReflection(v404);
        qword_1ED661EF0 = &ggl::SpecularBuildingTopShader::typedReflection(void)::ref;
        ggl::SpecularLandmarkShader::typedReflection(v405);
        qword_1ED661EF8 = &ggl::SpecularLandmarkShader::typedReflection(void)::ref;
        ggl::StandardPostchainCompositeShader::typedReflection(v406);
        qword_1ED661F00 = &ggl::StandardPostchainCompositeShader::typedReflection(void)::ref;
        ggl::StandardPostchainSplitFrameShader::typedReflection(v407);
        qword_1ED661F08 = &ggl::StandardPostchainSplitFrameShader::typedReflection(void)::ref;
        ggl::StandardPostchainDownsampleCoCShader::typedReflection(v408);
        qword_1ED661F10 = &ggl::StandardPostchainDownsampleCoCShader::typedReflection(void)::ref;
        ggl::StandardPostchainBGBlurShader::typedReflection(v409);
        qword_1ED661F18 = &ggl::StandardPostchainBGBlurShader::typedReflection(void)::ref;
        ggl::StandardPostchainFGBlurShader::typedReflection(v410);
        qword_1ED661F20 = &ggl::StandardPostchainFGBlurShader::typedReflection(void)::ref;
        ggl::StandardPostchainTentBlurShader::typedReflection(v411);
        qword_1ED661F28 = &ggl::StandardPostchainTentBlurShader::typedReflection(void)::ref;
        ggl::StandardPostchainDownsampleDepthShader::typedReflection(v412);
        qword_1ED661F30 = &ggl::StandardPostchainDownsampleDepthShader::typedReflection(void)::ref;
        ggl::StandardPostchainSSAOBlurShader::typedReflection(v413);
        qword_1ED661F38 = &ggl::StandardPostchainSSAOBlurShader::typedReflection(void)::ref;
        ggl::StandardPostchainSSAOUpsampleShader::typedReflection(v414);
        qword_1ED661F40 = &ggl::StandardPostchainSSAOUpsampleShader::typedReflection(void)::ref;
        ggl::StandardPostchainSSAOShader::typedReflection(v415);
        qword_1ED661F48 = &ggl::StandardPostchainSSAOShader::typedReflection(void)::ref;
        {
          if (v416)
          {
            ggl::StyleTextureRibbonShader::typedReflection(void)::ref = "StyleTextureRibbonShader";
            ggl::styleTextureRibbonShaderVertexFunctionDescriptor(v416);
            qword_1ED66B828 = &ggl::styleTextureRibbonShaderVertexFunctionDescriptor(void)::ref;
            dword_1ED66B830 = -1656014117;
            ggl::styleTextureRibbonShaderFragmentFunctionDescriptor(v458);
            qword_1ED66B838 = &ggl::styleTextureRibbonShaderFragmentFunctionDescriptor(void)::ref;
            dword_1ED66B840 = -461000930;
            qword_1ED66B848 = ggl::styleTextureRibbonShaderShaderConstants(void)::ref;
            unk_1ED66B850 = 2;
            qword_1ED66B858 = ggl::styleTextureRibbonShaderShaderTextures(void)::ref;
            unk_1ED66B860 = 2;
            qword_1ED66B868 = ggl::styleTextureRibbonShaderShaderSamplers(void)::ref;
            unk_1ED66B870 = 2;
          }
        }

        qword_1ED661F50 = &ggl::StyleTextureRibbonShader::typedReflection(void)::ref;
        ggl::TextureAlphaMaskShader::typedReflection(v416);
        qword_1ED661F58 = &ggl::TextureAlphaMaskShader::typedReflection(void)::ref;
        ggl::TexturedShader::typedReflection(v417);
        qword_1ED661F60 = &ggl::TexturedShader::typedReflection(void)::ref;
        ggl::TexturedDrapedSRGBBlendShader::typedReflection(v418);
        qword_1ED661F68 = &ggl::TexturedDrapedSRGBBlendShader::typedReflection(void)::ref;
        ggl::TexturedSRGBBlendShader::typedReflection(v419);
        qword_1ED661F70 = &ggl::TexturedSRGBBlendShader::typedReflection(void)::ref;
        ggl::TexturedColormappedSRGBTexturedShader::typedReflection(v420);
        qword_1ED661F78 = &ggl::TexturedColormappedSRGBTexturedShader::typedReflection(void)::ref;
        ggl::TexturedExtendedShader::typedReflection(v421);
        qword_1ED661F80 = &ggl::TexturedExtendedShader::typedReflection(void)::ref;
        {
          if (v422)
          {
            ggl::StyledTexturedShader::typedReflection(void)::ref = "StyledTexturedShader";
            ggl::styledTexturedShaderVertexFunctionDescriptor(v422);
            qword_1ED66C4F8 = &ggl::styledTexturedShaderVertexFunctionDescriptor(void)::ref;
            dword_1ED66C500 = -131355983;
            ggl::styledTexturedShaderFragmentFunctionDescriptor(v459);
            qword_1ED66C508 = &ggl::styledTexturedShaderFragmentFunctionDescriptor(void)::ref;
            dword_1ED66C510 = -1952916969;
            qword_1ED66C518 = ggl::styledTexturedShaderShaderConstants(void)::ref;
            unk_1ED66C520 = 2;
            qword_1ED66C528 = ggl::styledTexturedShaderShaderTextures(void)::ref;
            unk_1ED66C530 = 2;
            qword_1ED66C538 = ggl::styledTexturedShaderShaderSamplers(void)::ref;
            unk_1ED66C540 = 2;
          }
        }

        qword_1ED661F88 = &ggl::StyledTexturedShader::typedReflection(void)::ref;
        ggl::ScreenTexturedQuadShader::typedReflection(v422);
        qword_1ED661F90 = &ggl::ScreenTexturedQuadShader::typedReflection(void)::ref;
        ggl::PoleTexturedBlendShader::typedReflection(v423);
        qword_1ED661F98 = &ggl::PoleTexturedBlendShader::typedReflection(void)::ref;
        ggl::TexturedInnerShadowRibbonShader::typedReflection(v424);
        qword_1ED661FA0 = &ggl::TexturedInnerShadowRibbonShader::typedReflection(void)::ref;
        ggl::TexturedSolidRibbonShader::typedReflection(v425);
        qword_1ED661FA8 = &ggl::TexturedSolidRibbonShader::typedReflection(void)::ref;
        ggl::TextureWithReverseAlphaShader::typedReflection(v426);
        qword_1ED661FB0 = &ggl::TextureWithReverseAlphaShader::typedReflection(void)::ref;
        ggl::TrafficGlowShader::typedReflection(v427);
        qword_1ED661FB8 = &ggl::TrafficGlowShader::typedReflection(void)::ref;
        ggl::TransitLineRibbonShader::typedReflection(v428);
        qword_1ED661FC0 = &ggl::TransitLineRibbonShader::typedReflection(void)::ref;
        ggl::PatternedTransitLineRibbonShader::typedReflection(v429);
        qword_1ED661FC8 = &ggl::PatternedTransitLineRibbonShader::typedReflection(void)::ref;
        ggl::TransitNodeColorizedShader::typedReflection(v430);
        qword_1ED661FD0 = &ggl::TransitNodeColorizedShader::typedReflection(void)::ref;
        ggl::TransitNodeRGBShader::typedReflection(v431);
        qword_1ED661FD8 = &ggl::TransitNodeRGBShader::typedReflection(void)::ref;
        ggl::VenueWallShader::typedReflection(v432);
        qword_1ED661FE0 = &ggl::VenueWallShader::typedReflection(void)::ref;
        ggl::VenueWallTopShader::typedReflection(v433);
        qword_1ED661FE8 = &ggl::VenueWallTopShader::typedReflection(void)::ref;
        ggl::VenueWallEndCapShader::typedReflection(v434);
        qword_1ED661FF0 = &ggl::VenueWallEndCapShader::typedReflection(void)::ref;
        ggl::VenueWallShadowShader::typedReflection(v435);
        qword_1ED661FF8 = &ggl::VenueWallShadowShader::typedReflection(void)::ref;
        ggl::HorizontalVenue3DStrokeShader::typedReflection(v436);
        qword_1ED662000 = &ggl::HorizontalVenue3DStrokeShader::typedReflection(void)::ref;
        ggl::VerticalVenue3DStrokeShader::typedReflection(v437);
        qword_1ED662008 = &ggl::VerticalVenue3DStrokeShader::typedReflection(void)::ref;
        ggl::VenueOpenToBelowShadowAlphaShader::typedReflection(v438);
        qword_1ED662010 = &ggl::VenueOpenToBelowShadowAlphaShader::typedReflection(void)::ref;
        ggl::VenueOpenToBelowShadowShader::typedReflection(v439);
        qword_1ED662018 = &ggl::VenueOpenToBelowShadowShader::typedReflection(void)::ref;
        ggl::DaVinciTrafficShader::typedReflection(v440);
        qword_1ED662020 = &ggl::DaVinciTrafficShader::typedReflection(void)::ref;
        ggl::DaVinciDecalShader::typedReflection(v441);
        qword_1ED662028 = &ggl::DaVinciDecalShader::typedReflection(void)::ref;
        ggl::DaVinciGroundShader::typedReflection(v442);
        qword_1ED662030 = &ggl::DaVinciGroundShader::typedReflection(void)::ref;
        ggl::DaVinciGroundNotCompressedShader::typedReflection(v443);
        qword_1ED662038 = &ggl::DaVinciGroundNotCompressedShader::typedReflection(void)::ref;
        ggl::DaVinciGroundDepthShader::typedReflection(v444);
        qword_1ED662040 = &ggl::DaVinciGroundDepthShader::typedReflection(void)::ref;
        ggl::DaVinciRibbonShader::typedReflection(v445);
        qword_1ED662048 = &ggl::DaVinciRibbonShader::typedReflection(void)::ref;
        ggl::DaVinciGroundShadowMapShader::typedReflection(v446);
        qword_1ED662050 = &ggl::DaVinciGroundShadowMapShader::typedReflection(void)::ref;
        ggl::LinearDepthShader::typedReflection(v447);
        qword_1ED662058 = &ggl::LinearDepthShader::typedReflection(void)::ref;
        ggl::PackedLinearDepthShader::typedReflection(v448);
        qword_1ED662060 = &ggl::PackedLinearDepthShader::typedReflection(void)::ref;
        ggl::TexturedAnimatedRibbonShader::typedReflection(v449);
        qword_1ED662068 = &ggl::TexturedAnimatedRibbonShader::typedReflection(void)::ref;
        ggl::FlyoverOverlayShader::typedReflection(v450);
        qword_1ED662070 = &ggl::FlyoverOverlayShader::typedReflection(void)::ref;
        ggl::GlobeTexturedShader::typedReflection(v451);
        qword_1ED662078 = &ggl::GlobeTexturedShader::typedReflection(void)::ref;
      }
    }

    qword_1ED6702B0 = &StandardLibraryShaders(void)::desc;
    *algn_1ED6702B8 = 151;
    {
      if (v452)
      {
        ggl::clearTextureComputeShaderFunctionDescriptor(v452);
        StandardLibraryComputeShaders(void)::desc = ggl::clearTextureComputeShaderFunctionDescriptor(void)::ref;
        ggl::downscaleTextureComputeShaderFunctionDescriptor(v453);
        dword_1ED65F06C = ggl::downscaleTextureComputeShaderFunctionDescriptor(void)::ref;
      }
    }

    qword_1ED6702C0 = &StandardLibraryComputeShaders(void)::desc;
    *algn_1ED6702C8 = 2;
    {
      if (v454)
      {
        ggl::resetTileShaderFunctionDescriptor(v454);
        StandardLibraryTileShaders(void)::desc = ggl::resetTileShaderFunctionDescriptor(void)::ref;
      }
    }

    qword_1ED6702D0 = &StandardLibraryTileShaders(void)::desc;
    *algn_1ED6702D8 = 1;
    qword_1ED6702E0 = 0;
    unk_1ED6702E8 = 0;
  }
}

void ggl::aRMeshShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::aRMeshShaderVertexFunctionDescriptor(void)::ref = 447170558;
    qword_1ED65FC28 = "ARMeshShader";
    unk_1ED65FC30 = ggl::aRMeshShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65FC38 = 2;
    unk_1ED65FC40 = &ggl::aRMeshShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65FC48 = 3;
    unk_1ED65FC50 = &ggl::aRMeshShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65FC58 = 1;
    unk_1ED65FC60 = &ggl::aRMeshShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65FC68 = 0;
    unk_1ED65FC70 = &ggl::aRMeshShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65FC80 = 0;
    unk_1ED65FC88 = 0;
    qword_1ED65FC78 = 0;
  }
}

void ggl::animatableTextureShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::animatableTextureShaderFragmentFunctionDescriptor(void)::ref = 0x147C238F4;
    qword_1ED66FCE8 = "AnimatableTextureShader";
    unk_1ED66FCF0 = 0;
    qword_1ED66FCF8 = 0;
    unk_1ED66FD00 = &ggl::animatableTextureShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FD08 = 1;
    unk_1ED66FD10 = &ggl::animatableTextureShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FD18 = 0;
    unk_1ED66FD20 = &ggl::animatableTextureShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FD28 = 2;
    unk_1ED66FD30 = &ggl::animatableTextureShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FD40 = 0;
    unk_1ED66FD48 = 0;
    qword_1ED66FD38 = 2;
  }
}

void ggl::aRMeshShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::aRMeshShaderFragmentFunctionDescriptor(void)::ref = 0x122C2F594;
    qword_1ED65D1E8 = "ARMeshShader";
    unk_1ED65D1F0 = 0;
    qword_1ED65D1F8 = 0;
    unk_1ED65D200 = &ggl::aRMeshShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65D208 = 4;
    unk_1ED65D210 = &ggl::aRMeshShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65D218 = 0;
    unk_1ED65D220 = &ggl::aRMeshShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65D228 = 2;
    unk_1ED65D230 = &ggl::aRMeshShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65D240 = 0;
    unk_1ED65D248 = 0;
    qword_1ED65D238 = 2;
  }
}

void ggl::aRDepthMeshShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::aRDepthMeshShaderVertexFunctionDescriptor(void)::ref = 3671443066;
    qword_1ED662170 = "ARDepthMeshShader";
    unk_1ED662178 = ggl::aRDepthMeshShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED662180 = 2;
    unk_1ED662188 = &ggl::aRDepthMeshShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED662190 = 3;
    unk_1ED662198 = &ggl::aRDepthMeshShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED6621A0 = 1;
    unk_1ED6621A8 = &ggl::aRDepthMeshShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED6621B0 = 0;
    unk_1ED6621B8 = &ggl::aRDepthMeshShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6621C8 = 0;
    unk_1ED6621D0 = 0;
    qword_1ED6621C0 = 0;
  }
}

void ggl::aRDepthMeshShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::aRDepthMeshShaderFragmentFunctionDescriptor(void)::ref = 0x1E792DB1FLL;
    qword_1ED65CD50 = "ARDepthMeshShader";
    unk_1ED65CD58 = 0;
    qword_1ED65CD60 = 0;
    unk_1ED65CD68 = &ggl::aRDepthMeshShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CD70 = 0;
    unk_1ED65CD78 = &ggl::aRDepthMeshShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CD80 = 0;
    unk_1ED65CD88 = &ggl::aRDepthMeshShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CD90 = 0;
    unk_1ED65CD98 = &ggl::aRDepthMeshShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CDA8 = 0;
    unk_1ED65CDB0 = 0;
    qword_1ED65CDA0 = 0;
  }
}

void ggl::aRGroundShadowShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::aRGroundShadowShaderVertexFunctionDescriptor(void)::ref = 117864070;
    qword_1ED65CC68 = "ARGroundShadowShader";
    unk_1ED65CC70 = ggl::aRGroundShadowShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED65CC78 = 2;
    unk_1ED65CC80 = &ggl::aRGroundShadowShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CC88 = 3;
    unk_1ED65CC90 = &ggl::aRGroundShadowShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CC98 = 1;
    unk_1ED65CCA0 = &ggl::aRGroundShadowShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CCA8 = 0;
    unk_1ED65CCB0 = &ggl::aRGroundShadowShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CCC0 = 0;
    unk_1ED65CCC8 = 0;
    qword_1ED65CCB8 = 0;
  }
}

void ggl::aRGroundShadowShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::aRGroundShadowShaderFragmentFunctionDescriptor(void)::ref = 0x194FA1BF1;
    qword_1ED65CB08 = "ARGroundShadowShader";
    unk_1ED65CB10 = 0;
    qword_1ED65CB18 = 0;
    unk_1ED65CB20 = &ggl::aRGroundShadowShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED65CB28 = 1;
    unk_1ED65CB30 = &ggl::aRGroundShadowShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED65CB38 = 0;
    unk_1ED65CB40 = &ggl::aRGroundShadowShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED65CB48 = 0;
    unk_1ED65CB50 = &ggl::aRGroundShadowShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED65CB60 = 0;
    unk_1ED65CB68 = 0;
    qword_1ED65CB58 = 0;
  }
}

void ggl::aRCameraImageShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::aRCameraImageShaderVertexFunctionDescriptor(void)::ref = 3043993722;
    qword_1ED668150 = "ARCameraImageShader";
    unk_1ED668158 = ggl::aRCameraImageShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED668160 = 1;
    unk_1ED668168 = &ggl::aRCameraImageShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED668170 = 1;
    unk_1ED668178 = &ggl::aRCameraImageShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED668180 = 0;
    unk_1ED668188 = &ggl::aRCameraImageShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED668190 = 0;
    unk_1ED668198 = &ggl::aRCameraImageShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6681A8 = 0;
    unk_1ED6681B0 = 0;
    qword_1ED6681A0 = 0;
  }
}

void ggl::aRCameraImageShaderFragmentFunctionDescriptor(ggl *this)
{
  {
    ggl::aRCameraImageShaderFragmentFunctionDescriptor(void)::ref = 0x14D98F8FALL;
    qword_1ED667168 = "ARCameraImageShader";
    unk_1ED667170 = 0;
    qword_1ED667178 = 0;
    unk_1ED667180 = &ggl::aRCameraImageShaderFragShaderFunctionConstantMapping(void)::ref;
    qword_1ED667188 = 0;
    unk_1ED667190 = &ggl::aRCameraImageShaderFragShaderFunctionBufferMapping(void)::ref;
    qword_1ED667198 = 0;
    unk_1ED6671A0 = &ggl::aRCameraImageShaderFragShaderFunctionTextureMapping(void)::ref;
    qword_1ED6671A8 = 1;
    unk_1ED6671B0 = &ggl::aRCameraImageShaderFragShaderFunctionSamplerMapping(void)::ref;
    qword_1ED6671C0 = 0;
    unk_1ED6671C8 = 0;
    qword_1ED6671B8 = 1;
  }
}

void ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(ggl *this)
{
  {
    ggl::buildingFacadeDepthShaderVertexFunctionDescriptor(void)::ref = 2708546329;
    qword_1ED66FC70 = "BuildingFacadeDepthShader";
    unk_1ED66FC78 = ggl::buildingFacadeDepthShaderVertShaderFunctionAttributes(void)::ref;
    qword_1ED66FC80 = 1;
    unk_1ED66FC88 = &ggl::buildingFacadeDepthShaderVertShaderFunctionConstantMapping(void)::ref;
    qword_1ED66FC90 = 2;
    unk_1ED66FC98 = &ggl::buildingFacadeDepthShaderVertShaderFunctionBufferMapping(void)::ref;
    qword_1ED66FCA0 = 0;
    unk_1ED66FCA8 = &ggl::buildingFacadeDepthShaderVertShaderFunctionTextureMapping(void)::ref;
    qword_1ED66FCB0 = 0;
    unk_1ED66FCB8 = &ggl::buildingFacadeDepthShaderVertShaderFunctionSamplerMapping(void)::ref;
    qword_1ED66FCC8 = 0;
    unk_1ED66FCD0 = 0;
    qword_1ED66FCC0 = 0;
  }
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleIndexTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleIndexTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDC50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDD28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignInstanceTransformDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignInstanceTransformDeviceData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignElevationsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignElevationsDeviceData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE310;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignNormalsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignNormalsDeviceData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE3E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignUVsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignUVsDeviceData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE4C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverClipConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverClipConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverSharedConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverSharedConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE748;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverTexcoordsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverTexcoordsConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE8F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverMaterialConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverMaterialConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE9D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ConstantDataChanged>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_ConstantDataChanged>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29FED30;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<SetResourcesUtilityTask>,std::allocator<ecs2::ForwardToExecute<SetResourcesUtilityTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29FED78;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SortCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::SortCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEE98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CleanupRampMaterialData>,std::allocator<ecs2::ForwardToExecute<md::ita::CleanupRampMaterialData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEF70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfReadyToProcess>(md::ita::CheckIfReadyToProcess &&)::{lambda(void)#1},std::allocator<md::ita::CheckIfReadyToProcess &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfReadyToProcess>(md::ita::CheckIfReadyToProcess &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
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
    *v9 = 0x41650A8095FBA956;
    *(v9 + 8) = "md::ls::RegisterHandle]";
    *(v9 + 16) = 22;
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
    *v2 = 0x41650A8095FBA956;
    v2[1] = "md::ls::RegisterHandle]";
    v2[2] = 22;
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
    *v19 = 0x52DA3EA752368C9DLL;
    v19[1] = "md::ls::MapDataTypeV]";
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
    *v4 = 0x52DA3EA752368C9DLL;
    v4[1] = "md::ls::MapDataTypeV]";
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
    *v29 = 0xD14836FBCB6E3943;
    v29[1] = "md::ls::CheckIfReadyToProcess]";
    v29[2] = 29;
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
    *v14 = 0xD14836FBCB6E3943;
    v14[1] = "md::ls::CheckIfReadyToProcess]";
    v14[2] = 29;
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
    *v39 = 0x53EA4A91D91C8985;
    v39[1] = "md::ls::FlyoverOctileKey]";
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
    *v24 = 0x53EA4A91D91C8985;
    v24[1] = "md::ls::FlyoverOctileKey]";
    v24[2] = 24;
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
    *v49 = 0x695C99F828CA9E84;
    v49[1] = "md::ls::BaseMapTileHandle]";
    v49[2] = 25;
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
    *v34 = 0x695C99F828CA9E84;
    v34[1] = "md::ls::BaseMapTileHandle]";
    v34[2] = 25;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 < v53)
  {
    *v44 = 0xF3801DCCD1DDBED8;
    v44[1] = "md::ls::WillEnterView]";
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
  *v59 = 0xF3801DCCD1DDBED8;
  v59[1] = "md::ls::WillEnterView]";
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

void sub_1B27B9798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfReadyToProcess>(md::ita::CheckIfReadyToProcess &&)::{lambda(void)#2},std::allocator<md::ita::CheckIfReadyToProcess &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::CheckIfReadyToProcess>(md::ita::CheckIfReadyToProcess &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(void **a1@<X8>)
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
    *v10 = 0x684A78DCF1B284C1;
    v10[1] = "md::ls::RenderablesCount]";
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
    *v2 = 0x684A78DCF1B284C1;
    v2[1] = "md::ls::RenderablesCount]";
    v2[2] = 24;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27B98F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void gdc::typelist_as_vector<std::tuple<md::ls::UniqueMaterialData>>(void **a1)
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
    *v10 = 0x3209EBE3B62CF3D3;
    v10[1] = "md::ls::UniqueMaterialData]";
    v10[2] = 26;
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
    *v2 = 0x3209EBE3B62CF3D3;
    v2[1] = "md::ls::UniqueMaterialData]";
    v2[2] = 26;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B27B9A60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DisconnectComponents>(md::ita::DisconnectComponents &&)::{lambda(void)#2},std::allocator<md::ita::DisconnectComponents &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::DisconnectComponents>(md::ita::DisconnectComponents &&)::{lambda(void)#2}<gdc>> ()(void)>::operator()(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 0x21uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v9 = 0xB6C12FBB402E8E70;
    *(v9 + 8) = "md::ls::RenderableMaterialData]";
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
    *v2 = 0xB6C12FBB402E8E70;
    v2[1] = "md::ls::RenderableMaterialData]";
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
      goto LABEL_398;
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
    *v19 = 0x741786E98487217CLL;
    v19[1] = "md::ls::RampMaterialData]";
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
    *v4 = 0x741786E98487217CLL;
    v4[1] = "md::ls::RampMaterialData]";
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
      goto LABEL_398;
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
    *v14 = 0xA3F884E4E2541296;
    v14[1] = "md::ls::ColorDataHandle]";
    v14[2] = 23;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v39 = 0x849CB194B84BB63DLL;
    v39[1] = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    v39[2] = 45;
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
    *v24 = 0x849CB194B84BB63DLL;
    v24[1] = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    v24[2] = 45;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v49 = 0xE515B39146CD9FB7;
    v49[1] = "md::ls::UniqueMaterialZIndexHandle]";
    v49[2] = 34;
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
    *v34 = 0xE515B39146CD9FB7;
    v34[1] = "md::ls::UniqueMaterialZIndexHandle]";
    v34[2] = 34;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v59 = 0x60915CB292001F47;
    v59[1] = "md::ls::UniqueColorDataHandle]";
    v59[2] = 29;
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
    *v44 = 0x60915CB292001F47;
    v44[1] = "md::ls::UniqueColorDataHandle]";
    v44[2] = 29;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 >= v63)
  {
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v69 = 0xC8B3692EC3F5F854;
    v69[1] = "md::ls::UniqueGradientMaskDataHandle]";
    v69[2] = 36;
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
    *v54 = 0xC8B3692EC3F5F854;
    v54[1] = "md::ls::UniqueGradientMaskDataHandle]";
    v54[2] = 36;
    v64 = v54 + 3;
  }

  a1[1] = v64;
  v73 = a1[2];
  if (v64 >= v73)
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v79 = 0x9B887E855861722BLL;
    v79[1] = "md::ls::UniqueColorCorrectionDataHandle]";
    v79[2] = 39;
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
    *v64 = 0x9B887E855861722BLL;
    v64[1] = "md::ls::UniqueColorCorrectionDataHandle]";
    v64[2] = 39;
    v74 = v64 + 3;
  }

  a1[1] = v74;
  v83 = a1[2];
  if (v74 >= v83)
  {
    v85 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a1) >> 3);
    if (v85 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
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
    *v89 = 0xD02B5FD100F36AA2;
    v89[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v89[2] = 38;
    v84 = (24 * v85 + 24);
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
  }

  else
  {
    *v74 = 0xD02B5FD100F36AA2;
    v74[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v74[2] = 38;
    v84 = v74 + 3;
  }

  a1[1] = v84;
  v93 = a1[2];
  if (v84 >= v93)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *a1) >> 3);
    if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v96 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *a1) >> 3);
    v97 = 2 * v96;
    if (2 * v96 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    if (v96 >= 0x555555555555555)
    {
      v98 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v98 = v97;
    }

    if (v98)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v98);
    }

    v99 = (8 * ((v84 - *a1) >> 3));
    *v99 = 0xEBDB618C34E97A19;
    v99[1] = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    v99[2] = 40;
    v94 = (24 * v95 + 24);
    v100 = a1[1] - *a1;
    v101 = 24 * v95 - v100;
    memcpy(v99 - v100, *a1, v100);
    v102 = *a1;
    *a1 = v101;
    a1[1] = v94;
    a1[2] = 0;
    if (v102)
    {
      operator delete(v102);
    }
  }

  else
  {
    *v84 = 0xEBDB618C34E97A19;
    v84[1] = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    v84[2] = 40;
    v94 = v84 + 3;
  }

  a1[1] = v94;
  v103 = a1[2];
  if (v94 >= v103)
  {
    v105 = 0xAAAAAAAAAAAAAAABLL * ((v94 - *a1) >> 3);
    if (v105 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v106 = 0xAAAAAAAAAAAAAAABLL * ((v103 - *a1) >> 3);
    v107 = 2 * v106;
    if (2 * v106 <= v105 + 1)
    {
      v107 = v105 + 1;
    }

    if (v106 >= 0x555555555555555)
    {
      v108 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v108 = v107;
    }

    if (v108)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v108);
    }

    v109 = (8 * ((v94 - *a1) >> 3));
    *v109 = 0x6C7EE74910D42096;
    v109[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v109[2] = 43;
    v104 = (24 * v105 + 24);
    v110 = a1[1] - *a1;
    v111 = 24 * v105 - v110;
    memcpy(v109 - v110, *a1, v110);
    v112 = *a1;
    *a1 = v111;
    a1[1] = v104;
    a1[2] = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v94 = 0x6C7EE74910D42096;
    v94[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v94[2] = 43;
    v104 = v94 + 3;
  }

  a1[1] = v104;
  v113 = a1[2];
  if (v104 >= v113)
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((v104 - *a1) >> 3);
    if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v113 - *a1) >> 3);
    v117 = 2 * v116;
    if (2 * v116 <= v115 + 1)
    {
      v117 = v115 + 1;
    }

    if (v116 >= 0x555555555555555)
    {
      v118 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v118 = v117;
    }

    if (v118)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v118);
    }

    v119 = (8 * ((v104 - *a1) >> 3));
    *v119 = 0x6E0342375BBCD967;
    v119[1] = "md::ls::StyleRouteLineMaskConstantDataHandle]";
    v119[2] = 44;
    v114 = (24 * v115 + 24);
    v120 = a1[1] - *a1;
    v121 = 24 * v115 - v120;
    memcpy(v119 - v120, *a1, v120);
    v122 = *a1;
    *a1 = v121;
    a1[1] = v114;
    a1[2] = 0;
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v104 = 0x6E0342375BBCD967;
    v104[1] = "md::ls::StyleRouteLineMaskConstantDataHandle]";
    v104[2] = 44;
    v114 = v104 + 3;
  }

  a1[1] = v114;
  v123 = a1[2];
  if (v114 >= v123)
  {
    v125 = 0xAAAAAAAAAAAAAAABLL * ((v114 - *a1) >> 3);
    if (v125 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *a1) >> 3);
    v127 = 2 * v126;
    if (2 * v126 <= v125 + 1)
    {
      v127 = v125 + 1;
    }

    if (v126 >= 0x555555555555555)
    {
      v128 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v128);
    }

    v129 = (8 * ((v114 - *a1) >> 3));
    *v129 = 0x7DD7F5B95CA3FF88;
    v129[1] = "md::ls::StyleConstantHandle]";
    v129[2] = 27;
    v124 = (24 * v125 + 24);
    v130 = a1[1] - *a1;
    v131 = 24 * v125 - v130;
    memcpy(v129 - v130, *a1, v130);
    v132 = *a1;
    *a1 = v131;
    a1[1] = v124;
    a1[2] = 0;
    if (v132)
    {
      operator delete(v132);
    }
  }

  else
  {
    *v114 = 0x7DD7F5B95CA3FF88;
    v114[1] = "md::ls::StyleConstantHandle]";
    v114[2] = 27;
    v124 = v114 + 3;
  }

  a1[1] = v124;
  v133 = a1[2];
  if (v124 >= v133)
  {
    v135 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *a1) >> 3);
    if (v135 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v136 = 0xAAAAAAAAAAAAAAABLL * ((v133 - *a1) >> 3);
    v137 = 2 * v136;
    if (2 * v136 <= v135 + 1)
    {
      v137 = v135 + 1;
    }

    if (v136 >= 0x555555555555555)
    {
      v138 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v138 = v137;
    }

    if (v138)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v138);
    }

    v139 = (8 * ((v124 - *a1) >> 3));
    *v139 = 0xDC98991DB7473274;
    v139[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v139[2] = 43;
    v134 = (24 * v135 + 24);
    v140 = a1[1] - *a1;
    v141 = 24 * v135 - v140;
    memcpy(v139 - v140, *a1, v140);
    v142 = *a1;
    *a1 = v141;
    a1[1] = v134;
    a1[2] = 0;
    if (v142)
    {
      operator delete(v142);
    }
  }

  else
  {
    *v124 = 0xDC98991DB7473274;
    v124[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v124[2] = 43;
    v134 = v124 + 3;
  }

  a1[1] = v134;
  v143 = a1[2];
  if (v134 >= v143)
  {
    v145 = 0xAAAAAAAAAAAAAAABLL * ((v134 - *a1) >> 3);
    if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v146 = 0xAAAAAAAAAAAAAAABLL * ((v143 - *a1) >> 3);
    v147 = 2 * v146;
    if (2 * v146 <= v145 + 1)
    {
      v147 = v145 + 1;
    }

    if (v146 >= 0x555555555555555)
    {
      v148 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v148 = v147;
    }

    if (v148)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v148);
    }

    v149 = (8 * ((v134 - *a1) >> 3));
    *v149 = 0xD5AD9B8C3FE62EE8;
    v149[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v149[2] = 46;
    v144 = (24 * v145 + 24);
    v150 = a1[1] - *a1;
    v151 = 24 * v145 - v150;
    memcpy(v149 - v150, *a1, v150);
    v152 = *a1;
    *a1 = v151;
    a1[1] = v144;
    a1[2] = 0;
    if (v152)
    {
      operator delete(v152);
    }
  }

  else
  {
    *v134 = 0xD5AD9B8C3FE62EE8;
    v134[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v134[2] = 46;
    v144 = v134 + 3;
  }

  a1[1] = v144;
  v153 = a1[2];
  if (v144 >= v153)
  {
    v155 = 0xAAAAAAAAAAAAAAABLL * ((v144 - *a1) >> 3);
    if (v155 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v156 = 0xAAAAAAAAAAAAAAABLL * ((v153 - *a1) >> 3);
    v157 = 2 * v156;
    if (2 * v156 <= v155 + 1)
    {
      v157 = v155 + 1;
    }

    if (v156 >= 0x555555555555555)
    {
      v158 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v158 = v157;
    }

    if (v158)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v158);
    }

    v159 = (8 * ((v144 - *a1) >> 3));
    *v159 = 0x3218EFD67197A145;
    v159[1] = "md::ls::NormalsHandle]";
    v159[2] = 21;
    v154 = (24 * v155 + 24);
    v160 = a1[1] - *a1;
    v161 = 24 * v155 - v160;
    memcpy(v159 - v160, *a1, v160);
    v162 = *a1;
    *a1 = v161;
    a1[1] = v154;
    a1[2] = 0;
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v144 = 0x3218EFD67197A145;
    v144[1] = "md::ls::NormalsHandle]";
    v144[2] = 21;
    v154 = v144 + 3;
  }

  a1[1] = v154;
  v163 = a1[2];
  if (v154 >= v163)
  {
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v154 - *a1) >> 3);
    if (v165 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v166 = 0xAAAAAAAAAAAAAAABLL * ((v163 - *a1) >> 3);
    v167 = 2 * v166;
    if (2 * v166 <= v165 + 1)
    {
      v167 = v165 + 1;
    }

    if (v166 >= 0x555555555555555)
    {
      v168 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v168 = v167;
    }

    if (v168)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v168);
    }

    v169 = (8 * ((v154 - *a1) >> 3));
    *v169 = 0xCBB77B1CBD05D7C5;
    v169[1] = "md::ls::UVsHandle]";
    v169[2] = 17;
    v164 = (24 * v165 + 24);
    v170 = a1[1] - *a1;
    v171 = 24 * v165 - v170;
    memcpy(v169 - v170, *a1, v170);
    v172 = *a1;
    *a1 = v171;
    a1[1] = v164;
    a1[2] = 0;
    if (v172)
    {
      operator delete(v172);
    }
  }

  else
  {
    *v154 = 0xCBB77B1CBD05D7C5;
    v154[1] = "md::ls::UVsHandle]";
    v154[2] = 17;
    v164 = v154 + 3;
  }

  a1[1] = v164;
  v173 = a1[2];
  if (v164 >= v173)
  {
    v175 = 0xAAAAAAAAAAAAAAABLL * ((v164 - *a1) >> 3);
    if (v175 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *a1) >> 3);
    v177 = 2 * v176;
    if (2 * v176 <= v175 + 1)
    {
      v177 = v175 + 1;
    }

    if (v176 >= 0x555555555555555)
    {
      v178 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v178 = v177;
    }

    if (v178)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v178);
    }

    v179 = (8 * ((v164 - *a1) >> 3));
    *v179 = 0xD443D3DCBB78491ALL;
    v179[1] = "md::ls::ElevationHandle]";
    v179[2] = 23;
    v174 = (24 * v175 + 24);
    v180 = a1[1] - *a1;
    v181 = 24 * v175 - v180;
    memcpy(v179 - v180, *a1, v180);
    v182 = *a1;
    *a1 = v181;
    a1[1] = v174;
    a1[2] = 0;
    if (v182)
    {
      operator delete(v182);
    }
  }

  else
  {
    *v164 = 0xD443D3DCBB78491ALL;
    v164[1] = "md::ls::ElevationHandle]";
    v164[2] = 23;
    v174 = v164 + 3;
  }

  a1[1] = v174;
  v183 = a1[2];
  if (v174 >= v183)
  {
    v185 = 0xAAAAAAAAAAAAAAABLL * ((v174 - *a1) >> 3);
    if (v185 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *a1) >> 3);
    v187 = 2 * v186;
    if (2 * v186 <= v185 + 1)
    {
      v187 = v185 + 1;
    }

    if (v186 >= 0x555555555555555)
    {
      v188 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v188 = v187;
    }

    if (v188)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v188);
    }

    v189 = (8 * ((v174 - *a1) >> 3));
    *v189 = 0xAF179EFD8A4C83D4;
    v189[1] = "md::ls::InstanceTransformHandle]";
    v189[2] = 31;
    v184 = (24 * v185 + 24);
    v190 = a1[1] - *a1;
    v191 = 24 * v185 - v190;
    memcpy(v189 - v190, *a1, v190);
    v192 = *a1;
    *a1 = v191;
    a1[1] = v184;
    a1[2] = 0;
    if (v192)
    {
      operator delete(v192);
    }
  }

  else
  {
    *v174 = 0xAF179EFD8A4C83D4;
    v174[1] = "md::ls::InstanceTransformHandle]";
    v174[2] = 31;
    v184 = v174 + 3;
  }

  a1[1] = v184;
  v193 = a1[2];
  if (v184 >= v193)
  {
    v195 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *a1) >> 3);
    if (v195 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v196 = 0xAAAAAAAAAAAAAAABLL * ((v193 - *a1) >> 3);
    v197 = 2 * v196;
    if (2 * v196 <= v195 + 1)
    {
      v197 = v195 + 1;
    }

    if (v196 >= 0x555555555555555)
    {
      v198 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v198 = v197;
    }

    if (v198)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v198);
    }

    v199 = (8 * ((v184 - *a1) >> 3));
    *v199 = 0x8E45E81B6E5A8E0ELL;
    v199[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v199[2] = 39;
    v194 = (24 * v195 + 24);
    v200 = a1[1] - *a1;
    v201 = 24 * v195 - v200;
    memcpy(v199 - v200, *a1, v200);
    v202 = *a1;
    *a1 = v201;
    a1[1] = v194;
    a1[2] = 0;
    if (v202)
    {
      operator delete(v202);
    }
  }

  else
  {
    *v184 = 0x8E45E81B6E5A8E0ELL;
    v184[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v184[2] = 39;
    v194 = v184 + 3;
  }

  a1[1] = v194;
  v203 = a1[2];
  if (v194 >= v203)
  {
    v205 = 0xAAAAAAAAAAAAAAABLL * ((v194 - *a1) >> 3);
    if (v205 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v206 = 0xAAAAAAAAAAAAAAABLL * ((v203 - *a1) >> 3);
    v207 = 2 * v206;
    if (2 * v206 <= v205 + 1)
    {
      v207 = v205 + 1;
    }

    if (v206 >= 0x555555555555555)
    {
      v208 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v208 = v207;
    }

    if (v208)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v208);
    }

    v209 = (8 * ((v194 - *a1) >> 3));
    *v209 = 0xFA89E73840C3EC51;
    v209[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v209[2] = 36;
    v204 = (24 * v205 + 24);
    v210 = a1[1] - *a1;
    v211 = 24 * v205 - v210;
    memcpy(v209 - v210, *a1, v210);
    v212 = *a1;
    *a1 = v211;
    a1[1] = v204;
    a1[2] = 0;
    if (v212)
    {
      operator delete(v212);
    }
  }

  else
  {
    *v194 = 0xFA89E73840C3EC51;
    v194[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v194[2] = 36;
    v204 = v194 + 3;
  }

  a1[1] = v204;
  v213 = a1[2];
  if (v204 >= v213)
  {
    v215 = 0xAAAAAAAAAAAAAAABLL * ((v204 - *a1) >> 3);
    if (v215 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v216 = 0xAAAAAAAAAAAAAAABLL * ((v213 - *a1) >> 3);
    v217 = 2 * v216;
    if (2 * v216 <= v215 + 1)
    {
      v217 = v215 + 1;
    }

    if (v216 >= 0x555555555555555)
    {
      v218 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v218 = v217;
    }

    if (v218)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v218);
    }

    v219 = (8 * ((v204 - *a1) >> 3));
    *v219 = 0x11BB47B172EB0B40;
    v219[1] = "md::ls::NeedsClimateTint]";
    v219[2] = 24;
    v214 = (24 * v215 + 24);
    v220 = a1[1] - *a1;
    v221 = 24 * v215 - v220;
    memcpy(v219 - v220, *a1, v220);
    v222 = *a1;
    *a1 = v221;
    a1[1] = v214;
    a1[2] = 0;
    if (v222)
    {
      operator delete(v222);
    }
  }

  else
  {
    *v204 = 0x11BB47B172EB0B40;
    v204[1] = "md::ls::NeedsClimateTint]";
    v204[2] = 24;
    v214 = v204 + 3;
  }

  a1[1] = v214;
  v223 = a1[2];
  if (v214 >= v223)
  {
    v225 = 0xAAAAAAAAAAAAAAABLL * ((v214 - *a1) >> 3);
    if (v225 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v226 = 0xAAAAAAAAAAAAAAABLL * ((v223 - *a1) >> 3);
    v227 = 2 * v226;
    if (2 * v226 <= v225 + 1)
    {
      v227 = v225 + 1;
    }

    if (v226 >= 0x555555555555555)
    {
      v228 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v228 = v227;
    }

    if (v228)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v228);
    }

    v229 = (8 * ((v214 - *a1) >> 3));
    *v229 = 0x28D6AB85FDB5A2BLL;
    v229[1] = "md::ls::RenderableAlbedoTexture]";
    v229[2] = 31;
    v224 = (24 * v225 + 24);
    v230 = a1[1] - *a1;
    v231 = 24 * v225 - v230;
    memcpy(v229 - v230, *a1, v230);
    v232 = *a1;
    *a1 = v231;
    a1[1] = v224;
    a1[2] = 0;
    if (v232)
    {
      operator delete(v232);
    }
  }

  else
  {
    *v214 = 0x28D6AB85FDB5A2BLL;
    v214[1] = "md::ls::RenderableAlbedoTexture]";
    v214[2] = 31;
    v224 = v214 + 3;
  }

  a1[1] = v224;
  v233 = a1[2];
  if (v224 >= v233)
  {
    v235 = 0xAAAAAAAAAAAAAAABLL * ((v224 - *a1) >> 3);
    if (v235 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v236 = 0xAAAAAAAAAAAAAAABLL * ((v233 - *a1) >> 3);
    v237 = 2 * v236;
    if (2 * v236 <= v235 + 1)
    {
      v237 = v235 + 1;
    }

    if (v236 >= 0x555555555555555)
    {
      v238 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v238 = v237;
    }

    if (v238)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v238);
    }

    v239 = (8 * ((v224 - *a1) >> 3));
    *v239 = 0xD49B968135FE1A73;
    v239[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v239[2] = 51;
    v234 = (24 * v235 + 24);
    v240 = a1[1] - *a1;
    v241 = 24 * v235 - v240;
    memcpy(v239 - v240, *a1, v240);
    v242 = *a1;
    *a1 = v241;
    a1[1] = v234;
    a1[2] = 0;
    if (v242)
    {
      operator delete(v242);
    }
  }

  else
  {
    *v224 = 0xD49B968135FE1A73;
    v224[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v224[2] = 51;
    v234 = v224 + 3;
  }

  a1[1] = v234;
  v243 = a1[2];
  if (v234 >= v243)
  {
    v245 = 0xAAAAAAAAAAAAAAABLL * ((v234 - *a1) >> 3);
    if (v245 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v246 = 0xAAAAAAAAAAAAAAABLL * ((v243 - *a1) >> 3);
    v247 = 2 * v246;
    if (2 * v246 <= v245 + 1)
    {
      v247 = v245 + 1;
    }

    if (v246 >= 0x555555555555555)
    {
      v248 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v248 = v247;
    }

    if (v248)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v248);
    }

    v249 = (8 * ((v234 - *a1) >> 3));
    *v249 = 0xBAA35DF429A7267FLL;
    v249[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v249[2] = 53;
    v244 = (24 * v245 + 24);
    v250 = a1[1] - *a1;
    v251 = 24 * v245 - v250;
    memcpy(v249 - v250, *a1, v250);
    v252 = *a1;
    *a1 = v251;
    a1[1] = v244;
    a1[2] = 0;
    if (v252)
    {
      operator delete(v252);
    }
  }

  else
  {
    *v234 = 0xBAA35DF429A7267FLL;
    v234[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v234[2] = 53;
    v244 = v234 + 3;
  }

  a1[1] = v244;
  v253 = a1[2];
  if (v244 >= v253)
  {
    v255 = 0xAAAAAAAAAAAAAAABLL * ((v244 - *a1) >> 3);
    if (v255 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v256 = 0xAAAAAAAAAAAAAAABLL * ((v253 - *a1) >> 3);
    v257 = 2 * v256;
    if (2 * v256 <= v255 + 1)
    {
      v257 = v255 + 1;
    }

    if (v256 >= 0x555555555555555)
    {
      v258 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v258 = v257;
    }

    if (v258)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v258);
    }

    v259 = (8 * ((v244 - *a1) >> 3));
    *v259 = 0x5FF8F613B2E16249;
    v259[1] = "md::ls::UniqueMaterialAlbedoTexture]";
    v259[2] = 35;
    v254 = (24 * v255 + 24);
    v260 = a1[1] - *a1;
    v261 = 24 * v255 - v260;
    memcpy(v259 - v260, *a1, v260);
    v262 = *a1;
    *a1 = v261;
    a1[1] = v254;
    a1[2] = 0;
    if (v262)
    {
      operator delete(v262);
    }
  }

  else
  {
    *v244 = 0x5FF8F613B2E16249;
    v244[1] = "md::ls::UniqueMaterialAlbedoTexture]";
    v244[2] = 35;
    v254 = v244 + 3;
  }

  a1[1] = v254;
  v263 = a1[2];
  if (v254 >= v263)
  {
    v265 = 0xAAAAAAAAAAAAAAABLL * ((v254 - *a1) >> 3);
    if (v265 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v266 = 0xAAAAAAAAAAAAAAABLL * ((v263 - *a1) >> 3);
    v267 = 2 * v266;
    if (2 * v266 <= v265 + 1)
    {
      v267 = v265 + 1;
    }

    if (v266 >= 0x555555555555555)
    {
      v268 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v268 = v267;
    }

    if (v268)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v268);
    }

    v269 = (8 * ((v254 - *a1) >> 3));
    *v269 = 0x1202E9D2D9704CABLL;
    v269[1] = "md::ls::UniqueMaterialEmissiveTexture]";
    v269[2] = 37;
    v264 = (24 * v265 + 24);
    v270 = a1[1] - *a1;
    v271 = 24 * v265 - v270;
    memcpy(v269 - v270, *a1, v270);
    v272 = *a1;
    *a1 = v271;
    a1[1] = v264;
    a1[2] = 0;
    if (v272)
    {
      operator delete(v272);
    }
  }

  else
  {
    *v254 = 0x1202E9D2D9704CABLL;
    v254[1] = "md::ls::UniqueMaterialEmissiveTexture]";
    v254[2] = 37;
    v264 = v254 + 3;
  }

  a1[1] = v264;
  v273 = a1[2];
  if (v264 >= v273)
  {
    v275 = 0xAAAAAAAAAAAAAAABLL * ((v264 - *a1) >> 3);
    if (v275 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v276 = 0xAAAAAAAAAAAAAAABLL * ((v273 - *a1) >> 3);
    v277 = 2 * v276;
    if (2 * v276 <= v275 + 1)
    {
      v277 = v275 + 1;
    }

    if (v276 >= 0x555555555555555)
    {
      v278 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v278 = v277;
    }

    if (v278)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v278);
    }

    v279 = (8 * ((v264 - *a1) >> 3));
    *v279 = 0xCF2EB3C843EAD89ALL;
    v279[1] = "md::ls::UniqueMaterialDiffuseTexture]";
    v279[2] = 36;
    v274 = (24 * v275 + 24);
    v280 = a1[1] - *a1;
    v281 = 24 * v275 - v280;
    memcpy(v279 - v280, *a1, v280);
    v282 = *a1;
    *a1 = v281;
    a1[1] = v274;
    a1[2] = 0;
    if (v282)
    {
      operator delete(v282);
    }
  }

  else
  {
    *v264 = 0xCF2EB3C843EAD89ALL;
    v264[1] = "md::ls::UniqueMaterialDiffuseTexture]";
    v264[2] = 36;
    v274 = v264 + 3;
  }

  a1[1] = v274;
  v283 = a1[2];
  if (v274 >= v283)
  {
    v285 = 0xAAAAAAAAAAAAAAABLL * ((v274 - *a1) >> 3);
    if (v285 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v286 = 0xAAAAAAAAAAAAAAABLL * ((v283 - *a1) >> 3);
    v287 = 2 * v286;
    if (2 * v286 <= v285 + 1)
    {
      v287 = v285 + 1;
    }

    if (v286 >= 0x555555555555555)
    {
      v288 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v288 = v287;
    }

    if (v288)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v288);
    }

    v289 = (8 * ((v274 - *a1) >> 3));
    *v289 = 0x9A2CF0F3E5B1FB4ELL;
    v289[1] = "md::ls::TexturesToDisconnect]";
    v289[2] = 28;
    v284 = (24 * v285 + 24);
    v290 = a1[1] - *a1;
    v291 = 24 * v285 - v290;
    memcpy(v289 - v290, *a1, v290);
    v292 = *a1;
    *a1 = v291;
    a1[1] = v284;
    a1[2] = 0;
    if (v292)
    {
      operator delete(v292);
    }
  }

  else
  {
    *v274 = 0x9A2CF0F3E5B1FB4ELL;
    v274[1] = "md::ls::TexturesToDisconnect]";
    v274[2] = 28;
    v284 = v274 + 3;
  }

  a1[1] = v284;
  v293 = a1[2];
  if (v284 >= v293)
  {
    v295 = 0xAAAAAAAAAAAAAAABLL * ((v284 - *a1) >> 3);
    if (v295 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v296 = 0xAAAAAAAAAAAAAAABLL * ((v293 - *a1) >> 3);
    v297 = 2 * v296;
    if (2 * v296 <= v295 + 1)
    {
      v297 = v295 + 1;
    }

    if (v296 >= 0x555555555555555)
    {
      v298 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v298 = v297;
    }

    if (v298)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v298);
    }

    v299 = (8 * ((v284 - *a1) >> 3));
    *v299 = 0xE103B5C60804137ELL;
    v299[1] = "md::ls::ColorRampDataHandle]";
    v299[2] = 27;
    v294 = (24 * v295 + 24);
    v300 = a1[1] - *a1;
    v301 = 24 * v295 - v300;
    memcpy(v299 - v300, *a1, v300);
    v302 = *a1;
    *a1 = v301;
    a1[1] = v294;
    a1[2] = 0;
    if (v302)
    {
      operator delete(v302);
    }
  }

  else
  {
    *v284 = 0xE103B5C60804137ELL;
    v284[1] = "md::ls::ColorRampDataHandle]";
    v284[2] = 27;
    v294 = v284 + 3;
  }

  a1[1] = v294;
  v303 = a1[2];
  if (v294 >= v303)
  {
    v305 = 0xAAAAAAAAAAAAAAABLL * ((v294 - *a1) >> 3);
    if (v305 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v306 = 0xAAAAAAAAAAAAAAABLL * ((v303 - *a1) >> 3);
    v307 = 2 * v306;
    if (2 * v306 <= v305 + 1)
    {
      v307 = v305 + 1;
    }

    if (v306 >= 0x555555555555555)
    {
      v308 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v308 = v307;
    }

    if (v308)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v308);
    }

    v309 = (8 * ((v294 - *a1) >> 3));
    *v309 = 0xB160D04D0F4A35A4;
    v309[1] = "md::ls::PipelineState]";
    v309[2] = 21;
    v304 = (24 * v305 + 24);
    v310 = a1[1] - *a1;
    v311 = 24 * v305 - v310;
    memcpy(v309 - v310, *a1, v310);
    v312 = *a1;
    *a1 = v311;
    a1[1] = v304;
    a1[2] = 0;
    if (v312)
    {
      operator delete(v312);
    }
  }

  else
  {
    *v294 = 0xB160D04D0F4A35A4;
    v294[1] = "md::ls::PipelineState]";
    v294[2] = 21;
    v304 = v294 + 3;
  }

  a1[1] = v304;
  v313 = a1[2];
  if (v304 >= v313)
  {
    v315 = 0xAAAAAAAAAAAAAAABLL * ((v304 - *a1) >> 3);
    if (v315 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_398;
    }

    v316 = 0xAAAAAAAAAAAAAAABLL * ((v313 - *a1) >> 3);
    v317 = 2 * v316;
    if (2 * v316 <= v315 + 1)
    {
      v317 = v315 + 1;
    }

    if (v316 >= 0x555555555555555)
    {
      v318 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v318 = v317;
    }

    if (v318)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v318);
    }

    v319 = (8 * ((v304 - *a1) >> 3));
    *v319 = 0x9C4E7BCF9B8D6334;
    v319[1] = "md::ls::PipelineSetup]";
    v319[2] = 21;
    v314 = (24 * v315 + 24);
    v320 = a1[1] - *a1;
    v321 = 24 * v315 - v320;
    memcpy(v319 - v320, *a1, v320);
    v322 = *a1;
    *a1 = v321;
    a1[1] = v314;
    a1[2] = 0;
    if (v322)
    {
      operator delete(v322);
    }
  }

  else
  {
    *v304 = 0x9C4E7BCF9B8D6334;
    v304[1] = "md::ls::PipelineSetup]";
    v304[2] = 21;
    v314 = v304 + 3;
  }

  a1[1] = v314;
  v323 = a1[2];
  if (v314 < v323)
  {
    *v314 = 0x3AC919C8A5243F9;
    v314[1] = "md::ls::StyleSSAODataKeyHandle]";
    v314[2] = 30;
    v324 = (v314 + 3);
    goto LABEL_397;
  }

  v325 = 0xAAAAAAAAAAAAAAABLL * ((v314 - *a1) >> 3);
  if (v325 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_398:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v326 = 0xAAAAAAAAAAAAAAABLL * ((v323 - *a1) >> 3);
  v327 = 2 * v326;
  if (2 * v326 <= v325 + 1)
  {
    v327 = v325 + 1;
  }

  if (v326 >= 0x555555555555555)
  {
    v328 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v328 = v327;
  }

  if (v328)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v328);
  }

  v329 = (8 * ((v314 - *a1) >> 3));
  *v329 = 0x3AC919C8A5243F9;
  v329[1] = "md::ls::StyleSSAODataKeyHandle]";
  v329[2] = 30;
  v324 = 24 * v325 + 24;
  v330 = a1[1] - *a1;
  v331 = 24 * v325 - v330;
  memcpy(v329 - v330, *a1, v330);
  v332 = *a1;
  *a1 = v331;
  a1[1] = v324;
  a1[2] = 0;
  if (v332)
  {
    operator delete(v332);
  }

LABEL_397:
  a1[1] = v324;
}