uint64_t md::DaVinciTransitionManager::_setResourcesToUseLowZoom(uint64_t this, char a2)
{
  if (this)
  {
    v3 = *(this + 32);
    v4 = *(this + 40);
    v5 = gdc::ResourceManager::resourceFetcher(v3, v4, 27);
    if (v5)
    {
      *(v5 + 778) = a2;
    }

    v6 = gdc::ResourceManager::resourceFetcher(v3, v4, 32);
    if (v6)
    {
      *(v6 + 778) = a2;
    }

    this = gdc::ResourceManager::resourceFetcher(v3, v4, 30);
    if (this)
    {
      *(this + 778) = a2;
    }
  }

  return this;
}

void md::configurationForConfigurationType(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      operator new();
    }

    operator new();
  }

  if (a2 == 2)
  {
    operator new();
  }

  operator new();
}

void md::MapEngineConfiguration::MapEngineConfiguration(uint64_t a1, char a2)
{
  *a1 = &unk_1F2A58798;
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  operator new();
}

void sub_1B288A134(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = v1[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = &unk_1F2A58798;
  v6 = v1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<gdc::Registry>::shared_ptr[abi:nn200100]<gdc::Registry,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1B288A208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::ServiceLocator::resolve<RendererPassListProviderWrapper>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x25FDEB4E57A24DE1)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

void sub_1B288AAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  ggl::BufferMemory::~BufferMemory(&a15);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  v26 = *(v22 + 352);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(v22 + 336);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(v22 + 320);
  *(v22 + 320) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v22 + 312);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v22 + 296);
  *(v22 + 296) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v22 + 208);
  *(v22 + 208) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v22 + 200);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(v22 + 72);
  *(v22 + 72) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v22 + 64);
  *(v22 + 64) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(v22 + 56);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = *(v22 + 40);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  *v22 = &unk_1F2A36F90;
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100]((v22 + 16), 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100]((v22 + 8), 0);
  MEMORY[0x1B8C62190](v22, v23);
  _Unwind_Resume(a1);
}

uint64_t md::MapEngine::setActiveRenderer(uint64_t result, int a2)
{
  if (!a2)
  {
    v2 = *(result + 41672);
    v3 = *(result + 41680);
    *(result + 41680) = v2;
    if (v3 && v3 != v2)
    {
      *(gdc::ServiceLocator::resolve<md::PassListProvider>(**(result + 47336), *(*(result + 47336) + 8)) + 8) = *(result + 41680);
      v5 = v3[5];
      v6 = v3[6];
      while (v5 != v6)
      {
        if (*v5)
        {
          (*(**v5 + 40))(*v5, 0, 0);
        }

        ++v5;
      }

      v7 = *(*v3 + 32);

      return v7(v3, 2);
    }
  }

  return result;
}

void md::PassList::PassList(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A36F90;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2;
  operator new();
}

void sub_1B288AEB8(_Unwind_Exception *a1)
{
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](v2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](v1, 0);
  _Unwind_Resume(a1);
}

void md::FrameGraphBuilder::build(void *a1, unsigned __int8 ***a2, void *a3)
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz(v5 - v4);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,false>(v4, v5, v7, 1);
  v8 = a2[3];
  v9 = a2[4];
  v10 = 126 - 2 * __clz(v9 - v8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,false>(v8, v9, v11, 1);
  v134[0] = 0;
  v134[1] = 0;
  v133 = v134;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    goto LABEL_53;
  }

  do
  {
    v26 = *v12;
    *&v135 = *v12;
    v27 = v134[0];
    if (v134[0])
    {
      v28 = *v26;
      do
      {
        v29 = *v27[4];
        if (v28 >= v29)
        {
          if (v29 >= v28)
          {
            goto LABEL_37;
          }

          ++v27;
        }

        v27 = *v27;
      }

      while (v27);
    }

    __p[0] = 0;
    __p[1] = 0;
    v123 = 0;
    std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass *&,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>(&v133, v26);
LABEL_37:
    v22 = *(v26 + 7);
    if (v22 != v26 + 64)
    {
      do
      {
        v14 = *(v22 + 4);
        v15 = *(v14 + 64);
        v16 = (v14 + 72);
        if (v15 != (v14 + 72))
        {
          do
          {
            geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::addEdge(&v133, v26, v15[4]);
            v17 = v15[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v15[2];
                v19 = *v18 == v15;
                v15 = v18;
              }

              while (!v19);
            }

            v15 = v18;
          }

          while (v18 != v16);
        }

        v20 = *(v22 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v22 + 2);
            v19 = *v21 == v22;
            v22 = v21;
          }

          while (!v19);
        }

        v22 = v21;
      }

      while (v21 != v26 + 64);
    }

    v25 = *(v26 + 13);
    if (v25 != v26 + 112)
    {
      do
      {
        geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::addEdge(&v133, v26, *(v25 + 4));
        v23 = *(v25 + 1);
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
            v24 = *(v25 + 2);
            v19 = *v24 == v25;
            v25 = v24;
          }

          while (!v19);
        }

        v25 = v24;
      }

      while (v24 != v26 + 112);
    }

    ++v12;
  }

  while (v12 != v13);
  v30 = v133;
  __p[0] = 0;
  __p[1] = 0;
  v123 = 0;
  v135 = 0uLL;
  *&v136 = 0;
  if (v133 == v134)
  {
    goto LABEL_53;
  }

  do
  {
    isAcyclicDFS = geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::isAcyclicDFS(&v133, v30[4], __p, &v135);
    v32 = isAcyclicDFS;
    if (!isAcyclicDFS)
    {
      break;
    }

    v33 = v30[1];
    if (v33)
    {
      do
      {
        v34 = v33;
        v33 = *v33;
      }

      while (v33);
    }

    else
    {
      do
      {
        v34 = v30[2];
        v19 = *v34 == v30;
        v30 = v34;
      }

      while (!v19);
    }

    v30 = v34;
  }

  while (v34 != v134);
  if (v135)
  {
    operator delete(v135);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
LABEL_53:
    v131 = 0uLL;
    v132 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v123 = 0;
    v35 = v133;
    if (v133 != v134)
    {
      do
      {
        geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::topologicalSortedDFS(&v133, v35[4], __p, &v131);
        v87 = v35[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v35[2];
            v19 = *v88 == v35;
            v35 = v88;
          }

          while (!v19);
        }

        v35 = v88;
      }

      while (v88 != v134);
      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    v36 = v131;
    if (*(&v131 + 1) != v131)
    {
      v89 = 0;
      v90 = (*(&v131 + 1) - v131) >> 3;
      if (v90 <= 1)
      {
        v90 = 1;
      }

      do
      {
        *(*(v36 + 8 * v89) + 16) = v89;
        ++v89;
      }

      while (v90 != v89);
    }

    v38 = a2[3];
    v37 = a2[4];
    v39 = v37 - v38;
    if (v37 != v38)
    {
      if (!((v39 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v39 >> 3);
      }

      goto LABEL_210;
    }

    if (a2[14])
    {
      v41 = a2[3];
      v40 = a2[4];
      if (v40 != v41)
      {
        v42 = 0;
        do
        {
          v43 = v41[v42];
          v44 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(a2 + 11, v43);
          if (v44)
          {
            *(v43 + 32) = v42;
            *(8 * v42) = v44[3];
            v41 = a2[3];
            v40 = a2[4];
          }

          ++v42;
        }

        while (v42 < v40 - v41);
      }
    }

    v45 = a2[3];
    v46 = a2[4];
    if (a2[22])
    {
      v47 = v46 - v45;
      if (v46 != v45)
      {
        if (!((v47 >> 3) >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v47 >> 3);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v46 != v45)
      {
        v48 = 0;
        v49 = v46 - v45;
        if (v49 <= 1)
        {
          v49 = 1;
        }

        do
        {
          v50 = v45[v48];
          v51 = *(v50 + 5);
          if (v51 == v50 + 48)
          {
            v52 = 0;
            v53 = -1;
          }

          else
          {
            v52 = 0;
            v53 = -1;
            do
            {
              v54 = *(*(v51 + 4) + 16);
              if (v54 < v53)
              {
                v53 = *(*(v51 + 4) + 16);
              }

              if (v52 <= v54)
              {
                v52 = *(*(v51 + 4) + 16);
              }

              v55 = *(v51 + 1);
              if (v55)
              {
                do
                {
                  v56 = v55;
                  v55 = *v55;
                }

                while (v55);
              }

              else
              {
                do
                {
                  v56 = *(v51 + 2);
                  v19 = *v56 == v51;
                  v51 = v56;
                }

                while (!v19);
              }

              v51 = v56;
            }

            while (v56 != v50 + 48);
          }

          v57 = *(v50 + 8);
          v58 = v50 + 72;
          if (v57 != v58)
          {
            do
            {
              v59 = *(v57[4] + 16);
              if (v59 < v53)
              {
                v53 = *(v57[4] + 16);
              }

              if (v52 <= v59)
              {
                v52 = *(v57[4] + 16);
              }

              v60 = v57[1];
              if (v60)
              {
                do
                {
                  v61 = v60;
                  v60 = *v60;
                }

                while (v60);
              }

              else
              {
                do
                {
                  v61 = v57[2];
                  v19 = *v61 == v57;
                  v57 = v61;
                }

                while (!v19);
              }

              v57 = v61;
            }

            while (v61 != v58);
          }

          v62 = (16 * v48);
          *v62 = v53;
          v62[1] = v52;
          ++v48;
        }

        while (v48 != v49);
        v63 = 0;
        do
        {
          v64 = v45[v63];
          if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a2 + 11, v64) && *(v64 + 32) == -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(1uLL);
          }

          ++v63;
        }

        while (v63 < v46 - v45);
      }

      v45 = a2[3];
      v46 = a2[4];
    }

    else if (v46 != v45)
    {
      v98 = 0;
      if ((v46 - v45) <= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = v46 - v45;
      }

      do
      {
        v100 = v45[v98];
        if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a2 + 11, v100))
        {
          *(v100 + 32) = v98;
        }

        ++v98;
      }

      while (v99 != v98);
    }

    if (v46 == v45)
    {
LABEL_104:
      v65 = *a2;
      v66 = a2[1];
      v129[1] = 0;
      v130 = 0;
      v129[0] = 0;
      if (v66 != v65)
      {
        std::vector<ggl::RenderTarget *>::__vallocate[abi:nn200100](v129, v66 - v65);
      }

      v67 = a2[13];
      if (!v67)
      {
LABEL_209:
        operator new();
      }

      v68 = 0;
      v69 = 0;
      v70 = 0;
      while (1)
      {
        v71 = v69;
        v72 = (v68 - v69) >> 3;
        v73 = v72 + 1;
        if ((v72 + 1) >> 61)
        {
          break;
        }

        if (-v69 >> 2 > v73)
        {
          v73 = -v69 >> 2;
        }

        if (-v69 >= 0x7FFFFFFFFFFFFFF8)
        {
          v74 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73;
        }

        if (v74)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v74);
        }

        v75 = (8 * v72);
        v76 = (8 * v72 - (v70 - v69));
        *v75 = v67[3];
        v68 = v75 + 1;
        memcpy(v76, v69, v70 - v69);
        v69 = v76;
        if (v71)
        {
          operator delete(v71);
          v69 = v76;
        }

        v70 = v68;
        v67 = *v67;
        if (!v67)
        {
          goto LABEL_209;
        }
      }

LABEL_210:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v77 = 0;
    v78 = vdup_n_s32(0x3F2AAAABu);
    while (1)
    {
      v79 = v45[v77];
      if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a2 + 11, v79) || *(8 * *(v79 + 4)))
      {
        goto LABEL_126;
      }

      v81 = *v79;
      if (v81 >= 3)
      {
        if (v81 == 3)
        {
          v94 = *(v79 + 24);
          __p[0] = *(v79 + 11);
          LODWORD(__p[1]) = v94;
          LOBYTE(v123) = 1;
          v124.i8[0] = 0;
          v128 = 0;
          v95 = std::__hash_table<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::__unordered_map_hasher<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::hash<md::ResourceKey>,std::equal_to<md::ResourceKey>,true>,std::__unordered_map_equal<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::equal_to<md::ResourceKey>,std::hash<md::ResourceKey>,true>,std::allocator<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>>>::find<md::ResourceKey>(a3, __p);
          if (!v95)
          {
            goto LABEL_159;
          }

          v86 = v95[8];
          v96 = v95[9];
          if (v86 == v96)
          {
            goto LABEL_159;
          }

          v97 = a3[16];
          while (1)
          {
            v85 = *v86;
            if ((*v86)[1] != v97)
            {
              break;
            }

            if (++v86 == v96)
            {
              goto LABEL_159;
            }
          }

          v85[1] = v97;
          v46 = *v85;
          if (!*v85)
          {
LABEL_159:
            operator new();
          }
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_125;
      }

      v82 = v79[140];
      if (v82 <= 2)
      {
        break;
      }

LABEL_125:
      *(8 * *(v79 + 4)) = v46;
      v45 = a2[3];
      v46 = a2[4];
LABEL_126:
      if (++v77 >= (v46 - v45))
      {
        goto LABEL_104;
      }
    }

    if (v82 == 1)
    {
      v91 = a3;
      v92 = a3[15];
      if (v92)
      {
        v93 = 76;
LABEL_171:
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_172;
      }

      v93 = 76;
LABEL_172:
      v101 = (v79 + 108);
      if (!v79[112])
      {
        v101 = (v91 + v93);
      }

      v102 = *v101;
      v103 = v91[5];
      v104 = v79[88];
      v105 = 0;
      if (v104 > 2)
      {
        switch(v104)
        {
          case 3u:
            v111 = *(v79 + 96);
            v111.i32[1] = *(v79 + 26);
            v107 = vmul_f32(v111, vcvt_f32_u32(v103));
LABEL_190:
            v105 = vshl_u32(0x100000001, vand_s8(vneg_s32(vclz_s32(vadd_s32(vcvt_u32_f32(v107), -1))), 0x1F0000001FLL));
            break;
          case 4u:
            v105 = *(v79 + 92);
            LODWORD(v80) = *(v79 + 25);
            v105.i32[1] = (v80 * v103.u32[1] / v103.u32[0]);
            break;
          case 5u:
            v108 = v103.u32[1];
            v109 = v91[5];
            v110 = v103.u32[0];
            if (v109 >= *(v79 + 23))
            {
              v109 = *(v79 + 23);
            }

            v105.i32[0] = v109;
            v105.i32[1] = (v109 * v108 / v110);
            break;
        }
      }

      else
      {
        if (!v79[88])
        {
          v105 = *(v79 + 92);
          v105.i32[1] = *(v79 + 25);
          goto LABEL_191;
        }

        if (v104 != 1)
        {
          if (v104 != 2)
          {
            goto LABEL_191;
          }

          v106 = *(v79 + 96);
          v106.i32[1] = *(v79 + 26);
          v107 = vrndp_f32(vmul_f32(vrnd_f32(vmul_f32(v106, vcvt_f32_u32(v103))), v78));
          goto LABEL_190;
        }

        v119 = *(v79 + 96);
        v119.i32[1] = *(v79 + 26);
        v105 = vcvt_u32_f32(vmul_f32(v119, vcvt_f32_u32(v103)));
      }

LABEL_191:
      if (v79[89] == 1)
      {
        v112 = v105.u32[1];
        if (v105.i32[0] > v105.i32[1])
        {
          v112 = v105.i32[0];
        }

        v105 = vdup_n_s32(v112);
      }

      if (v79[112])
      {
        v113 = *(v79 + 27);
      }

      else
      {
        v113 = v102;
      }

      v115 = *(v79 + 32);
      v114 = *(v79 + 33);
      LOBYTE(__p[0]) = 0;
      LOBYTE(v123) = 0;
      v124 = v105;
      v125 = v115;
      v126 = v114;
      v127 = v113;
      v128 = 1;
      v116 = std::__hash_table<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::__unordered_map_hasher<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::hash<md::ResourceKey>,std::equal_to<md::ResourceKey>,true>,std::__unordered_map_equal<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::equal_to<md::ResourceKey>,std::hash<md::ResourceKey>,true>,std::allocator<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>>>::find<md::ResourceKey>(v91, __p);
      if (!v116)
      {
        goto LABEL_201;
      }

      v84 = v116[8];
      v117 = v116[9];
      if (v84 == v117)
      {
        goto LABEL_201;
      }

      v118 = v91[16];
      while (1)
      {
        v83 = *v84;
        if ((*v84)[1] != v118)
        {
          break;
        }

        if (++v84 == v117)
        {
          goto LABEL_201;
        }
      }

      v83[1] = v118;
      v46 = *v83;
      if (!*v83)
      {
LABEL_201:
        if (v115 != 1)
        {
          if (!v115)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v92);
      }

      goto LABEL_125;
    }

    v91 = a3;
    if (*(v79 + 33))
    {
      v92 = a3[11];
      if (v92)
      {
LABEL_170:
        v93 = 48;
        goto LABEL_171;
      }
    }

    else
    {
      v92 = a3[13];
      if (v92)
      {
        goto LABEL_170;
      }
    }

    v93 = 48;
    goto LABEL_172;
  }

  *a1 = 0;
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(v134[0]);
}

