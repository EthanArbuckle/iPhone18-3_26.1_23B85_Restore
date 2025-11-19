unint64_t gms::BasicMaterial<ggl::Texture2D>::minSaturationFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 432))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 432))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 432))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 432))(v8, a2);
      v10 = v9 & 0xFFFFFF00;
      v11 = HIDWORD(v9);
      v12 = v9;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      LOBYTE(v11) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = (*(*v13 + 432))(v13, a2);
      v15 = v14 & 0xFFFFFF00;
      v7 = HIDWORD(v14);
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v7) = 0;
    }

    v17 = v16 | v15;
    v18 = v12 | v10;
    if (v7)
    {
      *&v18 = COERCE_FLOAT(v12 | v10) + ((*&v17 - COERCE_FLOAT(v12 | v10)) * v4);
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if (v11)
    {
      LODWORD(v6) = v18;
    }

    else
    {
      LODWORD(v6) = v17;
    }

    if (v11)
    {
      LOBYTE(v7) = v19;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxShininess(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 360))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 360))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minShininess(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 360))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 360))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxSpecularity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 336))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 336))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minSpecularity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 336))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 336))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxLineWidth(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 240))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 240))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minLineWidth(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 240))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 240))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 216))(v4, a2);
    v6 = v5 & 0xFFFFFF00;
    v7 = HIDWORD(v5);
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 216))(v9, v2);
    v11 = v10 & 0xFFFFFF00;
    v12 = HIDWORD(v10);
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  LODWORD(v14) = v11 | v13;
  v15 = v6 | v8;
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
  }

  if (v12)
  {
    v15 = v16;
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if (v7)
  {
    v14 = v15;
  }

  else
  {
    v14 = v14;
  }

  if (v7)
  {
    LOBYTE(v12) = v17;
  }

  return v14 | (v12 << 32);
}

void *gms::BasicMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 168);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 168))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 168))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

void gms::BasicMaterial<ggl::Texture2D>::~BasicMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::BasicMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>::operator=[abi:nn200100]<std::shared_ptr<gms::_Material<ggl::Texture2D>>,void>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a1 + 16) == 1)
  {
    v4 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v5 = *(a1 + 8);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v6 = a2[1];
    *a1 = v3;
    *(a1 + 8) = v6;
    *a2 = 0;
    a2[1] = 0;
    *(a1 + 16) = 1;
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 48) == 1)
    {
      v3 = __p[5];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsClimateTintEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F190;
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

void ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);
}

uint64_t ecs2::removeComponent<md::ls::HasGradientRampTexture>(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F2A0D2F0;
  v5 = a2;
  v6 = &v4;
  v9 = &v7;
  v7 = &unk_1F2A0D2F0;
  v8 = a2;
  v10 = 2;
  ecs2::Runtime::queueCommand();
  if (v10 != -1)
  {
    (off_1F29E5AD0[v10])(&v3, &v7);
  }

  v10 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v4);
}

void ecs2::BasicRegistry<void>::remove<md::ls::HasGradientRampTexture>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata;
  HasGradientRamp = ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(a1);
  v6 = a2 >> 22;
  v7 = HasGradientRamp[1];
  if (v6 < (HasGradientRamp[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = HasGradientRamp;
        v10 = HasGradientRamp[25];
        for (i = HasGradientRamp[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasGradientRampTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasGradientRampTexture>(void)::localId;
    unk_1EB82B4E0 = 0x7EDF0608EB36DCA6;
    qword_1EB82B4E8 = "md::ls::HasGradientRampTexture]";
    qword_1EB82B4F0 = 30;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata >= 0x200)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22HasGradientRampTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0D358;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasGradientRampTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0D338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasGradientRampTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0D338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::HasGradientRampTexture>(ecs2::Entity,std::type_identity<md::ls::HasGradientRampTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::HasGradientRampTexture>(ecs2::Entity,std::type_identity<md::ls::HasGradientRampTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A0D2F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A828;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A848;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      v6 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
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

  v7 = a1[7];
  v8 = a1[8];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A828;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A0D280;
  result = std::vector<mre::TextureHandle>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0D280;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0D280;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RampMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(v3);
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
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F));
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
        v19 = *v17;
        v18 = v17[1];
        v20 = v16[1];
        *v17 = *v16;
        v17[1] = v20;
        *v16 = v19;
        v16[1] = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43428;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43448;
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

void ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43428;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RampMaterialData>(ecs2::Entity,md::ls::RampMaterialData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5A50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[4] + 1), v2 < (*(a1[4] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0 && *(v11 + v6) == v5 && (v12 = *(a1[5] + 1), v2 < (*(a1[5] + 2) - v12) >> 3) && (v13 = *(v12 + 8 * v2)) != 0)
  {
    return *(v13 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27RenderablePendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablePendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablePendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::operator()(ecs2::ExecutionTaskContext *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t **a6)
{
  v9 = *a6;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = v11[1];
  v15[0] = *v11;
  v15[1] = v12;
  v15[2] = v11[2];
  v13 = *v10;
  v14 = ecs2::ExecutionTaskContext::currentEntity(a1);
  process<ecs2::Runtime>(v15, v13, v14, a3, a4, *a5, v9);
}

__n128 std::__function::__func<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5B08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::ManeuverPoint::Mesh::~Mesh(ggl::ManeuverPoint::Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::ManeuverPoint::Mesh::~Mesh(ggl::ManeuverPoint::Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ManeuverPoint::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::ManeuverPoint::BasePipelineSetup::BasePipelineSetup(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
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

  *a1 = &unk_1F29E5BB0;
  v11 = *(a1 + 136);
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = *(a1 + 232);
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

  v16 = *(a1 + 136);
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = *(a1 + 232);
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

  **(a1 + 168) = a6;
  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::Labeler *>(uint64_t a1, void *a2)
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

void ggl::SDFGlyph::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SDFGlyph::HaloPipelineSetup::~HaloPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SDFGlyph::SuperSamplePipelineSetup::~SuperSamplePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARDebugDrawMeshBoundsLogic::runBeforeLayout(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v68 = +[VKDebugSettings sharedSettings];
  if ([v68 arDebugDrawMeshFeatureBounds])
  {
    v1 = *(a1 + 120);
    v75 = gdc::Registry::storage<arComponents::IsVisible>(v1);
    v2 = gdc::Registry::storage<arComponents::MeshComponent>(v1);
    v73 = gdc::Registry::storage<arComponents::Boundary>(v1);
    v3 = gdc::Registry::storage<arComponents::WorldTransform>(v1);
    v4 = *(a1 + 120);
    v5 = gdc::Registry::storage<arComponents::IsVisible>(v4);
    v74 = gdc::Registry::storage<arComponents::MeshDataComponent>(v4);
    v72 = gdc::Registry::storage<arComponents::Boundary>(v4);
    v70 = gdc::Registry::storage<arComponents::WorldTransform>(v4);
    v6.i64[0] = v75;
    v6.i64[1] = v2;
    v7.i64[0] = v73;
    v7.i64[1] = v3;
    v69 = v5;
    v66 = v5;
    v8 = vdupq_n_s64(0x20uLL);
    v76 = vaddq_s64(v6, v8);
    v77 = vaddq_s64(v7, v8);
    v9 = v76.i64[0];
    v10 = 1;
    v11 = &v76;
    do
    {
      if (*(v76.i64[v10] + 32) - *(v76.i64[v10] + 24) < *(v9 + 32) - *(v9 + 24))
      {
        v9 = v76.i64[v10];
        v11 = (&v76 + v10 * 8);
      }

      ++v10;
    }

    while (v10 != 4);
    v12 = (v75 + 32);
    v67 = v11->i64[0];
    if (v75 + 32 == v11->i64[0])
    {
      v31 = *(v75 + 56);
      v30 = *(v75 + 64);
      while (v31 != v30)
      {
        v32 = *(v31 + 4);
        if (v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v32) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v73 + 4, v32) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v32))
        {
          v33 = *v31;
          v34 = HIDWORD(*v31);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v31));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v73 + 4, v34);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v34);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v33);
        }

        v31 += 8;
      }
    }

    if (v2 + 4 == v67)
    {
      v35 = v2[7];
      v36 = v2[8];
      while (v35 != v36)
      {
        v37 = *(v35 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v37) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v73 + 4, v37) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v37))
        {
          v38 = *v35;
          v39 = HIDWORD(*v35);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v73 + 4, HIDWORD(*v35));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v39);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v38);
        }

        v35 += 8;
      }
    }

    v65 = v73 + 4;
    if (v73 + 4 == v67)
    {
      v40 = v73[7];
      v41 = v73[8];
      while (v40 != v41)
      {
        v42 = *(v40 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v42) && v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v42) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v42))
        {
          v43 = *v40;
          v44 = HIDWORD(*v40);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v40));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v44);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v43);
        }

        v40 += 8;
      }
    }

    if (v3 + 4 == v67)
    {
      v45 = v3[7];
      v46 = v3[8];
      while (v45 != v46)
      {
        v47 = *(v45 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v47) && v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v47) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v65, v47))
        {
          v48 = *v45;
          v49 = HIDWORD(*v45);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v45));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65, v49);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v48);
        }

        v45 += 8;
      }
    }

    v13.i64[0] = v66;
    v14.i64[0] = v72;
    v13.i64[1] = v74;
    v14.i64[1] = v70;
    v15 = vdupq_n_s64(0x20uLL);
    v76 = vaddq_s64(v13, v15);
    v77 = vaddq_s64(v14, v15);
    v16 = v76.i64[0];
    v17 = 1;
    v18 = &v76;
    do
    {
      if (*(v76.i64[v17] + 32) - *(v76.i64[v17] + 24) < *(v16 + 32) - *(v16 + 24))
      {
        v16 = v76.i64[v17];
        v18 = (&v76 + v17 * 8);
      }

      ++v17;
    }

    while (v17 != 4);
    v19 = v18->i64[0];
    v20 = v69;
    v21 = v69 + 4;
    if (v69 + 4 == v18->i64[0])
    {
      v51 = v69[7];
      v50 = v69[8];
      while (v51 != v50)
      {
        v52 = *(v51 + 4);
        if (v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v74 + 4, v52) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v72 + 4, v52) && *(v70 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v70 + 32), v52))
        {
          v53 = *v51;
          v54 = HIDWORD(*v51);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v74 + 4, HIDWORD(*v51));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v72 + 4, v54);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v54);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v53);
        }

        v51 += 8;
      }
    }

    v22 = v74 + 4;
    if (v74 + 4 == v19)
    {
      v55 = v74[7];
      v56 = v74[8];
      while (v55 != v56)
      {
        v57 = *(v55 + 4);
        if (v69[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v57) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v72 + 4, v57) && *(v70 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v70 + 32), v57))
        {
          v58 = *v55;
          v59 = HIDWORD(*v55);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v72 + 4, HIDWORD(*v55));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v59);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v58);
        }

        v55 += 8;
      }
    }

    v23 = v72 + 4;
    v24 = v70;
    if (v72 + 4 == v19)
    {
      v25 = v72[7];
      for (i = v72[8]; v25 != i; v20 = v69)
      {
        v27 = *(v25 + 4);
        if (v20[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v27) && v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22, v27) && v24[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24 + 4, v27))
        {
          v28 = *v25;
          v29 = HIDWORD(*v25);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v22, HIDWORD(*v25));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v29);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v28);
          v24 = v70;
        }

        v25 += 8;
      }
    }

    if (v24 + 4 == v19)
    {
      v60 = v24[7];
      v61 = v24[8];
      while (v60 != v61)
      {
        v62 = *(v60 + 4);
        if (v20[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v62) && v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22, v62) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v23, v62))
        {
          v63 = *v60;
          v64 = HIDWORD(*v60);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v22, HIDWORD(*v60));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v23, v64);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v63);
        }

        v60 += 8;
      }
    }
  }
}

void _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = gdc::Registry::storage<arComponents::ShadowPipeline>(*(a1 + 120));
  Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v5 + 32), v4);
  v7 = *(v5 + 64);
  v8 = gdc::Registry::storage<arComponents::StandardPipeline>(*(a1 + 120));
  v9 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v8 + 32), v4);
  if (v7 == Index)
  {
    if (*(v8 + 64) == v9)
    {
      v10.i64[0] = 0xFF00FF00FF00FFLL;
      goto LABEL_6;
    }

    v10 = xmmword_1B33B06F0;
  }

  else
  {
    v10 = xmmword_1B33B06E0;
  }

  v10.i32[2] = 0;
  *v10.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v10, vdupq_n_s32(0x437F0000u))));
LABEL_6:
  v11 = *(a1 + 120);
  v13 = 256;
  v14 = vuzp1_s8(*v10.f32, *v10.f32).u32[0];
  v12 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v11);
  gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v12, a2, &v13);
}

