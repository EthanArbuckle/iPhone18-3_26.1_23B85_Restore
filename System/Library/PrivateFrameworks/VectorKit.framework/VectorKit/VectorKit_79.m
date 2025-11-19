uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      v11 = 1;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(void *a1)
{
  gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(void *a1)
{
  *a1 = &unk_1F2A0AC70;
  v2 = a1[21];
  a1[21] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[19];
  a1[19] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[17];
  a1[17] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[16];
  a1[16] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[15];
  a1[15] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[14];
  a1[14] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[13];
  a1[13] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[12];
  a1[12] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[11];
  a1[11] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_TriPlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0AC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      v11 = 29;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      v11 = 27;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      v11 = 26;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      v11 = 24;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      v11 = 23;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      v11 = 16;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_PlanarMaterial<ggl::Texture2D>::offset(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 312))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      v11 = 13;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xDu);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_PlanarMaterial<ggl::Texture2D>::tiling(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 288))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addTiling(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      v11 = 12;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xCu);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      v11 = 11;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      v11 = 9;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      v11 = 8;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      v11 = 1;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(void *a1)
{
  gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(void *a1)
{
  *a1 = &unk_1F2A0A8D0;
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[20];
  a1[20] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[19];
  a1[19] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[17];
  a1[17] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[16];
  a1[16] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[15];
  a1[15] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[14];
  a1[14] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[13];
  a1[13] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[12];
  a1[12] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[11];
  a1[11] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_PlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0A898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::colorRampRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 720))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addColorRampRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 256);
  if (!v6)
  {
    if (a5)
    {
      v11 = 30;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Eu);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 248);
  if (!v6)
  {
    if (a5)
    {
      v11 = 29;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::emissiveFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 672))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissiveFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
    if (a5)
    {
      v11 = 28;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Cu);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (!v6)
  {
    if (a5)
    {
      v11 = 27;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 224);
  if (!v6)
  {
    if (a5)
    {
      v11 = 26;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 216);
  if (!v6)
  {
    if (a5)
    {
      v11 = 24;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 208);
  if (!v6)
  {
    if (a5)
    {
      v11 = 23;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::acceptsOverlays(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 480))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAcceptsOverlays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    if (a5)
    {
      v11 = 20;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x14u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 456))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addBrightnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    if (a5)
    {
      v11 = 19;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x13u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 432))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addSaturationFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 184);
  if (!v6)
  {
    if (a5)
    {
      v11 = 18;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x12u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::colorRamp@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 408))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addColorRamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      v11 = 17;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x11u);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      v11 = 16;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      v11 = 11;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      v11 = 9;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      v11 = 8;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 168))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissiveFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      v11 = 7;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 7u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::metallicFactor(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 144))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addMetallicFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      v11 = 6;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 6u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::roughnessFactor(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 120))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addRoughnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      v11 = 5;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 5u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      v11 = 4;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 4u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::roughnessMetallic(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 72))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addRoughnessMetallic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      v11 = 3;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 3u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::normal(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 48))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      v11 = 2;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 2u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      v11 = 1;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(void *a1)
{
  gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(void *a1)
{
  *a1 = &unk_1F2A0A450;
  v2 = a1[32];
  a1[32] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[30];
  a1[30] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[29];
  a1[29] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[28];
  a1[28] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[27];
  a1[27] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[26];
  a1[26] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[25];
  a1[25] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[24];
  a1[24] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[23];
  a1[23] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[22];
  a1[22] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[21];
  a1[21] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  v14 = a1[20];
  a1[20] = 0;
  if (v14)
  {
    (*(*v14 + 32))(v14);
  }

  v15 = a1[19];
  a1[19] = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = a1[18];
  a1[18] = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = a1[17];
  a1[17] = 0;
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  v18 = a1[16];
  a1[16] = 0;
  if (v18)
  {
    (*(*v18 + 32))(v18);
  }

  v19 = a1[15];
  a1[15] = 0;
  if (v19)
  {
    (*(*v19 + 32))(v19);
  }

  v20 = a1[14];
  a1[14] = 0;
  if (v20)
  {
    (*(*v20 + 32))(v20);
  }

  v21 = a1[13];
  a1[13] = 0;
  if (v21)
  {
    (*(*v21 + 32))(v21);
  }

  v22 = a1[12];
  a1[12] = 0;
  if (v22)
  {
    (*(*v22 + 32))(v22);
  }

  v23 = a1[11];
  a1[11] = 0;
  if (v23)
  {
    (*(*v23 + 32))(v23);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_PBRMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0A418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::ssaoIntensity(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 840))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSsaoIntensity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 288);
  if (!v6)
  {
    if (a5)
    {
      v11 = 35;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x23u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addDryAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 280);
  if (!v6)
  {
    if (a5)
    {
      v11 = 34;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x22u);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<gm::Matrix<float,3,1>>(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_1B2D577C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v3, 0x10A1C407B04CAF8);
  *v2 = 0;
  _Unwind_Resume(a1);
}

uint64_t gms::NonZoomablePropertyStore<gm::Matrix<float,3,1>>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 2);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = 1;
  }

  *(result + 8) = v4;
  *(result + 16) = v5;
  return result;
}

void gms::ZoomablePropertyStore<gm::Matrix<float,3,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A3A8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<gm::Matrix<float,3,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A3A8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addWetAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 272);
  if (!v6)
  {
    if (a5)
    {
      v11 = 33;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x21u);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addColdAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 264);
  if (!v6)
  {
    if (a5)
    {
      v11 = 32;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x20u);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addHotAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 256);
  if (!v6)
  {
    if (a5)
    {
      v11 = 31;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Fu);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 248);
  if (!v6)
  {
    if (a5)
    {
      v11 = 29;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::emissiveFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 672))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissiveFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
    if (a5)
    {
      v11 = 28;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Cu);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (!v6)
  {
    if (a5)
    {
      v11 = 27;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 224);
  if (!v6)
  {
    if (a5)
    {
      v11 = 26;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 216);
  if (!v6)
  {
    if (a5)
    {
      v11 = 24;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 208);
  if (!v6)
  {
    if (a5)
    {
      v11 = 23;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::brightnessRemapRange(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 528))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addBrightnessRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    if (a5)
    {
      v11 = 22;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x16u);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::saturationRemapRange(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 504))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSaturationRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    if (a5)
    {
      v11 = 21;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x15u);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::acceptsOverlays(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 480))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAcceptsOverlays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 184);
  if (!v6)
  {
    if (a5)
    {
      v11 = 20;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x14u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 456))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addBrightnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      v11 = 19;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x13u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 432))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSaturationFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      v11 = 18;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x12u);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      v11 = 16;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addShininess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      v11 = 15;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xFu);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSpecularity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      v11 = 14;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xEu);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      v11 = 11;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addLineWidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      v11 = 10;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xAu);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      v11 = 9;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 168))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissiveFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      v11 = 7;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 7u);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      v11 = 4;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 4u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      v11 = 1;
      v12 = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(void *a1)
{
  gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(void *a1)
{
  *a1 = &unk_1F2A098F0;
  v2 = a1[36];
  a1[36] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[35];
  a1[35] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[34];
  a1[34] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[33];
  a1[33] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[32];
  a1[32] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[31];
  a1[31] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[30];
  a1[30] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[29];
  a1[29] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[28];
  a1[28] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[27];
  a1[27] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[26];
  a1[26] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[25];
  a1[25] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  v14 = a1[24];
  a1[24] = 0;
  if (v14)
  {
    (*(*v14 + 32))(v14);
  }

  v15 = a1[23];
  a1[23] = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = a1[22];
  a1[22] = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = a1[21];
  a1[21] = 0;
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  v18 = a1[20];
  a1[20] = 0;
  if (v18)
  {
    (*(*v18 + 32))(v18);
  }

  v19 = a1[19];
  a1[19] = 0;
  if (v19)
  {
    (*(*v19 + 32))(v19);
  }

  v20 = a1[18];
  a1[18] = 0;
  if (v20)
  {
    (*(*v20 + 32))(v20);
  }

  v21 = a1[17];
  a1[17] = 0;
  if (v21)
  {
    (*(*v21 + 32))(v21);
  }

  v22 = a1[16];
  a1[16] = 0;
  if (v22)
  {
    (*(*v22 + 32))(v22);
  }

  v23 = a1[15];
  a1[15] = 0;
  if (v23)
  {
    (*(*v23 + 32))(v23);
  }

  v24 = a1[14];
  a1[14] = 0;
  if (v24)
  {
    (*(*v24 + 32))(v24);
  }

  v25 = a1[13];
  a1[13] = 0;
  if (v25)
  {
    (*(*v25 + 32))(v25);
  }

  v26 = a1[12];
  a1[12] = 0;
  if (v26)
  {
    (*(*v26 + 32))(v26);
  }

  v27 = a1[11];
  a1[11] = 0;
  if (v27)
  {
    (*(*v27 + 32))(v27);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_BasicMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A098B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void *md::LabelsExtractExternallyResolvedWorldTransformLogic::runBeforeLayout(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  v2 = gdc::Registry::storage<arComponents::IsVisible>(v1);
  v3 = gdc::Registry::storage<arComponents::NeedsResolvedWorldTransform>(v1);
  v4 = gdc::Registry::storage<arComponents::WorldTransform>(v1);
  result = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v1);
  v6 = result;
  v7.i64[0] = v2;
  v7.i64[1] = v3;
  v8.i64[0] = v4;
  v8.i64[1] = result;
  v9 = vdupq_n_s64(0x20uLL);
  v99[0] = vaddq_s64(v7, v9);
  v99[1] = vaddq_s64(v8, v9);
  v10 = *&v99[0];
  v11 = 8;
  v12 = v99;
  do
  {
    if (*(*(v99 + v11) + 32) - *(*(v99 + v11) + 24) < *(v10 + 32) - *(v10 + 24))
    {
      v10 = *(v99 + v11);
      v12 = (v99 + v11);
    }

    v11 += 8;
  }

  while (v11 != 32);
  v92 = v2;
  v93 = v3;
  v13 = (v2 + 32);
  v95 = *v12;
  if (v2 + 32 == *v12)
  {
    v14 = *(v2 + 56);
    v15 = *(v2 + 64);
    if (v14 != v15)
    {
      v16 = *(v3 + 64);
      v17 = v4[8];
      v97 = v4[7];
      v86 = v4[11];
      v89 = v4[10];
      v18 = result[8];
      v80 = result[10];
      v83 = result[7];
      v78 = result[11];
      do
      {
        v19 = *(v14 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v3 + 32), v19);
        if (v16 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4 + 4, v19);
          if (v17 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v19);
            if (v18 != result)
            {
              v20 = *(v14 + 4);
              v21 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v4 + 4, v20);
              if (v17 == v21)
              {
                v22 = v86;
              }

              else
              {
                v22 = v89 + 80 * ((v21 - v97) >> 3);
              }

              result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, v20);
              v23 = 0;
              v24 = (v80 + 2 * (result - v83));
              if (v18 == result)
              {
                v24 = v78;
              }

              v25 = *v24;
              do
              {
                *(v25 + 56 + v23) = *(v22 + 24 + v23);
                v23 += 8;
              }

              while (v23 != 24);
              v26 = 0;
              *(v25 + 80) = *(v22 + 48);
              do
              {
                *(v25 + 32 + v26) = *(v22 + v26);
                v26 += 8;
              }

              while (v26 != 24);
              v27 = 0;
              v28 = v22 + 56;
              v29 = v25 + 88;
              v3 = v93;
              do
              {
                *(v29 + v27) = *(v28 + v27);
                v27 += 8;
              }

              while (v27 != 24);
            }
          }
        }

        v14 += 8;
      }

      while (v14 != v15);
    }
  }

  v98 = (v3 + 32);
  if ((v3 + 32) == v95)
  {
    v30 = *(v93 + 56);
    v31 = *(v93 + 64);
    if (v30 != v31)
    {
      v32 = *(v92 + 64);
      v33 = v4[8];
      v87 = v4[10];
      v90 = v4[7];
      v34 = v6[8];
      v81 = v6[7];
      v84 = v4[11];
      v77 = v6[11];
      v79 = v6[10];
      do
      {
        v35 = *(v30 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13, v35);
        if (v32 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4 + 4, v35);
          if (v33 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v35);
            if (v34 != result)
            {
              v36 = *(v30 + 4);
              v37 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v4 + 4, v36);
              if (v33 == v37)
              {
                v38 = v84;
              }

              else
              {
                v38 = v87 + 80 * ((v37 - v90) >> 3);
              }

              result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, v36);
              v39 = 0;
              v40 = (v79 + 2 * (result - v81));
              if (v34 == result)
              {
                v40 = v77;
              }

              v41 = *v40;
              do
              {
                *(v41 + 56 + v39) = *(v38 + 24 + v39);
                v39 += 8;
              }

              while (v39 != 24);
              v42 = 0;
              *(v41 + 80) = *(v38 + 48);
              do
              {
                *(v41 + 32 + v42) = *(v38 + v42);
                v42 += 8;
              }

              while (v42 != 24);
              v43 = 0;
              v44 = v41 + 88;
              do
              {
                *(v44 + v43) = *(v38 + 56 + v43);
                v43 += 8;
              }

              while (v43 != 24);
            }
          }
        }

        v30 += 8;
      }

      while (v30 != v31);
    }
  }

  v82 = v4 + 4;
  if (v4 + 4 == v95)
  {
    v45 = v4[7];
    v46 = v4[8];
    if (v45 != v46)
    {
      v47 = v4[10];
      v48 = *(v92 + 64);
      v49 = *(v93 + 64);
      v50 = v6[8];
      v88 = v6[10];
      v91 = v6[7];
      v85 = v6[11];
      do
      {
        v51 = *(v45 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13, v51);
        if (v48 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v98, v51);
          if (v49 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v51);
            if (v50 != result)
            {
              result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, *(v45 + 4));
              v52 = (v88 + 2 * (result - v91));
              if (v50 == result)
              {
                v52 = v85;
              }

              v53 = *v52;
              v54 = v53 + 7;
              for (i = 3; i != 6; ++i)
              {
                *v54++ = *(v47 + 8 * i);
              }

              v56 = 0;
              v53[10] = *(v47 + 48);
              do
              {
                v53[v56 + 4] = *(v47 + v56 * 8);
                ++v56;
              }

              while (v56 != 3);
              v57 = v53 + 11;
              for (j = 7; j != 10; ++j)
              {
                *v57++ = *(v47 + 8 * j);
              }
            }
          }
        }

        v47 += 80;
        v45 += 8;
      }

      while (v45 != v46);
    }
  }

  if (v6 + 4 == v95)
  {
    v59 = v6[7];
    v60 = v6[8];
    if (v59 != v60)
    {
      v61 = v6[10];
      v62 = *(v92 + 64);
      v63 = *(v93 + 64);
      v64 = v4[7];
      v65 = v4[8];
      v66 = v4[10];
      v67 = v4[11];
      v94 = v66;
      v96 = v64;
      do
      {
        v68 = *(v59 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13, v68);
        if (v62 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v98, v68);
          if (v63 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v82, v68);
            if (v65 != result)
            {
              result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v82, *(v59 + 4));
              v69 = v67;
              if (v65 != result)
              {
                v69 = v94 + 80 * ((result - v96) >> 3);
              }

              v70 = 0;
              v71 = *v61;
              v72 = *v61 + 56;
              do
              {
                *(v72 + v70) = *(v69 + 24 + v70);
                v70 += 8;
              }

              while (v70 != 24);
              v73 = 0;
              *(v71 + 80) = *(v69 + 48);
              do
              {
                *(v71 + 32 + v73) = *(v69 + v73);
                v73 += 8;
              }

              while (v73 != 24);
              v74 = 0;
              v75 = v69 + 56;
              v76 = v71 + 88;
              do
              {
                *(v76 + v74) = *(v75 + v74);
                v74 += 8;
              }

              while (v74 != 24);
            }
          }
        }

        v61 += 2;
        v59 += 8;
      }

      while (v59 != v60);
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::NeedsResolvedWorldTransform>(uint64_t a1)
{
  v3 = 0xF6A197B0F4F03657;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF6A197B0F4F03657);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(uint64_t a1)
{
  v3 = 0x6348F11188A7D30CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6348F11188A7D30CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
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

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<arComponents::NeedsResolvedWorldTransform>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::NeedsResolvedWorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::NeedsResolvedWorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDB33FC702E07AAFLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDB33FC702E07AAFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDB33FC702E07AAFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDB33FC702E07AAFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExtractExternallyResolvedWorldTransformLogic,md::LabelsExtractExternallyResolvedWorldTransformContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDB33FC702E07AAFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::LabelsExtractExternallyResolvedWorldTransformContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LabelsExtractExternallyResolvedWorldTransformContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24EE0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LabelsExtractExternallyResolvedWorldTransformContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24EE0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::LabelsExtractExternallyResolvedWorldTransformLogic::~LabelsExtractExternallyResolvedWorldTransformLogic(md::LabelsExtractExternallyResolvedWorldTransformLogic *this)
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

void md::Renderer::createDebugNode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(a1 + 40);
  for (i = *(a1 + 48); v2 != i; v2 += 8)
  {
    if (*v2)
    {
      (*(**v2 + 64))(v5);
      gdc::DebugTreeNode::addChildNode(a2, v5);
      v11 = &v10;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v11);
      v11 = &v9;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v11);
      if (v8 < 0)
      {
        operator delete(__p);
      }

      if (v6 < 0)
      {
        operator delete(v5[0]);
      }
    }
  }
}

