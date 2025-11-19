uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 62);
  v6 = *result;
  v7 = *a3;
  v8 = *(*a3 + 62);
  if (v5 >= *(*result + 62))
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*a2 + 62) < *(*result + 62))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 < v5)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v6 = *a2;
    if (*(*a3 + 62) < *(*a2 + 62))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a4 + 62) < *(*a3 + 62))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a3 + 62) < *(*a2 + 62))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*a2 + 62) < *(*result + 62))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *(v20 + 62);
      v22 = *a1;
      v23 = *(*a1 + 62);
      v24 = *(a2 - 2);
      v25 = *(v24 + 62);
      if (v21 >= v23)
      {
        if (v25 >= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*(v37 + 62) >= *(*a1 + 62))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = a1 + 1;
      }

      else
      {
        if (v25 >= v21)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*(v44 + 62) >= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*(v8 + 62) < *(v9 + 62))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *(v11 + 62);
          v13 = a1[4];
          if (v12 < *(v13 + 62))
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 < *(v16 + 62))
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 < *(*a1 + 62))
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 62) < *(*a1 + 62))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *(v29 + 62);
  v31 = *a1;
  v32 = *(*a1 + 62);
  v33 = *(v28 + 62);
  if (v30 < v32)
  {
    if (v33 >= v30)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 >= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v33 < v30)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 < v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (*(*v49 + 62) < *(v53 + 62))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 62) >= *(v53 + 62))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void md::LabelExternalMeshModerator::requestExternalMesh(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 64));
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 >= v5)
  {
    v8 = *(a1 + 40);
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v13 + 16);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48) - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    *(a1 + 40) = v17;
    *(a1 + 48) = v7;
    *(a1 + 56) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 48) = v7;

  std::mutex::unlock((a1 + 64));
}

void md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos2UVMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos2Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5BD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonBase::MeshMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EEC20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::SplineKeyHash::operator()(int *a1)
{
  v1 = (*a1 + ((*(a1 + 8) - 0x61C8864680B583EBLL) << 6) + ((*(a1 + 8) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a1 + 8) - 0x61C8864680B583EBLL);
  v2 = (a1[1] + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = (a1[3] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = (a1[4] + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  return (*(a1 + 10) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
}

void *std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(void *a1, int *a2)
{
  v4 = md::SplineKeyHash::operator()(a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (md::SplineKey::operator==((v11 + 2), a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(uint64_t *a1)
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
        v6 = v2[6];
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

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3 && *(a3 + 32))
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

uint64_t gdc::ObjectHolder<md::GeometryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EEC58;
  v2 = a1[4];
  if (v2)
  {
    md::GeometryContext::~GeometryContext(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

double md::GeometryLogic::createDebugNode@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void md::GeometryLogic::~GeometryLogic(md::GeometryLogic *this)
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

void md::GeometryContext::getGlobeTransformConstantData(md::GeometryContext *this, const geo::QuadTile *a2, double a3, double a4, uint64_t a5, __int16 a6)
{
  v6 = *(a5 + 4);
  v7 = *(a5 + 1);
  v8 = vcvtmd_s64_f64(a3 * 100.0);
  v9 = vcvtpd_s64_f64(a4 * 100.0);
  v10 = a6;
  if (std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(a2 + 23, &v6))
  {
    std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry const&>();
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile9TransformEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2D1232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  operator delete(v36);
  if ((v38 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  _Unwind_Resume(a1);
}

void std::list<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void gm::_polyFit<float>(float *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = malloc_type_calloc(9uLL, 4uLL, 0x100004052888210uLL);
  v8 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
  v9 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  v10 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
  v11 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
  v12 = malloc_type_malloc(0x60uLL, 0x100004052888210uLL);
  v13 = v12;
  v14 = 0;
  f32 = v12[2].f32;
  do
  {
    v12->i32[v14] = 1065353216;
    v16 = 2;
    v17 = f32;
    do
    {
      *v17 = (a1[v14] - v6) * *(v17 - 8);
      v17 += 8;
      --v16;
    }

    while (v16);
    ++v14;
    ++f32;
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
      v21 = v21 + (v19->f32[v20] * v19->f32[v20]);
      v11[v18] = v21;
      ++v20;
    }

    while (v20 != 8);
    v11[v18++] = sqrtf(v21);
    v19 += 2;
  }

  while (v18 != 3);
  v22 = 0;
  v23 = v7;
  do
  {
    v24 = 0;
    v25 = v12 + 1;
    do
    {
      v26 = vmlaq_f32(vmulq_f32(v12[2 * v22], v25[-1]), *v25, v12[2 * v22 + 1]);
      v23[v24] = vaddv_f32(*&vpaddq_f32(v26, v26)) / (v11[v22] * v11[v24]);
      v25 += 2;
      ++v24;
    }

    while (v24 != 3);
    ++v22;
    v23 += 3;
  }

  while (v22 != 3);
  v27 = 0;
  v28 = v12;
  do
  {
    v29 = 0;
    v30 = v10[v27];
    do
    {
      v30 = v30 + (*(a2 + v29 * 4) * v28->f32[v29]);
      v10[v27] = v30;
      ++v29;
    }

    while (v29 != 8);
    v10[v27] = v30 / v11[v27];
    ++v27;
    v28 += 2;
  }

  while (v27 != 3);
  v31 = 0;
  v32 = (v8 + 1);
  v33 = 1;
  v34 = 4;
  v35 = 8;
  v36 = v8;
  v37 = v8;
  v38 = v7;
  do
  {
    v39 = *v38;
    *v37 = *v38;
    if (v31)
    {
      for (i = 0; i != v31; ++i)
      {
        v39 = v39 - (*&v36[i] * *&v36[i]);
        *v37 = v39;
      }

      v41 = *v38;
    }

    else
    {
      v41 = v39;
    }

    *v37 = sqrtf(fmaxf(v39, v41 * 0.000000001));
    v42 = &v37[v31];
    if (v31 <= 1)
    {
      v43 = v42 + 1;
      v44 = v32;
      v45 = v35;
      v46 = v33;
      do
      {
        v47 = v38[1];
        ++v38;
        v48 = v47;
        *v43 = v47;
        if (v31)
        {
          for (j = 0; j != v31; ++j)
          {
            v48 = v48 - (*&v36[j] * *&v44[4 * j]);
            *v43 = v48;
          }
        }

        *v43 = v48 / *v37;
        v43 += ++v46;
        v44 += v45;
        v45 += 4;
      }

      while (v46 != 3);
    }

    ++v31;
    v37 = v42 + 2;
    v38 += v31 + 1;
    ++v33;
    v36 = (v36 + v34);
    v34 += 4;
    v32 += v35;
    v35 += 4;
  }

  while (v31 != 3);
  v50 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  v51 = 0;
  v52 = v8;
  do
  {
    v53 = v10[v51];
    v50[v51] = v53;
    if (v51)
    {
      v54 = v50;
      v55 = v51;
      v56 = v52;
      do
      {
        v57 = *v56++;
        v58 = v57;
        v59 = *v54++;
        v53 = v53 - (v59 * v58);
        v50[v51] = v53;
        --v55;
      }

      while (v55);
    }

    else
    {
      v56 = v52;
    }

    v52 = v56 + 1;
    v50[v51++] = v53 / *v56;
  }

  while (v51 != 3);
  v60 = 0;
  v61 = 3;
  do
  {
    v62 = v61 - 1;
    v63 = v50[v61 - 1];
    v9[v61 - 1] = v63;
    if (v61 <= 2)
    {
      v64 = &v56[v61];
      v65 = v60;
      do
      {
        v63 = v63 - (v9[v65 + 3] * *v64);
        v9[v62] = v63;
        v64 += v65 + 4;
      }

      while (!__CFADD__(v65++, 1));
    }

    v9[v62] = v63 / *v56;
    v56 -= v61;
    --v60;
  }

  while (v61-- > 1);
  free(v50);
  v68 = 0;
  *(a3 + 12) = v6;
  do
  {
    *(a3 + v68 * 4) = v9[v68] / v11[v68];
    ++v68;
  }

  while (v68 != 3);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  free(v11);

  free(v13);
}

void md::GeometryContext::transformConstantData(double a1, double a2, uint64_t a3, const geo::QuadTile *a4, unsigned __int8 *a5, int a6, __int16 a7)
{
  if (gdc::ToCoordinateSystem(a6) && *a5 == 255)
  {
    md::GeometryContext::getGlobeTransformConstantData(&v17, a4, a1, a2, a5, a7);
  }

  v12 = *(a5 + 4);
  v13 = a5[1];
  v14 = 0;
  v15 = 0;
  v16 = a7;
  if (std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(a4 + 33, &v12))
  {
    std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry const&>();
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile9TransformEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2D12E40(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

double md::GeometryLogic::tileMatrix(md::GeometryLogic *this, int a2, const geo::QuadTile *a3, double a4, double a5)
{
  if (a2)
  {
    v6 = fmax(a4, 0.0);
    v7 = 1 << *(a3 + 1);
    v8 = 1.0 / v7;
    v9 = *(a3 + 2);
    v10 = v7 + ~*(a3 + 1);
    v17[0] = v8 * v9;
    v17[1] = v8 * v10;
    v17[2] = v8 + v9 * v8;
    v17[3] = v8 + v10 * v8;
    gdc::GlobeTileUtils::boundsFromMercatorRect(v16, v17, 0.0, v6);
    geo::OrientedBox<double,3u,double,double>::toMatrix(this, v16);
  }

  else
  {
    v12 = 1 << *(a3 + 1);
    v13 = *(a3 + 2);
    v14 = ~*(a3 + 1);
    v15 = 1.0 / v12;
    *(this + 40) = 0u;
    *(this + 72) = 0u;
    *(this + 8) = 0u;
    *(this + 24) = 0u;
    *(this + 56) = 0u;
    *(this + 11) = 0;
    *this = v15;
    *(this + 5) = v15;
    *(this + 10) = v15;
    *(this + 12) = v15 * v13;
    *(this + 13) = v15 * (v12 + v14);
    result = 0.0;
    *(this + 7) = xmmword_1B33B0740;
  }

  return result;
}

float md::GeometryLogic::adjustedMeshBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v10, a3);
  v5 = (v11[86] * v11[85]) * v11[87];
  v6 = v11[10];
  v7 = v6 + (*(a2 + 8) * v5);
  v8 = v6 + (*(a2 + 20) * v5);
  *a1 = *a2;
  *(a1 + 8) = v7;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = v8;
  ggl::BufferMemory::~BufferMemory(v10);
  return result;
}

void md::GeometryLogic::calculateGeocentricBounds(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v65, a2);
  v7 = 0;
  v8 = v66;
  v9 = &v66[2].i32[2];
  do
  {
    v10 = &v64[v7];
    v11 = *v9;
    *v10 = *(v9 - 1);
    *(v10 + 2) = v11;
    v7 += 12;
    v9 += 4;
  }

  while (v7 != 192);
  v12 = v8[18].i32[2];
  v62 = v8[18].i64[0];
  v63 = v12;
  *a4 = 0;
  *(a4 + 8) = 0;
  *a3 = xmmword_1B33AFF10;
  *(a3 + 16) = 0x80000000800000;
  __asm { FMOV            V4.4S, #1.0 }

  v61 = _Q4.i32[0];
  _Q4.f32[1] = a1[1];
  _Q4.f32[2] = _Q4.f32[1] * _Q4.f32[1];
  _Q4.f32[3] = (_Q4.f32[1] * _Q4.f32[1]) * _Q4.f32[1];
  v17 = vmulq_f32(_Q4, *v8);
  v18 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, *a1, vaddv_f32(*&vpaddq_f32(v17, v17)));
  v19 = 0;
  v67 = __PAIR64__(v20, LODWORD(v18));
  v68 = v21;
  *a3 = __PAIR64__(v20, LODWORD(v18));
  *(a3 + 8) = v68;
  do
  {
    *(&v69 + v19) = *(&v67 + v19) - *(&v62 + v19);
    v19 += 4;
  }

  while (v19 != 12);
  *a4 = gm::Matrix<float,3,1>::normalized<int,void>(&v69);
  *(a4 + 4) = v22;
  *(a4 + 8) = v23;
  v24 = a1[4];
  v25.i64[0] = __PAIR64__(LODWORD(v24), v61);
  v25.f32[2] = v24 * v24;
  v25.f32[3] = (v24 * v24) * v24;
  v26 = vmulq_f32(v25, *v8);
  *(a3 + 12) = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, a1[3], vaddv_f32(*&vpaddq_f32(v26, v26)));
  *(a3 + 16) = v27;
  *(a3 + 20) = v28;
  v29 = a1[1];
  v30 = a1[3];
  v31 = a1[4];
  if ((v30 - *a1) >= 0.5 || (v31 - v29) >= 0.5)
  {
    v33 = gm::lerp<gm::Matrix<float,3,1>,double>(*a1, v29, a1[2], v30, v31, a1[5]);
    v35.i64[0] = __PAIR64__(LODWORD(v34), v61);
    v35.f32[2] = v34 * v34;
    v35.f32[3] = (v34 * v34) * v34;
    v36 = vmulq_f32(v35, *v8);
    v37 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, v33, vaddv_f32(*&vpaddq_f32(v36, v36)));
    v38 = 0;
    v69 = v37;
    v70 = v39;
    v71 = v40;
    do
    {
      v41 = (a3 + v38);
      v42 = *(&v69 + v38);
      *v41 = fminf(v42, *(a3 + v38));
      v41[3] = fmaxf(*(a3 + v38 + 12), v42);
      v38 += 4;
    }

    while (v38 != 12);
    v43 = a1[4];
    v44.i64[0] = __PAIR64__(LODWORD(v43), v61);
    v44.f32[2] = v43 * v43;
    v44.f32[3] = (v43 * v43) * v43;
    v45 = vmulq_f32(v44, *v8);
    v46 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, *a1, vaddv_f32(*&vpaddq_f32(v45, v45)));
    v47 = 0;
    v69 = v46;
    v70 = v48;
    v71 = v49;
    do
    {
      v50 = (a3 + v47);
      v51 = *(&v69 + v47);
      *v50 = fminf(v51, *(a3 + v47));
      v50[3] = fmaxf(*(a3 + v47 + 12), v51);
      v47 += 4;
    }

    while (v47 != 12);
    v52 = a1[1];
    v53.i64[0] = __PAIR64__(LODWORD(v52), v61);
    v53.f32[2] = v52 * v52;
    v53.f32[3] = (v52 * v52) * v52;
    v54 = vmulq_f32(v53, *v8);
    v55 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, a1[3], vaddv_f32(*&vpaddq_f32(v54, v54)));
    v56 = 0;
    v69 = v55;
    v70 = v57;
    v71 = v58;
    do
    {
      v59 = (a3 + v56);
      v60 = *(&v69 + v56);
      *v59 = fminf(v60, *(a3 + v56));
      v59[3] = fmaxf(*(a3 + v56 + 12), v60);
      v56 += 4;
    }

    while (v56 != 12);
  }

  ggl::BufferMemory::~BufferMemory(v65);
}

float gm::lerp<gm::Matrix<float,3,1>,double>(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = 0;
  *v15 = a1;
  *&v15[1] = a2;
  *&v15[2] = a3;
  *v14 = a4;
  *&v14[1] = a5;
  *&v14[2] = a6;
  do
  {
    *(&v16 + v6 * 4) = *&v14[v6] - *&v15[v6];
    ++v6;
  }

  while (v6 != 3);
  v7 = 0;
  v10 = v16;
  v11 = v17;
  do
  {
    *(&v16 + v7) = *(&v10 + v7) * 0.5;
    v7 += 4;
  }

  while (v7 != 12);
  v8 = 0;
  v12 = v16;
  v13 = v17;
  do
  {
    *(&v16 + v8 * 4) = *(&v12 + v8 * 4) + *&v15[v8];
    ++v8;
  }

  while (v8 != 3);
  return *&v16;
}

void md::GeometryLogic::scaleGeocentricBoundsWithNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v25, a5);
  v9 = 0;
  v10 = (v26[86] * v26[85]) * v26[87];
  v11 = *(a2 + 8) * v10;
  v12 = *(a2 + 20);
  do
  {
    *(&v27 + v9) = v11 * *(a4 + v9);
    v9 += 4;
  }

  while (v9 != 12);
  v13 = 0;
  v23 = v27;
  v24 = v28;
  do
  {
    *(&v27 + v13) = *(&v23 + v13) + *(a3 + v13);
    v13 += 4;
  }

  while (v13 != 12);
  v14 = 0;
  v15 = v12 * v10;
  v16 = v27;
  v17 = v28;
  do
  {
    *(&v27 + v14) = v15 * *(a4 + v14);
    v14 += 4;
  }

  while (v14 != 12);
  v18 = 0;
  v21 = v27;
  v22 = v28;
  do
  {
    *(&v27 + v18) = *(&v21 + v18) + *(a3 + 12 + v18);
    v18 += 4;
  }

  while (v18 != 12);
  v19 = v28;
  v20 = v27;
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 12) = v20;
  *(a1 + 20) = v19;
  ggl::BufferMemory::~BufferMemory(v25);
}

uint64_t md::GeometryLogic::createIcoSphere(uint64_t *a1, signed int **a2, int a3)
{
  v48 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 1065353216;
  v45[0] = a1;
  v45[1] = &v48;
  v43 = 0x3FCF1BBDBF800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3FCF1BBD3F800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBFCF1BBDBF800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBFCF1BBD3F800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBF80000000000000;
  LODWORD(v44) = 1070537661;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3F80000000000000;
  LODWORD(v44) = 1070537661;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBF80000000000000;
  LODWORD(v44) = -1076945987;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3F80000000000000;
  LODWORD(v44) = -1076945987;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 1070537661;
  LODWORD(v44) = -1082130432;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 1070537661;
  LODWORD(v44) = 1065353216;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 3218021309;
  LODWORD(v44) = -1082130432;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 3218021309;
  LODWORD(v44) = 1065353216;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xB00000000;
  LODWORD(v44) = 5;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x500000000;
  LODWORD(v44) = 1;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x100000000;
  LODWORD(v44) = 7;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x700000000;
  LODWORD(v44) = 10;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xA00000000;
  LODWORD(v44) = 11;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x500000001;
  LODWORD(v44) = 9;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xB00000005;
  LODWORD(v44) = 4;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xA0000000BLL;
  LODWORD(v44) = 2;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x70000000ALL;
  LODWORD(v44) = 6;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x100000007;
  LODWORD(v44) = 8;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x900000003;
  LODWORD(v44) = 4;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x400000003;
  LODWORD(v44) = 2;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x200000003;
  LODWORD(v44) = 6;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x600000003;
  LODWORD(v44) = 8;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x800000003;
  LODWORD(v44) = 9;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x900000004;
  LODWORD(v44) = 5;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x400000002;
  LODWORD(v44) = 11;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x200000006;
  LODWORD(v44) = 10;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x600000008;
  LODWORD(v44) = 7;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x800000009;
  LODWORD(v44) = 1;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v4 = 0;
  v6 = *a2;
  v5 = a2[1];
  v40 = a2;
  do
  {
    v41 = v4;
    v43 = 0;
    v44 = 0uLL;
    if (v6 != v5)
    {
      do
      {
        v7 = v6[1];
        v8 = *v6;
        if (*v6 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = v8;
        }

        if (v8 <= v7)
        {
          v10 = v6[1];
        }

        else
        {
          v10 = *v6;
        }

        v11 = (v9 << 32) + v10;
        v13 = *(&v46[0] + 1);
        v12 = *&v46[0];
        v14 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*&v46[0], *(&v46[0] + 1), v11);
        if (v14)
        {
          v15 = *(v14 + 6);
        }

        else
        {
          v16 = (*a1 + 12 * v8);
          v17 = (*a1 + 12 * v7);
          v18 = (v17[1].f32[0] + v16[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v17, *v16), 0x3F0000003F000000);
          v52 = v18;
          v15 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v11;
          v50 = v15;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v11);
          v7 = v6[1];
          v13 = *(&v46[0] + 1);
          v12 = *&v46[0];
        }

        v19 = v6[2];
        if (v7 >= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v7;
        }

        if (v7 <= v19)
        {
          v21 = v6[2];
        }

        else
        {
          v21 = v7;
        }

        v22 = (v20 << 32) + v21;
        v23 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v12, v13, v22);
        if (v23)
        {
          v24 = *(v23 + 6);
        }

        else
        {
          v25 = (*a1 + 12 * v7);
          v26 = (*a1 + 12 * v19);
          v27 = (v26[1].f32[0] + v25[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v26, *v25), 0x3F0000003F000000);
          v52 = v27;
          v24 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v22;
          v50 = v24;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v22);
          v19 = v6[2];
          v13 = *(&v46[0] + 1);
          v12 = *&v46[0];
        }

        v28 = *v6;
        if (v19 >= *v6)
        {
          v29 = v28;
        }

        else
        {
          v29 = v19;
        }

        if (v19 <= v28)
        {
          v30 = *v6;
        }

        else
        {
          v30 = v19;
        }

        v31 = (v29 << 32) + v30;
        v32 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v12, v13, v31);
        if (v32)
        {
          v33 = *(v32 + 6);
        }

        else
        {
          v34 = (*a1 + 12 * v19);
          v35 = (*a1 + 12 * v28);
          v36 = (v35[1].f32[0] + v34[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v35, *v34), 0x3F0000003F000000);
          v52 = v36;
          v33 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v31;
          v50 = v33;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v31);
          v28 = *v6;
        }

        v49 = __PAIR64__(v15, v28);
        v50 = v33;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        LODWORD(v49) = v6[1];
        HIDWORD(v49) = v24;
        v50 = v15;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        LODWORD(v49) = v6[2];
        HIDWORD(v49) = v33;
        v50 = v24;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        v49 = __PAIR64__(v24, v15);
        v50 = v33;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        v6 += 3;
      }

      while (v6 != v5);
      v6 = *v40;
    }

    if (v6)
    {
      v40[1] = v6;
      operator delete(v6);
      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
    }

    v6 = v43;
    *v40 = v43;
    v37 = v44;
    *(v40 + 1) = v44;
    v5 = v37;
    v4 = v41 + 1;
  }

  while (v41 + 1 != a3);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
}