uint64_t gdc::Registry::storage<arComponents::ShadowPipeline>(uint64_t a1)
{
  v3 = 0xA3C8162527B8C964;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA3C8162527B8C964);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::StandardPipeline>(uint64_t a1)
{
  v3 = 0x5BD3262791F15BBDLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5BD3262791F15BBDuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::NeedsDebugDraw>(uint64_t a1)
{
  v3 = 0x9B24ADCC720E2B64;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9B24ADCC720E2B64);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(uint64_t *a1, uint64_t a2, __int16 *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v16) >> 1) + 1;
      if (v17 > 0x2AAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v16) >> 1);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x1555555555555555)
      {
        v19 = 0x2AAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0x2AAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 2 * ((v7 - v16) >> 1);
      *v20 = *a3;
      *(v20 + 2) = *(a3 + 1);
      v9 = v20 + 6;
      v21 = v20 - (v7 - v16);
      if (v16 != v7)
      {
        v22 = 2 * ((v7 - v16) >> 1) - (v7 - v16);
        do
        {
          *v22 = *v16;
          *(v22 + 2) = *(v16 + 2);
          v16 += 6;
          v22 += 6;
        }

        while (v16 != v7);
        v16 = a1[10];
      }

      a1[10] = v21;
      a1[11] = v9;
      a1[12] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = *a3;
      *(v7 + 2) = *(a3 + 1);
      v9 = (v7 + 6);
    }

    a1[11] = v9;
    v14 = a1[31];
    goto LABEL_26;
  }

  v10 = 0;
  v11 = (a1[10] + 6 * ((v5 - a1[7]) >> 3));
  v13 = *a3;
  v12 = a3 + 1;
  *v11 = v13;
  do
  {
    *(v11 + v10 + 2) = *(v12 + v10);
    ++v10;
  }

  while (v10 != 4);
  v14 = a1[31];
  if (v11 == a1[11])
  {
LABEL_26:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v24, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 6 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    *v6 = *(v8 - 6);
    v9 = v6 + 1;
    v10 = v8 - 4;
    do
    {
      *(v9 + v7) = *(v10 + v7);
      ++v7;
    }

    while (v7 != 4);
    a1[11] -= 6;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::IsVisible>(uint64_t a1)
{
  v3 = 0x55CAA77C36360ED8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x55CAA77C36360ED8uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::MeshDataComponent>(uint64_t a1)
{
  v3 = 0xF1DF98F0053592CELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF1DF98F0053592CELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Boundary>(uint64_t a1)
{
  v3 = 0x7130F622D05EDC68;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7130F622D05EDC68uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::WorldTransform>(uint64_t a1)
{
  v3 = 0x3A6FAD8338D694D6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3A6FAD8338D694D6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::WorldTransform>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 80 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    do
    {
      *(v6 + 24 + v7) = *(v8 - 56 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    v9 = 0;
    v10 = v8 - 80;
    *(v6 + 48) = *(v8 - 32);
    do
    {
      *(v6 + v9) = *(v10 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v11 = 0;
    v12 = v8 - 24;
    do
    {
      *(v6 + 56 + v11) = *(v12 + v11);
      v11 += 8;
    }

    while (v11 != 24);
    a1[11] = v10;
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

void gdc::ComponentStorageWrapper<arComponents::WorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::WorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::Boundary>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = v8 - 24;
    do
    {
      *(v6 + v7) = *(v9 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    v10 = 0;
    v11 = v8 - 12;
    do
    {
      *(v6 + 12 + v10) = *(v11 + v10);
      v10 += 4;
    }

    while (v10 != 12);
    a1[11] = v9;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Boundary>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::Boundary>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::IsVisible>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::IsVisible>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::IsVisible>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::MeshComponent>(uint64_t a1)
{
  v3 = 0x18B420914FEF5BA6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x18B420914FEF5BA6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::MeshComponent>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::MeshComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL && *(a3 + 32))
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

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 152))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 136))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARDebugDrawMeshBoundsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARDebugDrawMeshBoundsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5EC8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARDebugDrawMeshBoundsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5EC8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARDebugDrawMeshBoundsLogic::~ARDebugDrawMeshBoundsLogic(md::ARDebugDrawMeshBoundsLogic *this)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(uint64_t a1, void *a2)
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

void md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void gdc::ComponentStorageWrapper<md::components::SubtileZone>::emplace(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v20 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v20);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = (v8 - v13);
      v15 = v8 - v13 + 1;
      if (v15 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = v7 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v18 = v8 - v13;
      *v14 = *a3;
      v9 = v14 + 1;
      memcpy(0, v13, v18);
      a1[10] = 0;
      a1[11] = (v14 + 1);
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_19;
  }

  v10 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v20, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v20, 1);
  }
}

void addPreviousComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = gdc::Registry::storage<md::components::CustomRenderState>(a1);
  v9 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v8, a2);
  v10 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  v12 = gdc::Registry::storage<md::components::NonTiled>(a1);
  v13 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v12, a2);
  v14 = gdc::Registry::storage<md::components::CustomZIndex>(a1);
  v15 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v14, a2);
  v16 = gdc::Registry::storage<md::components::OcclusionType>(a1);
  v17 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(a2));
  if (v16[8] == v17)
  {
    v18 = v16[11];
  }

  else
  {
    v18 = v16[10] + ((v17 - v16[7]) >> 3);
  }

  if (v18 == v16[11])
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = gdc::Registry::storage<md::components::StencilBucket>(a1);
  v21 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v20, a2);
  if (v9)
  {
    v22 = *(v9 + 8);
    v29[0] = *v9;
    v29[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = *(v9 + 16);
    v23 = gdc::Registry::storage<md::components::CustomRenderState>(a3);
    gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(v23, a4, v29);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  if (v11)
  {
    LOBYTE(v29[0]) = *v11;
    v24 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v24, a4, v29);
  }

  if (v13)
  {
    v25 = gdc::Registry::storage<md::components::NonTiled>(a3);
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v25, a4);
  }

  if (v15)
  {
    LODWORD(v29[0]) = *v15;
    v26 = gdc::Registry::storage<md::components::CustomZIndex>(a3);
    gdc::ComponentStorageWrapper<md::components::CustomZIndex>::emplace(v26, a4, v29);
  }

  if (v19)
  {
    LOBYTE(v29[0]) = *v19;
    v27 = gdc::Registry::storage<md::components::OcclusionType>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v27, a4, v29);
  }

  if (v21)
  {
    LOBYTE(v29[0]) = *v21;
    v28 = gdc::Registry::storage<md::components::StencilBucket>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v28, a4, v29);
  }
}

void sub_1B2C6DAA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::CustomZIndex>(uint64_t a1)
{
  v3 = 0x11C900ADCB57DAC9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x11C900ADCB57DAC9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::CustomZIndex>::emplace(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(4 * v15) = *a3;
      v9 = 4 * v15 + 4;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = (4 * v15 + v14 - v8);
        do
        {
          v21 = *v19;
          v19 += 4;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 4 * v15 + v14 - v8;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 4);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_23;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 1));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_23:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::StencilBucket>(uint64_t a1)
{
  v3 = 0xCB3B3DB6B3944ED2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCB3B3DB6B3944ED2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::StencilBucket>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::StencilBucket>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::StencilBucket>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::OcclusionType>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::OcclusionType>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::OcclusionType>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::CustomZIndex>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::CustomZIndex>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::CustomZIndex>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::NonTiled>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::NonTiled>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::NonTiled>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + ((v3 - a1[7]) >> 1);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v35 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v35);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v20 = a1[10];
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v20) >> 5) + 1;
      if (v21 > 0x2AAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v20) >> 5);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x155555555555555)
      {
        v23 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (v23 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = a3[3];
      v25 = (32 * ((v7 - v20) >> 5));
      v25[2] = a3[2];
      v25[3] = v24;
      v26 = a3[5];
      v25[4] = a3[4];
      v25[5] = v26;
      v27 = a3[1];
      *v25 = *a3;
      v25[1] = v27;
      v13 = v25 + 6;
      if (v20 != v7)
      {
        v28 = v20;
        v29 = (32 * ((v7 - v20) >> 5) - (v7 - v20));
        do
        {
          v30 = *(v28 + 1);
          *v29 = *v28;
          v29[1] = v30;
          v31 = *(v28 + 2);
          v32 = *(v28 + 3);
          v33 = *(v28 + 5);
          v29[4] = *(v28 + 4);
          v29[5] = v33;
          v29[2] = v31;
          v29[3] = v32;
          v28 += 96;
          v29 += 6;
        }

        while (v28 != v7);
      }

      a1[10] = 32 * ((v7 - v20) >> 5) - (v7 - v20);
      a1[11] = v13;
      a1[12] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      *(v7 + 1) = v9;
      v10 = a3[2];
      v11 = a3[3];
      v12 = a3[5];
      *(v7 + 4) = a3[4];
      *(v7 + 5) = v12;
      *(v7 + 2) = v10;
      *(v7 + 3) = v11;
      v13 = v7 + 96;
    }

    a1[11] = v13;
    v18 = a1[31];
    goto LABEL_25;
  }

  v14 = 0;
  v15 = a1[10] + 96 * ((v5 - a1[7]) >> 3);
  v16 = *a3;
  *(v15 + 16) = *(a3 + 2);
  *v15 = v16;
  do
  {
    *(v15 + 24 + v14) = *(a3 + v14 + 24);
    v14 += 4;
  }

  while (v14 != 48);
  v17 = *(a3 + 72);
  *(v15 + 85) = *(a3 + 85);
  *(v15 + 72) = v17;
  v18 = a1[31];
  if (v15 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v18, &v35, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v18, &v35, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::Asset>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 72 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 56);
    *v6 = *(v8 - 72);
    *(v6 + 16) = v9;
    v10 = v8 - 52;
    do
    {
      *(v6 + 20 + v7) = *(v10 + v7);
      v7 += 4;
    }

    while (v7 != 48);
    a1[11] -= 72;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Asset>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::Asset>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::~ComponentStorageWrapper(uint64_t a1)
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

__n128 std::__function::__func<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0,std::allocator<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0>,void ()(gdc::Registry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E6060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::components::SubtileZone>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::SubtileZone>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::SubtileZone>::~ComponentStorageWrapper(uint64_t a1)
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

void *geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::find(void *a1, unsigned __int16 a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 14) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 13) <= a2 && *(v3 + 14) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

void gdc::Registry::add<md::components::Visibility,md::components::ClientState,md::components::SupportsDebugHighlight,md::components::Asset>(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, __int128 *a5)
{
  v10 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v10, a2, a3);
  v11 = gdc::Registry::storage<md::components::ClientState>(a1);
  gdc::ComponentStorageWrapper<md::components::ClientState>::emplace(v11, a2, a4);
  v12 = gdc::Registry::storage<md::components::SupportsDebugHighlight>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<md::components::Asset>(a1);
  v40 = a2;
  v14 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v13 + 4, &v40);
  if (v15)
  {
    v16 = v13[11];
    v17 = v13[12];
    if (v16 >= v17)
    {
      v27 = v13[10];
      v28 = 0x8E38E38E38E38E39 * ((v16 - v27) >> 3) + 1;
      if (v28 > 0x38E38E38E38E38ELL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v29 = 0x8E38E38E38E38E39 * ((v17 - v27) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x1C71C71C71C71C7)
      {
        v30 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v31 = 8 * ((v16 - v27) >> 3);
      v32 = a5[3];
      *(v31 + 32) = a5[2];
      *(v31 + 48) = v32;
      *(v31 + 64) = *(a5 + 8);
      v33 = a5[1];
      *v31 = *a5;
      *(v31 + 16) = v33;
      v21 = v31 + 72;
      if (v27 != v16)
      {
        v34 = v27;
        v35 = 8 * ((v16 - v27) >> 3) - (v16 - v27);
        do
        {
          *v35 = *v34;
          v36 = *(v34 + 1);
          v37 = *(v34 + 2);
          v38 = *(v34 + 3);
          *(v35 + 64) = *(v34 + 8);
          *(v35 + 32) = v37;
          *(v35 + 48) = v38;
          *(v35 + 16) = v36;
          v34 += 72;
          v35 += 72;
        }

        while (v34 != v16);
      }

      v13[10] = 8 * ((v16 - v27) >> 3) - (v16 - v27);
      v13[11] = v21;
      v13[12] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v16 = *a5;
      v18 = a5[1];
      v19 = a5[2];
      v20 = a5[3];
      *(v16 + 8) = *(a5 + 8);
      *(v16 + 2) = v19;
      *(v16 + 3) = v20;
      *(v16 + 1) = v18;
      v21 = (v16 + 72);
    }

    v13[11] = v21;
    v25 = v13[31];
    goto LABEL_25;
  }

  v22 = 0;
  v23 = v13[10] + 72 * ((v14 - v13[7]) >> 3);
  v24 = *a5;
  *(v23 + 16) = *(a5 + 8);
  *v23 = v24;
  do
  {
    *(v23 + 20 + v22) = *(a5 + v22 + 20);
    v22 += 4;
  }

  while (v22 != 48);
  v25 = v13[31];
  if (v23 == v13[11])
  {
LABEL_25:
    for (i = v13[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v25, &v40, 1);
    }

    return;
  }

  for (j = v13[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v25, &v40, 1);
  }
}

void geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 3) + 1;
  if (a1[3] < v5)
  {
    geo::small_vector_base<gdc::Entity>::grow(a1, v5);
    v4 = a1[1];
  }

  *v4 = *a2;
  a1[1] += 8;
}