void sub_1B2D5AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a10);
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void md::Renderer::~Renderer(md::Renderer *this)
{
  *this = &unk_1F29F16C8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<md::FrameGraphResourceRegistry>::reset[abi:nn200100](this + 4, 0);

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 9));
  v5 = (this + 40);
  std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::unique_ptr<md::FrameGraphResourceRegistry>::reset[abi:nn200100](this + 4, 0);
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void std::__shared_ptr_emplace<ggl::RenderTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreAnalyticsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreAnalyticsLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = CoreAnalyticsLibraryCore_frameworkLibrary;
  v9 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v3[4] = &unk_1E7B3A9C8;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E7B32F60;
    v11 = *off_1E7B32F70;
    v12 = 0;
    v7[3] = _sl_dlopen();
    CoreAnalyticsLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1B2D5B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAnalyticsLibrary();
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void vkAnalyticsSendEventLazy(void *a1)
{
  v2 = @"com.apple.VectorKit.GeoGL.AccessRevoked";
  v3 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v10 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v5 = CoreAnalyticsLibrary();
    v8[3] = dlsym(v5, "AnalyticsSendEventLazy");
    getAnalyticsSendEventLazySymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4(@"com.apple.VectorKit.GeoGL.AccessRevoked", v3);
}

uint64_t md::ObjectGroup::hasFeatureId(md::ObjectGroup *this, md::ObjectGroup *a2, uint64_t a3)
{
  while (1)
  {
    if (this == a2)
    {
      return 0;
    }

    v3 = *(this + 2);
LABEL_3:
    if (v3 != *(this + 3))
    {
      break;
    }

    this = (this + 40);
  }

  for (i = *(v3 + 8); ; i += 24)
  {
    if (i == *(v3 + 16))
    {
      v3 += 32;
      goto LABEL_3;
    }

    if (*(i + 16) == a3)
    {
      break;
    }
  }

  return 1;
}

uint64_t md::ObjectGroup::addFeatureIds(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result;
    do
    {
      for (i = *(v2 + 16); i != *(v2 + 24); i += 32)
      {
        if (*(i + 8) != *(i + 16))
        {
          operator new();
        }
      }

      v2 += 40;
    }

    while (v2 != a2);
  }

  return result;
}

void ggl::GlyphWithNormalHalo::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::GlyphWithNormalHalo::DefaultPipelineSetup::DefaultPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
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

  *a1 = &unk_1F29F1750;
  return a1;
}

void std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__shared_ptr_emplace<md::LabelSourceTile>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::LabelSourceTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::rectFromGEOMapRegion<double>(void *a1)
{
  v1 = a1;
  [v1 northLat];
  v3 = v2;
  [v1 westLng];
  v5 = v4;
  [v1 southLat];
  v7 = v6;
  [v1 eastLng];
  v8 = tan(v3 * 0.00872664626 + 0.785398163);
  log(v8);
  v9 = tan(v7 * 0.00872664626 + 0.785398163);
  log(v9);

  return v5 * 0.00277777778 + 0.5;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1B60;
  a2[1] = v2;
  return result;
}

void ___ZN2md16RouteRenderLayer19layoutLegacyTrafficERKNS_13LayoutContextERKNS_18RouteLayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEEPN3ggl13CommandBufferE_block_invoke(void *a1, void *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v3 = *a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1[4] + 8) + 48;
  v5 = *(a1[5] + 8) + 48;
  v6 = a1 + 8;
  v20 = 0;
  v21 = &v20;
  v22 = 0x5012000000;
  v23 = __Block_byref_object_copy__30246;
  v24 = __Block_byref_object_dispose__30247;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v7 = a1[6];
  v8 = a1[7];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v27;
    v26 = v7;
    v27 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  else
  {
    v26 = a1[6];
    v27 = 0;
  }

  v10 = v21;
  *(v21 + 16) = 0;
  *(v10 + 68) = 3;
  *(v10 + 18) = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZNK2md16RouteLineSection17addTrafficRibbonsERNSt3__113unordered_mapINS_15TrafficBatchKeyENS1_6vectorINS1_10unique_ptrINS_13TrafficRibbonEN3mdm11TypeDeleterIS6_EEEEN3geo17allocator_adapterISA_NS7_15zone_mallocatorEEEEENS1_4hashIS3_EENS1_8equal_toIS3_EENS1_9allocatorINS1_4pairIKS3_SF_EEEEEERNS2_IS3_NS4_INS5_INS_18SolidTrafficRibbonENS8_ISR_EEEENSC_IST_SD_EEEESH_SJ_NSK_INSL_ISM_SV_EEEEEERKNS1_10shared_ptrIN3gss15StylesheetQueryINS11_10PropertyIDEEEEERKNS_16TrafficMeshStyleE_block_invoke;
  v19[3] = &unk_1E7B39A88;
  v19[4] = &v20;
  v19[5] = v3;
  v19[6] = v6;
  v19[7] = v4;
  v19[8] = v5;
  v11 = MEMORY[0x1B8C62DA0](v19);
  v12 = 0;
  v13 = 0;
  v14 = -1;
  while (1)
  {
    v15 = (*(**(v3 + 72) + 24))(*(v3 + 72));
    v16 = **(v3 + 72);
    if (v12 == v15)
    {
      break;
    }

    v17 = (*(v16 + 32))();
    if (*(v17 + 44) != v14)
    {
      gss::FeatureAttributeSet::FeatureAttributeSet(v29, (a1[6] + 240));
      (v11)[2](v11, v14, v13, v12 - v13 + 1, v29);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v29);
      v14 = *(v17 + 44);
      v13 = v12;
    }

    ++v12;
  }

  v18 = (*(v16 + 24))();
  gss::FeatureAttributeSet::FeatureAttributeSet(v28, (a1[6] + 240));
  (v11)[2](v11, v14, v13, v18 - v13, v28);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v28);

  _Block_object_dispose(&v20, 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }
}