unsigned __int8 **std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,false>(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
LABEL_3:
    v10 = a3 - 1;
    while (1)
    {
      v7 = v9;
      a3 = v10;
      v11 = a2 - v9;
      if (v11 == 2)
      {
        v12 = *v9;
        if (**v8 < **v9)
        {
          *v9 = *v8;
          *v8 = v12;
        }

        return result;
      }

      if (v11 > 3)
      {
        if (v11 == 4)
        {

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
        }

        if (v11 == 5)
        {

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
        }
      }

      else
      {
        if (v11 < 2)
        {
          return result;
        }

        if (v11 == 3)
        {

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9, v9 + 1, a2 - 1);
        }
      }

      if (v11 <= 23)
      {
        if (a4)
        {

          return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v9, a2);
        }

        else
        {

          return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v9, a2);
        }
      }

      if (a3 == -1)
      {

        return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,md::FrameGraphPass **>(v9, a2, a2);
      }

      v13 = v11 >> 1;
      v14 = &v9[v11 >> 1];
      if (v11 < 0x81)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(&v9[v11 >> 1], v9, a2 - 1);
      }

      else
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9, v14, a2 - 1);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9 + 1, v14 - 1, a2 - 2);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v9 + 2, &v9[v13 + 1], a2 - 3);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(v14 - 1, v14, &v9[v13 + 1]);
        v15 = *v9;
        *v9 = *v14;
        *v14 = v15;
      }

      if ((a4 & 1) == 0 && **(v9 - 1) >= **v9)
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphPass **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &>(v9, a2);
        v9 = result;
        a4 = 0;
        goto LABEL_3;
      }

      v16 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphPass **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &>(v9, a2);
      if ((v17 & 1) == 0)
      {
        goto LABEL_32;
      }

      v18 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v9, v16);
      v9 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v16 + 1, a2);
      if (result)
      {
        break;
      }

      v10 = a3 - 1;
      if (!v18)
      {
LABEL_32:
        result = std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,false>(v7, v16, a3, a4 & 1);
        a4 = 0;
        v9 = v16 + 1;
        goto LABEL_3;
      }
    }

    a2 = v16;
    if (!v18)
    {
      continue;
    }

    return result;
  }
}

unsigned __int8 **std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,false>(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
LABEL_3:
  v10 = a3 - 1;
  while (1)
  {
    v7 = v9;
    a3 = v10;
    v11 = a2 - v9;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9, v9 + 1, a2 - 1);
        case 4uLL:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
        case 5uLL:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v23 = *v8;
        v24 = *v9;
        v25 = **v8;
        v26 = **v9;
        v27 = v25 >= v26;
        if (v25 == v26)
        {
          v27 = *(v23 + 3) + *(v23 + 5) >= *(v24 + 3) + *(v24 + 5);
        }

        if (!v27)
        {
          *v9 = v23;
          *v8 = v24;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (a3 == -1)
    {

      return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,md::FrameGraphLogicalResource **>(v9, a2, a2);
    }

    v28 = v11 >> 1;
    v29 = &v9[v11 >> 1];
    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(&v9[v11 >> 1], v9, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9, v29, a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9 + 1, v29 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v9 + 2, &v9[v28 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(v29 - 1, v29, &v9[v28 + 1]);
      v30 = *v9;
      *v9 = *v29;
      *v29 = v30;
    }

    if ((a4 & 1) == 0)
    {
      v31 = *(v9 - 1);
      v32 = *v31;
      v33 = **v9;
      v34 = v32 >= v33;
      if (v32 == v33)
      {
        v34 = *(v31 + 3) + *(v31 + 5) >= *(*v9 + 3) + *(*v9 + 5);
      }

      if (v34)
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphLogicalResource **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &>(v9, a2);
        v9 = result;
        a4 = 0;
        goto LABEL_3;
      }
    }

    v35 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphLogicalResource **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &>(v9, a2);
    if ((v36 & 1) == 0)
    {
      goto LABEL_56;
    }

    v37 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(v9, v35);
    v9 = v35 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(v35 + 1, a2);
    if (result)
    {
      a2 = v35;
      if (v37)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = a3 - 1;
    if (!v37)
    {
LABEL_56:
      result = std::__introsort<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,false>(v7, v35, a3, a4 & 1);
      a4 = 0;
      v9 = v35 + 1;
      goto LABEL_3;
    }
  }

  if ((a4 & 1) == 0)
  {

    return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(v9, a2);
  }

  if (v9 == a2)
  {
    return result;
  }

  v12 = v9 + 1;
  if (v9 + 1 == a2)
  {
    return result;
  }

  v13 = 0;
  v14 = v9;
  do
  {
    v15 = v14;
    v14 = v12;
    v17 = *v15;
    v16 = v15[1];
    v18 = *v16;
    v19 = **v15;
    v20 = v18 >= v19;
    if (v18 == v19)
    {
      v20 = *(v16 + 3) + *(v16 + 5) >= *(v17 + 3) + *(v17 + 5);
    }

    if (v20)
    {
      goto LABEL_28;
    }

    for (i = v13; ; i -= 8)
    {
      *(v9 + i + 8) = v17;
      if (!i)
      {
        v15 = v9;
        goto LABEL_27;
      }

      v17 = *(v9 + i - 8);
      v22 = *v17;
      if (v18 != v22)
      {
        break;
      }

      if (*(v16 + 3) + *(v16 + 5) >= *(v17 + 3) + *(v17 + 5))
      {
        goto LABEL_27;
      }

LABEL_25:
      --v15;
    }

    if (v18 < v22)
    {
      goto LABEL_25;
    }

    v15 = (v9 + i);
LABEL_27:
    *v15 = v16;
LABEL_28:
    v12 = v14 + 1;
    v13 += 8;
  }

  while (v14 + 1 != a2);
  return result;
}

void std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*a1);
    std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 192);
    v4 = (v2 + 24);
    v5 = (v2 + 48);
    v17[0] = v2 + 24;
    v17[1] = v2 + 48;
    v6 = (v2 + 120);
    v7 = (v2 + 144);
    v17[2] = v2 + 120;
    v17[3] = v2 + 144;
    v8 = (v2 + 72);
    v17[4] = v2 + 168;
    v17[5] = v2 + 72;
    md::FrameGraphResourcePools::cleanup(v3, v17);
    v9 = *(v2 + 168);
    if (v9)
    {
      *(v2 + 176) = v9;
      operator delete(v9);
    }

    v10 = *v7;
    if (*v7)
    {
      *(v2 + 152) = v10;
      operator delete(v10);
    }

    v11 = *v6;
    if (*v6)
    {
      *(v2 + 128) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      *(v2 + 104) = v12;
      operator delete(v12);
    }

    v13 = *v8;
    if (*v8)
    {
      *(v2 + 80) = v13;
      operator delete(v13);
    }

    v14 = *v5;
    if (*v5)
    {
      *(v2 + 56) = v14;
      operator delete(v14);
    }

    v15 = *v4;
    if (*v4)
    {
      *(v2 + 32) = v15;
      operator delete(v15);
    }

    v16 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v16;
      operator delete(v16);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::FrameGraphBuilder::~FrameGraphBuilder(md::FrameGraphBuilder *this)
{
  v2 = *(this + 13);
  v14 = 0;
  v15 = 0;
  __p = 0;
  v3 = 0;
  if (v2)
  {
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  std::vector<md::FrameGraphPhysicalResource *>::__init_with_size[abi:nn200100]<std::ranges::elements_view<std::ranges::ref_view<std::unordered_map<md::FrameGraphLogicalResource *,md::FrameGraphPhysicalResource *>>,1ul>::__iterator<true>,std::ranges::elements_view<std::ranges::ref_view<std::unordered_map<md::FrameGraphLogicalResource *,md::FrameGraphPhysicalResource *>>,1ul>::__iterator<true>>(&__p, v2, v3);
  v5 = *(this + 23);
  v12[0] = this;
  v12[1] = this + 24;
  v6 = (this + 128);
  v12[2] = this + 128;
  v12[3] = 0;
  v7 = (this + 152);
  v12[4] = this + 152;
  v12[5] = &__p;
  md::FrameGraphResourcePools::cleanup(v5, v12);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v8 = *v7;
  if (*v7)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  v9 = *v6;
  if (*v6)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::~__hash_table(this + 48);
  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

void md::FrameGraphResourcePools::cleanup(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 32);
  if (!v4)
  {
    goto LABEL_43;
  }

  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    goto LABEL_42;
  }

  do
  {
    v7 = *v5;
    if (!std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__erase_unique<ggl::CommandBuffer *>(a1, *v5))
    {
      goto LABEL_38;
    }

    *(v7 + 16) = 0;
    *(v7 + 8) = 0;
    *(v7 + 48) = *(v7 + 40);
    *(v7 + 80) = *(v7 + 72);
    *(v7 + 112) = *(v7 + 104);
    *(v7 + 144) = *(v7 + 136);
    *(v7 + 176) = *(v7 + 168);
    v9 = *(v7 + 200);
    v8 = *(v7 + 208);
    if (v8 != v9)
    {
      do
      {
        v10 = v8 - 80;
        std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v8 - 32);
        v8 = v10;
      }

      while (v10 != v9);
    }

    *(v7 + 208) = v9;
    v12 = *(v7 + 232);
    v11 = *(v7 + 240);
    if (v11 != v12)
    {
      do
      {
        v13 = v11 - 64;
        std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v11 - 32);
        v11 = v13;
      }

      while (v13 != v12);
    }

    *(v7 + 240) = v12;
    v14 = *(v7 + 272);
    v15 = *(v7 + 280);
    if (v15 == v14)
    {
      v20 = (v7 + 304);
      v15 = *(v7 + 272);
    }

    else
    {
      v16 = *(v7 + 296);
      v17 = &v14[v16 >> 8];
      v18 = *v17;
      v19 = *v17 + 16 * v16;
      v20 = (v7 + 304);
      v21 = *(v14 + (((*(v7 + 304) + v16) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v7 + 304) + v16);
      if (v19 != v21)
      {
        do
        {
          v84 = *(v19 + 8);
          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v84);
            v18 = *v17;
          }

          v19 += 16;
          if (v19 - v18 == 4096)
          {
            v85 = v17[1];
            ++v17;
            v18 = v85;
            v19 = v85;
          }
        }

        while (v19 != v21);
        v14 = *(v7 + 272);
        v15 = *(v7 + 280);
      }
    }

    *v20 = 0;
    v22 = v15 - v14;
    if (v22 >= 3)
    {
      do
      {
        operator delete(*v14);
        v86 = *(v7 + 280);
        v14 = (*(v7 + 272) + 8);
        *(v7 + 272) = v14;
        v22 = (v86 - v14) >> 3;
      }

      while (v22 > 2);
    }

    if (v22 == 1)
    {
      v23 = 128;
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_17;
      }

      v23 = 256;
    }

    *(v7 + 296) = v23;
LABEL_17:
    v24 = *(v7 + 320);
    v25 = *(v7 + 328);
    if (v25 == v24)
    {
      v30 = (v7 + 352);
      v25 = *(v7 + 320);
    }

    else
    {
      v26 = *(v7 + 344);
      v27 = &v24[v26 >> 7];
      v28 = *v27;
      v29 = *v27 + 32 * (v26 & 0x7F);
      v30 = (v7 + 352);
      v31 = *(v24 + (((*(v7 + 352) + v26) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v7 + 352) + v26) & 0x7F);
      if (v29 != v31)
      {
        do
        {
          v87 = *(v29 + 24);
          if (v87)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v87);
            v28 = *v27;
          }

          v29 += 32;
          if (v29 - v28 == 4096)
          {
            v88 = v27[1];
            ++v27;
            v28 = v88;
            v29 = v88;
          }
        }

        while (v29 != v31);
        v24 = *(v7 + 320);
        v25 = *(v7 + 328);
      }
    }

    *v30 = 0;
    v32 = v25 - v24;
    if (v32 >= 3)
    {
      do
      {
        operator delete(*v24);
        v89 = *(v7 + 328);
        v24 = (*(v7 + 320) + 8);
        *(v7 + 320) = v24;
        v32 = (v89 - v24) >> 3;
      }

      while (v32 > 2);
    }

    if (v32 == 1)
    {
      v33 = 64;
      goto LABEL_25;
    }

    if (v32 == 2)
    {
      v33 = 128;
LABEL_25:
      *(v7 + 344) = v33;
    }

    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v35 = a1[6];
    v34 = a1[7];
    if (v35 < v34)
    {
      *v35 = v7;
      v42 = (v35 + 1);
    }

    else
    {
      v36 = a1[5];
      v37 = (v35 - v36) >> 3;
      if ((v37 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v38 = v34 - v36;
      v39 = v38 >> 2;
      if (v38 >> 2 <= (v37 + 1))
      {
        v39 = v37 + 1;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v40 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v39;
      }

      if (v40)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v40);
      }

      v41 = (8 * v37);
      *v41 = v7;
      v42 = 8 * v37 + 8;
      v43 = a1[5];
      v44 = a1[6] - v43;
      v45 = v41 - v44;
      memcpy(v41 - v44, v43, v44);
      v46 = a1[5];
      a1[5] = v45;
      a1[6] = v42;
      a1[7] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    a1[6] = v42;
LABEL_38:
    ++v5;
  }

  while (v5 != v6);
  v2 = a2;
  v4 = *(a2 + 32);
  v5 = *v4;