void geo::small_vector_base<unsigned char>::emplace_back<int>(void *a1, _DWORD *a2)
{
  v4 = a1[1];
  v5 = &v4[-*a1 + 1];
  if (a1[3] < v5)
  {
    geo::small_vector_base<unsigned char>::grow(a1, v5);
    v4 = a1[1];
  }

  *v4 = *a2;
  ++a1[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::Registry::storage<md::components::PositionScaleFactor>(uint64_t a1)
{
  v3 = 0x3E97B8EB1BFDB5F4;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3E97B8EB1BFDB5F4uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(uint64_t *a1, uint64_t a2, int *a3)
{
  v25 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v25);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = v8 - v14;
      v16 = (v8 - v14) >> 2;
      v17 = v16 + 1;
      if ((v16 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v7 - v14;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v19 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v16;
      v21 = (4 * v16);
      v22 = *a3;
      v23 = &v21[-v20];
      *v21 = v22;
      v9 = v21 + 1;
      memcpy(v23, v14, v15);
      a1[10] = v23;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 4;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_20;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 1));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v25, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v25, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::AlbedoTint>(uint64_t a1)
{
  v3 = 0xBD729E76E3A79E70;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBD729E76E3A79E70);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(16 * v15) = *a3;
      v9 = 16 * v15 + 16;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = 0;
        do
        {
          v21 = *v19;
          v19 += 16;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 0;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 16);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_25;
  }

  v10 = 0;
  v11 = a1[10] + 2 * (v5 - a1[7]);
  do
  {
    *(v11 + v10) = *(a3 + v10);
    v10 += 4;
  }

  while (v10 != 16);
  v12 = a1[31];
  if (v11 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v25 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v25);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = v8 - v14;
      v16 = (v8 - v14) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v7 - v14;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v16;
      v21 = (8 * v16);
      v22 = *a3;
      v23 = &v21[-v20];
      *v21 = v22;
      v9 = v21 + 1;
      memcpy(v23, v14, v15);
      a1[10] = v23;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_20;
  }

  v10 = a1[11];
  v11 = (a1[10] + v5 - a1[7]);
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v25, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v25, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::MarketMask>(uint64_t a1)
{
  v3 = 0x1049843FF67503A0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1049843FF67503A0uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::HideWhenCollapsed>(uint64_t a1)
{
  v3 = 0x24CEDFE393EA39F1;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x24CEDFE393EA39F1uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::MarketMask>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MarketMask>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::MarketMask>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::PendingMaterial>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 8);
    a1[11] = v7 - 8;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::PendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::PendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::AlbedoTint>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 16;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 16);
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::AlbedoTint>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::AlbedoTint>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::remove(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 304 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 304);
    v10 = *(v8 - 288);
    *(v6 + 32) = *(v8 - 272);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 268 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 256 + i);
    }

    for (j = 0; j != 48; j += 4)
    {
      *(v6 + 60 + j) = *(v8 - 244 + j);
    }

    for (k = 0; k != 96; k += 8)
    {
      *(v6 + 112 + k) = *(v8 - 192 + k);
    }

    v14 = 0;
    v15 = v8 - 96;
    do
    {
      *(v6 + 208 + v14) = *(v15 + v14);
      v14 += 8;
    }

    while (v14 != 96);
    a1[11] -= 304;
    v16 = a1[28];
    if (v16)
    {
      v17 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v16[6], v17, &v19, 1);
        v16 = *v16;
      }

      while (v16);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
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

void geo::small_vector_base<gdc::Entity>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void gdc::ComponentStorageWrapper<md::components::ClientState>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v29);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v14) >> 3);
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 3);
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

      v33 = a1 + 10;
      if (v18)
      {
        if (v18 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = 24 * v15;
      v30 = 0;
      v31 = v19;
      v32 = 24 * v15;
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(24 * v15, a3);
      *&v32 = v32 + 24;
      v20 = a1[10];
      v21 = a1[11];
      v22 = (v31 + v20 - v21);
      if (v20 != v21)
      {
        v23 = a1[10];
        v24 = (v31 + v20 - v21);
        do
        {
          *v24 = 0;
          *(v24 + 1) = 0;
          *(v24 + 8) = 256;
          *v24 = *v23;
          *(v24 + 2) = *(v23 + 8);
          *(v24 + 3) = *(v23 + 12);
          *(v24 + 8) = *(v23 + 16);
          *v23 = 0;
          *(v23 + 8) = 0;
          *(v23 + 16) = 256;
          v23 += 24;
          v24 += 24;
        }

        while (v23 != v21);
        do
        {
          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v20);
          v20 = (v20 + 24);
        }

        while (v20 != v21);
      }

      v25 = a1[10];
      a1[10] = v22;
      v26 = a1[12];
      v28 = v32;
      *(a1 + 11) = v32;
      *&v32 = v25;
      *(&v32 + 1) = v26;
      v30 = v25;
      v31 = v25;
      std::__split_buffer<md::components::ClientState>::~__split_buffer(&v30);
      v9 = v28;
    }

    else
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v8, a3);
      v9 = v8 + 24;
      a1[11] = v8 + 24;
    }

    a1[11] = v9;
    v12 = a1[31];
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v29, 1);
    }

    return;
  }

  v10 = (v5 - a1[7]) >> 3;
  v11 = a1[10] + 24 * v10;
  if (v11 != a3)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1[10] + 24 * v10));
    *v11 = *a3;
    *(v11 + 8) = *(a3 + 8);
    *(v11 + 12) = *(a3 + 12);
    *(v11 + 14) = *(a3 + 14);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 256;
  }

  v12 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_25;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v29, 1);
  }
}

void sub_1B2C70F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::components::ClientState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::SupportsDebugHighlight>(uint64_t a1)
{
  v3 = 0x1F1291CF60257E81;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1F1291CF60257E81uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t std::__split_buffer<md::components::ClientState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::ClientState>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(v6, a1[11] - 24);
    v7 = (a1[11] - 24);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v7);
    a1[11] = v7;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::ClientState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = (v4 - 24);
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::ClientState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t *std::__tree<unsigned short>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 96 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 80);
    *v6 = *(v8 - 96);
    *(v6 + 16) = v9;
    do
    {
      *(v6 + 24 + v7) = *(v8 - 72 + v7);
      v7 += 4;
    }

    while (v7 != 48);
    v10 = *(v8 - 24);
    *(v6 + 85) = *(v8 - 11);
    *(v6 + 72) = v10;
    a1[11] -= 96;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t a2)
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

  return 0;
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AssetContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E60D8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E60D8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::AssetLogic::~AssetLogic(md::AssetLogic *this)
{
  md::AssetLogic::~AssetLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E5EF0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void std::__shared_ptr_emplace<md::LabelLayerData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelTile>::__on_zero_shared(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(v5 + 288);
        std::mutex::lock((v6 + 568));
        v8 = *(v6 + 648);
        v9 = *(v6 + 656);
        if (v8 >= v9)
        {
          v12 = *(v6 + 640);
          v13 = (v8 - v12) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = v9 - v12;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            v17 = mdm::zone_mallocator::instance(v7);
            v18 = pthread_rwlock_rdlock((v17 + 32));
            if (v18)
            {
              geo::read_write_lock::logFailure(v18, "read lock", v19);
            }

            v20 = malloc_type_zone_malloc(*v17, 16 * v16, 0x20040A4A59CD2uLL);
            atomic_fetch_add((v17 + 24), 1u);
            geo::read_write_lock::unlock((v17 + 32));
          }

          else
          {
            v20 = 0;
          }

          v21 = &v20[16 * v13];
          v22 = *(a1 + 48);
          *v21 = v22;
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v23 = &v20[16 * v16];
          v11 = v21 + 16;
          v24 = *(v6 + 640);
          v25 = *(v6 + 648) - v24;
          v26 = &v21[-v25];
          v27 = memcpy(&v21[-v25], v24, v25);
          v28 = *(v6 + 640);
          *(v6 + 640) = v26;
          *(v6 + 648) = v11;
          *(v6 + 656) = v23;
          if (v28)
          {
            v29 = mdm::zone_mallocator::instance(v27);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelSourceTile>>(v29, v28);
          }
        }

        else
        {
          v10 = *(a1 + 56);
          *v8 = *(a1 + 48);
          v8[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v8 + 2;
        }

        *(v6 + 648) = v11;
        v30 = atomic_load((v6 + 632));
        atomic_store(1u, (v6 + 632));
        std::mutex::unlock((v6 + 568));
        if ((v30 & 1) == 0)
        {
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v34 = 0;
          operator new();
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v31 = *(a1 + 296);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 264));
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 232));
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 200));
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 168));
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 136));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 104));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 72));
  v32 = *(a1 + 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(a1 + 40);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }
}

void sub_1B2C71FF8(_Unwind_Exception *a1)
{
  v5 = v3;
  geo::read_write_lock::unlock((v5 + 32));
  std::mutex::unlock((v4 + 568));
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  v7 = *(v1 + 296);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 264));
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 232));
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 200));
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 168));
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 136));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 104));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 72));
  v8 = *(v1 + 56);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 40);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FF38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::SelectedLabelLayerDataSource::~SelectedLabelLayerDataSource(std::mutex *this)
{
  this->__m_.__sig = &unk_1F29E6100;
  v2 = *this[14].__m_.__opaque;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex(this + 13);
  md::LabelLayerDataSource::~LabelLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  this->__m_.__sig = &unk_1F29E6100;
  v2 = *this[14].__m_.__opaque;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex(this + 13);

  md::LabelLayerDataSource::~LabelLayerDataSource(this);
}

void md::SelectedLabelLayerDataSource::setSelectedRoadFeature(md::SelectedLabelLayerDataSource *this, uint64_t a2, char *a3, char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = a2;
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v16, a3, a4);
    v23 = v16;
    v22 = v15;
    v24 = v17;
    v25 = v18;
    v16 = 0uLL;
    v17 = 0;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v19 = 0uLL;
    v20 = 0;
    v29 = 1;
    md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, &v22);
    if (SHIBYTE(v27) < 0)
    {
      v6 = v26;
      v7 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }

    if (SHIBYTE(v24) < 0)
    {
      v8 = v23;
      v9 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
    }

    if (SHIBYTE(v20) < 0)
    {
      v10 = v19;
      v11 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
    }

    if (SHIBYTE(v17) < 0)
    {
      v12 = v16;
      v13 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
    }
  }

  else
  {
    v14[0] = 0;
    v14[72] = 0;
    md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, v14);
  }
}

void sub_1B2C72354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 57) < 0)
  {
    v34 = *(v32 - 80);
    v35 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
  }

  if (*(v32 - 89) < 0)
  {
    v36 = *(v32 - 112);
    v37 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
  }

  if (a32 < 0)
  {
    v38 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v38, a27);
  }

  if (a25 < 0)
  {
    v39 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, a20);
  }

  _Unwind_Resume(exception_object);
}

void md::SelectedLabelLayerDataSource::resetSelectedFeatureID(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  std::mutex::lock((a1 + 832));
  v4 = *(a1 + 896);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v3 == v4;
  }

  else
  {
    if (*v3 != *v4)
    {
      goto LABEL_40;
    }

    v8 = *(v4 + 31);
    if (v8 >= 0)
    {
      v9 = *(v4 + 31);
    }

    else
    {
      v9 = *(v4 + 16);
    }

    v10 = *(v3 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v3 + 16);
    }

    if (v9 != v10)
    {
      goto LABEL_40;
    }

    v12 = v8 >= 0 ? (v4 + 8) : *(v4 + 8);
    v13 = v11 >= 0 ? (v3 + 8) : *(v3 + 8);
    if (memcmp(v12, v13, v9))
    {
      goto LABEL_40;
    }

    v14 = *(v4 + 63);
    if (v14 >= 0)
    {
      v15 = *(v4 + 63);
    }

    else
    {
      v15 = *(v4 + 48);
    }

    v16 = *(v3 + 63);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v3 + 48);
    }

    if (v15 != v16)
    {
LABEL_40:
      v7 = 1;
      goto LABEL_41;
    }

    v20 = *(v4 + 40);
    v19 = (v4 + 40);
    v18 = v20;
    if (v14 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v17 >= 0)
    {
      v22 = (v3 + 40);
    }

    else
    {
      v22 = *(v3 + 40);
    }

    v6 = memcmp(v21, v22, v15) == 0;
  }

  v7 = !v6;