void sub_1B2D5C1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, char a28)
{
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a28);

  _Block_object_dispose(&a18, 8);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  _Unwind_Resume(a1);
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v71, v3);
      if (*(v6 + 272) == 1)
      {
        ggl::Batcher::reset((v6 + 144));
        md::RenderItemPool::reset((v6 + 224));
        std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v72, v71);
        if (*(v6 + 272) == 1)
        {
          memset(&v62, 0, sizeof(v62));
          std::vector<unsigned int>::reserve(&v62, 5uLL);
          v57 = v5;
          if (*(v6 + 136))
          {
            LODWORD(v63) = 0;
            std::vector<unsigned int>::push_back[abi:nn200100](&v62, &v63);
            v8 = *(*(v6 + 8) + 56);
            *(v6 + 40) = v8;
            v9 = *(v8 + 58) == 1;
            v10 = 16;
            if (v9)
            {
              v10 = 32;
            }
          }

          else
          {
            v10 = 16;
          }

          v59 = v10;
          begin = v62.__begin_;
          if (v62.__begin_ != v62.__end_)
          {
            v13 = *(v6 + 248);
            v12 = *(v6 + 256);
            if (v13 == v12)
            {
              v14 = 0;
            }

            else
            {
              v14 = 0;
              v58 = *(v6 + 256);
              do
              {
                v15 = *v13;
                if (*(*v13 + 48) == 1)
                {
                  if (*(v15 + 88) != v14)
                  {
                    v60 = v14;
                    if (v14)
                    {
                      v16 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
                      if (v16[1] != *v16)
                      {
                        v17 = v62.__begin_;
                        end = v62.__end_;
                        if (v62.__begin_ != v62.__end_)
                        {
                          v19 = v16;
                          do
                          {
                            v20 = *v17;
                            v63 = &off_1F2A5D8B8;
                            v21 = v6 + 16 + (v20 << 7);
                            v22 = *(v21 + 8);
                            v23 = *(v21 + 24);
                            v66 = *(v21 + 40);
                            v65 = v23;
                            v64 = v22;
                            v24 = *(v21 + 56);
                            v25 = *(v21 + 72);
                            v26 = *(v21 + 88);
                            v70 = *(v21 + 104);
                            v69 = v26;
                            v68 = v25;
                            v67 = v24;
                            v27 = *(v6 + 232);
                            v28 = v27[1];
                            if (v28 == *(v6 + 240))
                            {
                              v27 = *v27;
                              if (!v27)
                              {
                                v27 = malloc_type_malloc(120 * v28 + 16, 0x1020040EDED9539uLL);
                                *v27 = 0;
                                v27[1] = 0;
                                **(v6 + 232) = v27;
                              }

                              *(v6 + 232) = v27;
                              v28 = v27[1];
                            }

                            v29 = &v27[15 * v28];
                            v27[1] = v28 + 1;
                            v29[2] = &off_1F2A5D8B8;
                            v30 = v64;
                            v31 = v65;
                            *(v29 + 7) = v66;
                            *(v29 + 5) = v31;
                            *(v29 + 3) = v30;
                            v32 = v67;
                            v33 = v68;
                            v34 = v69;
                            *(v29 + 15) = v70;
                            *(v29 + 13) = v34;
                            *(v29 + 11) = v33;
                            *(v29 + 9) = v32;
                            ggl::RenderItem::~RenderItem(&v63);
                            v29[10] = v60;
                            v35 = *v19;
                            v29[13] = *v19;
                            v29[14] = (v19[1] - v35) >> 4;
                            std::function<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v73, v20, (v29 + 2));
                            ++v17;
                          }

                          while (v17 != end);
                        }
                      }
                    }

                    v15 = *v13;
                    v14 = *(*v13 + 88);
                    v12 = v58;
                  }

                  ggl::Batcher::addRange(v6 + 144, (v15 + v59));
                }

                ++v13;
              }

              while (v13 != v12);
              begin = v62.__begin_;
            }

            v36 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
            if (v36[1] != *v36)
            {
              v37 = v62.__end_;
              if (begin != v62.__end_)
              {
                v38 = v36;
                v61 = v14;
                do
                {
                  v39 = *begin;
                  v63 = &off_1F2A5D8B8;
                  v40 = v6 + 16 + (v39 << 7);
                  v41 = *(v40 + 8);
                  v42 = *(v40 + 24);
                  v66 = *(v40 + 40);
                  v65 = v42;
                  v64 = v41;
                  v43 = *(v40 + 56);
                  v44 = *(v40 + 72);
                  v45 = *(v40 + 88);
                  v70 = *(v40 + 104);
                  v69 = v45;
                  v68 = v44;
                  v67 = v43;
                  v46 = *(v6 + 232);
                  v47 = v46[1];
                  if (v47 == *(v6 + 240))
                  {
                    v46 = *v46;
                    if (!v46)
                    {
                      v46 = malloc_type_malloc(120 * v47 + 16, 0x1020040EDED9539uLL);
                      *v46 = 0;
                      v46[1] = 0;
                      **(v6 + 232) = v46;
                    }

                    *(v6 + 232) = v46;
                    v47 = v46[1];
                  }

                  v48 = &v46[15 * v47];
                  v46[1] = v47 + 1;
                  v48[2] = &off_1F2A5D8B8;
                  v49 = v64;
                  v50 = v65;
                  *(v48 + 7) = v66;
                  *(v48 + 5) = v50;
                  *(v48 + 3) = v49;
                  v51 = v67;
                  v52 = v68;
                  v53 = v69;
                  *(v48 + 15) = v70;
                  *(v48 + 13) = v53;
                  *(v48 + 11) = v52;
                  *(v48 + 9) = v51;
                  ggl::RenderItem::~RenderItem(&v63);
                  v48[10] = v61;
                  v54 = *v38;
                  v48[13] = *v38;
                  v48[14] = (v38[1] - v54) >> 4;
                  std::function<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v73, v39, (v48 + 2));
                  ++begin;
                }

                while (begin != v37);
                begin = v62.__begin_;
              }
            }
          }

          if (begin)
          {
            v62.__end_ = begin;
            operator delete(begin);
          }

          v4 = a2;
          v3 = a3;
          v5 = v57;
        }

        std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v72);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v71);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2D5C884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, void *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v75, v3);
      if (*(v6 + 400) == 1)
      {
        ggl::Batcher::reset((v6 + 272));
        md::RenderItemPool::reset((v6 + 352));
        std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v76, v75);
        if (*(v6 + 400) == 1)
        {
          v61 = v5;
          memset(&v66, 0, sizeof(v66));
          std::vector<unsigned int>::reserve(&v66, 5uLL);
          v8 = 0;
          v9 = 0;
          v65 = v6 + 16;
          v10 = 1;
          do
          {
            v11 = v10;
            v12 = v65 + (v8 << 7);
            if (*(v12 + 120) == 1)
            {
              LODWORD(v67) = v8;
              std::vector<unsigned int>::push_back[abi:nn200100](&v66, &v67);
              v13 = *(*(v6 + 8) + 8 * v8 + 56);
              *(v12 + 24) = v13;
              v9 |= *(v13 + 58) == 1;
            }

            v10 = 0;
            v8 = 1;
          }

          while ((v11 & 1) != 0);
          begin = v66.__begin_;
          if (v66.__begin_ != v66.__end_)
          {
            v16 = *(v6 + 376);
            v15 = *(v6 + 384);
            if (v16 == v15)
            {
              v17 = 0;
            }

            else
            {
              v17 = 0;
              v18 = 16;
              if (v9)
              {
                v18 = 32;
              }

              v62 = *(v6 + 384);
              v63 = v18;
              do
              {
                v19 = *v16;
                if (*(*v16 + 48) == 1)
                {
                  if (*(v19 + 88) != v17)
                  {
                    v64 = v17;
                    if (v17)
                    {
                      v20 = ggl::Batcher::commit((v6 + 272), 0xC8u, v7);
                      if (v20[1] != *v20)
                      {
                        v21 = v66.__begin_;
                        end = v66.__end_;
                        if (v66.__begin_ != v66.__end_)
                        {
                          v23 = v20;
                          do
                          {
                            v24 = *v21;
                            v67 = &off_1F2A5D8B8;
                            v25 = v65 + (v24 << 7);
                            v26 = *(v25 + 8);
                            v27 = *(v25 + 24);
                            v70 = *(v25 + 40);
                            v69 = v27;
                            v68 = v26;
                            v28 = *(v25 + 56);
                            v29 = *(v25 + 72);
                            v30 = *(v25 + 88);
                            v74 = *(v25 + 104);
                            v73 = v30;
                            v72 = v29;
                            v71 = v28;
                            v31 = *(v6 + 360);
                            v32 = v31[1];
                            if (v32 == *(v6 + 368))
                            {
                              v31 = *v31;
                              if (!v31)
                              {
                                v31 = malloc_type_malloc(120 * v32 + 16, 0x1020040EDED9539uLL);
                                *v31 = 0;
                                v31[1] = 0;
                                **(v6 + 360) = v31;
                              }

                              *(v6 + 360) = v31;
                              v32 = v31[1];
                            }

                            v33 = &v31[15 * v32];
                            v31[1] = v32 + 1;
                            v33[2] = &off_1F2A5D8B8;
                            v34 = v68;
                            v35 = v69;
                            *(v33 + 7) = v70;
                            *(v33 + 5) = v35;
                            *(v33 + 3) = v34;
                            v36 = v71;
                            v37 = v72;
                            v38 = v73;
                            *(v33 + 15) = v74;
                            *(v33 + 13) = v38;
                            *(v33 + 11) = v37;
                            *(v33 + 9) = v36;
                            ggl::RenderItem::~RenderItem(&v67);
                            v33[10] = v64;
                            v39 = *v23;
                            v33[13] = *v23;
                            v33[14] = (v23[1] - v39) >> 4;
                            std::function<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v77, v24, (v33 + 2));
                            ++v21;
                          }

                          while (v21 != end);
                        }
                      }
                    }

                    v19 = *v16;
                    v17 = *(*v16 + 88);
                    v15 = v62;
                  }

                  ggl::Batcher::addRange(v6 + 272, (v19 + v63));
                }

                ++v16;
              }

              while (v16 != v15);
              begin = v66.__begin_;
            }

            v40 = ggl::Batcher::commit((v6 + 272), 0xC8u, v7);
            if (v40[1] != *v40)
            {
              v41 = v66.__end_;
              if (begin != v66.__end_)
              {
                v42 = v40;
                do
                {
                  v43 = *begin;
                  v67 = &off_1F2A5D8B8;
                  v44 = v65 + (v43 << 7);
                  v45 = *(v44 + 8);
                  v46 = *(v44 + 24);
                  v70 = *(v44 + 40);
                  v69 = v46;
                  v68 = v45;
                  v47 = *(v44 + 56);
                  v48 = *(v44 + 72);
                  v49 = *(v44 + 88);
                  v74 = *(v44 + 104);
                  v73 = v49;
                  v72 = v48;
                  v71 = v47;
                  v50 = *(v6 + 360);
                  v51 = v50[1];
                  if (v51 == *(v6 + 368))
                  {
                    v50 = *v50;
                    if (!v50)
                    {
                      v50 = malloc_type_malloc(120 * v51 + 16, 0x1020040EDED9539uLL);
                      *v50 = 0;
                      v50[1] = 0;
                      **(v6 + 360) = v50;
                    }

                    *(v6 + 360) = v50;
                    v51 = v50[1];
                  }

                  v52 = &v50[15 * v51];
                  v50[1] = v51 + 1;
                  v52[2] = &off_1F2A5D8B8;
                  v53 = v68;
                  v54 = v69;
                  *(v52 + 7) = v70;
                  *(v52 + 5) = v54;
                  *(v52 + 3) = v53;
                  v55 = v71;
                  v56 = v72;
                  v57 = v73;
                  *(v52 + 15) = v74;
                  *(v52 + 13) = v57;
                  *(v52 + 11) = v56;
                  *(v52 + 9) = v55;
                  ggl::RenderItem::~RenderItem(&v67);
                  v52[10] = v17;
                  v58 = *v42;
                  v52[13] = *v42;
                  v52[14] = (v42[1] - v58) >> 4;
                  std::function<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v77, v43, (v52 + 2));
                  ++begin;
                }

                while (begin != v41);
                begin = v66.__begin_;
              }
            }
          }

          v4 = a2;
          v3 = a3;
          v5 = v61;
          if (begin)
          {
            v66.__end_ = begin;
            operator delete(begin);
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v76);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v75);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2D5CE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A04F10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A04EC8;
  a2[1] = v2;
  return result;
}

void __destroy_helper_block_ea8_48c68_ZTSNSt3__110shared_ptrIN3gss15StylesheetQueryINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c68_ZTSNSt3__110shared_ptrIN3gss15StylesheetQueryINS1_10PropertyIDEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MPSItem *>(uint64_t a1, void *a2)
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

uint64_t std::function<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1B18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1AD0;
  a2[1] = v2;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteStyledOverlayBatchKey>,std::equal_to<md::RouteStyledOverlayBatchKey>,true>,std::__unordered_map_equal<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteStyledOverlayBatchKey>,std::hash<md::RouteStyledOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v8 = (v2 + 64);
      std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
      v4 = *(v2 + 6);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v5 = *(v2 + 4);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(v6, v5);
  }
}

