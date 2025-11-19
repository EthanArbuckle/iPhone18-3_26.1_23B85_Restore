uint64_t *std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = a2[5];
  if (v8)
  {
    a2[6] = v8;
    operator delete(v8);
  }

  operator delete(a2);
  return v4;
}

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::RegistryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C8D8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x60C4044C4A2DFLL);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C8D8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x60C4044C4A2DFLL);
  }

  return a1;
}

void md::RegistryLogic::didBecomeInactive(md::RegistryLogic *this)
{
  v1 = (this + 144);
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 18));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void md::RegistryLogic::~RegistryLogic(md::RegistryLogic *this)
{
  md::RegistryLogic::~RegistryLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C730;
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 18));
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::RegistryManager::~RegistryManager(md::RegistryManager *this)
{
  v2 = *(this + 114);
  if (v2)
  {
    *(this + 115) = v2;
    operator delete(v2);
  }

  v3 = *(this + 111);
  if (v3)
  {
    *(this + 112) = v3;
    operator delete(v3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 109));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 106));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 103));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 776);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 736);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 696);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 85));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 82));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 79));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 584);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 544);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    *(this + 58) = v5;
    operator delete(v5);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  v7 = *(this + 51);
  if (v7)
  {
    *(this + 52) = v7;
    operator delete(v7);
  }

  v8 = *(this + 48);
  if (v8)
  {
    *(this + 49) = v8;
    operator delete(v8);
  }

  v10 = (this + 352);
  std::vector<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (this + 328);
  std::vector<std::unique_ptr<gdc::Registry>>::__destroy_vector::operator()[abi:nn200100](&v10);
  std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(this + 39));
  for (i = 288; i != 240; i -= 24)
  {
    std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(*(this + i));
  }

  do
  {
    std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(this + i));
    i -= 24;
  }

  while (i != 192);
  std::mutex::~mutex((this + 144));
  std::mutex::~mutex((this + 80));
  std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::~__hash_table(this);
}

md::RegistryManager *std::__shared_ptr_pointer<md::RegistryManager *,std::shared_ptr<md::RegistryManager>::__shared_ptr_default_delete<md::RegistryManager,md::RegistryManager>,std::allocator<md::RegistryManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::RegistryManager::~RegistryManager(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RegistryManager *,std::shared_ptr<md::RegistryManager>::__shared_ptr_default_delete<md::RegistryManager,md::RegistryManager>,std::allocator<md::RegistryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::TileAdjustmentHelpers::adjustTileForSize(unsigned int a1, unsigned int a2, unsigned __int8 *a3, void *a4)
{
  LOBYTE(v4) = 0;
  if (!a1 || !a2)
  {
    goto LABEL_11;
  }

  v5 = a1;
  v6 = a2;
  if (a2 >= a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 *= 2;
    }

    while (v6 < a1);
  }

  if (v6 > a1)
  {
    do
    {
      --v4;
      v7 = v6 > 2 * v5;
      v5 *= 2;
    }

    while (v7);
  }

  if (v4 >= 1)
  {
    v8 = a3[1];
    v10 = *(a3 + 1);
    v9 = *(a3 + 2);
    v11 = *a3;
    if (v4 <= 0x1Eu)
    {
      v12 = v8 + v4;
      v13 = v10 << v4;
      v14 = v9 << v4;
      v15 = *a3;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = -1;
    }

    v35 = *(a3 + 2);
    v34 = a3[24];
    v23 = 1 << v4;
    v24 = v23 << v4;
    if (v23 << v4 >= (2 << v4))
    {
      v33 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
    }

    else
    {
      v33 = v8 + v4;
      v25 = (v10 << v4) + v24 / v23;
      v26 = (v9 << v4) + v24 % v23;
      v27 = v11;
    }

    v50 = v8;
    v51 = __PAIR64__(v9, v10);
    v49 = v11;
    v52 = v35;
    v53 = v34;
    v54 = v4;
    v55 = 0;
    HIBYTE(v56) = v12;
    v57 = __PAIR64__(v14, v13);
    LOBYTE(v56) = v15;
    v58 = 0;
    v59 = 1;
    while (1)
    {
      v28 = v8;
      v37[1] = v8;
      v29 = v10;
      v38 = __PAIR64__(v9, v10);
      v30 = v9;
      v31 = v11;
      v37[0] = v11;
      v39 = v35;
      v40 = v34;
      v41 = v4;
      v32 = v24;
      v42 = v24;
      v44 = v33;
      v45 = v25;
      v46 = v26;
      v43 = v27;
      v47 = 0;
      v48 = 1;
      result = geo::QuadTileIterator::operator!=(&v49, v37);
      if ((result & 1) == 0)
      {
        break;
      }

      v38 = v57;
      *v37 = v56;
      v39 = v58;
      v40 = v59;
      std::vector<geo::QuadTile>::push_back[abi:nn200100](a4, v37);
      ++v55;
      LOBYTE(v56) = v49;
      HIBYTE(v56) = v50 + v54;
      LODWORD(v57) = (v51 << v54) + v55 / (1 << v54);
      HIDWORD(v57) = (HIDWORD(v51) << v54) + v55 % (1 << v54);
      v58 = 0;
      v59 = 1;
      v8 = v28;
      v10 = v29;
      v9 = v30;
      v11 = v31;
      v24 = v32;
    }
  }

  else
  {
LABEL_11:
    v16 = a3[1];
    if (a3[1])
    {
      v17 = 0;
      if (v16 >= -v4)
      {
        v18 = -v4;
      }

      else
      {
        v18 = a3[1];
      }

      LOBYTE(v16) = v16 - v18;
      v19 = vshl_s32(*(a3 + 4), vneg_s32(vdup_n_s32(v18)));
      v20 = 1;
    }

    else
    {
      v19 = *(a3 + 4);
      v17 = *(a3 + 2);
      v20 = a3[24];
    }

    v21 = *a3;
    v50 = v16;
    v51 = v19;
    v49 = v21;
    v52 = v17;
    v53 = v20;
    return std::vector<geo::QuadTile>::push_back[abi:nn200100](a4, &v49);
  }

  return result;
}