LABEL_42:
  v4[1] = v5;
LABEL_43:
  v47 = *(v2 + 8);
  if (!v47)
  {
    goto LABEL_51;
  }

  v49 = *v47;
  v48 = v47[1];
  if (*v47 == v48)
  {
    goto LABEL_50;
  }

  while (2)
  {
    v50 = **v49;
    if (v50 >= 3)
    {
      if (v50 == 3 && a1[16])
      {
        v51 = a1 + 19;
LABEL_47:
        md::FrameGraphLogicalResource::~FrameGraphLogicalResource(*v49);
        *v52 = *v51;
        *v51 = v52;
      }
    }

    else
    {
      v51 = a1 + 25;
      if (a1[22])
      {
        goto LABEL_47;
      }
    }

    if (++v49 != v48)
    {
      continue;
    }

    break;
  }

  v47 = *(v2 + 8);
  v49 = *v47;
LABEL_50:
  v47[1] = v49;
LABEL_51:
  v53 = *v2;
  if (!*v2)
  {
    goto LABEL_60;
  }

  v55 = *v53;
  v54 = v53[1];
  if (*v53 == v54)
  {
    goto LABEL_59;
  }

  while (2)
  {
    if (*(*v55 + 48))
    {
      if (*(*v55 + 48) == 1 && a1[28])
      {
        v56 = a1 + 31;
LABEL_56:
        md::FrameGraphPass::~FrameGraphPass(*v55);
        *v57 = *v56;
        *v56 = v57;
      }
    }

    else if (a1[34])
    {
      v56 = a1 + 37;
      goto LABEL_56;
    }

    if (++v55 != v54)
    {
      continue;
    }

    break;
  }

  v53 = *v2;
  v55 = **v2;
LABEL_59:
  v53[1] = v55;
LABEL_60:
  v58 = *(v2 + 16);
  if (v58)
  {
    v59 = *v58;
    v60 = v58[1];
    if (*v58 != v60)
    {
      do
      {
        v61 = *v59;
        v62 = *(*v59 + 8);
        if (std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__erase_unique<ggl::CommandBuffer *>(a1 + 50, v62))
        {
          ggl::RenderQueue::clearBuffersToSynchronize(v62);
          ggl::RenderQueue::clearTexturesToSynchronize(v62);
          ggl::RenderQueue::clearTexturesToOptimizeForGPU(v62);
          ggl::RenderQueue::clearTexturesToOptimizeForCPU(v62);
          *(v62 + 112) = *(v62 + 104);
          *(v62 + 80) = *(v62 + 72);
          *v62 = 0u;
          *(v62 + 16) = 0u;
          *(v62 + 32) = 0u;
          *(v62 + 48) = 0;
          *(v62 + 52) = 0;
          *(v62 + 56) = 0;
          *(v62 + 60) = 0;
          *(v62 + 64) = 0;
          ggl::RenderQueue::setRenderTransaction(v62, 0, 0);
          v64 = a1[56];
          v63 = a1[57];
          if (v64 < v63)
          {
            *v64 = v62;
            v71 = (v64 + 1);
          }

          else
          {
            v65 = a1[55];
            v66 = (v64 - v65) >> 3;
            if ((v66 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v67 = v63 - v65;
            v68 = v67 >> 2;
            if (v67 >> 2 <= (v66 + 1))
            {
              v68 = v66 + 1;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFF8)
            {
              v69 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v69 = v68;
            }

            if (v69)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v69);
            }

            v70 = (8 * v66);
            *v70 = v62;
            v71 = 8 * v66 + 8;
            v72 = a1[55];
            v73 = a1[56] - v72;
            v74 = v70 - v73;
            memcpy(v70 - v73, v72, v73);
            v75 = a1[55];
            a1[55] = v74;
            a1[56] = v71;
            a1[57] = 0;
            if (v75)
            {
              operator delete(v75);
            }
          }

          a1[56] = v71;
        }

        if (a1[46])
        {
          (**v61)(v61);
          *v61 = a1[49];
          a1[49] = v61;
        }

        v59 += 8;
      }

      while (v59 != v60);
      v58 = *(v2 + 16);
      v59 = *v58;
    }

    v58[1] = v59;
  }

  v76 = *(v2 + 24);
  if (v76)
  {
    v77 = *v76;
    v78 = v76[1];
    if (*v76 != v78)
    {
      do
      {
        v79 = *v77;
        if (*v77 && a1[40])
        {
          (**v79)(*v77);
          *v79 = a1[43];
          a1[43] = v79;
        }

        ++v77;
      }

      while (v77 != v78);
      v76 = *(v2 + 24);
      v77 = *v76;
    }

    v76[1] = v77;
  }

  v80 = *(v2 + 40);
  if (v80)
  {
    v81 = *v80;
    v82 = v80[1];
    if (*v80 != v82)
    {
      do
      {
        v83 = *v81;
        (***v81)(*v81);
        if (a1[66])
        {
          *v83 = a1[69];
          a1[69] = v83;
        }

        ++v81;
      }

      while (v81 != v82);
      v80 = *(v2 + 40);
      v81 = *v80;
    }

    v80[1] = v81;
  }
}

uint64_t std::vector<md::FrameGraphPhysicalResource *>::__init_with_size[abi:nn200100]<std::ranges::elements_view<std::ranges::ref_view<std::unordered_map<md::FrameGraphLogicalResource *,md::FrameGraphPhysicalResource *>>,1ul>::__iterator<true>,std::ranges::elements_view<std::ranges::ref_view<std::unordered_map<md::FrameGraphLogicalResource *,md::FrameGraphPhysicalResource *>>,1ul>::__iterator<true>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<gdc::Registry *>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t md::Renderer::setPassList(uint64_t a1, md::PassList **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    md::PassList::rootRenderQueue(v4);
    md::PassList::rootRenderQueue(*a2);
    operator new();
  }

  v5 = *a2;
  *a2 = 0;
  result = *(a1 + 24);
  *(a1 + 24) = v5;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void sub_1B2896BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, void *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _Unwind_Exception *exception_objecta, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, std::__shared_weak_count *a46)
{
  ggl::BufferMemory::~BufferMemory((v48 - 152));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v47 + 37));
  std::__list_imp<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::clear(a13);
  ggl::RenderItem::~RenderItem((v47 + 19));
  v49 = v47[18];
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  v50 = v47[16];
  v47[16] = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = v47[15];
  v47[15] = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = v47[14];
  v47[14] = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = v47[13];
  v47[13] = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = v47[12];
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  v55 = v47[10];
  v47[10] = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = v47[9];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = v47[7];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  v58 = v47[5];
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  v59 = v47[3];
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  v60 = v47[1];
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  MEMORY[0x1B8C62190](v47, 0x10F0C40B254EF16);
  std::unique_ptr<md::GridRenderResources>::reset[abi:nn200100](a19, 0);
  *v46 = a11;
  v61 = v46[1];
  if (v61)
  {
    v46[2] = v61;
    operator delete(v61);
  }

  MEMORY[0x1B8C62190](v46, 0x10A1C40581CDB8FLL);
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a46);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  STACK[0x210] = a25;
  std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x210]);
  _Unwind_Resume(a1);
}

ggl::CommonMesh::Pos2UVMesh *ggl::CommonMesh::Pos2UVMesh::Pos2UVMesh(ggl::CommonMesh::Pos2UVMesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F29E4128;
  *(this + 2) = &unk_1F29E4148;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1ED66A678);
  *this = &unk_1F29E3FF0;
  *(this + 2) = &unk_1F29E4010;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F29E4168;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::CommonMesh::bufferPos2UVReflection, 0, 6, 0);
  v9[4] = &unk_1F2A19000;
  v9[29] = &unk_1F2A19020;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::attributesReflection(void)::r = &ggl::CommonMesh::bufferPos2UVReflection;
    }

    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::attributesReflection(void)::r;
    qword_1ED66A678 = 1;
  }
}

void ggl::Textured::Pos2DUVPipelineSetup::typedReflection(ggl::Textured::Pos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Textured::Pos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED670230 = &ggl::Textured::pipelineDataPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1ED670238 = 0;
    {
      ggl::Textured::pipelineDataPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED6701E8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED6701F0 = ggl::Textured::TileScalar::reflection(void)::reflection;
    }

    qword_1ED670240 = &ggl::Textured::pipelineDataPos2DUVPipelineConstantStructs(void)::ref;
    unk_1ED670248 = xmmword_1B33B07A0;
  }
}

void ggl::Clut::Pos2DUVPipelineSetup::typedReflection(ggl::Clut::Pos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Clut::Pos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED670710 = &ggl::Clut::pipelineDataPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1ED670718 = 0;
    {
      ggl::Clut::pipelineDataPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66A818 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A820 = ggl::Clut::Variation::reflection(void)::reflection;
    }

    qword_1ED670720 = &ggl::Clut::pipelineDataPos2DUVPipelineConstantStructs(void)::ref;
    unk_1ED670728 = xmmword_1B33B0A70;
  }
}

void ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup::typedReflection(ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED66BB80 = &ggl::TextureWithReverseAlpha::pipelineDataPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1ED66BB88 = 0;
    {
      ggl::TextureWithReverseAlpha::pipelineDataPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66BB68 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66BB70 = ggl::TextureWithReverseAlpha::ReverseAlpha::reflection(void)::reflection;
    }

    qword_1ED66BB90 = &ggl::TextureWithReverseAlpha::pipelineDataPos2DUVPipelineConstantStructs(void)::ref;
    unk_1ED66BB98 = xmmword_1B33B07A0;
  }
}

uint64_t cmdBufferLocation(void *a1, unsigned int a2)
{
  v3 = a1;
  [v3 standardCommandBufferSelector];
  v4 = *(v6 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4 + 2 * a2;
}

void md::RouteLineSharedResources::RouteLineSharedResources(md::RouteLineSharedResources *this, const ggl::StandardLibrary *a2, AlphaAtlas *a3, DistanceAtlas *a4, const RenderTargetFormat *a5, int a6)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (a6)
  {
    operator new();
  }

  operator new();
}

void sub_1B289B64C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](v3, 0);
  v5 = *(v1 + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 23);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 21);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 19);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 17);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v1 + 15);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(v1 + 13);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  md::RouteLineSharedRenderStates::~RouteLineSharedRenderStates(v1);
  _Unwind_Resume(a1);
}

void ggl::RouteLine::BasePipelineSetup::typedReflection(ggl::RouteLine::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::RouteLine::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED66A338 = &ggl::RouteLine::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED66A340 = 0;
    {
      ggl::RouteLine::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED66A2C0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A2C8 = ggl::RouteLine::Style::reflection(void)::reflection;
    }

    qword_1ED66A348 = &ggl::RouteLine::pipelineDataBasePipelineConstantStructs(void)::ref;
    *algn_1ED66A350 = xmmword_1B33B07A0;
  }
}

void ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::attributesReflection(void)::r = &ggl::RouteLine::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A3A8 = 1;
  }
}

void ggl::DottedRouteLine::BasePipelineSetup::typedReflection(ggl::DottedRouteLine::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::typedReflection();
    ggl::DottedRouteLine::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED65EDD8 = &ggl::DottedRouteLine::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED65EDE0 = 0;
    {
      ggl::DottedRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED65EDC0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED65EDC8 = ggl::RouteLine::Style::reflection(void)::reflection;
    }

    qword_1ED65EDE8 = &ggl::DottedRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref;
    *algn_1ED65EDF0 = xmmword_1B33B0910;
  }
}

void ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::attributesReflection(void)::r = &ggl::DottedRouteLine::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::attributesReflection(void)::r;
    *algn_1ED65D3D0 = 1;
  }
}

uint64_t gss::fixedPoint8_0Decoder<gss::PropertyID>(uint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 > 0x1E9)
  {
    return 1;
  }

  v6 = *&asc_1B341D4EA[2 * a4];
  if (v6 == 509)
  {
    return 1;
  }

  if (a3 == 8)
  {
    v9 = *(a1 + 24);
    v11 = a1[1];
    v10 = a1[2];
    v12 = v10 + 2;
    if (!v9)
    {
      v12 = v10 + 1;
    }

    if (v11 >= v12)
    {
      v22 = v10 + 1;
      v23 = *a1;
      if (*(a1 + 24))
      {
        v24 = *(v23 + v10);
        if (v22 >= v11)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v23 + v22);
        }

        a1[2] = v22;
        v26 = ((v25 & (0xFFFF << (8 - v9))) >> (8 - v9)) | ((((1 << (8 - v9)) + 255) & v24) << v9);
      }

      else
      {
        LOBYTE(v26) = *(v23 + v10);
        a1[2] = v22;
      }

      LOWORD(v27) = v6;
      BYTE2(v27) = 0;
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v27, &v28);
      *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a2 + 48, v6) = v26;
      return 1;
    }

    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v13 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 292;
      v31 = 2082;
      v32 = "Could not read fixed point 8.0.";
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v14 = MEMORY[0x1B8C61C80](a6, 292);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " STYL Parse Error Here: ", 24);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not read fixed point 8.0.", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  }

  else
  {
    if (GEOGetGeoCSSStyleSheetLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoCSSStyleSheetLog_onceToken, &__block_literal_global_51257);
    }

    v17 = GEOGetGeoCSSStyleSheetLog_log;
    if (os_log_type_enabled(GEOGetGeoCSSStyleSheetLog_log, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp";
      v29 = 1024;
      v30 = 291;
      v31 = 2082;
      v32 = "Found fixed point 8.0 property with strange number of bits.";
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", &v27, 0x1Cu);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StylePropertySet.cpp", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, ":", 1);
    v18 = MEMORY[0x1B8C61C80](a6, 291);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " STYL Parse Error Here: ", 24);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Found fixed point 8.0 property with strange number of bits.", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  }

  return 0;
}

void ggl::RouteLine::PatternedBasePipelineSetup::typedReflection(ggl::RouteLine::PatternedBasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::RouteLine::PatternedBasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED66A308 = &ggl::RouteLine::pipelineDataPatternedBasePipelineDeviceStructs(void)::ref;
    qword_1ED66A310 = 0;
    {
      ggl::RouteLine::pipelineDataPatternedBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED66A2A0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A2A8 = ggl::PatternedRibbon::Style::reflection(void)::reflection;
      unk_1ED66A2B0 = ggl::RouteLine::Style::reflection(void)::reflection;
    }

    qword_1ED66A318 = &ggl::RouteLine::pipelineDataPatternedBasePipelineConstantStructs(void)::ref;
    unk_1ED66A320 = xmmword_1B33B11D0;
  }
}