uint64_t (****std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, v2);
    geo::read_write_lock::unlock((v4 + 32));
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(uint64_t a1, void *a2)
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

void md::RouteStyledOverlayLayer::~RouteStyledOverlayLayer(md::RouteStyledOverlayLayer *this)
{
  *this = &unk_1F29F1928;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F1928;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1948;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1928;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1928;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void md::Ribbons::RibbonWriter<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::eliminateDuplicates(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *a3, uint64_t *a4)
{
  *a4 = 1;
  std::vector<gm::Matrix<float,3,1>>::resize(a2, *(a1 + 88));
  std::vector<unsigned int>::resize(a3, *(a1 + 88));
  v8 = 0;
  v9 = *a2;
  begin = a3->__begin_;
  v11 = *(a1 + 72);
  do
  {
    *(v9 + v8) = *(v11 + v8);
    v8 += 4;
  }

  while (v8 != 12);
  *begin = 0;
  if (*(a1 + 88) >= 2uLL)
  {
    v12 = *a4;
    v13 = v9 + 12 * *a4;
    v14 = v11 + 12;
    v15 = 1;
    do
    {
      v16 = 0;
      begin[v12++] = v15;
      *a4 = v12;
      do
      {
        *(v13 + v16) = *(v14 + v16);
        v16 += 4;
      }

      while (v16 != 12);
      ++v15;
      v13 += 12;
      v14 += 12;
    }

    while (*(a1 + 88) > v15);
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::batch(std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = v6 + 1;
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              ++v31;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::batch(std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::batch(std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::batch(std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::batch(std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 1;
    a1 = std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>::~unique_ptr[abi:nn200100](i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(v5, v4);
  }

  return v1;
}

uint64_t __Block_byref_object_copy__6702(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t __Block_byref_object_copy__7_6705(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::RouteLineSection::Vertex>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteLineRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x80uLL, 0x10A10407B68E491uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

md::RouteLineRibbon *md::RouteLineRibbon::RouteLineRibbon(md::RouteLineRibbon *this, unint64_t a2)
{
  v4 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(this, a2);
  *(v4 + 96) = 0;
  *v4 = &unk_1F2A2F8E0;
  *(v4 + 100) = 0;
  *(v4 + 116) = 0;
  *(v4 + 108) = 0;
  *(v4 + 124) = 0;
  if (a2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return this;
}

uint64_t *std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * {__strong}&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10E00408FA843BFuLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = **a3;
    **a3 = 0;
    v12[4] = v13;
    v12[5] = 0;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    v15 = v12;
    if (v14)
    {
      *a1 = v14;
      v15 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

mdm::zone_mallocator *std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 1);
  if (*(a1 + 2) != v2)
  {
    *(a1 + 2) = v2;
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, v3);
  }

  return a1;
}

void std::vector<gm::Matrix<float,3,1>,geo::allocator_adapter<gm::Matrix<float,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(v2, v1);
  }
}

void *std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RouteLineBatchKey,std::piecewise_construct_t const&,std::tuple<md::RouteLineBatchKey const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
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
    v7 = (*&v5 - 1) & v4;
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

  return v9;
}

void sub_1B2D61D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 1;
    a1 = std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v5, v4);
  }

  return v1;
}

uint64_t (****std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DottedRouteLineBatchKey>,std::equal_to<md::DottedRouteLineBatchKey>,true>,std::__unordered_map_equal<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DottedRouteLineBatchKey>,std::hash<md::DottedRouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = v2 + 3;
      std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

uint64_t std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

void std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v6, v5);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(uint64_t a1, void *a2)
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

void std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          v8 = (**v6)(v6);
          v9 = mdm::zone_mallocator::instance(v8);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DottedRouteLineRibbon>(v9, v6);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v10 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(v10, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DottedRouteLineRibbon>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineRibbon>(uint64_t a1, void *a2)
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

void md::RibbonPointsSource::~RibbonPointsSource(md::RibbonPointsSource *this)
{
  *this = &unk_1F29F1898;
  v1 = (this + 8);
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<gm::Matrix<float,3,1>,geo::allocator_adapter<gm::Matrix<float,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F1898;
  v1 = (this + 8);
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<gm::Matrix<float,3,1>,geo::allocator_adapter<gm::Matrix<float,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void md::RouteLineRibbon::~RouteLineRibbon(md::RouteLineRibbon *this)
{
  *this = &unk_1F2A2F8E0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F8E0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);
}

void __destroy_helper_block_ea8_48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::LabelLayerDataSource::~LabelLayerDataSource(md::LabelLayerDataSource *this)
{
  md::LabelLayerDataSource::~LabelLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F1BA8;
  v2 = *(this + 103);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 784);
  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void ggl::VSTextured::CompositingPipelineState::~CompositingPipelineState(ggl::VSTextured::CompositingPipelineState *this)
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

void ggl::VSTextured::CompositingPipelineSetup::~CompositingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::VSTextured::PassthroughPipelineState::~PassthroughPipelineState(ggl::VSTextured::PassthroughPipelineState *this)
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

void ggl::VSTextured::PassthroughPipelineSetup::~PassthroughPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RasterTileOverlayResourceFetcher::tileKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  Int32 = gdc::ResourceKey::getInt32(v4, 0);
  v6 = gdc::ResourceKey::getInt32(v4, 1u);
  v7 = gdc::ResourceKey::getInt32(v4, 2u);
  gdc::ResourceKey::getInt32(v4, 3u);
  gdc::ResourceKey::getInt32(v4, 5u);
  LOBYTE(v9) = GEOTileKeyMakeEmpty();
  *(&v9 + 1) = v7 & 0x3F | (Int32 << 6);
  *(&v9 + 5) = v6 & 0x3FFFFFF | (*(a1 + 8) << 26);
  return v9;
}

void md::RasterTileOverlayResourceFetcher::~RasterTileOverlayResourceFetcher(md::RasterTileOverlayResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::RasterTileOverlayResourceDecoder::decode(uint64_t a1@<X1>, _BYTE *a2@<X2>, void *a3@<X8>)
{
  if ((a2[112] & 1) != 0 && *a2 && (md::LabelExternalPointFeature::incident(*(*a2 + 16)), (data = objc_claimAutoreleasedReturnValue()) != 0))
  {
    Int32 = gdc::ResourceKey::getInt32(*(a1 + 8), 6u);
    if (![(__CFData *)data length])
    {
      operator new();
    }

    v6 = CGImageSourceCreateWithData(data, 0);
    v7 = v6;
    if (v6)
    {
      if (CGImageSourceGetCount(v6))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
        CFRelease(v7);
        if (ImageAtIndex)
        {
          CGImageGetWidth(ImageAtIndex);
          CGImageGetHeight(ImageAtIndex);
          CGImageGetAlphaInfo(ImageAtIndex);
          if (Int32 >= 1)
          {
            CGImageGetBitsPerComponent(ImageAtIndex);
          }

          operator new();
        }
      }

      else
      {
        CFRelease(v7);
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2D648FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RasterTileResource>::__on_zero_shared(void *a1)
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

void std::__shared_ptr_emplace<md::RasterTileResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A278F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RasterTileOverlayResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DebugDrawContext::addWorldDebugShape(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1[10];
  v6 = a1[11];
  v7 = a1 + 10;
  if (v8 == v6)
  {
    goto LABEL_7;
  }

  v9 = a1[10];
  while (!debugComponents::DisplayOptions::operator==(a3, v9))
  {
    v9 += 5;
    if (v9 == v6)
    {
      goto LABEL_7;
    }
  }

  if (v9 == v6)
  {
LABEL_7:
    v10 = *a3;
    v44 = *a3;
    v45 = *(a3 + 4);
    v46 = *(a3 + 12);
    memset(v47, 0, sizeof(v47));
    memset(v43, 0, sizeof(v43));
    if (v8 == v6)
    {
      goto LABEL_13;
    }

    v9 = v8;
    while (!debugComponents::DisplayOptions::operator==(&v44, v9))
    {
      v9 += 5;
      if (v9 == v6)
      {
        goto LABEL_13;
      }
    }

    if (v9 == v6)
    {
LABEL_13:
      v11 = a1[12];
      if (v6 >= v11)
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x333333333333333)
        {
          v17 = 0x666666666666666;
        }

        else
        {
          v17 = v15;
        }

        v52 = v7;
        if (v17)
        {
          if (v17 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = 40 * v14;
        v49 = 0;
        v50 = v18;
        v51 = 40 * v14;
        *v18 = v10;
        *(v18 + 4) = v45;
        *(v18 + 12) = v46;
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 16) = 0;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(40 * v14 + 16, 0, 0, 0);
        *&v51 = v51 + 40;
        v20 = a1[10];
        v19 = a1[11];
        v21 = v50 + v20 - v19;
        if (v20 != v19)
        {
          v22 = a1[10];
          v23 = v50 + v20 - v19;
          do
          {
            *v23 = *v22;
            v24 = *(v22 + 4);
            *(v23 + 12) = *(v22 + 12);
            *(v23 + 4) = v24;
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 16) = 0;
            *(v23 + 16) = *(v22 + 16);
            *(v23 + 32) = *(v22 + 32);
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            *(v22 + 32) = 0;
            v22 += 40;
            v23 += 40;
          }

          while (v22 != v19);
          do
          {
            v48 = (v20 + 16);
            std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v48);
            v20 += 40;
          }

          while (v20 != v19);
        }

        v25 = a1[10];
        a1[10] = v21;
        v26 = a1[12];
        v41 = v51;
        *(a1 + 11) = v51;
        *&v51 = v25;
        *(&v51 + 1) = v26;
        v49 = v25;
        v50 = v25;
        std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::~__split_buffer(&v49);
        v13 = v41;
      }

      else
      {
        *v6 = v10;
        v12 = v45;
        *(v6 + 12) = v46;
        *(v6 + 4) = v12;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 16) = 0;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(v6 + 16, 0, 0, 0);
        v13 = v6 + 40;
        a1[11] = v6 + 40;
      }

      a1[11] = v13;
      v9 = (v13 - 40);
    }

    v49 = v47;
    std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v49);
    v49 = v43;
    std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v49);
  }

  v28 = v9[3];
  v27 = v9[4];
  if (v28 >= v27)
  {
    v31 = v9[2];
    v32 = 0x6DB6DB6DB6DB6DB7 * ((v28 - v31) >> 4);
    if ((v32 + 1) > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v31) >> 4);
    v34 = 2 * v33;
    if (2 * v33 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x124924924924924)
    {
      v35 = 0x249249249249249;
    }

    else
    {
      v35 = v34;
    }

    v52 = v9 + 2;
    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>(v35);
    }

    v49 = 0;
    v50 = 112 * v32;
    v51 = (112 * v32);
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](112 * v32, a2);
    *&v51 = v51 + 112;
    v36 = v9[2];
    v37 = v9[3];
    v38 = v50 + v36 - v37;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(v36, v37, v38);
    v39 = v9[2];
    v9[2] = v38;
    v40 = v9[4];
    v42 = v51;
    *(v9 + 3) = v51;
    *&v51 = v39;
    *(&v51 + 1) = v40;
    v49 = v39;
    v50 = v39;
    result = std::__split_buffer<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::~__split_buffer(&v49);
    v30 = v42;
  }

  else
  {
    result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v9[3], a2);
    v30 = v28 + 112;
    v9[3] = v28 + 112;
  }

  v9[3] = v30;
  return result;
}

void sub_1B2D64F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&a19);
  a19 = &a11;
  std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 104) = -1;
  v3 = *(a2 + 104);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F29F1E58[v3])(&v5);
    *(a1 + 104) = v3;
  }

  return a1;
}

void sub_1B2D65054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 104);
  if (v14 != -1)
  {
    (off_1F29F1E40[v14])(&a12, v12);
  }

  *(v12 + 104) = -1;
  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = result;
    do
    {
      result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](a3, v8);
      v8 += 112;
      a3 += 112;
    }

    while (v8 != a2);
    do
    {
      v9 = *(v7 + 104);
      if (v9 != -1)
      {
        result = (off_1F29F1E40[v9])(&v10, v7);
      }

      *(v7 + 104) = -1;
      v7 += 112;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 112;
      *(a1 + 16) = v3 - 112;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_1F29F1E40[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 104) = -1;
  v3 = *(a2 + 104);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F29F1E70[v3])(&v5);
    *(a1 + 104) = v3;
  }

  return a1;
}