LABEL_41:
  if (v7 && v3)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 832));
  if (v7)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    *(a1 + 896) = 0;
    v23 = *(a1 + 904);
    *(a1 + 904) = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void sub_1B2C72610(mdm::zone_mallocator *a1)
{
  if (*(v2 + 55) < 0)
  {
    v4 = *(v2 + 32);
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v6);
  std::mutex::unlock(v1 + 13);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(uint64_t a1, size_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2, 0x100004077774924uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<md::LabelSelectedFeatureInfo>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);
    v5 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }
}

void std::__shared_ptr_emplace<md::LabelSelectedFeatureInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E61A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::SelectedLabelLayerDataSource::deselectRoadFeature(md::SelectedLabelLayerDataSource *this)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  v1[72] = 0;
  md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, v1);
}

void md::S2ResourceDataRequester::createDebugNode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*(*v4 + 24))(v4, *(a1 + 24));
    if (v6)
    {
      v7 = v5;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v7);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v7));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v22;
  }

  operator delete(v8);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v9 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v9 = v16;
LABEL_23:
  operator delete(v9);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  v10 = *(a1 + 24);
  if (v10 > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[v10];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2C72B68(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      if (*(v1 + 47) < 0)
      {
        operator delete(*(v1 + 24));
      }

      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }
  }
}

void std::vector<gdc::DebugTreeValue>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::construct_at[abi:nn200100]<gdc::DebugTreeValue,gdc::DebugTreeValue const&,gdc::DebugTreeValue*>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 14);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 md::S2ResourceDataRequester::setVisibleZoomRange(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 28) = *a2;
  return result;
}

void md::TrafficAccum::flushToRibbonCollection(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v125 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120))
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      v12 = v6 - v7;
      if ((v6 - v7) > 0x2000)
      {
        v14 = malloc_type_malloc(v6 - v7, 0x100004000313F17uLL);
        v13 = v14;
        if (!v14)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v13 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v13, v12);
      }

      v15 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        v119 = 1;
        LODWORD(v13->__vftable) = *v7;
        HIDWORD(v13->__vftable) = v7[1];
        v20 = v15 - 1;
        v14 = geo::dpSimplify<gm::Matrix<float,2,1>>(v7, 0, v20, v13, &v119);
        v21 = &v7[2 * v20];
        v22 = v119;
        v15 = ++v119;
        v23 = &v13->__vftable + v22;
        *v23 = *v21;
        v23[1] = v21[1];
      }

      else
      {
        v16 = &v13->__vftable + 1;
        v17 = v7 + 1;
        v18 = v12 >> 3;
        do
        {
          *(v16 - 1) = *(v17 - 1);
          v19 = *v17;
          v17 += 2;
          *v16 = v19;
          v16 += 2;
          --v18;
        }

        while (v18);
        v119 = v12 >> 3;
      }

      v24 = *(a2 + 4 * *(a1 + 96));
      if (v15 > 5)
      {
        goto LABEL_29;
      }

      if (v15)
      {
        v25 = &v13->__vftable + 1;
        v26 = 3.4028e38;
        v27 = -3.4028e38;
        v28 = v15;
        v29 = -3.4028e38;
        v30 = 3.4028e38;
        do
        {
          v31 = *(v25 - 1);
          v26 = fminf(v31, v26);
          v29 = fmaxf(v29, v31);
          v30 = fminf(*v25, v30);
          v27 = fmaxf(v27, *v25);
          v25 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = 3.4028e38;
        v27 = -3.4028e38;
        v29 = -3.4028e38;
        v26 = 3.4028e38;
      }

      v32 = 0.0019531;
      if (!v24)
      {
        v32 = 0.012;
      }

      if (((v29 - (v26 + v30)) + v27) > v32 || v26 == 0.0 || (v30 != 0.0 ? (v33 = v29 == 1.0) : (v33 = 1), !v33 ? (v34 = v27 == 1.0) : (v34 = 1), v34))
      {
LABEL_29:
        v35 = *(*(a1 + 120) + 153) - 1 < 2;
        v114 = 0;
        v115 = 0;
        v36 = *(a1 + 144);
        v37 = *(a1 + 152);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v14 = v115;
          v114 = v36;
          v115 = v37;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }

        else
        {
          v114 = *(a1 + 144);
          v115 = 0;
        }

        v38 = *(a1 + 100) == 0;
        if (*(a1 + 100))
        {
          v39 = -1;
        }

        else
        {
          v39 = 1;
        }

        v116 = v39;
        v117 = *(a1 + 96);
        v118 = *(a1 + 196);
        if ((v24 - 1) >= 2)
        {
          if (v24 != 3)
          {
            if (!v24)
            {
              v40 = mdm::zone_mallocator::instance(v14);
              v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(v40);
              md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v41, v15);
              *v41 = &unk_1F2A2F8A0;
              v113 = v41;
              *(v41 + 96) = v35;
              memcpy(v41[9], v13, 8 * v41[11]);
              v120 = &v114;
              v42 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(a3, &v114);
              v43 = v42;
              v45 = *(v42 + 7);
              v44 = *(v42 + 8);
              if (v45 >= v44)
              {
                v74 = *(v42 + 6);
                v75 = v45 - v74;
                v76 = (v45 - v74) >> 3;
                v77 = v76 + 1;
                if ((v76 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v78 = v44 - v74;
                if (v78 >> 2 > v77)
                {
                  v77 = v78 >> 2;
                }

                if (v78 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v79 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = v77;
                }

                v124 = v42 + 18;
                if (v79)
                {
                  v80 = mdm::zone_mallocator::instance(v42);
                  v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v80, v79);
                  v74 = *(v43 + 6);
                  v75 = *(v43 + 7) - v74;
                  v82 = v75 >> 3;
                  v41 = v113;
                }

                else
                {
                  v81 = 0;
                  v82 = v76;
                }

                v91 = &v81[8 * v76];
                v92 = &v81[8 * v79];
                v113 = 0;
                v93 = &v91[-8 * v82];
                *v91 = v41;
                v46 = v91 + 8;
                memcpy(v93, v74, v75);
                v94 = *(v43 + 6);
                *(v43 + 6) = v93;
                *(v43 + 7) = v46;
                v95 = *(v43 + 8);
                *(v43 + 8) = v92;
                v122 = v94;
                v123 = v95;
                v120 = v94;
                v121 = v94;
                std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v120);
              }

              else
              {
                v113 = 0;
                *v45 = v41;
                v46 = v45 + 8;
              }

              *(v43 + 7) = v46;
              std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](&v113);
            }

            goto LABEL_104;
          }

          v54 = mdm::zone_mallocator::instance(v14);
          v55 = pthread_rwlock_rdlock((v54 + 32));
          if (v55)
          {
            geo::read_write_lock::logFailure(v55, "read lock", v56);
          }

          v57 = malloc_type_zone_malloc(*v54, 0x68uLL, 0x10A1040A1A71121uLL);
          atomic_fetch_add((v54 + 24), 1u);
          geo::read_write_lock::unlock((v54 + 32));
          md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v57, v119);
          *v57 = &unk_1F29E6240;
          v113 = v57;
          *(v57 + 96) = v35;
          *(v57 + 25) = v38;
          memcpy(v57[9], v13, 8 * v57[11]);
          v58 = v114;
          v59 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v114);
          if (v116 == 0.0)
          {
            v60 = 0;
          }

          else
          {
            v60 = 2 * LODWORD(v116);
          }

          v61 = v117 ^ (v59 >> 1) ^ (4 * v118) ^ v60;
          v62 = a5[1];
          if (!*&v62)
          {
            goto LABEL_87;
          }

          v63 = vcnt_s8(v62);
          v63.i16[0] = vaddlv_u8(v63);
          if (v63.u32[0] > 1uLL)
          {
            v64 = v117 ^ (v59 >> 1) ^ (4 * v118) ^ v60;
            if (v61 >= *&v62)
            {
              v64 = v61 % *&v62;
            }
          }

          else
          {
            v64 = (*&v62 - 1) & v61;
          }

          v88 = *(*a5 + 8 * v64);
          if (!v88 || (v89 = *v88) == 0)
          {
LABEL_87:
            operator new();
          }

          while (1)
          {
            v90 = *(v89 + 1);
            if (v90 == v61)
            {
              if (*(v89 + 2) == v58 && v89[8] == v116 && *(v89 + 36) == v117 && *(v89 + 10) == v118)
              {
                v97 = *(v89 + 7);
                v96 = *(v89 + 8);
                if (v97 >= v96)
                {
                  v99 = *(v89 + 6);
                  v100 = v97 - v99;
                  v101 = (v97 - v99) >> 3;
                  v102 = v101 + 1;
                  if ((v101 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v103 = v96 - v99;
                  if (v103 >> 2 > v102)
                  {
                    v102 = v103 >> 2;
                  }

                  if (v103 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v104 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v104 = v102;
                  }

                  v124 = v89 + 18;
                  if (v104)
                  {
                    v105 = mdm::zone_mallocator::instance(v59);
                    v106 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v105, v104);
                    v99 = *(v89 + 6);
                    v100 = *(v89 + 7) - v99;
                    v107 = v100 >> 3;
                    v57 = v113;
                  }

                  else
                  {
                    v106 = 0;
                    v107 = v101;
                  }

                  v108 = &v106[8 * v101];
                  v109 = &v106[8 * v104];
                  v113 = 0;
                  v110 = &v108[-8 * v107];
                  *v108 = v57;
                  v98 = v108 + 8;
                  memcpy(v110, v99, v100);
                  v111 = *(v89 + 6);
                  *(v89 + 6) = v110;
                  *(v89 + 7) = v98;
                  v112 = *(v89 + 8);
                  *(v89 + 8) = v109;
                  v122 = v111;
                  v123 = v112;
                  v120 = v111;
                  v121 = v111;
                  std::__split_buffer<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v120);
                }

                else
                {
                  v113 = 0;
                  *v97 = v57;
                  v98 = v97 + 8;
                }

                *(v89 + 7) = v98;
                std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100](&v113);
                goto LABEL_104;
              }
            }

            else
            {
              if (v63.u32[0] > 1uLL)
              {
                if (v90 >= *&v62)
                {
                  v90 %= *&v62;
                }
              }

              else
              {
                v90 &= *&v62 - 1;
              }

              if (v90 != v64)
              {
                goto LABEL_87;
              }
            }

            v89 = *v89;
            if (!v89)
            {
              goto LABEL_87;
            }
          }
        }

        v47 = mdm::zone_mallocator::instance(v14);
        v48 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(v47);
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v48, v15);
        *v48 = &unk_1F2A2F8C0;
        v113 = v48;
        *(v48 + 96) = v35;
        *(v48 + 25) = v38;
        memcpy(v48[9], v13, 8 * v48[11]);
        v120 = &v114;
        v49 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(a4, &v114);
        v50 = v49;
        v52 = *(v49 + 7);
        v51 = *(v49 + 8);
        if (v52 >= v51)
        {
          v65 = *(v49 + 6);
          v66 = v52 - v65;
          v67 = (v52 - v65) >> 3;
          v68 = v67 + 1;
          if ((v67 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v69 = v51 - v65;
          if (v69 >> 2 > v68)
          {
            v68 = v69 >> 2;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v70 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          v124 = v49 + 18;
          if (v70)
          {
            v71 = mdm::zone_mallocator::instance(v49);
            v72 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v71, v70);
            v65 = *(v50 + 6);
            v66 = *(v50 + 7) - v65;
            v73 = v66 >> 3;
            v48 = v113;
          }

          else
          {
            v72 = 0;
            v73 = v67;
          }

          v83 = &v72[8 * v67];
          v84 = &v72[8 * v70];
          v113 = 0;
          v85 = &v83[-8 * v73];
          *v83 = v48;
          v53 = v83 + 8;
          memcpy(v85, v65, v66);
          v86 = *(v50 + 6);
          *(v50 + 6) = v85;
          *(v50 + 7) = v53;
          v87 = *(v50 + 8);
          *(v50 + 8) = v84;
          v122 = v86;
          v123 = v87;
          v120 = v86;
          v121 = v86;
          std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v120);
        }

        else
        {
          v113 = 0;
          *v52 = v48;
          v53 = v52 + 8;
        }

        *(v50 + 7) = v53;
        std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](&v113);
LABEL_104:
        if (v115)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v115);
        }
      }

      if (v12 > 0x2000)
      {
        free(v13);
      }
    }
  }
}