uint64_t geo::QuadTile::begin(geo::QuadTile *this, uint64_t a2, char a3)
{
  v5 = *(a2 + 4);
  *v4 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return geo::QuadTileIterator::QuadTileIterator(this, v4, a3, 0);
}

uint64_t geo::QuadTile::end(geo::QuadTile *this, uint64_t a2, char a3)
{
  v5 = *(a2 + 4);
  *v4 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return geo::QuadTileIterator::QuadTileIterator(this, v4, a3, (1 << a3) << a3);
}

void *md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(int,unsigned short,gdc::ResourceManifestInformer const*,geo::QuadTile const&,std::optional<gm::Range<unsigned char>>,std::vector<geo::QuadTile> &)::$_0::operator()(uint64_t a1, char *a2)
{
  result = (*(**a1 + 16))(v18);
  if (v19 == 1)
  {
    v5 = *(a1 + 24);
    v6 = a2[1];
    if (v6 >= HIBYTE(**(a1 + 16)))
    {
      v7 = HIBYTE(**(a1 + 16));
    }

    else
    {
      v7 = a2[1];
    }

    v8 = (v6 >= **(a1 + 16)) & ((**(a1 + 16) | (*(*(a1 + 16) + 2) << 16)) >> 16);
    if (!v8)
    {
      v7 = 0;
    }

    if (v8 == 1 && v7 > BYTE1(v18[0]))
    {
      if (a2[1])
      {
        v10 = 0;
        LOBYTE(v7) = v6 - v7;
        if (v6 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = a2[1];
        }

        LOBYTE(v6) = v6 - v7;
        v11 = vshl_s32(*(a2 + 4), vneg_s32(vdup_n_s32(v7)));
        v12 = 1;
      }

      else
      {
        v11 = *(a2 + 4);
        v10 = *(a2 + 2);
        v12 = a2[24];
      }

      v13 = *a2;
      v14[1] = v6;
      v15 = v11;
      v14[0] = v13;
      v16 = v10;
      v17 = v12;
      return std::vector<geo::QuadTile>::emplace_back<geo::QuadTile>(v5, v14);
    }

    else
    {
      return std::vector<geo::QuadTile>::push_back[abi:nn200100](v5, v18);
    }
  }

  return result;
}

uint64_t geo::QuadTileIterator::QuadTileIterator(uint64_t result, char *a2, char a3, unint64_t a4)
{
  *(result + 24) = 0;
  v4 = a2[1];
  *(result + 1) = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(result + 4) = v5;
  *(result + 8) = v6;
  v7 = *a2;
  *result = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = a2[24];
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 255;
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 1;
  if ((2 << a3) > a4)
  {
    *(result + 48) = v7;
    *(result + 49) = v4 + a3;
    *(result + 52) = (v5 << a3) + a4 / (1 << a3);
    *(result + 56) = (v6 << a3) + a4 % (1 << a3);
  }

  return result;
}

uint64_t std::__function::__func<gdc::LayerDataRequestKey (*)(gdc::RequestType,unsigned short,geo::QuadTile const&),std::allocator<gdc::LayerDataRequestKey (*)(gdc::RequestType,unsigned short,geo::QuadTile const&)>,gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1C900;
  a2[1] = v2;
  return result;
}

double md::SceneContext::renderData(md::SceneContext *this, uint64_t a2, int a3)
{
  v6 = 0;
  while (1)
  {
    v8 = *(a2 + 112);
    v7 = *(a2 + 120);
    while (v8 != v7)
    {
      if (*v8 == v6)
      {
        v7 = v8;
        break;
      }

      v8 += 56;
    }

    gdc::LayerDataCollector::data(this, *(*(v7 + 13) + 24), *(*(v7 + 13) + 32), a3);
    v9 = 0;
    v10 = *(this + 2);
    v14 = *this;
    for (i = v14; gdc::DataKeyIterator::operator!=(i, v10); i = v14)
    {
      ++v9;
      gdc::DataIterator::operator++(&v14);
    }

    if (v9)
    {
      return result;
    }

    if (v6++ > 7)
    {
      return gdc::LayerDataCollector::data(this, *(*(*(a2 + 112) + 104) + 24), *(*(*(a2 + 112) + 104) + 32), a3);
    }
  }
}