void sub_1B2D65278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 104);
  if (v14 != -1)
  {
    (off_1F29F1E40[v14])(&a12, v12);
  }

  *(v12 + 104) = -1;
  _Unwind_Resume(exception_object);
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 24);
  *(v2 + 40) = *(a2 + 5);
  *(v2 + 24) = v4;
  *(v2 + 48) = *(a2 + 6);
  result = *(a2 + 56);
  v6 = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = v6;
  *(v2 + 56) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> &&>(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIdLi3EEENS8_6SphereIdLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIdLj3EddEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJSA_SE_SH_EEEEEEDcSR_DpT0_(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 24);
  *(v2 + 40) = *(a2 + 5);
  *(v2 + 24) = v4;
  *(v2 + 48) = *(a2 + 6);
  result = *(a2 + 56);
  v6 = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = v6;
  *(v2 + 56) = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIdLi3EEENS8_6SphereIdLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIdLj3EddEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJSA_SE_SH_EEEEEEDcSR_DpT0_(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIdLi3EEENS8_6SphereIdLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIdLj3EddEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJSA_SE_SH_EEEEEEDcSR_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

BOOL debugComponents::DisplayOptions::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = v2 == *(a2 + 8);
  if (v2 == *(a2 + 8) && v2 != 0)
  {
    return *(a1 + 4) == *(a2 + 4);
  }

  return v3;
}

void std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5 = (i - 24);
    std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t md::DebugDrawContext::addWorldDebugLines(void *a1, void *a2, uint64_t a3)
{
  v8 = a1[13];
  v6 = a1[14];
  v7 = a1 + 13;
  if (v8 == v6)
  {
    goto LABEL_7;
  }

  v9 = a1[13];
  while (!debugComponents::DisplayOptions::operator==(a3, v9))
  {
    v9 += 5;
    if (v9 == v6)
    {
      goto LABEL_7;
    }
  }

  if (v9 == v6)
  {
LABEL_7:
    v10 = *a3;
    v43 = *a3;
    v44 = *(a3 + 4);
    v45 = *(a3 + 12);
    memset(v46, 0, sizeof(v46));
    memset(v42, 0, sizeof(v42));
    if (v8 == v6)
    {
      goto LABEL_13;
    }

    v9 = v8;
    while (!debugComponents::DisplayOptions::operator==(&v43, v9))
    {
      v9 += 5;
      if (v9 == v6)
      {
        goto LABEL_13;
      }
    }

    if (v9 == v6)
    {
LABEL_13:
      v11 = a1[15];
      if (v6 >= v11)
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x333333333333333)
        {
          v17 = 0x666666666666666;
        }

        else
        {
          v17 = v15;
        }

        v51 = v7;
        if (v17)
        {
          if (v17 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = 40 * v14;
        v48 = 0;
        v49 = v18;
        v50 = 40 * v14;
        *v18 = v10;
        *(v18 + 4) = v44;
        *(v18 + 12) = v45;
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 16) = 0;
        std::vector<std::vector<gm::LineSegment<float,3>>>::__init_with_size[abi:nn200100]<std::vector<gm::LineSegment<float,3>>*,std::vector<gm::LineSegment<float,3>>*>(40 * v14 + 16, 0, 0, 0);
        *&v50 = v50 + 40;
        v20 = a1[13];
        v19 = a1[14];
        v21 = v49 + v20 - v19;
        if (v20 != v19)
        {
          v22 = a1[13];
          v23 = v49 + v20 - v19;
          do
          {
            *v23 = *v22;
            v24 = *(v22 + 4);
            *(v23 + 12) = *(v22 + 12);
            *(v23 + 4) = v24;
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 16) = 0;
            *(v23 + 16) = *(v22 + 16);
            *(v23 + 32) = *(v22 + 32);
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            *(v22 + 32) = 0;
            v22 += 40;
            v23 += 40;
          }

          while (v22 != v19);
          do
          {
            v47 = (v20 + 16);
            std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v47);
            v20 += 40;
          }

          while (v20 != v19);
        }

        v25 = a1[13];
        a1[13] = v21;
        v26 = a1[15];
        v41 = v50;
        *(a1 + 7) = v50;
        *&v50 = v25;
        *(&v50 + 1) = v26;
        v48 = v25;
        v49 = v25;
        std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::~__split_buffer(&v48);
        v13 = v41;
      }

      else
      {
        *v6 = v10;
        v12 = v44;
        *(v6 + 12) = v45;
        *(v6 + 4) = v12;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 16) = 0;
        std::vector<std::vector<gm::LineSegment<float,3>>>::__init_with_size[abi:nn200100]<std::vector<gm::LineSegment<float,3>>*,std::vector<gm::LineSegment<float,3>>*>(v6 + 16, 0, 0, 0);
        v13 = v6 + 40;
        a1[14] = v6 + 40;
      }

      a1[14] = v13;
      v9 = (v13 - 40);
    }

    v48 = v46;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v48);
    v48 = v42;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v48);
  }

  v28 = v9[3];
  v27 = v9[4];
  if (v28 >= v27)
  {
    v31 = v9[2];
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
    if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v31) >> 3);
    v34 = 2 * v33;
    if (2 * v33 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x555555555555555)
    {
      v35 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v35 = v34;
    }

    v51 = v9 + 2;
    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v35);
    }

    v48 = 0;
    v49 = 24 * v32;
    v50 = 24 * v32;
    std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100]((24 * v32), a2);
    v30 = v50 + 24;
    v36 = v9[2];
    v37 = v9[3] - v36;
    v38 = v49 - v37;
    memcpy((v49 - v37), v36, v37);
    v39 = v9[2];
    v9[2] = v38;
    v9[3] = v30;
    v40 = v9[4];
    v9[4] = *(&v50 + 1);
    *&v50 = v39;
    *(&v50 + 1) = v40;
    v48 = v39;
    v49 = v39;
    result = std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&v48);
  }

  else
  {
    result = std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100](v9[3], a2);
    v30 = v28 + 24;
    v9[3] = v30;
  }

  v9[3] = v30;
  return result;
}

void sub_1B2D658E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a19);
  a19 = &a11;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::vector<gm::LineSegment<float,3>>>::__init_with_size[abi:nn200100]<std::vector<gm::LineSegment<float,3>>*,std::vector<gm::LineSegment<float,3>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5 = (i - 24);
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 52) = -1;
  v3 = *(a2 + 52);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F29F1EA8[v3])(&v5);
    *(a1 + 52) = v3;
  }

  return a1;
}

void sub_1B2D65AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 52);
  if (v14 != -1)
  {
    (off_1F29F1E88[v14])(&a12, v12);
  }

  *(v12 + 52) = -1;
  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 56;
      *(a1 + 16) = v3 - 56;
      v5 = *(v3 - 4);
      if (v5 != -1)
      {
        (off_1F29F1E88[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 4) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>> &&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 12);
  *(v2 + 20) = *(a2 + 5);
  *(v2 + 12) = v4;
  *(v2 + 24) = *(a2 + 6);
  result = *(a2 + 28);
  *(v2 + 28) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>> &&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 12);
  *(v2 + 20) = *(a2 + 5);
  *(v2 + 12) = v4;
  *(v2 + 24) = *(a2 + 6);
  result = *(a2 + 28);
  *(v2 + 44) = *(a2 + 44);
  *(v2 + 28) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIfLi3EEENS8_6SphereIfLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIfLj3EffEENSG_IfLj2EffEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SE_SH_SI_EEEEEEDcSS_DpT0_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 12);
  *(v2 + 20) = *(a2 + 5);
  *(v2 + 12) = v4;
  *(v2 + 24) = *(a2 + 6);
  result = *(a2 + 28);
  *(v2 + 28) = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIfLi3EEENS8_6SphereIfLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIfLj3EffEENSG_IfLj2EffEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SE_SH_SI_EEEEEEDcSS_DpT0_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 12);
  *(v2 + 20) = *(a2 + 5);
  *(v2 + 12) = v4;
  *(v2 + 24) = *(a2 + 6);
  result = *(a2 + 28);
  *(v2 + 44) = *(a2 + 44);
  *(v2 + 28) = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIfLi3EEENS8_6SphereIfLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIfLj3EffEENSG_IfLj2EffEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SE_SH_SI_EEEEEEDcSS_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2gm3BoxIfLi3EEENS8_6SphereIfLi3ENS_9enable_ifILb1EvEEEEN3geo11OrientedBoxIfLj3EffEENSG_IfLj2EffEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SE_SH_SI_EEEEEEDcSS_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