void sub_1B2C738B8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](v1 - 128);
  std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100]((v1 - 176));
  v3 = *(v1 - 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x68uLL, 0x10A10402DF98402uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(uint64_t a1, uint64_t a2)
{
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a2;
  *a1 = &unk_1F2A5B5E0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  if (a2)
  {
    *(a1 + 88) = a2;
    v4 = mdm::zone_mallocator::instance(a1);
    *(a1 + 72) = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(v4, a2);
    *(a1 + 64) = 1;
  }

  return a1;
}

float *std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(*a2);
  v6 = *(a2 + 20);
  v7 = *(a2 + 16);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2 * *(a2 + 16);
  }

  v9 = *(a2 + 24);
  v10 = v6 ^ (v5 >> 1) ^ (4 * v9) ^ v8;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_24;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v6 ^ (v5 >> 1) ^ (4 * v9) ^ v8;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = *(v15 + 1);
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
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (*(v15 + 2) != v4 || v15[8] != v7 || *(v15 + 36) != v6 || *(v15 + 10) != v9)
  {
    goto LABEL_23;
  }

  return v15;
}

void sub_1B2C73ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TrafficRibbon>(v4, v2);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x68uLL, 0x10A1040A1A71121uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

float *std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(*a2);
  v6 = *(a2 + 20);
  v7 = *(a2 + 16);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2 * *(a2 + 16);
  }

  v9 = *(a2 + 24);
  v10 = v6 ^ (v5 >> 1) ^ (4 * v9) ^ v8;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_24;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v6 ^ (v5 >> 1) ^ (4 * v9) ^ v8;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = *(v15 + 1);
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
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (*(v15 + 2) != v4 || v15[8] != v7 || *(v15 + 36) != v6 || *(v15 + 10) != v9)
  {
    goto LABEL_23;
  }

  return v15;
}

void sub_1B2C74474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SolidTrafficRibbon>(v4, v2);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 1;
    a1 = std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100](i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v5, v4);
  }

  return v1;
}

uint64_t (****std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CasedTrafficRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::CasedTrafficRibbon::~CasedTrafficRibbon(md::CasedTrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  *a1 = &unk_1F2A5B5E0;
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(uint64_t a1, void *a2)
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

void md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::SolidTrafficRibbon::~SolidTrafficRibbon(md::SolidTrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::TrafficRibbon::~TrafficRibbon(md::TrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t geo::dpSimplify<gm::Matrix<float,2,1>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = result;
  __asm { FMOV            V8.2S, #1.0 }

  while (1)
  {
    v14 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v15 = 0;
    v16 = *(v8 + 8 * a2);
    v17 = vsub_f32(*(v8 + 8 * a3), v16);
    v18 = vmul_f32(v17, v17);
    v19 = vadd_f32(vdup_lane_s32(v18, 1), v18);
    v20 = vaddv_f32(v18);
    v21 = vdiv_f32(_D8, v19);
    v22 = 0.0;
    do
    {
      v23 = *(v8 + 8 * v14);
      v24 = 0.0;
      if (v20 > 1.0e-15)
      {
        v25 = vmul_f32(vsub_f32(v23, v16), v17);
        v24 = fminf(fmaxf(vmul_f32(vadd_f32(vdup_lane_s32(v25, 1), v25), v21).f32[0], 0.0), 1.0);
      }

      v26 = vsub_f32(v23, vmla_n_f32(v16, v17, v24));
      v27 = vaddv_f32(vmul_f32(v26, v26));
      if (v27 > v22)
      {
        v15 = v14;
      }

      v22 = fmaxf(v27, v22);
      ++v14;
    }

    while (a3 != v14);
    if (v22 <= 0.00000023842)
    {
      break;
    }

    result = geo::dpSimplify<gm::Matrix<float,2,1>>(v8);
    v28 = (v8 + 8 * v15);
    v29 = (*a5)++;
    v30 = (a4 + 8 * v29);
    *v30 = *v28;
    v30[1] = v28[1];
    a2 = v15;
  }

  return result;
}

uint64_t (****std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(v4, v2);
  }

  return a1;
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  *a1 = &unk_1F2A386F0;
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(uint64_t a1, void *a2)
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

void md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,3,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 12 * a2, 0x10000403E1C8BA9uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::_retain_ptr<NSSet<NSNumber *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64F0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSSet<NSNumber *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64F0;

  return a1;
}

void geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A203A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A203A8;

  return a1;
}

void geo::_retain_ptr<VKStateCaptureHandler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6378;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKStateCaptureHandler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6378;

  return a1;
}

void geo::_retain_ptr<VKARWalkingCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64D0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64D0;

  return a1;
}

void geo::_retain_ptr<VKMuninCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64B0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64B0;

  return a1;
}

void sub_1B2C77BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B2C78300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrIN2md11LabelMarkerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrIN2md11LabelMarkerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2C78568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C787B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void *geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F29E6470;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void *geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F29E6490;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void __destroy_helper_block_ea8_40c131_ZTSN3geo11_retain_ptrIU8__strongP15VKMuninJunctionNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE64c127_ZTSN3geo11_retain_ptrIU8__strongP11VKMuninRoadNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE(uint64_t a1)
{
  *(a1 + 64) = &unk_1F29E6490;

  *(a1 + 40) = &unk_1F29E6470;
  v2 = *(a1 + 48);
}

void *__copy_helper_block_ea8_40c131_ZTSN3geo11_retain_ptrIU8__strongP15VKMuninJunctionNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE64c127_ZTSN3geo11_retain_ptrIU8__strongP11VKMuninRoadNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE(uint64_t a1, uint64_t a2)
{
  geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a1 + 40), a2 + 40);

  return geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a1 + 64), a2 + 64);
}

void geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6490;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6490;

  return a1;
}

void geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6470;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6470;

  return a1;
}

void sub_1B2C7B5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(v6, v4);
  }
}

void sub_1B2C7BE04(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B2C7BF10(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B2C7C2B4(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v3 - 104));

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v4, v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(uint64_t a1, void *a2)
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

void sub_1B2C7DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a19);
  a19 = &a16;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

void sub_1B2C7E8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C809D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a32);

  _Unwind_Resume(a1);
}

void sub_1B2C816F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(v30 - 168);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C81CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2C83768(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2C83934(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B2C83AC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2C84478(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B2C845FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C84EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKMapView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2C865F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, _Unwind_Exception *exception_object, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v44 = *(v43 - 144);
  if (v44)
  {
    operator delete(v44);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2C8816C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C88B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B2C88E44(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C89168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

void sub_1B2C89AB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void geo::_retain_ptr<GEOPOICategoryFilter * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4AD98;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOPOICategoryFilter * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4AD98;

  return a1;
}

void std::__shared_ptr_emplace<md::LabelCategoryFilter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A202E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<VKDebugTree * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6310;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKDebugTree * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6310;

  return a1;
}

void sub_1B2C8D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C8E650(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C8FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&a15);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C8FC9C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FeatureStyleAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5FC58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2C92104(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSDictionary *,gdc::DebugTreeNode &)>::~__value_func[abi:nn200100](v3 - 184);

  _Unwind_Resume(a1);
}

void std::function<void ()(NSDictionary *,gdc::DebugTreeNode &)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v6);
  }

  (*(*v5 + 48))(v5, &v7, a3);
}

uint64_t std::__function::__value_func<void ()(NSDictionary *,gdc::DebugTreeNode &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2C92964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::LandmarkTileData::~LandmarkTileData(md::LandmarkTileData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void sub_1B2C92FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1B2C93048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C930B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C932EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C94628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C94BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C94DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C951D4(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 232));

  _Unwind_Resume(a1);
}

void sub_1B2C9530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C95424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double gm::lerp<gm::Matrix<double,3,1>,double>(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  *v16 = a1;
  *&v16[1] = a2;
  *&v16[2] = a3;
  *v15 = a4;
  *&v15[1] = a5;
  *&v15[2] = a6;
  do
  {
    *(&v17 + v7 * 8) = *&v15[v7] - *&v16[v7];
    ++v7;
  }

  while (v7 != 3);
  v8 = 0;
  v11 = v17;
  v12 = v18;
  do
  {
    *(&v17 + v8) = *(&v11 + v8) * a7;
    v8 += 8;
  }

  while (v8 != 24);
  v9 = 0;
  v13 = v17;
  v14 = v18;
  do
  {
    *(&v17 + v9 * 8) = *(&v13 + v9 * 8) + *&v16[v9];
    ++v9;
  }

  while (v9 != 3);
  return *&v17;
}

void sub_1B2C96060(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v2 - 88);

  _Unwind_Resume(a1);
}

void sub_1B2C963FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C967CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKMapCanvas;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2C96C54(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C96EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a12 = &a22;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

void std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(*a1);
    std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 != a1[7])
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void sub_1B2C974A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, void *a26)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(a26);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<gdc::LayerDataRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A60248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::TerrainMeshProviderLogic::runBeforeLayout(int8x8_t *a1, uint64_t a2, void *a3, void *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3[2];
  v5 = a3[3];
  if (v6 && ((v7 = *(v6 + 160), v7[21] != v7[20]) || v7[24] != v7[23]) || v5 && (*(v5 + 56) & 1) != 0)
  {
    v8 = a1[15];
    if (!*&v8)
    {
      return;
    }

    v9 = a3[1];
    v10 = *(*a3 + 88);
    if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*&v8 + 136), 0x2Bu))
    {
      v74 = (v10 - 2) < 3;
      if ((v10 - 2) >= 3)
      {
        v11 = 43;
      }

      else
      {
        v11 = 77;
      }
    }

    else
    {
      v16 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*&v8 + 136), 0x4Du);
      v74 = (v10 - 2) < 3;
      if ((v10 - 2) >= 3)
      {
        v11 = 43;
      }

      else
      {
        v11 = 77;
      }

      if (!v16)
      {
        return;
      }
    }

    v18 = a1 + 16;
    v17 = a1[16];
    v20 = a1[21];
    v19 = a1[22];
    v22 = a1 + 23;
    v21 = a1[23];
    v23 = a1[17];
    v25 = a1 + 18;
    v24 = a1[18];
    v26 = a1[24];
    v27 = a1[19];
    v28 = a1[25].i32[0];
    v29 = a1[20].i32[0];
    a1[21] = v17;
    a1[22] = v23;
    a1[16] = v20;
    a1[17] = v19;
    a1[23] = v24;
    a1[18] = v21;
    a1[24] = v27;
    a1[19] = v26;
    a1[25].i32[0] = v29;
    a1[20].i32[0] = v28;
    if (v27)
    {
      v30 = *(*&v24 + 8);
      if ((v23 & (v23 - 1)) != 0)
      {
        if (v30 >= v23)
        {
          v30 %= v23;
        }
      }

      else
      {
        v30 &= v23 - 1;
      }

      *(*&v17 + 8 * v30) = v22;
    }

    if (v26)
    {
      v31 = *(*v25 + 8);
      if ((v19 & (v19 - 1)) != 0)
      {
        if (v31 >= v19)
        {
          v31 %= v19;
        }
      }

      else
      {
        v31 &= v19 - 1;
      }

      *(*v18 + 8 * v31) = v25;
    }

    v79 = a4;
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v18);
    for (i = 0; i != 4; ++i)
    {
      v33 = md::SceneContext::layerDataInView(v9, md::overlayDataTypes[i]);
      v35 = v33 + 1;
      v34 = *v33;
      if (*v33 != v33 + 1)
      {
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v34[4]);
          gdc::Tiled::tileFromLayerDataKey(&v81, *(FillRect + 16));
          std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v18, &v81);
          v37 = v34[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v34[2];
              v39 = *v38 == v34;
              v34 = v38;
            }

            while (!v39);
          }

          v34 = v38;
        }

        while (v38 != v35);
      }
    }

    v40 = md::FlyoverDsmManifestInformer::downloadZoomRange(&a1[31]);
    v41 = a1[18];
    if (v42)
    {
      v43 = v40;
    }

    else
    {
      v43 = 11;
    }

    v75 = v11;
    if (v41)
    {
      while (1)
      {
        v44 = *(v41 + 17);
        v45 = v44 < v43;
        if (v44 >= v43)
        {
          break;
        }

        v41 = *v41;
        if (!v41)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_52:
      v45 = 1;
    }

    v46 = *v22;
    if (v46)
    {
      v47 = (v79 + 6);
      do
      {
        if (v46[40] == 1)
        {
          geo::QuadTile::computeHash(v46 + 16);
          v46[40] = 0;
        }

        v48 = a1[17];
        if (v48)
        {
          v49 = *(v46 + 4);
          v50 = vcnt_s8(v48);
          v50.i16[0] = vaddlv_u8(v50);
          v51 = v50.u32[0];
          if (v50.u32[0] > 1uLL)
          {
            v52 = *(v46 + 4);
            if (v49 >= *&v48)
            {
              v52 = v49 % *&v48;
            }
          }

          else
          {
            v52 = (*&v48 - 1) & v49;
          }

          v53 = *(*v18 + 8 * v52);
          if (v53)
          {
            for (j = *v53; j; j = *j)
            {
              v55 = *(j + 1);
              if (v55 == v49)
              {
                if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](j + 16, v46 + 16))
                {
                  goto LABEL_75;
                }
              }

              else
              {
                if (v51 > 1)
                {
                  if (v55 >= *&v48)
                  {
                    v55 %= *&v48;
                  }
                }

                else
                {
                  v55 &= *&v48 - 1;
                }

                if (v55 != v52)
                {
                  break;
                }
              }
            }
          }
        }

        if (v47 != geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(v47, v79 + 1, (v46 + 16)))
        {
          v56 = geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(v47, v79 + 1, (v46 + 16));
          std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::__erase_unique<geo::QuadTile>(v79 + 1, (v56 + 2));
          std::list<std::pair<geo::QuadTile,md::TerrainTileMesh>>::erase(v47, v56);
        }

LABEL_75:
        v46 = *v46;
      }

      while (v46);
    }

    v57 = a1[15];
    v58 = *(*&v57 + 80);
    v59 = *(*&v57 + 88);
    if (v58 != v59)
    {
      while (*v58 != v75)
      {
        v58 += 8;
        if (v58 == v59)
        {
          return;
        }
      }

      if (v58 != v59)
      {
        v60 = *(v58 + 1);
        if (v60 && !v45)
        {
          v62 = *v25;
          if (*v25)
          {
            while (1)
            {
              if (v79 + 6 == geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get((v79 + 6), v79 + 1, (v62 + 2)))
              {
                v63 = v60[1];
                if (v63 != v60)
                {
                  break;
                }
              }

LABEL_87:
              v62 = *v62;
              if (!v62)
              {
                return;
              }
            }

            v78 = 0;
            v76 = 0;
            while (1)
            {
              v65 = v63[16];
              v64 = v63[17];
              if (!v74)
              {
                break;
              }

              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v66 = (*(*v65 + 72))(v65);
              v67 = v66;
              if (!v66 || *(v66 + 112) == 2)
              {
                v68 = (*(*v65 + 80))(v65);
LABEL_100:
                v67 = v68;
              }

              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v64);
              }

              if (!v67 || *(v67 + 112) == 2 || *(v67 + 56) != *(v62 + 16))
              {
                goto LABEL_114;
              }

              v69 = *(v67 + 57);
              v70 = *(v67 + 60);
              v71 = *(v62 + 17);
              v72 = v71 >= v69;
              v73 = v71 - v69;
              if (v73 != 0 && v72)
              {
                if (v70 == __PAIR64__(*(v62 + 6) >> v73, *(v62 + 5) >> v73))
                {
                  goto LABEL_112;
                }
              }

              else if (!v73 && v70 == *(v62 + 20))
              {
LABEL_112:
                if (v69 > v78)
                {
                  v76 = v67;
                  v78 = *(v67 + 57);
                }
              }

LABEL_114:
              v63 = v63[1];
              if (v63 == v60)
              {
                if (v76)
                {
                  v81 = 2;
                  v82 = 1;
                  v83 = 0;
                  v84 = 0x3F80000000000000;
                  md::HeightMeshBuilder::generateHeightMesh(&v80, (v62 + 2), v76, &v81);
                }

                goto LABEL_87;
              }
            }

            if (v64)
            {
              atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = (*(*v65 + 72))(v65);
            goto LABEL_100;
          }
        }
      }
    }
  }

  else
  {
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(&a1[21]);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(&a1[16]);
    if (a4[4])
    {
      v12 = a4[3];
      if (v12)
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      a4[3] = 0;
      v14 = a4[2];
      if (v14)
      {
        for (k = 0; k != v14; ++k)
        {
          *(a4[1] + 8 * k) = 0;
        }
      }

      a4[4] = 0;
    }

    std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(a4 + 6);
  }
}