uint64_t md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(uint64_t **a1, uint64_t a2)
{
  v3 = gm::Matrix<float,3,1>::normalized<int,void>(a2);
  v6 = *a1;
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 2);
    v11 = v10 + 1;
    if (v10 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 2);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v13);
    }

    v14 = 12 * v10;
    *v14 = v3;
    *(v14 + 4) = v4;
    *(v14 + 8) = v5;
    v9 = 12 * v10 + 12;
    v15 = *v6;
    v16 = v6[1];
    v17 = v14 + *v6 - v16;
    if (v16 != *v6)
    {
      v18 = v17;
      do
      {
        v19 = *v15;
        *(v18 + 8) = v15[2];
        *v18 = v19;
        v18 += 12;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *v6;
    }

    *v6 = v17;
    v6[1] = v9;
    v6[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v8 = v3;
    *(v8 + 4) = v4;
    v9 = v8 + 12;
    *(v8 + 8) = v5;
  }

  v6[1] = v9;
  v20 = a1[1];
  result = *v20;
  *v20 = result + 1;
  return result;
}

void std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = v13;
      do
      {
        v15 = *v7;
        *(v14 + 8) = v7[2];
        *v14 = v15;
        v14 += 12;
        v7 += 3;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(void *result, unint64_t a2)
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

uint64_t md::NavigationMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::StyleLogic::setMapMode(v5, 0, 0.0);
      v3 = *(a2 + 41928);
    }
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0xDAD5CEE0DC5FF509);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      *(v7 + 168) = 0;
    }
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0xAF46DE79C836B0D8)[5];
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v8 + 136), 0);
  v9 = *(v8 + 184);

  return gdc::GlobeTileSelector::setShouldCacheZBounds(v9, 0);
}

uint64_t md::NavigationMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  md::StandardMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v5 = *(a2 + 41928);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x2FED70A4459DFCA1uLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      md::StyleLogic::setMapMode(v7, 3, 0.0);
      v5 = *(a2 + 41928);
    }
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xDAD5CEE0DC5FF509);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      *(v9 + 168) = 1;
    }
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xAF46DE79C836B0D8)[5];
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v10 + 136), 1);
  v11 = *(v10 + 184);

  return gdc::GlobeTileSelector::setShouldCacheZBounds(v11, 1);
}

void md::NavigationMapEngineMode::applyMapDataTypeSettings(uint64_t a1, uint64_t a2, void *a3)
{
  md::MapEngineMode::applyMapDataTypeSettings(a1, a2, a3);
  v5 = *(a2 + 41936);
  v6 = *v5;
  v7 = v5[1];
  while (v6 != v7)
  {
    if (*v6 == 25)
    {
      if (v6 != v7 && *(v6 + 8))
      {
        std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(a3, 6u);

        std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(a3, 0x1Au);
      }

      return;
    }

    v6 += 16;
  }
}

void md::NavigationMapEngineMode::~NavigationMapEngineMode(md::NavigationMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

md::NavigationMapEngineMode *md::NavigationMapEngineMode::NavigationMapEngineMode(md::NavigationMapEngineMode *this, int a2)
{
  IsEnabled_VKMLayout_Navigation = MapsFeature_IsEnabled_VKMLayout_Navigation();
  v5 = md::StandardMapEngineMode::StandardMapEngineMode(this, 5, a2, IsEnabled_VKMLayout_Navigation);
  *this = &unk_1F29EEC80;
  LOWORD(v8) = 13;
  WORD1(v8) = a2;
  md::MapEngineMode::addOptionalMapDataTypes(v5, &v8, 1);
  if (a2)
  {
    md::MapEngineMode::addTileSelectionTileSetType(this);
  }

  v7 = 1;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 1u) + 18) = 1;
  v7 = 8;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 8u) + 18) = 0;
  v7 = 4;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 4u) + 18) = 1;
  v7 = 3;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 3u) + 18) = 1;
  v7 = 7;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 7u) + 18) = 1;
  v7 = 6;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 6u) + 18) = 1;
  v7 = 5;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 5u) + 18) = 1;
  v7 = 2;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 2u) + 18) = 1;
  v7 = 0;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(this + 1, 0) + 18) = 1;
  return this;
}

unsigned __int8 *md::RoadSignPartMetrics::RoadSignPartMetrics(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695F060];
  *a1 = 0;
  *(a1 + 8) = *v5;
  v6 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 24) = *MEMORY[0x1E695F058];
  *(a1 + 56) = 0u;
  *(a1 + 40) = v6;
  *(a1 + 72) = 0u;
  v7 = (a1 + 72);
  v8 = (a1 + 80);
  *(a1 + 81) = 0u;
  v9 = *MEMORY[0x1E695EFF8];
  *(a1 + 104) = *MEMORY[0x1E695EFF8];
  *(a1 + 120) = v9;
  *(a1 + 136) = v9;
  *(a1 + 152) = v9;
  *(a1 + 21) = 0;
  *a1 = a2;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = v11 * v10;
  v13 = vrndaq_f64(vmulq_n_f64(*(a3 + 72), v11 * v10));
  *(a1 + 11) = fmax(v13.f64[0], v13.f64[1]);
  v14 = (a2 < 0x10) & (0xFFCCu >> a2);
  a1[96] = v14;
  v15 = round(*(a3 + 56) * (v11 * v10));
  v16 = round(*(a3 + 64) * (v11 * v10));
  v17 = fmax(v15 + v13.f64[0], 0.0);
  v18 = fmax(v16 + v13.f64[0], 0.0);
  v19 = fmax(v13.f64[0] - v16, 0.0);
  v20 = round(v11 * v10 * *(a3 + 112));
  v21 = fmax(fmax(v13.f64[0] - v15, 0.0), v13.f64[1]) + v20;
  v22 = fmax(v17, v13.f64[1]) + v20;
  v23 = round(v11 * v10 * *(a3 + 120));
  v24 = fmax(v18, v13.f64[1]) + v23;
  MidY = fmax(v19, v13.f64[1]) + v23;
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        *v7 = v21;
        v36 = round(v12 * *(a3 + 104));
        v37 = *(a3 + 128);
      }

      else
      {
        *v8 = v22;
        v36 = round(v12 * *(a3 + 128));
        v37 = *(a3 + 104);
      }

      v30 = round(v12 * v37) + v36;
    }

    else
    {
      if ((a2 - 2) < 2)
      {
        v28 = round(v12 * *(a3 + 48)) + v20;
        v29 = round(v12 * *(a3 + 24));
        v30 = v29 + v28 * 2.0;
        *(a1 + 5) = v30;
        *(a1 + 13) = v28;
        v31 = v28 + v29;
        *(a1 + 15) = v31;
        v32 = (v31 + v28) * 0.5;
        goto LABEL_36;
      }

      v30 = 2.0;
      if (a2 != 1)
      {
        goto LABEL_66;
      }
    }

    *(a1 + 5) = v30;
    goto LABEL_47;
  }

  if (a2 > 0xF)
  {
    goto LABEL_17;
  }

  if (((1 << a2) & 0xF000) != 0)
  {
    v33 = round(round(v12 * *(a3 + 32)) * 0.707106781);
    v34 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
    v35 = fmax(round(v12 * *(a3 + 128)), v34);
    if (a2 > 13)
    {
      if (a2 == 14)
      {
        goto LABEL_14;
      }
    }

    else if (a2 == 12)
    {
LABEL_14:
      *v7 = v33 + v21;
      v30 = round(v12 * *(a3 + 104)) + round(v12 * *(a3 + 48)) + v35;
      *(a1 + 5) = v30;
      *(a1 + 13) = v30 - v34;
      *(a1 + 15) = v30;
      v32 = v30 + v33;
      goto LABEL_36;
    }

    v21 = v22;
    v7 = (a1 + 80);
    goto LABEL_14;
  }

  if (((1 << a2) & 0x300) != 0)
  {
    v38 = round(v12 * *(a3 + 32));
    if (a2 != 9)
    {
      v22 = v21;
    }

    v39 = 72;
    if (a2 == 9)
    {
      v39 = 80;
    }

    *&a1[v39] = v38 + v22;
    v30 = round(v12 * *(a3 + 128)) + round(v12 * *(a3 + 104));
    *(a1 + 5) = v30;
    *(a1 + 13) = v30;
    *(a1 + 15) = v30;
    v32 = v38 + v30;
    goto LABEL_36;
  }

  if (((1 << a2) & 0xC00) != 0)
  {
    v26 = round(v12 * *(a3 + 24));
    v27 = fmax(round(v12 * *(a3 + 128)), v26);
    if (a2 == 11)
    {
      *v8 = v22;
    }

    else
    {
      *v7 = v21;
    }

    v30 = round(v12 * *(a3 + 104)) + round(v12 * *(a3 + 48)) + v27;
    *(a1 + 5) = v30;
    *(a1 + 13) = v30 - v26;
    *(a1 + 15) = v30;
    v32 = v30;
    goto LABEL_36;
  }

LABEL_17:
  if (a2 == 6)
  {
    *v7 = v21;
  }

  else
  {
    if (a2 != 7)
    {
      goto LABEL_66;
    }

    *v8 = v22;
  }

  v40 = round(v12 * *(a3 + 104));
  v41 = round(v12 * *(a3 + 24));
  v42 = round(v12 * *(a3 + 48));
  v30 = v41 + v40 + round(v12 * *(a3 + 128)) + v42 * 2.0;
  *(a1 + 5) = v30;
  v43 = v42 + v40;
  *(a1 + 13) = v43;
  *(a1 + 15) = v43 + v41;
  v32 = v43 + v41 * 0.5;
LABEL_36:
  *(a1 + 17) = v32;
  if (a2 <= 7)
  {
    if ((a2 - 6) >= 2 && a2 != 2)
    {
      if (a2 == 3)
      {
        *(a1 + 4) = MidY;
        v44 = round(v12 * *(a3 + 96));
        *(a1 + 6) = v44;
        *(a1 + 8) = MidY;
        v45 = *(a3 + 32);
        *(a1 + 7) = round(v12 * v45) + v24;
        goto LABEL_56;
      }

      goto LABEL_66;
    }

    goto LABEL_45;
  }

  if (((1 << a2) & 0xC00) == 0)
  {
    if (((1 << a2) & 0x3000) != 0)
    {
      v47 = round(v12 * *(a3 + 32)) * 0.707106781;
      goto LABEL_50;
    }

    if (((1 << a2) & 0xC000) != 0)
    {
      v46 = round(round(v12 * *(a3 + 32)) * 0.707106781);
      *(a1 + 4) = MidY;
      v44 = round(v12 * *(a3 + 96));
      *(a1 + 6) = v44;
      *(a1 + 8) = MidY;
      v24 = v46 + v24;
LABEL_48:
      v48 = MidY;
      goto LABEL_51;
    }

    if ((a2 - 8) >= 2)
    {
      goto LABEL_66;
    }

LABEL_47:
    *(a1 + 4) = MidY;
    v44 = round(v12 * *(a3 + 96));
    *(a1 + 6) = v44;
    *(a1 + 8) = MidY;
    goto LABEL_48;
  }

LABEL_45:
  v47 = v12 * *(a3 + 32);
LABEL_50:
  v48 = round(v47) + MidY;
  *(a1 + 4) = v48;
  v44 = round(v12 * *(a3 + 96));
  *(a1 + 6) = v44;
  *(a1 + 8) = v48;
LABEL_51:
  *(a1 + 7) = v24;
  if (a2 > 7)
  {
    if (((1 << a2) & 0xC00) == 0)
    {
      if (((1 << a2) & 0x3000) != 0)
      {
        v55 = round(round(v12 * *(a3 + 32)) * 0.707106781);
        v56 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
        *(a1 + 18) = MidY;
        v57 = v55 + MidY;
        *(a1 + 14) = v57;
        v52 = v56 + v57;
      }

      else
      {
        if (((1 << a2) & 0xC000) == 0)
        {
          if ((a2 - 8) < 2)
          {
            v53 = *(a1 + 3);
            MidY = CGRectGetMidY(*(&v30 - 2));
            *(a1 + 18) = MidY;
            v11 = *(a3 + 16);
            v10 = *(a3 + 8);
            v54 = round(v10 * *(a3 + 24) * v11) * 0.5;
            *(a1 + 14) = MidY - v54;
            *(a1 + 16) = v54 + MidY;
            if ((a1[96] & 1) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_70;
          }

          goto LABEL_66;
        }

        v50 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
        v51 = v44 + MidY;
        MidY = round(round(v12 * *(a3 + 32)) * 0.707106781) + v51;
        *(a1 + 18) = MidY;
        *(a1 + 14) = v51;
        v52 = v51 - v50;
      }

LABEL_69:
      *(a1 + 16) = v52;
      if (((a2 < 0x10) & (0xFFCCu >> a2)) == 0)
      {
LABEL_74:
        v14 = 0;
        goto LABEL_89;
      }

LABEL_70:
      v58 = *(a1 + 17);
      v59 = round(v10 * *(a3 + 40) * v11);
      if (v59 == 0.0)
      {
LABEL_88:
        *(a1 + 19) = v58;
        *(a1 + 20) = MidY;
        v14 = 1;
        goto LABEL_89;
      }

      v60 = *(a1 + 13) - v58;
      v61 = *(a1 + 14) - MidY;
      v62 = 1.0 / sqrt(v61 * v61 + v60 * v60);
      v63 = v62 * v60;
      v64 = v62 * v61;
      v94[0] = v63;
      v94[1] = v64;
      v65 = *(a1 + 15) - v58;
      v66 = *(a1 + 16) - MidY;
      v67 = 1.0 / sqrt(v66 * v66 + v65 * v65);
      v68 = v67 * v65;
      v69 = v67 * v66;
      *&v93 = v67 * v65;
      *(&v93 + 1) = v67 * v66;
      if ((*a1 & 0xFE) == 8)
      {
        v70 = xmmword_1B33B0740;
        if (*v94 == 0)
        {
          v74 = 0.0;
        }

        else
        {
          v71 = atan2(v64, v63);
          v72 = fmod(v71 + 1.57079633, 6.28318531);
          v73 = fmod(v72 + 6.28318531, 6.28318531);
          v70 = xmmword_1B33B0740;
          v74 = v73 + -3.14159265;
        }

        if (v70 != 0 && v93 != 0)
        {
          v79 = atan2(v69, v68);
          v80 = 1.57079633;
LABEL_85:
          v81 = fmod(v79 + v80, 6.28318531);
          v82 = fmod(v81 + 6.28318531, 6.28318531) + -3.14159265;
LABEL_87:
          v83 = (v82 + v74) * 0.5;
          v84 = v59 / asin(vabdd_f64(v74, v82) * 0.5) - v59;
          v85 = __sincos_stret(v83);
          v86 = v84 / sqrt(v85.__cosval * v85.__cosval + v85.__sinval * v85.__sinval);
          v58 = ceil(v58 + v86 * v85.__cosval);
          MidY = ceil(MidY + v86 * v85.__sinval);
          goto LABEL_88;
        }
      }

      else
      {
        v75 = xmmword_1B33B0680;
        if (*v94 == 0)
        {
          v74 = 0.0;
        }

        else
        {
          v76 = atan2(v64, v63);
          v77 = fmod(v76 + 3.14159265, 6.28318531);
          v78 = fmod(v77 + 6.28318531, 6.28318531);
          v75 = xmmword_1B33B0680;
          v74 = v78 + -3.14159265;
        }

        if (v75 != 0 && v93 != 0)
        {
          v79 = atan2(v69, v68);
          v80 = 3.14159265;
          goto LABEL_85;
        }
      }

      v82 = 0.0;
      goto LABEL_87;
    }

LABEL_62:
    *(a1 + 18) = MidY;
    v52 = round(v10 * *(a3 + 32) * v11) + MidY;
    *(a1 + 14) = v52;
    goto LABEL_69;
  }

  if ((a2 - 6) < 2 || a2 == 2)
  {
    goto LABEL_62;
  }

  if (a2 == 3)
  {
    v45 = *(a3 + 32);
LABEL_56:
    v49 = v44 + MidY;
    MidY = round(v10 * v45 * v11) + v44 + MidY;
    *(a1 + 18) = MidY;
    *(a1 + 14) = v49;
    *(a1 + 16) = v49;
    if (((a2 < 0x10) & (0xFFCCu >> a2)) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_66:
  if (v14)
  {
    MidY = *(a1 + 18);
    goto LABEL_70;
  }

LABEL_89:
  v87.f64[0] = *(a1 + 10);
  v88 = *(a1 + 40);
  v87.f64[1] = *(a1 + 7);
  v89 = vaddq_f64(vaddq_f64(v88, vextq_s8(*(a1 + 4), *(a1 + 4), 8uLL)), v87);
  *(a1 + 8) = v89;
  *(a1 + 21) = v19;
  v90 = *a1;
  if (v90 <= 0xE && ((1 << v90) & 0x5550) != 0)
  {
    *(a1 + 3) = *&vsubq_f64(v89, v88);
    if (v14)
    {
      v91 = *(a1 + 104);
      *(a1 + 104) = *(a1 + 120);
      *(a1 + 120) = v91;
      *(a1 + 13) = v89.f64[0] - *(a1 + 13);
      *(a1 + 15) = v89.f64[0] - *(a1 + 15);
      *(a1 + 17) = v89.f64[0] - *(a1 + 17);
      *(a1 + 19) = v89.f64[0] - *(a1 + 19);
    }
  }

  return a1;
}

double md::RoadSignPartMetrics::signMin(md::RoadSignPartMetrics *this)
{
  MinX = CGRectGetMinX(*(this + 24));
  CGRectGetMinY(*(this + 24));
  return MinX;
}

double md::RoadSignPartMetrics::signMax(md::RoadSignPartMetrics *this)
{
  MaxX = CGRectGetMaxX(*(this + 24));
  CGRectGetMaxY(*(this + 24));
  return MaxX;
}

md::RoadSignGeneratedMetrics *md::RoadSignGeneratedMetrics::RoadSignGeneratedMetrics(md::RoadSignGeneratedMetrics *this, const RoadSignMetrics *a2, const RoadSignTextMetrics *a3)
{
  v6 = 0;
  v7 = 0;
  v161 = *MEMORY[0x1E69E9840];
  *this = 0;
  v8 = MEMORY[0x1E695F060];
  v9 = MEMORY[0x1E695F058];
  *(this + 8) = *MEMORY[0x1E695F060];
  v10 = *v9;
  v11 = v9[1];
  *(this + 24) = *v9;
  *(this + 40) = v11;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 81) = 0u;
  v12 = MEMORY[0x1E695EFF8];
  v13 = *MEMORY[0x1E695EFF8];
  *(this + 104) = *MEMORY[0x1E695EFF8];
  *(this + 120) = v13;
  *(this + 136) = v13;
  *(this + 152) = v13;
  *(this + 21) = 0;
  *(this + 176) = 0;
  v14 = (this + 176);
  *(this + 184) = *v8;
  v15 = *v9;
  *(this + 216) = v9[1];
  *(this + 200) = v10;
  *(this + 232) = 0u;
  v16 = this + 232;
  *(this + 257) = 0u;
  *(this + 248) = 0u;
  v17 = *v12;
  *(this + 280) = *v12;
  *(this + 296) = v17;
  v18 = *v12;
  *(this + 312) = *v12;
  *(this + 328) = v18;
  *(this + 43) = 0;
  *(this + 352) = 0;
  v19 = *v9;
  v20 = v9[1];
  *(this + 360) = *v8;
  *(this + 376) = v19;
  *(this + 433) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = v20;
  v21 = *v12;
  *(this + 456) = *v12;
  *(this + 472) = v21;
  v22 = *v12;
  *(this + 488) = *v12;
  *(this + 504) = v22;
  *(this + 65) = 0;
  *(this + 528) = 0;
  v23 = *v9;
  v24 = v9[1];
  *(this + 536) = *v8;
  *(this + 552) = v23;
  *(this + 609) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = v24;
  v25 = *v12;
  *(this + 632) = *v12;
  *(this + 648) = v25;
  v26 = *v12;
  *(this + 664) = *v12;
  *(this + 680) = v26;
  *(this + 87) = 0;
  v27 = *v9;
  v28 = v9[1];
  *(this + 712) = *v8;
  *(this + 728) = v27;
  v29 = v9[1];
  *(this + 760) = *v9;
  *(this + 776) = v29;
  *(this + 744) = v28;
  *(this + 99) = 0;
  *(this + 50) = *v12;
  v30 = (this + 816);
  *(this + 51) = *v12;
  *(this + 52) = *v12;
  v31 = *v9;
  *(this + 54) = v9[1];
  *(this + 53) = v31;
  v32 = *v9;
  *(this + 56) = v9[1];
  *(this + 55) = v32;
  v33 = *v9;
  *(this + 58) = v9[1];
  *(this + 57) = v33;
  v34 = *v9;
  *(this + 60) = v9[1];
  *(this + 59) = v34;
  v35 = *v9;
  *(this + 62) = v9[1];
  *(this + 61) = v35;
  v36 = *v9;
  *(this + 64) = v9[1];
  *(this + 63) = v36;
  *(this + 66) = v9[1];
  *(this + 65) = v15;
  *(this + 134) = 0;
  orientation = a2->_orientation;
  if (orientation - 1 <= 0xC)
  {
    v38 = (orientation - 1);
    v6 = byte_1B33B3074[v38];
    v7 = byte_1B33B3081[v38];
  }

  v149 = (this + 800);
  if (orientation > 0xD)
  {
    goto LABEL_5;
  }

  v39 = 1;
  if (((1 << orientation) & 0x3BF6) != 0)
  {
    goto LABEL_5;
  }

  if (orientation == 3)
  {
    v40 = 2;
  }

  else
  {
    if (orientation != 10)
    {
LABEL_5:
      v39 = 0;
      v40 = 0;
      goto LABEL_6;
    }

    v40 = 3;
  }

LABEL_6:
  *(this + 704) = v39;
  if (v6)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v6, a2);
    v41 = v159;
    *(this + 8) = v158;
    *(this + 9) = v41;
    *(this + 10) = v160;
    v42 = v155;
    *(this + 4) = v154;
    *(this + 5) = v42;
    v43 = v157;
    *(this + 6) = v156;
    *(this + 7) = v43;
    v44 = v151;
    *this = v150;
    *(this + 1) = v44;
    v45 = v153;
    *(this + 2) = v152;
    *(this + 3) = v45;
  }

  v46 = (v16 + 120);
  if (v7)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v7, a2);
    v47 = v159;
    *(v14 + 8) = v158;
    *(v14 + 9) = v47;
    *(v14 + 10) = v160;
    v48 = v155;
    *(v14 + 4) = v154;
    *(v14 + 5) = v48;
    v49 = v157;
    *(v14 + 6) = v156;
    *(v14 + 7) = v49;
    v50 = v151;
    *v14 = v150;
    *(v14 + 1) = v50;
    v51 = v153;
    *(v14 + 2) = v152;
    *(v14 + 3) = v51;
  }

  v52 = (v16 + 296);
  md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, 1, a2);
  v53 = v159;
  *(v16 + 248) = v158;
  *(v16 + 264) = v53;
  *(v16 + 280) = v160;
  v54 = v155;
  *(v16 + 184) = v154;
  *(v16 + 200) = v54;
  v55 = v157;
  *(v16 + 216) = v156;
  *(v16 + 232) = v55;
  v56 = v151;
  *v46 = v150;
  *(v16 + 136) = v56;
  v57 = v153;
  *(v16 + 152) = v152;
  *(v16 + 168) = v57;
  v58 = 0.0;
  v59 = 0.0;
  v60 = *(this + 704);
  if (v60 == 1)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v40, a2);
    v61 = v159;
    *(v16 + 424) = v158;
    *(v16 + 440) = v61;
    *(v16 + 456) = v160;
    v62 = v155;
    *(v16 + 360) = v154;
    *(v16 + 376) = v62;
    v63 = v157;
    *(v16 + 392) = v156;
    *(v16 + 408) = v63;
    v64 = v151;
    *v52 = v150;
    *(v16 + 312) = v64;
    v65 = v153;
    *(v16 + 328) = v152;
    *(v16 + 344) = v65;
    v59 = 0.0;
    LOBYTE(v60) = *(this + 704);
    if (v60)
    {
      v59 = *(this + 71);
    }
  }

  v66 = *(this + 5) + v59 + *(this + 27);
  width = a2->_glyphSize.width;
  if (width != *v8 || a2->_glyphSize.height != *(v8 + 8))
  {
    scale = a2->_scale;
    v69 = scale * width;
    v70 = floor(v69);
    v71 = ceil(v69);
    if (scale >= 1.0)
    {
      v58 = v70;
    }

    else
    {
      v58 = v71;
    }
  }

  v72 = fmax(v66, a3[1]._verticalOffset + v58 + round(a3->_scale * a3->_horizontalMargin * a3->_contentScale) * 2.0);
  v73 = v72 - v66;
  v74 = 0;
  if (v60)
  {
    v73 = ceil(v73 + trunc(v73 * 0.5) * -2.0) + v73;
    v74 = *(this + 68);
  }

  *(this + 99) = v73;
  *(this + 93) = v72;
  v75 = *(this + 2);
  v76 = *(this + 24);
  v77 = *(this + 46);
  *&v150 = v75;
  *(&v150 + 1) = v76;
  *&v151 = v77;
  *(&v151 + 1) = v74;
  v78 = 8;
  v79 = &v150;
  do
  {
    v80 = *(&v150 + v78);
    v81 = v75 < v80;
    v75 = fmax(v75, v80);
    if (v81)
    {
      v79 = (&v150 + v78);
    }

    v78 += 8;
  }

  while (v78 != 32);
  v82 = *v79;
  *(this + 89) = *(this + 9) + v72 + *(this + 32);
  *(this + 90) = v82;
  *(this + 134) = *(this + 21);
  v83 = *(this + 50);
  md::RoadSignPartMetrics::signMin(this);
  v85 = v84;
  *&v150 = v84;
  md::RoadSignPartMetrics::signMin(v14);
  *(&v150 + 1) = v86;
  md::RoadSignPartMetrics::signMin((v16 + 120));
  *&v151 = v87;
  v88 = 0;
  if (*(this + 704) == 1)
  {
    md::RoadSignPartMetrics::signMin((v16 + 296));
  }

  *(&v151 + 1) = v88;
  v89 = 8;
  v90 = &v150;
  do
  {
    v91 = *(&v150 + v89);
    v81 = v85 < v91;
    v85 = fmax(v85, v91);
    if (v81)
    {
      v90 = (&v150 + v89);
    }

    v89 += 8;
  }

  while (v89 != 32);
  v92 = *v90;
  v93 = md::RoadSignPartMetrics::signMin(this);
  *(this + 91) = v93;
  *(this + 92) = v92;
  *(this + 94) = v83;
  if (BYTE1(a3[1]._secondaryTextSize) == 1)
  {
    v93 = a3[1]._verticalOffset + v93;
    v94 = round(a3->_scale * a3->_horizontalMargin * a3->_contentScale);
    v95 = 1.5;
  }

  else
  {
    v94 = round(a3->_scale * a3->_horizontalMargin * a3->_contentScale);
    v95 = 0.5;
  }

  *(this + 95) = v93 + v94 * v95;
  v96 = a2->_scale;
  v97 = v96 < 1.0;
  v98 = a2->_glyphVerticalOffset * v96;
  v99 = floor(v98);
  v100 = ceil(v98);
  if (v96 >= 1.0)
  {
    v100 = v99;
  }

  v101 = vmulq_n_f64(a2->_glyphSize, v96);
  v102 = vdup_n_s32(v97);
  v103.i64[0] = v102.u32[0];
  v103.i64[1] = v102.u32[1];
  v104 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v103, 0x3FuLL)), vrndpq_f64(v101), vrndmq_f64(v101));
  *(this + 96) = v100 + v92 + (v83 - *&v104.i64[1]) * 0.5;
  *(this + 776) = v104;
  v105 = *(this + 704);
  md::RoadSignPartMetrics::signMin(this);
  v162.origin.y = v92 - v106;
  v162.size.width = *(this + 1);
  v162.size.height = *(this + 2);
  *(this + 110) = 0;
  *(this + 111) = *&v162.origin.y;
  *(this + 112) = *&v162.size.width;
  *(this + 113) = *&v162.size.height;
  v162.origin.x = 0.0;
  MaxX = CGRectGetMaxX(v162);
  md::RoadSignPartMetrics::signMin(v46);
  v109 = v92 - v108;
  v110 = *(this + 99);
  if (v105 == 1)
  {
    v111 = v110 * 0.5;
    v112 = *(this + 46);
    *(this + 126) = MaxX;
    *(this + 127) = v109;
    *(this + 128) = v111;
    *(this + 129) = v112;
    v113 = MaxX;
    v114 = CGRectGetMaxX(*(&v109 - 1));
    md::RoadSignPartMetrics::signMin(v52);
    v163.origin.y = v92 - v115;
    v163.size.width = *(this + 67);
    v163.size.height = *(this + 68);
    *(this + 122) = v114;
    *(this + 123) = *&v163.origin.y;
    *(this + 124) = *&v163.size.width;
    *(this + 125) = *&v163.size.height;
    v163.origin.x = v114;
    MaxX = CGRectGetMaxX(v163);
    md::RoadSignPartMetrics::signMin(v46);
    v109 = v92 - v116;
    v110 = *(this + 99) * 0.5;
    v117 = 1064;
    v118 = 1056;
    v119 = 1048;
    v120 = 1040;
  }

  else
  {
    v117 = 968;
    v118 = 960;
    v119 = 952;
    v120 = 944;
  }

  v121 = *(this + 46);
  *(this + v120) = MaxX;
  *(this + v119) = v109;
  *(this + v118) = v110;
  *(this + v117) = v121;
  v122 = MaxX;
  v123 = CGRectGetMaxX(*(&v109 - 1));
  md::RoadSignPartMetrics::signMin(v14);
  *(this + 114) = v123;
  *(this + 115) = v92 - v124;
  *(this + 58) = *(this + 184);
  if (*(this + 96))
  {
    *v149 = *(this + 136);
    *v30 = *(this + 152);
    goto LABEL_46;
  }

  if (*(this + 272))
  {
    v125 = *(this + 39);
    *(this + 101) = *(this + 40);
    *(this + 100) = v123 + v125;
    v126 = *(this + 41);
    *(this + 103) = *(this + 42);
    v127 = v126 + v123;
LABEL_42:
    *(this + 102) = v127;
    goto LABEL_46;
  }

  if (*(this + 704) == 1 && (*(this + 624) & 1) != 0)
  {
    v128 = *(this + 83);
    *(this + 101) = *(this + 84);
    v129 = *(this + 122);
    *(this + 100) = v129 + v128;
    v130 = *(this + 85);
    *(this + 103) = *(this + 86);
    v127 = v130 + v129;
    goto LABEL_42;
  }