void ggl::RouteLine::RouteLineMaskPipelineSetup::typedReflection(ggl::RouteLine::RouteLineMaskPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::RouteLine::RouteLineMaskPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED66A2D8 = &ggl::RouteLine::pipelineDataRouteLineMaskPipelineDeviceStructs(void)::ref;
    qword_1ED66A2E0 = 0;
    {
      ggl::RouteLine::pipelineDataRouteLineMaskPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66A288 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A290 = ggl::RouteLine::Style::reflection(void)::reflection;
    }

    qword_1ED66A2E8 = &ggl::RouteLine::pipelineDataRouteLineMaskPipelineConstantStructs(void)::ref;
    *algn_1ED66A2F0 = xmmword_1B33B0910;
  }
}

void ggl::RouteLineAlphaReset::BasePipelineSetup::typedReflection(ggl::RouteLineAlphaReset::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::RouteLineAlphaReset::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66C8B0 = &ggl::RouteLineAlphaReset::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED66C8B8 = 0;
    {
      ggl::RouteLineAlphaReset::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66C888 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66C890 = ggl::Ribbon::Style::reflection(void)::reflection;
      unk_1ED66C898 = ggl::RouteLineAlphaReset::FadeParams::reflection(void)::reflection;
    }

    qword_1ED66C8C0 = &ggl::RouteLineAlphaReset::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED66C8C8 = xmmword_1B33B09E0;
  }
}

void ggl::RouteLineTraffic::BasePipelineSetup::typedReflection(ggl::RouteLineTraffic::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::RouteLineTraffic::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66D400 = &ggl::RouteLineTraffic::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED66D408 = 0;
    {
      ggl::RouteLineTraffic::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66D3E8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66D3F0 = ggl::RouteLineTraffic::Style::reflection(void)::reflection;
    }

    qword_1ED66D410 = &ggl::RouteLineTraffic::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED66D418 = xmmword_1B33B07A0;
  }
}

void ggl::TexturedAnimatedRibbon::BasePipelineSetup::typedReflection(ggl::TexturedAnimatedRibbon::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::typedReflection();
    ggl::TexturedAnimatedRibbon::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED65E9B8 = &ggl::TexturedAnimatedRibbon::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED65E9C0 = 0;
    {
      ggl::TexturedAnimatedRibbon::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED65E9A0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED65E9A8 = ggl::TexturedAnimatedRibbon::Style::reflection(void)::reflection;
    }

    qword_1ED65E9C8 = &ggl::TexturedAnimatedRibbon::pipelineDataBasePipelineConstantStructs(void)::ref;
    *algn_1ED65E9D0 = xmmword_1B33B0A70;
  }
}

void ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::attributesReflection(void)::r = &ggl::TexturedAnimatedRibbon::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::attributesReflection(void)::r;
    *algn_1ED65D3B0 = 1;
  }
}

void **std::unique_ptr<md::RouteLineSharedResources>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::~__hash_table((v2 + 33));
    v3 = v2[30];
    v2[30] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[29];
    v2[29] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[28];
    v2[28] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    md::RouteLineSharedPipelineStates::~RouteLineSharedPipelineStates((v2 + 12));
    md::RouteLineSharedRenderStates::~RouteLineSharedRenderStates(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<md::RouteLineArrowSharedResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::attributesReflection(void)::r = &ggl::ManeuverPoint::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A5C8 = 1;
  }
}

uint64_t **std::unique_ptr<md::CRouteRenderResources>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    v2[5] = 0;
    if (v3)
    {
      std::default_delete<md::ManeuverPointSharedResources>::operator()[abi:nn200100](v3);
    }

    std::unique_ptr<md::RouteLineArrowSharedResources>::reset[abi:nn200100](v2 + 4, 0);
    std::unique_ptr<md::RouteLineSharedResources>::reset[abi:nn200100](v2 + 3, 0);
    v4 = v2[1];
    v2[1] = 0;
    if (v4)
    {
      MEMORY[0x1B8C62190](v4, 0x1000C4049ECCB0CLL);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4049ECCB0CLL);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::RouteLayoutInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 88);
    v3 = *(v2 + 64);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = (v2 + 24);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = v2;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::BuildingRenderLayer::BuildingRenderLayer(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = 14;
  [*(a2 + 104) format];
  [v5 standardCommandBufferSelector];
  v8[0] = *(*(v15 + 8) + 154);
  [v5 standardCommandBufferSelector];
  v8[1] = *(*(v14 + 8) + 156);
  [v5 standardCommandBufferSelector];
  v8[2] = *(*(v13 + 8) + 178);
  [v5 standardCommandBufferSelector];
  v8[3] = *(*(v12 + 8) + 188);
  [v5 standardCommandBufferSelector];
  v8[4] = *(*(v11 + 8) + 158);
  [v5 standardCommandBufferSelector];
  v8[5] = *(*(v10 + 8) + 180);
  [v5 standardCommandBufferSelector];
  v8[6] = *(*(v9 + 8) + 190);
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v16, v8, 7);
  v6 = v5;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v18, &v7, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v17 != v16)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v17 - v16) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = 26;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B1280;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v18;
  *(a1 + 336) = v19;
  *(a1 + 344) = 1;
  *a1 = &unk_1F2A2E988;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B289E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10, void **a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__function::__value_func<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v43);
  std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v42);
  std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v41);
  std::__function::__value_func<void ()(ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](&a35);
  std::__function::__value_func<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a39);
  MEMORY[0x1B8C62190](v41, 0x10A0C405CD4001ALL);
  v45 = *(v40 + 336);
  if (v45)
  {
    *(v40 + 344) = v45;
    operator delete(v45);
  }

  a22 = (v40 + 304);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a22);
  v46 = *(v40 + 280);
  if (v46)
  {
    *(v40 + 288) = v46;
    operator delete(v46);
  }

  v47 = *(v40 + 264);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  v48 = *(v40 + 248);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(v40 + 232);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  v50 = *(v40 + 216);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  v51 = *(v40 + 200);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  v52 = *(v40 + 184);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v53 = *(v40 + 168);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  v54 = *(v40 + 152);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  v55 = *(v40 + 136);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  v56 = *(v40 + 120);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = *(v40 + 104);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v40 + 88), 0);
  v58 = *(v40 + 80);
  *(v40 + 80) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *(v40 + 72);
  *(v40 + 72) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *(v40 + 64);
  *(v40 + 64) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(v40 + 56);
  *(v40 + 56) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *(v40 + 48);
  *(v40 + 48) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100]((v40 + 40), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100](a10, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkFlat::LandmarkPipelineSetup>>::reset[abi:nn200100]((v40 + 24), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::SpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100](a11, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseLandmark::BuildingPipelineSetup>>::reset[abi:nn200100]((v40 + 8), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkDepth::BuildingPipelineSetup>>::reset[abi:nn200100](v40, 0);

  MEMORY[0x1B8C62190](v40, 0x1020C403E18FA89);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v39 + 52));
  std::unique_ptr<md::LandmarkRenderResources>::reset[abi:nn200100](v39 + 50, 0);
  std::unique_ptr<md::BuildingRenderResources>::reset[abi:nn200100](v39 + 49, 0);
  v63 = v39[48];
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v63);
  }

  md::CartographicTiledVectorRenderLayer<md::BuildingTileDataRenderable>::~CartographicTiledVectorRenderLayer(v39);

  _Unwind_Resume(a1);
}

void md::BuildingRenderResources::BuildingRenderResources(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  bzero((a1 + 8), 0x2F0uLL);
  *(a1 + 872) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 880) = 32;
  v4 = malloc_type_malloc(0xF10uLL, 0x1020040EDED9539uLL);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + 864) = v4;
  *(a1 + 872) = v4;
  v5 = [v3 shaderLibrary];
  *a1 = 1065353216;
  v7 = +[VKPlatform sharedPlatform];
  *(a1 + 768) = [v7 supportsBuildingStrokes];
  *(a1 + 769) = [v7 supports3DBuildingStrokes];
  *(a1 + 770) = [v7 supportsBuildingShadows];
  *(a1 + 771) = [v7 supports3DBuildings];
  *(a1 + 772) = [v7 supportsPerFragmentLighting];
  v6 = *(*(v5 + 80) + 184);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B28A26B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  std::__function::__value_func<ggl::PrefilteredLine::PrefilteredLinePipelineSetup * ()(void)>::~__value_func[abi:nn200100](v59);
  std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v58);
  std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v57);
  std::__function::__value_func<void ()(ggl::PrefilteredLine::PrefilteredLinePipelineSetup *)>::~__value_func[abi:nn200100](&a52);
  std::__function::__value_func<ggl::PrefilteredLine::PrefilteredLinePipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a56);
  MEMORY[0x1B8C62190](v57, 0x10A0C405CD4001ALL);

  md::FrameAllocator<ggl::RenderItem>::reset(v56 + 864);
  free(*(v56 + 864));
  v61 = *a10;
  if (*a10)
  {
    *(v56 + 848) = v61;
    operator delete(v61);
  }

  a17 = (v56 + 808);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  v62 = *(v56 + 784);
  if (v62)
  {
    *(v56 + 792) = v62;
    operator delete(v62);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v56 + 752), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v56 + 744), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v56 + 736), 0);
  v63 = *(v56 + 728);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v63);
  }

  v64 = *(v56 + 712);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  v65 = *(v56 + 696);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  v66 = *(v56 + 680);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  v67 = *(v56 + 664);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  v68 = *(v56 + 648);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  v69 = *(v56 + 632);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  v70 = *(v56 + 616);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::PrefilteredLine::PrefilteredLinePipelineSetup>>::reset[abi:nn200100]((v56 + 600), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingShadow::MeshPipelineSetup>>::reset[abi:nn200100]((v56 + 592), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 584), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 576), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100]((v56 + 568));
  std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 560), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100]((v56 + 552));
  std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 544), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 536), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 528), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 520), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 512), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 504), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingTopDepth::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 496), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFacadeDepth::BuildingPipelineSetup>>::reset[abi:nn200100]((v56 + 488), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlat::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v56 + 480), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup>>::reset[abi:nn200100]((v56 + 472), 0);
  v71 = *(v56 + 464);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  }

  v72 = *(v56 + 448);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  }

  v73 = *(v56 + 432);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  v74 = *(v56 + 416);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }

  v75 = *(v56 + 400);
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }

  v76 = *(v56 + 384);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v76);
  }

  v77 = *(v56 + 368);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }

  v78 = *(v56 + 352);
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v78);
  }

  v79 = *(v56 + 336);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v79);
  }

  v80 = *(v56 + 320);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
  }

  v81 = *(v56 + 304);
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v81);
  }

  v82 = *(v56 + 288);
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
  }

  v83 = *(v56 + 272);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v83);
  }

  v84 = *(v56 + 256);
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v84);
  }

  v85 = *(v56 + 240);
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v85);
  }

  v86 = *(v56 + 224);
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v86);
  }

  v87 = *(v56 + 208);
  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v87);
  }

  v88 = *(v56 + 192);
  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v88);
  }

  v89 = *(v56 + 176);
  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v89);
  }

  v90 = *(v56 + 160);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v90);
  }

  v91 = *(v56 + 144);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v91);
  }

  v92 = *(v56 + 128);
  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v92);
  }

  v93 = *(v56 + 112);
  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v93);
  }

  v94 = *(v56 + 96);
  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v94);
  }

  v95 = *(v56 + 80);
  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v95);
  }

  v96 = *(v56 + 64);
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v96);
  }

  v97 = *(v56 + 48);
  if (v97)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v97);
  }

  v98 = *(v56 + 32);
  if (v98)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v98);
  }

  _Unwind_Resume(a1);
}

void ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::attributesReflection(void)::r = &ggl::BuildingFlatStroke::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::attributesReflection(void)::r;
    *algn_1ED66A4C8 = 1;
  }
}

void ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::attributesReflection(void)::r = &ggl::PolygonBase::compressedVboReflection;
    }

    ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::attributesReflection(void)::r;
    *algn_1ED66A628 = 1;
  }
}

void ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::attributesReflection(void)::r = &ggl::BuildingFacade::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A570 = 1;
  }
}

void ggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::attributesReflection(void)::r = &ggl::BuildingPointyRoof::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A4B0 = 1;
  }
}

void ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::attributesReflection(void)::r = &ggl::PrefilteredLine::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A520 = 1;
  }
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_0,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_0>,ggl::BuildingFlat::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E76F0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::BuildingFlat::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::BuildingFlat::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlat::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingFlat::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingFlat::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_1,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_1>,ggl::BuildingFacadeDepth::BuildingPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E77D8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::BuildingFacadeDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::BuildingFacadeDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFacadeDepth::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingFacadeDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingFacadeDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_2,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_2>,ggl::BuildingTopDepth::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E7868;
  a2[1] = v2;
  return result;
}

uint64_t gss::StyleSheet<gss::PropertyID>::decodeStyles(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v337 = *MEMORY[0x1E69E9840];
  v9 = gss::StylFile::chapter(a2, 0x15u);
  v10 = v9;
  memset(&__p, 0, sizeof(__p));
  v11 = *(v9 + 24);
  v12 = v11 + 5;
  v13 = v9[1];
  v14 = v9[2];
  v15 = v14 + ((v11 + 5) >> 3);
  v16 = (v11 + 5) & 7;
  v17 = v14 + 1;
  if (v15 < v14 + 1)
  {
    if (*(v9 + 24))
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = v9[2];
    }

    if (v13 < v18)
    {
      goto LABEL_14;
    }

    if (*(v9 + 24))
    {
      if (v13 >= v17)
      {
        v19 = (((1 << (8 - v11)) - 1) & *(*v9 + v14)) << v11;
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    if (v13 >= v17)
    {
      LOBYTE(v19) = *(*v9 + v14);
      goto LABEL_25;
    }

LABEL_13:
    v9[2] = v15;
    *(v9 + 24) = v16;
LABEL_14:
    v21 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 524;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for inheritance list length.";
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v22 = MEMORY[0x1B8C61C80](a5, 524);
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, " STYL Parse Error Here: ", 24);
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "Could not read number of bits for inheritance list length.", 58);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "\n", 1);
    goto LABEL_333;
  }

  if (v11 <= 3)
  {
    v20 = v14 + 1;
  }

  else
  {
    v20 = v14 + 2;
  }

  if (v13 < v20)
  {
    goto LABEL_13;
  }

  v25 = *v9;
  if (*(v9 + 24))
  {
    v26 = *(v25 + v14);
    if (v17 >= v13)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v25 + v17);
    }

    v19 = ((v27 & (0xFFFF << (8 - v11))) >> (8 - v11)) | ((((1 << (8 - v11)) + 255) & v26) << v11);
    v9[2] = v17;
  }

  else
  {
    LOBYTE(v19) = *(v25 + v14);
  }