void std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*,std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5 = (i - 24);
    std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Point::ExtendedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Point::ExtendedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Point::ExtendedMesh::~ExtendedMesh(ggl::Point::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Point::ExtendedMesh::~ExtendedMesh(ggl::Point::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::attributesReflection(void)::r = &ggl::CommonMesh::bufferPos4Reflection;
      *algn_1EB843398 = &ggl::Point::extendedVboReflection;
    }

    ggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::attributesReflection(void)::r;
    unk_1EB843380 = 2;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4,ggl::Point::ExtendedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Point::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Point::ExtendedPipelineState::~ExtendedPipelineState(ggl::Point::ExtendedPipelineState *this)
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

void ggl::Point::ExtendedPipelineSetup::~ExtendedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
    *algn_1EB82DC28 = 0xC018F3D549EA57BALL;
    qword_1EB82DC30 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DC38 = 69;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2260;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2280;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2260;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)33>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2150;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2170;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2150;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F3080;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)33>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9052DC4F017D3735 && (v5 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v8;
    return (*(*a1 + 160))(a1, a2, &v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)33>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)33>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A252A0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)33>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)33>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
    unk_1EB82DC00 = 0x6EE431FCF9BF7D59;
    qword_1EB82DC08 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DC10 = 74;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F24E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2508;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F24E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)34>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F23D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F23F8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F23D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F31B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F31D8;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F31B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)34>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3150;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3150;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F30E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F30E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x412AFB1345D08930 && (v5 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v8;
    return (*(*a1 + 160))(a1, a2, &v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)34>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)34>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25768;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)34>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)34>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
    *algn_1EB82DBD8 = 0x1658AB057F40C6F2;
    qword_1EB82DBE0 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DBE8 = 72;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2790;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)54>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2680;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F3330;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)54>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F32A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F32A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5B0BFF71B88387C7 && (v5 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v8;
    return (*(*a1 + 160))(a1, a2, &v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)54>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)54>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25900;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)54>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)54>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
    unk_1EB82DBB0 = 0xF23C21D2B4D31454;
    qword_1EB82DBB8 = "SceneComponents::LayerDataDidExitView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DBC0 = 72;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F29F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2A18;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F29F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)62>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F28E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2908;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F28E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3468;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F3488;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3468;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)62>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3400;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3400;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3398;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3398;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5A88E3C88DA0DCA1 && (v5 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v8;
    return (*(*a1 + 160))(a1, a2, &v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)62>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)62>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25A98;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)62>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)62>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::CollectMapDataLogic<(md::MapDataType)75>::runBeforeLayout(uint64_t a1, uint64_t a2, md::SceneContext **a3)
{
  v387 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(v4);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  if (v7 != v8)
  {
    v9 = *(v4 + 41016) + 4 * (v5 >> 5);
    do
    {
      *(v9 + (*(v7 + 2) << 6)) &= ~(1 << v5);
      v7 += 4;
    }

    while (v7 != v8);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(v4);
  ecs2::signal<>::publish(v10[37], v10[38]);
    ;
  }

  *(v4 + 8 * v5) = *(v4 + 4096);
  v12 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
  v13 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata;
  v14 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(v12);
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  if (v15 != v16)
  {
    v17 = *(v12 + 41016) + 4 * (v13 >> 5);
    do
    {
      *(v17 + (*(v15 + 2) << 6)) &= ~(1 << v13);
      v15 += 4;
    }

    while (v15 != v16);
  }

  v18 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(v12);
  ecs2::signal<>::publish(v18[37], v18[38]);
    ;
  }

  *(v12 + 8 * v13) = *(v12 + 4096);
  v364 = *a3;
  v20 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v21 = *(v20 + 4112);
    v22 = *(v20 + 4128);
    if (*(v20 + 4104) == v21)
    {
      WORD1(v383) = (*(v20 + 4136) - v22) >> 2;
      LOWORD(v383) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v20 + 4128, &v383);
      v23 = v383;
      v346 = *(v20 + 41024);
      v347 = *(v20 + 41032);
      if (v346 >= v347)
      {
        v349 = *(v20 + 41016);
        v350 = (v346 - v349) >> 6;
        v351 = v350 + 1;
        if ((v350 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v352 = v347 - v349;
        if (v352 >> 5 > v351)
        {
          v351 = v352 >> 5;
        }

        if (v352 >= 0x7FFFFFFFFFFFFFC0)
        {
          v353 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v353 = v351;
        }

        if (v353)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v353);
        }

        v354 = (v350 << 6);
        v354[2] = 0u;
        v354[3] = 0u;
        *v354 = 0u;
        v354[1] = 0u;
        v348 = (v350 << 6) + 64;
        v355 = *(v20 + 41016);
        v356 = *(v20 + 41024) - v355;
        v357 = v354 - v356;
        memcpy(v354 - v356, v355, v356);
        v358 = *(v20 + 41016);
        *(v20 + 41016) = v357;
        *(v20 + 41024) = v348;
        *(v20 + 41032) = 0;
        if (v358)
        {
          operator delete(v358);
        }
      }

      else
      {
        v346[2] = 0u;
        v346[3] = 0u;
        *v346 = 0u;
        v346[1] = 0u;
        v348 = (v346 + 4);
      }

      *(v20 + 41024) = v348;
      v24 = *(a1 + 128);
    }

    else
    {
      v23 = *(v22 + 4 * *(v21 - 8));
      *(v20 + 4112) = v21 - 8;
      v24 = v20;
    }

    *(a1 + 120) = v23;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)75>>(v24, v23);
    v25 = *(a1 + 128);
    LODWORD(v383) = *(a1 + 120);
    v26 = v383;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>();
    k = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata;
    v28 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)75>>(v25);
    v29 = v28;
    v30 = v26 >> 22;
    v32 = (v28 + 8);
    v31 = *(v28 + 8);
    if (v26 >> 22 >= (*(v28 + 16) - v31) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v28 + 8), v30 + 1);
      v31 = *v32;
    }

    v33 = *(v31 + 8 * v30);
    if (!v33)
    {
      operator new();
    }

    v34 = (v33 + 4 * ((v26 >> 16) & 0x3F));
    v35 = v34[1];
    v36 = *v34 == -1 && v35 == 0;
    v362 = v20;
    if (!v36)
    {
      *(*(*(v29 + 56) + ((v35 >> 3) & 0x1FF8)) + 2 * (v35 & 0x3F)) = 75;
      goto LABEL_55;
    }

    v371 = k;
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v29 + 32, &v383);
    v37 = ((*(v29 + 40) - *(v29 + 32)) >> 2) - 1;
    *v34 = v26;
    v34[1] = v37;
    v38 = v37 >> 6;
    v40 = *(v29 + 56);
    v39 = *(v29 + 64);
    v41 = v39 - v40;
    if (v37 >> 6 < (v39 - v40) >> 3)
    {
LABEL_53:
      *(*(v40 + 8 * v38) + 2 * (v37 & 0x3F)) = 75;
      v61 = *(v29 + 152);
      v62 = *(v29 + 160);
      for (k = v371; v61 != v62; v61 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v61 + 24), v26);
      }

LABEL_55:
      v63 = *(v25 + 41016) + (v26 >> 16 << 6);
      *(v63 + ((k >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << k;
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>();
      *(v25 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata) = *(v25 + 4096);
      v64 = *(a1 + 128);
      v65 = *(a1 + 120);
      *(&v383 + 1) = 0;
      *&v384 = 0;
      *&v383 = &v383 + 8;
      LODWORD(v377) = v65;
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>();
      v366 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata;
      v372 = v64;
      v66 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(v64);
      v67 = v66;
      v68 = v65 >> 22;
      v69 = *(v66 + 8);
      v70 = (v66 + 8);
      if (v65 >> 22 >= (*(v66 + 16) - v69) >> 3)
      {
        std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v66 + 8), v68 + 1);
        v69 = *v70;
      }

      v71 = *(v69 + 8 * v68);
      if (!v71)
      {
        operator new();
      }

      v72 = (v71 + 4 * ((v65 >> 16) & 0x3F));
      v73 = v72[1];
      if (*v72 != -1 || v73 != 0)
      {
        v105 = *(*(v67 + 56) + ((v73 >> 3) & 0x1FF8)) + 24 * (v73 & 0x3F);
        v106 = (v105 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v105 + 8));
        *v105 = v383;
        v107 = *(&v383 + 1);
        *v106 = *(&v383 + 1);
        v108 = v384;
        *(v105 + 16) = v384;
        if (v108)
        {
          *(v107 + 16) = v106;
          *&v383 = &v383 + 8;
          *(&v383 + 1) = 0;
          *&v384 = 0;
        }

        else
        {
          *v105 = v106;
        }

        goto LABEL_103;
      }

      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v67 + 32, &v377);
      v75 = ((*(v67 + 40) - *(v67 + 32)) >> 2) - 1;
      *v72 = v65;
      v72[1] = v75;
      v76 = v75 >> 6;
      v78 = *(v67 + 56);
      v77 = *(v67 + 64);
      v79 = v77 - v78;
      if (v75 >> 6 < (v77 - v78) >> 3)
      {
LABEL_94:
        v99 = (*(v78 + 8 * v76) + 24 * (v75 & 0x3F));
        *v99 = v383;
        v100 = *(&v383 + 1);
        v99[1] = *(&v383 + 1);
        v101 = v99 + 1;
        v102 = v384;
        v99[2] = v384;
        if (v102)
        {
          *(v100 + 16) = v101;
          *&v383 = &v383 + 8;
          *(&v383 + 1) = 0;
          *&v384 = 0;
        }

        else
        {
          *v99 = v101;
        }

        v103 = *(v67 + 152);
        v104 = *(v67 + 160);
        while (v103 != v104)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v103 + 24), v65);
          v103 += 32;
        }

LABEL_103:
        v109 = *(v372 + 41016) + (v65 >> 16 << 6);
        *(v109 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v366;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>();
        *(v372 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata) = *(v372 + 4096);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
        v110 = *(a1 + 128);
        v111 = *(a1 + 120);
        *(&v383 + 1) = 0;
        *&v384 = 0;
        *&v383 = &v383 + 8;
        LODWORD(v377) = v111;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>();
        v367 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata;
        v373 = v110;
        v112 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(v110);
        v113 = v112;
        v114 = v111 >> 22;
        v115 = *(v112 + 8);
        v116 = (v112 + 8);
        if (v111 >> 22 >= (*(v112 + 16) - v115) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v112 + 8), v114 + 1);
          v115 = *v116;
        }

        v117 = *(v115 + 8 * v114);
        if (!v117)
        {
          operator new();
        }

        v118 = (v117 + 4 * ((v111 >> 16) & 0x3F));
        v119 = v118[1];
        if (*v118 != -1 || v119 != 0)
        {
          v151 = *(*(v113 + 56) + ((v119 >> 3) & 0x1FF8)) + 24 * (v119 & 0x3F);
          v152 = (v151 + 8);
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(v151 + 8));
          *v151 = v383;
          v153 = *(&v383 + 1);
          *v152 = *(&v383 + 1);
          v154 = v384;
          *(v151 + 16) = v384;
          if (v154)
          {
            *(v153 + 16) = v152;
            *&v383 = &v383 + 8;
            *(&v383 + 1) = 0;
            *&v384 = 0;
          }

          else
          {
            *v151 = v152;
          }

          goto LABEL_151;
        }

        std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v113 + 32, &v377);
        v121 = ((*(v113 + 40) - *(v113 + 32)) >> 2) - 1;
        *v118 = v111;
        v118[1] = v121;
        v122 = v121 >> 6;
        v124 = *(v113 + 56);
        v123 = *(v113 + 64);
        v125 = v123 - v124;
        if (v121 >> 6 < (v123 - v124) >> 3)
        {
LABEL_142:
          v145 = (*(v124 + 8 * v122) + 24 * (v121 & 0x3F));
          *v145 = v383;
          v146 = *(&v383 + 1);
          v145[1] = *(&v383 + 1);
          v147 = v145 + 1;
          v148 = v384;
          v145[2] = v384;
          if (v148)
          {
            *(v146 + 16) = v147;
            *&v383 = &v383 + 8;
            *(&v383 + 1) = 0;
            *&v384 = 0;
          }

          else
          {
            *v145 = v147;
          }

          v149 = *(v113 + 152);
          v150 = *(v113 + 160);
          while (v149 != v150)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v149 + 24), v111);
            v149 += 32;
          }

LABEL_151:
          v155 = *(v373 + 41016) + (v111 >> 16 << 6);
          *(v155 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v367;
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>();
          *(v373 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata) = *(v373 + 4096);
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
          v156 = *(a1 + 128);
          v157 = *(a1 + 120);
          *(&v383 + 1) = 0;
          *&v384 = 0;
          *&v383 = &v383 + 8;
          LODWORD(v377) = v157;
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>();
          v368 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata;
          v374 = v156;
          v158 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(v156);
          v159 = v158;
          v160 = v157 >> 22;
          v161 = *(v158 + 8);
          v162 = (v158 + 8);
          if (v157 >> 22 >= (*(v158 + 16) - v161) >> 3)
          {
            std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v158 + 8), v160 + 1);
            v161 = *v162;
          }

          v163 = *(v161 + 8 * v160);
          if (!v163)
          {
            operator new();
          }

          v164 = (v163 + 4 * ((v157 >> 16) & 0x3F));
          v165 = v164[1];
          if (*v164 != -1 || v165 != 0)
          {
            v197 = *(*(v159 + 56) + ((v165 >> 3) & 0x1FF8)) + 24 * (v165 & 0x3F);
            v198 = (v197 + 8);
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(v197 + 8));
            *v197 = v383;
            v199 = *(&v383 + 1);
            *v198 = *(&v383 + 1);
            v200 = v384;
            *(v197 + 16) = v384;
            if (v200)
            {
              *(v199 + 16) = v198;
              *&v383 = &v383 + 8;
              *(&v383 + 1) = 0;
              *&v384 = 0;
            }

            else
            {
              *v197 = v198;
            }