LABEL_46:
  v131 = a2->_glyphSize.width;
  if (v131 != *v8 || (v132 = 0.0, a2->_glyphSize.height != *(v8 + 8)))
  {
    v133 = a2->_scale;
    v134 = v133 * v131;
    v135 = floor(v134);
    v136 = ceil(v134);
    if (v133 >= 1.0)
    {
      v132 = v135;
    }

    else
    {
      v132 = v136;
    }
  }

  v137 = a3->_contentScale * a3->_scale;
  v138 = round(v137 * a3->_horizontalMargin);
  v139 = -0.0;
  if (!BYTE1(a3[1]._secondaryTextSize))
  {
    v139 = v132;
  }

  v140 = v138 + *(this + 91) + v139;
  v141 = *(this + 92);
  v142 = round(v137 * a3->_verticalMargin);
  *(this + 104) = v140;
  *(this + 105) = v142 + v141;
  v143 = a3->_contentScale * a3->_scale;
  v144 = round(v143 * a3->_verticalMargin);
  v145 = round(v143 * a3->_horizontalMargin);
  v146 = *(this + 93) - v132 - (v145 + v145);
  v147 = *(this + 94) + v144 * -2.0;
  *(this + 106) = v140;
  *(this + 107) = v144 + v141;
  *(this + 108) = v146;
  *(this + 109) = v147;
  return this;
}

uint64_t md::NavLabel::NavLabel(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2A3DE30;
  *(a1 + 24) = 0;
  *(a1 + 25) = 1;
  *(a1 + 27) = 0;
  v12 = [v11 UTF8String];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = mdm::zone_mallocator::instance(v13);
    v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v17, v16);
    *(a1 + 40) = v14;
    *(a1 + 48) = v16 | 0x8000000000000000;
    *(a1 + 32) = v15;
    goto LABEL_9;
  }

  v15 = (a1 + 32);
  *(a1 + 55) = v13;
  if (v13)
  {
LABEL_9:
    memmove(v15, v12, v14);
  }

  *(v15 + v14) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v18 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = a4;
  *(a1 + 120) = a5;
  *(a1 + 128) = a6;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 1065353216;
  *(a1 + 220) = 256;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0x3F80000000000000;
  *(a1 + 264) = 0;
  *(a1 + 267) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 1056964608;
  *(a1 + 304) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 361) = 0u;
  *(a1 + 377) = 1;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 312) = 256;

  return a1;
}

void sub_1B2D15DB8(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_1B2D16034(_Unwind_Exception *a1)
{
  *(v1 + 176) = v4;

  md::LabelIcon::~LabelIcon(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RoadSignLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EA38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::GroundShadowMapPipelineSetup::~GroundShadowMapPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::DaVinci::LinearDepthPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::LinearDepthPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 316);
  }

  else if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(this + 2) + 345);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::LinearDepthPipelineSetup::constantDataIsEnabled(ggl::DaVinci::LinearDepthPipelineSetup *this, uint64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 5:
        v2 = *(*(this + 2) + 336);
        return v2 & 1;
      case 4:
        v2 = *(*(this + 2) + 341);
        return v2 & 1;
      case 3:
        v2 = *(*(this + 2) + 335);
        return v2 & 1;
    }

LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 >= 3)
  {
    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

void ggl::DaVinci::LinearDepthPipelineSetup::~LinearDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::PackedLinearDepthPipelineState::~PackedLinearDepthPipelineState(ggl::DaVinci::PackedLinearDepthPipelineState *this)
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

uint64_t ggl::DaVinci::PackedLinearDepthPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::PackedLinearDepthPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 316);
  }

  else if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(this + 2) + 345);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::PackedLinearDepthPipelineSetup::constantDataIsEnabled(ggl::DaVinci::PackedLinearDepthPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 336);
    }

    else if (a2 == 3)
    {
      v2 = *(*(this + 2) + 341);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::DaVinci::PackedLinearDepthPipelineSetup::~PackedLinearDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::LabelLineStore,geo::allocator_adapter<md::LabelLineStore,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelLineStore,geo::allocator_adapter<md::LabelLineStore,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::LabelLineStore,geo::allocator_adapter<md::LabelLineStore,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<md::LabelLineStore,geo::allocator_adapter<md::LabelLineStore,mdm::zone_mallocator>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 128);
    if (v3 != v2)
    {
      do
      {
        v7 = (v3 - 32);
        std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v7 = (v3 - 64);
        std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v7 = (v3 - 96);
        std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *(a1 + 128);
    }

    *(a1 + 136) = v2;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineZSet>(v5, v4);
  }

  v7 = (a1 + 96);
  std::vector<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,geo::allocator_adapter<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStore::WorkUnit>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineZSet>(uint64_t a1, void *a2)
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

void std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
          std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 72));
          std::vector<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 40));
          std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 8));
          v9 = mdm::zone_mallocator::instance(v8);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLine>(v9, v6);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v10 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>>(v10, v4);
  }
}

void std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
          std::__destroy_at[abi:nn200100]<md::TileLabelLine,0>(v6);
          v9 = mdm::zone_mallocator::instance(v8);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine>(v9, v6);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v10 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>>(v10, v4);
  }
}

void std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    v3 = std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
    v4 = **a1;
    v5 = mdm::zone_mallocator::instance(v3);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineSegment>>(v5, v4);
  }
}

void *std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineSegment>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<md::TileLabelLine,0>(uint64_t a1)
{
  std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLine>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelLineStore,geo::allocator_adapter<md::LabelLineStore,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EEDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LineLabelPlacer::populateBlocks(uint64_t *a1, int __e, uint64_t a3, unint64_t *a4, const void **a5)
{
  v8 = __e;
  v170[1] = *MEMORY[0x1E69E9840];
  v10 = 0.00999999978 / ldexp(1.0, __e);
  v11 = a1[1];
  v141 = a1;
  if (*(*a1 + 159))
  {
    v12 = v10 * 40075017.0;
  }

  else
  {
    v12 = v10;
  }

  *&v149 = *a1;
  *(&v149 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LabelLine::attributes(&v167, a3, &v149, v8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v13 = *(a3 + 104);
  started = md::LabelLine::startCoordinate(*(a3 + 8), *(a3 + 16));
  v15 = md::LabelLine::endCoordinate(*(a3 + 8), *(a3 + 16));
  v17 = v15;
  v18 = v168;
  if (v168 >= v169)
  {
    v20 = v167;
    v21 = v168 - v167;
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v168 - v167) >> 4);
    v23 = v22 + 1;
    if (v22 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (0x5555555555555556 * ((v169 - v167) >> 4) > v23)
    {
      v23 = 0x5555555555555556 * ((v169 - v167) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v169 - v167) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v24 = 0x555555555555555;
    }

    else
    {
      v24 = v23;
    }

    v151 = v170;
    if (v24)
    {
      v25 = mdm::zone_mallocator::instance(v15);
      v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineAttribute>(v25, v24);
      v20 = v167;
      v21 = v168 - v167;
    }

    else
    {
      v26 = 0;
    }

    v27 = &v26[48 * v22];
    *v27 = 257;
    v27[2] = 1;
    *(v27 + 1) = 0;
    *(v27 + 2) = v13;
    v28 = &v26[48 * v24];
    *(v27 + 6) = started | (HIWORD(started) << 16);
    *(v27 + 7) = 0;
    *(v27 + 8) = v17;
    *(v27 + 9) = 0;
    v27[40] = 0;
    v19 = v27 + 48;
    v29 = &v27[-v21];
    memcpy(&v27[-v21], v20, v21);
    v30 = v167;
    v31 = v169;
    v167 = v29;
    v168 = v19;
    v169 = v28;
    v150.n128_u64[0] = v30;
    v150.n128_u64[1] = v31;
    *&v149 = v30;
    *(&v149 + 1) = v30;
    std::__split_buffer<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator> &>::~__split_buffer(&v149);
  }

  else
  {
    *v168 = 257;
    v18[2] = 1;
    *(v18 + 1) = 0;
    *(v18 + 2) = v13;
    *(v18 + 3) = started | (HIWORD(started) << 16);
    *(v18 + 4) = v15;
    v19 = v18 + 48;
    v18[40] = 0;
  }

  v168 = v19;
  v164 = 0;
  v165 = 0uLL;
  v32 = v167;
  if (v19 != v167)
  {
    v33 = 0x5555555555555556 * ((v19 - v167) >> 4);
    if (v33 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    std::__split_buffer<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator> &>::__split_buffer(&v149, v33, 0, &v166);
    v34 = (*(&v149 + 1) - (v165.n128_u64[0] - v164));
    memcpy(v34, v164, v165.n128_u64[0] - v164);
    v35 = v164;
    v36 = v165.n128_u64[1];
    v164 = v34;
    v16 = v150;
    v165 = v150;
    v150.n128_u64[0] = v35;
    v150.n128_u64[1] = v36;
    *&v149 = v35;
    *(&v149 + 1) = v35;
    if (v35)
    {
      std::allocator_traits<geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::deallocate[abi:nn200100](v35);
    }

    v32 = v167;
    v19 = v168;
  }

  for (i = a5; v32 != v19; v32 += 48)
  {
    *&v149 = v32;
    v150.n128_u8[0] = 1;
    *(&v149 + 1) = *(v32 + 1);
    std::vector<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v164, &v149);
    v150.n128_u8[0] = 0;
    *(&v149 + 1) = *(v32 + 2);
    std::vector<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v164, &v149);
  }

  v37 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v165.n128_u64[0] - v164) >> 3));
  if (v165.n128_u64[0] == v164)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,false>(v164, v165.n128_u64[0], v38, 1, v16);
  v41 = v164;
  v40 = v165.n128_u64[0];
  if (v164 != v165.n128_u64[0])
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 1;
    v136 = v165.n128_u64[0];
    v137 = a3;
    v138 = a4;
    while (1)
    {
      v47 = **v41;
      if (v47 == 1)
      {
        v48 = (v42 == 0) & ~*(v41 + 16);
        v43 = *(v41 + 16);
        if (v45)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (*(v41 + 16))
        {
          if (v43)
          {
            v46 |= v47 != 4;
          }

          v48 = v43 & (v42++ == 0);
          if (!v45)
          {
            goto LABEL_85;
          }

LABEL_39:
          if (v48)
          {
            v44 += v46 & 1;
            if (*(v41 + 1) - *(v45 + 1) >= v12)
            {
              v49 = *v45;
              if (*(v45 + 16))
              {
                v50 = 24;
              }

              else
              {
                v50 = 24;
                if (*(v49 + 2))
                {
                  v50 = 32;
                }
              }

              v51 = *v141;
              v52 = v141[1];
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                v143 = v51;
                v144 = v52;
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v143 = *v141;
                v144 = 0;
              }

              v147 = *(v49 + v50);
              v148 = *(v51 + 16);
              v53 = *(a3 + 8);
              v54 = v53 + 16 * v147;
              if (v147 >= ((*(a3 + 16) - v53) >> 4))
              {
                v54 = 0;
              }

              v145 = a3;
              v146 = v54;
              v55 = md::LabelLineResolvedPosition::LabelLineResolvedPosition(&v149, &v143);
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v52);
                std::__shared_weak_count::__release_shared[abi:nn200100](v52);
              }

              if (*a3 == 3)
              {
                v56 = 10.0;
              }

              else
              {
                v56 = 0.0;
              }

              v57 = a4[1];
              v58 = a4[2];
              v142 = v43;
              if (v57 >= v58)
              {
                v66 = 0x84BDA12F684BDA13 * ((v57 - *a4) >> 3);
                v67 = v66 + 1;
                if (v66 + 1 > 0x12F684BDA12F684)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v68 = 0x84BDA12F684BDA13 * ((v58 - *a4) >> 3);
                if (2 * v68 > v67)
                {
                  v67 = 2 * v68;
                }

                if (v68 >= 0x97B425ED097B42)
                {
                  v69 = 0x12F684BDA12F684;
                }

                else
                {
                  v69 = v67;
                }

                v139 = v69;
                v140 = v44;
                if (v69)
                {
                  v70 = mdm::zone_mallocator::instance(v55);
                  v71 = pthread_rwlock_rdlock((v70 + 32));
                  if (v71)
                  {
                    geo::read_write_lock::logFailure(v71, "read lock", v72);
                  }

                  v69 = malloc_type_zone_malloc(*v70, 216 * v69, 0x1060040CBF25450uLL);
                  atomic_fetch_add((v70 + 24), 1u);
                  geo::read_write_lock::unlock((v70 + 32));
                }

                v73 = v69 + 216 * v66;
                v74 = *(v45 + 1);
                v75 = *(v41 + 1);
                *v73 = 0;
                *(v73 + 8) = v149;
                v76 = *(&v149 + 1);
                *(v73 + 16) = *(&v149 + 1);
                if (v76)
                {
                  atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
                }

                *(v73 + 24) = v150;
                *(v73 + 40) = v151;
                *(v73 + 48) = v152;
                *(v73 + 56) = 0;
                v77 = v153;
                *(v73 + 80) = v154;
                *(v73 + 64) = v77;
                *(v73 + 88) = v155;
                v78 = v156[0];
                *(v73 + 107) = *(v156 + 3);
                *(v73 + 104) = v78;
                v79 = v157;
                *(v73 + 128) = v158;
                *(v73 + 112) = v79;
                *(v73 + 136) = v159;
                v80 = v160[0];
                *(v73 + 155) = *(v160 + 3);
                *(v73 + 152) = v80;
                v81 = v161;
                *(v73 + 168) = v162;
                *(v73 + 160) = v81;
                *(v73 + 172) = v163;
                *(v73 + 192) = 0;
                *(v73 + 200) = 0;
                v84 = a4;
                v83 = *a4;
                v82 = v84[1];
                v85 = v73 - (v82 - v83);
                *(v73 + 176) = v74;
                *(v73 + 184) = v75;
                *(v73 + 208) = v56;
                *(v73 + 212) = 0;
                if (v82 != v83)
                {
                  v86 = (v83 + 2);
                  v87 = v69 + 216 * v66 - 8 * ((v82 - v83) >> 3) + 8;
                  v88 = v73 - (v82 - v83);
                  do
                  {
                    *(v87 - 8) = *(v86 - 8);
                    md::LabelLineResolvedPosition::LabelLineResolvedPosition(v87, v86);
                    v89 = *(v86 + 168);
                    v90 = *(v86 + 184);
                    *(v88 + 206) = *(v86 + 198);
                    *(v88 + 176) = v89;
                    *(v88 + 192) = v90;
                    v88 += 216;
                    v91 = v86 + 208;
                    v86 += 216;
                    v87 = v92 + 216;
                  }

                  while (v91 != v82);
                  do
                  {
                    v55 = *(v83 + 2);
                    if (v55)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
                    }

                    v83 += 54;
                  }

                  while (v83 != v82);
                }

                a4 = v138;
                v65 = v73 + 216;
                *&v93 = v73 + 216;
                *(&v93 + 1) = v69 + 216 * v139;
                v94 = *v138;
                *v138 = v85;
                *(v138 + 1) = v93;
                if (v94)
                {
                  v95 = mdm::zone_mallocator::instance(v55);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlock>(v95, v94);
                }

                v40 = v136;
                a3 = v137;
                v44 = v140;
              }

              else
              {
                v59 = *(v45 + 1);
                v60 = *(v41 + 1);
                *v57 = 0;
                *(v57 + 8) = v149;
                v61 = *(&v149 + 1);
                *(v57 + 16) = *(&v149 + 1);
                if (v61)
                {
                  atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
                }

                *(v57 + 24) = v150;
                *(v57 + 40) = v151;
                *(v57 + 48) = v152;
                *(v57 + 56) = 0;
                v62 = v154;
                *(v57 + 64) = v153;
                *(v57 + 80) = v62;
                *(v57 + 88) = v155;
                *(v57 + 107) = *(v156 + 3);
                *(v57 + 104) = v156[0];
                v63 = v158;
                *(v57 + 112) = v157;
                *(v57 + 128) = v63;
                *(v57 + 136) = v159;
                LODWORD(v63) = v160[0];
                *(v57 + 155) = *(v160 + 3);
                *(v57 + 152) = v63;
                v64 = v161;
                *(v57 + 168) = v162;
                *(v57 + 160) = v64;
                *(v57 + 172) = v163;
                *(v57 + 176) = v59;
                *(v57 + 184) = v60;
                *(v57 + 192) = 0;
                *(v57 + 200) = 0;
                *(v57 + 208) = v56;
                *(v57 + 212) = 0;
                v65 = v57 + 216;
                a4[1] = v57 + 216;
              }

              a4[1] = v65;
              v96 = *(*v41 + 40);
              *(v65 - 4) = *(*v45 + 40);
              *(v65 - 3) = v96;
              *(v65 - 216) = v44 - 1;
              v39 = *(&v149 + 1);
              if (*(&v149 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v149 + 1));
              }

              v46 = 0;
              v43 = v142;
            }

            else
            {
              v46 = 0;
            }
          }

          goto LABEL_85;
        }

        --v42;
      }