LABEL_25:
  v9[2] = v15;
  *(v9 + 24) = v16;
  *(a3 + 89) = (v19 >> 3) + 1;
  v28 = v12 & 7;
  v29 = (v12 & 7) + 5;
  v30 = v15 + (v29 >> 3);
  v31 = v29 & 7;
  v32 = v15 + 1;
  if (v30 < v15 + 1)
  {
    if (v16)
    {
      v33 = v15 + 1;
    }

    else
    {
      v33 = v15;
    }

    if (v13 < v33)
    {
      goto LABEL_38;
    }

    if (v16)
    {
      if (v13 >= v32)
      {
        LODWORD(v15) = (((1 << (8 - v16)) - 1) & *(*v9 + v15)) << v28;
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v13 >= v32)
    {
      LOBYTE(v15) = *(*v9 + v15);
      goto LABEL_49;
    }

LABEL_37:
    v9[2] = v30;
    *(v9 + 24) = v31;
LABEL_38:
    v35 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 526;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for zoom style count.";
      _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v36 = MEMORY[0x1B8C61C80](a5, 526);
    v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, " STYL Parse Error Here: ", 24);
    v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "Could not read number of bits for zoom style count.", 51);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, "\n", 1);
    goto LABEL_333;
  }

  if (v16 <= 3)
  {
    v34 = v15 + 1;
  }

  else
  {
    v34 = v15 + 2;
  }

  if (v13 < v34)
  {
    goto LABEL_37;
  }

  v39 = *v9;
  if (v16)
  {
    v40 = 8 - v16;
    v41 = *(v39 + v15);
    if (v32 >= v13)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v39 + v32);
    }

    LODWORD(v15) = (v42 >> v40) | ((((1 << v40) + 255) & v41) << v28);
    v9[2] = v32;
  }

  else
  {
    LOBYTE(v15) = *(v39 + v15);
  }

LABEL_49:
  v9[2] = v30;
  *(v9 + 24) = v31;
  *(a3 + 90) = (v15 >> 3) + 1;
  v43 = v29 & 7;
  v44 = (v29 & 7) + 5;
  v45 = v30 + (v44 >> 3);
  v46 = v44 & 7;
  v47 = v30 + 1;
  if (v45 < v30 + 1)
  {
    if (v31)
    {
      v48 = v30 + 1;
    }

    else
    {
      v48 = v30;
    }

    if (v13 < v48)
    {
      goto LABEL_62;
    }

    if (v31)
    {
      if (v13 >= v47)
      {
        LODWORD(v30) = (((1 << (8 - v31)) - 1) & *(*v9 + v30)) << v43;
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    if (v13 >= v47)
    {
      LOBYTE(v30) = *(*v9 + v30);
      goto LABEL_73;
    }

LABEL_61:
    v9[2] = v45;
    *(v9 + 24) = v46;
LABEL_62:
    v50 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 528;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for conditional style count.";
      _os_log_impl(&dword_1B2754000, v50, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v51 = MEMORY[0x1B8C61C80](a5, 528);
    v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, " STYL Parse Error Here: ", 24);
    v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, "Could not read number of bits for conditional style count.", 58);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "\n", 1);
    goto LABEL_333;
  }

  if (v31 <= 3)
  {
    v49 = v30 + 1;
  }

  else
  {
    v49 = v30 + 2;
  }

  if (v13 < v49)
  {
    goto LABEL_61;
  }

  v54 = *v9;
  if (v31)
  {
    v55 = 8 - v31;
    v56 = *(v54 + v30);
    if (v47 >= v13)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(v54 + v47);
    }

    LODWORD(v30) = (v57 >> v55) | ((((1 << v55) + 255) & v56) << v43);
    v9[2] = v47;
  }

  else
  {
    LOBYTE(v30) = *(v54 + v30);
  }

LABEL_73:
  v9[2] = v45;
  *(v9 + 24) = v46;
  *(a3 + 91) = (v30 >> 3) + 1;
  v58 = v44 & 7;
  v59 = (v44 & 7) + 5;
  v60 = v45 + (v59 >> 3);
  v61 = v59 & 7;
  v62 = v45 + 1;
  if (v60 < v45 + 1)
  {
    if (v46)
    {
      v63 = v45 + 1;
    }

    else
    {
      v63 = v45;
    }

    if (v13 < v63)
    {
      goto LABEL_86;
    }

    if (v46)
    {
      if (v13 >= v62)
      {
        v64 = (((1 << (8 - v46)) - 1) & *(*v9 + v45)) << v58;
        goto LABEL_97;
      }

      goto LABEL_85;
    }

    if (v13 >= v62)
    {
      LOBYTE(v64) = *(*v9 + v45);
      goto LABEL_97;
    }

LABEL_85:
    v9[2] = v60;
    *(v9 + 24) = v61;
LABEL_86:
    v66 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 530;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for condition count.";
      _os_log_impl(&dword_1B2754000, v66, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v67 = MEMORY[0x1B8C61C80](a5, 530);
    v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, " STYL Parse Error Here: ", 24);
    v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, "Could not read number of bits for condition count.", 50);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, "\n", 1);
    goto LABEL_333;
  }

  if (v46 <= 3)
  {
    v65 = v45 + 1;
  }

  else
  {
    v65 = v45 + 2;
  }

  if (v13 < v65)
  {
    goto LABEL_85;
  }

  v70 = *v9;
  if (v46)
  {
    v71 = 8 - v46;
    v72 = *(v70 + v45);
    if (v62 >= v13)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v70 + v62);
    }

    v64 = (v73 >> v71) | ((((1 << v71) + 255) & v72) << v58);
    v9[2] = v62;
  }

  else
  {
    LOBYTE(v64) = *(v70 + v45);
  }

LABEL_97:
  v9[2] = v60;
  *(v9 + 24) = v61;
  *(a3 + 92) = (v64 >> 3) + 1;
  v74 = v59 & 7;
  v75 = (v59 & 7) + 5;
  v76 = v60 + (v75 >> 3);
  v77 = v75 & 7;
  v78 = v60 + 1;
  v79 = v9[1];
  if (v76 < v60 + 1)
  {
    if (v61)
    {
      v80 = v60 + 1;
    }

    else
    {
      v80 = v60;
    }

    if (v79 < v80)
    {
      goto LABEL_110;
    }

    if (v61)
    {
      if (v79 >= v78)
      {
        LODWORD(v60) = (((1 << (8 - v61)) - 1) & *(*v9 + v60)) << v74;
        goto LABEL_121;
      }

      goto LABEL_109;
    }

    if (v79 >= v78)
    {
      LOBYTE(v60) = *(*v9 + v60);
      goto LABEL_121;
    }

LABEL_109:
    v9[2] = v76;
    *(v9 + 24) = v77;
LABEL_110:
    v82 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 532;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for condition attribute count.";
      _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v83 = MEMORY[0x1B8C61C80](a5, 532);
    v84 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, " STYL Parse Error Here: ", 24);
    v85 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, "Could not read number of bits for condition attribute count.", 60);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v85, "\n", 1);
    goto LABEL_333;
  }

  if (v61 <= 3)
  {
    v81 = v60 + 1;
  }

  else
  {
    v81 = v60 + 2;
  }

  if (v79 < v81)
  {
    goto LABEL_109;
  }

  v86 = *v9;
  if (v61)
  {
    v87 = 8 - v61;
    v88 = *(v86 + v60);
    if (v78 >= v79)
    {
      v89 = 0;
    }

    else
    {
      v89 = *(v86 + v78);
    }

    LODWORD(v60) = (v89 >> v87) | ((((1 << v87) + 255) & v88) << v74);
    v9[2] = v78;
  }

  else
  {
    LOBYTE(v60) = *(v86 + v60);
  }

LABEL_121:
  v9[2] = v76;
  *(v9 + 24) = v77;
  *(a3 + 93) = (v60 >> 3) + 1;
  v90 = v75 & 7;
  v91 = v76 + ((v90 + 5) >> 3);
  v92 = (v90 + 5) & 7;
  v93 = v76 + 1;
  if (v91 < v76 + 1)
  {
    if (v77)
    {
      v94 = v76 + 1;
    }

    else
    {
      v94 = v76;
    }

    if (v79 < v94)
    {
      goto LABEL_134;
    }

    if (v77)
    {
      if (v79 >= v93)
      {
        LODWORD(v76) = (((1 << (8 - v77)) - 1) & *(*v9 + v76)) << v90;
        goto LABEL_145;
      }

      goto LABEL_133;
    }

    if (v79 >= v93)
    {
      LOBYTE(v76) = *(*v9 + v76);
      goto LABEL_145;
    }

LABEL_133:
    v9[2] = v91;
    *(v9 + 24) = v92;
LABEL_134:
    v96 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 534;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of bits for style count.";
      _os_log_impl(&dword_1B2754000, v96, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v97 = MEMORY[0x1B8C61C80](a5, 534);
    v98 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, " STYL Parse Error Here: ", 24);
    v99 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v98, "Could not read number of bits for style count.", 46);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v99, "\n", 1);
    goto LABEL_333;
  }

  if (v77 <= 3)
  {
    v95 = v76 + 1;
  }

  else
  {
    v95 = v76 + 2;
  }

  if (v79 < v95)
  {
    goto LABEL_133;
  }

  v100 = *v9;
  if (v77)
  {
    v101 = 8 - v77;
    v102 = *(v100 + v76);
    if (v93 >= v79)
    {
      v103 = 0;
    }

    else
    {
      v103 = *(v100 + v93);
    }

    LODWORD(v76) = (v103 >> v101) | ((((1 << v101) + 255) & v102) << v90);
    v9[2] = v93;
  }

  else
  {
    LOBYTE(v76) = *(v100 + v76);
  }

LABEL_145:
  v104 = v76 >> 3;
  v9[2] = v91;
  *(v9 + 24) = v92;
  *(a3 + 94) = v104 + 1;
  UIntBits = geo::ibitstream::readUIntBits(v334, v9, v104 + 1);
  if ((v334[0] & 1) == 0)
  {
    v110 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 537;
      *&buf[18] = 2082;
      *&buf[20] = "Could not read number of styles.";
      _os_log_impl(&dword_1B2754000, v110, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v111 = MEMORY[0x1B8C61C80](a5, 537);
    v112 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v111, " STYL Parse Error Here: ", 24);
    v113 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v112, "Could not read number of styles.", 32);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v113, "\n", 1);
    goto LABEL_333;
  }

  v106 = HIDWORD(v334[0]);
  if (*(a1 + 76))
  {
    goto LABEL_168;
  }

  v107 = *(a1 + 72);
  if (v107 <= HIDWORD(v334[0]))
  {
    if (v107 >= HIDWORD(v334[0]))
    {
      goto LABEL_168;
    }

    if (HIDWORD(v334[0]) > *(a1 + 74))
    {
      v114 = gss::zone_mallocator::instance(UIntBits);
      v115 = pthread_rwlock_rdlock((v114 + 32));
      if (v115)
      {
        geo::read_write_lock::logFailure(v115, "read lock", v116);
      }

      v117 = malloc_type_zone_malloc(*v114, 16 * v106, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v114 + 24), 1u);
      geo::read_write_lock::unlock((v114 + 32));
      v118 = *(a1 + 64);
      v107 = *(a1 + 72);
      if (v118)
      {
        if (*(a1 + 72))
        {
          v119 = *(a1 + 72);
          v120 = v117;
          do
          {
            *v120++ = *v118;
            *v118 = 0;
            *(v118 + 8) = 0;
            v118 += 16;
            --v119;
          }

          while (v119);
        }

        geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 64);
        *(a1 + 72) = v107;
      }

      *(a1 + 74) = v106;
      *(a1 + 64) = v117;
    }

    if (v107 != v106)
    {
      bzero((*(a1 + 64) + 16 * v107), 16 * v106 - 16 * v107);
    }
  }

  else
  {
    v108 = 16 * v107 - 16 * HIDWORD(v334[0]);
    v109 = (*(a1 + 64) + 16 * HIDWORD(v334[0]) + 8);
    do
    {
      UIntBits = *v109;
      if (*v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](UIntBits);
      }

      v109 += 2;
      v108 -= 16;
    }

    while (v108);
  }

  *(a1 + 72) = v106;