void sub_1B2C9840C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  operator delete(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[7];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(uint64_t a1, void *a2, geo::QuadTile *this)
{
  v4 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(a2, this);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v9 = *v5;
      *(v9 + 8) = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::__erase_unique<geo::QuadTile>(void *a1, geo::QuadTile *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(a1, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a1, v3);
  }
}

void std::list<std::pair<geo::QuadTile,md::TerrainTileMesh>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[7];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
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

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos4UVMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *a1 = 100;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = a1 + 48;
  *(a1 + 56) = a1 + 48;
  *(a1 + 64) = 0;
  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v7);
    v9[1] = v8;
    v9[2] = gdc::Context::context<md::OverlaysContext>(v7);
    v9[3] = gdc::Context::context<md::GridContext>(v7);
    return (*(*v6 + 160))(v6, a2, v9, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0xE42D19AFCA302E68))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  gdc::Context::get<md::PendingSceneContext>(a1);
  return v4;
}

void *gdc::Context::context<md::OverlaysContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xADE8F13E6C18D970);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xADE8F13E6C18D970)
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

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 152))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 144))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 136))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 128))(v7, a2, v10, v5);
    }
  }

  return result;
}

void sub_1B2C99274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v6);
  MEMORY[0x1B8C62190](v5, 0x10A0C407D9D2971);
  std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  MEMORY[0x1B8C62190](a4, 0x10F1C40B0038B9CLL);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::TerrainMeshProviderContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E67A0;
  v2 = a1[4];
  if (v2)
  {
    std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear((v2 + 48));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 8);
    MEMORY[0x1B8C62190](v2, 0x10A0C407D9D2971);
  }

  return a1;
}

void md::TerrainMeshProviderLogic::~TerrainMeshProviderLogic(md::TerrainMeshProviderLogic *this)
{
  md::TerrainMeshProviderLogic::~TerrainMeshProviderLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E6630;
  v2 = *(this + 28);
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

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 128);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::TrafficStyleAttributes(uint64_t a1, int a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  LODWORD(v11) = 5;
  WORD2(v11) = 10;
  LODWORD(v12) = 65543;
  WORD2(v12) = 0;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v13, &v11, 2uLL);
  v4 = v14;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v14, v13);
  gss::FeatureAttributeSet::sort(v14[0], v14[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  LODWORD(v8) = 5;
  WORD2(v8) = 10;
  v9 = 65543;
  v10 = 1;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v11, &v8, 2uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v13, &v11);
  gss::FeatureAttributeSet::sort(v13[0], v13[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  LODWORD(v5) = 5;
  WORD2(v5) = 10;
  v6 = 65543;
  v7 = 2;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v8, &v5, 2uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v11, &v8);
  gss::FeatureAttributeSet::sort(v11, v12);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a2)
  {
    if (v14 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = v13;
  if (v13 != a1)
  {
LABEL_3:
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(a1, *v4, v4[1], (v4[1] - *v4) >> 3);
  }

LABEL_4:
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
}

uint64_t md::CoastlineRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), (*(a1 + 368) + 280), 0);
  *(*(a1 + 368) + 288) = result - *(a1 + 48);
  return result;
}