LABEL_85:
      v45 = v41;
      v41 = (v41 + 24);
      if (v41 == v40)
      {
        v97 = v44;
        goto LABEL_88;
      }
    }
  }

  v97 = 0;
LABEL_88:
  v98 = *a4;
  v99 = a4[1];
  if (*a4 != v99)
  {
    v100 = *i;
    v101 = i[1];
    v102 = v101 - *i;
    v103 = v102 >> 4;
    if (v97 <= v102 >> 4)
    {
      if (v97 >= v103)
      {
        goto LABEL_105;
      }

      v121 = &v100[16 * v97];
    }

    else
    {
      v104 = v97 - v103;
      v105 = i[2];
      if (v104 > (v105 - v101) >> 4)
      {
        if (v97 >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v106 = v105 - v100;
        v107 = v106 >> 3;
        if (v106 >> 3 <= v97)
        {
          v107 = v97;
        }

        if (v106 >= 0x7FFFFFFFFFFFFFF0)
        {
          v108 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v108 = v107;
        }

        v109 = mdm::zone_mallocator::instance(v39);
        v110 = pthread_rwlock_rdlock((v109 + 32));
        if (v110)
        {
          geo::read_write_lock::logFailure(v110, "read lock", v111);
        }

        v112 = malloc_type_zone_malloc(*v109, 16 * v108, 0x1000040451B5BE8uLL);
        atomic_fetch_add((v109 + 24), 1u);
        geo::read_write_lock::unlock((v109 + 32));
        v113 = &v112[v102];
        v114 = &v112[16 * v108];
        bzero(v113, 16 * v104);
        v115 = &v113[16 * v104];
        v116 = i[1] - *i;
        v117 = &v113[-v116];
        v118 = memcpy(&v113[-v116], *i, v116);
        v119 = *i;
        *i = v117;
        i[1] = v115;
        i[2] = v114;
        if (v119)
        {
          v120 = mdm::zone_mallocator::instance(v118);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlockGroup>(v120, v119);
        }

        goto LABEL_105;
      }

      bzero(i[1], 16 * v104);
      v121 = &v101[16 * v104];
    }

    i[1] = v121;
LABEL_105:
    v98 = *a4;
    v99 = a4[1];
    if (*a4 != v99)
    {
      v122 = 0;
      v123 = 0;
      v124 = *i;
      v125 = -1;
      v126 = *a4;
      do
      {
        v127 = v126;
        v128 = *v126;
        if (v128 != v125)
        {
          if (v123)
          {
            v129 = *(v123 + 22);
            v130 = &v124[16 * v125];
            *v130 = v129;
            *(v130 + 1) = *(v122 + 23);
          }

          v123 = v127;
          v125 = v128;
        }

        v126 = v127 + 54;
        v122 = v127;
      }

      while (v127 + 54 != v99);
      if (v123)
      {
        v131 = *i + 16 * v125;
        *v131 = *(v123 + 22);
        *(v131 + 1) = *(v127 + 23);
      }
    }
  }

  if (v98 != v99)
  {
    v132 = *(v98 + 176);
    v133 = v98;
    do
    {
      if (*(v133 + 212))
      {
        v132 = *(v133 + 176);
      }

      *(v133 + 192) = *(v133 + 176) - v132;
      if (*(v133 + 213) == 1)
      {
        v132 = *(v133 + 184);
      }

      v133 += 216;
    }

    while (v133 != v99);
    v134 = *(v99 - 4);
    do
    {
      if (*(v99 - 3))
      {
        v134 = *(v99 - 4);
      }

      *(v99 - 2) = v134 - *(v99 - 4);
      if (*(v99 - 4) == 1)
      {
        v134 = *(v99 - 5);
      }

      v99 -= 54;
    }

    while (v99 != v98);
  }

  if (v164)
  {
    v165.n128_u64[0] = v164;
    std::allocator_traits<geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::deallocate[abi:nn200100](v164);
  }

  std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v167);
}

void sub_1B2D178B0(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v1 + 32));
  v4 = *(v2 - 192);
  if (v4)
  {
    *(v2 - 184) = v4;
    std::allocator_traits<geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::deallocate[abi:nn200100](v4);
  }

  std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 - 160));
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator> &>::__split_buffer(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 3) = 0;
  *(a1 + 4) = a4;
  if (a2)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    v8 = pthread_rwlock_rdlock((v7 + 32));
    if (v8)
    {
      geo::read_write_lock::logFailure(v8, "read lock", v9);
    }

    v10 = malloc_type_zone_malloc(*v7, 24 * a2, 0x10600407BD382EDuLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[24 * a3];
  *a1 = v10;
  *(a1 + 1) = v11;
  *(a1 + 2) = v11;
  *(a1 + 3) = &v10[24 * a2];
  return a1;
}