LABEL_168:
  if (!v106)
  {
LABEL_322:
    if (*(a1 + 72))
    {
      v214 = *(a1 + 64);
      v215 = &v214[2 * *(a1 + 72)];
      do
      {
        v216 = *v214;
        v217 = v214[1];
        if (v217)
        {
          atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::CartoStyle<gss::PropertyID>::initConditionalStyleList(v216, a1);
        gss::CartoStyle<gss::PropertyID>::internOnDecode(v216, a1 + 232);
        if (v217)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v217);
        }

        v214 += 2;
        v218 = 1;
      }

      while (v214 != v215);
    }

    else
    {
      v218 = 1;
    }

    goto LABEL_334;
  }

  v121 = 0;
  v327 = 0;
  while (1)
  {
    v122 = gss::zone_mallocator::instance(UIntBits);
    v123 = pthread_rwlock_rdlock((v122 + 32));
    if (v123)
    {
      geo::read_write_lock::logFailure(v123, "read lock", v124);
    }

    v125 = malloc_type_zone_malloc(*v122, 0xA0uLL, 0x1081040059159DFuLL);
    atomic_fetch_add((v122 + 24), 1u);
    geo::read_write_lock::unlock((v122 + 32));
    *(v125 + 2) = 0;
    *(v125 + 1) = 0;
    *v125 = &unk_1F2A29E08;
    *(v125 + 6) = 0;
    *(v125 + 7) = 0;
    *(v125 + 4) = &unk_1F2A29E40;
    *(v125 + 5) = 0;
    *(v125 + 61) = 0;
    *(v125 + 9) = 0;
    *(v125 + 77) = 0;
    *(v125 + 11) = 0;
    *(v125 + 93) = 0;
    *(v125 + 104) = 0u;
    *(v125 + 120) = 0u;
    *(v125 + 17) = 0;
    *(v125 + 38) = 0;
    atomic_store(0, v125 + 154);
    *&v126 = v125 + 32;
    *(&v126 + 1) = v125;
    v328 = v126;
    atomic_fetch_add_explicit(v125 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v125 + 2, 1uLL, memory_order_relaxed);
    *(v125 + 5) = v125 + 32;
    *(v125 + 6) = v125;
    std::__shared_weak_count::__release_shared[abi:nn200100](v125);
    v127 = *(a1 + 64) + 16 * v121;
    v128 = *(v127 + 8);
    *v127 = v328;
    if (v128)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v128);
    }

    v129 = *(a1 + 64) + 16 * v121;
    if (*(a3 + 12))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        *__p.__r_.__value_.__l.__data_ = 0;
        __p.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        __p.__r_.__value_.__s.__data_[0] = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
      }

      if ((geo::ibitstream::readString(v10, &__p) & 1) == 0)
      {
        v252 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 545;
          *&buf[18] = 2082;
          *&buf[20] = "Could not read style name.";
          _os_log_impl(&dword_1B2754000, v252, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v253 = MEMORY[0x1B8C61C80](a5, 545);
        v254 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v253, " STYL Parse Error Here: ", 24);
        v255 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v254, "Could not read style name.", 26);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v255, "\n", 1);
        goto LABEL_333;
      }

      if (a4)
      {
        operator new[]();
      }
    }

    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = *(v10 + 24);
    v134 = *(v10 + 24) != 0;
    v135 = v10[1];
    v136 = v10[2] + 1;
    v137 = (v136 + *v10);
    while (1)
    {
      if (v135 < v134 + v136)
      {
LABEL_330:
        v219 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 554;
          *&buf[18] = 2082;
          *&buf[20] = "Could not read style score.";
          _os_log_impl(&dword_1B2754000, v219, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v220 = MEMORY[0x1B8C61C80](a5, 554);
        v221 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v220, " STYL Parse Error Here: ", 24);
        v222 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v221, "Could not read style score.", 27);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v222, "\n", 1);
        goto LABEL_333;
      }

      v138 = *(v137 - 1);
      if (v133)
      {
        v139 = v136 >= v135 ? 0 : *v137;
        v10[2] = v136;
        v138 = ((v139 & (0xFFFF << (8 - v133))) >> (8 - v133)) | ((((1 << (8 - v133)) + 255) & v138) << v133);
      }

      else
      {
        v10[2] = v136;
      }

      v132 |= (v138 & 0x7F) << v130;
      if ((v138 & 0x80) == 0)
      {
        break;
      }

      v130 += 7;
      ++v137;
      ++v136;
      if (v131++ >= 9)
      {
        goto LABEL_330;
      }
    }

    *(*v129 + 112) = v132;
    geo::ibitstream::readUIntBits(v334, v10, *(a3 + 89));
    if ((v334[0] & 1) == 0)
    {
      v256 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 558;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read number of inheritted styles.";
        _os_log_impl(&dword_1B2754000, v256, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v257 = MEMORY[0x1B8C61C80](a5, 558);
      v258 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v257, " STYL Parse Error Here: ", 24);
      v259 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v258, "Could not read number of inheritted styles.", 43);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v259, "\n", 1);
      goto LABEL_333;
    }

    for (i = HIDWORD(v334[0]); i; --i)
    {
      geo::ibitstream::readUIntBits(v334, v10, *(a3 + 94));
      if ((v334[0] & 1) == 0)
      {
        v224 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 561;
          *&buf[18] = 2082;
          *&buf[20] = "Could not read inherited style index.";
          _os_log_impl(&dword_1B2754000, v224, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v225 = MEMORY[0x1B8C61C80](a5, 561);
        v226 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v225, " STYL Parse Error Here: ", 24);
        v227 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v226, "Could not read inherited style index.", 37);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v227, "\n", 1);
        goto LABEL_333;
      }

      if (HIDWORD(v334[0]) >= v106)
      {
        v228 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 562;
          *&buf[18] = 2082;
          *&buf[20] = "Inherited style index out of bounds.";
          _os_log_impl(&dword_1B2754000, v228, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v229 = MEMORY[0x1B8C61C80](a5, 562);
        v230 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v229, " STYL Parse Error Here: ", 24);
        v231 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v230, "Inherited style index out of bounds.", 36);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v231, "\n", 1);
        goto LABEL_333;
      }

      v142 = *v129;
      *buf = HIDWORD(v334[0]);
      geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::push_back(v142 + 24, buf);
    }

    geo::ibitstream::readUIntBits(v334, v10, *(a3 + 88));
    if ((v334[0] & 1) == 0)
    {
      v260 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 567;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read property set index.";
        _os_log_impl(&dword_1B2754000, v260, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v261 = MEMORY[0x1B8C61C80](a5, 567);
      v262 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v261, " STYL Parse Error Here: ", 24);
      v263 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v262, "Could not read property set index.", 34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v263, "\n", 1);
      goto LABEL_333;
    }

    if (HIDWORD(v334[0]) >= *(a1 + 152))
    {
      v264 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 568;
        *&buf[18] = 2082;
        *&buf[20] = "Property set index out of bounds.";
        _os_log_impl(&dword_1B2754000, v264, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v265 = MEMORY[0x1B8C61C80](a5, 568);
      v266 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v265, " STYL Parse Error Here: ", 24);
      v267 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v266, "Property set index out of bounds.", 33);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v267, "\n", 1);
      goto LABEL_333;
    }

    v143 = *v129;
    v144 = *(a1 + 144);
    v145 = *(v144 + 16 * HIDWORD(v334[0]));
    v146 = *(v144 + 16 * HIDWORD(v334[0]) + 8);
    if (v146)
    {
      atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v147 = *(v143 + 96);
    *(v143 + 88) = v145;
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v147);
    }

    if (v146)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v146);
    }

    geo::ibitstream::readUIntBits(v334, v10, *(a3 + 90));
    if ((v334[0] & 1) == 0)
    {
      v268 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 572;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read number of zoom styles.";
        _os_log_impl(&dword_1B2754000, v268, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v269 = MEMORY[0x1B8C61C80](a5, 572);
      v270 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v269, " STYL Parse Error Here: ", 24);
      v271 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v270, "Could not read number of zoom styles.", 37);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v271, "\n", 1);
      goto LABEL_333;
    }

    v321 = v121;
    v148 = HIDWORD(v334[0]);
    v324 = *v129;
    geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::resize(*v129 + 40, HIDWORD(v334[0]));
    v329 = v129;
    if (v148)
    {
      v149 = 0;
      v322 = 24 * v148;
      do
      {
        v150 = *(v10 + 24);
        v151 = v10[1];
        v152 = v10[2];
        v153 = v152 + ((v150 + 8) >> 3);
        v154 = v150 & 7;
        v155 = v152 + 1;
        if (v153 >= v152 + 1)
        {
          if (v150 <= 8)
          {
            v159 = v152 + 1;
          }

          else
          {
            v159 = v152 + 2;
          }

          if (v151 < v159)
          {
LABEL_348:
            v10[2] = v153;
            *(v10 + 24) = v154;
LABEL_349:
            v236 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
              *&buf[12] = 1024;
              *&buf[14] = 578;
              *&buf[18] = 2082;
              *&buf[20] = "Could not read zoom style min zoom.";
              _os_log_impl(&dword_1B2754000, v236, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
            v237 = MEMORY[0x1B8C61C80](a5, 578);
            v238 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v237, " STYL Parse Error Here: ", 24);
            v239 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v238, "Could not read zoom style min zoom.", 35);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v239, "\n", 1);
            goto LABEL_333;
          }

          v157 = *v10;
          if (*(v10 + 24))
          {
            if (v155 >= v151)
            {
              v160 = 0;
            }

            else
            {
              v160 = *(v157 + v155);
            }

            v158 = ((v160 & (0xFFFF << (8 - v150))) >> (8 - v150)) | ((((1 << (8 - v150)) + 255) & *(v157 + v152)) << v150);
            v10[2] = v155;
            goto LABEL_229;
          }
        }

        else
        {
          if (*(v10 + 24))
          {
            v156 = v152 + 1;
          }

          else
          {
            v156 = v10[2];
          }

          if (v151 < v156)
          {
            goto LABEL_349;
          }

          if (*(v10 + 24))
          {
            if (v151 < v155)
            {
              goto LABEL_348;
            }

            v157 = *v10;
            v158 = (((1 << (8 - v150)) - 1) & *(*v10 + v152)) << v150;
            goto LABEL_229;
          }

          if (v151 < v155)
          {
            goto LABEL_348;
          }

          v157 = *v10;
        }

        LOBYTE(v158) = *(v157 + v152);
LABEL_229:
        v10[2] = v153;
        *(v10 + 24) = v154;
        v161 = v153 + 1;
        if (v151 < v153 + 1)
        {
          v10[2] = v161;
          *(v10 + 24) = v154;
          v240 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            *&buf[12] = 1024;
            *&buf[14] = 579;
            *&buf[18] = 2082;
            *&buf[20] = "Could not read zoom style max zoom.";
            _os_log_impl(&dword_1B2754000, v240, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
          v241 = MEMORY[0x1B8C61C80](a5, 579);
          v242 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v241, " STYL Parse Error Here: ", 24);
          v243 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v242, "Could not read zoom style max zoom.", 35);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v243, "\n", 1);
          goto LABEL_333;
        }

        if (v154)
        {
          if (v161 >= v151)
          {
            v162 = 0;
          }

          else
          {
            v162 = *(v157 + v161);
          }

          v163 = (v162 >> (8 - v154)) | ((((1 << (8 - v154)) + 255) & *(v157 + v153)) << v154);
          v10[2] = v161;
        }

        else
        {
          LOBYTE(v163) = *(v157 + v153);
        }

        v10[2] = v161;
        *(v10 + 24) = v154;
        geo::ibitstream::readUIntBits(v334, v10, *(a3 + 88));
        if ((v334[0] & 1) == 0)
        {
          v244 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            *&buf[12] = 1024;
            *&buf[14] = 580;
            *&buf[18] = 2082;
            *&buf[20] = "Could not read zoom style property set index.";
            _os_log_impl(&dword_1B2754000, v244, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
          v245 = MEMORY[0x1B8C61C80](a5, 580);
          v246 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v245, " STYL Parse Error Here: ", 24);
          v247 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v246, "Could not read zoom style property set index.", 45);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v247, "\n", 1);
          goto LABEL_333;
        }

        if (HIDWORD(v334[0]) >= *(a1 + 152))
        {
          v248 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            *&buf[12] = 1024;
            *&buf[14] = 581;
            *&buf[18] = 2082;
            *&buf[20] = "Zoom style property set index out of bounds.";
            _os_log_impl(&dword_1B2754000, v248, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
          v249 = MEMORY[0x1B8C61C80](a5, 581);
          v250 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v249, " STYL Parse Error Here: ", 24);
          v251 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v250, "Zoom style property set index out of bounds.", 44);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v251, "\n", 1);
          goto LABEL_333;
        }

        v164 = *(a1 + 144);
        v165 = *(v164 + 16 * HIDWORD(v334[0]));
        v166 = *(v164 + 16 * HIDWORD(v334[0]) + 8);
        if (v166)
        {
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v167 = *(v324 + 40) + v149;
        *v167 = vcvts_n_f32_u32(v158, 3uLL);
        *(v167 + 4) = vcvts_n_f32_u32(v163, 3uLL);
        v168 = *(v167 + 16);
        *(v167 + 8) = v165;
        if (v168)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v168);
        }

        v129 = v329;
        if (v166)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v166);
        }

        v149 += 24;
      }

      while (v322 != v149);
    }

    UIntBits = geo::ibitstream::readUIntBits(v334, v10, *(a3 + 91));
    if ((v334[0] & 1) == 0)
    {
      v296 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 587;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read number of conditional styles.";
        _os_log_impl(&dword_1B2754000, v296, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v297 = MEMORY[0x1B8C61C80](a5, 587);
      v298 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v297, " STYL Parse Error Here: ", 24);
      v299 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v298, "Could not read number of conditional styles.", 44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v299, "\n", 1);
      goto LABEL_333;
    }

    v169 = *v129;
    v323 = *v129;
    v318 = HIDWORD(v334[0]);
    if (!HIWORD(v334[0]) && (*(v169 + 68) & 1) == 0 && HIDWORD(v334[0]) > *(v169 + 66))
    {
      break;
    }

    if (HIDWORD(v334[0]))
    {
      goto LABEL_251;
    }

LABEL_321:
    v121 = v321 + 1;
    if (v321 + 1 == v106)
    {
      goto LABEL_322;
    }
  }

  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate((v169 + 56), HIDWORD(v334[0]));