LABEL_199:
            v201 = *(v374 + 41016) + (v157 >> 16 << 6);
            *(v201 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v368;
            ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>();
            *(v374 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata) = *(v374 + 4096);
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
            v202 = *(a1 + 128);
            v203 = *(a1 + 120);
            *(&v383 + 1) = 0;
            *&v384 = 0;
            *&v383 = &v383 + 8;
            LODWORD(v377) = v203;
            ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>();
            v369 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata;
            v375 = v202;
            v204 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(v202);
            v205 = v204;
            v206 = v203 >> 22;
            v207 = *(v204 + 8);
            v208 = (v204 + 8);
            if (v203 >> 22 >= (*(v204 + 16) - v207) >> 3)
            {
              std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v204 + 8), v206 + 1);
              v207 = *v208;
            }

            v209 = *(v207 + 8 * v206);
            if (!v209)
            {
              operator new();
            }

            v210 = (v209 + 4 * ((v203 >> 16) & 0x3F));
            v211 = v210[1];
            if (*v210 != -1 || v211 != 0)
            {
              v243 = *(*(v205 + 56) + ((v211 >> 3) & 0x1FF8)) + 24 * (v211 & 0x3F);
              v244 = (v243 + 8);
              std::__tree<gdc::LayerDataWithWorld>::destroy(*(v243 + 8));
              *v243 = v383;
              v245 = *(&v383 + 1);
              *v244 = *(&v383 + 1);
              v246 = v384;
              *(v243 + 16) = v384;
              if (v246)
              {
                *(v245 + 16) = v244;
                *&v383 = &v383 + 8;
                *(&v383 + 1) = 0;
                *&v384 = 0;
              }

              else
              {
                *v243 = v244;
              }

              v20 = v362;
LABEL_248:
              v247 = *(v375 + 41016) + (v203 >> 16 << 6);
              *(v247 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v369;
              ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>();
              *(v375 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata) = *(v375 + 4096);
              std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
              goto LABEL_249;
            }

            std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v205 + 32, &v377);
            v213 = ((*(v205 + 40) - *(v205 + 32)) >> 2) - 1;
            *v210 = v203;
            v210[1] = v213;
            v214 = v213 >> 6;
            v216 = *(v205 + 56);
            v215 = *(v205 + 64);
            v217 = v215 - v216;
            if (v213 >> 6 < (v215 - v216) >> 3)
            {
LABEL_238:
              v237 = (*(v216 + 8 * v214) + 24 * (v213 & 0x3F));
              *v237 = v383;
              v238 = *(&v383 + 1);
              v237[1] = *(&v383 + 1);
              v239 = v237 + 1;
              v240 = v384;
              v237[2] = v384;
              if (v240)
              {
                *(v238 + 16) = v239;
                *&v383 = &v383 + 8;
                *(&v383 + 1) = 0;
                *&v384 = 0;
              }

              else
              {
                *v237 = v239;
              }

              v20 = v362;
              v241 = *(v205 + 152);
              v242 = *(v205 + 160);
              while (v241 != v242)
              {
                std::function<void ()(ecs2::Entity)>::operator()(*(v241 + 24), v203);
                v241 += 32;
              }

              goto LABEL_248;
            }

            v218 = v214 + 1;
            v219 = v214 + 1 - (v217 >> 3);
            v220 = *(v205 + 72);
            if (v219 > (v220 - v215) >> 3)
            {
              v221 = v220 - v216;
              v222 = (v220 - v216) >> 2;
              if (v222 <= v218)
              {
                v222 = v214 + 1;
              }

              if (v221 >= 0x7FFFFFFFFFFFFFF8)
              {
                v223 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v223 = v222;
              }

              if (!(v223 >> 61))
              {
                operator new();
              }

              goto LABEL_387;
            }

            v224 = 0;
            v225 = (v219 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
            v226 = vdupq_n_s64(v225);
            do
            {
              v227 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(vdupq_n_s64(v224), xmmword_1B33B0560)));
              if (v227.i8[0])
              {
                *(v215 + 8 * v224) = 0;
              }

              if (v227.i8[4])
              {
                *(v215 + 8 * v224 + 8) = 0;
              }

              v224 += 2;
            }

            while (v225 - ((v219 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v224);
            *(v205 + 64) = v215 + 8 * v219;
            v228 = *(v205 + 80);
            v229 = *(v205 + 88);
            v230 = (v229 - v228) >> 4;
            if (v230 > v214)
            {
              if (v218 >= v230)
              {
                goto LABEL_236;
              }

              v231 = v228 + 16 * v218;
LABEL_235:
              *(v205 + 88) = v231;
LABEL_236:
              v216 = *(v205 + 56);
              if (v217 < (*(v205 + 64) - v216))
              {
                operator new();
              }

              goto LABEL_238;
            }

            v232 = v218 - v230;
            v233 = *(v205 + 96);
            if (v232 <= (v233 - v229) >> 4)
            {
              bzero(*(v205 + 88), 16 * v232);
              v231 = v229 + 16 * v232;
              goto LABEL_235;
            }

            v234 = v233 - v228;
            v235 = v234 >> 3;
            if (v234 >> 3 <= v218)
            {
              v235 = v214 + 1;
            }

            if (v234 >= 0x7FFFFFFFFFFFFFF0)
            {
              v236 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v236 = v235;
            }

            if (!(v236 >> 60))
            {
              operator new();
            }

LABEL_387:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v159 + 32, &v377);
          v167 = ((*(v159 + 40) - *(v159 + 32)) >> 2) - 1;
          *v164 = v157;
          v164[1] = v167;
          v168 = v167 >> 6;
          v170 = *(v159 + 56);
          v169 = *(v159 + 64);
          v171 = v169 - v170;
          if (v167 >> 6 < (v169 - v170) >> 3)
          {
LABEL_190:
            v191 = (*(v170 + 8 * v168) + 24 * (v167 & 0x3F));
            *v191 = v383;
            v192 = *(&v383 + 1);
            v191[1] = *(&v383 + 1);
            v193 = v191 + 1;
            v194 = v384;
            v191[2] = v384;
            if (v194)
            {
              *(v192 + 16) = v193;
              *&v383 = &v383 + 8;
              *(&v383 + 1) = 0;
              *&v384 = 0;
            }

            else
            {
              *v191 = v193;
            }

            v195 = *(v159 + 152);
            v196 = *(v159 + 160);
            while (v195 != v196)
            {
              std::function<void ()(ecs2::Entity)>::operator()(*(v195 + 24), v157);
              v195 += 32;
            }

            goto LABEL_199;
          }

          v172 = v168 + 1;
          v173 = v168 + 1 - (v171 >> 3);
          v174 = *(v159 + 72);
          if (v173 > (v174 - v169) >> 3)
          {
            v175 = v174 - v170;
            v176 = (v174 - v170) >> 2;
            if (v176 <= v172)
            {
              v176 = v168 + 1;
            }

            if (v175 >= 0x7FFFFFFFFFFFFFF8)
            {
              v177 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v176;
            }

            if (!(v177 >> 61))
            {
              operator new();
            }

            goto LABEL_387;
          }

          v178 = 0;
          v179 = (v173 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v180 = vdupq_n_s64(v179);
          do
          {
            v181 = vmovn_s64(vcgeq_u64(v180, vorrq_s8(vdupq_n_s64(v178), xmmword_1B33B0560)));
            if (v181.i8[0])
            {
              *(v169 + 8 * v178) = 0;
            }

            if (v181.i8[4])
            {
              *(v169 + 8 * v178 + 8) = 0;
            }

            v178 += 2;
          }

          while (v179 - ((v173 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v178);
          *(v159 + 64) = v169 + 8 * v173;
          v182 = *(v159 + 80);
          v183 = *(v159 + 88);
          v184 = (v183 - v182) >> 4;
          if (v184 <= v168)
          {
            v186 = v172 - v184;
            v187 = *(v159 + 96);
            if (v186 > (v187 - v183) >> 4)
            {
              v188 = v187 - v182;
              v189 = v188 >> 3;
              if (v188 >> 3 <= v172)
              {
                v189 = v168 + 1;
              }

              if (v188 >= 0x7FFFFFFFFFFFFFF0)
              {
                v190 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v189;
              }

              if (!(v190 >> 60))
              {
                operator new();
              }

              goto LABEL_387;
            }

            bzero(*(v159 + 88), 16 * v186);
            v185 = v183 + 16 * v186;
          }

          else
          {
            if (v172 >= v184)
            {
              goto LABEL_188;
            }

            v185 = v182 + 16 * v172;
          }

          *(v159 + 88) = v185;
LABEL_188:
          v170 = *(v159 + 56);
          if (v171 < (*(v159 + 64) - v170))
          {
            operator new();
          }

          goto LABEL_190;
        }

        v126 = v122 + 1;
        v127 = v122 + 1 - (v125 >> 3);
        v128 = *(v113 + 72);
        if (v127 > (v128 - v123) >> 3)
        {
          v129 = v128 - v124;
          v130 = (v128 - v124) >> 2;
          if (v130 <= v126)
          {
            v130 = v122 + 1;
          }

          if (v129 >= 0x7FFFFFFFFFFFFFF8)
          {
            v131 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v131 = v130;
          }

          if (!(v131 >> 61))
          {
            operator new();
          }

          goto LABEL_387;
        }

        v132 = 0;
        v133 = (v127 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v134 = vdupq_n_s64(v133);
        do
        {
          v135 = vmovn_s64(vcgeq_u64(v134, vorrq_s8(vdupq_n_s64(v132), xmmword_1B33B0560)));
          if (v135.i8[0])
          {
            *(v123 + 8 * v132) = 0;
          }

          if (v135.i8[4])
          {
            *(v123 + 8 * v132 + 8) = 0;
          }

          v132 += 2;
        }

        while (v133 - ((v127 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v132);
        *(v113 + 64) = v123 + 8 * v127;
        v136 = *(v113 + 80);
        v137 = *(v113 + 88);
        v138 = (v137 - v136) >> 4;
        if (v138 <= v122)
        {
          v140 = v126 - v138;
          v141 = *(v113 + 96);
          if (v140 > (v141 - v137) >> 4)
          {
            v142 = v141 - v136;
            v143 = v142 >> 3;
            if (v142 >> 3 <= v126)
            {
              v143 = v122 + 1;
            }

            if (v142 >= 0x7FFFFFFFFFFFFFF0)
            {
              v144 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v144 = v143;
            }

            if (!(v144 >> 60))
            {
              operator new();
            }

            goto LABEL_387;
          }

          bzero(*(v113 + 88), 16 * v140);
          v139 = v137 + 16 * v140;
        }

        else
        {
          if (v126 >= v138)
          {
            goto LABEL_140;
          }

          v139 = v136 + 16 * v126;
        }

        *(v113 + 88) = v139;
LABEL_140:
        v124 = *(v113 + 56);
        if (v125 < (*(v113 + 64) - v124))
        {
          operator new();
        }

        goto LABEL_142;
      }

      v80 = v76 + 1;
      v81 = v76 + 1 - (v79 >> 3);
      v82 = *(v67 + 72);
      if (v81 > (v82 - v77) >> 3)
      {
        v83 = v82 - v78;
        v84 = (v82 - v78) >> 2;
        if (v84 <= v80)
        {
          v84 = v76 + 1;
        }

        if (v83 >= 0x7FFFFFFFFFFFFFF8)
        {
          v85 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v84;
        }

        if (!(v85 >> 61))
        {
          operator new();
        }

        goto LABEL_387;
      }

      v86 = 0;
      v87 = (v81 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v88 = vdupq_n_s64(v87);
      do
      {
        v89 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(vdupq_n_s64(v86), xmmword_1B33B0560)));
        if (v89.i8[0])
        {
          *(v77 + 8 * v86) = 0;
        }

        if (v89.i8[4])
        {
          *(v77 + 8 * v86 + 8) = 0;
        }

        v86 += 2;
      }

      while (v87 - ((v81 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v86);
      *(v67 + 64) = v77 + 8 * v81;
      v90 = *(v67 + 80);
      v91 = *(v67 + 88);
      v92 = (v91 - v90) >> 4;
      if (v92 <= v76)
      {
        v94 = v80 - v92;
        v95 = *(v67 + 96);
        if (v94 > (v95 - v91) >> 4)
        {
          v96 = v95 - v90;
          v97 = v96 >> 3;
          if (v96 >> 3 <= v80)
          {
            v97 = v76 + 1;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF0)
          {
            v98 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v97;
          }

          if (!(v98 >> 60))
          {
            operator new();
          }

          goto LABEL_387;
        }

        bzero(*(v67 + 88), 16 * v94);
        v93 = v91 + 16 * v94;
      }

      else
      {
        if (v80 >= v92)
        {
          goto LABEL_92;
        }

        v93 = v90 + 16 * v80;
      }

      *(v67 + 88) = v93;
LABEL_92:
      v78 = *(v67 + 56);
      if (v79 < (*(v67 + 64) - v78))
      {
        operator new();
      }

      goto LABEL_94;
    }

    v42 = v38 + 1;
    v43 = v38 + 1 - (v41 >> 3);
    v44 = *(v29 + 72);
    if (v43 > (v44 - v39) >> 3)
    {
      v45 = v44 - v40;
      v46 = (v44 - v40) >> 2;
      if (v46 <= v42)
      {
        v46 = v38 + 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v46;
      }

      if (!(v47 >> 61))
      {
        operator new();
      }

      goto LABEL_387;
    }

    v48 = 0;
    v49 = (v43 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v50 = vdupq_n_s64(v49);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v48), xmmword_1B33B0560)));
      if (v51.i8[0])
      {
        *(v39 + 8 * v48) = 0;
      }

      if (v51.i8[4])
      {
        *(v39 + 8 * v48 + 8) = 0;
      }

      v48 += 2;
    }

    while (v49 - ((v43 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v48);
    *(v29 + 64) = v39 + 8 * v43;
    v52 = *(v29 + 80);
    v53 = *(v29 + 88);
    v54 = (v53 - v52) >> 4;
    if (v54 <= v38)
    {
      v56 = v42 - v54;
      v57 = *(v29 + 96);
      if (v56 > (v57 - v53) >> 4)
      {
        v58 = v57 - v52;
        v59 = v58 >> 3;
        if (v58 >> 3 <= v42)
        {
          v59 = v38 + 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFF0)
        {
          v60 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v59;
        }

        if (!(v60 >> 60))
        {
          operator new();
        }

        goto LABEL_387;
      }

      bzero(*(v29 + 88), 16 * v56);
      v55 = v53 + 16 * v56;
    }

    else
    {
      if (v42 >= v54)
      {
        goto LABEL_51;
      }

      v55 = v52 + 16 * v42;
    }

    *(v29 + 88) = v55;
LABEL_51:
    v40 = *(v29 + 56);
    if (v41 < (*(v29 + 64) - v40))
    {
      operator new();
    }

    goto LABEL_53;
  }

LABEL_249:
  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)75>>(v20);
  v248 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(v20);
  v249 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(v20);
  v250 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(v20);
  v251 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(v20);
  *&v383 = v248;
  *(&v383 + 1) = v249;
  v252 = 8;
  v253 = v248;
  v254 = &v383;
  *&v384 = v250;
  *(&v384 + 1) = v251;
  do
  {
    if (*(*(&v383 + v252) + 40) - *(*(&v383 + v252) + 32) < *(v253 + 40) - *(v253 + 32))
    {
      v253 = *(&v383 + v252);
      v254 = &v383 + v252;
    }

    v252 += 8;
  }

  while (v252 != 32);
  v256 = *(*v254 + 32);
  v255 = *(*v254 + 40);
  *&v383 = v256;
  *(&v383 + 1) = v255;
  *&v384 = v248;
  *(&v384 + 1) = v249;
  *&v385 = v250;
  *(&v385 + 1) = v251;
  v370 = v255;
  while (v256 != v255 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v383, *v256, v256[1]))
  {
    v256 += 2;
    *&v383 = v256;
    v255 = v370;
  }

  v377 = v383;
  v378 = v384;
  v379 = v385;
  v380 = v386;
  v257 = v383;
  if (v383 != v370)
  {
    v361 = v379;
    v363 = *(&v378 + 1);
    v258 = *(&v377 + 1);
    v359 = v378;
    v360 = *(&v379 + 1);
    do
    {
      v259 = v257[1];
      v260 = v259 & 0x3F;
      v261 = (v259 >> 3) & 0x1FF8;
      v262 = *(*(*(v359 + 8) + v261) + 4 * v260 + 2);
      v263 = *(*(v359 + 56) + ((v262 >> 3) & 0x1FF8)) + 24 * (v262 & 0x3F);
      v264 = *(*(*(v363 + 8) + v261) + 4 * v260 + 2);
      v265 = (*(*(v363 + 56) + ((v264 >> 3) & 0x1FF8)) + 24 * (v264 & 0x3F));
      v266 = *(*(*(v361 + 8) + v261) + 4 * v260 + 2);
      v267 = *(*(v361 + 56) + ((v266 >> 3) & 0x1FF8)) + 24 * (v266 & 0x3F);
      v268 = *(*(*(v360 + 8) + v261) + 4 * v260 + 2);
      v269 = *(*(v360 + 56) + ((v268 >> 3) & 0x1FF8)) + 24 * (v268 & 0x3F);
      v270 = *v257;
      std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](v263, v265);
      v271 = (v263 + 8);
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v263 + 8));
      *v263 = v263 + 8;
      *(v263 + 16) = 0;
      *(v263 + 8) = 0;
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v267 + 8));
      *v267 = v267 + 8;
      *(v267 + 16) = 0;
      *(v267 + 8) = 0;
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v269 + 8));
      *v269 = v269 + 8;
      v376 = v269;
      *(v269 + 16) = 0;
      *(v269 + 8) = 0;
      v272 = md::SceneContext::layerDataInView(v364, 75);
      std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v263, *v272, v272 + 1);
      v273 = *v263;
      v274 = v265 + 1;
      v275 = *v265;
      v276 = *v267;
      v381 = v267;
      v382 = v276;
      if (v273 != v263 + 8)
      {
        if (v275 == v274)
        {
          v292 = v267;
LABEL_292:
          *&v383 = v292;
          *(&v383 + 1) = v276;
          if (v273 != v271)
          {
            do
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v383, v273 + 32);
              v293 = *(v273 + 8);
              if (v293)
              {
                do
                {
                  v294 = v293;
                  v293 = *v293;
                }

                while (v293);
              }

              else
              {
                do
                {
                  v294 = *(v273 + 16);
                  v36 = *v294 == v273;
                  v273 = v294;
                }

                while (!v36);
              }

              v273 = v294;
            }

            while (v294 != v271);
          }
        }

        else
        {
          while (1)
          {
            v277 = *(v273 + 32);
            v278 = *(v273 + 48);
            v279 = v278;
            v280 = *(v275 + 48);
            v281 = v275[4];
            if (v278 == v280 ? v277 < v281 : v278 < v280)
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v381, v273 + 32);
              v283 = *(v273 + 8);
              if (v283)
              {
                do
                {
                  v273 = v283;
                  v283 = *v283;
                }

                while (v283);
              }

              else
              {
                do
                {
                  v284 = v273;
                  v273 = *(v273 + 16);
                }

                while (*v273 != v284);
              }
            }

            else
            {
              v285 = v281 < v277;
              if (v279 != v280)
              {
                v285 = v280 < v279;
              }

              if (v285)
              {
                v286 = v275[1];
                if (v286)
                {
                  do
                  {
                    v275 = v286;
                    v286 = *v286;
                  }

                  while (v286);
                }

                else
                {
                  do
                  {
                    v287 = v275;
                    v275 = v275[2];
                  }

                  while (*v275 != v287);
                }
              }

              else
              {
                v288 = *(v273 + 8);
                if (v288)
                {
                  do
                  {
                    v289 = v288;
                    v288 = *v288;
                  }

                  while (v288);
                }

                else
                {
                  do
                  {
                    v289 = *(v273 + 16);
                    v36 = *v289 == v273;
                    v273 = v289;
                  }

                  while (!v36);
                }

                v290 = v275[1];
                if (v290)
                {
                  do
                  {
                    v275 = v290;
                    v290 = *v290;
                  }

                  while (v290);
                }

                else
                {
                  do
                  {
                    v291 = v275;
                    v275 = v275[2];
                  }

                  while (*v275 != v291);
                }

                v273 = v289;
              }
            }

            if (v273 == v271)
            {
              break;
            }

            if (v275 == v274)
            {
              v292 = v381;
              v276 = v382;
              goto LABEL_292;
            }
          }
        }
      }

      v295 = *v265;
      v296 = *v263;
      v297 = *v376;
      v381 = v376;
      v382 = v297;
      if (v295 != v274)
      {
        if (v296 == v271)
        {
          v313 = v376;
LABEL_332:
          *&v383 = v313;
          *(&v383 + 1) = v297;
          if (v295 != v274)
          {
            do
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v383, (v295 + 4));
              v314 = v295[1];
              if (v314)
              {
                do
                {
                  v315 = v314;
                  v314 = *v314;
                }

                while (v314);
              }

              else
              {
                do
                {
                  v315 = v295[2];
                  v36 = *v315 == v295;
                  v295 = v315;
                }

                while (!v36);
              }

              v295 = v315;
            }

            while (v315 != v274);
          }
        }

        else
        {
          while (1)
          {
            v298 = v295[4];
            v299 = *(v295 + 48);
            v300 = v299;
            v301 = *(v296 + 48);
            v302 = *(v296 + 32);
            if (v299 == v301 ? v298 < v302 : v299 < v301)
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v381, (v295 + 4));
              v304 = v295[1];
              if (v304)
              {
                do
                {
                  v295 = v304;
                  v304 = *v304;
                }

                while (v304);
              }

              else
              {
                do
                {
                  v305 = v295;
                  v295 = v295[2];
                }

                while (*v295 != v305);
              }
            }

            else
            {
              v306 = v302 < v298;
              if (v300 != v301)
              {
                v306 = v301 < v300;
              }

              if (v306)
              {
                v307 = *(v296 + 8);
                if (v307)
                {
                  do
                  {
                    v296 = v307;
                    v307 = *v307;
                  }

                  while (v307);
                }

                else
                {
                  do
                  {
                    v308 = v296;
                    v296 = *(v296 + 16);
                  }

                  while (*v296 != v308);
                }
              }

              else
              {
                v309 = v295[1];
                if (v309)
                {
                  do
                  {
                    v310 = v309;
                    v309 = *v309;
                  }

                  while (v309);
                }

                else
                {
                  do
                  {
                    v310 = v295[2];
                    v36 = *v310 == v295;
                    v295 = v310;
                  }

                  while (!v36);
                }

                v311 = *(v296 + 8);
                if (v311)
                {
                  do
                  {
                    v296 = v311;
                    v311 = *v311;
                  }

                  while (v311);
                }

                else
                {
                  do
                  {
                    v312 = v296;
                    v296 = *(v296 + 16);
                  }

                  while (*v296 != v312);
                }

                v295 = v310;
              }
            }

            if (v295 == v274)
            {
              break;
            }

            if (v296 == v271)
            {
              v313 = v381;
              v297 = v382;
              goto LABEL_332;
            }
          }
        }
      }

      v316 = v270 >> 10;
      if (*(v267 + 16))
      {
        v317 = *(a1 + 128);
        LODWORD(v383) = v270;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
        v318 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata;
        v319 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(v317);
        v320 = v319;
        v321 = v270 >> 22;
        v322 = *(v319 + 8);
        v323 = (v319 + 8);
        if (v270 >> 22 >= (*(v319 + 16) - v322) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v319 + 8), v321 + 1);
          v322 = *v323;
        }

        v324 = *(v322 + 8 * v321);
        if (!v324)
        {
          operator new();
        }

        v325 = (v324 + 4 * ((v270 >> 16) & 0x3F));
        if (*v325 == -1 && v325[1] == 0)
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v320 + 32, &v383);
          v327 = ((*(v320 + 40) - *(v320 + 32)) >> 2) - 1;
          *v325 = v270;
          v325[1] = v327;
          v329 = *(v320 + 104);
          v328 = *(v320 + 112);
          while (v329 != v328)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v329 + 24), v270);
            v329 += 32;
          }
        }

        *(*(v317 + 41016) + (v316 & 0x3FFFC0) + ((v318 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v318;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
        *(v317 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata) = *(v317 + 4096);
      }

      if (v376[2])
      {
        v330 = *(a1 + 128);
        LODWORD(v383) = v270;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
        v331 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata;
        v332 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(v330);
        v333 = v332;
        v334 = v270 >> 22;
        v335 = *(v332 + 8);
        v336 = (v332 + 8);
        if (v270 >> 22 >= (*(v332 + 16) - v335) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v332 + 8), v334 + 1);
          v335 = *v336;
        }

        v337 = *(v335 + 8 * v334);
        if (!v337)
        {
          operator new();
        }

        v338 = (v337 + 4 * ((v270 >> 16) & 0x3F));
        if (*v338 == -1 && v338[1] == 0)
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v333 + 32, &v383);
          v340 = ((*(v333 + 40) - *(v333 + 32)) >> 2) - 1;
          *v338 = v270;
          v338[1] = v340;
          v342 = *(v333 + 104);
          v341 = *(v333 + 112);
          while (v342 != v341)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v342 + 24), v270);
            v342 += 32;
          }
        }

        *(*(v330 + 41016) + (v316 & 0x3FFFC0) + ((v331 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v331;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
        *(v330 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata) = *(v330 + 4096);
      }

      v343 = v257 + 2;
      while (1)
      {
        v257 = v343;
        *&v377 = v343;
        if (v343 == v258)
        {
          break;
        }

        v344 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v377, *v343, v343[1]);
        v343 = v257 + 2;
        if (v344)
        {
          v345 = v257;
          goto LABEL_372;
        }
      }

      v345 = v258;
LABEL_372:
      ;
    }

    while (v345 != v370);
  }
}