void std::vector<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if ((v8 + 1) > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    std::__split_buffer<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator> &>::__split_buffer(&v20, v11, v8, a1 + 24);
    v12 = v22;
    v13 = *(a2 + 2);
    *v22 = *a2;
    *(v12 + 16) = v13;
    *&v22 = v22 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v21 - v14;
    memcpy(v21 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    v18 = v22;
    *(a1 + 8) = v22;
    *&v22 = v16;
    *(&v22 + 1) = v17;
    v20 = v16;
    v21 = v16;
    if (v16)
    {
      v19 = v18;
      std::allocator_traits<geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::deallocate[abi:nn200100](v16);
      v18 = v19;
    }

    v7 = v18;
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v136 = (a2 - 8);
  k = a1;
  while (1)
  {
    a1 = k;
    v11 = a2 - k;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result.n128_u64[0] = *(a2 - 16);
      v55 = *(k + 8);
      if (result.n128_f64[0] == v55)
      {
        v56 = *v136;
        if (v56 == *(k + 16))
        {
          if (*v9 >= *k)
          {
            return result;
          }
        }

        else if ((v56 & 1) == 0)
        {
          return result;
        }
      }

      else if (result.n128_f64[0] >= v55)
      {
        return result;
      }

      v147 = *(k + 16);
      v141 = *k;
      v128 = *v9;
      *(k + 16) = *(a2 - 8);
      *k = v128;
      result = v141;
      *(a2 - 8) = v147;
      *v9 = v141;
      return result;
    }

LABEL_9:
    if (v11 <= 575)
    {
      v59 = (k + 24);
      v61 = k == a2 || v59 == a2;
      if (a4)
      {
        if (v61)
        {
          return result;
        }

        v62 = 0;
        v63 = k;
        while (1)
        {
          v64 = v63;
          v63 = v59;
          result.n128_f64[0] = v64[4];
          v65 = v64[1];
          if (result.n128_f64[0] == v65)
          {
            v66 = *(v64 + 40);
            if (v66 == *(v64 + 16))
            {
              if (*v63 >= *v64)
              {
                goto LABEL_185;
              }
            }

            else if ((v66 & 1) == 0)
            {
              goto LABEL_185;
            }
          }

          else
          {
            if (result.n128_f64[0] >= v65)
            {
              goto LABEL_185;
            }

            v66 = *(v64 + 40);
          }

          v67 = *(v64 + 3);
          *v63 = *v64;
          *(v63 + 16) = *(v64 + 16);
          v68 = k;
          if (v64 == k)
          {
            goto LABEL_184;
          }

          v69 = v62;
          while (1)
          {
            v70 = k + v69;
            v71 = (k + v69 - 24);
            v72 = *(k + v69 - 16);
            if (result.n128_f64[0] != v72)
            {
              if (result.n128_f64[0] >= v72)
              {
                break;
              }

              goto LABEL_181;
            }

            if (v66 == *(v70 - 8))
            {
              if (v67 >= *v71)
              {
                v68 = k + v69;
                goto LABEL_184;
              }

              goto LABEL_181;
            }

            if ((v66 & 1) == 0)
            {
              break;
            }

LABEL_181:
            v64 -= 3;
            *v70 = *v71;
            *(v70 + 16) = *(k + v69 - 8);
            v69 -= 24;
            if (!v69)
            {
              v68 = k;
              goto LABEL_184;
            }
          }

          v68 = v64;
LABEL_184:
          *v68 = v67;
          *(v68 + 8) = result.n128_u64[0];
          *(v68 + 16) = v66;
LABEL_185:
          v59 = v63 + 3;
          v62 += 24;
          if (v63 + 3 == a2)
          {
            return result;
          }
        }
      }

      if (v61)
      {
        return result;
      }

      while (1)
      {
        v122 = a1;
        a1 = v59;
        result.n128_u64[0] = *(v122 + 32);
        v123 = *(v122 + 8);
        if (result.n128_f64[0] == v123)
        {
          v124 = *(v122 + 40);
          if (v124 == *(v122 + 16))
          {
            if (*v59 >= *v122)
            {
              goto LABEL_283;
            }
          }

          else if ((v124 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else
        {
          if (result.n128_f64[0] >= v123)
          {
            goto LABEL_283;
          }

          v124 = *(v122 + 40);
        }

        v125 = *v59;
        do
        {
          while (1)
          {
            while (1)
            {
              v126 = v122;
              *(v122 + 24) = *v122;
              *(v122 + 40) = *(v122 + 16);
              v122 -= 24;
              v127 = *(v126 - 16);
              if (result.n128_f64[0] == v127)
              {
                break;
              }

              if (result.n128_f64[0] >= v127)
              {
                goto LABEL_282;
              }
            }

            if (v124 != *(v126 - 8))
            {
              break;
            }

            if (v125 >= *v122)
            {
              goto LABEL_282;
            }
          }
        }

        while ((v124 & 1) != 0);
LABEL_282:
        *v126 = v125;
        *(v126 + 8) = result.n128_u64[0];
        *(v126 + 16) = v124;
LABEL_283:
        v59 = (a1 + 24);
        if (a1 + 24 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v73 = (v12 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 < v74)
        {
          goto LABEL_227;
        }

        v76 = (2 * v74) | 1;
        v77 = k + 24 * v76;
        if (2 * v75 + 2 >= v12)
        {
          goto LABEL_197;
        }

        v78 = *(v77 + 8);
        v79 = *(v77 + 32);
        if (v78 == v79)
        {
          break;
        }

        if (v78 < v79)
        {
          goto LABEL_196;
        }

LABEL_197:
        v81 = k + 24 * v75;
        v82 = *(v77 + 8);
        v83 = *(v81 + 8);
        if (v82 == v83)
        {
          v84 = *(v77 + 16);
          v85 = *(v81 + 16);
          if (v84 == v85)
          {
            v85 = *(v77 + 16);
            if (*v77 < *v81)
            {
              goto LABEL_227;
            }
          }

          else if (v84)
          {
            goto LABEL_227;
          }
        }

        else
        {
          if (v82 < v83)
          {
            goto LABEL_227;
          }

          v85 = *(v81 + 16);
        }

        v86 = *v81;
        do
        {
          while (1)
          {
            while (1)
            {
              v87 = *v77;
              *(v81 + 16) = *(v77 + 16);
              *v81 = v87;
              if (v73 < v76)
              {
                goto LABEL_226;
              }

              v81 = v77;
              v88 = 2 * v76;
              v76 = (2 * v76) | 1;
              v77 = k + 24 * v76;
              v89 = v88 + 2;
              if (v89 < v12)
              {
                v90 = *(v77 + 8);
                v91 = *(v77 + 32);
                if (v90 != v91)
                {
                  if (v90 >= v91)
                  {
                    goto LABEL_213;
                  }

LABEL_212:
                  v77 += 24;
                  v76 = v89;
                  goto LABEL_213;
                }

                v92 = *(v77 + 16);
                if (v92 == *(v77 + 40))
                {
                  if (*v77 < *(v77 + 24))
                  {
                    goto LABEL_212;
                  }
                }

                else if (v92)
                {
                  goto LABEL_212;
                }
              }

LABEL_213:
              v93 = *(v77 + 8);
              if (v93 == v83)
              {
                break;
              }

              if (v93 < v83)
              {
                goto LABEL_225;
              }
            }

            v94 = *(v77 + 16);
            if (v94 != v85)
            {
              break;
            }

            if (*v77 < v86)
            {
              goto LABEL_225;
            }
          }
        }

        while ((v94 & 1) == 0);
LABEL_225:
        v77 = v81;
LABEL_226:
        *v77 = v86;
        *(v77 + 8) = v83;
        *(v77 + 16) = v85;
LABEL_227:
        v74 = v75 - 1;
        if (!v75)
        {
          v95 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
          while (1)
          {
            v96 = 0;
            v146 = *(k + 16);
            v140 = *k;
            v97 = k;
            do
            {
              v98 = v97;
              v99 = v97 + 24 * v96;
              v97 = v99 + 24;
              v100 = 2 * v96;
              v96 = (2 * v96) | 1;
              v101 = v100 + 2;
              if (v101 >= v95)
              {
                goto LABEL_237;
              }

              v102 = *(v99 + 32);
              v103 = *(v99 + 56);
              if (v102 != v103)
              {
                if (v102 >= v103)
                {
                  goto LABEL_237;
                }

LABEL_236:
                v97 = v99 + 48;
                v96 = v101;
                goto LABEL_237;
              }

              v104 = *(v99 + 40);
              if (v104 == *(v99 + 64))
              {
                if (*v97 < *(v99 + 48))
                {
                  goto LABEL_236;
                }
              }

              else if (v104)
              {
                goto LABEL_236;
              }

LABEL_237:
              v105 = *v97;
              *(v98 + 16) = *(v97 + 16);
              *v98 = v105;
            }

            while (v96 <= ((v95 - 2) >> 1));
            a2 -= 24;
            if (v97 == a2)
            {
              result = v140;
              *(v97 + 16) = v146;
              *v97 = v140;
              goto LABEL_263;
            }

            v106 = *a2;
            *(v97 + 16) = *(a2 + 16);
            *v97 = v106;
            result = v140;
            *(a2 + 16) = v146;
            *a2 = v140;
            v107 = v97 - k + 24;
            if (v107 < 25)
            {
              goto LABEL_263;
            }

            v108 = -2 - 0x5555555555555555 * (v107 >> 3);
            v109 = v108 >> 1;
            v110 = k + 24 * (v108 >> 1);
            v111 = *(v110 + 8);
            result.n128_u64[0] = *(v97 + 8);
            if (v111 == result.n128_f64[0])
            {
              v112 = *(v110 + 16);
              v113 = *(v97 + 16);
              if (v112 == v113)
              {
                v113 = *(v110 + 16);
                if (*v110 >= *v97)
                {
                  goto LABEL_263;
                }
              }

              else if ((v112 & 1) == 0)
              {
                goto LABEL_263;
              }
            }

            else
            {
              if (v111 >= result.n128_f64[0])
              {
                goto LABEL_263;
              }

              v113 = *(v97 + 16);
            }

            v114 = *v97;
            v115 = *v110;
            *(v97 + 16) = *(v110 + 16);
            *v97 = v115;
            if (v108 < 2)
            {
              goto LABEL_262;
            }

            while (2)
            {
              v116 = v110;
              v117 = v109 - 1;
              v109 = (v109 - 1) >> 1;
              v110 = k + 24 * v109;
              v118 = *(v110 + 8);
              if (v118 != result.n128_f64[0])
              {
                if (v118 >= result.n128_f64[0])
                {
                  break;
                }

                goto LABEL_259;
              }

              v119 = *(v110 + 16);
              if (v119 == v113)
              {
                if (*v110 >= v114)
                {
                  break;
                }

                goto LABEL_259;
              }

              if (v119)
              {
LABEL_259:
                v120 = *v110;
                *(v116 + 16) = *(v110 + 16);
                *v116 = v120;
                if (v117 <= 1)
                {
                  goto LABEL_262;
                }

                continue;
              }

              break;
            }

            v110 = v116;
LABEL_262:
            *v110 = v114;
            *(v110 + 8) = result.n128_u64[0];
            *(v110 + 16) = v113;
LABEL_263:
            if (v95-- <= 2)
            {
              return result;
            }
          }
        }
      }

      v80 = *(v77 + 16);
      if (v80 == *(v77 + 40))
      {
        if (*v77 >= *(v77 + 24))
        {
          goto LABEL_197;
        }
      }

      else if ((v80 & 1) == 0)
      {
        goto LABEL_197;
      }

LABEL_196:
      v77 += 24;
      v76 = 2 * v75 + 2;
      goto LABEL_197;
    }

    v13 = v12 >> 1;
    v14 = k + 24 * (v12 >> 1);
    if (v11 < 0xC01)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1 + 24 * v13, a1, a2 - 24, result);
    }

    else
    {
      v15 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a1 + 24 * v13, a2 - 24, result);
      v16 = 3 * v13;
      v17 = a1 + 24 * v13 - 24;
      v18 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1 + 24, v17, a2 - 48, v15);
      v19 = a1 + 24 + 8 * v16;
      v20 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1 + 48, v19, a2 - 72, v18);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(v17, v14, v19, v20);
      v143 = *(a1 + 16);
      v137 = *a1;
      v21 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v21;
      result.n128_u64[1] = *(&v137 + 1);
      *(v14 + 16) = v143;
      *v14 = v137;
    }

    --a3;
    if (a4)
    {
      result.n128_u64[0] = *(a1 + 8);
LABEL_23:
      v24 = *a1;
      v25 = *(a1 + 16);
      for (i = a1 + 24; ; i += 24)
      {
        v27 = *(i + 8);
        if (v27 == result.n128_f64[0])
        {
          break;
        }

        if (v27 >= result.n128_f64[0])
        {
          goto LABEL_32;
        }

LABEL_31:
        ;
      }

      v28 = *(i + 16);
      if (v28 == v25)
      {
        if (*i >= v24)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v28)
      {
        goto LABEL_31;
      }

LABEL_32:
      j = a2 - 24;
      if (i - 24 != a1)
      {
        while (1)
        {
          v30 = *(j + 8);
          if (v30 == result.n128_f64[0])
          {
            v31 = *(j + 16);
            if (v31 == v25)
            {
              if (*j < v24)
              {
                goto LABEL_60;
              }
            }

            else if (v31)
            {
              goto LABEL_60;
            }
          }

          else if (v30 < result.n128_f64[0])
          {
            goto LABEL_60;
          }

          j -= 24;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 24; ; j -= 24)
        {
          v32 = *(j + 8);
          if (v32 == result.n128_f64[0])
          {
            v33 = *(j + 16);
            if (v33 == v25)
            {
              if (*j < v24 || i >= j)
              {
                break;
              }
            }

            else if ((v33 & 1) != 0 || i >= j)
            {
              break;
            }
          }

          else if (v32 < result.n128_f64[0] || i >= j)
          {
            break;
          }
        }
      }

LABEL_60:
      k = i;
      if (i < j)
      {
        k = i;
        v36 = j;
        do
        {
          v144 = *(k + 16);
          v138 = *k;
          v37 = *v36;
          *(k + 16) = *(v36 + 16);
          *k = v37;
          *(v36 + 16) = v144;
          *v36 = v138;
          do
          {
            while (1)
            {
              while (1)
              {
                k += 24;
                v38 = *(k + 8);
                if (v38 == result.n128_f64[0])
                {
                  break;
                }

                if (v38 >= result.n128_f64[0])
                {
                  goto LABEL_74;
                }
              }

              v39 = *(k + 16);
              if (v39 != v25)
              {
                break;
              }

              if (*k >= v24)
              {
                goto LABEL_74;
              }
            }
          }

          while ((v39 & 1) != 0);
          do
          {
            while (1)
            {
LABEL_74:
              while (1)
              {
                v36 -= 24;
                v40 = *(v36 + 8);
                if (v40 == result.n128_f64[0])
                {
                  break;
                }

                if (v40 < result.n128_f64[0])
                {
                  goto LABEL_77;
                }
              }

              v41 = *(v36 + 16);
              if (v41 == v25)
              {
                break;
              }

              if (v41)
              {
                goto LABEL_77;
              }
            }
          }

          while (*v36 >= v24);
LABEL_77:
          ;
        }

        while (k < v36);
      }

      if (k - 24 != a1)
      {
        v42 = *(k - 24);
        *(a1 + 16) = *(k - 8);
        *a1 = v42;
      }

      *(k - 24) = v24;
      *(k - 16) = result.n128_u64[0];
      *(k - 8) = v25;
      if (i < j)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,false>(a1, k - 24, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *>(a1, k - 24, result);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *>(k, a2, v44))
        {
          a2 = k - 24;
          if (v43)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v43)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v22 = *(a1 - 16);
      result.n128_u64[0] = *(a1 + 8);
      if (v22 == result.n128_f64[0])
      {
        v23 = *(a1 - 8);
        if (v23 == *(a1 + 16))
        {
          if (*(a1 - 24) < *a1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v23)
          {
            goto LABEL_23;
          }

          v23 = *(a1 + 16);
        }
      }

      else
      {
        if (v22 < result.n128_f64[0])
        {
          goto LABEL_23;
        }

        v23 = *(a1 + 16);
      }

      v45 = *a1;
      v46 = *(a2 - 16);
      if (result.n128_f64[0] == v46)
      {
        if (v23 == *v136)
        {
          if (v45 < *v9)
          {
            goto LABEL_90;
          }
        }

        else if (v23)
        {
LABEL_90:
          for (k = a1 + 24; ; k += 24)
          {
            v47 = *(k + 8);
            if (result.n128_f64[0] == v47)
            {
              if (v23 == *(k + 16))
              {
                if (v45 < *k)
                {
                  goto LABEL_110;
                }
              }

              else if (v23)
              {
                goto LABEL_110;
              }
            }

            else if (result.n128_f64[0] < v47)
            {
              goto LABEL_110;
            }
          }
        }
      }

      else if (result.n128_f64[0] < v46)
      {
        goto LABEL_90;
      }

      for (k = a1 + 24; k < a2; k += 24)
      {
        v48 = *(k + 8);
        if (result.n128_f64[0] == v48)
        {
          if (v23 == *(k + 16))
          {
            if (v45 < *k)
            {
              break;
            }
          }

          else if (v23)
          {
            break;
          }
        }

        else if (result.n128_f64[0] < v48)
        {
          break;
        }
      }

LABEL_110:
      v49 = a2;
      if (k >= a2)
      {
        goto LABEL_136;
      }

      v50 = (a2 - 8);
      while (result.n128_f64[0] != v46)
      {
        if (result.n128_f64[0] >= v46)
        {
          goto LABEL_120;
        }

LABEL_119:
        v46 = *(v50 - 4);
        v50 -= 3;
      }

      if (v23 == *v50)
      {
        if (v45 >= *(v50 - 2))
        {
          goto LABEL_120;
        }

        goto LABEL_119;
      }

      if (v23)
      {
        goto LABEL_119;
      }

LABEL_120:
      v49 = (v50 - 2);
LABEL_136:
      while (k < v49)
      {
        v145 = *(k + 16);
        v139 = *k;
        v51 = *v49;
        *(k + 16) = v49[16];
        *k = v51;
        v49[16] = v145;
        *v49 = v139;
        do
        {
          while (1)
          {
            while (1)
            {
              k += 24;
              v52 = *(k + 8);
              if (result.n128_f64[0] == v52)
              {
                break;
              }

              if (result.n128_f64[0] < v52)
              {
                goto LABEL_133;
              }
            }

            if (v23 != *(k + 16))
            {
              break;
            }

            if (v45 < *k)
            {
              goto LABEL_133;
            }
          }
        }

        while ((v23 & 1) == 0);
        do
        {
          while (1)
          {
LABEL_133:
            while (1)
            {
              v49 -= 24;
              v53 = *(v49 + 1);
              if (result.n128_f64[0] == v53)
              {
                break;
              }

              if (result.n128_f64[0] >= v53)
              {
                goto LABEL_136;
              }
            }

            if (v23 == v49[16])
            {
              break;
            }

            if ((v23 & 1) == 0)
            {
              goto LABEL_136;
            }
          }
        }

        while (v45 < *v49);
      }

      if (k - 24 != a1)
      {
        v54 = *(k - 24);
        *(a1 + 16) = *(k - 8);
        *a1 = v54;
      }

      a4 = 0;
      *(k - 24) = v45;
      *(k - 16) = result.n128_u64[0];
      *(k - 8) = v23;
    }
  }

  if (v12 == 3)
  {

    result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(k, k + 24, a2 - 24, result).n128_u64[0];
    return result;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(k, k + 24, k + 48, k + 72, a2 - 24, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(k, k + 24, k + 48, result);
  result.n128_u64[0] = *(a2 - 16);
  v57 = *(k + 56);
  if (result.n128_f64[0] == v57)
  {
    v58 = *v136;
    if (v58 == *(k + 64))
    {
      if (*v9 >= *(k + 48))
      {
        return result;
      }
    }

    else if ((v58 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v57)
  {
    return result;
  }

  result = *(k + 48);
  v129 = *(k + 64);
  v130 = *(a2 - 8);
  *(k + 48) = *v9;
  *(k + 64) = v130;
  *(a2 - 8) = v129;
  *v9 = result;
  result.n128_u64[0] = *(k + 56);
  v131 = *(k + 32);
  if (result.n128_f64[0] == v131)
  {
    v132 = *(k + 64);
    if (v132 == *(k + 40))
    {
      if (*(k + 48) >= *(k + 24))
      {
        return result;
      }
    }

    else if ((v132 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v131)
  {
    return result;
  }

  v133 = *(k + 40);
  result = *(k + 24);
  *(k + 24) = *(k + 48);
  *(k + 40) = *(k + 64);
  *(k + 48) = result;
  *(k + 64) = v133;
  result.n128_u64[0] = *(k + 32);
  v134 = *(k + 8);
  if (result.n128_f64[0] == v134)
  {
    v135 = *(k + 40);
    if (v135 == *(k + 16))
    {
      if (*(k + 24) >= *k)
      {
        return result;
      }
    }

    else if ((v135 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v134)
  {
    return result;
  }

  v148 = *(k + 16);
  v142 = *k;
  *k = *(k + 24);
  *(k + 16) = *(k + 40);
  result = v142;
  *(k + 24) = v142;
  *(k + 40) = v148;
  return result;
}

void std::allocator_traits<geo::allocator_adapter<md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo,mdm::zone_mallocator>>::deallocate[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);
  v3 = pthread_rwlock_rdlock((v2 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
  malloc_zone_free(*v2, a1);

  geo::read_write_lock::unlock((v2 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlockGroup>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlock>(uint64_t a1, void *a2)
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

__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 result)
{
  result.n128_u64[0] = *(a2 + 8);
  v4 = *(a1 + 8);
  if (result.n128_f64[0] == v4)
  {
    v5 = *(a2 + 16);
    if (v5 == *(a1 + 16))
    {
      if (*a2 >= *a1)
      {
        goto LABEL_11;
      }

LABEL_6:
      v6 = *(a3 + 8);
      if (v6 == result.n128_f64[0])
      {
        v7 = *(a3 + 16);
        if (v7 == *(a2 + 16))
        {
          if (*a3 >= *a2)
          {
            goto LABEL_20;
          }

LABEL_16:
          result = *a1;
          v10 = *(a1 + 16);
          v11 = *(a3 + 16);
          *a1 = *a3;
          *(a1 + 16) = v11;
          goto LABEL_35;
        }

        if (v7)
        {
          goto LABEL_16;
        }
      }

      else if (v6 < result.n128_f64[0])
      {
        goto LABEL_16;
      }

LABEL_20:
      result = *a1;
      v12 = *(a1 + 16);
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a2 + 16) = v12;
      *a2 = result;
      result.n128_u64[0] = *(a3 + 8);
      v14 = *(a2 + 8);
      if (result.n128_f64[0] == v14)
      {
        v15 = *(a3 + 16);
        if (v15 == *(a2 + 16))
        {
          if (*a3 >= *a2)
          {
            return result;
          }
        }

        else if ((v15 & 1) == 0)
        {
          return result;
        }
      }

      else if (result.n128_f64[0] >= v14)
      {
        return result;
      }

      result = *a2;
      v10 = *(a2 + 16);
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
LABEL_35:
      *(a3 + 16) = v10;
      *a3 = result;
      return result;
    }

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (result.n128_f64[0] < v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  v8 = *(a3 + 8);
  if (v8 == result.n128_f64[0])
  {
    v9 = *(a3 + 16);
    if (v9 == *(a2 + 16))
    {
      if (*a3 >= *a2)
      {
        return result;
      }
    }

    else if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  else if (v8 >= result.n128_f64[0])
  {
    return result;
  }

  result = *a2;
  v16 = *(a2 + 16);
  v17 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v17;
  *(a3 + 16) = v16;
  *a3 = result;
  result.n128_u64[0] = *(a2 + 8);
  v18 = *(a1 + 8);
  if (result.n128_f64[0] == v18)
  {
    v19 = *(a2 + 16);
    if (v19 == *(a1 + 16))
    {
      if (*a2 >= *a1)
      {
        return result;
      }
    }

    else if ((v19 & 1) == 0)
    {
      return result;
    }

LABEL_37:
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    *(a2 + 16) = v21;
    *a2 = result;
    return result;
  }

  if (result.n128_f64[0] < v18)
  {
    goto LABEL_37;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a2, a3, a6);
  result.n128_u64[0] = *(a4 + 8);
  v12 = *(a3 + 8);
  if (result.n128_f64[0] == v12)
  {
    v13 = *(a4 + 16);
    if (v13 == *(a3 + 16))
    {
      if (*a4 >= *a3)
      {
        goto LABEL_21;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (result.n128_f64[0] >= v12)
  {
    goto LABEL_21;
  }

  result = *a3;
  v14 = *(a3 + 16);
  v15 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v15;
  *(a4 + 16) = v14;
  *a4 = result;
  result.n128_u64[0] = *(a3 + 8);
  v16 = *(a2 + 8);
  if (result.n128_f64[0] == v16)
  {
    v17 = *(a3 + 16);
    if (v17 == *(a2 + 16))
    {
      if (*a3 >= *a2)
      {
        goto LABEL_21;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (result.n128_f64[0] >= v16)
  {
    goto LABEL_21;
  }

  result = *a2;
  v18 = *(a2 + 16);
  v19 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v19;
  *(a3 + 16) = v18;
  *a3 = result;
  result.n128_u64[0] = *(a2 + 8);
  v20 = *(a1 + 8);
  if (result.n128_f64[0] != v20)
  {
    if (result.n128_f64[0] >= v20)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = *(a2 + 16);
  if (v21 == *(a1 + 16))
  {
    if (*a2 >= *a1)
    {
      goto LABEL_21;
    }

LABEL_20:
    result = *a1;
    v22 = *(a1 + 16);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a2 + 16) = v22;
    *a2 = result;
    goto LABEL_21;
  }

  if (v21)
  {
    goto LABEL_20;
  }

LABEL_21:
  result.n128_u64[0] = *(a5 + 8);
  v24 = *(a4 + 8);
  if (result.n128_f64[0] == v24)
  {
    v25 = *(a5 + 16);
    if (v25 == *(a4 + 16))
    {
      if (*a5 >= *a4)
      {
        return result;
      }
    }

    else if ((v25 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v24)
  {
    return result;
  }

  result = *a4;
  v26 = *(a4 + 16);
  v27 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v27;
  *(a5 + 16) = v26;
  *a5 = result;
  result.n128_u64[0] = *(a4 + 8);
  v28 = *(a3 + 8);
  if (result.n128_f64[0] == v28)
  {
    v29 = *(a4 + 16);
    if (v29 == *(a3 + 16))
    {
      if (*a4 >= *a3)
      {
        return result;
      }
    }

    else if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v28)
  {
    return result;
  }

  result = *a3;
  v30 = *(a3 + 16);
  v31 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v31;
  *(a4 + 16) = v30;
  *a4 = result;
  result.n128_u64[0] = *(a3 + 8);
  v32 = *(a2 + 8);
  if (result.n128_f64[0] == v32)
  {
    v33 = *(a3 + 16);
    if (v33 == *(a2 + 16))
    {
      if (*a3 >= *a2)
      {
        return result;
      }
    }

    else if ((v33 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v32)
  {
    return result;
  }

  result = *a2;
  v34 = *(a2 + 16);
  v35 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v35;
  *(a3 + 16) = v34;
  *a3 = result;
  result.n128_u64[0] = *(a2 + 8);
  v36 = *(a1 + 8);
  if (result.n128_f64[0] == v36)
  {
    v37 = *(a2 + 16);
    if (v37 == *(a1 + 16))
    {
      if (*a2 >= *a1)
      {
        return result;
      }
    }

    else if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  else if (result.n128_f64[0] >= v36)
  {
    return result;
  }

  result = *a1;
  v38 = *(a1 + 16);
  v39 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v39;
  *(a2 + 16) = v38;
  *a2 = result;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a1 + 24, a2 - 24, a3);
        return 1;
      case 4:
        v21 = (a2 - 24);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a1 + 24, a1 + 48, a3);
        v22 = *(a2 - 16);
        v23 = *(a1 + 56);
        if (v22 == v23)
        {
          v24 = *(a2 - 8);
          if (v24 == *(a1 + 64))
          {
            if (*v21 >= *(a1 + 48))
            {
              return 1;
            }
          }

          else if ((v24 & 1) == 0)
          {
            return 1;
          }
        }

        else if (v22 >= v23)
        {
          return 1;
        }

        v28 = *(a1 + 48);
        v29 = *(a1 + 64);
        v30 = *(a2 - 8);
        *(a1 + 48) = *v21;
        *(a1 + 64) = v30;
        *(a2 - 8) = v29;
        *v21 = v28;
        v31 = *(a1 + 56);
        v32 = *(a1 + 32);
        if (v31 == v32)
        {
          v33 = *(a1 + 64);
          if (v33 == *(a1 + 40))
          {
            if (*(a1 + 48) >= *(a1 + 24))
            {
              return 1;
            }
          }

          else if ((v33 & 1) == 0)
          {
            return 1;
          }
        }

        else if (v31 >= v32)
        {
          return 1;
        }

        v35 = *(a1 + 40);
        v36 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v36;
        *(a1 + 64) = v35;
        v37 = *(a1 + 32);
        v38 = *(a1 + 8);
        if (v37 == v38)
        {
          v39 = *(a1 + 40);
          if (v39 == *(a1 + 16))
          {
            if (*(a1 + 24) >= *a1)
            {
              return 1;
            }
          }

          else if ((v39 & 1) == 0)
          {
            return 1;
          }
        }

        else if (v37 >= v38)
        {
          return 1;
        }

        v40 = *(a1 + 16);
        v41 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v41;
        *(a1 + 40) = v40;
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        return 1;
    }

LABEL_13:
    v10 = a1 + 48;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::$_0 &,md::LineLabelPlacer::populateBlocks(int,md::LabelLine *,std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>> &,std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>> &)::AttributeInfo *,0>(a1, a1 + 24, a1 + 48, a3);
    v11 = a1 + 72;
    if (a1 + 72 == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v11 + 8);
      v15 = *(v10 + 8);
      if (v14 == v15)
      {
        v16 = *(v11 + 16);
        if (v16 == *(v10 + 16))
        {
          if (*v11 >= *v10)
          {
            goto LABEL_33;
          }
        }

        else if ((v16 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v14 >= v15)
        {
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
      }

      v17 = *v11;
      *v11 = *v10;
      *(v11 + 16) = *(v10 + 16);
      v18 = v12;
      do
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 32);
        if (v14 == v20)
        {
          if (v16 == *(v19 + 40))
          {
            if (v17 >= *(v19 + 24))
            {
              v10 = a1 + v18 + 48;
              goto LABEL_32;
            }
          }

          else if ((v16 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v14 >= v20)
        {
          goto LABEL_32;
        }

        v10 -= 24;
        *(v19 + 48) = *(v19 + 24);
        *(v19 + 64) = *(v19 + 40);
        v18 -= 24;
      }

      while (v18 != -48);
      v10 = a1;
LABEL_32:
      *v10 = v17;
      *(v10 + 8) = v14;
      *(v10 + 16) = v16;
      if (++v13 == 8)
      {
        return v11 + 24 == a2;
      }

LABEL_33:
      v10 = v11;
      v12 += 24;
      v11 += 24;
      if (v11 == a2)
      {
        return 1;
      }
    }
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  v6 = (a2 - 24);
  v7 = *(a2 - 16);
  v8 = *(a1 + 8);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      return 1;
    }

    goto LABEL_44;
  }

  v9 = *(a2 - 8);
  if (v9 == *(a1 + 16))
  {
    if (*v6 >= *a1)
    {
      return 1;
    }

    goto LABEL_44;
  }

  if (v9)
  {
LABEL_44:
    v25 = *a1;
    v26 = *(a1 + 16);
    v27 = *(a2 - 8);
    *a1 = *v6;
    *(a1 + 16) = v27;
    *(a2 - 8) = v26;
    *v6 = v25;
  }

  return 1;
}

void std::__shared_ptr_emplace<md::DaVinciGroundTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::InjectedFeaturesLayerDataSource::~InjectedFeaturesLayerDataSource(md::InjectedFeaturesLayerDataSource *this)
{
  md::InjectedFeaturesLayerDataSource::~InjectedFeaturesLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EEE08;
  v2 = *(this + 93);
  if (v2)
  {
    *(this + 94) = v2;
    operator delete(v2);
  }

  v3 = *(this + 90);
  if (v3)
  {
    *(this + 91) = v3;
    operator delete(v3);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 672);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 81));
  v4 = *(this + 75);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  gdc::LayerDataSource::~LayerDataSource(this);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A344B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A344D0;
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

void ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A344B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassToCommandBuffers,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::PrepareShadowPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0,std::allocator<md::ita::PrepareShadowPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0>,void ()(md::ls::PassToCommandBuffers &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EEEB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareMainPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0,std::allocator<md::ita::PrepareMainPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0>,void ()(md::ls::PassToCommandBuffers &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EEF00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void *md::ARAnimationLogic::runAfterLayout(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = gdc::Registry::storage<arComponents::AnimationInfo>(v2);
  v4 = gdc::Registry::storage<arComponents::AnimationGroupParent>(v2);
  v5 = v4;
  v6 = (v4 + 32);
  v8 = v3[7];
  v7 = v3[8];
  if (*(v4 + 64) - *(v4 + 56) >= (v7 - v8))
  {
    v9 = v3 + 4;
  }

  else
  {
    v9 = (v4 + 32);
  }

  if (v3 + 4 == v9 && v8 != v7)
  {
    v10 = v3[10];
    do
    {
      if (*(v5 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6, *(v8 + 4)))
      {
        v11 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 128), *v10);
        if (v11)
        {
          std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(v25, (a1 + 128), v11);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>>>>::~unique_ptr[abi:nn200100](v25);
        }
      }

      v10 += 2;
      v8 += 8;
    }

    while (v8 != v7);
  }

  if (v6 == v9)
  {
    v19 = *(v5 + 56);
    v18 = *(v5 + 64);
    while (v19 != v18)
    {
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, *(v19 + 4));
      v21 = v3[8];
      if (v21 != Index)
      {
        v22 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, *(v19 + 4));
        v23 = (v21 == v22 ? v3[11] : v3[10] + 2 * (v22 - v3[7]));
        v24 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 128), *v23);
        if (v24)
        {
          std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(v25, (a1 + 128), v24);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>>>>::~unique_ptr[abi:nn200100](v25);
        }
      }

      v19 += 8;
    }
  }

  result = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(*(a1 + 120));
  v13 = result;
  if (result[29])
  {
    v14 = result[28];
    if (v14)
    {
      v15 = result[31];
      v16 = result[7];
      v17 = (result[8] - v16) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v14[6], v15, v16, v17);
        v14 = *v14;
      }

      while (v14);
    }
  }

  v13[8] = v13[7];
  v13[11] = v13[10];
  return result;
}

uint64_t gdc::Registry::storage<arComponents::AnimationInfo>(uint64_t a1)
{
  v3 = 0x6BC5598729A9856CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6BC5598729A9856CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AnimationGroupParent>(uint64_t a1)
{
  v3 = 0x16C9454C0C9AFF7BLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x16C9454C0C9AFF7BuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,VKTimedAnimation * {__strong}>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(uint64_t a1)
{
  v3 = 0x28062957AE7A638DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x28062957AE7A638DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AnimationState<(VKAnimationState)3>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::AnimationState<(VKAnimationState)3>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AnimationState<(VKAnimationState)3>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,VKTimedAnimation * {__strong}>>>::~__hash_table(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::AnimationGroupParent>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::AnimationGroupParent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AnimationGroupParent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 16);
    a1[11] -= 16;
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

void gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::~ComponentStorageWrapper(uint64_t a1)
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

void *md::ARAnimationLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *this, uint64_t a3)
{
  v612 = *MEMORY[0x1E69E9840];
  v568 = *(*(a3 + 8) + 3784);
  md::LayoutContext::frameState(this);
  v5 = *(v4 + 88) * 1000.0;
  v574 = a1;
  v6 = *(a1 + 120);
  v7 = gdc::Registry::storage<arComponents::AnimationInfo>(v6);
  v8 = v7[7];
  v9 = v7[8];
  if (v8 != v9)
  {
    v10 = v7[10];
    do
    {
      v11 = *v8;
      v12 = *v10 >> 16;
      v13 = HIDWORD(*v10);
      v610.i16[0] = *v10;
      v610.i16[1] = v12;
      v610.i32[1] = v13;
      if (!gdc::Registry::isValid(v6, &v610))
      {
        v14 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(v6);
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v14, v11);
      }

      v10 += 2;
      ++v8;
    }

    while (v8 != v9);
  }

  v15 = *(v574 + 120);
  v16 = gdc::Registry::storage<arComponents::AnimationDuration>(v15);
  v17 = gdc::Registry::storage<arComponents::AnimationGroupAssociation>(v15);
  v587 = v15;
  v18 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)1>>(v15);
  v19.i64[0] = v16;
  v19.i64[1] = v17;
  v594 = v18;
  v20 = (v18 + 32);
  v610 = vaddq_s64(v19, vdupq_n_s64(0x20uLL));
  v611.i64[0] = v18 + 32;
  v21 = v610.i64[0];
  v22 = 1;
  v23 = &v610;
  do
  {
    if (*(v610.i64[v22] + 32) - *(v610.i64[v22] + 24) < *(v21 + 32) - *(v21 + 24))
    {
      v21 = v610.i64[v22];
      v23 = (&v610 + v22 * 8);
    }

    ++v22;
  }

  while (v22 != 3);
  v581 = v23->i64[0];
  if (v16 + 4 == v23->i64[0])
  {
    v24 = v16[7];
    v25 = v16[8];
    if (v24 != v25)
    {
      v26 = (v16[10] + 8);
      do
      {
        v27 = *(v24 + 4);
        if (v17[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v27) && *(v594 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v20, v27))
        {
          v28 = *v24;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v17 + 4, HIDWORD(*v24));
          if (fabsf(*v26 + -1.0) <= 0.000001)
          {
            v29 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(v587);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v29, v28);
          }
        }

        v24 += 8;
        v26 += 6;
      }

      while (v24 != v25);
    }
  }

  if (v17 + 4 == v581)
  {
    v31 = v17[7];
    for (i = v17[8]; v31 != i; v31 += 8)
    {
      v32 = *(v31 + 4);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16 + 4, v32);
      v34 = v16[8];
      if (v34 != Index && *(v594 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v20, v32))
      {
        v35 = *v31;
        v36 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(*v31));
        v37 = v34 == v36 ? v16[11] : v16[10] + 24 * ((v36 - v16[7]) >> 3);
        if (fabsf(*(v37 + 8) + -1.0) <= 0.000001)
        {
          v38 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(v587);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v38, v35);
        }
      }
    }
  }

  if (v20 == v581)
  {
    v39 = *(v594 + 56);
    for (j = *(v594 + 64); v39 != j; v39 += 8)
    {
      v41 = *(v39 + 4);
      v42 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16 + 4, v41);
      v43 = v16[8];
      if (v43 != v42 && v17[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v41))
      {
        v44 = *v39;
        v45 = HIDWORD(*v39);
        v46 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(*v39));
        v47 = v43 == v46 ? v16[11] : v16[10] + 24 * ((v46 - v16[7]) >> 3);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v17 + 4, v45);
        if (fabsf(*(v47 + 8) + -1.0) <= 0.000001)
        {
          v48 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(v587);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v48, v44);
        }
      }
    }
  }

  v605 = *(v574 + 120);
  __p = 0;
  v608 = 0;
  v609 = 0;
  v49 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(*&v605);
  v50 = gdc::Registry::storage<arComponents::AnimationInfo>(*&v605);
  v51 = v50;
  v52 = (v50 + 32);
  v54 = v49[7];
  v53 = v49[8];
  if (*(v50 + 64) - *(v50 + 56) >= (v53 - v54))
  {
    v55 = v49 + 4;
  }

  else
  {
    v55 = (v50 + 32);
  }

  if (v49 + 4 == v55)
  {
    v610.i64[0] = v574 + 128;
    v610.i64[1] = &v605;
    v611.i64[0] = &__p;
    while (v54 != v53)
    {
      v192 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v52, *(v54 + 4));
      v193 = v51[8];
      if (v193 != v192)
      {
        v194 = *v54;
        v195 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v52, HIDWORD(*v54));
        if (v193 == v195)
        {
          v196 = v51[11];
        }

        else
        {
          v196 = v51[10] + 2 * (v195 - v51[7]);
        }

        stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v194, *v196, *(v196 + 8));
      }

      v54 += 8;
    }
  }

  if (v52 == v55)
  {
    v610.i64[0] = v574 + 128;
    v610.i64[1] = &v605;
    v611.i64[0] = &__p;
    v56 = v51[7];
    v57 = v51[8];
    if (v56 != v57)
    {
      v58 = (v51[10] + 8);
      do
      {
        if (v49[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v49 + 4, *(v56 + 4)))
        {
          stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, *v56, *(v58 - 1), *v58);
        }

        v56 += 8;
        v58 += 2;
      }

      while (v56 != v57);
    }
  }

  gdc::Registry::remove<arComponents::AnimationState<(VKAnimationState)1>,std::__wrap_iter<gdc::Entity *>>(*&v605, __p, v608);
  v59 = *&v605;
  v60 = __p;
  v61 = v608;
  if (__p != v608)
  {
    do
    {
      v62 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(v59);
      gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>::remove(v62, *v60++);
    }

    while (v60 != v61);
    v59 = *&v605;
    v60 = __p;
    v61 = v608;
  }

  gdc::Registry::remove<arComponents::AnimationInfo,std::__wrap_iter<gdc::Entity *>>(v59, v60, v61);
  v608 = __p;
  v63 = *&v605;
  v64 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>(*&v605);
  v65 = gdc::Registry::storage<arComponents::AnimationInfo>(v63);
  v66 = v65;
  v67 = (v65 + 32);
  v69 = v64[7];
  v68 = v64[8];
  if (*(v65 + 64) - *(v65 + 56) >= (v68 - v69))
  {
    v70 = v64 + 4;
  }

  else
  {
    v70 = (v65 + 32);
  }

  if (v64 + 4 == v70)
  {
    v610.i64[0] = v574 + 128;
    v610.i64[1] = &v605;
    v611.i64[0] = &__p;
    while (v69 != v68)
    {
      v197 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v67, *(v69 + 4));
      v198 = v66[8];
      if (v198 != v197)
      {
        v199 = *v69;
        v200 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v67, HIDWORD(*v69));
        if (v198 == v200)
        {
          v201 = v66[11];
        }

        else
        {
          v201 = v66[10] + 2 * (v200 - v66[7]);
        }

        stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(&v610, v199, *v201, *(v201 + 8));
      }

      v69 += 8;
    }
  }

  if (v67 == v70)
  {
    v610.i64[0] = v574 + 128;
    v610.i64[1] = &v605;
    v611.i64[0] = &__p;
    v71 = v66[7];
    v72 = v66[8];
    if (v71 != v72)
    {
      v73 = (v66[10] + 8);
      do
      {
        if (v64[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v64 + 4, *(v71 + 4)))
        {
          stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(&v610, *v71, *(v73 - 1), *v73);
        }

        v71 += 8;
        v73 += 2;
      }

      while (v71 != v72);
    }
  }

  gdc::Registry::remove<arComponents::AnimationState<(VKAnimationState)1>,std::__wrap_iter<gdc::Entity *>>(*&v605, __p, v608);
  v74 = *&v605;
  v75 = __p;
  v76 = v608;
  if (__p != v608)
  {
    do
    {
      v77 = gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>(v74);
      gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>::remove(v77, *v75++);
    }

    while (v75 != v76);
    v74 = *&v605;
    v75 = __p;
    v76 = v608;
  }

  gdc::Registry::remove<arComponents::AnimationInfo,std::__wrap_iter<gdc::Entity *>>(v74, v75, v76);
  if (__p)
  {
    v608 = __p;
    operator delete(__p);
  }

  JumpAndRotate = gdc::Registry::storage<arComponents::CreateJumpAndRotateAnimation>(*(v574 + 120));
  if (*(JumpAndRotate + 56) != *(JumpAndRotate + 64))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
  }

  v595 = *(v574 + 120);
  v79 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
  v80 = gdc::Registry::storage<arComponents::AnimationGroupAssociation>(v595);
  v588 = gdc::Registry::storage<arComponents::TimeBasedStart>(v595);
  v81 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(v595);
  v82.i64[0] = v79;
  v82.i64[1] = v80;
  v83.i64[0] = v588;
  v83.i64[1] = v81;
  v84 = vdupq_n_s64(0x20uLL);
  v610 = vaddq_s64(v82, v84);
  v611 = vaddq_s64(v83, v84);
  v85 = v610.i64[0];
  v86 = 1;
  v87 = &v610;
  do
  {
    if (*(v610.i64[v86] + 32) - *(v610.i64[v86] + 24) < *(v85 + 32) - *(v85 + 24))
    {
      v85 = v610.i64[v86];
      v87 = (&v610 + v86 * 8);
    }

    ++v86;
  }

  while (v86 != 4);
  v576 = v87->i64[0];
  if (v79 + 4 == v87->i64[0])
  {
    v88 = v79[7];
    v89 = v79[8];
    if (v88 != v89)
    {
      v90 = (v79[10] + 4);
      do
      {
        v91 = *(v88 + 4);
        v92 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v80 + 4, v91);
        v93 = v80[8];
        if (v93 != v92 && v588[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v588 + 4, v91) && v81[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v81 + 4, v91))
        {
          v94 = *v88;
          v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v80 + 4, HIDWORD(*v88));
          v96 = (v93 == v95 ? v80[11] : v80[10] + v95 - v80[7]);
          v97 = *v96;
          v98 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
          v99 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v98, v97);
          if ((*v99 * v99[2]) >= *v90)
          {
            started = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(started, v94);
          }
        }

        v88 += 8;
        v90 += 6;
      }

      while (v88 != v89);
    }
  }

  v582 = v80 + 4;
  if (v80 + 4 == v576)
  {
    v101 = v80[7];
    v102 = v80[8];
    if (v101 != v102)
    {
      v103 = v80[10];
      do
      {
        v104 = *(v101 + 4);
        v105 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v79 + 4, v104);
        v106 = v79[8];
        if (v106 != v105 && v588[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v588 + 4, v104) && v81[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v81 + 4, v104))
        {
          v107 = *v101;
          v108 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v79 + 4, HIDWORD(*v101));
          v109 = v106 == v108 ? v79[11] : v79[10] + 24 * ((v108 - v79[7]) >> 3);
          v110 = *v103;
          v111 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
          v112 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v111, v110);
          if ((*v112 * v112[2]) >= *(v109 + 4))
          {
            v113 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v113, v107);
          }
        }

        ++v103;
        v101 += 8;
      }

      while (v101 != v102);
    }
  }

  if (v588 + 4 == v576)
  {
    v203 = v588[7];
    v202 = v588[8];
    while (v203 != v202)
    {
      v204 = *(v203 + 4);
      v205 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v79 + 4, v204);
      v206 = v79[8];
      if (v206 != v205)
      {
        v207 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v582, v204);
        v208 = v80[8];
        if (v208 != v207 && v81[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v81 + 4, v204))
        {
          v209 = *v203;
          v210 = HIDWORD(*v203);
          v211 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v79 + 4, HIDWORD(*v203));
          v212 = v206 == v211 ? v79[11] : v79[10] + 24 * ((v211 - v79[7]) >> 3);
          v213 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v582, v210);
          v214 = (v208 == v213 ? v80[11] : v80[10] + v213 - v80[7]);
          v215 = *v214;
          v216 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
          v217 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v216, v215);
          if ((*v217 * v217[2]) >= *(v212 + 4))
          {
            v218 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v218, v209);
          }
        }
      }

      v203 += 8;
    }
  }

  if (v81 + 4 == v576)
  {
    v115 = v81[7];
    for (k = v81[8]; v115 != k; v115 += 8)
    {
      v116 = *(v115 + 4);
      v117 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v79 + 4, v116);
      v118 = v79[8];
      if (v118 != v117)
      {
        v119 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v582, v116);
        v120 = v80[8];
        if (v120 != v119 && v588[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v588 + 4, v116))
        {
          v121 = *v115;
          v122 = HIDWORD(*v115);
          v123 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v79 + 4, HIDWORD(*v115));
          v124 = v118 == v123 ? v79[11] : v79[10] + 24 * ((v123 - v79[7]) >> 3);
          v125 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v582, v122);
          v126 = (v120 == v125 ? v80[11] : v80[10] + v125 - v80[7]);
          v127 = *v126;
          v128 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
          v129 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v128, v127);
          if ((*v129 * v129[2]) >= *(v124 + 4))
          {
            v130 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v130, v121);
          }
        }
      }
    }
  }

  v589 = gdc::Registry::storage<arComponents::AnimationDuration>(v595);
  v131 = gdc::Registry::storage<arComponents::AnimationDependencyOn>(v595);
  v132 = gdc::Registry::storage<arComponents::AnimationInfo>(v595);
  v577 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(v595);
  v133.i64[0] = v589;
  v133.i64[1] = v131;
  v134.i64[0] = v132;
  v135 = v577;
  v134.i64[1] = v577;
  v136 = vdupq_n_s64(0x20uLL);
  v610 = vaddq_s64(v133, v136);
  v611 = vaddq_s64(v134, v136);
  v137 = v610.i64[0];
  v138 = 1;
  v139 = &v610;
  do
  {
    if (*(v610.i64[v138] + 32) - *(v610.i64[v138] + 24) < *(v137 + 32) - *(v137 + 24))
    {
      v137 = v610.i64[v138];
      v139 = (&v610 + v138 * 8);
    }

    ++v138;
  }

  while (v138 != 4);
  v140 = (v589 + 32);
  v569 = v139->i64[0];
  if (v589 + 32 == v139->i64[0])
  {
    v219 = *(v589 + 56);
    v220 = *(v589 + 64);
    while (v219 != v220)
    {
      v221 = *(v219 + 4);
      v222 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v131 + 4, v221);
      v223 = v131[8];
      if (v223 != v222 && v132[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v132 + 4, v221) && v135[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v135 + 4, v221))
      {
        v224 = *v219;
        v225 = HIDWORD(*v219);
        v226 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v131 + 4, HIDWORD(*v219));
        v227 = v223 == v226 ? v131[11] : v131[10] + v226 - v131[7];
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v132 + 4, v225);
        v228 = *(v227 + 4);
        v229 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(v595);
        v135 = v577;
        if (*(v229 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v229 + 32), v228))
        {
          v230 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v230, v224);
          v135 = v577;
        }
      }

      v219 += 8;
    }
  }

  v583 = v131 + 4;
  if (v131 + 4 == v569)
  {
    v141 = v131[7];
    v142 = v131[8];
    if (v141 != v142)
    {
      v143 = v131[10];
      do
      {
        v144 = *(v141 + 4);
        if (*(v589 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v140, v144) && v132[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v132 + 4, v144) && v577[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v577 + 4, v144))
        {
          v145 = *v141;
          v146 = HIDWORD(*v141);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v140, HIDWORD(*v141));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v132 + 4, v146);
          v147 = *(v143 + 4);
          v148 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(v595);
          if (*(v148 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v148 + 32), v147))
          {
            v149 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v149, v145);
          }
        }

        v143 += 8;
        v141 += 8;
      }

      while (v141 != v142);
    }
  }

  v570 = v132 + 4;
  if (v132 + 4 == v569)
  {
    v231 = v132[7];
    v232 = v132[8];
    while (v231 != v232)
    {
      v233 = *(v231 + 4);
      if (*(v589 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v140, v233))
      {
        v234 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v583, v233);
        v235 = v131[8];
        if (v235 != v234 && v577[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v577 + 4, v233))
        {
          v236 = *v231;
          v237 = HIDWORD(*v231);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v140, HIDWORD(*v231));
          v238 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v583, v237);
          v239 = v235 == v238 ? v131[11] : v131[10] + v238 - v131[7];
          v240 = *(v239 + 4);
          v241 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(v595);
          if (*(v241 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v241 + 32), v240))
          {
            v242 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v242, v236);
          }
        }
      }

      v231 += 8;
    }
  }

  if (v577 + 4 == v569)
  {
    v243 = v577[7];
    v244 = v577[8];
    while (v243 != v244)
    {
      v245 = *(v243 + 4);
      if (*(v589 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v140, v245))
      {
        v246 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v583, v245);
        v247 = v131[8];
        if (v247 != v246 && v132[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v570, v245))
        {
          v248 = *v243;
          v249 = HIDWORD(*v243);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v140, HIDWORD(*v243));
          v250 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v583, v249);
          v251 = v247 == v250 ? v131[11] : v131[10] + v250 - v131[7];
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v570, v249);
          v252 = *(v251 + 4);
          v253 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(v595);
          if (*(v253 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v253 + 32), v252))
          {
            v254 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v595);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v254, v248);
          }
        }
      }

      v243 += 8;
    }
  }

  __p = 0;
  v608 = 0;
  v609 = 0;
  if (!*(v574 + 176))
  {
    operator new();
  }

  v150 = *(v574 + 120);
  v151 = gdc::Registry::storage<arComponents::AnimationDuration>(v150);
  v152 = gdc::Registry::storage<arComponents::AnimationInfo>(v150);
  v596 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(v150);
  v153 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v150);
  v154.i64[0] = v151;
  v154.i64[1] = v152;
  v155.i64[0] = v596;
  v155.i64[1] = v153;
  v156 = vdupq_n_s64(0x20uLL);
  v610 = vaddq_s64(v154, v156);
  v611 = vaddq_s64(v155, v156);
  v157 = v610.i64[0];
  v158 = 1;
  v159 = &v610;
  do
  {
    if (*(v610.i64[v158] + 32) - *(v610.i64[v158] + 24) < *(v157 + 32) - *(v157 + 24))
    {
      v157 = v610.i64[v158];
      v159 = (&v610 + v158 * 8);
    }

    ++v158;
  }

  while (v158 != 4);
  v160 = v159->i64[0];
  v578 = v159->i64[0];
  if (v151 + 4 == v159->i64[0])
  {
    v610.i64[0] = v574;
    v610.i64[1] = &__p;
    v161 = v151[7];
    v162 = v151[8];
    if (v161 != v162)
    {
      v163 = v151[10];
      do
      {
        v164 = *(v161 + 4);
        v165 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v152 + 4, v164);
        v166 = v152[8];
        if (v166 != v165 && v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v164) && v153[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153 + 4, v164))
        {
          v167 = *v161;
          v168 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v152 + 4, HIDWORD(*v161));
          if (v166 == v168)
          {
            v169 = v152[11];
          }

          else
          {
            v169 = v152[10] + 2 * (v168 - v152[7]);
          }

          md::ARAnimationLogic::createAnimations(void)::$_0::operator()(v610.i64, v167, v163, v169);
        }

        v163 += 24;
        v161 += 8;
      }

      while (v161 != v162);
    }

    v160 = v578;
  }

  v590 = v152 + 4;
  if (v152 + 4 == v160)
  {
    v610.i64[0] = v574;
    v610.i64[1] = &__p;
    v170 = v152[7];
    v171 = v152[8];
    if (v170 != v171)
    {
      v172 = v152[10];
      do
      {
        v173 = *(v170 + 4);
        v174 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v151 + 4, v173);
        v175 = v151[8];
        if (v175 != v174 && v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v173) && v153[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153 + 4, v173))
        {
          v176 = *v170;
          v177 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v151 + 4, HIDWORD(*v170));
          if (v175 == v177)
          {
            v178 = v151[11];
          }

          else
          {
            v178 = v151[10] + 24 * ((v177 - v151[7]) >> 3);
          }

          md::ARAnimationLogic::createAnimations(void)::$_0::operator()(v610.i64, v176, v178, v172);
        }

        v172 += 16;
        v170 += 8;
      }

      while (v170 != v171);
    }

    v160 = v578;
  }

  if (v596 + 4 == v160)
  {
    v610.i64[0] = v574;
    v610.i64[1] = &__p;
    v180 = v596[7];
    v179 = v596[8];
    while (v180 != v179)
    {
      v181 = *(v180 + 4);
      v182 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v151 + 4, v181);
      v183 = v151[8];
      if (v183 != v182)
      {
        v184 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v590, v181);
        v185 = v152[8];
        if (v185 != v184 && v153[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153 + 4, v181))
        {
          v186 = *v180;
          v187 = HIDWORD(*v180);
          v188 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v151 + 4, HIDWORD(*v180));
          if (v183 == v188)
          {
            v189 = v151[11];
          }

          else
          {
            v189 = v151[10] + 24 * ((v188 - v151[7]) >> 3);
          }

          v190 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v590, v187);
          if (v185 == v190)
          {
            v191 = v152[11];
          }

          else
          {
            v191 = v152[10] + 2 * (v190 - v152[7]);
          }

          md::ARAnimationLogic::createAnimations(void)::$_0::operator()(v610.i64, v186, v189, v191);
        }
      }

      v180 += 8;
    }

    v160 = v578;
  }

  if (v153 + 4 == v160)
  {
    v610.i64[0] = v574;
    v610.i64[1] = &__p;
    v256 = v153[7];
    for (m = v153[8]; v256 != m; v256 += 8)
    {
      v257 = *(v256 + 4);
      v258 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v151 + 4, v257);
      v259 = v151[8];
      if (v259 != v258)
      {
        v260 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v590, v257);
        v261 = v152[8];
        if (v261 != v260 && v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v257))
        {
          v262 = *v256;
          v263 = HIDWORD(*v256);
          v264 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v151 + 4, HIDWORD(*v256));
          if (v259 == v264)
          {
            v265 = v151[11];
          }

          else
          {
            v265 = v151[10] + 24 * ((v264 - v151[7]) >> 3);
          }

          v266 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v590, v263);
          if (v261 == v266)
          {
            v267 = v152[11];
          }

          else
          {
            v267 = v152[10] + 2 * (v266 - v152[7]);
          }

          md::ARAnimationLogic::createAnimations(void)::$_0::operator()(v610.i64, v262, v265, v267);
        }
      }
    }
  }

  v268 = *(v574 + 120);
  v270 = __p;
  v269 = v608;
  if (__p != v608)
  {
    do
    {
      v271 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(v268);
      gdc::ComponentStorageWrapper<arComponents::AnimationState<(VKAnimationState)0>>::remove(v271, *v270++);
    }

    while (v270 != v269);
    v268 = *(v574 + 120);
    v270 = __p;
    v269 = v608;
  }

  if (v270 != v269)
  {
    do
    {
      v272 = gdc::Registry::storage<arComponents::ReadyToStartAnimation>(v268);
      gdc::ComponentStorageWrapper<arComponents::ReadyToStartAnimation>::remove(v272, *v270++);
    }

    while (v270 != v269);
    v270 = __p;
  }

  if (v270)
  {
    v608 = v270;
    operator delete(v270);
  }

  v273 = *(v574 + 120);
  v605 = *&v273;
  v606 = v5;
  v274 = gdc::Registry::storage<arComponents::AnimationGroupParent>(v273);
  v275 = gdc::Registry::storage<arComponents::AnimationInfo>(v273);
  v276 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(v273);
  v277.i64[0] = v274;
  v277.i64[1] = v275;
  v278 = (v276 + 32);
  v610 = vaddq_s64(v277, vdupq_n_s64(0x20uLL));
  v611.i64[0] = v276 + 32;
  v279 = v610.i64[0];
  v280 = 1;
  v281 = &v610;
  do
  {
    if (*(v610.i64[v280] + 32) - *(v610.i64[v280] + 24) < *(v279 + 32) - *(v279 + 24))
    {
      v279 = v610.i64[v280];
      v281 = (&v610 + v280 * 8);
    }

    ++v280;
  }

  while (v280 != 3);
  v597 = v281->i64[0];
  if (v274 + 4 == v281->i64[0])
  {
    v300 = v274[7];
    v301 = v274[8];
    while (v300 != v301)
    {
      v302 = *(v300 + 4);
      if (v275[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v275 + 4, v302) && *(v276 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v278, v302))
      {
        v303 = *v300;
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v275 + 4, HIDWORD(*v300));
        v304 = gdc::Registry::storage<arComponents::NeedsPropagateFinished>(*&v605);
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v304, v303);
      }

      v300 += 8;
    }
  }

  if (v275 + 4 == v597)
  {
    v305 = v275[7];
    v306 = v275[8];
    while (v305 != v306)
    {
      v307 = *(v305 + 4);
      if (v274[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v274 + 4, v307) && *(v276 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v278, v307))
      {
        v308 = *v305;
        v309 = gdc::Registry::storage<arComponents::NeedsPropagateFinished>(*&v605);
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v309, v308);
      }

      v305 += 8;
    }
  }

  if (v278 == v597)
  {
    v310 = *(v276 + 56);
    v311 = *(v276 + 64);
    while (v310 != v311)
    {
      v312 = *(v310 + 4);
      if (v274[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v274 + 4, v312) && v275[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v275 + 4, v312))
      {
        v313 = *v310;
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v275 + 4, HIDWORD(*v310));
        v314 = gdc::Registry::storage<arComponents::NeedsPropagateFinished>(*&v605);
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v314, v313);
      }

      v310 += 8;
    }
  }

  __p = 0;
  v608 = 0;
  v609 = 0;
  v282 = *&v605;
  v283 = gdc::Registry::storage<arComponents::AnimationGroupParent>(*&v605);
  v284 = gdc::Registry::storage<arComponents::AnimationInfo>(v282);
  v285 = gdc::Registry::storage<arComponents::NeedsPropagateActive>(v282);
  v286.i64[0] = v283;
  v286.i64[1] = v284;
  v287 = (v285 + 32);
  v610 = vaddq_s64(v286, vdupq_n_s64(0x20uLL));
  v611.i64[0] = v285 + 32;
  v288 = v610.i64[0];
  v289 = 1;
  v290 = &v610;
  do
  {
    if (*(v610.i64[v289] + 32) - *(v610.i64[v289] + 24) < *(v288 + 32) - *(v288 + 24))
    {
      v288 = v610.i64[v289];
      v290 = (&v610 + v289 * 8);
    }

    ++v289;
  }

  while (v289 != 3);
  v291 = v290->i64[0];
  if (v283 + 4 == v290->i64[0])
  {
    v598 = v290->i64[0];
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v292 = v283[7];
    v293 = v283[8];
    while (v292 != v293)
    {
      v294 = *(v292 + 4);
      v295 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v284 + 4, v294);
      v296 = v284[8];
      if (v296 != v295 && *(v285 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v287, v294))
      {
        v297 = *v292;
        v298 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v284 + 4, HIDWORD(*v292));
        if (v296 == v298)
        {
          v299 = v284[11];
        }

        else
        {
          v299 = (v284[10] + 2 * (v298 - v284[7]));
        }

        propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(&v610, v297, *v299);
      }

      v292 += 8;
    }

    v291 = v598;
  }

  if (v284 + 4 == v291)
  {
    v599 = v291;
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v315 = v284[7];
    v316 = v284[8];
    if (v315 != v316)
    {
      v317 = v284[10];
      do
      {
        v318 = *(v315 + 4);
        if (v283[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v283 + 4, v318) && *(v285 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v287, v318))
        {
          propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(&v610, *v315, *v317);
        }

        v317 += 2;
        v315 += 8;
      }

      while (v315 != v316);
    }

    v291 = v599;
  }

  if (v287 == v291)
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v340 = *(v285 + 56);
    v341 = *(v285 + 64);
    while (v340 != v341)
    {
      v342 = *(v340 + 4);
      if (v283[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v283 + 4, v342))
      {
        v343 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v284 + 4, v342);
        v344 = v284[8];
        if (v344 != v343)
        {
          v345 = *v340;
          v346 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v284 + 4, HIDWORD(*v340));
          if (v344 == v346)
          {
            v347 = v284[11];
          }

          else
          {
            v347 = (v284[10] + 2 * (v346 - v284[7]));
          }

          propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(&v610, v345, *v347);
        }
      }

      v340 += 8;
    }
  }

  v319 = *&v605;
  v320 = __p;
  v321 = v608;
  if (__p != v608)
  {
    do
    {
      v322 = gdc::Registry::storage<arComponents::NeedsPropagateActive>(v319);
      gdc::ComponentStorageWrapper<arComponents::NeedsPropagateActive>::remove(v322, *v320++);
    }

    while (v320 != v321);
    v320 = __p;
    v319 = *&v605;
  }

  v608 = v320;
  v323 = gdc::Registry::storage<arComponents::AnimationGroupParent>(v319);
  v324 = gdc::Registry::storage<arComponents::AnimationInfo>(v319);
  v325 = gdc::Registry::storage<arComponents::NeedsPropagateFinished>(v319);
  v326.i64[0] = v323;
  v326.i64[1] = v324;
  v327 = (v325 + 32);
  v610 = vaddq_s64(v326, vdupq_n_s64(0x20uLL));
  v611.i64[0] = v325 + 32;
  v328 = v610.i64[0];
  v329 = 1;
  v330 = &v610;
  do
  {
    if (*(v610.i64[v329] + 32) - *(v610.i64[v329] + 24) < *(v328 + 32) - *(v328 + 24))
    {
      v328 = v610.i64[v329];
      v330 = (&v610 + v329 * 8);
    }

    ++v329;
  }

  while (v329 != 3);
  v331 = v330->i64[0];
  if (v323 + 4 == v330->i64[0])
  {
    v600 = v330->i64[0];
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v332 = v323[7];
    v333 = v323[8];
    while (v332 != v333)
    {
      v334 = *(v332 + 4);
      v335 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v324 + 4, v334);
      v336 = v324[8];
      if (v336 != v335 && *(v325 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v327, v334))
      {
        v337 = *v332;
        v338 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v324 + 4, HIDWORD(*v332));
        if (v336 == v338)
        {
          v339 = v324[11];
        }

        else
        {
          v339 = (v324[10] + 2 * (v338 - v324[7]));
        }

        propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_2::operator()(&v610, v337, *v339);
      }

      v332 += 8;
    }

    v331 = v600;
  }

  if (v324 + 4 == v331)
  {
    v601 = v331;
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v348 = v324[7];
    v349 = v324[8];
    if (v348 != v349)
    {
      v350 = v324[10];
      do
      {
        v351 = *(v348 + 4);
        if (v323[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v323 + 4, v351) && *(v325 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v327, v351))
        {
          propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_2::operator()(&v610, *v348, *v350);
        }

        v350 += 2;
        v348 += 8;
      }

      while (v348 != v349);
    }

    v331 = v601;
  }

  if (v327 == v331)
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &v606;
    v611.i64[0] = &__p;
    v464 = *(v325 + 56);
    v465 = *(v325 + 64);
    while (v464 != v465)
    {
      v466 = *(v464 + 4);
      if (v323[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v323 + 4, v466))
      {
        v467 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v324 + 4, v466);
        v468 = v324[8];
        if (v468 != v467)
        {
          v469 = *v464;
          v470 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v324 + 4, HIDWORD(*v464));
          if (v468 == v470)
          {
            v471 = v324[11];
          }

          else
          {
            v471 = (v324[10] + 2 * (v470 - v324[7]));
          }

          propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_2::operator()(&v610, v469, *v471);
        }
      }

      v464 += 8;
    }
  }

  v353 = __p;
  v352 = v608;
  if (__p == v608)
  {
    v355 = v574;
    if (__p)
    {
LABEL_345:
      v608 = v353;
      operator delete(v353);
    }
  }

  else
  {
    v354 = *&v605;
    v355 = v574;
    do
    {
      v356 = gdc::Registry::storage<arComponents::NeedsPropagateFinished>(v354);
      gdc::ComponentStorageWrapper<arComponents::NeedsPropagateFinished>::remove(v356, *v353++);
    }

    while (v353 != v352);
    v353 = __p;
    if (__p)
    {
      goto LABEL_345;
    }
  }

  v357 = *(v355 + 120);
  __p = v357;
  v358 = 0.0000000249532021;
  if (v568)
  {
    v358 = 1.0;
  }

  v605 = v358;
  v359 = gdc::Registry::storage<arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>>(v357);
  v360 = gdc::Registry::storage<arComponents::AnimationDuration>(v357);
  v361 = gdc::Registry::storage<arComponents::AnimationInfo>(v357);
  v362 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)1>>(v357);
  v363.i64[0] = v359;
  v363.i64[1] = v360;
  v364.i64[0] = v361;
  v364.i64[1] = v362;
  v365 = vdupq_n_s64(0x20uLL);
  v610 = vaddq_s64(v363, v365);
  v611 = vaddq_s64(v364, v365);
  v366 = v610.i64[0];
  v367 = 1;
  v368 = &v610;
  do
  {
    if (*(v610.i64[v367] + 32) - *(v610.i64[v367] + 24) < *(v366 + 32) - *(v366 + 24))
    {
      v366 = v610.i64[v367];
      v368 = (&v610 + v367 * 8);
    }

    ++v367;
  }

  while (v367 != 4);
  v369 = v368->i64[0];
  v370 = v359 + 4;
  v584 = v359 + 4;
  v591 = v362;
  v571 = v368->i64[0];
  if (v359 + 4 == v368->i64[0])
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &__p;
    v371 = v359[7];
    v372 = v359[8];
    if (v371 != v372)
    {
      v373 = v359[10];
      do
      {
        v374 = *(v371 + 4);
        v375 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v360 + 4, v374);
        v376 = v360[8];
        if (v376 != v375)
        {
          v377 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v361 + 4, v374);
          v378 = v361[8];
          if (v378 != v377)
          {
            v370 = v359 + 4;
            if (*(v591 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v591 + 32), v374))
            {
              v379 = *(v371 + 4);
              v380 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v360 + 4, v379);
              if (v376 == v380)
              {
                v381 = v360[11];
              }

              else
              {
                v381 = v360[10] + 24 * ((v380 - v360[7]) >> 3);
              }

              v382 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v361 + 4, v379);
              if (v378 == v382)
              {
                v383 = v361[11];
              }

              else
              {
                v383 = v361[10] + 2 * (v382 - v361[7]);
              }

              processTranslationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &,gdc::CameraType const&)::$_0::operator()(&v610, v373, v381, v383);
            }
          }
        }

        v373 += 24;
        v371 += 8;
      }

      while (v371 != v372);
    }

    v362 = v591;
    v369 = v571;
  }

  v602 = v360 + 4;
  if (v360 + 4 == v369)
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &__p;
    v384 = v360[7];
    v385 = v360[8];
    if (v384 != v385)
    {
      v386 = v360[10];
      do
      {
        v387 = *(v384 + 4);
        v388 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v370, v387);
        v389 = v359[8];
        if (v389 != v388)
        {
          v390 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v361 + 4, v387);
          v391 = v361[8];
          if (v391 != v390)
          {
            v370 = v359 + 4;
            if (*(v591 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v591 + 32), v387))
            {
              v392 = *(v384 + 4);
              v393 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v584, v392);
              if (v389 == v393)
              {
                v394 = v359[11];
              }

              else
              {
                v394 = v359[10] + 24 * ((v393 - v359[7]) >> 3);
              }

              v395 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v361 + 4, v392);
              if (v391 == v395)
              {
                v396 = v361[11];
              }

              else
              {
                v396 = v361[10] + 2 * (v395 - v361[7]);
              }

              processTranslationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &,gdc::CameraType const&)::$_0::operator()(&v610, v394, v386, v396);
            }
          }
        }

        v386 += 24;
        v384 += 8;
      }

      while (v384 != v385);
    }

    v362 = v591;
    v369 = v571;
  }

  v579 = v361 + 4;
  if (v361 + 4 == v369)
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &__p;
    v397 = v361[7];
    v398 = v361[8];
    if (v397 != v398)
    {
      v399 = v361[10];
      do
      {
        v400 = *(v397 + 4);
        v401 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v370, v400);
        v402 = v359[8];
        if (v402 != v401)
        {
          v403 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v602, v400);
          v404 = v360[8];
          if (v404 != v403)
          {
            v370 = v359 + 4;
            if (*(v591 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v591 + 32), v400))
            {
              v405 = *(v397 + 4);
              v406 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v584, v405);
              if (v402 == v406)
              {
                v407 = v359[11];
              }

              else
              {
                v407 = v359[10] + 24 * ((v406 - v359[7]) >> 3);
              }

              v408 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v602, v405);
              if (v404 == v408)
              {
                v409 = v360[11];
              }

              else
              {
                v409 = v360[10] + 24 * ((v408 - v360[7]) >> 3);
              }

              processTranslationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &,gdc::CameraType const&)::$_0::operator()(&v610, v407, v409, v399);
            }
          }
        }

        v399 += 16;
        v397 += 8;
      }

      while (v397 != v398);
    }

    v362 = v591;
    v369 = v571;
  }

  if ((v362 + 32) == v369)
  {
    v610.i64[0] = &v605;
    v610.i64[1] = &__p;
    v473 = *(v362 + 56);
    v472 = *(v362 + 64);
    while (v473 != v472)
    {
      v474 = *(v473 + 4);
      v475 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v370, v474);
      v476 = v359[8];
      if (v476 != v475)
      {
        v477 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v602, v474);
        v478 = v360[8];
        if (v478 != v477)
        {
          v479 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v579, v474);
          v480 = v361[8];
          if (v480 != v479)
          {
            v481 = *(v473 + 4);
            v482 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v370, v481);
            if (v476 == v482)
            {
              v483 = v359[11];
            }

            else
            {
              v483 = v359[10] + 24 * ((v482 - v359[7]) >> 3);
            }

            v484 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v602, v481);
            if (v478 == v484)
            {
              v485 = v360[11];
            }

            else
            {
              v485 = v360[10] + 24 * ((v484 - v360[7]) >> 3);
            }

            v486 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v579, v481);
            if (v480 == v486)
            {
              v487 = v361[11];
            }

            else
            {
              v487 = v361[10] + 2 * (v486 - v361[7]);
            }

            processTranslationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &,gdc::CameraType const&)::$_0::operator()(&v610, v483, v485, v487);
          }
        }
      }

      v473 += 8;
    }
  }

  v410 = *(v574 + 120);
  __p = v410;
  v411 = gdc::Registry::storage<arComponents::AnimationTarget<(arComponents::AnimationProperty)1,gm::Matrix<float,3,1>>>(v410);
  v412 = gdc::Registry::storage<arComponents::AnimationDuration>(v410);
  v413 = gdc::Registry::storage<arComponents::AnimationInfo>(v410);
  v414 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)1>>(v410);
  v415.i64[0] = v411;
  v415.i64[1] = v412;
  v416.i64[0] = v413;
  v416.i64[1] = v414;
  v417 = vdupq_n_s64(0x20uLL);
  v610 = vaddq_s64(v415, v417);
  v611 = vaddq_s64(v416, v417);
  v418 = v610.i64[0];
  v419 = 1;
  v420 = &v610;
  do
  {
    if (*(v610.i64[v419] + 32) - *(v610.i64[v419] + 24) < *(v418 + 32) - *(v418 + 24))
    {
      v418 = v610.i64[v419];
      v420 = (&v610 + v419 * 8);
    }

    ++v419;
  }

  while (v419 != 4);
  v421 = v420->i64[0];
  v422 = v411 + 4;
  v585 = v411 + 4;
  v592 = v414;
  v572 = v420->i64[0];
  if (v411 + 4 == v420->i64[0])
  {
    v610.i64[0] = &__p;
    v423 = v411[7];
    v424 = v411[8];
    if (v423 != v424)
    {
      v425 = v411[10];
      do
      {
        v426 = *(v423 + 4);
        v427 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v412 + 4, v426);
        v428 = v412[8];
        if (v428 != v427)
        {
          v429 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v413 + 4, v426);
          v430 = v413[8];
          if (v430 != v429)
          {
            v422 = v411 + 4;
            if (*(v592 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v592 + 32), v426))
            {
              v431 = *(v423 + 4);
              v432 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v412 + 4, v431);
              if (v428 == v432)
              {
                v433 = v412[11];
              }

              else
              {
                v433 = v412[10] + 24 * ((v432 - v412[7]) >> 3);
              }

              v434 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v413 + 4, v431);
              if (v430 == v434)
              {
                v435 = v413[11];
              }

              else
              {
                v435 = v413[10] + 2 * (v434 - v413[7]);
              }

              processRotationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v425, v433, v435);
            }
          }
        }

        v425 += 6;
        v423 += 8;
      }

      while (v423 != v424);
    }

    v414 = v592;
    v421 = v572;
  }

  v603 = v412 + 4;
  if (v412 + 4 == v421)
  {
    v610.i64[0] = &__p;
    v436 = v412[7];
    v437 = v412[8];
    if (v436 != v437)
    {
      v438 = v412[10];
      do
      {
        v439 = *(v436 + 4);
        v440 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v422, v439);
        v441 = v411[8];
        if (v441 != v440)
        {
          v442 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v413 + 4, v439);
          v443 = v413[8];
          if (v443 != v442)
          {
            v422 = v411 + 4;
            if (*(v592 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v592 + 32), v439))
            {
              v444 = *(v436 + 4);
              v445 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v585, v444);
              if (v441 == v445)
              {
                v446 = v411[11];
              }

              else
              {
                v446 = (v411[10] + 24 * ((v445 - v411[7]) >> 3));
              }

              v447 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v413 + 4, v444);
              if (v443 == v447)
              {
                v448 = v413[11];
              }

              else
              {
                v448 = v413[10] + 2 * (v447 - v413[7]);
              }

              processRotationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v446, v438, v448);
            }
          }
        }

        v438 += 24;
        v436 += 8;
      }

      while (v436 != v437);
    }

    v414 = v592;
    v421 = v572;
  }

  v580 = v413 + 4;
  if (v413 + 4 == v421)
  {
    v610.i64[0] = &__p;
    v449 = v413[7];
    v450 = v413[8];
    if (v449 != v450)
    {
      v451 = v413[10];
      do
      {
        v452 = *(v449 + 4);
        v453 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v422, v452);
        v454 = v411[8];
        if (v454 != v453)
        {
          v455 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v603, v452);
          v456 = v412[8];
          if (v456 != v455)
          {
            v422 = v411 + 4;
            if (*(v592 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v592 + 32), v452))
            {
              v457 = *(v449 + 4);
              v458 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v585, v457);
              if (v454 == v458)
              {
                v459 = v411[11];
              }

              else
              {
                v459 = (v411[10] + 24 * ((v458 - v411[7]) >> 3));
              }

              v460 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v603, v457);
              if (v456 == v460)
              {
                v461 = v412[11];
              }

              else
              {
                v461 = v412[10] + 24 * ((v460 - v412[7]) >> 3);
              }

              processRotationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v459, v461, v451);
            }
          }
        }

        v451 += 16;
        v449 += 8;
      }

      while (v449 != v450);
    }

    v414 = v592;
    v421 = v572;
  }

  if ((v414 + 32) == v421)
  {
    v610.i64[0] = &__p;
    v489 = *(v414 + 56);
    v488 = *(v414 + 64);
    while (v489 != v488)
    {
      v490 = *(v489 + 4);
      v491 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v422, v490);
      v492 = v411[8];
      if (v492 != v491)
      {
        v493 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v603, v490);
        v494 = v412[8];
        if (v494 != v493)
        {
          v495 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v580, v490);
          v496 = v413[8];
          if (v496 != v495)
          {
            v497 = *(v489 + 4);
            v498 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v422, v497);
            if (v492 == v498)
            {
              v499 = v411[11];
            }

            else
            {
              v499 = (v411[10] + 24 * ((v498 - v411[7]) >> 3));
            }

            v500 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v603, v497);
            if (v494 == v500)
            {
              v501 = v412[11];
            }

            else
            {
              v501 = v412[10] + 24 * ((v500 - v412[7]) >> 3);
            }

            v502 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v580, v497);
            if (v496 == v502)
            {
              v503 = v413[11];
            }

            else
            {
              v503 = v413[10] + 2 * (v502 - v413[7]);
            }

            processRotationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v499, v501, v503);
          }
        }
      }

      v489 += 8;
    }
  }

  v462 = *(v574 + 120);
  v605 = *&v462;
  __p = 0x1182AA34D6B77F4FLL;
  v463 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v462 + 120), 0x1182AA34D6B77F4FuLL);
  if (!v463)
  {
    operator new();
  }

  v604 = v463[3];
  v504 = gdc::Registry::storage<arComponents::AnimationDuration>(v462);
  v505 = gdc::Registry::storage<arComponents::AnimationInfo>(v462);
  result = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)1>>(v462);
  v586 = result;
  v507.i64[0] = v604;
  v507.i64[1] = v504;
  v508.i64[0] = v505;
  v509 = result;
  v508.i64[1] = result;
  v510 = vdupq_n_s64(0x20uLL);
  v610 = vbicq_s8(vaddq_s64(v507, v510), vceqzq_s64(v507));
  v611 = vaddq_s64(v508, v510);
  v511 = v610.i64[0];
  v512 = 1;
  v513 = &v610;
  do
  {
    if (*(v610.i64[v512] + 32) - *(v610.i64[v512] + 24) < *(v511 + 32) - *(v511 + 24))
    {
      v511 = v610.i64[v512];
      v513 = (&v610 + v512 * 8);
    }

    ++v512;
  }

  while (v512 != 4);
  v514 = v513->i64[0];
  v515 = v604 + 4;
  if (v604)
  {
    v516 = v604 + 4;
  }

  else
  {
    v516 = 0;
  }

  v573 = v513->i64[0];
  if (v516 == v514)
  {
    v610.i64[0] = &v605;
    v517 = v604[7];
    v518 = v604[8];
    if (v517 != v518)
    {
      v519 = (v604[10] + 4);
      do
      {
        v520 = *(v517 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v504 + 4, v520);
        v521 = v504[8];
        if (v521 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v505 + 4, v520);
          v522 = v505[8];
          if (v522 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v509 + 4, v520);
            if (v509[8] != result)
            {
              v523 = *(v517 + 4);
              v524 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v504 + 4, v523);
              if (v521 == v524)
              {
                v525 = v504[11];
              }

              else
              {
                v525 = v504[10] + 24 * ((v524 - v504[7]) >> 3);
              }

              v526 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v505 + 4, v523);
              if (v522 == v526)
              {
                v527 = v505[11];
              }

              else
              {
                v527 = v505[10] + 2 * (v526 - v505[7]);
              }

              result = processScaleAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v525, v527, *(v519 - 1), *v519);
              v509 = v586;
            }
          }
        }

        v517 += 8;
        v519 += 2;
      }

      while (v517 != v518);
    }

    v515 = v604 + 4;
    v514 = v573;
  }

  v593 = v504 + 4;
  if (v504 + 4 == v514)
  {
    v610.i64[0] = &v605;
    v529 = v504[7];
    v528 = v504[8];
    if (v529 != v528)
    {
      v530 = v504[10];
      do
      {
        v531 = *(v529 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v531);
        v532 = v604[8];
        if (v532 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v505 + 4, v531);
          v533 = v505[8];
          if (v533 != result)
          {
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v586 + 32), v531);
            if (*(v586 + 64) != result)
            {
              v534 = *(v529 + 4);
              v535 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v515, v534);
              if (v532 == v535)
              {
                v536 = v604[11];
              }

              else
              {
                v536 = (v604[10] + v535 - v604[7]);
              }

              v537 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v505 + 4, v534);
              if (v533 == v537)
              {
                v538 = v505[11];
              }

              else
              {
                v538 = v505[10] + 2 * (v537 - v505[7]);
              }

              result = processScaleAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v530, v538, *v536, v536[1]);
              v515 = v604 + 4;
            }
          }
        }

        v530 += 24;
        v529 += 8;
      }

      while (v529 != v528);
    }

    v509 = v586;
    v514 = v573;
  }

  v575 = v505 + 4;
  if (v505 + 4 == v514)
  {
    v610.i64[0] = &v605;
    v540 = v505[7];
    v539 = v505[8];
    if (v540 != v539)
    {
      v541 = v505[10];
      do
      {
        v542 = *(v540 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v542);
        v543 = v604[8];
        if (v543 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v593, v542);
          v544 = v504[8];
          if (v544 != result)
          {
            v545 = v515;
            v546 = v504;
            v547 = v505;
            v548 = v544;
            result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v586 + 32), v542);
            v549 = v548;
            v505 = v547;
            v504 = v546;
            v515 = v545;
            if (*(v586 + 64) != result)
            {
              v550 = *(v540 + 4);
              v551 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v545, v550);
              if (v543 == v551)
              {
                v552 = v604[11];
              }

              else
              {
                v552 = (v604[10] + v551 - v604[7]);
              }

              v553 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v593, v550);
              if (v549 == v553)
              {
                v554 = v504[11];
              }

              else
              {
                v554 = v504[10] + 24 * ((v553 - v504[7]) >> 3);
              }

              result = processScaleAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v554, v541, *v552, v552[1]);
              v515 = v604 + 4;
            }
          }
        }

        v541 += 16;
        v540 += 8;
      }

      while (v540 != v539);
    }

    v509 = v586;
    v514 = v573;
  }

  if (v509 + 4 == v514)
  {
    v610.i64[0] = &v605;
    v555 = v509[7];
    v556 = v509[8];
    while (v555 != v556)
    {
      v557 = *(v555 + 4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v557);
      v558 = v604[8];
      if (v558 != result)
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v593, v557);
        v559 = v504[8];
        if (v559 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v575, v557);
          v560 = v505[8];
          if (v560 != result)
          {
            v561 = *(v555 + 4);
            v562 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v515, v561);
            if (v558 == v562)
            {
              v563 = v604[11];
            }

            else
            {
              v563 = (v604[10] + v562 - v604[7]);
            }

            v564 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v593, v561);
            if (v559 == v564)
            {
              v565 = v504[11];
            }

            else
            {
              v565 = v504[10] + 24 * ((v564 - v504[7]) >> 3);
            }

            v566 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v575, v561);
            if (v560 == v566)
            {
              v567 = v505[11];
            }

            else
            {
              v567 = v505[10] + 2 * (v566 - v505[7]);
            }

            result = processScaleAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(&v610, v565, v567, *v563, v563[1]);
            v515 = v604 + 4;
          }
        }
      }

      v555 += 8;
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>(uint64_t a1)
{
  v3 = 0xB7988916C13D056ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB7988916C13D056ALL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_0::operator()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a4);
  v22 = *MEMORY[0x1E69E9840];
  stopAndReleaseAnimation(a3, a4, *a1, 0);
  if (GEOGetVectorKitARAnimationLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARAnimationLog_onceToken, &__block_literal_global_53);
  }

  v7 = GEOGetVectorKitARAnimationLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21[0] = 67109120;
    v21[1] = v4;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Animating : Animation stopped: %d", v21, 8u);
  }

  v8 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(**(a1 + 8));
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v8, a2);
  v9 = *(a1 + 16);
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 >= v10)
  {
    v13 = (v11 - *v9) >> 3;
    if ((v13 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v10 - *v9;
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

    if (v16)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v16);
    }

    v17 = (8 * v13);
    *v17 = a2;
    v12 = 8 * v13 + 8;
    v18 = *(v9 + 8) - *v9;
    v19 = v17 - v18;
    memcpy(v17 - v18, *v9, v18);
    v20 = *v9;
    *v9 = v19;
    *(v9 + 8) = v12;
    *(v9 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v11 = a2;
    v12 = (v11 + 1);
  }

  *(v9 + 8) = v12;
}