void sub_1B2F852F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(STACK[0x538]);
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(STACK[0x210]);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::__emplace_unique_key_args<VKLabelNavJunction * {__strong},VKLabelNavJunction * const {__strong}&>(uint64_t *result, unint64_t a2, id *a3)
{
  v4 = result;
  v6 = (result + 1);
  v5 = result[1];
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
        break;
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
    v7 = (result + 1);
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x28uLL, 0x10A0040AE65CA53uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[4] = *a3;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v13 = **v4;
    if (v13)
    {
      *v4 = v13;
      v12 = *v6;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

void std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(a1[1]);

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

void std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,0>(__n128 *a1, double *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < *a2)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_f64[0] = *a2;
        if (*a2 < a1->n128_f64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_f64[0];
      n128_f64 = a2[-1].n128_f64;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*n128_f64 >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *n128_f64;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *n128_f64;
LABEL_13:
        *n128_f64 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *n128_f64;
      *n128_f64 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2[-1].n128_f64;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 >= v18->n128_f64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_f64[0];
    n128_f64 = a2[-1].n128_f64;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_f64[0];
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      *(v37 + 8) = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::LabelManager::clearSystemCaches(md::LabelManager *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MDL:LabelManager:%p Clearing System Caches", &v4, 0xCu);
  }

  CTFontRemoveFromCaches();
  CGFontDBGetLocal();
  CGFontDBPurgeAllFonts();
  CGFontCacheGetLocalCache();
  return CGFontCacheReset();
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A579A0;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A579A0;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A08;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A08;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A70;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A70;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>>(uint64_t a1, void *a2)
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

void md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57C88;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57C88;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::enumerateGEOVectorObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = std::function<void ()(GeoCodecsFeature const*)>::operator()(*(a2 + 24), v5))
  {
    v5 = *v2;
    v2 += 3;
  }

  return result;
}

void md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57B40;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57B40;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57AD8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57AD8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5.__vftable = (a1 + 24);
  std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelSourceTile>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::allocator_traits<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>,mdm::zone_mallocator>>::destroy[abi:nn200100]<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4000248CA0);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollider::GridNode>(uint64_t a1, void *a2)
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

void md::LabelManager::updateTileZBias(md::LabelManager *this)
{
  v2 = atomic_load(this + 3045);
  if (v2)
  {
    atomic_store(0, this + 3368);
  }

  else
  {
    v3 = +[VKPlatform sharedPlatform];
    atomic_store(-[v3 tileZBias], this + 3368);
  }
}

void *md::LabelManager::setNeedsDisplay(void *this)
{
  v1 = this[17];
  if (v1)
  {
    v2 = this;
    this = *(v1 + 24);
    if (this)
    {
      v4 = v2;
      v3 = 9;
      return (*(*this + 48))(this, &v4, &v3);
    }
  }

  return this;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A1CAB0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[3];
  *(a2 + 29) = *(result + 29);
  *(a2 + 24) = v4;
  *(a2 + 37) = 0;
  *(a2 + 39) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1CAB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1CAB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0,std::allocator<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 3034) = 1;
  return md::LabelManager::queueRestyle(v1, 0);
}