void md::CoastlineRenderLayer::layout(md::CoastlineRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v344 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 376));
  if (v4)
  {
    v4 = *(*(v4 + 16) + 8 * *(v2 + 377));
  }

  v326 = v4;
  ggl::CommandBuffer::clearRenderItems(v4);
  v5 = *(v2 + 46);
  v6 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pushAll(v5[2]);
  v7 = v5[3];
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  v321 = v5;
  if (v9 != v8)
  {
    v10 = *(v7 + 8);
    do
    {
      v11 = *v9;
      v12 = *(v7 + 16);
      if (v10 >= v12)
      {
        v13 = (v10 - *v7) >> 3;
        if ((v13 + 1) >> 61)
        {
          goto LABEL_325;
        }

        v14 = v12 - *v7;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        *&buf[2] = v7 + 24;
        if (v16)
        {
          v17 = ggl::zone_mallocator::instance(v6);
          v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v17, v16);
        }

        else
        {
          v18 = 0;
        }

        v20 = &v18[8 * v16];
        v19 = &v18[8 * v13];
        *v19 = v11;
        v10 = v19 + 8;
        v21 = *(v7 + 8) - *v7;
        v22 = &v19[-v21];
        memcpy(&v19[-v21], *v7, v21);
        v23 = *v7;
        *v7 = v22;
        *&buf[0] = v23;
        *(&buf[0] + 1) = v23;
        *(v7 + 8) = v10;
        *&buf[1] = v23;
        v24 = *(v7 + 16);
        *(v7 + 16) = v20;
        *(&buf[1] + 1) = v24;
        v6 = std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v10++ = v11;
      }

      *(v7 + 8) = v10;
      ++v9;
    }

    while (v9 != v8);
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    v5 = v321;
  }

  if (v9 != v8)
  {
    *(v7 + 40) = v9;
  }

  ggl::FragmentedPool<ggl::RenderItem>::pushAll(v5[13]);
  v25 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(v5[14]);
  v26 = *v5;
  v28 = *(*v5 + 32);
  v27 = *(*v5 + 40);
  if (v28 != v27)
  {
    v29 = *(v26 + 8);
    do
    {
      v30 = *v28;
      v31 = *(v26 + 16);
      if (v29 >= v31)
      {
        v32 = (v29 - *v26) >> 3;
        if ((v32 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v33 = v31 - *v26;
        v34 = v33 >> 2;
        if (v33 >> 2 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        *&buf[2] = v26 + 24;
        if (v35)
        {
          v36 = ggl::zone_mallocator::instance(v25);
          v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(v36, v35);
        }

        else
        {
          v37 = 0;
        }

        v39 = &v37[8 * v35];
        v38 = &v37[8 * v32];
        *v38 = v30;
        v29 = v38 + 8;
        v40 = *(v26 + 8) - *v26;
        v41 = &v38[-v40];
        memcpy(&v38[-v40], *v26, v40);
        v42 = *v26;
        *v26 = v41;
        *&buf[0] = v42;
        *(&buf[0] + 1) = v42;
        *(v26 + 8) = v29;
        *&buf[1] = v42;
        v43 = *(v26 + 16);
        *(v26 + 16) = v39;
        *(&buf[1] + 1) = v43;
        v25 = std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v29++ = v30;
      }

      *(v26 + 8) = v29;
      ++v28;
    }

    while (v28 != v27);
    v28 = *(v26 + 32);
    v27 = *(v26 + 40);
    v5 = v321;
  }

  if (v28 != v27)
  {
    *(v26 + 40) = v28;
  }

  v44 = v5[1];
  v46 = *(v44 + 32);
  v45 = *(v44 + 40);
  if (v46 != v45)
  {
    v47 = *(v44 + 8);
    do
    {
      v48 = *v46;
      v49 = *(v44 + 16);
      if (v47 >= v49)
      {
        v50 = (v47 - *v44) >> 3;
        if ((v50 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v51 = v49 - *v44;
        v52 = v51 >> 2;
        if (v51 >> 2 <= (v50 + 1))
        {
          v52 = v50 + 1;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v52;
        }

        *&buf[2] = v44 + 24;
        if (v53)
        {
          v54 = ggl::zone_mallocator::instance(v25);
          v55 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(v54, v53);
        }

        else
        {
          v55 = 0;
        }

        v57 = &v55[8 * v53];
        v56 = &v55[8 * v50];
        *v56 = v48;
        v47 = v56 + 8;
        v58 = *(v44 + 8) - *v44;
        v59 = &v56[-v58];
        memcpy(&v56[-v58], *v44, v58);
        v60 = *v44;
        *v44 = v59;
        *&buf[0] = v60;
        *(&buf[0] + 1) = v60;
        *(v44 + 8) = v47;
        *&buf[1] = v60;
        v61 = *(v44 + 16);
        *(v44 + 16) = v57;
        *(&buf[1] + 1) = v61;
        v25 = std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v47++ = v48;
      }

      *(v44 + 8) = v47;
      ++v46;
    }

    while (v46 != v45);
    v46 = *(v44 + 32);
    v45 = *(v44 + 40);
  }

  if (v46 != v45)
  {
    *(v44 + 40) = v46;
  }

  if (*(v2 + 35) == *(v2 + 34))
  {
    return;
  }

  v62 = *(*(v2 + 46) + 288);
  LOBYTE(buf[0]) = 0;
  v343 = 0;
  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::layoutStencilTiles(v2, a2, v326, v62, 1, buf);
  v63 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (!v63)
  {
    return;
  }

  v287 = v63;
  v289 = *a2;
  [v289 contentScale];
  v65 = v64;
  v66 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v326[4] = *(*(v2 + 46) + 280);
  v288 = v66;
  v67 = fmaxf(*(v66 + 3080) + *(v66 + 3076), 1.0);
  v68 = *(v2 + 34);
  v290 = *(v2 + 35);
  v293 = v2;
  if (v68 != v290)
  {
    v69 = 1.0 / v65;
    v70 = v67;
    if (v67 >= 0x17)
    {
      v70 = 23;
    }

    v322 = v70;
    v71 = v66 + 3112;
    v295 = vdupq_n_s32(0x37800080u);
    do
    {
      v292 = v68;
      v72 = *v68;
      v73 = *(*v68 + 392);
      v74 = 56;
      if (*(v2 + 360))
      {
        v74 = 64;
      }

      v75 = *(*(v2 + 46) + v74);
      v76 = v72[29];
      v315 = v72[28];
      if (v76)
      {
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v77 = v72[31];
      v311 = v72[30];
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = *(v73 + 784);
      v79 = *(v73 + 792);
      if (v78 != v79)
      {
        v80 = (*(v73 + 169) + *(*(v2 + 46) + 288));
        v297 = *(v73 + 792);
        v302 = v76;
        v308 = v77;
        do
        {
          v81 = **v78;
          v82 = (*v78)[1];
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v81, v82);
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v82);
          }

          if (v332 == 1)
          {
            v83 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 139, v322, 2u, 0);
            v85 = v84 + v84;
            if ((v84 + v84) > 0.0)
            {
              v86 = *(*(v2 + 46) + 24);
              v87 = v86[1];
              if (v87 == *v86)
              {
                v89 = v86[11];
                if (!v89)
                {
                  goto LABEL_324;
                }

                v83 = (*(*v89 + 48))(v89);
                v88 = v83;
              }

              else
              {
                v88 = *(v87 - 8);
                v86[1] = v87 - 8;
              }

              v91 = v86[5];
              v90 = v86[6];
              if (v91 >= v90)
              {
                v93 = v86[4];
                v94 = (v91 - v93) >> 3;
                if ((v94 + 1) >> 61)
                {
                  goto LABEL_325;
                }

                v95 = v90 - v93;
                v96 = v95 >> 2;
                if (v95 >> 2 <= (v94 + 1))
                {
                  v96 = v94 + 1;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v97 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v96;
                }

                *&buf[2] = v86 + 7;
                if (v97)
                {
                  v98 = ggl::zone_mallocator::instance(v83);
                  v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v98, v97);
                }

                else
                {
                  v99 = 0;
                }

                v101 = &v99[8 * v97];
                v100 = &v99[8 * v94];
                *v100 = v88;
                v92 = v100 + 1;
                v102 = v86[4];
                v103 = v86[5] - v102;
                v104 = v100 - v103;
                memcpy(v100 - v103, v102, v103);
                v105 = v86[4];
                v86[4] = v104;
                v86[5] = v92;
                v106 = v86[6];
                v86[6] = v101;
                *&buf[1] = v105;
                *(&buf[1] + 1) = v106;
                *&buf[0] = v105;
                *(&buf[0] + 1) = v105;
                std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
                v2 = v293;
              }

              else
              {
                *v91 = v88;
                v92 = v91 + 1;
              }

              v86[5] = v92;
              *&buf[0] = v88;
              v107 = v86[15];
              if (!v107)
              {
LABEL_324:
                std::__throw_bad_function_call[abi:nn200100]();
LABEL_325:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              (*(*v107 + 48))(v107, buf);
              v108 = *(v88 + 17);
              *v108 = v315;
              v108[1] = 0;
              v109 = *(v88 + 29);
              v76 = v302;
              if (v302)
              {
                atomic_fetch_add_explicit(&v302->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v110 = v109[1];
              *v109 = v315;
              v109[1] = v302;
              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v110);
              }

              v111 = *(v88 + 17);
              *(v111 + 16) = v311;
              *(v111 + 24) = 0;
              v112 = *(v88 + 29);
              if (v308)
              {
                atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v113 = *(v112 + 24);
              *(v112 + 16) = v311;
              *(v112 + 24) = v308;
              if (v113)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v113);
              }

              v114 = 0.0;
              if (v332 == 1)
              {
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 140, v322, 2u, 0);
                v114 = v115;
              }

              for (i = 0; i != 24; i += 8)
              {
                *(buf + i) = -*(v71 + i);
              }

              v117 = *&buf[1];
              v328 = buf[0];
              v329 = *&buf[1];
              if (fabs(v114) > 0.5)
              {
                v339 = 0u;
                memset(&buf[1], 0, 32);
                *&v340 = 0x3FF0000000000000;
                v118 = __sincos_stret(v114 * 0.0174532925);
                *buf = v118.__cosval;
                *(&buf[0] + 1) = *&v118.__sinval;
                *(&buf[1] + 1) = -v118.__sinval;
                *&buf[2] = v118.__cosval;
                v119 = gm::operator*<double,3,3,1>(buf, &v328);
                v117 = v120;
                v328.f64[0] = v119;
                v328.f64[1] = v121;
                v329 = v120;
              }

              v122 = *(*(v88 + 17) + 32);
              ggl::BufferMemory::BufferMemory(&v334);
              ggl::ResourceAccessor::accessConstantData(buf, 0, v122, 1);
              ggl::BufferMemory::operator=(&v334, buf);
              ggl::BufferMemory::~BufferMemory(buf);
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, *(__p.__r_.__value_.__r.__words[0] + 24), 141, v322, 2u, 0);
              v123 = *(&v336 + 1);
              **(&v336 + 1) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&buf[0])), v295);
              v124 = v117;
              v123[4] = vcvt_f32_f64(v328);
              v123[5].f32[0] = v124;
              v123[2].f32[0] = v85 * v69;
              ggl::BufferMemory::~BufferMemory(&v334);
              v125 = (*v78)[2];
              v126 = *v125;
              if (*(**(**v125 + 64) + 48) != *(**(**v125 + 64) + 40))
              {
                v127 = v125[1];
                while (v126 != v127)
                {
                  v128 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                  *(v128 + 24) = v75;
                  *(v128 + 32) = v88;
                  *(v128 + 64) = *v126;
                  *(v128 + 40) = v80;
                  *&buf[0] = v128;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), buf);
                  ++v126;
                }
              }

              v77 = v308;
              v79 = v297;
            }
          }

          if (v332 == 1)
          {
            (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
          }

          if (v331)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v331);
          }

          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
          }

          ++v78;
        }

        while (v78 != v79);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v77);
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v76);
      }

      v68 = v292 + 8;
    }

    while (v292 + 8 != v290);
  }

  v129 = +[VKPlatform sharedPlatform];
  v130 = [v129 supportsCoastlineGlows];

  if (!v130)
  {
    goto LABEL_322;
  }

  v131 = *(v2 + 34);
  v132 = *(v2 + 35);
  if (v131 == v132)
  {
    goto LABEL_322;
  }

  if (v67 >= 0x17)
  {
    v133 = 23;
  }

  else
  {
    v133 = v67;
  }

  v134 = 0;
LABEL_132:
  v298 = v134;
  v135 = v134;
  while (2)
  {
    v136 = *(*v131 + 392);
    v137 = *(v136 + 784);
    v138 = *(v136 + 792);
    while (v137 != v138)
    {
      v139 = **v137;
      v140 = (*v137)[1];
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v139, v140);
      if (v140)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v140);
      }

      if (LOBYTE(buf[2]) != 1)
      {
        v142 = 0;
LABEL_147:
        v145 = 0;
LABEL_148:
        v135 |= v142 && v145;
        v150 = 1;
        goto LABEL_149;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 142, v133, 2u, 0);
      v142 = v141 > 0.0019531;
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_147;
      }

      v143 = v141;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 0, v133, 2u, 0);
      v145 = v144 > 0.0019531;
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_148;
      }

      v146 = v144;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 143, v133, 2u, 0);
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_148;
      }

      v148 = v147 <= 0.0019531;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 1, v133, 2u, 0);
      v135 |= v143 > 0.0019531 && v146 > 0.0019531;
      v150 = v148 || v149 <= 0.0019531;
      if (buf[2])
      {
        (*(**&buf[0] + 56))(*&buf[0]);
      }

      v2 = v293;