BOOL gdc::Registry::remove<arComponents::AnimationState<(VKAnimationState)1>,std::__wrap_iter<gdc::Entity *>>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)1>>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<arComponents::AnimationState<(VKAnimationState)1>>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

BOOL gdc::Registry::remove<arComponents::AnimationInfo,std::__wrap_iter<gdc::Entity *>>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<arComponents::AnimationInfo>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>(uint64_t a1)
{
  v3 = 0x36475A4976FF3838;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x36475A4976FF3838uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void stopExistingAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a4);
  v22 = *MEMORY[0x1E69E9840];
  stopAndReleaseAnimation(a3, a4, *a1, 1u);
  v7 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)3>>(**(a1 + 8));
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v7, a2);
  v8 = *(a1 + 16);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 >= v9)
  {
    v12 = (v10 - *v8) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - *v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
    }

    v16 = (8 * v12);
    *v16 = a2;
    v11 = 8 * v12 + 8;
    v17 = *(v8 + 8) - *v8;
    v18 = v16 - v17;
    memcpy(v16 - v17, *v8, v17);
    v19 = *v8;
    *v8 = v18;
    *(v8 + 8) = v11;
    *(v8 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = a2;
    v11 = (v10 + 1);
  }

  *(v8 + 8) = v11;
  if (GEOGetVectorKitARAnimationLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARAnimationLog_onceToken, &__block_literal_global_53);
  }

  v20 = GEOGetVectorKitARAnimationLog_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21[0] = 67109120;
    v21[1] = v4;
    _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_INFO, "Animating : Animation completed: %d", v21, 8u);
  }
}