uint64_t std::__function::__func<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0,std::allocator<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CA68;
  a2[1] = v2;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::BuildingFlatStroke::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::BuildingFlatStroke::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::BuildingFlatStroke::BuildingFlatStrokeMesh::~BuildingFlatStrokeMesh(ggl::BuildingFlatStroke::BuildingFlatStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::BuildingFlatStroke::BuildingFlatStrokeMesh::~BuildingFlatStrokeMesh(ggl::BuildingFlatStroke::BuildingFlatStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup::~BuildingFlatStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F893F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>,std::tuple<>>::containsAll<md::ls::RegisterHandle const,md::ls::EnteringView const,md::ls::BaseMapTileHandle const,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const,md::ls::MapDataTypeV const,md::ls::AssociationTileHandle const,md::ls::GlobeMatrixData const,md::ls::TileMatrix const,md::ls::TileTransformConstantDataHandle const,md::ls::TileViewConstantDataHandle const,md::ls::FlyoverOctileKey const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0 && *(v17 + 4 * (a3 & 0x3F)) == a2 && (v18 = *(a1[9] + 8), v3 < (*(a1[9] + 16) - v18) >> 3) && (v19 = *(v18 + 8 * v3)) != 0 && *(v19 + 4 * (a3 & 0x3F)) == a2 && (v20 = *(a1[10] + 8), v3 < (*(a1[10] + 16) - v20) >> 3) && (v21 = *(v20 + 8 * v3)) != 0 && *(v21 + 4 * (a3 & 0x3F)) == a2 && (v22 = *(a1[11] + 8), v3 < (*(a1[11] + 16) - v22) >> 3) && (v23 = *(v22 + 8 * v3)) != 0 && *(v23 + 4 * (a3 & 0x3F)) == a2 && (v24 = *(a1[12] + 8), v3 < (*(a1[12] + 16) - v24) >> 3) && (v25 = *(v24 + 8 * v3)) != 0)
  {
    return *(v25 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0,std::allocator<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 16);
  v15 = **(a1 + 8);
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v15, *a4);
  v16 = a8[5];
  v162 = a8[4];
  v163 = v16;
  v17 = a8[7];
  v164 = a8[6];
  v165 = v17;
  v18 = a8[1];
  *v159 = *a8;
  *&v159[16] = v18;
  v19 = a8[3];
  v160 = a8[2];
  v161 = v19;
  v20 = *(v15 + 12648);
  v21 = *(v15 + 12664);
  v151 = v13;
  if (*(v15 + 12640) == v20)
  {
    v22 = ((*(v15 + 12672) - v21) >> 3) | 0x100000000;
    *v166 = v22;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 12664, v166);
  }

  else
  {
    v22 = *(v21 + 8 * *(v20 - 8));
    *(v15 + 12648) = v20 - 8;
  }

  *&v158[0] = v22;
  *v166 = xmmword_1B33B09D0;
  *&v166[16] = 0;
  v149 = v22;
  v23 = v22 >> 6;
  v24 = *(v15 + 12496);
  v25 = *(v15 + 12488);
  if (v23 >= (v24 - v25) >> 3)
  {
    v26 = v23 + 1;
    v27 = v23 + 1 - ((v24 - v25) >> 3);
    v28 = *(v15 + 12504);
    if (v27 > (v28 - v24) >> 3)
    {
      v29 = v28 - v25;
      if (v29 >> 2 > v26)
      {
        v26 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v26;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v30);
    }

    bzero(*(v15 + 12496), 8 * v27);
    *(v15 + 12496) = v24 + 8 * v27;
    v25 = *(v15 + 12488);
  }

  v31 = *(v25 + 8 * v23);
  if (!v31)
  {
    operator new();
  }

  v32 = (v31 + 16 * (v149 & 0x3F));
  if (*v32 == -1 && v32[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 12512, v158);
    v34 = ((*(v15 + 12520) - *(v15 + 12512)) >> 3) - 1;
    *v32 = HIDWORD(v149);
    v32[1] = v34;
    *&v155 = v159;
    v35 = v34 & 0x3F;
    v36 = *(*(v15 + 12536) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v15 + 12536), v34)) + 24 * v35;
    *v36 = *v166;
    *(v36 + 16) = *&v166[16];
    v37 = v155;
    v38 = v34 >> 6;
    v39 = *(v15 + 12592);
    v40 = *(v15 + 12584);
    v41 = v39 - v40;
    if (v34 >> 6 >= (v39 - v40) >> 3)
    {
      v42 = v38 + 1;
      v43 = v38 + 1 - (v41 >> 3);
      v44 = *(v15 + 12600);
      v153 = v35;
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

        goto LABEL_156;
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
      *(v15 + 12592) = v39 + 8 * v43;
      v52 = *(v15 + 12616);
      v53 = *(v15 + 12608);
      v54 = (v52 - v53) >> 4;
      if (v54 <= v38)
      {
        v55 = v42 - v54;
        v56 = *(v15 + 12624);
        if (v55 > (v56 - v52) >> 4)
        {
          v57 = v56 - v53;
          v58 = v57 >> 3;
          if (v57 >> 3 <= v42)
          {
            v58 = v38 + 1;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFF0)
          {
            v58 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v58 >> 60))
          {
            operator new();
          }

          goto LABEL_156;
        }

        bzero(*(v15 + 12616), 16 * v55);
        *(v15 + 12616) = v52 + 16 * v55;
        v35 = v153;
      }

      else if (v42 < v54)
      {
        *(v15 + 12616) = v53 + 16 * v42;
      }

      v40 = *(v15 + 12584);
      if (v41 < (*(v15 + 12592) - v40))
      {
        operator new();
      }
    }

    v59 = (*(v40 + 8 * v38) + (v35 << 7));
    v60 = *v37;
    v61 = v37[1];
    v62 = v37[3];
    v59[2] = v37[2];
    v59[3] = v62;
    *v59 = v60;
    v59[1] = v61;
    v63 = v37[4];
    v64 = v37[5];
    v65 = v37[7];
    v59[6] = v37[6];
    v59[7] = v65;
    v59[4] = v63;
    v59[5] = v64;
    v13 = v151;
  }

  v66 = *(v13 + 8);
  if (*(BaseMapTileDataRenderable + 24) == 255)
  {
    goto LABEL_135;
  }

  v67 = *v66;
  memset(v159, 0, 24);
  *&v158[0] = 0;
  v68 = *(v67 + 8720);
  v69 = *(v67 + 8736);
  if (*(v67 + 8712) == v68)
  {
    v148 = ((*(v67 + 8744) - v69) >> 3) | 0x100000000;
    *v166 = v148;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v67 + 8736, v166);
  }

  else
  {
    v148 = *(v69 + 8 * *(v68 - 8));
    *(v67 + 8720) = v68 - 8;
  }

  *&v155 = v148;
  v70 = v148 >> 6;
  v71 = *(v67 + 8520);
  v72 = *(v67 + 8512);
  if (v70 >= (v71 - v72) >> 3)
  {
    v73 = v70 + 1;
    v74 = v70 + 1 - ((v71 - v72) >> 3);
    v75 = *(v67 + 8528);
    if (v74 > (v75 - v71) >> 3)
    {
      v76 = v75 - v72;
      if (v76 >> 2 > v73)
      {
        v73 = v76 >> 2;
      }

      if (v76 >= 0x7FFFFFFFFFFFFFF8)
      {
        v77 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v73;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v77);
    }

    bzero(*(v67 + 8520), 8 * v74);
    *(v67 + 8520) = v71 + 8 * v74;
    v72 = *(v67 + 8512);
  }

  v78 = *(v72 + 8 * v70);
  if (!v78)
  {
    operator new();
  }

  v79 = (v78 + 16 * (v148 & 0x3F));
  if (*v79 != -1 || v79[1] != 0)
  {
    v81 = *&v158[0];
    *&v158[0] = 0;
    if (v81)
    {
      (*(*v81 + 8))(v81);
    }

    goto LABEL_132;
  }

  std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v67 + 8536, &v155);
  v82 = ((*(v67 + 8544) - *(v67 + 8536)) >> 3) - 1;
  *v79 = HIDWORD(v148);
  v79[1] = v82;
  v83 = v82 & 0x3F;
  v84 = *(*(v67 + 8560) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v67 + 8560), v82)) + 24 * v83;
  *v84 = xmmword_1B33B09D0;
  *(v84 + 16) = 0;
  v85 = v82 >> 6;
  v86 = *(v67 + 8616);
  v87 = *(v67 + 8608);
  v88 = v86 - v87;
  if (v82 >> 6 >= (v86 - v87) >> 3)
  {
    v89 = v85 + 1;
    v90 = v85 + 1 - (v88 >> 3);
    v91 = *(v67 + 8624);
    if (v90 > (v91 - v86) >> 3)
    {
      v92 = v91 - v87;
      v93 = (v91 - v87) >> 2;
      if (v93 <= v89)
      {
        v93 = v85 + 1;
      }

      if (v92 >= 0x7FFFFFFFFFFFFFF8)
      {
        v94 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v94 = v93;
      }

      if (!(v94 >> 61))
      {
        operator new();
      }

      goto LABEL_156;
    }

    v95 = 0;
    v96 = (v90 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v97 = vdupq_n_s64(v96);
    do
    {
      v98 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(vdupq_n_s64(v95), xmmword_1B33B0560)));
      if (v98.i8[0])
      {
        *(v86 + 8 * v95) = 0;
      }

      if (v98.i8[4])
      {
        *(v86 + 8 * v95 + 8) = 0;
      }

      v95 += 2;
    }

    while (v96 - ((v90 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v95);
    *(v67 + 8616) = v86 + 8 * v90;
    v99 = *(v67 + 8640);
    v100 = *(v67 + 8632);
    v101 = (v99 - v100) >> 4;
    if (v101 <= v85)
    {
      v103 = v89 - v101;
      v104 = *(v67 + 8648);
      if (v103 > (v104 - v99) >> 4)
      {
        v105 = v104 - v100;
        v106 = v105 >> 3;
        if (v105 >> 3 <= v89)
        {
          v106 = v85 + 1;
        }

        if (v105 >= 0x7FFFFFFFFFFFFFF0)
        {
          v107 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v107 = v106;
        }

        if (!(v107 >> 60))
        {
          operator new();
        }

        goto LABEL_156;
      }

      bzero(*(v67 + 8640), 16 * v103);
      v102 = v99 + 16 * v103;
    }

    else
    {
      if (v89 >= v101)
      {
        goto LABEL_99;
      }

      v102 = v100 + 16 * v89;
    }

    *(v67 + 8640) = v102;
LABEL_99:
    v87 = *(v67 + 8608);
    if (v88 < (*(v67 + 8616) - v87))
    {
      operator new();
    }
  }

  v108 = *(v87 + 8 * v85) + 24 * v83;
  *v108 = *v159;
  *(v108 + 16) = *&v159[16];
  *&v159[8] = 0;
  *&v159[16] = 0;
  v109 = *(v67 + 8664);
  v110 = *(v67 + 8656);
  v111 = v109 - v110;
  if (v85 >= (v109 - v110) >> 3)
  {
    v112 = v85 + 1;
    v113 = v85 + 1 - (v111 >> 3);
    v114 = *(v67 + 8672);
    if (v113 > (v114 - v109) >> 3)
    {
      v115 = v114 - v110;
      v116 = (v114 - v110) >> 2;
      if (v116 <= v112)
      {
        v116 = v85 + 1;
      }

      if (v115 >= 0x7FFFFFFFFFFFFFF8)
      {
        v117 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v117 = v116;
      }

      if (!(v117 >> 61))
      {
        operator new();
      }

      goto LABEL_156;
    }

    v118 = 0;
    v119 = (v113 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v120 = vdupq_n_s64(v119);
    do
    {
      v121 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(vdupq_n_s64(v118), xmmword_1B33B0560)));
      if (v121.i8[0])
      {
        *(v109 + 8 * v118) = 0;
      }

      if (v121.i8[4])
      {
        *(v109 + 8 * v118 + 8) = 0;
      }

      v118 += 2;
    }

    while (v119 - ((v113 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v118);
    *(v67 + 8664) = v109 + 8 * v113;
    v122 = *(v67 + 8688);
    v123 = *(v67 + 8680);
    v124 = (v122 - v123) >> 4;
    if (v124 > v85)
    {
      if (v112 >= v124)
      {
        goto LABEL_129;
      }

      v125 = v123 + 16 * v112;
LABEL_128:
      *(v67 + 8688) = v125;
LABEL_129:
      v110 = *(v67 + 8656);
      if (v111 < (*(v67 + 8664) - v110))
      {
        operator new();
      }

      goto LABEL_131;
    }

    v126 = v112 - v124;
    v127 = *(v67 + 8696);
    if (v126 <= (v127 - v122) >> 4)
    {
      bzero(*(v67 + 8688), 16 * v126);
      v125 = v122 + 16 * v126;
      goto LABEL_128;
    }

    v128 = v127 - v123;
    v129 = v128 >> 3;
    if (v128 >> 3 <= v112)
    {
      v129 = v85 + 1;
    }

    if (v128 >= 0x7FFFFFFFFFFFFFF0)
    {
      v130 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v130 = v129;
    }

    if (!(v130 >> 60))
    {
      operator new();
    }

LABEL_156:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_131:
  v131 = *(v110 + 8 * v85);
  v132 = *&v158[0];
  *&v158[0] = 0;
  *(v131 + 8 * v83) = v132;
LABEL_132:
  v133 = *&v159[16];
  if (*&v159[16])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v159[16]);
  }

  v134 = *v14;
  v135 = ecs2::ExecutionTaskContext::currentEntity(v133);
  ecs2::addComponent<md::ls::FlyoverCommonS2TransformHandle>(v134, v135, v148);
  v13 = v151;
  v66 = *(v151 + 8);
LABEL_135:
  Registry = md::VKMRenderResourcesStore::getRegistry(*v66, *a2);
  md::FlyoverCompleteTileDataContext::getOctileInstances(&v156, **(v13 + 24), a12, *(BaseMapTileDataRenderable + 56));
  v136 = v156;
  v147 = v157;
  if (v156 != v157)
  {
    do
    {
      if (*(v136 + 160) == 1)
      {
        v137 = *(v151 + 24);
        v138 = *v137;
        v139 = *(*v137 + 16);
        if (v139)
        {
          *&v159[4] = *(a12 + 4);
          *v159 = *a12;
          *&v159[16] = *(a12 + 16);
          v159[24] = *(a12 + 24);
          v160 = *(a12 + 32);
          *(&v161 + 4) = *(v136 + 4);
          LOWORD(v161) = *v136;
          *&v162 = v136[2];
          BYTE8(v162) = *(v136 + 24);
          v163 = *(v136 + 2);
          v140 = std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>(v139, v159);
          if (v140)
          {
            v141 = v140;
            v142 = *(v138 + 8);
            *&v159[4] = *(a12 + 4);
            *v159 = *a12;
            *&v159[16] = *(a12 + 16);
            v159[24] = *(a12 + 24);
            v160 = *(a12 + 32);
            *(&v161 + 4) = *(v136 + 4);
            LOWORD(v161) = *v136;
            *&v162 = v136[2];
            BYTE8(v162) = *(v136 + 24);
            v163 = *(v136 + 2);
            geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(v142, v159);
            v143 = (v141 + 112);
          }

          else
          {
            v143 = &md::LogicManager::executionOrder(void)const::empty;
          }
        }

        else
        {
          v143 = &md::LogicManager::executionOrder(void)const::empty;
        }
      }

      else
      {
        v143 = md::MeshRenderableContext::renderablesForRegistry(**(v151 + 32), Registry);
      }

      if (v143[1] != *v143)
      {
        __n = ecs2::ExecutionTaskContext::createEntity(*(*v14 + 8));
        *v166 = &unk_1F2A1CDB8;
        *&v166[8] = __n << 32;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CDB8;
        *&v159[8] = __n << 32;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        v144 = (*(***v143 + 24))(**v143);
        *v166 = &unk_1F2A1CE00;
        *&v166[8] = v144;
        *&v166[16] = __n;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CE00;
        *&v159[8] = *&v166[8];
        *&v159[20] = 0;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        *v166 = &unk_1F2A1CE48;
        *&v166[8] = __n << 32;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CE48;
        *&v159[8] = __n << 32;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        v145 = *(BaseMapTileDataRenderable + 80);
        *v159 = *(BaseMapTileDataRenderable + 64);
        *&v159[16] = v145;
        operator new();
      }

      v136 += 22;
    }

    while (v136 != v147);
    v136 = v156;
  }

  if (v136)
  {
    operator delete(v136);
  }
}