LABEL_149:
      if (*(&buf[1] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&buf[1] + 1));
      }

      if (*(&buf[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&buf[0] + 1));
      }

      if ((v150 & 1) == 0)
      {
        v131 += 8;
        v134 = 1;
        if (v131 != v132)
        {
          goto LABEL_132;
        }

        goto LABEL_161;
      }

      ++v137;
    }

    v131 += 8;
    if (v131 != v132)
    {
      continue;
    }

    break;
  }

  LOBYTE(v134) = v298;
  if (v135)
  {
LABEL_161:
    v299 = v134;
    v151 = *(v2 + 34);
    v152 = *(v2 + 35);
    if (v151 != v152)
    {
      v303 = *(v2 + 35);
      do
      {
        v153 = *v151;
        v312 = (*v151)[49];
        LODWORD(__p.__r_.__value_.__l.__data_) = 5;
        WORD2(__p.__r_.__value_.__r.__words[0]) = 2;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 3;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 18;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](buf, &__p, 2uLL);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v334, buf);
        v316 = v151;
        gss::FeatureAttributeSet::sort(v334, *(&v334 + 1));
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
        v154 = *(*(v2 + 46) + 288);
        v155 = *(v312 + 169);
        v156 = (*(*v312 + 48))(v312);
        v157 = *v156;
        v158 = v156[1];
        if (*v156 != v158)
        {
          v159 = (v155 + v154) | 0x40;
          do
          {
            v160 = *(v157 + 8);
            v161 = [v160 attributeSets];
            v162 = *(v161 + 24) == *(v161 + 32);

            if (v162)
            {
              if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
              {
                dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
              }

              v177 = GEOGetVectorKitVKDefaultLog_log;
              if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
              {
                FillRect = grl::IconMetricsRenderResult::getFillRect(v312);
                gdc::LayerDataRequestKey::keysInt32Str(&__p, FillRect);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf[0]) = 136315906;
                *(buf + 4) = p_p;
                WORD6(buf[0]) = 2080;
                *(buf + 14) = "false";
                WORD3(buf[1]) = 2080;
                *(&buf[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CoastlineRenderLayer.mm";
                LOWORD(buf[2]) = 1024;
                *(&buf[2] + 2) = 186;
                _os_log_impl(&dword_1B2754000, v177, OS_LOG_TYPE_ERROR, "Expecting all polygon groups to have at least one attribute set (key:%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            else
            {
              v163 = *(v157 + 8);
              md::createFeatureAttributeSet(&__p, *([v163 attributeSets] + 24));

              if (gss::FeatureAttributeSet::isSuperset(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v334, *(&v334 + 1)))
              {
                v164 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(*(v2 + 46) + 16));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v164[17], v164[29], v153[28], v153[29]);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v164[17], v164[29], v153[30], v153[31]);
                *v164[21] = *(*(v2 + 46) + 224);
                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(v164[17] + 32));
                *(*(&buf[2] + 1) + 64) = xmmword_1B33B0710;
                v165 = *(v157 + 8);
                v166 = [v165 origin];
                *(*(&buf[2] + 1) + 88) = *v166;

                v167 = *(v157 + 8);
                [v167 size];
                v168 = *(&buf[2] + 1);
                *(*(&buf[2] + 1) + 96) = v169;
                *(v168 + 100) = v170;

                v171 = *(&buf[2] + 1);
                *(*(&buf[2] + 1) + 80) = 1065353216;
                *v171 = 1065353216;
                *(v171 + 12) = 0;
                *(v171 + 4) = 0;
                *(v171 + 20) = 1065353216;
                *(v171 + 24) = 0;
                *(v171 + 32) = 0;
                *(v171 + 40) = 1065353216;
                *(v171 + 52) = 0;
                *(v171 + 44) = 0;
                *(v171 + 60) = 1065353216;
                ggl::BufferMemory::~BufferMemory(buf);
                v172 = *(v157 + 8);
                v173 = [v172 fillMeshes];

                v174 = *v173;
                v175 = *(v173 + 8);
                while (v174 != v175)
                {
                  v176 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 104));
                  *(v176 + 24) = *(*(v2 + 46) + 32);
                  *(v176 + 32) = v164;
                  *(v176 + 64) = *v174;
                  *(v176 + 40) = v159;
                  *&buf[0] = v176;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), buf);
                  v174 += 2;
                }
              }

              std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
            }

            v157 += 24;
          }

          while (v157 != v158);
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v334);
        v151 = v316 + 1;
      }

      while (v316 + 1 != v303);
      v151 = *(v2 + 34);
      v152 = *(v2 + 35);
    }

    if (v151 != v152)
    {
      v304 = v152;
      do
      {
        v317 = v151;
        v180 = *v151;
        v181 = (*v151)[49];
        v182 = *(v181 + 784);
        v183 = *(v181 + 792);
        if (v182 != v183)
        {
          v184 = (*(v181 + 169) + *(*(v2 + 46) + 288));
          do
          {
            v185 = **v182;
            v186 = (*v182)[1];
            if (v186)
            {
              atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v334, v185, v186);
            if (v186)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v186);
            }

            if (v336)
            {
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v334 + 24), 142, v133, 2u, 0);
              v188 = v187;
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v334 + 24), 0, v133, 2u, 0);
              if (v188 > 0.0)
              {
                v190 = v189;
                if (v189 > 0.0)
                {
                  v191 = ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(**(v2 + 46));
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v191[17], v191[29], v180[28], v180[29]);
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v191[17], v191[29], v180[30], v180[31]);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(v191[17] + 32));
                  v192 = *(&buf[2] + 1);
                  **(&buf[2] + 1) = -v188;
                  *(v192 + 4) = v190;
                  ggl::BufferMemory::~BufferMemory(buf);
                  v193 = (*v182)[3];
                  v194 = *v193;
                  if (*(**(**v193 + 64) + 48) != *(**(**v193 + 64) + 40))
                  {
                    v195 = v193[1];
                    while (v194 != v195)
                    {
                      v196 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                      *(v196 + 24) = *(*(v2 + 46) + 88);
                      *(v196 + 32) = v191;
                      *(v196 + 64) = *v194;
                      *(v196 + 40) = v184;
                      *&buf[0] = v196;
                      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), buf);
                      ++v194;
                    }
                  }
                }
              }
            }

            if (v336 == 1)
            {
              (*(*v334 + 56))(v334);
            }

            if (*(&v335 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v335 + 1));
            }

            if (*(&v334 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v334 + 1));
            }

            ++v182;
          }

          while (v182 != v183);
        }

        v151 = v317 + 1;
      }

      while (v317 + 1 != v304);
      v151 = *(v2 + 34);
      v152 = *(v2 + 35);
    }

    if (v151 != v152)
    {
      v309 = vdupq_n_s32(0x37800080u);
      v305 = v152;
      do
      {
        v197 = *v151;
        v198 = (*v151)[49];
        v199 = (*v151)[29];
        v318 = v151;
        v323 = (*v151)[28];
        if (v199)
        {
          atomic_fetch_add_explicit(&v199->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v200 = v197[31];
        v313 = v197[30];
        if (v200)
        {
          atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v201 = *(v198 + 784);
        v202 = *(v198 + 792);
        if (v201 != v202)
        {
          v203 = (*(v198 + 169) + *(*(v2 + 46) + 288));
          do
          {
            v204 = **v201;
            v205 = (*v201)[1];
            if (v205)
            {
              atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v334, v204, v205);
            if (v205)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v205);
            }

            if (v336)
            {
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v334 + 24), 142, v133, 2u, 0);
              v207 = v206;
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v334 + 24), 0, v133, 2u, 0);
              if (v207 > 0.0 && v208 > 0.0)
              {
                v209 = ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(*(*(v2 + 46) + 8));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v209[17], v209[29], v323, v199);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v209[17], v209[29], v313, v200);
                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(v209[17] + 32));
                v210 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a2 + 2), *(*(a2 + 2) + 8));
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v328, *(v334 + 24), 144, v133, 2u, 0);
                *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v328.f64[0])), v309);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v334 + 24), 491, v133, 2u, 0);
                md::AccessibilityHelper::luminanceAdjustedColor(&v328, *v210, &__p, v211);
                v212 = *(&buf[2] + 1);
                **(&buf[2] + 1) = v328;
                *(v212 + 16) = -v207;
                ggl::BufferMemory::~BufferMemory(buf);
                v213 = (*v201)[3];
                v214 = *v213;
                if (*(**(**v213 + 64) + 48) != *(**(**v213 + 64) + 40))
                {
                  v215 = v213[1];
                  while (v214 != v215)
                  {
                    v216 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                    *(v216 + 24) = *(*(v2 + 46) + 96);
                    *(v216 + 32) = v209;
                    *(v216 + 64) = *v214;
                    *(v216 + 40) = v203;
                    *&buf[0] = v216;
                    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), buf);
                    ++v214;
                  }
                }
              }
            }

            if (v336 == 1)
            {
              (*(*v334 + 56))(v334);
            }

            if (*(&v335 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v335 + 1));
            }

            if (*(&v334 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v334 + 1));
            }

            ++v201;
          }

          while (v201 != v202);
        }

        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v200);
        }

        if (v199)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v199);
        }

        v151 = v318 + 1;
      }

      while (v318 + 1 != v305);
    }

    v217 = gdc::ToCoordinateSystem(*(v287 + 320));
    v218 = 16;
    if (v217)
    {
      v218 = 18;
    }

    v219 = &v287[v218];
    v220 = v219[1];
    v296 = *v219;
    if (v220)
    {
      atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v294 = v220;
    if (v299)
    {
      v221 = md::LayoutContext::cameraType(a2);
      if (gdc::ToCoordinateSystem(v221))
      {
        memset(buf + 8, 0, 32);
        v339 = 0u;
        v340 = 0u;
        *&v342[8] = 0u;
        v341 = 0x3FF0000000000000uLL;
        *&v342[24] = 0x3FF0000000000000;
        *&buf[0] = 0x4000000000000000;
        *(&buf[2] + 1) = 0x4000000000000000;
        __asm { FMOV            V0.2D, #-1.0 }

        *v342 = _Q0;
      }

      else
      {
        v226 = *(v288 + 2872);
        v340 = *(v288 + 2856);
        v341 = v226;
        v227 = *(v288 + 2904);
        *v342 = *(v288 + 2888);
        *&v342[16] = v227;
        v228 = *(v288 + 2808);
        buf[0] = *(v288 + 2792);
        buf[1] = v228;
        v229 = *(v288 + 2840);
        buf[2] = *(v288 + 2824);
        v339 = v229;
      }

      v230 = 0;
      v231 = buf;
      do
      {
        v233 = *v231;
        v232 = v231[1];
        v231 += 2;
        *(&v334 + v230) = vcvt_hight_f32_f64(vcvt_f32_f64(v233), v232);
        v230 += 16;
      }

      while (v230 != 64);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, **(*(*(v2 + 46) + 120) + 136), 1);
      v234 = v333;
      *v333 = v334;
      v234[1] = v335;
      v234[2] = v336;
      v234[3] = v337;
      ggl::BufferMemory::~BufferMemory(&__p);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*(*(v2 + 46) + 120) + 136), *(*(*(v2 + 46) + 120) + 232), *(*(v2 + 46) + 240), *(*(v2 + 46) + 248));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v334, *(*(*(*(v2 + 46) + 120) + 136) + 32));
      v235 = *(&v336 + 1);
      *(*(&v336 + 1) + 64) = 0;
      *(v235 + 72) = 0;
      *(v235 + 88) = xmmword_1B33B0720;
      *(v235 + 80) = 1065353216;
      *v235 = 1065353216;
      *(v235 + 12) = 0;
      *(v235 + 4) = 0;
      *(v235 + 20) = 1065353216;
      *(v235 + 24) = 0;
      *(v235 + 32) = 0;
      *(v235 + 40) = 1065353216;
      *(v235 + 52) = 0;
      *(v235 + 44) = 0;
      *(v235 + 60) = 1065353216;
      ggl::BufferMemory::~BufferMemory(&v334);
      v236 = *(v2 + 46);
      v237 = v236[26];
      v237[3] = v236[5];
      v237[4] = v236[15];
      v237[8] = v296;
      *&v334 = v237;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), &v334);
      v238 = *(v2 + 34);
      v239 = *(v2 + 35);
      if (v238 != v239)
      {
        v300 = *(v2 + 35);
        do
        {
          v240 = *v238;
          v241 = *(*v238 + 392);
          v242 = *(*v238 + 232);
          v324 = *(*v238 + 224);
          if (v242)
          {
            atomic_fetch_add_explicit(&v242->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v306 = v238;
          v243 = *(v240 + 248);
          v319 = *(v240 + 240);
          if (v243)
          {
            atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v244 = *(v241 + 784);
          v245 = *(v241 + 792);
          if (v244 != v245)
          {
            v246 = (*(v241 + 169) + *(*(v2 + 46) + 288));
            do
            {
              v247 = **v244;
              v248 = (*v244)[1];
              if (v248)
              {
                atomic_fetch_add_explicit(&v248->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v247, v248);
              if (v248)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v248);
              }

              if (v332)
              {
                v249 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(__p.__r_.__value_.__r.__words[0] + 24), 91, v133, 2u, 0);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 143, v133, 2u, 0);
                v251 = v250;
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 1, v133, 2u, 0);
                if (v251 > 0.0)
                {
                  v253 = v252;
                  if (v252 > 0.0 && v249 != 0)
                  {
                    v255 = ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(**(v2 + 46));
                    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v255[17], v255[29], v324, v242);
                    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v255[17], v255[29], v319, v243);
                    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v334, *(v255[17] + 32));
                    v256 = *(&v336 + 1);
                    **(&v336 + 1) = v251;
                    *(v256 + 4) = v253;
                    ggl::BufferMemory::~BufferMemory(&v334);
                    v257 = (*v244)[3];
                    v258 = *v257;
                    if (*(**(**v257 + 64) + 48) != *(**(**v257 + 64) + 40))
                    {
                      v259 = v257[1];
                      while (v258 != v259)
                      {
                        v260 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                        *(v260 + 24) = *(*(v2 + 46) + 72);
                        *(v260 + 32) = v255;
                        *(v260 + 64) = *v258;
                        *(v260 + 40) = v246;
                        *&v334 = v260;
                        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), &v334);
                        ++v258;
                      }
                    }
                  }
                }
              }

              if (v332 == 1)
              {
                (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
              }

              if (v331)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v331);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
              }

              ++v244;
            }

            while (v244 != v245);
          }

          if (v243)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v243);
          }

          if (v242)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v242);
          }

          v238 = v306 + 1;
        }

        while (v306 + 1 != v300);
        v238 = *(v2 + 34);
        v239 = *(v2 + 35);
      }

      if (v238 != v239)
      {
        v310 = vdupq_n_s32(0x37800080u);
        v301 = v239;
        do
        {
          v261 = *v238;
          v262 = *(*v238 + 392);
          v263 = *(*v238 + 232);
          v320 = *(*v238 + 224);
          if (v263)
          {
            atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v307 = v238;
          v264 = *(v261 + 248);
          v314 = *(v261 + 240);
          if (v264)
          {
            atomic_fetch_add_explicit(&v264->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v325 = v264;
          v265 = *(v262 + 784);
          v266 = *(v262 + 792);
          if (v265 != v266)
          {
            v267 = (*(v262 + 169) + *(*(v2 + 46) + 288));
            do
            {
              v268 = **v265;
              v269 = (*v265)[1];
              if (v269)
              {
                atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v268, v269);
              if (v269)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v269);
              }

              if (v332)
              {
                v270 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(__p.__r_.__value_.__r.__words[0] + 24), 91, v133, 2u, 0);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 143, v133, 2u, 0);
                v272 = v271;
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 1, v133, 2u, 0);
                if (v272 > 0.0 && v273 > 0.0 && v270 != 0)
                {
                  v275 = ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(*(*(v2 + 46) + 8));
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v275[17], v275[29], v320, v263);
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v275[17], v275[29], v314, v325);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v334, *(v275[17] + 32));
                  v276 = v263;
                  v277 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a2 + 2), *(*(a2 + 2) + 8));
                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v327, *(__p.__r_.__value_.__r.__words[0] + 24), 145, v133, 2u, 0);
                  v328 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v327)), v310);
                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 492, v133, 2u, 0);
                  v278 = *v277;
                  v263 = v276;
                  md::AccessibilityHelper::luminanceAdjustedColor(&v327, v278, &v328, v279);
                  v280 = *(&v336 + 1);
                  **(&v336 + 1) = v327;
                  *(v280 + 16) = v272;
                  ggl::BufferMemory::~BufferMemory(&v334);
                  v281 = (*v265)[3];
                  v282 = *v281;
                  if (*(**(**v281 + 64) + 48) != *(**(**v281 + 64) + 40))
                  {
                    v283 = v281[1];
                    while (v282 != v283)
                    {
                      v284 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                      *(v284 + 24) = *(*(v2 + 46) + 80);
                      *(v284 + 32) = v275;
                      *(v284 + 64) = *v282;
                      *(v284 + 40) = v267;
                      *&v334 = v284;
                      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), &v334);
                      ++v282;
                    }
                  }
                }
              }

              if (v332 == 1)
              {
                (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
              }

              if (v331)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v331);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
              }

              ++v265;
            }

            while (v265 != v266);
          }

          if (v325)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v325);
          }

          if (v263)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v263);
          }

          v238 = v307 + 1;
        }

        while (v307 + 1 != v301);
      }
    }

    v285 = *(v2 + 46);
    v286 = v285[27];
    v286[3] = v285[6];
    v286[4] = v285[15];
    v286[8] = v296;
    *&buf[0] = v286;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 9), buf);
    if (v294)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v294);
    }
  }

LABEL_322:
}