uint64_t gdc::Registry::storage<arComponents::CreateJumpAndRotateAnimation>(uint64_t a1)
{
  v3 = 0x5A61F07088E4D192;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5A61F07088E4D192uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::Registry::add<arComponents::AnimationInfo,arComponents::AnimationGroupAssociation,arComponents::AnimationGroupProgress,arComponents::TimeBasedStart,arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>,arComponents::AnimationDuration,arComponents::AnimationState<(VKAnimationState)0>>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4, int *a5, __int128 *a6, uint64_t *a7)
{
  v14 = gdc::Registry::storage<arComponents::AnimationInfo>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::emplace(v14, a2, a3);
  v15 = gdc::Registry::storage<arComponents::AnimationGroupAssociation>(a1);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v15, a2, a4);
  v16 = gdc::Registry::storage<arComponents::AnimationGroupProgress>(a1);
  gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v16, a2, a5);
  v17 = gdc::Registry::storage<arComponents::TimeBasedStart>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v17, a2);
  v18 = gdc::Registry::storage<arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>>::emplace(v18, a2, a6);
  v19 = gdc::Registry::storage<arComponents::AnimationDuration>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationDuration>::emplace(v19, a2, a7);
  v20 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(a1);

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v20, a2);
}

void gdc::Registry::add<arComponents::AnimationInfo,arComponents::AnimationGroupAssociation,arComponents::AnimationGroupProgress,arComponents::AnimationDependencyOn,arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>,arComponents::AnimationDuration,arComponents::AnimationState<(VKAnimationState)0>>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4, int *a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v16 = gdc::Registry::storage<arComponents::AnimationInfo>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationInfo>::emplace(v16, a2, a3);
  v17 = gdc::Registry::storage<arComponents::AnimationGroupAssociation>(a1);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v17, a2, a4);
  v18 = gdc::Registry::storage<arComponents::AnimationGroupProgress>(a1);
  gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v18, a2, a5);
  v19 = gdc::Registry::storage<arComponents::AnimationDependencyOn>(a1);
  v42 = a2;
  v20 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v19 + 4, &v42);
  if (v21)
  {
    v23 = v19[11];
    v22 = v19[12];
    if (v23 >= v22)
    {
      v28 = v19[10];
      v29 = v23 - v28;
      v30 = (v23 - v28) >> 3;
      v31 = v30 + 1;
      if ((v30 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v32 = v22 - v28;
      if (v32 >> 2 > v31)
      {
        v31 = v32 >> 2;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        if (!(v33 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v34 = v30;
      v35 = (8 * v30);
      v36 = *a6;
      v37 = &v35[-v34];
      *v35 = v36;
      v24 = v35 + 1;
      memcpy(v37, v28, v29);
      v19[10] = v37;
      v19[11] = v24;
      v19[12] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v23 = *a6;
      v24 = v23 + 8;
    }

    v19[11] = v24;
    v26 = v19[31];
    goto LABEL_20;
  }

  v25 = (v19[10] + v20 - v19[7]);
  *v25 = *a6;
  v26 = v19[31];
  if (v25 == v19[11])
  {
LABEL_20:
    for (i = v19[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v26, &v42, 1);
    }

    goto LABEL_22;
  }

  for (j = v19[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v26, &v42, 1);
  }

LABEL_22:
  v39 = gdc::Registry::storage<arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationTarget<(arComponents::AnimationProperty)0,gm::Matrix<float,3,1>>>::emplace(v39, a2, a7);
  v40 = gdc::Registry::storage<arComponents::AnimationDuration>(a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationDuration>::emplace(v40, a2, a8);
  v41 = gdc::Registry::storage<arComponents::AnimationState<(VKAnimationState)0>>(a1);

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v41, a2);
}

uint64_t gdc::Registry::storage<arComponents::AnimationDuration>(uint64_t a1)
{
  v3 = 0x123588C1A18C7310;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x123588C1A18C7310uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::ReadyToStartAnimation>(uint64_t a1)
{
  v3 = 0xBA4F817314B669D2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBA4F817314B669D2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::NeedsPropagateFinished>(uint64_t a1)
{
  v3 = 0x21F4200BFFAD882CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x21F4200BFFAD882CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 8);
  v7 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)1>>(**a1);
  v40 = a3;
  v8 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v7 + 4, &v40);
  if (v9)
  {
    v11 = v7[11];
    v10 = v7[12];
    if (v11 >= v10)
    {
      v17 = v7[10];
      v18 = v11 - v17;
      v19 = (v11 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = v10 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v23 = (v11 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v6;
      v12 = v24 + 1;
      memcpy(v25, v17, v18);
      v7[10] = v25;
      v7[11] = v12;
      v7[12] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v11 = v6;
      v12 = v11 + 8;
    }

    v7[11] = v12;
    v15 = v7[31];
    goto LABEL_20;
  }

  v13 = v7[11];
  v14 = (v7[10] + v8 - v7[7]);
  *v14 = v6;
  v15 = v7[31];
  if (v14 == v13)
  {
LABEL_20:
    for (i = v7[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v40, 1);
    }

    goto LABEL_22;
  }

  for (j = v7[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v40, 1);
  }

LABEL_22:
  v27 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)3>>(**a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationEntityStatus<(VKAnimationState)3>>::remove(v27, a3);
  v28 = *(a1 + 16);
  v30 = *(v28 + 8);
  v29 = *(v28 + 16);
  if (v30 >= v29)
  {
    v32 = (v30 - *v28) >> 3;
    if ((v32 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = v29 - *v28;
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

    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v35);
    }

    v36 = (8 * v32);
    *v36 = a2;
    v31 = 8 * v32 + 8;
    v37 = *(v28 + 8) - *v28;
    v38 = v36 - v37;
    memcpy(v36 - v37, *v28, v37);
    v39 = *v28;
    *v28 = v38;
    *(v28 + 8) = v31;
    *(v28 + 16) = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v30 = a2;
    v31 = (v30 + 1);
  }

  *(v28 + 8) = v31;
}

void propagateAnimationStatusToAnimatedEntity(gdc::Registry *,long long,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &)::$_2::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 8);
  v7 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)3>>(**a1);
  v40 = a3;
  v8 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v7 + 4, &v40);
  if (v9)
  {
    v11 = v7[11];
    v10 = v7[12];
    if (v11 >= v10)
    {
      v17 = v7[10];
      v18 = v11 - v17;
      v19 = (v11 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = v10 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v23 = (v11 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v6;
      v12 = v24 + 1;
      memcpy(v25, v17, v18);
      v7[10] = v25;
      v7[11] = v12;
      v7[12] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v11 = v6;
      v12 = v11 + 8;
    }

    v7[11] = v12;
    v15 = v7[31];
    goto LABEL_20;
  }

  v13 = v7[11];
  v14 = (v7[10] + v8 - v7[7]);
  *v14 = v6;
  v15 = v7[31];
  if (v14 == v13)
  {
LABEL_20:
    for (i = v7[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v40, 1);
    }

    goto LABEL_22;
  }

  for (j = v7[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v40, 1);
  }

LABEL_22:
  v27 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)1>>(**a1);
  gdc::ComponentStorageWrapper<arComponents::AnimationEntityStatus<(VKAnimationState)1>>::remove(v27, a3);
  v28 = *(a1 + 16);
  v30 = *(v28 + 8);
  v29 = *(v28 + 16);
  if (v30 >= v29)
  {
    v32 = (v30 - *v28) >> 3;
    if ((v32 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = v29 - *v28;
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

    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v35);
    }

    v36 = (8 * v32);
    *v36 = a2;
    v31 = 8 * v32 + 8;
    v37 = *(v28 + 8) - *v28;
    v38 = v36 - v37;
    memcpy(v36 - v37, *v28, v37);
    v39 = *v28;
    *v28 = v38;
    *(v28 + 8) = v31;
    *(v28 + 16) = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v30 = a2;
    v31 = (v30 + 1);
  }

  *(v28 + 8) = v31;
}

void processTranslationAnimations(gdc::Registry *,std::unordered_map<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>> &,gdc::CameraType const&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  *buf = *a2;
  v9 = *(a3 + 8);
  v25[0] = *(a2 + 8);
  do
  {
    *&buf[v7] = *&buf[v7] + ((*(a2 + 12 + v7) - *&buf[v7]) * v9);
    v7 += 4;
  }

  while (v7 != 12);
  for (i = 0; i != 3; ++i)
  {
    v19[i + 1] = *&buf[4 * i];
  }

  v11 = v20;
  v19[0] = **a1 * v20;
  if (GEOGetVectorKitARAnimationLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARAnimationLog_onceToken, &__block_literal_global_53);
  }

  v12 = GEOGetVectorKitARAnimationLog_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a4 + 12);
    v14 = *(a3 + 8);
    *buf = 67109376;
    *&buf[4] = v13;
    LOWORD(v25[0]) = 2048;
    *(v25 + 2) = v14;
    _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_INFO, "Animating : Translation applied: %d  progress : %f", buf, 0x12u);
  }

  if (fabs(v11) > 0.01)
  {
    v15 = **(a1 + 8);
    v22[0] = &unk_1F29EF330;
    v22[1] = v19;
    v23 = v22;
    v16 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(v15);
    v17 = gdc::ComponentStorageWrapper<arComponents::UpRelativeTranslationToApply>::get(v16, v8);
    if (v17)
    {
      std::function<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::operator()(v23, v17, 0);
    }

    else
    {
      *buf = 0;
      std::function<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::operator()(v23, buf, 1);
      v21 = *buf;
      v18 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(v15);
      gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v18, v8, &v21);
    }

    std::__function::__value_func<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::~__value_func[abi:nn200100](v22);
  }
}