LABEL_251:
  v317 = 0;
  while (2)
  {
    geo::ibitstream::readUIntBits(v334, v10, *(a3 + 92));
    if ((v334[0] & 1) == 0)
    {
      v300 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 592;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read number of conditions.";
        _os_log_impl(&dword_1B2754000, v300, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v301 = MEMORY[0x1B8C61C80](a5, 592);
      v302 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v301, " STYL Parse Error Here: ", 24);
      v303 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v302, "Could not read number of conditions.", 36);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v303, "\n", 1);
      goto LABEL_333;
    }

    v170 = HIDWORD(v334[0]);
    memset(v334, 0, 13);
    v325 = v170;
    geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::resize(v334, v170);
    geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::intern<geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>(v334, a1 + 448);
    if (v325)
    {
      v172 = 0;
      v319 = v334[0];
      do
      {
        v333 = 0;
        if ((gss::decodeAttributeEncoding(v10, &v333, *(a3 + 13), *(a3 + 14), a5) & 1) == 0)
        {
          v272 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            *&buf[12] = 1024;
            *&buf[14] = 598;
            *&buf[18] = 2082;
            *&buf[20] = "Could not decode attribute.";
            _os_log_impl(&dword_1B2754000, v272, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
          v273 = MEMORY[0x1B8C61C80](a5, 598);
          v274 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v273, " STYL Parse Error Here: ", 24);
          v275 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v274, "Could not decode attribute.", 27);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v275, "\n", 1);
          goto LABEL_347;
        }

        *buf = &v333;
        v173 = *(std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned char>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a3 + 16), v333, buf) + 32);
        geo::ibitstream::readUIntBits(v332, v10, *(a3 + 93));
        if ((v332[0] & 1) == 0)
        {
          v276 = GEOGetGeoCSSStyleSheetLog();
          if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
            *&buf[12] = 1024;
            *&buf[14] = 601;
            *&buf[18] = 2082;
            *&buf[20] = "Could not read number of attribute values for condition.";
            _os_log_impl(&dword_1B2754000, v276, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
          v277 = MEMORY[0x1B8C61C80](a5, 601);
          v278 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v277, " STYL Parse Error Here: ", 24);
          v279 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v278, "Could not read number of attribute values for condition.", 56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v279, "\n", 1);
          goto LABEL_347;
        }

        v174 = HIDWORD(v332[0]);
        memset(v332, 0, 13);
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::resize(v332, v174);
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::intern<geo::allocator_adapter<unsigned int,gss::zone_mallocator>>(v332, a1 + 416);
        if (v174)
        {
          v175 = v332[0];
          do
          {
            geo::ibitstream::readUIntBits(v330, v10, v173);
            if ((v330[0] & 1) == 0)
            {
              v232 = GEOGetGeoCSSStyleSheetLog();
              if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
                *&buf[12] = 1024;
                *&buf[14] = 607;
                *&buf[18] = 2082;
                *&buf[20] = "Could not read value for condition attribute.";
                _os_log_impl(&dword_1B2754000, v232, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
              }

              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
              v233 = MEMORY[0x1B8C61C80](a5, 607);
              v234 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v233, " STYL Parse Error Here: ", 24);
              v235 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v234, "Could not read value for condition attribute.", 45);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v235, "\n", 1);
              geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v332);
              goto LABEL_347;
            }

            *v175++ = v331;
            --v174;
          }

          while (v174);
        }

        *buf = v333;
        *&buf[8] = 0;
        *&buf[13] = 0;
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::copy(&buf[8], v332);
        v176 = v319 + 24 * v172;
        *v176 = *buf;
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v176 + 8);
        *(v176 + 8) = *&buf[8];
        *(v176 + 16) = *&buf[16];
        *(v176 + 20) = buf[20];
        *&buf[13] = 0;
        *&buf[8] = 0;
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(&buf[8]);
        geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v332);
        ++v172;
      }

      while (v172 != v325);
    }

    v177 = gss::zone_mallocator::instance(v171);
    v178 = pthread_rwlock_rdlock((v177 + 32));
    if (v178)
    {
      geo::read_write_lock::logFailure(v178, "read lock", v179);
    }

    v180 = malloc_type_zone_malloc(*v177, 0xC0uLL, 0x108104033B5EEB0uLL);
    atomic_fetch_add((v177 + 24), 1u);
    geo::read_write_lock::unlock((v177 + 32));
    *(v180 + 8) = 0u;
    *v180 = &unk_1F2A29E68;
    v181 = v180 + 32;
    *(v180 + 3) = 0u;
    *(v180 + 4) = &unk_1F2A29E40;
    *(v180 + 5) = 0;
    *(v180 + 61) = 0;
    *(v180 + 9) = 0;
    *(v180 + 77) = 0;
    *(v180 + 11) = 0;
    *(v180 + 93) = 0;
    *(v180 + 104) = 0u;
    *(v180 + 120) = 0u;
    *(v180 + 17) = 0;
    *(v180 + 38) = 0;
    atomic_store(0, v180 + 154);
    *(v180 + 4) = &unk_1F2A29EA0;
    *(v180 + 20) = 0;
    *(v180 + 165) = 0;
    geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::copy((v180 + 160), v334);
    *(v180 + 22) = 0;
    *(v180 + 23) = 0;
    v182 = *(v180 + 6);
    if (v182)
    {
      if (v182->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v180 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v180 + 2, 1uLL, memory_order_relaxed);
        *(v180 + 5) = v181;
        *(v180 + 6) = v180;
        std::__shared_weak_count::__release_weak(v182);
        goto LABEL_268;
      }
    }

    else
    {
      atomic_fetch_add_explicit(v180 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v180 + 2, 1uLL, memory_order_relaxed);
      *(v180 + 5) = v181;
      *(v180 + 6) = v180;
LABEL_268:
      std::__shared_weak_count::__release_shared[abi:nn200100](v180);
    }

    v183 = *(v323 + 64);
    if (v183 != 0xFFFF && (*(v323 + 68) & 1) == 0 && v183 >= *(v323 + 66))
    {
      geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate((v323 + 56), v183 + 1);
      v183 = *(v323 + 64);
    }

    *&v184 = v180 + 32;
    *(&v184 + 1) = v180;
    *(*(v323 + 56) + 16 * v183) = v184;
    v185 = v183 + 1;
    *(v323 + 64) = v183 + 1;
    v186 = *(v323 + 56);
    geo::ibitstream::readUIntBits(v332, v10, *(a3 + 88));
    if ((v332[0] & 1) == 0)
    {
      v304 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 615;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read conditional style property set index.";
        _os_log_impl(&dword_1B2754000, v304, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v305 = MEMORY[0x1B8C61C80](a5, 615);
      v306 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v305, " STYL Parse Error Here: ", 24);
      v307 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v306, "Could not read conditional style property set index.", 52);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v307, "\n", 1);
      goto LABEL_347;
    }

    if (HIDWORD(v332[0]) >= *(a1 + 152))
    {
      v308 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 616;
        *&buf[18] = 2082;
        *&buf[20] = "Conditional style property set index out of bounds.";
        _os_log_impl(&dword_1B2754000, v308, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v309 = MEMORY[0x1B8C61C80](a5, 616);
      v310 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v309, " STYL Parse Error Here: ", 24);
      v311 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v310, "Conditional style property set index out of bounds.", 51);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v311, "\n", 1);
      goto LABEL_347;
    }

    v316 = v186 + 16 * v185;
    v187 = *(v316 - 16);
    v188 = *(a1 + 144);
    v189 = *(v188 + 16 * HIDWORD(v332[0]));
    v190 = *(v188 + 16 * HIDWORD(v332[0]) + 8);
    if (v190)
    {
      atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v191 = *(v187 + 96);
    *(v187 + 88) = v189;
    if (v191)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v191);
    }

    if (v190)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v190);
    }

    geo::ibitstream::readUIntBits(v332, v10, *(a3 + 90));
    if ((v332[0] & 1) == 0)
    {
      v312 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 619;
        *&buf[18] = 2082;
        *&buf[20] = "Could not read conditional style's zoom style count.";
        _os_log_impl(&dword_1B2754000, v312, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v313 = MEMORY[0x1B8C61C80](a5, 619);
      v314 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v313, " STYL Parse Error Here: ", 24);
      v315 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v314, "Could not read conditional style's zoom style count.", 52);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v315, "\n", 1);
      goto LABEL_347;
    }

    v192 = HIDWORD(v332[0]);
    v326 = *(v316 - 16);
    geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::resize(v326 + 40, HIDWORD(v332[0]));
    if (!v192)
    {
LABEL_320:
      v213 = *(v316 - 16);
      *(v213 + 152) = v327;
      *(v213 + 156) = v317;
      *(v213 + 144) = *v329;
      ++v327;
      geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(v334);
      if (++v317 == v318)
      {
        goto LABEL_321;
      }

      continue;
    }

    break;
  }

  v193 = 0;
  v320 = 24 * v192;
  while (2)
  {
    v194 = *(v10 + 24);
    v195 = v10[1];
    v196 = v10[2];
    v197 = v196 + ((v194 + 8) >> 3);
    v198 = v194 & 7;
    v199 = v196 + 1;
    if (v197 < v196 + 1)
    {
      if (*(v10 + 24))
      {
        v200 = v196 + 1;
      }

      else
      {
        v200 = v10[2];
      }

      if (v195 < v200)
      {
        goto LABEL_383;
      }

      if (*(v10 + 24))
      {
        if (v195 < v199)
        {
          break;
        }

        v201 = *v10;
        v202 = (((1 << (8 - v194)) - 1) & *(*v10 + v196)) << v194;
        goto LABEL_304;
      }

      if (v195 < v199)
      {
        break;
      }

      v201 = *v10;
LABEL_301:
      LOBYTE(v202) = *(v201 + v196);
      goto LABEL_304;
    }

    if (v194 <= 8)
    {
      v203 = v196 + 1;
    }

    else
    {
      v203 = v196 + 2;
    }

    if (v195 >= v203)
    {
      v201 = *v10;
      if (!*(v10 + 24))
      {
        goto LABEL_301;
      }

      if (v199 >= v195)
      {
        v204 = 0;
      }

      else
      {
        v204 = *(v201 + v199);
      }

      v202 = ((v204 & (0xFFFF << (8 - v194))) >> (8 - v194)) | ((((1 << (8 - v194)) + 255) & *(v201 + v196)) << v194);
      v10[2] = v199;
LABEL_304:
      v10[2] = v197;
      *(v10 + 24) = v198;
      v205 = v197 + 1;
      if (v195 < v197 + 1)
      {
        v10[2] = v205;
        *(v10 + 24) = v198;
        v284 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 626;
          *&buf[18] = 2082;
          *&buf[20] = "Could not read conditional style's zoom style max zoom.";
          _os_log_impl(&dword_1B2754000, v284, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v285 = MEMORY[0x1B8C61C80](a5, 626);
        v286 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v285, " STYL Parse Error Here: ", 24);
        v287 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v286, "Could not read conditional style's zoom style max zoom.", 55);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v287, "\n", 1);
        goto LABEL_347;
      }

      if (v198)
      {
        if (v205 >= v195)
        {
          v206 = 0;
        }

        else
        {
          v206 = *(v201 + v205);
        }

        v207 = (v206 >> (8 - v198)) | ((((1 << (8 - v198)) + 255) & *(v201 + v197)) << v198);
        v10[2] = v205;
      }

      else
      {
        LOBYTE(v207) = *(v201 + v197);
      }

      v10[2] = v205;
      *(v10 + 24) = v198;
      geo::ibitstream::readUIntBits(v332, v10, *(a3 + 88));
      if ((v332[0] & 1) == 0)
      {
        v288 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 627;
          *&buf[18] = 2082;
          *&buf[20] = "Could not read conditional style's zoom style property set index.";
          _os_log_impl(&dword_1B2754000, v288, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v289 = MEMORY[0x1B8C61C80](a5, 627);
        v290 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v289, " STYL Parse Error Here: ", 24);
        v291 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v290, "Could not read conditional style's zoom style property set index.", 65);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v291, "\n", 1);
        goto LABEL_347;
      }

      if (HIDWORD(v332[0]) >= *(a1 + 152))
      {
        v292 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 628;
          *&buf[18] = 2082;
          *&buf[20] = "Conditional style's zoom style property set index out of bounds.";
          _os_log_impl(&dword_1B2754000, v292, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v293 = MEMORY[0x1B8C61C80](a5, 628);
        v294 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v293, " STYL Parse Error Here: ", 24);
        v295 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v294, "Conditional style's zoom style property set index out of bounds.", 64);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v295, "\n", 1);
        goto LABEL_347;
      }

      v208 = *(a1 + 144);
      v209 = *(v208 + 16 * HIDWORD(v332[0]));
      v210 = *(v208 + 16 * HIDWORD(v332[0]) + 8);
      if (v210)
      {
        atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v211 = *(v326 + 40) + v193;
      *v211 = vcvts_n_f32_u32(v202, 3uLL);
      *(v211 + 4) = vcvts_n_f32_u32(v207, 3uLL);
      v212 = *(v211 + 16);
      *(v211 + 8) = v209;
      if (v212)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v212);
      }

      if (v210)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v210);
      }

      v193 += 24;
      if (v320 == v193)
      {
        goto LABEL_320;
      }

      continue;
    }

    break;
  }

  v10[2] = v197;
  *(v10 + 24) = v198;
LABEL_383:
  v280 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 625;
    *&buf[18] = 2082;
    *&buf[20] = "Could not read conditional style's zoom style min zoom.";
    _os_log_impl(&dword_1B2754000, v280, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleSheet.hpp", 80);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
  v281 = MEMORY[0x1B8C61C80](a5, 625);
  v282 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v281, " STYL Parse Error Here: ", 24);
  v283 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v282, "Could not read conditional style's zoom style min zoom.", 55);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v283, "\n", 1);
LABEL_347:
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(v334);
LABEL_333:
  v218 = 0;
LABEL_334:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v218;
}

void sub_1B28A9D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(&a24);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingTopDepth::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingTopDepth::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingTopDepth::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::BuildingTopDepth::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::BuildingTopDepth::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_3,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_3>,ggl::BuildingPointyRoofDepth::BuildingPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E78F8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4>,ggl::DiffuseBuilding::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7988;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::DiffuseBuilding::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::DiffuseBuilding::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::DiffuseBuilding::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseBuilding::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5>,ggl::FoggedDiffuseBuilding::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7A18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_6,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_6>,ggl::SpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_7,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_7>,ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_8,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_8>,ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7BC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_13,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_13>,ggl::BuildingShadow::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E7E50;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingShadow::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::BuildingShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::BuildingShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingShadow::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_15,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_15>,ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E7F80;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_17,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_17>,ggl::PrefilteredLine::PrefilteredLinePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E80B0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PrefilteredLine::PrefilteredLinePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PrefilteredLine::PrefilteredLinePipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PrefilteredLine::PrefilteredLinePipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PrefilteredLine::PrefilteredLinePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PrefilteredLine::PrefilteredLinePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<md::BuildingRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    md::FrameAllocator<ggl::RenderItem>::reset(v2 + 864);
    free(*(v2 + 864));
    v3 = *(v2 + 840);
    if (v3)
    {
      *(v2 + 848) = v3;
      operator delete(v3);
    }

    v41 = (v2 + 808);
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v41);
    v4 = *(v2 + 784);
    if (v4)
    {
      *(v2 + 792) = v4;
      operator delete(v4);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 752), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 744), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 736), 0);
    v5 = *(v2 + 728);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 712);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 696);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 680);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 664);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 648);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v2 + 632);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(v2 + 616);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::PrefilteredLine::PrefilteredLinePipelineSetup>>::reset[abi:nn200100]((v2 + 600), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingShadow::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 592), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 584), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 576), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100]((v2 + 568));
    std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 560), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100]((v2 + 552));
    std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 544), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 536), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 528), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 520), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuilding::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 512), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 504), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingTopDepth::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 496), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFacadeDepth::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 488), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlat::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 480), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup>>::reset[abi:nn200100]((v2 + 472), 0);
    v13 = *(v2 + 464);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 448);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 432);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = *(v2 + 416);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v17 = *(v2 + 400);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v18 = *(v2 + 384);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v19 = *(v2 + 368);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v20 = *(v2 + 352);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    v21 = *(v2 + 336);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    v22 = *(v2 + 320);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v2 + 304);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v24 = *(v2 + 288);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    v25 = *(v2 + 272);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    v26 = *(v2 + 256);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }

    v27 = *(v2 + 240);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    v28 = *(v2 + 224);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = *(v2 + 208);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    v30 = *(v2 + 192);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    }

    v31 = *(v2 + 176);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }

    v32 = *(v2 + 160);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    }

    v33 = *(v2 + 144);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    v34 = *(v2 + 128);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = *(v2 + 112);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }

    v36 = *(v2 + 96);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    v37 = *(v2 + 80);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    v38 = *(v2 + 64);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    v39 = *(v2 + 48);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    v40 = *(v2 + 32);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::Landmark::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Landmark::DefaultVbo>::attributesReflection(void)::r = &ggl::Landmark::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::Landmark::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Landmark::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A3D8 = 1;
  }
}

uint64_t std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_0,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_0>,ggl::LandmarkDepth::BuildingPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A062F0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::LandmarkDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkDepth::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::LandmarkDepth::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::LandmarkDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::LandmarkDepth::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_1,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_1>,ggl::LandmarkFlat::LandmarkPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A063D8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::LandmarkFlat::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkFlat::LandmarkPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::LandmarkFlat::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::LandmarkFlat::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::LandmarkFlat::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_2,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_2>,ggl::SpecularLandmark::LandmarkPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A064C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::SpecularLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::SpecularLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::SpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::SpecularLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::SpecularLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_3,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_3>,ggl::FoggedSpecularLandmark::LandmarkPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<md::LandmarkRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 336);
    if (v3)
    {
      *(v2 + 344) = v3;
      operator delete(v3);
    }

    v21 = (v2 + 304);
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v21);
    v4 = *(v2 + 280);
    if (v4)
    {
      *(v2 + 288) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 264);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 248);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 232);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 216);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 200);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 184);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v2 + 168);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(v2 + 152);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 136);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 120);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 104);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 88), 0);
    v16 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100]((v2 + 40), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100]((v2 + 32), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkFlat::LandmarkPipelineSetup>>::reset[abi:nn200100]((v2 + 24), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SpecularLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100]((v2 + 16), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseLandmark::BuildingPipelineSetup>>::reset[abi:nn200100]((v2 + 8), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::LandmarkDepth::BuildingPipelineSetup>>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<md::CommandBufferLocation>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 1;
    if (v6 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    if (v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v9);
    }

    v10 = (2 * v6);
    *v10 = *a2;
    v5 = 2 * v6 + 2;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::CartographicTiledVectorRenderLayer(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, void *a9)
{
  v15 = a7;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v16, a3, a4);
  *a1 = &unk_1F2A16858;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100]((a1 + 8), a9);
  *(a1 + 32) = 0;
  *(a1 + 34) = a2;
  *(a1 + 40) = a5;
  *a1 = &unk_1F2A2B510;
  *(a1 + 48) = 0;
  *(a1 + 52) = a8;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B1310;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v16;
  *(a1 + 336) = v17;
  v16 = 0uLL;
  v17 = 0;
  *(a1 + 344) = 1;
  *a1 = &unk_1F2A2E7A8;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B28AE4F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C62190](v3, 0x10A0C40ACD82FEFLL);
  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledRenderLayer(v2);

  _Unwind_Resume(a1);
}