void sub_1B2F8DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a57)
  {
    (*(*a57 + 8))(a57);
  }

  if (STACK[0x210])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonS2TransformHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52228;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52228;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::SharedTileMatrix>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A538E0;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A538E0;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ViewConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A508C8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A508C8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::TransformConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50998;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50998;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverInstance>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F6E8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F6E8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A1CD80[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void ecs2::addComponent<md::BoundData>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

uint64_t ecs2::addComponent<md::ls::MeshLayerTypeV>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A431F8;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A431F8;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::AssociationHandle>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

uint64_t ecs2::addComponent<md::ls::IsMercator>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F9E8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F9E8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A1CD80[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void *mre::GGLResourceStore::addTextureHandleToCache(void *result, unint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = result[9];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (a2 >= *&v5)
    {
      v7 = a2 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & a2;
  }

  v8 = *(result[8] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == a2)
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

  v9[4] = a4;
  *(v9 + 40) = a5;
  v11 = (a4 + ((a5 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (a5 - 0x61C8864680B583EBLL);
  v12 = result[4];
  if (!*&v12)
  {
    goto LABEL_40;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = (a4 + ((a5 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (a5 - 0x61C8864680B583EBLL);
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(result[3] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v17 = v16[1];
    if (v17 != v11)
    {
      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v16[2] != a4 || *(v16 + 24) != a5)
    {
LABEL_39:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v16[4] = a2;
  *(v16 + 40) = a3;
  return result;
}

void ecs2::addComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

void ecs2::addComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52158;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52158;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverClipConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52498;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52498;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonMaterialHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A523C8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A523C8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonTexcoordsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A522F8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A522F8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::PredefinedRenderState>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4F868;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A4F868;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::NormalsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51018;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51018;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ElevationHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51288;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51288;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::UVsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A511B8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A511B8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::IndexRange>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::IntendedSceneLayer>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A1D3A0;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A1D3A0;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::InstanceCount>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51638;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51638;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::HasMeshHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A507F8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A507F8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMeshHandle>(ecs2::Entity,md::ls::HasMeshHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata;
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(a2);
  v7 = HasMesh;
  v8 = v4 >> 22;
  v10 = (HasMesh + 8);
  v9 = *(HasMesh + 8);
  if (v4 >> 22 >= (*(HasMesh + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasMesh + 8), v8 + 1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMeshHandle>(ecs2::Entity,md::ls::HasMeshHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A507F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::BoundsWidth>(ecs2::Entity,md::ls::BoundsWidth &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D508;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::PrimitiveType>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PrimitiveType>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrimitiveType>(ecs2::Entity,md::ls::PrimitiveType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D4C0;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshVertexFormat>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableMeshVertexFormat>(ecs2::Entity,md::ls::RenderableMeshVertexFormat &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D478;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshType>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshType>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshType>(void)::localId;
    unk_1EB82D830 = 0xDF7A13395BE275BCLL;
    qword_1EB82D838 = "md::ls::RenderableMeshType]";
    qword_1EB82D840 = 26;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18RenderableMeshTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(v3);
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
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18RenderableMeshTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41EA0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41E80;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableMeshType>(ecs2::Entity,md::ls::RenderableMeshType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D430;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::InstanceDataV>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(a1);
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
    v56 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F);
    v57 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v58 = *(v56 + 8);
    *v56 = v57;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v60 = v6;
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

    *(4 * v20) = a2;
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
    *v17 = a2;
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
    v59 = a1;
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

      goto LABEL_58;
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
      v47 = v33 - v45;
      v48 = *(v8 + 96);
      if (v47 > (v48 - v44) >> 4)
      {
        v49 = v48 - v43;
        v50 = v49 >> 3;
        if (v49 >> 3 <= v33)
        {
          v50 = v29 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF0)
        {
          v51 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (!(v51 >> 60))
        {
          operator new();
        }

LABEL_58:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v47);
      v46 = v44 + 16 * v47;
    }

    else
    {
      if (v33 >= v45)
      {
        goto LABEL_50;
      }

      v46 = v43 + 16 * v33;
    }

    *(v8 + 88) = v46;
LABEL_50:
    v31 = *(v8 + 56);
    a1 = v59;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v52 = *(v31 + 8 * v29);
  v6 = v60;
  *(v52 + 16 * (v28 & 0x3F)) = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v53 = *(v8 + 152);
  for (i = *(v8 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), a2);
  }

LABEL_54:
  v55 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v55 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata) = *(a1 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A1D3E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1D3E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1D3E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void ecs2::BasicRegistry<void>::add<md::ls::InstanceCount>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceCount>(ecs2::Entity,md::ls::InstanceCount &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IntendedSceneLayer>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayer>(ecs2::Entity,md::ls::IntendedSceneLayer &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D3A0;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IndexRange>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IndexRange>(ecs2::Entity,md::ls::IndexRange &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50F48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UVsHandle>(ecs2::Entity,md::ls::UVsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UVsHandle>(ecs2::Entity,md::ls::UVsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A511B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ElevationHandle>(ecs2::Entity,md::ls::ElevationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ElevationHandle>(ecs2::Entity,md::ls::ElevationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NormalsHandle>(ecs2::Entity,md::ls::NormalsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NormalsHandle>(ecs2::Entity,md::ls::NormalsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51018;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PredefinedRenderState>(ecs2::Entity,md::ls::PredefinedRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PredefinedRenderState>(ecs2::Entity,md::ls::PredefinedRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F868;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTexcoordsHandle>(ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTexcoordsHandle>(ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A522F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonMaterialHandle>(ecs2::Entity,md::ls::FlyoverCommonMaterialHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonMaterialHandle>(ecs2::Entity,md::ls::FlyoverCommonMaterialHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A523C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipConstantDataHandle>(ecs2::Entity,md::ls::FlyoverClipConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipConstantDataHandle>(ecs2::Entity,md::ls::FlyoverClipConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52498;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52568;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52638;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverSharedConstants>(ecs2::Entity,md::ls::FlyoverSharedConstants &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverSharedConstants>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverSharedConstants>(ecs2::Entity,md::ls::FlyoverSharedConstants &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D2D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IsMercator>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsMercator>(ecs2::Entity,md::ls::IsMercator &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F9E8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::VisibilityGroupID>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::VisibilityGroupID>(ecs2::Entity,md::ls::VisibilityGroupID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D288;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::AssociationHandle>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(a1);
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
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v55 = *a3;
    *(v54 + 16) = *(a3 + 2);
    *v54 = v55;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
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
    v57 = v28;
    v58 = v6;
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
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 16) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v60 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AssociationHandle>(ecs2::Entity,md::ls::AssociationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A503E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::CheckIfTileWasDeleted>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfTileWasDeleted>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfTileWasDeleted>(void)::localId;
    unk_1EB82D7F0 = 0x4458C393FA29B062;
    qword_1EB82D7F8 = "md::ls::CheckIfTileWasDeleted]";
    qword_1EB82D800 = 29;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfTileWasDeletedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfTileWasDeletedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A418E0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfTileWasDeleted,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A418C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfTileWasDeleted,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A418C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CheckIfTileWasDeleted>(ecs2::Entity,md::ls::CheckIfTileWasDeleted &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D240;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipPlaneData>(ecs2::Entity,md::ls::FlyoverClipPlaneData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata;
  v67 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(a2);
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
    v61 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 240 * (v13 & 0x3F);
    std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v61, a1 + 8);
    for (i = 0; i != 128; i += 8)
    {
      *(v61 + 112 + i) = *(a1 + 120 + i);
    }

    goto LABEL_57;
  }

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
    v64 = v27;
    v65 = v5;
    v31 = v28 + 1;
    v32 = v28 + 1 - ((v29 - v30) >> 3);
    v33 = *(v7 + 72);
    v66 = v29 - v30;
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

      goto LABEL_59;
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
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v46;
        }

        if (!(v47 >> 60))
        {
          operator new();
        }

LABEL_59:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v42 + 16 * v27;
      LOBYTE(v27) = v64;
    }

    else if (v31 < v43)
    {
      *(v7 + 88) = v41 + 16 * v31;
    }

    v30 = *(v7 + 56);
    v5 = v65;
    if (v66 < *(v7 + 64) - v30)
    {
      operator new();
    }
  }

  v48 = *(v30 + 8 * v28) + 240 * (v27 & 0x3F);
  *v48 = 0;
  *(v48 + 104) = 0;
  if (*(a1 + 112) == 1)
  {
    v49 = *(a1 + 8);
    *(v48 + 16) = *(a1 + 24);
    *v48 = v49;
    v50 = *(a1 + 32);
    *(v48 + 40) = *(a1 + 48);
    *(v48 + 24) = v50;
    *(v48 + 48) = *(a1 + 56);
    v51 = *(a1 + 64);
    v52 = *(a1 + 80);
    *(v48 + 88) = *(a1 + 96);
    *(v48 + 72) = v52;
    *(v48 + 56) = v51;
    *(v48 + 104) = 1;
  }

  v53 = *(a1 + 120);
  v54 = *(a1 + 136);
  v55 = *(a1 + 168);
  *(v48 + 144) = *(a1 + 152);
  *(v48 + 160) = v55;
  *(v48 + 112) = v53;
  *(v48 + 128) = v54;
  v56 = *(a1 + 184);
  v57 = *(a1 + 200);
  v58 = *(a1 + 232);
  *(v48 + 208) = *(a1 + 216);
  *(v48 + 224) = v58;
  *(v48 + 176) = v56;
  *(v48 + 192) = v57;
  v59 = *(v7 + 152);
  v60 = *(v7 + 160);
  while (v59 != v60)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v59 + 24), v4);
    v59 += 32;
  }

LABEL_57:
  v63 = *(v67 + 41016) + (v4 >> 16 << 6);
  *(v63 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  *(v67 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata) = *(v67 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipPlaneData>(ecs2::Entity,md::ls::FlyoverClipPlaneData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D170;
  *(a2 + 8) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 8) = v2;
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
    *(a2 + 56) = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 96);
    *(a2 + 80) = *(a1 + 80);
    *(a2 + 96) = v5;
    *(a2 + 64) = v4;
    *(a2 + 112) = 1;
  }

  v6 = *(a1 + 120);
  v7 = *(a1 + 136);
  v8 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v8;
  *(a2 + 136) = v7;
  *(a2 + 120) = v6;
  result = *(a1 + 184);
  v10 = *(a1 + 200);
  v11 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v11;
  *(a2 + 200) = v10;
  *(a2 + 184) = result;
  *(a2 + 248) = *(a1 + 248);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ModelTransformData>(ecs2::Entity,md::ls::ModelTransformData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata;
  v60 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(a2);
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
    v54 = 0;
    v55 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F);
    do
    {
      *(v55 + v54) = *(v12 + v54);
      v54 += 4;
    }

    while (v54 != 48);
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
    v57 = v28;
    v58 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v59 = v30 - v31;
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
      LOBYTE(v28) = v57;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v58;
    if (v59 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = (*(v31 + 8 * v29) + 48 * (v28 & 0x3F));
  v50 = *v12;
  v51 = v12[2];
  v49[1] = v12[1];
  v49[2] = v51;
  *v49 = v50;
  v52 = *(v7 + 152);
  v53 = *(v7 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
    v52 += 32;
  }

LABEL_55:
  v56 = *(v60 + 41016) + (v4 >> 16 << 6);
  *(v56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata) = *(v60 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ModelTransformData>(ecs2::Entity,md::ls::ModelTransformData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D0A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IgnoreCulling>(ecs2::Entity,md::ls::IgnoreCulling &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IgnoreCulling>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IgnoreCulling>(ecs2::Entity,md::ls::IgnoreCulling &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CFF0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshLayerTypeV>(ecs2::Entity,md::ls::MeshLayerTypeV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshLayerTypeV>(ecs2::Entity,md::ls::MeshLayerTypeV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A431F8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::BoundData>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata;
  v61 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::BoundData>(a1);
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
    v53 = 0;
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    do
    {
      *(v54 + v53) = *(a3 + v53);
      v53 += 4;
    }

    while (v53 != 12);
    v55 = 0;
    v56 = v54 + 12;
    do
    {
      *(v56 + v55) = *(a3 + v55 + 12);
      v55 += 4;
    }

    while (v55 != 12);
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_58;
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
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v58 = v28;
    v59 = v6;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v8 + 72);
    v60 = v30 - v31;
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

      goto LABEL_60;
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
      v28 = v32 - v44;
      v45 = *(v8 + 96);
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

LABEL_60:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v58;
    }

    else if (v32 < v44)
    {
      *(v8 + 88) = v42 + 16 * v32;
    }

    v31 = *(v8 + 56);
    v6 = v59;
    if (v60 < *(v8 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v50 = *a3;
  *(v49 + 16) = *(a3 + 2);
  *v49 = v50;
  v51 = *(v8 + 152);
  v52 = *(v8 + 160);
  while (v51 != v52)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v51 + 24), a2);
    v51 += 32;
  }

LABEL_58:
  v57 = *(v61 + 41016) + (WORD1(a2) << 6);
  *(v57 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  *(v61 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata) = *(v61 + 4096);
}