void md::PolygonRenderResources::PolygonRenderResources(md::PolygonRenderResources *this, VKSharedResources *a2, const RenderTargetFormat *a3)
{
  v4 = a2;
  *(this + 856) = 0u;
  bzero(this, 0x350uLL);
  *(this + 106) = this + 856;
  *(this + 113) = 0;
  *(this + 912) = 0;
  *(this + 920) = 0u;
  *(this + 936) = 0;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 128) = 0;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 0;
  *(this + 109) = 0;
  *(this + 111) = 0;
  *(this + 110) = 0;
  *(this + 135) = 32;
  v5 = malloc_type_malloc(0xF10uLL, 0x1020040EDED9539uLL);
  *v5 = 0u;
  *(this + 133) = v5;
  *(this + 134) = v5;
  ggl::RenderDataHolder::RenderDataHolder(this + 1088);
  *(this + 136) = &unk_1F2A5C710;
  *(this + 1124) = 65537;
  *(this + 283) = 0;
  *(this + 142) = 0x7FFF0200000700;
  *(this + 572) = 0;
  *(this + 1146) = 3;
  *(this + 1147) = 0u;
  *(this + 1163) = 0;
  *(this + 1212) = 0u;
  *(this + 638) = 257;
  *(this + 80) = 0u;
  *(this + 1296) = 0;
  v6 = *(*([(VKSharedResources *)v4 shaderLibrary]+ 80) + 1768);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:nn200100]<ggl::PolygonStroke::MeshPipelineState,std::allocator<ggl::PolygonStroke::MeshPipelineState>,std::shared_ptr<ggl::PolygonStrokeShader>,ggl::ColorBufferOperation,ggl::RenderTargetFormat const&,0>();
}

void sub_1B28B0274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ggl::RenderDataHolder *a10, void **a11, uint64_t *a12, uint64_t *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  ggl::RenderDataHolder::~RenderDataHolder(a10);
  md::FrameAllocator<ggl::RenderItem>::reset(a26 + 1064);
  free(*(a26 + 1064));
  v28 = *(a26 + 1040);
  if (v28)
  {
    *(a26 + 1048) = v28;
    operator delete(v28);
  }

  a27 = a26 + 1008;
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a27);
  v29 = *(a26 + 984);
  if (v29)
  {
    *(a26 + 992) = v29;
    operator delete(v29);
  }

  v30 = *(a26 + 976);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v31 = *(a26 + 960);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v32 = *a13;
  *a13 = 0;
  if (v32)
  {
    MEMORY[0x1B8C62190](v32, 0x1000C4049ECCB0CLL);
  }

  v33 = *a12;
  *a12 = 0;
  if (v33)
  {
    MEMORY[0x1B8C62190](v33, 0x1000C4049ECCB0CLL);
  }

  std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(*a11);
  v34 = 840;
  while (1)
  {
    v35 = *(a26 + v34);
    *(a26 + v34) = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v34 -= 8;
    if (v34 == 264)
    {
      a27 = a26 + 240;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a27);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::MeshPipelineSetup>>::reset[abi:nn200100]((a26 + 232), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((a26 + 224), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((a26 + 216), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((a26 + 208), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>>::reset[abi:nn200100]((a26 + 200), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((a26 + 192), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>>::reset[abi:nn200100]((a26 + 184), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>>::reset[abi:nn200100]((a26 + 176), 0);
      v36 = *(a26 + 168);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v36);
      }

      v37 = *(a26 + 152);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }

      v38 = *(a26 + 136);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }

      v39 = *(a26 + 120);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }

      v40 = *(a26 + 104);
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
      }

      v41 = *(a26 + 88);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }

      v42 = *(a26 + 72);
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v42);
      }

      v43 = *(a26 + 56);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }

      v44 = *(a26 + 40);
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }

      v45 = *(a26 + 24);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }

      v46 = *(a26 + 8);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
      }

      _Unwind_Resume(a1);
    }
  }
}

void ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::attributesReflection(void)::r = &ggl::PolygonCommonStroke::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::attributesReflection(void)::r;
    *algn_1ED66A498 = 1;
  }
}

void ggl::MeshTyped<ggl::VenueWall::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::VenueWall::DefaultVbo>::attributesReflection(void)::r = &ggl::VenueWall::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::VenueWall::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::VenueWall::DefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A388 = 1;
  }
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::PolygonStroke::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CA90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::PolygonStroke::MeshPipelineSetup *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CB30;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStroke::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStroke::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonStroke::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonStroke::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonStroke::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::PolygonStroke::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::PolygonStrokeMask::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CB78;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonStrokeMask::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::PolygonStrokeMask::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonStrokeMask::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonStrokeMask::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,void ()(ggl::PolygonAnimatableStroke::MeshPipelineSetup *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CCA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_3,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_3>,ggl::PolygonAnimatableStroke::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CC08;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonAnimatableStroke::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonAnimatableStroke::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonAnimatableStroke::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolygonAnimatableStroke::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28B288C(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5>,ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CCF0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6>,ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CD38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_7,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_7>,ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CD80;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_8,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_8>,ggl::PolygonFill::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CE68;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonFill::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonFill::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonFill::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::PolygonFill::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_9,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_9>,ggl::HillshadeFillMask::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4CEF8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::HillshadeFillMask::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::HillshadeFillMask::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::HillshadeFillMask::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::HillshadeFillMask::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ClearRenderLayer::ClearRenderLayer(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = a3;
  *(a1 + 40) = a2;
  *a1 = &unk_1F2A4C080;
  *(a1 + 8) = 0;
  operator new();
}

void sub_1B28B3760(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double md::GridLogic::defaultBackgroundColor(md::GridLogic *a1, unsigned int a2, int a3, int a4)
{
  if (a2 > 0xA)
  {
    return *&v5;
  }

  if (((1 << a2) & 0x49E) != 0)
  {
    {
      v9 = a1;
      a1 = v9;
      if (v6)
      {
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultSatelliteBackgroundColor(void)::_defaultSatelliteBackgroundLinearColor, &kDefaultSatelliteBackgroundColor);
        a1 = v9;
      }
    }

    v4 = &md::GridLogic::_defaultSatelliteBackgroundColor(void)::_defaultSatelliteBackgroundLinearColor;
LABEL_5:
    v5 = *v4;
    *a1 = *v4;
    return *&v5;
  }

  if (((1 << a2) & 0x261) == 0)
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return *&v5;
      }

LABEL_16:

      *&v5 = md::GridLogic::_defaultMutedBackgroundColor(a1);
      return *&v5;
    }

    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:

    *&v5 = md::GridLogic::_defaultStandardDarkBackgroundColor(a1);
    return *&v5;
  }

  if (a3)
  {
    return *&v5;
  }

  if (a4 == 2)
  {
    {
      v10 = a1;
      a1 = v10;
      if (v7)
      {
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultExploreBackgroundColor(void)::_defaultExploreBackgroundLinearColor, &kDefaultExploreBackgroundColor);
        a1 = v10;
      }
    }

    v4 = &md::GridLogic::_defaultExploreBackgroundColor(void)::_defaultExploreBackgroundLinearColor;
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return *&v5;
    }

    goto LABEL_16;
  }

  *&v5 = md::GridLogic::_defaultDrivingBackgroundColor(a1);
  return *&v5;
}

double md::GridLogic::_defaultDrivingBackgroundColor(md::GridLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultDrivingBackgroundColor(void)::_defaultDrivingBackgroundLinearColor, &kDefaultDrivingBackgroundColor);
      this = v3;
    }
  }

  result = *&md::GridLogic::_defaultDrivingBackgroundColor(void)::_defaultDrivingBackgroundLinearColor;
  *this = md::GridLogic::_defaultDrivingBackgroundColor(void)::_defaultDrivingBackgroundLinearColor;
  return result;
}

int64x2_t ggl::RenderItem::RenderItem(int64x2_t *this, const char *a2)
{
  this->i64[0] = &off_1F2A5D8B8;
  this[3].i64[0] = 0;
  this[1].i64[1] = 0;
  this[2].i64[0] = 0;
  this[1].i64[0] = a2;
  this[2].i32[2] = 0;
  this[3].i32[2] = 1065353216;
  this[4] = 0u;
  this[5] = 0u;
  result = vdupq_n_s64(1uLL);
  this[6] = result;
  this[7].i64[0] = 0;
  return result;
}

ggl::RenderDataHolder *ggl::Grid::GridPipelineState::GridPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v16 = a2;
    v17 = a3;
    a2 = v16;
    a3 = v17;
    a4 = v14;
    if (v15)
    {
      {
        if (v15)
        {
          ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection();
          ggl::Grid::GridPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r;
          *algn_1EB833BD8 = &ggl::Grid::pipelineDataGridPipelineDeviceStructs(void)::ref;
          qword_1EB833BE0 = 0;
          {
            ggl::Grid::pipelineDataGridPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
            unk_1EB833B30 = ggl::Tile::Transform::reflection(void)::reflection;
            qword_1EB833B38 = ggl::GridBase::GridView::reflection(void)::reflection;
            unk_1EB833B40 = ggl::Grid::Style::reflection(void)::reflection;
          }

          qword_1EB833BE8 = &ggl::Grid::pipelineDataGridPipelineConstantStructs(void)::ref;
          unk_1EB833BF0 = xmmword_1B33B09E0;
        }
      }

      ggl::Grid::GridPipelineState::typedReflection(void)::ref = &ggl::Grid::GridPipelineSetup::typedReflection(void)::ref;
      ggl::GridShader::typedReflection(v15);
      qword_1ED6601B0 = &ggl::GridShader::typedReflection(void)::ref;
      {
        ggl::Grid::pipelineStateGridPipelineAttributeStructBinding(void)::attr = 0;
        unk_1EB833A10 = 0;
        qword_1EB833A18 = "";
        dword_1EB833A20 = 0;
        qword_1EB833A28 = &ggl::Grid::pipelineStateGridPipelineAttributeBinding_0(void)::attr;
        unk_1EB833A30 = 1;
      }

      qword_1ED6601B8 = &ggl::Grid::pipelineStateGridPipelineAttributeStructBinding(void)::attr;
      unk_1ED6601C0 = 1;
      qword_1ED6601C8 = 0;
      unk_1ED6601D0 = 0;
      qword_1ED6601D8 = &ggl::Grid::pipelineStateGridPipelineDeviceStructBinding(void)::ref;
      unk_1ED6601E0 = 0;
      {
        ggl::Grid::pipelineStateGridPipelineConstantStructBinding(void)::ref = 0;
        unk_1EB833A40 = 0;
        qword_1EB833A48 = "view";
        dword_1EB833A50 = 3;
        qword_1EB833A58 = &ggl::Grid::pipelineStateGridPipelineConstantViewBinding(void)::reflection;
        unk_1EB833A60 = xmmword_1B33B0750;
        qword_1EB833A70 = 1;
        unk_1EB833A78 = "transform";
        dword_1EB833A80 = 3;
        qword_1EB833A88 = &ggl::Grid::pipelineStateGridPipelineConstantTransformBinding(void)::reflection;
        *algn_1EB833A90 = xmmword_1B33B0A10;
        qword_1EB833AA0 = 2;
        unk_1EB833AA8 = "gridView";
        dword_1EB833AB0 = 3;
        qword_1EB833AB8 = &ggl::Grid::pipelineStateGridPipelineConstantGridViewBinding(void)::reflection;
        unk_1EB833AC0 = xmmword_1B33B0550;
        qword_1EB833AD0 = 3;
        unk_1EB833AD8 = "style";
        dword_1EB833AE0 = 3;
        qword_1EB833AE8 = &ggl::Grid::pipelineStateGridPipelineConstantStyleBinding(void)::reflection;
        unk_1EB833AF0 = 6;
      }

      qword_1ED6601E8 = &ggl::Grid::pipelineStateGridPipelineConstantStructBinding(void)::ref;
      *algn_1ED6601F0 = 4;
      a4 = v14;
      a2 = v16;
      a3 = v17;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v20 = *a3;
  *&v20[16] = *(a3 + 16);
  *&v20[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v18 = *a4;
  v19 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Grid::GridPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v18;
  *(this + 17) = v19;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v20;
  *(this + 76) = *&v20[12];
  *(this + 92) = *&v20[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F29ED908;
  *(this + 305) = a5;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  *(this + 377) = 1;
  return this;
}

void sub_1B28B3E80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *ggl::Grid::GridPipelineSetup::GridPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
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

  *a1 = &unk_1F29ED928;
  v13 = a1[17];
  v14 = *a4;
  v15 = a4[1];
  *v13 = *a4;
  v13[1] = 0;
  v16 = a1[29];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = v16[1];
  *v16 = v14;
  v16[1] = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = a1[17];
  v19 = *a5;
  v20 = a5[1];
  *(v18 + 16) = *a5;
  *(v18 + 24) = 0;
  v21 = a1[29];
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(v21 + 24);
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  v23 = a1[17];
  v24 = *a6;
  v25 = a6[1];
  *(v23 + 32) = *a6;
  *(v23 + 40) = 0;
  v26 = a1[29];
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(v26 + 40);
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = a1[17];
  v29 = *a7;
  v30 = a7[1];
  *(v28 + 48) = *a7;
  *(v28 + 56) = 0;
  v31 = a1[29];
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = *(v31 + 56);
  *(v31 + 48) = v29;
  *(v31 + 56) = v30;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  return a1;
}

int64x2_t ggl::RenderItem::RenderItem(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1->i64[0] = &off_1F2A5D8B8;
  a1[1].i64[0] = a5;
  a1[1].i64[1] = a2;
  a1[2].i64[0] = a3;
  a1[2].i32[2] = 0;
  a1[3].i64[0] = 0;
  a1[3].i32[2] = 1065353216;
  a1[4].i64[0] = a4;
  a1[4].i64[1] = 0;
  a1[5].i64[0] = 0;
  a1[5].i64[1] = 0;
  result = vdupq_n_s64(1uLL);
  a1[6] = result;
  a1[7].i64[0] = 0;
  return result;
}

void ggl::RenderItem::~RenderItem(ggl::RenderItem *this)
{
  *this = &off_1F2A5D8B8;
  *(this + 2) = 3131955885;
}

{
  *this = &off_1F2A5D8B8;
  *(this + 2) = 3131955885;
  JUMPOUT(0x1B8C62190);
}

{
  *this = &off_1F2A5D8B8;
  *(this + 2) = 3131955885;
}