void md::RouteLineLayer::~RouteLineLayer(md::RouteLineLayer *this)
{
  *this = &unk_1F2A3D320;
  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A3D840;
  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3D320;
  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A3D840;
  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D860;
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

  v6 = a1[30];
  a1[30] = 0;
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

void md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D840;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D840;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineRibbon>(v3, v1);
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
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
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v14, v13);
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
    result = std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::batch(std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
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
                          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
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
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
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
            std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::batch(std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::batch(std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::batch(std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
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

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::batch(std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3DAB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedStrokeColorPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedFillColorPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void std::__function::__func<md::MapEngineInteractivePowerLogger::didChangeEngineMode(std::optional<md::MapEngineModeType>,md::MapEngineModeType)::$_0,std::allocator<md::MapEngineInteractivePowerLogger::didChangeEngineMode(std::optional<md::MapEngineModeType>,md::MapEngineModeType)::$_0>,void ()(void)>::operator()(unsigned __int8 *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!streamId)
  {
    streamId = PPSCreateTelemetryIdentifier();
  }

  if (a1[9] != 1)
  {
    v4 = a1[10] - 10 < 3;
LABEL_8:
    v7 = @"isSPR";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    PPSSendTelemetry();
    return;
  }

  v2 = a1[8];
  v3 = a1[10];
  if (v2 != v3)
  {
    v4 = (v3 - 10) < 3;
    if ((v2 - 10) < 3 != v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__function::__func<md::MapEngineInteractivePowerLogger::didChangeEngineMode(std::optional<md::MapEngineModeType>,md::MapEngineModeType)::$_0,std::allocator<md::MapEngineInteractivePowerLogger::didChangeEngineMode(std::optional<md::MapEngineModeType>,md::MapEngineModeType)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A3DC08;
  v2 = *(result + 8);
  *(a2 + 10) = *(result + 10);
  *(a2 + 8) = v2;
  return result;
}

void md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0xA60DDA5A69582425 && *(a3 + 32))
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

uint64_t gdc::ObjectHolder<md::SharedResourcesContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SharedResourcesContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::SharedResourcesContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SharedResourcesContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3DD08;
  v2 = a1[4];
  if (v2)
  {

    MEMORY[0x1B8C62190](v2, 0x80C40B8603338);
  }

  return a1;
}

void md::SharedResourcesLogic::~SharedResourcesLogic(md::SharedResourcesLogic *this)
{
  md::SharedResourcesLogic::~SharedResourcesLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3DC50;
  *(this + 15) = &unk_1F2A59028;

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::TrafficTileData::~TrafficTileData(md::TrafficTileData *this)
{
  md::TrafficTileData::~TrafficTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3DD30;
  *(this + 80) = &unk_1F2A3DD70;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 760));
  v2 = *(this + 94);
  *(this + 94) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 93);
  *(this + 93) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 92);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t md::TrafficTileData::TrafficTileData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6, uint64_t a7)
{
  v18[0] = 0;
  v18[1] = 0;
  v12 = md::MapTileData::MapTileData(a1, a2, a7, v18, 1);
  v14 = *a3;
  v13 = a3[1];
  *v12 = &unk_1F2A3DD30;
  v12[80] = &unk_1F2A3DD70;
  v12[91] = v14;
  v12[92] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *a4;
  *a4 = 0;
  *(a1 + 744) = v15;
  v16 = *a5;
  *a5 = 0;
  *(a1 + 752) = v16;
  gss::FeatureAttributeSet::FeatureAttributeSet((a1 + 760), a6);
  return a1;
}

void sub_1B31CBB78(_Unwind_Exception *a1)
{
  v3 = *(v1 + 94);
  *(v1 + 94) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 93);
  *(v1 + 93) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 92);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapTileData::~MapTileData(v1);
  _Unwind_Resume(a1);
}

void md::NavCurrentRoadSign::layoutForDisplayWithNavContext(float32x2_t *this, md::NavContext *a2)
{
  v2 = *(a2 + 4);
  v3 = (this[54].f32[0] - this[53].f32[0]) * 0.5;
  v5 = *(v2 + 124);
  v4 = *(v2 + 128);
  v6 = *(v2 + 32);
  if ((v5 - v3) >= v6)
  {
    v7 = *(v2 + 40);
    if ((v5 + v3) > v7)
    {
      v5 = v7 - v3;
    }
  }

  else
  {
    v5 = v6 + v3;
  }

  this[52].f32[0] = v5;
  this[52].i32[1] = v4;
  md::NavLabel::layoutForDisplayWithNavContext(this, a2);
}

void md::NavCurrentRoadSign::layoutForStagingWithNavContext(md::NavLabel *this, md::NavContext *a2)
{
  v2 = *(a2 + 4);
  v3 = (*(this + 92) - *(this + 90)) * 0.5;
  v5 = *(v2 + 124);
  v4 = *(v2 + 128);
  v6 = *(v2 + 32);
  if ((v5 - v3) >= v6)
  {
    v7 = *(v2 + 40);
    if ((v5 + v3) > v7)
    {
      v5 = v7 - v3;
    }
  }

  else
  {
    v5 = v6 + v3;
  }

  *(this + 88) = v5;
  *(this + 89) = v4;
  md::NavLabel::layoutForStagingWithNavContext(this, a2);
}

void md::NavCurrentRoadSign::~NavCurrentRoadSign(md::NavCurrentRoadSign *this)
{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void md::NavRoadSign::NavRoadSign(uint64_t a1, void *a2, uint64_t *a3, void *a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a4;
  v15 = *a3;
  v16 = a3[1];
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = v14;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::NavLabel::NavLabel(a1, v13, v19, a5, a6, a7);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  *a1 = &unk_1F2A3DD88;
  [v14 offsetPixelForPixel:{0.0, 0.0}];
  *(a1 + 320) = v17;
  *(a1 + 324) = v18;
  std::allocate_shared[abi:nn200100]<md::RoadSignLabelIcon,std::allocator<md::RoadSignLabelIcon>,VKRoadSignArtwork * {__strong}&,0>();
}

void sub_1B31CBE74(mdm::zone_mallocator *a1)
{
  v7 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v7, v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::NavLabel::~NavLabel(v3);

  _Unwind_Resume(a1);
}

void md::NavRouteEtaLabelPart::~NavRouteEtaLabelPart(md::NavRouteEtaLabelPart *this)
{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::NavRouteEta::~NavRouteEta(md::NavRouteEta *this)
{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B31CC2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](&a16);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B31CC408(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);

  _Unwind_Resume(a1);
}

id GEOGetVectorKitTileGroupNotificationManagerLog(void)
{
  if (GEOGetVectorKitTileGroupNotificationManagerLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitTileGroupNotificationManagerLog(void)::onceToken, &__block_literal_global_38199);
  }

  v1 = GEOGetVectorKitTileGroupNotificationManagerLog(void)::log;

  return v1;
}

void md::TileGroupNotificationManager::notifyDidChange(md::TileGroupNotificationManager *this)
{
  v17 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 48));
  v2 = GEOGetVectorKitTileGroupNotificationManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - *(this + 2)) >> 4);
    *buf = 134218240;
    v12 = this;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "[%p] Notifying %zu callback entries - DidChange", buf, 0x16u);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v5 != v4)
  {
    while (!*(v5 + 56))
    {
      v5 += 80;
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }
  }

  while (v5 != v4)
  {
    v6 = GEOGetVectorKitTileGroupNotificationManagerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(v5 + 72);
      v8 = *(v5 + 64);
      *buf = 134218496;
      v12 = this;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "[%p] Calling didChange callback for %p (priority %d)", buf, 0x1Cu);
    }

    v9 = *(v5 + 56);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v9 + 48))(v9);
    v10 = v5 + 80;
    v5 = *(this + 3);
    while (v10 != v5)
    {
      if (*(v10 + 56))
      {
        v5 = v10;
        break;
      }

      v10 += 80;
    }
  }

LABEL_17:
  std::mutex::unlock((this + 48));
}

void ___ZL46GEOGetVectorKitTileGroupNotificationManagerLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "TileGroupNotificationManager");
  v1 = GEOGetVectorKitTileGroupNotificationManagerLog(void)::log;
  GEOGetVectorKitTileGroupNotificationManagerLog(void)::log = v0;
}

void sub_1B31CC994(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);

  _Unwind_Resume(a1);
}

void sub_1B31CCD90(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);

  _Unwind_Resume(a1);
}

void std::vector<md::TileGroupNotificationManager::CallbackEntry>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::TileGroupNotificationManager::CallbackEntry>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<md::TileGroupNotificationManager::CallbackEntry>::__base_destruct_at_end[abi:nn200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 80;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 48);
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void md::TileGroupNotificationManager::~TileGroupNotificationManager(md::TileGroupNotificationManager *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = GEOGetVectorKitTileGroupNotificationManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 134217984;
    *&v5[4] = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "[%p] Destructor", v5, 0xCu);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
    *(this + 5) = 0;
  }

  std::mutex::~mutex((this + 48));
  *v5 = this + 16;
  std::vector<md::TileGroupNotificationManager::CallbackEntry>::__destroy_vector::operator()[abi:nn200100](v5);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1B31CD098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::mutex::~mutex((v9 + 48));
  a9 = (v9 + 16);
  std::vector<md::TileGroupNotificationManager::CallbackEntry>::__destroy_vector::operator()[abi:nn200100](&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void md::TileGroupNotificationManager::addObserver(uint64_t a1, const void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 24))
  {
    if (!a2)
    {
      return;
    }
  }

  else if (!a2 || !*(a3 + 56))
  {
    return;
  }

  v6 = GEOGetVectorKitTileGroupNotificationManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a3 + 64);
    *buf = 134218496;
    v33 = a1;
    v34 = 2048;
    v35 = a2;
    v36 = 1024;
    LODWORD(v37) = v7;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "[%p] Adding observer %p with priority %d", buf, 0x1Cu);
  }

  md::TileGroupNotificationManager::removeObserver(a1, a2);
  std::mutex::lock((a1 + 48));
  if (!*(a1 + 40))
  {
    md::TileGroupNotificationManager::init(a1);
  }

  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](buf, a3);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v38, a3 + 32);
  LODWORD(v40) = *(a3 + 64);
  *(&v40 + 1) = a2;
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v9 >= v8)
  {
    v10 = *(a1 + 16);
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4);
    if (v11 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 4);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x199999999999999)
    {
      v14 = 0x333333333333333;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x333333333333333)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v15 = 80 * v11;
    v16 = v37;
    if (v37)
    {
      if (v37 == buf)
      {
        *(80 * v11 + 0x18) = 80 * v11;
        (*(*v16 + 24))(v16, 80 * v11);
      }

      else
      {
        *(80 * v11 + 0x18) = v37;
        v37 = 0;
      }
    }

    else
    {
      *(80 * v11 + 0x18) = 0;
    }

    v18 = v39;
    if (v39)
    {
      if (v39 == v38)
      {
        *(80 * v11 + 0x38) = 80 * v11 + 32;
        (*(*v18 + 24))(v18);
      }

      else
      {
        *(80 * v11 + 0x38) = v39;
        v39 = 0;
      }
    }

    else
    {
      *(80 * v11 + 0x38) = 0;
    }

    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = v15 - (v20 - v19);
    *(80 * v11 + 0x40) = v40;
    v17 = v15 + 80;
    if (v20 != v19)
    {
      v22 = 0;
      v23 = -16 * ((v20 - v19) >> 4) + 80 * v11;
      do
      {
        v24 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v21 + v22, v19 + v22);
        std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v24 + 32, v19 + v22 + 32);
        *(v23 + v22 + 64) = *(v19 + v22 + 64);
        v22 += 80;
      }

      while (v19 + v22 != v20);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v19 + 32);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v19);
        v19 += 80;
      }

      while (v19 != v20);
    }

    v25 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(a1 + 24) = v17;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    if (v37)
    {
      if (v37 == buf)
      {
        *(v9 + 24) = v9;
        (*(*v37 + 24))(v37, v9);
      }

      else
      {
        *(v9 + 24) = v37;
        v37 = 0;
      }
    }

    else
    {
      *(v9 + 24) = 0;
    }

    if (v39)
    {
      if (v39 == v38)
      {
        *(v9 + 56) = v9 + 32;
        (*(*v39 + 24))(v39);
      }

      else
      {
        *(v9 + 56) = v39;
        v39 = 0;
      }
    }

    else
    {
      *(v9 + 56) = 0;
    }

    *(v9 + 64) = v40;
    v17 = v9 + 80;
  }

  *(a1 + 24) = v17;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v38);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
  if (*(a3 + 64) != 0x7FFFFFFF)
  {
    v26 = *(a1 + 16);
    v27 = *(a1 + 24);
    v28 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v27[-v26] >> 4));
    if (v27 == v26)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    std::__introsort<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,false>(v26, v27, v29, 1);
  }

  v30 = GEOGetVectorKitTileGroupNotificationManagerLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 24) - *(a1 + 16)) >> 4);
    *buf = 134218240;
    v33 = a1;
    v34 = 2048;
    v35 = v31;
    _os_log_impl(&dword_1B2754000, v30, OS_LOG_TYPE_INFO, "[%p] Now have %zu callback entries", buf, 0x16u);
  }

  std::mutex::unlock((a1 + 48));
}

void sub_1B31CD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock((v3 + 48));
  _Unwind_Resume(a1);
}

void md::TileGroupNotificationManager::removeObserver(md::TileGroupNotificationManager *this, const void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    std::mutex::lock((this + 48));
    if (!*(this + 5))
    {
      md::TileGroupNotificationManager::init(this);
    }

    v5 = *(this + 2);
    v4 = *(this + 3);
    v6 = v4 - v5;
    if (v4 == v5)
    {
      goto LABEL_15;
    }

    v7 = *(this + 2);
    while (*(v7 + 72) != a2)
    {
      v7 += 80;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }

    if (v7 == v4)
    {
LABEL_15:
      v7 = *(this + 3);
    }

    else
    {
      v8 = v7 + 80;
      if (v7 + 80 != v4)
      {
        do
        {
          if (*(v8 + 72) != a2)
          {
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v7, v8);
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v7 + 32, v8 + 32);
            *(v7 + 64) = *(v8 + 64);
            v7 += 80;
          }

          v8 += 80;
        }

        while (v8 != v4);
        v5 = *(this + 2);
        v4 = *(this + 3);
      }
    }

    if (v4 != v7)
    {
      std::vector<md::TileGroupNotificationManager::CallbackEntry>::__base_destruct_at_end[abi:nn200100](this + 16, v7);
      v5 = *(this + 2);
      v4 = *(this + 3);
    }

    if (v4 - v5 < v6)
    {
      v9 = GEOGetVectorKitTileGroupNotificationManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - *(this + 2)) >> 4);
        *buf = 134218496;
        v12 = this;
        v13 = 2048;
        v14 = a2;
        v15 = 2048;
        v16 = v10;
        _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "[%p] Removed observer %p, now have %zu entries", buf, 0x20u);
      }
    }

    std::mutex::unlock((this + 48));
  }
}

void md::TileGroupNotificationManager::init(std::__shared_weak_count **this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOGetVectorKitTileGroupNotificationManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "[%p] Initializing", buf, 0xCu);
  }

  v4 = *this;
  v3 = this[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = [VKTileGroupNotificationBridge alloc];
  v6 = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  this[5] = [(VKTileGroupNotificationBridge *)v5 initWithManager:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1B31CD944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v6 = result;
  v115 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a2;
  v107 = (a2 - 80);
  v8 = v6;
  while (1)
  {
    v6 = v8;
    v9 = v7 - v8;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      v7 = a2;
      if (v10 == 2)
      {
        if (*(a2 - 4) >= *(v6 + 16))
        {
          return result;
        }

LABEL_111:
        v60 = v6;
LABEL_112:
        v61 = (a2 - 80);
        return std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v60, v61);
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      return std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,0>(v6, (v6 + 80), (v6 + 160), v107);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,0>(v6, (v6 + 80), (v6 + 160), (v6 + 240));
      if (*(v7 - 4) >= *(v6 + 76))
      {
        return result;
      }

      result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((v6 + 240), v107);
      if (*(v6 + 76) >= *(v6 + 56))
      {
        return result;
      }

      result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((v6 + 160), (v6 + 240));
      if (*(v6 + 56) >= *(v6 + 36))
      {
        return result;
      }

      v56 = (v6 + 80);
      v57 = (v6 + 160);
      goto LABEL_170;
    }

LABEL_10:
    if (v9 <= 1919)
    {
      if (a4)
      {
        if (v6 != v7)
        {
          v62 = (v6 + 80);
          if (v6 + 80 != a2)
          {
            v63 = 0;
            v64 = v6;
            do
            {
              v65 = v62;
              if (v64[36] < v64[16])
              {
                std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, v62);
                std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, (v64 + 28));
                v114 = *(v64 + 9);
                v66 = v63;
                while (1)
                {
                  v67 = v66;
                  v68 = &v6[v66];
                  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](&v6[v66 + 80], &v6[v66]);
                  v69 = (v68 + 32);
                  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v68 + 112), (v68 + 32));
                  *(v68 + 9) = *(v68 + 4);
                  if (!v67)
                  {
                    break;
                  }

                  v66 = v67 - 80;
                  if (v114 >= *(v68 - 4))
                  {
                    v70 = &v6[v67];
                    v71 = &v6[v67];
                    v72 = &v6[v67 + 64];
                    v69 = (v71 + 32);
                    goto LABEL_125;
                  }
                }

                v72 = v68 + 64;
                v70 = v6;
LABEL_125:
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v70, v112);
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v69, v113);
                *v72 = v114;
                std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
                result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
              }

              v62 = v65 + 80;
              v63 += 80;
              v64 = v65;
            }

            while ((v65 + 80) != a2);
          }
        }
      }

      else if (v6 != v7)
      {
        v102 = (v6 + 80);
        if (v6 + 80 != a2)
        {
          v103 = v6 - 16;
          do
          {
            v104 = v102;
            if (*(v6 + 36) < *(v6 + 16))
            {
              std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, v102);
              std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, (v6 + 112));
              v114 = *(v6 + 9);
              v105 = v103;
              do
              {
                v106 = v105;
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v105 + 96), (v105 + 16));
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v106 + 128), (v106 + 48));
                *(v106 + 10) = *(v106 + 5);
                v105 = v106 - 80;
              }

              while (v114 < *v106);
              std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v106 + 16), v112);
              std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v106 + 48), v113);
              *(v106 + 5) = v114;
              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
              result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
            }

            v102 = (v104 + 80);
            v103 += 80;
            v6 = v104;
          }

          while (v104 + 80 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v6 != v7)
      {
        v73 = v11 >> 1;
        v74 = v11 >> 1;
        do
        {
          v75 = v74;
          if (v73 >= v74)
          {
            v76 = (2 * v74) | 1;
            v77 = &v6[80 * v76];
            if (2 * v74 + 2 < v10)
            {
              v78 = *(v77 + 64);
              v79 = *(v77 + 144);
              v80 = v78 < v79;
              v81 = v78 >= v79 ? 0 : 80;
              v77 += v81;
              if (v80)
              {
                v76 = 2 * v74 + 2;
              }
            }

            v82 = &v6[80 * v74];
            if (*(v77 + 64) >= *(v82 + 64))
            {
              std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, &v6[80 * v74]);
              std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, v82 + 32);
              v114 = *(v82 + 64);
              do
              {
                v83 = v77;
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v82, v77);
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v82 + 32, v77 + 32);
                *(v82 + 64) = *(v77 + 64);
                if (v73 < v76)
                {
                  break;
                }

                v84 = (2 * v76) | 1;
                v77 = &v6[80 * v84];
                if (2 * v76 + 2 < v10)
                {
                  v85 = *(v77 + 64);
                  v86 = *(v77 + 144);
                  v87 = v85 < v86;
                  v88 = v85 >= v86 ? 0 : 80;
                  v77 += v88;
                  if (v87)
                  {
                    v84 = 2 * v76 + 2;
                  }
                }

                v82 = v83;
                v76 = v84;
              }

              while (*(v77 + 64) >= v114);
              std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v83, v112);
              std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v83 + 32, v113);
              *(v83 + 64) = v114;
              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
            }
          }

          v74 = v75 - 1;
        }

        while (v75);
        v89 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
        do
        {
          v90 = a2;
          std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v109, v6);
          std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v110, (v6 + 32));
          v91 = 0;
          v111 = *(v6 + 4);
          v92 = v6;
          do
          {
            v93 = v92 + 80 * v91;
            v94 = v93 + 80;
            if (2 * v91 + 2 >= v89)
            {
              v91 = (2 * v91) | 1;
            }

            else
            {
              v95 = *(v93 + 144);
              v96 = *(v93 + 224);
              v97 = v93 + 160;
              if (v95 >= v96)
              {
                v91 = (2 * v91) | 1;
              }

              else
              {
                v94 = v97;
                v91 = 2 * v91 + 2;
              }
            }

            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v92, v94);
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v92 + 32, v94 + 32);
            *(v92 + 64) = *(v94 + 64);
            v92 = v94;
          }

          while (v91 <= ((v89 - 2) >> 1));
          a2 -= 80;
          if (v94 == v90 - 80)
          {
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94, v109);
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94 + 32, v110);
            *(v94 + 64) = v111;
          }

          else
          {
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94, (v90 - 80));
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94 + 32, (v90 - 48));
            *(v94 + 64) = *(v90 - 1);
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v90 - 80), v109);
            std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v90 - 48), v110);
            *(v90 - 1) = v111;
            v98 = v94 - v6 + 80;
            if (v98 >= 81)
            {
              v99 = (-2 - 0x3333333333333333 * (v98 >> 4)) >> 1;
              v100 = &v6[80 * v99];
              if (*(v100 + 64) < *(v94 + 64))
              {
                std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, v94);
                std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, v94 + 32);
                v114 = *(v94 + 64);
                do
                {
                  v101 = v100;
                  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94, v100);
                  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v94 + 32, v100 + 32);
                  *(v94 + 64) = *(v100 + 64);
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &v6[80 * v99];
                  v94 = v101;
                }

                while (*(v100 + 64) < v114);
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v101, v112);
                std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v101 + 32, v113);
                *(v101 + 64) = v114;
                std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
                std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
              }
            }
          }

          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v110);
          result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v109);
          v80 = v89-- <= 2;
        }

        while (!v80);
      }

      return result;
    }

    v12 = v10 >> 1;
    v13 = &v6[80 * (v10 >> 1)];
    v14 = *(v7 - 4);
    if (v9 >= 0x2801)
    {
      v15 = *(v13 + 64);
      if (v15 >= *(v6 + 16))
      {
        if (v14 < v15)
        {
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v13, v107);
          if (*(v13 + 64) < *(v6 + 16))
          {
            v16 = v6;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v6;
        if (v14 < v15)
        {
          goto LABEL_17;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v6, v13);
        if (*(v7 - 4) < *(v13 + 64))
        {
          v16 = v13;
LABEL_17:
          v17 = (a2 - 80);
LABEL_26:
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v16, v17);
        }
      }

      v21 = &v6[80 * v12];
      v22 = (v21 - 80);
      v23 = *(v21 - 4);
      v24 = *(v7 - 24);
      if (v23 >= *(v6 + 36))
      {
        if (v24 < v23)
        {
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v22, (a2 - 160));
          if (*(v22 + 64) < *(v6 + 36))
          {
            v25 = (v6 + 80);
            v26 = v22;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v25 = (v6 + 80);
        if (v24 < v23)
        {
          goto LABEL_31;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v25, v22);
        if (*(v7 - 24) < *(v22 + 64))
        {
          v25 = v22;
LABEL_31:
          v26 = (a2 - 160);
LABEL_38:
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v25, v26);
        }
      }

      v27 = &v6[80 * v12];
      v28 = *(v27 + 36);
      v29 = *(v7 - 44);
      if (v28 >= *(v6 + 56))
      {
        if (v29 < v28)
        {
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((v27 + 80), (a2 - 240));
          if (*(v27 + 36) < *(v6 + 56))
          {
            v30 = (v6 + 160);
            v31 = (v27 + 80);
            goto LABEL_47;
          }
        }
      }

      else
      {
        v30 = (v6 + 160);
        if (v29 < v28)
        {
          goto LABEL_43;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v30, (v27 + 80));
        if (*(v7 - 44) < *(v27 + 36))
        {
          v30 = (v27 + 80);
LABEL_43:
          v31 = (a2 - 240);
LABEL_47:
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v30, v31);
        }
      }

      v32 = *(v13 + 64);
      v33 = *(v27 + 36);
      if (v32 >= *(v22 + 64))
      {
        if (v33 < v32)
        {
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v13, (v27 + 80));
          if (*(v13 + 64) < *(v22 + 64))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = (v27 + 80);
          v35 = v22;
          goto LABEL_56;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v22, v13);
        if (*(v27 + 36) < *(v13 + 64))
        {
          v34 = (v27 + 80);
          v35 = v13;
LABEL_56:
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v35, v34);
        }
      }

      v19 = v6;
      v20 = v13;
      goto LABEL_58;
    }

    v18 = *(v6 + 16);
    if (v18 >= *(v13 + 64))
    {
      if (v14 >= v18)
      {
        goto LABEL_59;
      }

      std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v6, v107);
      if (*(v6 + 16) >= *(v13 + 64))
      {
        goto LABEL_59;
      }

      v19 = v13;
      v20 = v6;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v13, v6);
        if (*(v7 - 4) >= *(v6 + 16))
        {
          goto LABEL_59;
        }

        v19 = v6;
      }

      v20 = (a2 - 80);
    }

LABEL_58:
    std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v19, v20);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v6 - 4) < *(v6 + 16))
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, v6);
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, (v6 + 32));
      v114 = *(v6 + 4);
      v36 = v6;
      do
      {
        v37 = v36;
        v36 += 80;
      }

      while (*(v37 + 36) < v114);
      v38 = v7;
      if (v37 == v6)
      {
        v41 = v7;
        while (v36 < v41)
        {
          v39 = (v41 - 80);
          v42 = *(v41 - 4);
          v41 -= 80;
          if (v42 < v114)
          {
            goto LABEL_71;
          }
        }

        v39 = v41;
      }

      else
      {
        do
        {
          v39 = (v38 - 80);
          v40 = *(v38 - 4);
          v38 -= 80;
        }

        while (v40 >= v114);
      }

LABEL_71:
      v8 = v36;
      if (v36 < v39)
      {
        v43 = v39;
        do
        {
          std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v8, v43);
          do
          {
            v44 = *(v8 + 36);
            v8 += 80;
          }

          while (v44 < v114);
          do
          {
            v45 = *(v43 - 16);
            v43 -= 80;
          }

          while (v45 >= v114);
        }

        while (v8 < v43);
      }

      if (v8 - 80 != v6)
      {
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v6, (v8 - 80));
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v6 + 32), (v8 - 48));
        *(v6 + 4) = *(v8 - 1);
      }

      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v8 - 80), v112);
      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v8 - 48), v113);
      *(v8 - 1) = v114;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
      if (v36 < v39)
      {
        goto LABEL_82;
      }

      v46 = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *>(v6, v8 - 80);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *>(v8, v7);
      if (result)
      {
        a2 = v8 - 80;
        if (!v46)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v46)
      {
LABEL_82:
        result = std::__introsort<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,false>(v6, v8 - 80, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v112, v6);
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v113, (v6 + 32));
      v114 = *(v6 + 4);
      if (v114 >= *(v7 - 4))
      {
        v49 = v6 + 80;
        do
        {
          v8 = v49;
          if (v49 >= v7)
          {
            break;
          }

          v50 = *(v49 + 16);
          v49 += 80;
        }

        while (v114 >= v50);
      }

      else
      {
        v47 = v6;
        do
        {
          v8 = v47 + 80;
          v48 = *(v47 + 36);
          v47 += 80;
        }

        while (v114 >= v48);
      }

      v51 = v7;
      if (v8 < v7)
      {
        v52 = v7;
        do
        {
          v51 = (v52 - 80);
          v53 = *(v52 - 4);
          v52 -= 80;
        }

        while (v114 < v53);
      }

      while (v8 < v51)
      {
        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v8, v51);
        do
        {
          v54 = *(v8 + 36);
          v8 += 80;
        }

        while (v114 >= v54);
        do
        {
          v55 = *(v51 - 16);
          v51 -= 80;
        }

        while (v114 < v55);
      }

      if (v8 - 80 != v6)
      {
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v6, (v8 - 80));
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v6 + 32), (v8 - 48));
        *(v6 + 4) = *(v8 - 1);
      }

      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v8 - 80), v112);
      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v8 - 48), v113);
      *(v8 - 1) = v114;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v113);
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v112);
      a4 = 0;
    }
  }

  v58 = *(v6 + 36);
  v59 = *(v7 - 4);
  if (v58 < *(v6 + 16))
  {
    if (v59 < v58)
    {
      goto LABEL_111;
    }

    result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v6, (v6 + 80));
    if (*(v7 - 4) < *(v6 + 36))
    {
      v60 = (v6 + 80);
      goto LABEL_112;
    }

    return result;
  }

  if (v59 >= v58)
  {
    return result;
  }

  v56 = (v6 + 80);
  v57 = (a2 - 80);
LABEL_170:
  result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v56, v57);
  if (*(v6 + 36) < *(v6 + 16))
  {
    v61 = (v6 + 80);
    v60 = v6;
    return std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v60, v61);
  }

  return result;
}

uint64_t std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, a1 + 32);
  v7 = *(a1 + 64);
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a1, a2);
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a1 + 32, a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a2, v5);
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a2 + 32, v6);
  *(a2 + 64) = v7;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 64);
  v9 = *(a3 + 64);
  if (v8 >= *(result + 64))
  {
    if (v9 < v8)
    {
      result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a2, a3);
      if (*(a2 + 64) < *(v7 + 64))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(result, v10);
      goto LABEL_10;
    }

    result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(result, a2);
    if (*(a3 + 64) < *(a2 + 64))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 64) < *(a3 + 64))
  {
    result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a3, a4);
    if (*(a3 + 64) < *(a2 + 64))
    {
      result = std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a2, a3);
      if (*(a2 + 64) < *(v7 + 64))
      {

        return std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *>(_DWORD *a1, char *a2)
{
  v3 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[36];
        v9 = *(a2 - 4);
        if (v8 < a1[16])
        {
          if (v9 >= v8)
          {
            std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a1, (a1 + 20));
            if (*(a2 - 4) >= v3[36])
            {
              return 1;
            }

            a1 = v3 + 20;
          }

          v5 = (a2 - 80);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 20);
        v7 = (a2 - 80);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,0>(a1, (a1 + 20), (a1 + 40), (a2 - 80));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,md::TileGroupNotificationManager::addObserver(void const*,md::TileGroupNotificationManager::ObserverDescriptor const&)::$_0 &,md::TileGroupNotificationManager::CallbackEntry *,0>(a1, (a1 + 20), (a1 + 40), (a1 + 60));
        if (*(a2 - 4) >= v3[76])
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((v3 + 60), (a2 - 80));
        if (v3[76] >= v3[56])
        {
          return 1;
        }

        std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((v3 + 40), (v3 + 60));
        if (v3[56] >= v3[36])
        {
          return 1;
        }

        v6 = (v3 + 20);
        v7 = (v3 + 40);
        break;
      default:
        goto LABEL_16;
    }

    std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(v6, v7);
    if (v3[36] < v3[16])
    {
      v5 = (v3 + 20);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 4) < a1[16])
    {
      v5 = (a2 - 80);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 40;
  v11 = a1[36];
  v12 = a1[56];
  if (v11 < a1[16])
  {
    if (v12 >= v11)
    {
      std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a1, (a1 + 20));
      if (v3[56] >= v3[36])
      {
        goto LABEL_36;
      }

      a1 = v3 + 20;
    }

    v13 = (v3 + 40);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>((a1 + 20), (a1 + 40));
    if (v3[36] < v3[16])
    {
      v13 = (v3 + 20);
      a1 = v3;
LABEL_35:
      std::ranges::__swap::__fn::operator()[abi:nn200100]<md::TileGroupNotificationManager::CallbackEntry>(a1, v13);
    }
  }

LABEL_36:
  v14 = (v3 + 60);
  if (v3 + 60 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 64) < v10[16])
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v25, v14);
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v26, v14 + 32);
      v27 = *(v14 + 64);
      v17 = v15;
      while (1)
      {
        v18 = v17;
        v19 = v3 + v17;
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v3 + v17 + 240, v3 + v17 + 160);
        v20 = (v19 + 192);
        std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((v19 + 272), (v19 + 192));
        *(v19 + 19) = *(v19 + 14);
        if (v18 == -160)
        {
          break;
        }

        v17 = v18 - 80;
        if (v27 >= *(v19 + 36))
        {
          v21 = v3 + v17 + 240;
          v22 = v3 + v18;
          v23 = (v3 + v18 + 224);
          v20 = (v22 + 192);
          goto LABEL_44;
        }
      }

      v23 = v19 + 224;
      v21 = v3;
LABEL_44:
      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v21, v25);
      std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](v20, v26);
      *v23 = v27;
      ++v16;
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v26);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v25);
      if (v16 == 8)
      {
        return v14 + 80 == a2;
      }
    }

    v10 = v14;
    v15 += 80;
    v14 += 80;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void *md::ARWalkingMapEngineMode::willBecomeInactive(int a1, md::MapEngine *this, double a3, double a4, double a5)
{
  md::MapEngine::setDisplayRate(this, -1, a3, a4, a5);
  v6 = *(this + 5241);
  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0xF4B920F5F640B882);
  if (v7)
  {
    v8 = v7[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x69AB09C896BF94A7uLL)[5];
  *(v9 + 264) = 0;
  md::ARLogic::setARSession(v9, 0);
  md::ARFeatureInjectionLogic::setARDebugScene(v8, 0);

  return md::ARWalkingMapEngineMode::updateRegistries(this, 0, 0, v10);
}

void *md::ARWalkingMapEngineMode::updateRegistries(md::ARWalkingMapEngineMode *this, md::MapEngine *a2, gdc::Registry *a3, gdc::Registry *a4)
{
  v7 = *(this + 5241);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x69AB09C896BF94A7uLL)[5] + 248) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0xFB5C21263048A572)[5] + 120) = a2;
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0xED12839080614CEDLL);
  if (v8)
  {
    v9 = v8[5];
  }

  else
  {
    v9 = 0;
  }

  if (*(v9 + 120) != a2)
  {
    *(v9 + 120) = a2;
  }

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x98D5C8EC32AB5D9ELL)[5] + 120) = a2;
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x20A1ED17D78F322BuLL);
  if (v10)
  {
    v10 = v10[5];
  }

  md::LabelsLogic::setWorldType(v10, 2u);
  v11 = *(this + 5241);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x123A864D0AA1A5ADuLL)[5] + 528) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x14AF6A5C51A03795uLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xB922E53C3328A050)[5] + 168) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xBBE47937F4A9FFC3)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x6604A2C36A6A9ABFuLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xD20B76AD5FA2D0ADLL)[5] + 144) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x664391E400540AABuLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x5AEC4ACCAEFFBF89uLL)[5] + 128) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x740CC191D773D72BuLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x40755F331E0AB142uLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0x70FF69C50676D824uLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xF9FBA0FF1E09D6AuLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xD8AF9C2D0B889F8CLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v11 + 16), 0xAA8F0DAB5699C54BLL)[5] + 120) = a2;
  v12 = *(this + 5241);
  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0xB0E499CD21F9C854)[5];
  *(v13 + 120) = a2;
  *(v13 + 128) = a3;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0x8251BC418DB947FFLL)[5] + 120) = a2;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0xE7C55C766FD99921)[5] + 120) = a2;
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0x6CE28AC70D358CE7uLL);
  *(result[5] + 120) = a2;
  return result;
}

void md::ARWalkingMapEngineMode::didBecomeActive(uint64_t a1, md::MapEngine *this, double a3, double a4, double a5)
{
  v7 = this + 40960;
  md::MapEngine::setDisplayRate(this, -1, a3, a4, a5);
  v8 = *(v7 + 122);
  v9 = *v8;
  v10 = *(v8 + 8);
  while (v9 != v10)
  {
    if (*v9 == 27)
    {
      if (v9 != v10)
      {
        v11 = v9[8];
        goto LABEL_8;
      }

      break;
    }

    v9 += 16;
  }

  v11 = 0;
LABEL_8:
  v12 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 121) + 16), 0x3F812BA5755E8568uLL)[5] + 128);
  md::LabelExternalPointFeature::incident(v12);
  objc_claimAutoreleasedReturnValue();
  (*(*a1 + 56))(&v23, a1, this);
  v13 = v23;
  v23 = 0;
  v14 = *(a1 + 656);
  *(a1 + 656) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v23;
    v23 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  *(a1 + 648) = (*(*a1 + 64))(a1, v11, v12);
  v16 = (*(*a1 + 72))(a1);
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 664, v16);

  v17 = *(v7 + 121);
  v18 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v17 + 16), 0xF4B920F5F640B882);
  if (v18)
  {
    v19 = v18[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v17 + 16), 0x69AB09C896BF94A7uLL)[5];
  *(v20 + 264) = *(a1 + 656);
  v21 = *(a1 + 672);
  if (v21)
  {
    md::ARLogic::setARSession(v20, v21);
  }

  md::ARFeatureInjectionLogic::setARDebugScene(v19, *(a1 + 648));
  md::ARWalkingMapEngineMode::updateRegistries(this, *(a1 + 616), *(a1 + 632), v22);
}

void md::ARWalkingMapEngineMode::ARWalkingMapEngineMode(uint64_t a1, void *a2, void *a3, char a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = md::MapEngineMode::MapEngineMode(a1, a4);
  *v7 = &unk_1F2A4C198;
  v7[77] = *a2;
  v8 = a2[1];
  v7[78] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 632) = *a3;
  v9 = a3[1];
  *(a1 + 640) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 648) = 0u;
  *(a1 + 664) = &unk_1F2A4C1F8;
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  gdc::Registry::create(*(a1 + 616));
}

void sub_1B31D0730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 664) = a10;

  v12 = *(v10 + 656);
  *(v10 + 656) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(v10 + 640);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(v10 + 624);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  md::MapEngineMode::~MapEngineMode(v10);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void ___ZL33GEOGetVectorKitSharedResourcesLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "SharedResources");
  v1 = GEOGetVectorKitSharedResourcesLog(void)::log;
  GEOGetVectorKitSharedResourcesLog(void)::log = v0;
}

void std::__shared_ptr_emplace<md::MaskingOverlayRenderable>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    operator delete(v3);
  }

  v6 = (a1 + 96);
  std::vector<std::unique_ptr<ggl::RenderItem>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = *(a1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void std::__shared_ptr_emplace<md::MaskingOverlayRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EB88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MaskingOverlayMeshProcessor::_buildTintBandOverlayStyle(md::MaskingOverlayMeshProcessor *this, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 5;
  WORD2(v6) = 2;
  v4 = [*a2 style];
  v7 = 3;
  if (v4 == 1)
  {
    v5 = 118;
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  v9 = 65611;
  v10 = 10;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v11, &v6, 3uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v12, v11);
  gss::FeatureAttributeSet::sort(v12[0], v12[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v11);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(this, **(a2 + 32), v12);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v12);
}

void sub_1B31D0A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *md::MaskingOverlayMeshProcessor::processPolygons(uint64_t **this)
{
  v1 = this;
  v379 = *MEMORY[0x1E69E9840];
  v2 = this[1];
  v312 = (this + 1);
  for (i = this[2]; i != v2; std::allocator_traits<std::allocator<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData>>::destroy[abi:nn200100]<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData,void,0>(i))
  {
    i -= 12;
  }

  *(v1 + 2) = v2;
  v338 = &v338;
  v339 = &v338;
  v340 = 0;
  memset(v337, 0, sizeof(v337));
  v4 = [*v1 polygons];
  if ([v4 countByEnumeratingWithState:v337 objects:v372 count:16])
  {
    v5 = **(&v337[0] + 1);
    if (**(&v337[0] + 1))
    {
      [**(&v337[0] + 1) simplifiedGeometryAtZoomLevel:*(v1 + 57)];
    }

    else
    {
      v367[1] = 0;
      v367[0] = 0;
    }

    [v5 worldIndexes];
    operator new();
  }

  v313 = v1;
  if ([*v1 style])
  {
    v373 = 0;
    v374 = 0;
    v375 = 0;
    v6 = v339;
    if (v339 != &v338)
    {
      while (1)
      {
        md::MaskingOverlayMeshProcessor::_buildTintBandOverlayStyle(&v376, v1);
        v7 = v376;
        v376 = 0uLL;
        v8 = *&v7.f64[1];
        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v367, *&v7.f64[0], *&v7.f64[1]);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (*&v376.f64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v376.f64[1]);
        }

        if (v370 != 1)
        {
          goto LABEL_20;
        }

        v9 = geo::Polygon2<double>::boundingBox(*v6[2], *(v6[2] + 8));
        v13 = 1;
        v14 = fmin(*(v1 + 6), *(v1 + 5)) * 0.001953125;
        if (v14 != 0.0)
        {
          break;
        }

LABEL_21:
        if (v370 == 1)
        {
          (*(*v367[0] + 56))(v367[0]);
        }

        if (v369 != 0.0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v369);
        }

        if (v367[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v367[1]);
        }

        if (v13)
        {
          v26 = v6[2];
          v27 = v6[3];
          v367[0] = v26;
          v367[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
            v26 = v6[2];
          }

          LOWORD(v368) = *(v6 + 16);
          v369 = geo::Polygon2<double>::boundingBox(*v26, v26[1]);
          LOBYTE(v370) = 1;
          std::priority_queue<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::vector<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::allocator<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>::push(&v373, v367);
          if (v367[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v367[1]);
          }

          v28 = v6[2];
          v29 = v6[3];
          v367[0] = v28;
          v367[1] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
            v28 = v6[2];
          }

          LOWORD(v368) = *(v6 + 16);
          geo::Polygon2<double>::boundingBox(*v28, v28[1]);
          v369 = *&v30;
          LOBYTE(v370) = 0;
          std::priority_queue<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::vector<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::allocator<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>::push(&v373, v367);
          if (v367[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v367[1]);
          }
        }

        v6 = v6[1];
        if (v6 == &v338)
        {
          v31 = v373;
          v32 = v374;
          goto LABEL_40;
        }
      }

      v325 = v12;
      v327 = v11;
      v329 = v10;
      v333 = v9;
      v15 = *(v1 + 57);
      v16 = *(v1 + 15);
      v324 = *(v1 + 16);
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v367[0] + 3), 0x1D7u, 1u);
      v18 = 0.0;
      if (hasValueForKey)
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(471, 2, *(v367[0] + 3), 0);
        v18 = v19;
      }

      v20 = (1 << v15);
      v21.i64[0] = v324;
      v21.i64[1] = (1 << v15) + ~v16;
      v22 = vmulq_n_f64(vcvtq_f64_s64(v21), 1.0 / v20);
      v23.f64[0] = v327;
      v23.f64[1] = v325;
      v24.f64[0] = v333;
      v24.f64[1] = v329;
      v25 = vaddq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v23, v22), v20))), vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v22, v24), v20))));
      if (fmax(v25.f64[0], v25.f64[1]) / v14 <= v18)
      {
        v13 = 0;
        goto LABEL_21;
      }

LABEL_20:
      v13 = 1;
      goto LABEL_21;
    }

    v32 = 0;
    v31 = 0;
LABEL_40:
    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(&v338);
    *v349 = 0u;
    v350 = 0u;
    v351 = 1065353216;
    v347 = 0.0;
    v348 = 0uLL;
    if (v31 != v32)
    {
      v310 = &v350;
      while (1)
      {
        v33 = v31[1];
        v328 = *v31;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v319 = v33;
        v317 = *(v31 + 16);
        v315 = *(v31 + 17);
        v34 = *(v31 + 32);
        if (v32 - v31 >= 41)
        {
          v35 = 0;
          v36 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - v31) >> 3);
          v311 = *v31;
          v330 = v31[1];
          *v31 = 0;
          v31[1] = 0;
          v334 = *(v31 + 8);
          *(v367 + 6) = *(v31 + 3);
          BYTE6(v367[1]) = *(v31 + 32);
          v37 = v31;
          do
          {
            v38 = &v37[5 * v35 + 5];
            v39 = 2 * v35;
            v35 = (2 * v35) | 1;
            v40 = v39 + 2;
            if (v39 + 2 < v36)
            {
              v41 = std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>::operator()[abi:nn200100](v38, v38 + 40);
              v42 = v41 ? 40 : 0;
              v38 += v42;
              if (v41)
              {
                v35 = v40;
              }
            }

            v43 = *v38;
            *v38 = 0;
            *(v38 + 8) = 0;
            v44 = v37[1];
            *v37 = v43;
            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v44);
            }

            *(v37 + 8) = *(v38 + 16);
            v46 = (v38 + 24);
            v45 = *(v38 + 24);
            *(v37 + 32) = *(v38 + 32);
            v37[3] = v45;
            v37 = v38;
          }

          while (v35 <= ((v36 - 2) >> 1));
          if (v38 == v32 - 40)
          {
            v52 = *(v38 + 8);
            *v38 = v311;
            *(v38 + 8) = v330;
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v52);
            }

            *(v38 + 16) = v334;
            *v46 = *(v367 + 6);
            *(v38 + 32) = BYTE6(v367[1]);
          }

          else
          {
            v47 = *(v32 - 40);
            *(v32 - 5) = 0;
            *(v32 - 4) = 0;
            v48 = *(v38 + 8);
            *v38 = v47;
            if (v48)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v48);
            }

            *(v38 + 16) = *(v32 - 12);
            v49 = *(v32 - 2);
            *(v38 + 32) = *(v32 - 8);
            *v46 = v49;
            v50 = *(v32 - 4);
            *(v32 - 5) = v311;
            *(v32 - 4) = v330;
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v50);
            }

            *(v32 - 12) = v334;
            v51 = *(v367 + 6);
            *(v32 - 8) = BYTE6(v367[1]);
            *(v32 - 2) = v51;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge> &,std::__wrap_iter<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge*>>(v31, v38 + 40, 0xCCCCCCCCCCCCCCCDLL * ((v38 + 40 - v31) >> 3));
          }

          v1 = v313;
          v32 = v374;
        }

        v53 = *(v32 - 4);
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v53);
        }

        v374 = v32 - 40;
        if (v34)
        {
          break;
        }

        if (v349[1])
        {
          v243 = 0x9DDFEA08EB382D69 * ((8 * (v328 & 0x1FFFFFFF) + 8) ^ (v328 >> 32));
          v244 = 0x9DDFEA08EB382D69 * ((v328 >> 32) ^ (v243 >> 47) ^ v243);
          v245 = 0x9DDFEA08EB382D69 * (v244 ^ (v244 >> 47));
          v246 = vcnt_s8(v349[1]);
          v246.i16[0] = vaddlv_u8(v246);
          if (v246.u32[0] > 1uLL)
          {
            v247 = v245;
            if (v245 >= v349[1])
            {
              v247 = v245 % v349[1];
            }
          }

          else
          {
            v247 = (v349[1] - 1) & v245;
          }

          v253 = *(v349[0] + v247);
          if (v253)
          {
            for (j = *v253; j; j = *j)
            {
              v255 = j[1];
              if (v255 == v245)
              {
                if (j[2] == v328 && *(j + 32) == v317 && *(j + 33) == v315)
                {
                  std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>>::push_back();
                }
              }

              else
              {
                if (v246.u32[0] > 1uLL)
                {
                  if (v255 >= v349[1])
                  {
                    v255 %= v349[1];
                  }
                }

                else
                {
                  v255 &= v349[1] - 1;
                }

                if (v255 != v247)
                {
                  break;
                }
              }
            }
          }
        }

LABEL_372:
        if (v319)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v319);
        }

        v31 = v373;
        v32 = v374;
        if (v373 == v374)
        {
          goto LABEL_375;
        }
      }

      v54 = v350;
LABEL_69:
      if (!v54)
      {
        v248 = 0x9DDFEA08EB382D69 * ((8 * (v328 & 0x1FFFFFFF) + 8) ^ (v328 >> 32));
        v249 = 0x9DDFEA08EB382D69 * ((v328 >> 32) ^ (v248 >> 47) ^ v248);
        v250 = 0x9DDFEA08EB382D69 * (v249 ^ (v249 >> 47));
        if (v349[1])
        {
          v251 = vcnt_s8(v349[1]);
          v251.i16[0] = vaddlv_u8(v251);
          if (v251.u32[0] > 1uLL)
          {
            v252 = 0x9DDFEA08EB382D69 * (v249 ^ (v249 >> 47));
            if (v250 >= v349[1])
            {
              v252 = v250 % v349[1];
            }
          }

          else
          {
            v252 = (v349[1] - 1) & v250;
          }

          v256 = *(v349[0] + v252);
          if (v256)
          {
            for (k = *v256; k; k = *k)
            {
              v258 = k[1];
              if (v258 == v250)
              {
                if (k[2] == v328 && *(k + 32) == v317 && *(k + 33) == v315)
                {
                  goto LABEL_372;
                }
              }

              else
              {
                if (v251.u32[0] > 1uLL)
                {
                  if (v258 >= v349[1])
                  {
                    v258 %= v349[1];
                  }
                }

                else
                {
                  v258 &= v349[1] - 1;
                }

                if (v258 != v252)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      v331 = v54;
      v56 = v347;
      v55 = v348.f64[0];
      if (*&v348.f64[0] != *&v347)
      {
        v57 = v348.f64[0];
        do
        {
          v59 = *(*&v57 - 24);
          *&v57 -= 24;
          v58 = v59;
          if (v59)
          {
            *(*&v55 - 16) = v58;
            operator delete(v58);
          }

          v55 = v57;
        }

        while (*&v57 != *&v56);
      }

      v348.f64[0] = v56;
      v344 = geo::Polygon2<double>::boundingBox(*v328, v328[1]);
      v345 = v60;
      v346[0] = v61;
      v346[1] = v62;
      v63 = geo::Polygon2<double>::boundingBox(**(v54 + 16), *(*(v54 + 16) + 8));
      v64 = 0;
      v341 = v63;
      v342 = v65;
      v343[0] = v66;
      v343[1] = v67;
      v68 = &v344;
      v69 = &v341;
      v70 = 1;
      do
      {
        if (*&v346[v64] <= *v69 || *v68 >= *&v343[v64])
        {
          goto LABEL_333;
        }

        v71 = v70;
        v70 = 0;
        v69 = &v342;
        v68 = &v345;
        v64 = 1;
      }

      while ((v71 & 1) != 0);
      v72 = *(v54 + 16);
      v367[1] = 0;
      v367[0] = 0;
      memset(v371, 0, sizeof(v371));
      v368 = 0;
      v370 = v371;
      v354 = 0;
      v355 = 0;
      v356 = 0;
      __src = 0;
      v353 = 0uLL;
      geo::MartinezPolygonUnion<double>::clear(v367);
      v360 = &v360;
      v361 = &v360;
      v362 = 0;
      geo::MartinezPolygonUnion<double>::addPolygonPoints(v367, v328);
      geo::MartinezPolygonUnion<double>::addPolygonPoints(v367, v72);
      while (2)
      {
        v73 = v367[0];
        v74 = v367[1];
        if (v367[0] != v367[1])
        {
          v75 = *v367[0];
          v76 = (v367[1] - v367[0]) >> 3;
          if (v76 >= 2)
          {
            v77 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(v367[0], v76);
            v78 = (v74 - 8);
            if (v74 - 8 == v77)
            {
              *v77 = v75;
            }

            else
            {
              *v77 = *v78;
              *v78 = v75;
              std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(v73, (v77 + 1), ((v77 + 1) - v73) >> 3);
            }
          }

          v367[1] = v367[1] - 8;
          if (*(v75 + 36) == 1)
          {
            *&v376.f64[0] = v75;
            std::__tree<geo::MartinezPolygonUnion<double>::VerticalIndex,std::less<geo::MartinezPolygonUnion<double>::VerticalIndex>,std::allocator<geo::MartinezPolygonUnion<double>::VerticalIndex>>::__emplace_unique_key_args<geo::MartinezPolygonUnion<double>::VerticalIndex,geo::MartinezPolygonUnion<double>::VerticalIndex>(&v370, &v376);
            v376.f64[0] = 0.0;
            v363 = 0;
            geo::MartinezPolygonUnion<double>::findPrevAndNext(v367, v75, &v376, &v363);
            v79 = *&v376.f64[0];
            if (*&v376.f64[0])
            {
              if (*(*&v376.f64[0] + 32) == *(v75 + 32))
              {
                *(v75 + 48) = *(*&v376.f64[0] + 48);
                v80 = *(v79 + 49) ^ 1;
              }

              else
              {
                *(v75 + 48) = *(*&v376.f64[0] + 49) ^ 1;
                v80 = *(v79 + 48);
              }

              *(v75 + 49) = v80;
            }

            geo::MartinezPolygonUnion<double>::possibleIntersects(v367, v75, v363);
            geo::MartinezPolygonUnion<double>::possibleIntersects(v367, v75, v79);
            continue;
          }

          v81 = *(v75 + 40);
          if (!v81)
          {
            continue;
          }

          if (*(v81 + 50))
          {
            if ((*(v81 + 51) & 1) != 0 || *(v81 + 52) != 1)
            {
              goto LABEL_221;
            }
          }

          else if (v81[6])
          {
            goto LABEL_221;
          }

          v82 = &v360;
          v83 = v361;
LABEL_96:
          v84 = v83;
LABEL_97:
          if (v84 == &v360)
          {
            if (v82 == &v360)
            {
              operator new();
            }

LABEL_221:
            v376.f64[0] = 0.0;
            v363 = 0;
            geo::MartinezPolygonUnion<double>::findPrevAndNext(v367, v75, &v376, &v363);
            __p[0] = v81;
            std::__tree<geo::MartinezPolygonUnion<double>::VerticalIndex,std::less<geo::MartinezPolygonUnion<double>::VerticalIndex>,std::allocator<geo::MartinezPolygonUnion<double>::VerticalIndex>>::__erase_unique<geo::MartinezPolygonUnion<double>::VerticalIndex>(&v370, __p);
            geo::MartinezPolygonUnion<double>::possibleIntersects(v367, *&v376.f64[0], v363);
            continue;
          }

          if (v84[5])
          {
            goto LABEL_215;
          }

          v85 = v84[2];
          v86 = v84[3];
          if (v85 == v86)
          {
            goto LABEL_215;
          }

          v87 = 0;
          v88 = *(v81 + 8);
          v89 = 1;
          do
          {
            v90 = vabdd_f64(v85->f64[v87], v81[v87]);
            if ((v89 & 1) == 0)
            {
              break;
            }

            v89 = 0;
            v87 = 1;
          }

          while (v90 < 1.0e-12);
          if (v90 >= 1.0e-12)
          {
            v92 = 0;
            v93 = v81[2] + *v81;
            v94 = 1;
            do
            {
              v95 = vabdd_f64(v85->f64[v92], v93);
              if ((v94 & 1) == 0)
              {
                break;
              }

              v94 = 0;
              v93 = v81[3] + v81[1];
              v92 = 1;
            }

            while (v95 < 1.0e-12);
            if (v95 < 1.0e-12)
            {
              v91 = 0;
            }

            else
            {
              v91 = -1;
            }
          }

          else
          {
            v91 = 0;
          }

          v96 = 0;
          v97 = v86[-2];
          v98 = v86[-1].f64[0] + v97.f64[0];
          v99 = 1;
          v100 = v98;
          do
          {
            v101 = vabdd_f64(v100, v81[v96]);
            if ((v99 & 1) == 0)
            {
              break;
            }

            v99 = 0;
            v100 = v86[-1].f64[1] + v86[-2].f64[1];
            v96 = 1;
          }

          while (v101 < 1.0e-12);
          if (v101 < 1.0e-12)
          {
            v102 = *(v81 + 2);
            v103 = 1;
            goto LABEL_124;
          }

          v102 = *(v81 + 2);
          v104 = vaddq_f64(v102, *v81);
          v105 = 1;
          v106 = v104.f64[0];
          do
          {
            v107 = vabdd_f64(v98, v106);
            if ((v105 & 1) == 0)
            {
              break;
            }

            v105 = 0;
            v106 = v104.f64[1];
            v98 = v86[-1].f64[1] + v86[-2].f64[1];
          }

          while (v107 < 1.0e-12);
          if (v107 < 1.0e-12)
          {
            v103 = 1;
          }

          else
          {
            v103 = v91;
          }

          if (v90 < 1.0e-12 || v107 < 1.0e-12)
          {
            v102 = vnegq_f64(v102);
            v376 = v104;
          }

          else
          {
LABEL_124:
            v376 = *v81;
          }

          v377 = v102;
          if (v103 == 1)
          {
            v110 = vaddq_f64(v102, v376);
            v111 = vmulq_f64(vsubq_f64(v97, v110), vextq_s8(v102, v102, 8uLL));
            if (fabs(vsubq_f64(v111, vdupq_laneq_s64(v111, 1)).f64[0]) <= 1.0e-12)
            {
              v86[-1] = vsubq_f64(v110, v97);
            }

            else
            {
              std::vector<gm::LineSegment<double,2>>::push_back[abi:nn200100](v84 + 2, &v376);
            }
          }

          else if (!v103)
          {
            v108 = vaddq_f64(v85[1], *v85);
            v109 = vmulq_f64(vsubq_f64(v108, vaddq_f64(v376, v102)), vextq_s8(v102, v102, 8uLL));
            if (fabs(vsubq_f64(v109, vdupq_laneq_s64(v109, 1)).f64[0]) <= 1.0e-12)
            {
              v112 = vsubq_f64(v108, v376);
              *v85 = v376;
              v85[1] = v112;
            }

            else
            {
              std::vector<gm::LineSegment<double,2>>::insert(v84 + 2, v85, &v376);
            }
          }

          v113 = 0;
          v114 = v84[3];
          v115 = *(v114 - 16) + *(v114 - 32);
          v116 = *(v114 - 8) + *(v114 - 24);
          v117 = 1;
          do
          {
            v118 = vabdd_f64(*(v84[2] + 8 * v113), v115);
            if ((v117 & 1) == 0)
            {
              break;
            }

            v117 = 0;
            v115 = v116;
            v113 = 1;
          }

          while (v118 < 1.0e-12);
          if (v118 < 1.0e-12)
          {
            *(v84 + 40) = 1;
          }

          if (v103 == -1)
          {
            goto LABEL_215;
          }

          v119 = *(v84 + 11);
          if (v119 != 2 && v119 != v88)
          {
            *(v84 + 11) = 2;
          }

          if (v82 == &v360)
          {
            v84 = v83;
            v82 = v83;
LABEL_215:
            v83 = v84[1];
            goto LABEL_96;
          }

          if (v82 == v84)
          {
            goto LABEL_215;
          }

          if ((v82[5] & 1) == 0 && (v84[5] & 1) == 0)
          {
            v121 = v82[2];
            v122 = v82[3];
            if (v121 != v122)
            {
              v123 = v84[2];
              v124 = v84[3];
              if (v123 != v124)
              {
                v125 = 0;
                v126 = v123[2] + *v123;
                v127 = 1;
                v128 = v126;
                do
                {
                  v129 = vabdd_f64(v121[v125], v128);
                  if ((v127 & 1) == 0)
                  {
                    break;
                  }

                  v127 = 0;
                  v128 = v123[3] + v123[1];
                  v125 = 1;
                }

                while (v129 < 1.0e-12);
                if (v129 < 1.0e-12)
                {
                  v130 = 0;
                  v131 = v121[2] + *v121;
                  v132 = 1;
                  do
                  {
                    v133 = vabdd_f64(v131, v123[v130]);
                    if ((v132 & 1) == 0)
                    {
                      break;
                    }

                    v132 = 0;
                    v131 = v121[3] + v121[1];
                    v130 = 1;
                  }

                  while (v133 < 1.0e-12);
                  if (v133 < 1.0e-12)
                  {
                    v134 = 0;
                    v135 = 1;
                    goto LABEL_169;
                  }
                }

                v136 = 0;
                v137 = v122 - 4;
                v138 = v124 - 4;
                v139 = *(v124 - 2) + *(v124 - 4);
                v140 = 1;
                v141 = v139;
                do
                {
                  v142 = vabdd_f64(v137[v136], v141);
                  if ((v140 & 1) == 0)
                  {
                    break;
                  }

                  v140 = 0;
                  v141 = *(v124 - 1) + *(v124 - 3);
                  v136 = 1;
                }

                while (v142 < 1.0e-12);
                if (v142 >= 1.0e-12)
                {
                  goto LABEL_170;
                }

                v143 = 0;
                v144 = *(v122 - 2) + *(v122 - 4);
                v145 = 1;
                do
                {
                  v146 = vabdd_f64(v144, v138[v143]);
                  if ((v145 & 1) == 0)
                  {
                    break;
                  }

                  v145 = 0;
                  v144 = *(v122 - 1) + *(v122 - 3);
                  v143 = 1;
                }

                while (v146 < 1.0e-12);
                if (v146 >= 1.0e-12)
                {
LABEL_170:
                  v148 = 0;
                  v149 = 1;
                  do
                  {
                    v150 = vabdd_f64(v121[v148], v138[v148]);
                    if ((v149 & 1) == 0)
                    {
                      break;
                    }

                    v149 = 0;
                    v148 = 1;
                  }

                  while (v150 < 1.0e-12);
                  if (v150 < 1.0e-12)
                  {
                    v151 = v121[2] + *v121;
                    v152 = 1;
                    do
                    {
                      v153 = vabdd_f64(v151, v139);
                      if ((v152 & 1) == 0)
                      {
                        break;
                      }

                      v152 = 0;
                      v139 = *(v124 - 1) + *(v124 - 3);
                      v151 = v121[3] + v121[1];
                    }

                    while (v153 < 1.0e-12);
                    if (v153 < 1.0e-12)
                    {
                      v147 = 0;
                      v135 = 1;
                      v134 = 1;
                      goto LABEL_188;
                    }
                  }

                  v154 = 0;
                  v155 = 1;
                  do
                  {
                    v156 = vabdd_f64(v137[v154], v123[v154]);
                    if ((v155 & 1) == 0)
                    {
                      break;
                    }

                    v155 = 0;
                    v154 = 1;
                  }

                  while (v156 < 1.0e-12);
                  if (v156 < 1.0e-12)
                  {
                    v157 = *(v122 - 2) + *(v122 - 4);
                    v158 = 1;
                    do
                    {
                      v159 = vabdd_f64(v157, v126);
                      if ((v158 & 1) == 0)
                      {
                        break;
                      }

                      v158 = 0;
                      v126 = v123[3] + v123[1];
                      v157 = *(v122 - 1) + *(v122 - 3);
                    }

                    while (v159 < 1.0e-12);
                    if (v159 < 1.0e-12)
                    {
                      v135 = 0;
                      v134 = 0;
                      v147 = 0;
                      goto LABEL_188;
                    }
                  }

                  v166 = 1;
                }

                else
                {
                  v135 = 0;
                  v134 = 1;
LABEL_169:
                  v147 = 1;
LABEL_188:
                  v160 = (v124 - v123) >> 5;
                  if (v160 >= 2)
                  {
                    v161 = -2;
                    v162 = 1;
                    do
                    {
                      v163 = v160 + v161;
                      if (!v134)
                      {
                        v163 = v162;
                      }

                      v164 = &v123[4 * v163];
                      if (v147)
                      {
                        v165 = v164[1];
                        *v164 = vaddq_f64(v165, *v164);
                        v164[1] = vnegq_f64(v165);
                      }

                      if (v135)
                      {
                        std::vector<gm::LineSegment<double,2>>::insert(v82 + 2, v82[2], v164);
                      }

                      else
                      {
                        std::vector<gm::LineSegment<double,2>>::push_back[abi:nn200100](v82 + 2, &v123[4 * v163]);
                      }

                      ++v162;
                      v123 = v84[2];
                      v160 = (v84[3] - v123) >> 5;
                      --v161;
                    }

                    while (v162 < v160);
                    v121 = v82[2];
                  }

                  v166 = 0;
                  v84[3] = v123;
                  v122 = v82[3];
                }

                v167 = 0;
                v168 = *(v122 - 2) + *(v122 - 4);
                v169 = *(v122 - 1) + *(v122 - 3);
                v170 = 1;
                do
                {
                  v171 = vabdd_f64(v121[v167], v168);
                  if ((v170 & 1) == 0)
                  {
                    break;
                  }

                  v170 = 0;
                  v168 = v169;
                  v167 = 1;
                }

                while (v171 < 1.0e-12);
                if (v171 < 1.0e-12)
                {
                  *(v82 + 40) = 1;
                }

                if ((v166 & 1) == 0)
                {
                  v172 = *(v82 + 11);
                  if (v172 != 2 && v172 != *(v84 + 11))
                  {
                    *(v82 + 11) = 2;
                  }
                }
              }
            }
          }

          v174 = *v84;
          v175 = v84[1];
          *(v174 + 8) = v175;
          *v175 = v174;
          --v362;
          std::__list_imp<geo::MartinezPolygonUnion<double>::Chain,std::allocator<geo::MartinezPolygonUnion<double>::Chain>>::__delete_node[abi:nn200100](v84);
          v84 = v175;
          goto LABEL_97;
        }

        break;
      }

      *__p = 0u;
      v358 = 0u;
      v359 = 1065353216;
      v176 = v361;
      if (v361 == &v360)
      {
        goto LABEL_301;
      }

LABEL_223:
      if (*(v176 + 40) != 1)
      {
        goto LABEL_270;
      }

      v177 = *(v176 + 11);
      if (!__p[1])
      {
        goto LABEL_255;
      }

      v178 = vcnt_s8(__p[1]);
      v178.i16[0] = vaddlv_u8(v178);
      if (v178.u32[0] > 1uLL)
      {
        v179 = *(v176 + 11);
        if (__p[1] <= v177)
        {
          v179 = v177 % LODWORD(__p[1]);
        }
      }

      else
      {
        v179 = (LODWORD(__p[1]) - 1) & v177;
      }

      v180 = *(__p[0] + v179);
      if (!v180 || (m = *v180) == 0)
      {
LABEL_240:
        if (v178.u32[0] > 1uLL)
        {
          v183 = *(v176 + 11);
          if (__p[1] <= v177)
          {
            v183 = v177 % LODWORD(__p[1]);
          }
        }

        else
        {
          v183 = (LODWORD(__p[1]) - 1) & v177;
        }

        v184 = *(__p[0] + v183);
        if (v184)
        {
          for (m = *v184; m; m = *m)
          {
            v185 = m[1];
            if (v185 == v177)
            {
              if (*(m + 4) == v177)
              {
                goto LABEL_256;
              }
            }

            else
            {
              if (v178.u32[0] > 1uLL)
              {
                if (v185 >= __p[1])
                {
                  v185 %= __p[1];
                }
              }

              else
              {
                v185 &= __p[1] - 1;
              }

              if (v185 != v183)
              {
                break;
              }
            }
          }
        }

LABEL_255:
        operator new();
      }

      while (1)
      {
        v182 = m[1];
        if (v182 == v177)
        {
          if (*(m + 4) == v177)
          {
LABEL_256:
            v186 = (v176 + 2);
            v188 = m[4];
            v187 = m[5];
            if (v188 >= v187)
            {
              v190 = m[3];
              v191 = (v188 - v190) >> 3;
              if ((v191 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v192 = v187 - v190;
              v193 = v192 >> 2;
              if (v192 >> 2 <= (v191 + 1))
              {
                v193 = v191 + 1;
              }

              if (v192 >= 0x7FFFFFFFFFFFFFF8)
              {
                v194 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v194 = v193;
              }

              if (v194)
              {
                if (!(v194 >> 61))
                {
                  operator new();
                }

LABEL_434:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v195 = (8 * v191);
              *v195 = v186;
              v189 = 8 * v191 + 8;
              v196 = m[3];
              v197 = m[4] - v196;
              v198 = v195 - v197;
              memcpy(v195 - v197, v196, v197);
              v199 = m[3];
              m[3] = v198;
              m[4] = v189;
              m[5] = 0;
              if (v199)
              {
                operator delete(v199);
              }
            }

            else
            {
              *v188 = v186;
              v189 = (v188 + 1);
            }

            m[4] = v189;
LABEL_270:
            v176 = v176[1];
            if (v176 == &v360)
            {
              for (n = v358; n; n = *n)
              {
                v201 = std::vector<std::vector<gm::Matrix<double,2,1>>>::emplace<>(&v354, v355);
                v202 = v353;
                if (v353 >= *(&v353 + 1))
                {
                  v204 = v353 - __src;
                  v205 = 0xAAAAAAAAAAAAAAABLL * ((v353 - __src) >> 3);
                  v206 = v205 + 1;
                  if (v205 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  if (0x5555555555555556 * ((*(&v353 + 1) - __src) >> 3) > v206)
                  {
                    v206 = 0x5555555555555556 * ((*(&v353 + 1) - __src) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((*(&v353 + 1) - __src) >> 3) >= 0x555555555555555)
                  {
                    v207 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v207 = v206;
                  }

                  p_src = &__src;
                  if (v207)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v207);
                  }

                  v208 = (8 * ((v353 - __src) >> 3));
                  v363 = 0;
                  v364 = v208;
                  v365 = v208;
                  if (!v205)
                  {
                    if (v204 < 1)
                    {
                      v378 = p_src;
                      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v353 == __src);
                    }

                    v208 -= 3 * ((0xAAAAAAAAAAAAAAABLL * (v204 >> 3) + 1) >> 1);
                    *&v365 = v208;
                    v364 = v208;
                  }

                  *v208 = 0;
                  v208[1] = 0;
                  v208[2] = 0;
                  v203 = v364;
                  v209 = (v365 + 24);
                  *&v365 = v209;
                  v210 = v353 - v202;
                  memcpy(v209, v202, v353 - v202);
                  *&v365 = &v209[v210];
                  *&v353 = v202;
                  v211 = v203 - (v202 - __src);
                  memcpy(v211, __src, v202 - __src);
                  v212 = __src;
                  v213 = *(&v353 + 1);
                  __src = v211;
                  v353 = v365;
                  *&v365 = v212;
                  *(&v365 + 1) = v213;
                  v364 = v212;
                  v363 = v212;
                  std::__split_buffer<std::vector<std::vector<gm::Matrix<double,2,1>>>>::~__split_buffer(&v363);
                }

                else
                {
                  *v353 = 0;
                  v202[1] = 0;
                  v202[2] = 0;
                  *&v353 = v202 + 3;
                  v203 = v202;
                }

                v214 = n[3];
                v215 = **v214;
                if ((*v214)[1] != v215)
                {
                  v216 = 0;
                  v217 = 0;
                  do
                  {
                    v218 = (v215 + v216);
                    if (!v217)
                    {
                      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](v201, (v215 + v216));
                    }

                    v376 = vaddq_f64(v218[1], *v218);
                    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](v201, &v376);
                    ++v217;
                    v214 = n[3];
                    v215 = **v214;
                    v216 += 32;
                  }

                  while (v217 < ((*v214)[1] - v215) >> 5);
                }

                if (n[4] - v214 >= 9uLL)
                {
                  v219 = 1;
                  do
                  {
                    v220 = std::vector<std::vector<gm::Matrix<double,2,1>>>::emplace<>(v203, v203[1]);
                    v221 = n[3];
                    v222 = **(v221 + 8 * v219);
                    if (*(*(v221 + 8 * v219) + 8) != v222)
                    {
                      v223 = v220;
                      v224 = 0;
                      v225 = 0;
                      do
                      {
                        v226 = (v222 + v224);
                        if (!v225)
                        {
                          std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](v223, (v222 + v224));
                        }

                        v376 = vaddq_f64(v226[1], *v226);
                        std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](v223, &v376);
                        v221 = n[3];
                        ++v225;
                        v222 = **(v221 + 8 * v219);
                        v224 += 32;
                      }

                      while (v225 < (*(*(v221 + 8 * v219) + 8) - v222) >> 5);
                    }

                    ++v219;
                  }

                  while (v219 < (n[4] - v221) >> 3);
                }
              }

LABEL_301:
              geo::MartinezPolygonUnion<double>::clear(v367);
              std::__list_imp<geo::MartinezPolygonUnion<double>::Chain,std::allocator<geo::MartinezPolygonUnion<double>::Chain>>::clear(&v360);
              v228 = v354;
              v227 = v355;
              v1 = v313;
              if (v354 != v355)
              {
                v229 = v348.f64[0];
                do
                {
                  if (*&v229 >= *&v348.f64[1])
                  {
                    v230 = 0xAAAAAAAAAAAAAAABLL * ((*&v229 - *&v347) >> 3) + 1;
                    if (v230 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    if (0x5555555555555556 * ((*&v348.f64[1] - *&v347) >> 3) > v230)
                    {
                      v230 = 0x5555555555555556 * ((*&v348.f64[1] - *&v347) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((*&v348.f64[1] - *&v347) >> 3) >= 0x555555555555555)
                    {
                      v231 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v231 = v230;
                    }

                    v378 = &v347;
                    if (v231)
                    {
                      if (v231 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      goto LABEL_434;
                    }

                    v376.f64[0] = 0.0;
                    *&v376.f64[1] = 8 * ((*&v229 - *&v347) >> 3);
                    v377 = *&v376.f64[1];
                    std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](*&v376.f64[1], v228);
                    *&v377.f64[0] += 24;
                    v233 = v347;
                    v232 = v348.f64[0];
                    *&v234 = *&v376.f64[1] + *&v347 - *&v348.f64[0];
                    if (*&v347 != *&v348.f64[0])
                    {
                      v235 = v347;
                      v236 = (*&v376.f64[1] + *&v347 - *&v348.f64[0]);
                      do
                      {
                        *v236 = 0;
                        v236[1] = 0;
                        v236[2] = 0;
                        *v236 = **&v235;
                        v236[2] = *(*&v235 + 16);
                        **&v235 = 0;
                        *(*&v235 + 8) = 0;
                        *(*&v235 + 16) = 0;
                        *&v235 += 24;
                        v236 += 3;
                      }

                      while (*&v235 != *&v232);
                      do
                      {
                        v237 = **&v233;
                        if (**&v233)
                        {
                          *(*&v233 + 8) = v237;
                          operator delete(v237);
                        }

                        *&v233 += 24;
                      }

                      while (*&v233 != *&v232);
                    }

                    v238 = v347;
                    v239 = v348.f64[1];
                    v347 = v234;
                    v335 = v377.f64[0];
                    v348 = v377;
                    v377.f64[0] = v238;
                    v377.f64[1] = v239;
                    v376.f64[0] = v238;
                    v376.f64[1] = v238;
                    std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&v376);
                    v229 = v335;
                  }

                  else
                  {
                    std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](*&v229, v228);
                    *&v229 += 24;
                  }

                  v348.f64[0] = v229;
                  v228 += 24;
                }

                while (v228 != v227);
              }

              v240 = __src;
              if (__src == v353)
              {
                v242 = 1;
              }

              else
              {
                LOBYTE(v241) = 0;
                do
                {
                  v241 = v241 || *v240 != v240[1];
                  v240 += 3;
                }

                while (v240 != v353);
                v242 = !v241;
              }

              *&v376.f64[0] = &__src;
              std::vector<std::vector<std::vector<gm::Matrix<double,2,1>>>>::__destroy_vector::operator()[abi:nn200100](&v376);
              *&v376.f64[0] = &v354;
              std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v376);
              geo::MartinezPolygonUnion<double>::~MartinezPolygonUnion(v367);
              if (v242 && *&v348.f64[0] - *&v347 == 24)
              {
                operator new();
              }

LABEL_333:
              v54 = *v331;
              goto LABEL_69;
            }

            goto LABEL_223;
          }
        }

        else
        {
          if (v178.u32[0] > 1uLL)
          {
            if (v182 >= __p[1])
            {
              v182 %= __p[1];
            }
          }

          else
          {
            v182 &= __p[1] - 1;
          }

          if (v182 != v179)
          {
            goto LABEL_240;
          }
        }

        m = *m;
        if (!m)
        {
          goto LABEL_240;
        }
      }
    }

LABEL_375:
    for (ii = v339; ii != &v338; ii = ii[1])
    {
      v260 = ii[2];
      v261 = v260[1];
      v262 = v261 - *v260;
      if (v261 != *v260)
      {
        v263 = (*v260 + 2);
        v264 = v262 >> 4;
        v265 = v262 >> 4 != 0;
        v266 = (v262 >> 4) - 1;
        if (v266 == 0 || !v265)
        {
          v264 = 1;
        }

        v267 = 0.0;
        do
        {
          if (v266)
          {
            v268 = v263;
          }

          else
          {
            v268 = *v260;
          }

          v267 = v267 + (*(v263 - 8) + v268[1]) * (*v268 - *(v263 - 16));
          v263 += 16;
          --v266;
          --v264;
        }

        while (v264);
        if (v267 > 0.0)
        {
          std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](v367, v260);
          v269 = v367[0];
          v270 = (v367[1] - 16);
          v271 = v367[0] != v367[1] && v270 > v367[0];
          if (v271)
          {
            do
            {
              v272 = *v269;
              v273 = v269[1];
              *v269 = *v270;
              v269[1] = v270[1];
              *v270 = v272;
              v270[1] = v273;
              v270 -= 2;
              v269 += 2;
            }

            while (v269 < v270);
          }

          operator new();
        }
      }
    }

    v367[0] = &v347;
    std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](v367);
    std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(v349);
    if (v31)
    {
      while (v32 != v31)
      {
        v274 = *(v32 - 4);
        if (v274)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v274);
        }

        v32 -= 40;
      }

      v374 = v31;
      operator delete(v31);
    }
  }

  v322 = v339;
  if (v339 != &v338)
  {
    if (![*v1 style])
    {
      v308 = *(v322 + 3);
      *&v376.f64[0] = v322[2];
      v376.f64[1] = v308;
      if (v308 != 0.0)
      {
        atomic_fetch_add_explicit((*&v308 + 8), 1uLL, memory_order_relaxed);
      }

      LOWORD(v377.f64[0]) = *(v322 + 16);
      v367[0] = v367;
      v367[1] = v367;
      v368 = 0;
      std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>>::push_back();
    }

    v275 = *(v1 + 57);
    v276 = +[VKDebugSettings sharedSettings];
    [v276 maskingOverlayRadiusEdgeRatio];
    v278 = v277;

    v279 = +[VKDebugSettings sharedSettings];
    [v279 maskingOverlayRadiusZoomCorrectionStep];
    v281 = v280;

    v282 = 1.0;
    if (v275 >= 8)
    {
      v282 = fmax(-(v281 * (v275 - 8) + -1.0), 0.01);
    }

    v314 = v322[2];
    v283 = *v314;
    v284 = (*(v314 + 8) - *v314) >> 4;
    v320 = v284 - 1;
    if (v284 == 1)
    {
      v306 = 0;
    }

    else
    {
      v285 = 0;
      v286 = 0;
      v318 = v282 * v278;
      v316 = v284 - 2;
      v287 = 2 * v275;
      v288 = vsubq_f64(v283[1], *v283);
      v289 = vsubq_f64(*v283, v283[v284 - 2]);
      v326 = 1.0 / (4 * v275);
      do
      {
        v290 = vzip1q_s64(v288, v289);
        v291 = vzip2q_s64(v288, v289);
        v292 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v290, v290), v291, v291));
        v293 = v318 * fmin(v292.f64[0], v292.f64[1]);
        v321 = v289;
        v292.f64[0] = 1.0 / v292.f64[0];
        v323 = v288;
        v294 = (*v322[2] + 16 * v286);
        v336 = 1.0 / v292.f64[1] * v289.f64[0];
        v295 = v292.f64[0] * v288.f64[0];
        v332 = v292.f64[0] * v288.f64[0] - v336;
        v296 = vmuld_lane_f64(1.0 / v292.f64[1], v289, 1);
        v297 = vmuld_lane_f64(v292.f64[0], v288, 1);
        v298 = *v294;
        v299 = v294[1];
        v300 = v287;
        do
        {
          v301 = __sincos_stret(v300 * 3.14159265 * v326);
          if (((v285 >> 4) + 1) >> 60)
          {
            goto LABEL_433;
          }

          if (v285 >> 4 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v285 >> 4) + 1);
          }

          v302 = (16 * (v285 >> 4));
          *v302 = v298 + (v332 - (v301.__sinval * v295 - v301.__cosval * v336)) * v293;
          v302[1] = v299 + (v297 - v296 - (v301.__sinval * v297 - v301.__cosval * v296)) * v293;
          if (v285)
          {
            v303 = 0;
            v304 = 0;
            do
            {
              v305 = *v303++;
              *v304++ = v305;
            }

            while (v303 != v285);
          }

          v285 = (v302 + 2);
          v271 = v300-- <= 0;
        }

        while (!v271);
        if (v286 >= v316)
        {
          v288 = v323;
          v289 = v321;
        }

        else
        {
          v289 = v323;
          v288 = vsubq_f64(*(*v314 + 16 * v286 + 32), *(*v314 + 16 * v286 + 16));
        }

        ++v286;
      }

      while (v286 != v320);
      v306 = (v302 + 2);
    }

    if (!(((v306 >> 4) + 1) >> 60))
    {
      if (v306 >> 4 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v306 >> 4) + 1);
      }

      *(16 * (v306 >> 4)) = MEMORY[0];
      if (v306)
      {
        for (jj = 0; jj != v306; ++jj)
        {
          *jj = *jj;
        }
      }

      else
      {
        operator delete(0);
      }

      operator new();
    }

LABEL_433:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(&v338);
  return v312;
}

void sub_1B31D336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  a67 = &a52;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a67);
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(&a55);
  v69 = *(v67 - 240);
  if (v69)
  {
    for (i = *(v67 - 232); i != v69; i -= 40)
    {
      v71 = *(i - 4);
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v71);
      }
    }

    operator delete(v69);
  }

  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(&a41);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData>>::destroy[abi:nn200100]<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData,void,0>(uint64_t *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(a1);
}

__n128 std::allocator_traits<std::allocator<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData>>::construct[abi:nn200100]<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData,md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData,void,0>(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a1;
  a1->n128_u64[1] = a1;
  a1[1].n128_u64[0] = 0;
  v2 = a2[1].n128_i64[0];
  if (v2)
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
    v5 = *(a2->n128_u64[0] + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = a1->n128_u64[0];
    *(v7 + 8) = v3;
    *v3 = v7;
    a1->n128_u64[0] = v4;
    *(v4 + 8) = a1;
    a1[1].n128_u64[0] = v2;
    a2[1].n128_u64[0] = 0;
  }

  a1[1].n128_u8[8] = a2[1].n128_u8[8];
  a1[2] = a2[2];
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a1[3] = a2[3];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  result = a2[4];
  v9 = a2[5];
  a1[4] = result;
  a1[5] = v9;
  return result;
}

void std::priority_queue<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::vector<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge,std::allocator<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>>::push(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 40 * v7;
    *v11 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v11 + 16) = *(a2 + 16);
    *(v11 + 24) = *(a2 + 24);
    *(v11 + 32) = *(a2 + 32);
    v6 = 40 * v7 + 40;
    v12 = *a1;
    v13 = a1[1];
    v14 = v11 + *a1 - v13;
    if (*a1 != v13)
    {
      v15 = *a1;
      v16 = v11 + *a1 - v13;
      do
      {
        *v16 = *v15;
        *v15 = 0;
        v15[1] = 0;
        *(v16 + 16) = *(v15 + 8);
        v17 = v15[3];
        *(v16 + 32) = *(v15 + 32);
        *(v16 + 24) = v17;
        v15 += 5;
        v16 += 40;
      }

      while (v15 != v13);
      do
      {
        v18 = v12[1];
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        v12 += 5;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = v6;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    v5 = *(a2 + 24);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 24) = v5;
    v6 = v3 + 40;
  }

  a1[1] = v6;
  v19 = *a1;
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3);

  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge> &,std::__wrap_iter<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge*>>(v19, v6, v20);
}

BOOL std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (vabdd_f64(v2, v3) <= 1.0e-12)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    if (v7 != v8)
    {
      return v7 < v8;
    }

    v9 = geo::Polygon2<double>::boundingBox(**a1, *(*a1 + 8));
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = geo::Polygon2<double>::boundingBox(**a2, *(*a2 + 8));
    if (v7)
    {
      v20 = v13;
    }

    else
    {
      v20 = v9;
    }

    if (v7)
    {
      v21 = v18;
    }

    else
    {
      v21 = v16;
    }

    if (vabdd_f64(v20, v21) <= 1.0e-12)
    {
      v4 = (v15 - v11) * (v13 - v9) <= (v19 - v17) * (v18 - v16);
    }

    else
    {
      v4 = v20 <= v21;
    }
  }

  else
  {
    v4 = v2 <= v3;
  }

  return !v4;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge> &,std::__wrap_iter<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v20 = v3;
    v21 = v4;
    v7 = (a3 - 2) >> 1;
    v8 = a1 + 40 * v7;
    v9 = a2 - 40;
    if (std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>::operator()[abi:nn200100](v8, a2 - 40))
    {
      v16 = *(a2 - 40);
      *v9 = 0;
      *(v9 + 8) = 0;
      v17 = *(a2 - 24);
      v18 = *(a2 - 16);
      v19 = *(a2 - 8);
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 8) = 0;
        v12 = *(v9 + 8);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        *(v9 + 16) = *(v8 + 16);
        v14 = (v8 + 24);
        v13 = *(v8 + 24);
        *(v9 + 32) = *(v8 + 32);
        *(v9 + 24) = v13;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 40 * v7;
        v9 = v10;
      }

      while (std::less<md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonEdge>::operator()[abi:nn200100](v8, &v16));
      v15 = *(v10 + 8);
      *v10 = v16;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      *(v10 + 16) = v17;
      *v14 = v18;
      *(v10 + 32) = v19;
    }
  }
}

uint64_t std::unordered_set<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>,md::MaskingOverlayMeshProcessor::_unionPolygons(std::list<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>> &)::PolygonPairHash,std::equal_to<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>>,std::allocator<std::pair<std::shared_ptr<geo::Polygon2<double>>,gm::Range<signed char>>>>::erase[abi:nn200100](void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
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

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == a1 + 2)
  {
    goto LABEL_31;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v8 != v3)
  {
LABEL_31:
    if (v4)
    {
      v10 = *(v4 + 8);
      if (v5.u32[0] > 1uLL)
      {
        v11 = *(v4 + 8);
        if (v10 >= *&v2)
        {
          v11 = v10 % *&v2;
        }
      }

      else
      {
        v11 = v10 & (*&v2 - 1);
      }

      v9 = *a2;
      if (v11 == v3)
      {
        goto LABEL_22;
      }
    }

    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 8);
LABEL_22:
  if (v5.u32[0] > 1uLL)
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
    *(*a1 + 8 * v10) = v7;
    v9 = *a2;
  }

LABEL_28:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<md::InjectedAsset>,void *>>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::vector<std::vector<std::vector<gm::Matrix<double,2,1>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t geo::MartinezPolygonUnion<double>::~MartinezPolygonUnion(uint64_t a1)
{
  geo::MartinezPolygonUnion<double>::clear(a1);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 40));
  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void geo::MartinezPolygonUnion<double>::clear(uint64_t a1)
{
  v2 = *a1;
  for (i = *(a1 + 8); v2 != i; *(a1 + 8) = i)
  {
    v4 = (i - v2) >> 3;
    if (v4 >= 2)
    {
      v5 = *v2;
      v6 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(v2, v4);
      v7 = (i - 8);
      if ((i - 8) == v6)
      {
        *v6 = v5;
      }

      else
      {
        *v6 = *v7;
        *v7 = v5;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(v2, (v6 + 1), v6 + 1 - v2);
      }
    }

    v2 = *a1;
    i = *(a1 + 8) - 8;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v8 != v9)
  {
    do
    {
      if (*v8)
      {
        MEMORY[0x1B8C62190](*v8, 0x1020C406C923FA7);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = *(a1 + 56);
  }

  *(a1 + 64) = v8;
}

uint64_t *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 - 2) >> 1;
  do
  {
    v6 = &a1[v4 + 1];
    v7 = (2 * v4) | 1;
    v8 = 2 * v4 + 2;
    if (v8 < a2)
    {
      v9 = geo::MartinezPolygonUnion<double>::HorizontalIndex::operator<(*v6, a1[v4 + 2]);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 8;
      }

      v6 = (v6 + v10);
      if (!v9)
      {
        v7 = v8;
      }
    }

    *a1 = *v6;
    a1 = v6;
    v4 = v7;
  }

  while (v7 <= v5);
  return v6;
}

BOOL std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geo::MartinezPolygonUnion<double>::HorizontalIndex> &,std::__wrap_iter<geo::MartinezPolygonUnion<double>::HorizontalIndex*>>(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = result;
    v5 = v3 >> 1;
    v6 = (result + 8 * (v3 >> 1));
    v8 = (a2 - 8);
    v7 = *(a2 - 8);
    v9 = *v6;
    result = geo::MartinezPolygonUnion<double>::HorizontalIndex::operator<(*v6, v7);
    if (!result)
    {
      do
      {
        v10 = v6;
        *v8 = v9;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (v4 + 8 * v5);
        v9 = *v6;
        result = geo::MartinezPolygonUnion<double>::HorizontalIndex::operator<(*v6, v7);
        v8 = v10;
      }

      while (!result);
      *v10 = v7;
    }
  }

  return result;
}

BOOL geo::MartinezPolygonUnion<double>::HorizontalIndex::operator<(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3 + *a1;
  v6 = v4 + *(a1 + 8);
  v7 = &v38;
  v37 = v5;
  v38 = v6;
  v8 = *a2;
  v9 = *(a2 + 16) + *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 24) + v10;
  v12 = &v35;
  v35 = v9;
  v36 = v11;
  v13 = *(a1 + 36);
  if (v13 == 1)
  {
    v14 = a1;
  }

  else
  {
    v14 = &v37;
  }

  v15 = *(a2 + 36);
  if (v15 == 1)
  {
    v12 = a2;
  }

  v16 = 1;
  do
  {
    v17 = vabdd_f64(v14[v2], v12[v2]);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v16 = 0;
    v2 = 1;
  }

  while (v17 < 1.0e-12);
  if (v17 < 1.0e-12)
  {
    if (v13 < v15)
    {
      return 1;
    }

    if (v13 > v15)
    {
      return 0;
    }

    v18 = 0;
    v19 = 1;
    do
    {
      v20 = vabdd_f64(*(a1 + 8 * v18), *(a2 + 8 * v18));
      if ((v19 & 1) == 0)
      {
        break;
      }

      v19 = 0;
      v18 = 1;
    }

    while (v20 < 1.0e-12);
    if (v20 >= 1.0e-12)
    {
      v26 = &v37;
      v27 = &v35;
      v28 = 1;
      do
      {
        v29 = vabdd_f64(*v26, *v27);
        if ((v28 & 1) == 0)
        {
          break;
        }

        v28 = 0;
        v27 = &v36;
        v26 = &v38;
      }

      while (v29 < 1.0e-12);
      if (v29 >= 1.0e-12)
      {
LABEL_39:
        v33 = *(a1 + 32);
        v34 = *(a2 + 32);
        if (v33 >= v34)
        {
          if (v33 <= v34)
          {
            return *(a2 + 40) == 0;
          }

          return 0;
        }

        return 1;
      }

      v21 = v8 - v5;
      v22 = v6 - v10;
    }

    else
    {
      v21 = v9 - v5;
      v22 = v6 - v11;
    }

    v30 = v22 * v3 + v21 * v4;
    v31 = fabs(v30);
    if (v30 > 0.0)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 <= 1.0e-12)
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      return 0;
    }

    if (v32 == 2)
    {
      return 1;
    }

    goto LABEL_39;
  }

  if (*v14 < *v12)
  {
    return 1;
  }

  if (*v14 > *v12)
  {
    return 0;
  }

  if (v13 == 1)
  {
    v7 = (a1 + 8);
  }

  v24 = *v7;
  if (v15 == 1)
  {
    v25 = (a2 + 8);
  }

  else
  {
    v25 = &v36;
  }

  return v24 < *v25;
}

void geo::MartinezPolygonUnion<double>::addPolygonPoints(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v4 = 0;
    v5 = (v2 - *a2) >> 4;
    do
    {
      v6 = &v3[2 * v4];
      v9 = *v6;
      v8 = v6[1];
      v7 = v6 + 2;
      if (v4 == v5 - 1)
      {
        v10 = *a2;
      }

      else
      {
        v10 = v7;
      }

      v12 = *v10;
      v11 = v10[1];
      v13 = 1;
      v14 = v12;
      v15 = v9;
      do
      {
        v16 = vabdd_f64(v15, v14);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v13 = 0;
        v14 = v11;
        v15 = v8;
      }

      while (v16 < 1.0e-12);
      if (v16 >= 1.0e-12)
      {
        operator new();
      }

      ++v4;
      v5 = (v2 - v3) >> 4;
    }

    while (v4 < v5);
  }
}

uint64_t std::__tree<geo::MartinezPolygonUnion<double>::VerticalIndex,std::less<geo::MartinezPolygonUnion<double>::VerticalIndex>,std::allocator<geo::MartinezPolygonUnion<double>::VerticalIndex>>::__emplace_unique_key_args<geo::MartinezPolygonUnion<double>::VerticalIndex,geo::MartinezPolygonUnion<double>::VerticalIndex>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(v4 + 4, a2);
    if (!result)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t geo::MartinezPolygonUnion<double>::findPrevAndNext(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v5 = result;
  i = a2;
  v6 = (result + 40);
  v7 = *(result + 40);
  if (v7)
  {
    v10 = (result + 40);
    v11 = *(result + 40);
    do
    {
      result = geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(&i, v11 + 4);
      if (result)
      {
        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      if (result)
      {
        v10 = v11;
      }

      v11 = v11[v12];
    }

    while (v11);
    if (v10 != v6)
    {
      *a4 = v10[4];
      v7 = *v6;
    }

    for (i = a2; v7; v7 = v7[v13])
    {
      result = geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(v7 + 4, &i);
      if (result)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (!result)
      {
        v6 = v7;
      }
    }
  }

  if (v6 != *(v5 + 32))
  {
    v14 = *v6;
    if (*v6)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v6[2];
        v16 = *v15 == v6;
        v6 = v15;
      }

      while (v16);
    }

    *a3 = v15[4];
  }

  return result;
}

uint64_t geo::MartinezPolygonUnion<double>::possibleIntersects(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 && *(a2 + 32) != *(a3 + 32))
  {
    v5 = result;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = 1;
    do
    {
      v12 = vabdd_f64(*(a2 + 8 * v6), *(a3 + 8 * v6));
      if ((v11 & 1) == 0)
      {
        break;
      }

      v11 = 0;
      v6 = 1;
    }

    while (v12 < 1.0e-12);
    v13 = v7 + *a2;
    v14 = v8 + *(a2 + 8);
    if (v12 < 1.0e-12)
    {
      v15 = 1;
      v16 = *(a3 + 16) + v9;
      v17 = v7 + *a2;
      do
      {
        v18 = vabdd_f64(v17, v16);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v15 = 0;
        v16 = *(a3 + 24) + v10;
        v17 = v8 + *(a2 + 8);
      }

      while (v18 < 1.0e-12);
      if (v18 < 1.0e-12)
      {
        *(a3 + 50) = 1;
        *(a2 + 50) = 1;
        *(a2 + 51) = 0;
        *(a3 + 51) = 1;
        v19 = *(a2 + 49) == *(a3 + 49);
        *(a3 + 52) = v19;
        *(a2 + 52) = v19;
        return result;
      }
    }

    if (fabs((v14 - v10) * v7 + (v9 - v13) * v8) > 1.0e-12 || fabs((v14 - (*(a3 + 24) + v10)) * v7 + (*(a3 + 16) + v9 - v13) * v8) > 1.0e-12)
    {
      result = gm::LineSegment<double,2>::intersects<double,void>(a2, a3, &v20);
      if (!result)
      {
        return result;
      }

      geo::MartinezPolygonUnion<double>::subdivide(v5, a2, &v20);
    }

    else
    {
      geo::MartinezPolygonUnion<double>::subdivide(result, a2, a3);
      v20 = vaddq_f64(*(a3 + 16), *a3);
      geo::MartinezPolygonUnion<double>::subdivide(v5, a2, &v20);
      geo::MartinezPolygonUnion<double>::subdivide(v5, a3, a2);
      v20 = vaddq_f64(*(a2 + 16), *a2);
    }

    return geo::MartinezPolygonUnion<double>::subdivide(v5, a3, &v20);
  }

  return result;
}

void std::__list_imp<geo::MartinezPolygonUnion<double>::Chain,std::allocator<geo::MartinezPolygonUnion<double>::Chain>>::__delete_node[abi:nn200100](void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__tree<geo::MartinezPolygonUnion<double>::VerticalIndex,std::less<geo::MartinezPolygonUnion<double>::VerticalIndex>,std::allocator<geo::MartinezPolygonUnion<double>::VerticalIndex>>::__erase_unique<geo::MartinezPolygonUnion<double>::VerticalIndex>(uint64_t **a1, uint64_t *a2)
{
  v3 = (a1 + 1);
  v2 = a1[1];
  if (v2)
  {
    v6 = (a1 + 1);
    v7 = a1[1];
    do
    {
      v8 = geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(v7 + 4, a2);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v6 = v7;
      }

      v7 = v7[v9];
    }

    while (v7);
    if (v6 != v3 && (geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(a2, v6 + 4) & 1) == 0)
    {
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v6;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v6)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v2, v6);

      operator delete(v6);
    }
  }
}

char *std::vector<std::vector<gm::Matrix<double,2,1>>>::emplace<>(void *a1, char *a2)
{
  v2 = a2;
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v15 = *a1;
    v16 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a1] >> 3) + 1;
    if (v16 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = a2 - v15;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v15) >> 3);
    if (2 * v18 > v16)
    {
      v16 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v16;
    }

    v32 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v19);
    }

    v20 = (8 * (v17 >> 3));
    v29 = 0;
    v30 = v20;
    v31 = v20;
    if (!(0xAAAAAAAAAAAAAAABLL * (v17 >> 3)))
    {
      if (v17 < 1)
      {
        if (v15 == a2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 0x5555555555555556 * (v17 >> 3);
        }

        v33 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v21);
      }

      v20 -= 24 * ((1 - 0x5555555555555555 * (v17 >> 3)) >> 1);
      v30 = v20;
      *&v31 = v20;
    }

    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = 0;
    v22 = v30;
    memcpy((v31 + 24), a2, a1[1] - a2);
    v23 = *a1;
    *&v31 = v31 + 24 + a1[1] - v2;
    a1[1] = v2;
    v24 = v2 - v23;
    v25 = v22 - (v2 - v23);
    memcpy(v25, v23, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&v29);
    return v22;
  }

  else if (a2 == v5)
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    a1[1] = v5 + 24;
  }

  else
  {
    v6 = v5 - 24;
    v7 = a1[1];
    if (v5 >= 0x18)
    {
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = *v6;
      *(v5 + 2) = *(v5 - 1);
      *v6 = 0;
      *(v5 - 2) = 0;
      *(v5 - 1) = 0;
      v7 = v5 + 24;
    }

    a1[1] = v7;
    if (v5 != a2 + 24)
    {
      v8 = 0;
      v9 = a2 - v5 + 24;
      do
      {
        v10 = &v5[v8];
        v12 = &v5[v8 - 24];
        v11 = *v12;
        if (*v12)
        {
          *(v10 - 2) = v11;
          operator delete(v11);
          *v12 = 0;
          *&v5[v8 - 16] = 0;
          *&v5[v8 - 8] = 0;
        }

        v13 = v10 - 48;
        *v12 = *(v10 - 3);
        *(v10 - 1) = *(v10 - 4);
        *v13 = 0;
        *(v13 + 1) = 0;
        *(v13 + 2) = 0;
        v8 -= 24;
      }

      while (v9 != v8);
    }

    v14 = *v2;
    if (*v2)
    {
      *(v2 + 1) = v14;
      operator delete(v14);
      *v2 = 0;
      *(v2 + 1) = 0;
      *(v2 + 2) = 0;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }

  return v2;
}

void *std::__list_imp<geo::MartinezPolygonUnion<double>::Chain,std::allocator<geo::MartinezPolygonUnion<double>::Chain>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        std::__list_imp<geo::MartinezPolygonUnion<double>::Chain,std::allocator<geo::MartinezPolygonUnion<double>::Chain>>::__delete_node[abi:nn200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::vector<std::vector<gm::Matrix<double,2,1>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t geo::MartinezPolygonUnion<double>::VerticalIndex::operator<(uint64_t *a1, uint64_t *a2)
{
  v3 = 0;
  v4 = *a1;
  while (1)
  {
    v5 = a1;
    v6 = *a2;
    if (!geo::MartinezPolygonUnion<double>::HorizontalIndex::operator<(*a2, v4))
    {
      break;
    }

    v3 ^= 1u;
    v4 = v6;
    a1 = a2;
    a2 = v5;
  }

  v7 = *(v4 + 16);
  v8 = vextq_s8(v7, v7, 8uLL);
  v9 = vsubq_f64(*v6, vaddq_f64(v7, *v4));
  v10 = vmulq_f64(v9, v8);
  v10.f64[0] = vsubq_f64(v10, vdupq_laneq_s64(v10, 1)).f64[0];
  v11 = fabs(v10.f64[0]);
  if (v10.f64[0] > 0.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11 <= 1.0e-12)
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    goto LABEL_19;
  }

  if (v12 != 2)
  {
    v13 = vmulq_f64(v8, vaddq_f64(v9, *(v6 + 16)));
    v13.f64[0] = vsubq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0];
    v14 = fabs(v13.f64[0]);
    if (v13.f64[0] > 0.0)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 <= 1.0e-12)
    {
      v15 = 0;
    }

    if (v15 != 1)
    {
      if (v15 != 2)
      {
        v16 = *(v4 + 32) < *(v6 + 32);
        return (v3 ^ v16) & 1;
      }

      goto LABEL_18;
    }

LABEL_19:
    v16 = 0;
    return (v3 ^ v16) & 1;
  }

LABEL_18:
  v16 = 1;
  return (v3 ^ v16) & 1;
}

void std::vector<gm::LineSegment<double,2>>::insert(void *a1, char *a2, char *a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = *a1;
    v9 = (&v5[-*a1] >> 5) + 1;
    if (v9 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = a2 - v8;
    v11 = v4 - v8;
    if (v11 >> 4 > v9)
    {
      v9 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    v13 = v10 >> 5;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v12);
    }

    v15 = (32 * v13);
    if (!v13)
    {
      if (v10 < 1)
      {
        if (v8 == a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v10 >> 4;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v22);
      }

      v15 = (v15 - (((v10 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0));
    }

    v23 = *(a3 + 1);
    *v15 = *a3;
    v15[1] = v23;
    v24 = a1[1];
    v25 = a2;
    if (v24 != a2)
    {
      v26 = a2;
      v27 = v15 + 2;
      do
      {
        v28 = *v26;
        v29 = *(v26 + 1);
        v26 += 32;
        *v27 = v28;
        v27[1] = v29;
        v27 += 2;
      }

      while (v26 != v24);
      v25 = a1[1];
    }

    v30 = v15 + v25 - a2 + 32;
    a1[1] = a2;
    v31 = *a1;
    v32 = v15 + *a1 - a2;
    if (*a1 != a2)
    {
      v33 = (v15 + *a1 - a2);
      do
      {
        v34 = *v31;
        v35 = *(v31 + 1);
        v31 += 32;
        *v33 = v34;
        v33[1] = v35;
        v33 += 2;
      }

      while (v31 != a2);
      v31 = *a1;
    }

    *a1 = v32;
    a1[1] = v30;
    a1[2] = 0;
    if (v31)
    {

      operator delete(v31);
    }
  }

  else if (a2 == v5)
  {
    v14 = *(a3 + 1);
    *v5 = *a3;
    *(v5 + 1) = v14;
    a1[1] = v5 + 32;
  }

  else
  {
    if (v5 < 0x20)
    {
      v7 = a1[1];
    }

    else
    {
      v6 = *(v5 - 1);
      *v5 = *(v5 - 2);
      *(v5 + 1) = v6;
      v7 = v5 + 32;
    }

    a1[1] = v7;
    if (v5 != a2 + 32)
    {
      v16 = v5 - 64;
      v17 = a2 - v5 + 32;
      v18 = v5 - 16;
      do
      {
        *(v18 - 2) = *v16;
        *(v18 - 1) = *(v16 + 1);
        *v18 = *(v16 + 2);
        *(v18 + 1) = *(v16 + 3);
        v16 -= 32;
        v18 -= 32;
        v17 += 32;
      }

      while (v17);
    }

    v19 = v7 <= a3 || a2 > a3;
    v20 = 32;
    if (v19)
    {
      v20 = 0;
    }

    v21 = &a3[v20];
    *a2 = *v21;
    *(a2 + 1) = *(v21 + 1);
    *(a2 + 2) = *(v21 + 2);
    *(a2 + 3) = *(v21 + 3);
  }
}

void sub_1B31D50C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<gm::LineSegment<double,2>>::push_back[abi:nn200100](uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *a1;
    v14 = a1[1];
    v15 = 32 * v7 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = (32 * v7 + *a1 - v14);
      do
      {
        v17 = *v13;
        v18 = v13[1];
        v13 += 2;
        *v16 = v17;
        v16[1] = v18;
        v16 += 2;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  a1[1] = v6;
}

uint64_t geo::MartinezPolygonUnion<double>::subdivide(uint64_t result, uint64_t a2, float64x2_t *a3)
{
  v5 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v6 = *(a2 + 16);
  v8 = 1;
  do
  {
    v9 = vabdd_f64(*(a2 + 8 * v5), a3->f64[v5]);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v8 = 0;
    v5 = 1;
  }

  while (v9 < 1.0e-12);
  if (v9 >= 1.0e-12)
  {
    v10 = 0;
    v11 = vaddq_f64(v6, v7);
    v12 = 1;
    v13 = v11.f64[0];
    do
    {
      v14 = vabdd_f64(v13, a3->f64[v10]);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v12 = 0;
      v13 = v11.f64[1];
      v10 = 1;
    }

    while (v14 < 1.0e-12);
    if (v14 >= 1.0e-12)
    {
      v15 = vsubq_f64(*a3, v7);
      v16 = vmulq_f64(vextq_s8(v15, v15, 8uLL), vsubq_f64(v11, *a3));
      if (fabs(vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0]) <= 1.0e-12)
      {
        v17 = vmulq_f64(vextq_s8(v15, v6, 8uLL), vextq_s8(v6, v6, 8uLL));
        v15.f64[1] = *(a2 + 24);
        v18 = vmlaq_f64(v17, v6, v15);
        v19 = vdivq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
        if (v19 >= 0.0 && v19 <= 1.0)
        {
          v21[0] = a2;
          std::__tree<geo::MartinezPolygonUnion<double>::VerticalIndex,std::less<geo::MartinezPolygonUnion<double>::VerticalIndex>,std::allocator<geo::MartinezPolygonUnion<double>::VerticalIndex>>::__erase_unique<geo::MartinezPolygonUnion<double>::VerticalIndex>((result + 32), v21);
          *(a2 + 16) = vsubq_f64(*a3, *a2);
          *(*(a2 + 40) + 40) = 0;
          operator new();
        }
      }
    }
  }

  return result;
}

void md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARFeatureInjectionLogic::runBeforeLayout(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    if ((*(*v6 + 16))(v6, a2, a3[1], *a3))
    {
      v7 = [VKARWalkingFeatureSet alloc];
      v8 = *(*(a1 + 120) + 16);
      md::LabelExternalPointFeature::incident(v8);
      objc_claimAutoreleasedReturnValue();
      v9 = [(VKARWalkingFeatureSet *)v7 initWithFeatures:v8];

      geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 136, v9);
    }
  }

  else
  {
    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 136, *(a1 + 168));
  }

  md::LabelSettings::setARWalkingFeatures(*(a1 + 128), *(a1 + 144), 0);
  v10 = *(a1 + 144);
  *(a4 + 8) = *a4 != v10;

  objc_storeStrong(a4, v10);
}

_BYTE *md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xB6CE4C2C57DB41DFLL && (v4 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

void *md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(uint64_t *a1, void *a2)
{
  v4 = gdc::Context::context<md::ARLogicContext>(a2);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0x1B8B241A8D896A1DLL))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  if (result && (v9 = result[5], *(v9 + 8) == 0xC97B9E962ADF4AD4))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  a1[2] = v10;
  return result;
}

uint64_t md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xB6CE4C2C57DB41DFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xB6CE4C2C57DB41DFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xB6CE4C2C57DB41DFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARFeatureInjectionLogic,md::ARFeatureInjectionContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xB6CE4C2C57DB41DFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARFeatureInjectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARFeatureInjectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARFeatureInjectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARFeatureInjectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3EE18;
  v2 = a1[4];
  if (v2)
  {

    MEMORY[0x1B8C62190](v2, 0x1080C40C20BADFCLL);
  }

  return a1;
}

void md::ARFeatureInjectionLogic::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v16, "ARFeatureInjectionLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (*(a1 + 120))
  {
    std::string::basic_string[abi:nn200100]<0>(&v16, "DebugScene");
    gdc::DebugTreeValue::DebugTreeValue(v13, 1);
    gdc::DebugTreeNode::addProperty(a2, &v16, v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  v4 = [*(a1 + 168) description];
  if (v4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v16, "ExternalFeatures");
    gdc::DebugTreeValue::DebugTreeValue(v10, [v4 UTF8String]);
    gdc::DebugTreeNode::addProperty(a2, &v16, v10);
    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  v5 = *(*(*(a1 + 128) + 40) + 144);
  md::LabelExternalPointFeature::incident(v5);
  v6 = [objc_claimAutoreleasedReturnValue() description];

  if (v6)
  {
    std::string::basic_string[abi:nn200100]<0>(&v16, "LabelSettingsFeatures");
    gdc::DebugTreeValue::DebugTreeValue(v7, [v6 UTF8String]);
    gdc::DebugTreeNode::addProperty(a2, &v16, v7);
    if (v9 < 0)
    {
      operator delete(v8);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }
}

void sub_1B31D60B0(_Unwind_Exception *a1)
{
  if (*(v3 - 49) < 0)
  {
    operator delete(*(v3 - 72));
  }

  *(v3 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 72));
  *(v3 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 72));
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

void md::ARFeatureInjectionLogic::didBecomeInactive(md::ARFeatureInjectionLogic *this)
{
  *(this + 15) = 0;
  md::LabelSettings::setARWalkingFeatures(*(this + 16), *(this + 21), 0);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 21) = 0;
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 18) = 0;
  }
}

void md::ARFeatureInjectionLogic::~ARFeatureInjectionLogic(md::ARFeatureInjectionLogic *this)
{
  md::ARFeatureInjectionLogic::~ARFeatureInjectionLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3EC68;
  *(this + 20) = &unk_1F2A3ED40;

  *(this + 17) = &unk_1F2A3ED40;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::ARFeatureInjectionLogic::setARDebugScene(md::ARDebugScene **this, md::ARDebugScene *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (this[15] == a2)
  {
    return;
  }

  this[15] = a2;
  if (a2)
  {
    v3 = [VKARWalkingFeatureSet alloc];
    v4 = *(this[15] + 2);
    md::LabelExternalPointFeature::incident(v4);
    objc_claimAutoreleasedReturnValue();
    v5 = [(VKARWalkingFeatureSet *)v3 initWithFeatures:v4];

    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((this + 17), v5);
LABEL_6:

    goto LABEL_7;
  }

  v5 = this[18];
  if (v5)
  {
    this[18] = 0;
    goto LABEL_6;
  }

LABEL_7:
  v6 = GEOGetVectorKitARFeatureInjectionLogicLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = this[15];
    v8 = 134217984;
    v9 = v7;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "ARDebugSceneDidChange:%p", &v8, 0xCu);
  }
}

id GEOGetVectorKitARFeatureInjectionLogicLog(void)
{
  if (GEOGetVectorKitARFeatureInjectionLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARFeatureInjectionLogicLog(void)::onceToken, &__block_literal_global_38348);
  }

  v1 = GEOGetVectorKitARFeatureInjectionLogicLog(void)::log;

  return v1;
}

void ___ZL41GEOGetVectorKitARFeatureInjectionLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARFeatureInjectionLogic");
  v1 = GEOGetVectorKitARFeatureInjectionLogicLog(void)::log;
  GEOGetVectorKitARFeatureInjectionLogicLog(void)::log = v0;
}

void md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::MapZoomLevelStyleLogic::beginMapZoomLevelTransition(uint64_t a1, uint64_t *a2, char a3)
{
  v3 = *a2;
  if (*a2)
  {
    v7 = *(v3 + 520);
    v8 = *(v3 + 528);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(v7, 0x10036u, a3);
      v9 = *(a1 + 128);
      if (v9)
      {
        [v9 stop];
      }

      v10 = [[VKTimedAnimation alloc] initWithDuration:0.300000012];
      geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 120, v10);

      [*(a1 + 128) setTimingFunction:VKAnimationCurveEaseOut];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3321888768;
      v18[2] = ___ZN2md22MapZoomLevelStyleLogic27beginMapZoomLevelTransitionENSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEENS3_12MapZoomLevelE_block_invoke;
      v18[3] = &__block_descriptor_56_ea8_40c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE_e8_v12__0f8l;
      v18[4] = a1;
      v18[5] = v7;
      v19 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [*(a1 + 128) setStepHandler:v18];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = ___ZN2md22MapZoomLevelStyleLogic27beginMapZoomLevelTransitionENSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEENS3_12MapZoomLevelE_block_invoke_1;
      v13[3] = &__block_descriptor_73_ea8_40c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE56c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE_e8_v12__0B8l;
      v12 = *a2;
      v11 = a2[1];
      v13[4] = a1;
      v13[5] = v12;
      v14 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = a3;
      v15 = v7;
      v16 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [*(a1 + 128) setCompletionHandler:v13];
      md::AnimationRunner::runAnimation(*(a1 + 168), *(a1 + 128));
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

void sub_1B31D6728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2md22MapZoomLevelStyleLogic27beginMapZoomLevelTransitionENSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEENS3_12MapZoomLevelE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(a1 + 40), a2);
  v3 = **(v2 + 160);
  if (v3)
  {
    v4 = 6;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void ___ZN2md22MapZoomLevelStyleLogic27beginMapZoomLevelTransitionENSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEENS3_12MapZoomLevelE_block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  gss::StylesheetManager<gss::PropertyID>::finishBlend(*(a1 + 40));
  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 56), 0x10036u, *(a1 + 72));
  v3 = **(v2 + 160);
  if (v3)
  {
    v5 = 6;
    md::MapEngine::setNeedsTick(v3, &v5);
  }

  v4 = *(v2 + 128);
  if (v4)
  {
    *(v2 + 128) = 0;
  }
}

void __destroy_helper_block_ea8_40c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE56c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_40c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE56c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c69_ZTSNSt3__110shared_ptrIN3gss16ClientStyleStateINS1_10PropertyIDEEEEE(uint64_t result, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZN2md22MapZoomLevelStyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_29MapZoomLevelStyleLogicContextEE3__0NS_9allocatorISK_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3F030;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF0AA2DB42EB710AFLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::MapZoomLevelStyleLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MapZoomLevelStyleLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3F078;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MapZoomLevelStyleLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3F078;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::MapZoomLevelStyleLogic::~MapZoomLevelStyleLogic(md::MapZoomLevelStyleLogic *this)
{
  md::MapZoomLevelStyleLogic::~MapZoomLevelStyleLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3EE40;
  v2 = *(this + 16);
  if (v2)
  {
    [v2 stop];
    v3 = *(this + 16);
    if (v3)
    {
      *(this + 16) = 0;

      v3 = *(this + 16);
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 15) = &unk_1F2A3EF58;

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B31D6C54(_Unwind_Exception *a1)
{
  *(v1 + 120) = &unk_1F2A3EF58;

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void ___ZN2md16RouteRenderLayer27startRouteAnimationIfNeededERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 200) = 1065353216;
  }

  v3 = *(v2 + 176);
  *(v2 + 176) = 0;
}

void md::RouteRenderLayer::updateRoutelineDrawinAnimation(uint64_t a1, md::LayoutContext *a2, void *a3, PolylineCoordinate a4)
{
  v8 = *a3;
  if (*(*a3 + 848) == 1 && *(v8 + 849) != 1 || *(v8 + 832) >= 1.0)
  {
    goto LABEL_8;
  }

  v9 = *(v8 + 696);
  if (v9)
  {
    if ([v9 state] == 3)
    {
      v8 = *a3;
LABEL_8:
      v41 = [*(v8 + 144) routeRibbon];
      v11 = a4;
      md::RouteLineDrawAnimation::rebuildAnimationSegments((*a3 + 632), v41, v11);

      return;
    }

    v10 = [*(v8 + 696) state];
    v8 = *a3;
    if (v10 == 4)
    {
      goto LABEL_8;
    }
  }

  v12 = *(v8 + 160);
  if (!v12)
  {
    return;
  }

  [v12 sections];
  v14 = v49;
  v13 = v50;
  v56 = &v49;
  std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v56);
  if (v13 == v14)
  {
    return;
  }

  v15 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(v15, v16);
  v18 = md::LayoutContext::cameraType(a2);
  v19 = gdc::ToCoordinateSystem(v18);
  v20 = *a3;
  v21 = *(*a3 + 312);
  v55[0] = *(v21 + 304);
  v55[1] = isSplinedEnabled;
  v55[2] = v19;
  v55[3] = 0;
  md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(&v53, *(v21 + 208), v55);
  v22 = v54;
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v20 + 640), v53, v54);
  if (!*(v20 + 648))
  {
    operator new();
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  **(*(*a3 + 640) + 168) = *(*(*(*a3 + 312) + 256) + 16);
  if (*(*a3 + 620))
  {
    v23 = 2.0;
  }

  else
  {
    v23 = 2.2;
  }

  [*(*a3 + 160) sections];
  if (*v49)
  {
    v24 = *v49 + 8;
  }

  else
  {
    v24 = 0;
  }

  v26 = *(v24 + 248);
  v25 = *(v24 + 256);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v56 = &v49;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v56);
    if (v26)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_27:
      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v49, v26, v25);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      if (v52 != 1)
      {
        goto LABEL_35;
      }

      if (*(*a3 + 620) != 1)
      {
        goto LABEL_33;
      }

      v27 = 415;
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v49[3], 0x19Fu, 2u))
      {
LABEL_34:
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(v27, 2, v49[3], 0);
        v23 = v28;
        goto LABEL_35;
      }

      if ((*(*a3 + 620) & 1) == 0)
      {
LABEL_33:
        v27 = 416;
        if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v49[3], 0x1A0u, 2u))
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      if (v52 == 1)
      {
        (*(*v49 + 56))(v49);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      }

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }
    }
  }

  else
  {
    v56 = &v49;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v56);
    if (v26)
    {
      goto LABEL_27;
    }
  }

  v29 = [*(*a3 + 144) routeRibbon];
  v30 = a4;
  md::RouteLineDrawAnimation::rebuildAnimationSegments((*a3 + 632), v29, v30);
  v31 = *a3;
  *(v31 + 848) = 1;
  v32 = *(v31 + 672);
  if (*(v31 + 680) == v32)
  {
    *(v31 + 712) = 0u;
    *(v31 + 728) = 0u;
    *(v31 + 752) = 0u;
    *(v31 + 768) = 0u;
    *(v31 + 784) = 0x3FF0000000000000;
    *(v31 + 792) = 0u;
    *(v31 + 808) = 0u;
  }

  else
  {
    v33 = *(v32 + 48);
    v34 = *(v32 + 32);
    *(v31 + 712) = 0u;
    *(v31 + 728) = 0u;
    *(v31 + 752) = 0u;
    *(v31 + 768) = 0u;
    *(v31 + 784) = xmmword_1B33B0680;
    *(v31 + 800) = v34;
    *(v31 + 816) = v33;
  }

  *(v31 + 704) = 0x3FF0000000000000;
  *(v31 + 744) = 0x3FF0000000000000;
  *(v31 + 824) = 0x3FF0000000000000;
  v35 = [[VKTimedAnimation alloc] initWithDuration:v23];
  v36 = *(v31 + 696);
  *(v31 + 696) = v35;

  [*(v31 + 696) setTimingFunction:VKAnimationCurveLinear];
  md::RouteLineDrawAnimation::updateStyle((*a3 + 632), *(*a3 + 320));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*(*a3 + 640) + 136), *(*(*a3 + 640) + 232), *(*a3 + 232), *(*a3 + 240));
  v38 = *a3;
  v37 = a3[1];
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3321888768;
  v44[2] = ___ZN2md16RouteRenderLayer30updateRoutelineDrawinAnimationERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEN3geo18PolylineCoordinateE_block_invoke;
  v44[3] = &__block_descriptor_72_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
  v44[4] = v38;
  v45 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = *a3;
  v40 = a3[1];
  v46 = *a3;
  v47 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    v39 = *a3;
  }

  v48 = a4;
  [*(v39 + 696) setStepHandler:v44];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3321888768;
  v42[2] = ___ZN2md16RouteRenderLayer30updateRoutelineDrawinAnimationERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEN3geo18PolylineCoordinateE_block_invoke_16;
  v42[3] = &__block_descriptor_48_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
  v42[4] = v38;
  v43 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [*(*a3 + 696) setCompletionHandler:v42];
  md::AnimationRunner::runAnimation(*(a1 + 88), *(*a3 + 696));
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

void sub_1B31D72BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void md::RouteLineDrawAnimation::updateStyle(md::RouteLineDrawAnimation *this, md::RouteLineLayer *a2)
{
  std::vector<md::MuninJunction *>::vector[abi:nn200100](&v22, a2 + 1);
  v3 = v22;
  if (v23 != v22)
  {
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v20, *(*(*(*v22 + 3088) + 136) + 32), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v18, *(*(*(this + 1) + 136) + 32), 1);
    v4 = 0;
    v5 = v21;
    v6 = v19;
    *v19 = *v21;
    *(v6 + 2) = *(v5 + 2);
    do
    {
      *(v6 + v4 + 16) = *(v5 + v4 + 16);
      v4 += 4;
    }

    while (v4 != 16);
    for (i = 0; i != 16; i += 4)
    {
      *(v6 + i + 32) = *(v5 + i + 32);
    }

    v8 = 0;
    *(v6 + 6) = *(v5 + 6);
    *(v6 + 12) = *(v5 + 12);
    do
    {
      *(v6 + v8 + 64) = *(v5 + v8 + 64);
      v8 += 4;
    }

    while (v8 != 16);
    for (j = 0; j != 16; j += 4)
    {
      *(v6 + j + 80) = *(v5 + j + 80);
    }

    v10 = 0;
    v11 = v5 + 16;
    v12 = v6 + 16;
    do
    {
      for (k = 0; k != 16; k += 4)
      {
        *(v12 + k) = *(v11 + k);
      }

      ++v10;
      v12 += 2;
      v11 += 2;
    }

    while (v10 != 5);
    v14 = 0;
    v15 = v5 + 26;
    v16 = v6 + 26;
    do
    {
      for (m = 0; m != 16; m += 4)
      {
        *(v16 + m) = *(v15 + m);
      }

      ++v14;
      v16 += 2;
      v15 += 2;
    }

    while (v14 != 5);
    ggl::BufferMemory::~BufferMemory(v18);
    ggl::BufferMemory::~BufferMemory(v20);
    v3 = v22;
  }

  if (v3)
  {
    v23 = v3;
    operator delete(v3);
  }
}

void ___ZN2md16RouteRenderLayer30updateRoutelineDrawinAnimationERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEN3geo18PolylineCoordinateE_block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7 && *(v7 + 320) && *(v7 + 848) == 1 && (*(v7 + 849) & 1) == 0)
      {
        *v11 = 0;
        v8 = [*(*(a1 + 48) + 144) routeRibbon];
        v9 = *(a1 + 64);
        md::RouteLineDrawAnimation::rebuildAnimationSegments((v7 + 632), v8, v9);
        md::RouteLineDrawAnimation::update((v7 + 632), a2, v11);
        md::RouteLineLayer::updateAnimationParameters(*(*(v7 + 320) + 8), v10, *(*(v7 + 320) + 16), *v11, 0);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void ___ZN2md16RouteRenderLayer30updateRoutelineDrawinAnimationERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEN3geo18PolylineCoordinateE_block_invoke_16(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (!a2)
      {
LABEL_11:
        if (!v6)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
      if (!a2)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  if (*(v6 + 848) == 1 && (*(v6 + 849) & 1) == 0)
  {
    md::RouteLineLayer::updateAnimationParameters(*(*(v6 + 320) + 8), 1.0, *(*(v6 + 320) + 16), (*(v6 + 844) + -1.0), 0);
  }

LABEL_12:
  md::RouteLineDrawAnimation::reset((v6 + 632));
LABEL_13:
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B31D76F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_ea8_32c46_ZTSNSt3__18weak_ptrIN2md16RouteLineOverlayEEE48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void non-virtual thunk toggl::VenueWall::MeshMesh::~MeshMesh(ggl::VenueWall::MeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::VenueWall::MeshMesh::~MeshMesh(ggl::VenueWall::MeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::VenueWall::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::VenueWall::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VenueWall::EndCapMesh::~EndCapMesh(ggl::VenueWall::EndCapMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::VenueWall::EndCapMesh::~EndCapMesh(ggl::VenueWall::EndCapMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::VenueWall::EndCapVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::VenueWall::EndCapVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::VenueWall::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::VenueWall::WallTopMeshPipelineSetup::~WallTopMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::VenueWall::WallEndCapMeshPipelineSetup::~WallEndCapMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

Class initARGeoTrackingConfiguration(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_38603);
  }

  result = objc_getClass("ARGeoTrackingConfiguration");
  classARGeoTrackingConfiguration = result;
  getARGeoTrackingConfigurationClass = ARGeoTrackingConfigurationFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke_38607()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/ARKit.framework/ARKit");
  }
}

void sub_1B31D7EE0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

Class initARSession()
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_38603);
  }

  result = objc_getClass("ARSession");
  classARSession = result;
  getARSessionClass[0] = ARSessionFunction;
  return result;
}

Class initARWorldTrackingConfiguration(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_38603);
  }

  result = objc_getClass("ARWorldTrackingConfiguration");
  classARWorldTrackingConfiguration = result;
  getARWorldTrackingConfigurationClass = ARWorldTrackingConfigurationFunction;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26IntendedStandardPassShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassShadow>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53300;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53300;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_2,std::allocator<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_2>,void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3F5A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__variant_detail::__alt<1ul,md::ClientDrapedMeshes>::__alt[abi:nn200100]<md::ClientDrapedMeshes&>(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v2;
    v5 = result + 32 * v3;
    v6 = a2 + 32 * v3;
    *v5 = 0;
    *(v5 + 24) = 0;
    if (*(v6 + 24) == 1)
    {
      v7 = *(v6 + 8);
      *v5 = *v6;
      *(v5 + 8) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(v5 + 16) = *(v6 + 16);
      *(v5 + 24) = 1;
    }

    v2 = 1;
    v3 = 1;
  }

  while ((v4 & 1) == 0);
  v8 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md16ServerDrapedMeshENS8_18ClientDrapedMeshesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a2 + 56);
  v5 = -64;
  do
  {
    if (*v4 == 1)
    {
      v6 = *(v4 - 2);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    v4 -= 32;
    v5 += 32;
  }

  while (v5);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md16ServerDrapedMeshENS8_18ClientDrapedMeshesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void std::__shared_ptr_emplace<md::ElevatedPolygonRenderResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RegionalResourceSetFetcher::~RegionalResourceSetFetcher(md::RegionalResourceSetFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RegionalAttributionsResourceFetcher::tileKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  Int32 = gdc::ResourceKey::getInt32(v3, 0);
  v5 = gdc::ResourceKey::getInt32(v3, 1u);
  v6 = GEOResourceFilterScaleForScale();
  v7 = *MEMORY[0x1E69A1940];

  return MEMORY[0x1EEE0BCF8](Int32, v7, v6, v5);
}

void md::RegionalAttributionsResourceFetcher::~RegionalAttributionsResourceFetcher(md::RegionalAttributionsResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RegionalResourceSetDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FAC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RegionalAttributionsDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RealisticSatelliteMapEngineMode::~RealisticSatelliteMapEngineMode(md::RealisticSatelliteMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__erase_unique<ggl::CommandBuffer *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v9 = *a1;
  v10 = *(*a1 + 8 * v7);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (!v11)
  {
    return 0;
  }

  v12 = *&v2 - 1;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v5)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v13 >= *&v2)
      {
        v13 %= *&v2;
      }
    }

    else
    {
      v13 &= v12;
    }

    if (v13 != v7)
    {
      return 0;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_18;
  }

  v14 = v11[1];
  if (v6.u32[0] > 1uLL)
  {
    if (v14 >= *&v2)
    {
      v14 %= *&v2;
    }
  }

  else
  {
    v14 &= v12;
  }

  v15 = *(v9 + 8 * v14);
  do
  {
    v16 = v15;
    v15 = *v15;
  }

  while (v15 != v11);
  if (v16 == a1 + 2)
  {
    goto LABEL_38;
  }

  v17 = v16[1];
  if (v6.u32[0] > 1uLL)
  {
    if (v17 >= *&v2)
    {
      v17 %= *&v2;
    }
  }

  else
  {
    v17 &= v12;
  }

  if (v17 != v14)
  {
LABEL_38:
    if (!*v11)
    {
      goto LABEL_39;
    }

    v18 = *(*v11 + 8);
    if (v6.u32[0] > 1uLL)
    {
      if (v18 >= *&v2)
      {
        v18 %= *&v2;
      }
    }

    else
    {
      v18 &= v12;
    }

    if (v18 != v14)
    {
LABEL_39:
      *(v9 + 8 * v14) = 0;
    }
  }

  v19 = *v11;
  if (*v11)
  {
    v20 = *(v19 + 8);
    if (v6.u32[0] > 1uLL)
    {
      if (v20 >= *&v2)
      {
        v20 %= *&v2;
      }
    }

    else
    {
      v20 &= v12;
    }

    if (v20 != v14)
    {
      *(*a1 + 8 * v20) = v16;
      v19 = *v11;
    }
  }

  *v16 = v19;
  *v11 = 0;
  --a1[3];
  operator delete(v11);
  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommandBuffer *>(uint64_t a1, uint64_t a2)
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

uint64_t md::LabelScene::setLabelSceneState(uint64_t result, int a2)
{
  v2 = *(result + 52);
  if (a2 != 1)
  {
    if (a2 || (v2 - 1) >= 2)
    {
      goto LABEL_13;
    }

    v2 = 3;
    goto LABEL_11;
  }

  if (v2 == 3 || v2 == 0)
  {
    v2 = 1;
LABEL_11:
    *(result + 52) = v2;
    if (*(result + 80) == 1)
    {
      v4 = *(*result + 1496);
      v5 = *(*result + 1500);
      *(result + 84) = 0;
      v6 = 1.0 / sqrtf((v4 * v4) + (v5 * v5));
      *(result + 88) = v5;
      *(result + 92) = v6 * v4;
      *(result + 96) = -(v5 * v6);
      *(result + 100) = v6;
    }
  }

LABEL_13:
  atomic_store((v2 - 1) < 2, (result + 55));
  return result;
}

uint64_t md::LabelScene::shouldHideLabel(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 56);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 64) - v4) >> 2) <= a2)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 52);
  v7 = 1;
  if (!*(a1 + 52) || v6 == 3)
  {
    return v7 & 1;
  }

  v8 = v4 + 20 * a2;
  if (v6 == 2)
  {
    v7 = *(v8 + 12);
    return v7 & 1;
  }

  v9 = *(a1 + 48) * *(a1 + 20);
  if (*(v8 + 16) != 1)
  {
    v7 = *(v8 + 12) == 1 && v9 >= *(v8 + 8) || v9 < *v8;
    return v7 & 1;
  }

  if (!a4)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (a3)
  {
    v10.f32[0] = (*(*a3 + 48))(a3);
    v10.i32[1] = v11;
    v12 = 0.0;
    v13 = fminf(fmaxf(vaddv_f32(vmul_f32(*(a1 + 92), vsub_f32(v10, *(a1 + 84)))) * *(a1 + 100), 0.0), 1.0);
    v14 = *(v8 + 4);
    v15 = fminf(v14, fmaxf(*v8, v9));
    if (*v8 != v14)
    {
      v12 = (v15 - *v8) / (v14 - *v8);
    }

    v7 = v13 > v12;
    return v7 & 1;
  }

  v17 = std::__throw_bad_function_call[abi:nn200100]();
  return md::MuninPointLabelFeature::labelFeatureType(v17);
}

void md::MuninPointLabelFeature::~MuninPointLabelFeature(md::MuninPointLabelFeature *this)
{
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninPointLabelLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  gdc::Tiled::tileFromLayerDataKey(&v24, *(a2 + 16));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v22, 26, *a3, a3[1]);
  v7 = v22;
  if (v22)
  {
    v20 = 0;
    v8 = *(a1 + 664);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      v21 = v9;
      if (v9)
      {
        v20 = *(a1 + 656);
        if (v20)
        {
          v10 = geo::codec::VectorTile::key(*(v7 + 144));
          v11 = *(v10 + 1);
          v12 = *(v10 + 5) & 0x3FFFFFF;
          v14 = -1;
          v15 = v11 & 0x3F;
          v16 = v12;
          v17 = v11 >> 6;
          v18 = 0;
          v19 = 1;
          operator new();
        }
      }
    }

    else
    {
      v9 = 0;
    }

    *a4 = 0;
    a4[1] = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v13 = v23;
  if (v23)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }
}

void sub_1B31D9304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  v27 = *(v25 - 112);
  if (v27)
  {
    operator delete(v27);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

void md::mun::MuninPointLabelLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v19, *v4);
      v6 = *v4;
      gdc::Tiled::tileFromLayerDataKey(v18, *(*v4 + 16));
      v7 = v20;
      Int32 = gdc::ResourceKey::getInt32(v20, 0);
      v23 = gdc::ResourceKey::getInt32(v7, 1u);
      LODWORD(v24) = gdc::ResourceKey::getInt32(v7, 2u);
      HIDWORD(v24) = gdc::ResourceKey::getInt32(v7, 3u);
      gdc::ResourceKey::ResourceKey(v15, 0, 26, &Int32, 4, *(v6 + 112), 2147483646);
      gdc::LayerDataRequest::request(*v4, v15, 0);
      v8 = [MEMORY[0x1E69A2478] modernManager];
      v9 = [v8 activeTileGroup];

      for (i = 0; i < [v9 regionalResourcesCount]; ++i)
      {
        v11 = [v9 regionalResourceAtIndex:i];
        for (j = 0; j < [v11 regionsCount]; ++j)
        {
          if (v11)
          {
            [v11 regionAtIndex:j];
          }

          Int32 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          if (md::TiledGEOResourceFetcher::regionContainsTile(&Int32, v18))
          {
            v13 = *(a1 + 592);
            v14 = *(*v4 + 112);
            v27[0] = i;
            v27[1] = v13;
            gdc::ResourceKey::ResourceKey(&Int32, 0, 18, v27, 2, v14, -1073741827);
            gdc::LayerDataRequest::request(*v4, &Int32, 0);
            if (v24 != v26)
            {
              free(v24);
            }

            break;
          }
        }
      }

      if (v16 != v17)
      {
        free(v16);
      }

      if (v20 != v21)
      {
        free(v20);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void sub_1B31D95E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33)
{
  if (a14 != a16)
  {
    free(a14);
  }

  if (a31 != a33)
  {
    free(a31);
  }

  _Unwind_Resume(exception_object);
}

void md::mun::MuninPointLabelLayerDataSource::didDeactivate(md::mun::MuninPointLabelLayerDataSource *this)
{
  v2 = *(this + 83);
  *(this + 41) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::mun::MuninPointLabelLayerDataSource::didActivate(md::mun::MuninPointLabelLayerDataSource *this)
{
  v2 = *(this + 81);
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 82) = v4;
    v5 = *(this + 83);
    *(this + 83) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
      v3 = v8;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    md::mun::MuninPointLabelLayerDataSource::~MuninPointLabelLayerDataSource(v6);
  }
}

void md::mun::MuninPointLabelLayerDataSource::~MuninPointLabelLayerDataSource(md::mun::MuninPointLabelLayerDataSource *this)
{
  *this = &unk_1F2A3FE98;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3FE98;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void md::ARUpDirectionUpdatesLogic::runBeforeLayout(uint64_t a1)
{
  v2 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(*(a1 + 120));
  v3 = *(v2 + 56);
  for (i = *(v2 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    v6 = HIDWORD(*v3);
    v7 = gdc::Registry::storage<arComponents::UpDirection>(*(a1 + 120));
    if (*(v7 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v7 + 32), v6))
    {
      v8 = *(a1 + 120);
      v31 = 0;
      v32 = 1065353216;
      v9 = gdc::Registry::storage<arComponents::UpDirection>(v8);
      v33 = v5;
      v10 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v9 + 4, &v33);
      if (v11)
      {
        v13 = v9[11];
        v12 = v9[12];
        if (v13 >= v12)
        {
          v19 = v9[10];
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v19) >> 2);
          v21 = v20 + 1;
          if (v20 + 1 > 0x1555555555555555)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v22 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v19) >> 2);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0xAAAAAAAAAAAAAAALL)
          {
            v23 = 0x1555555555555555;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (v23 <= 0x1555555555555555)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v24 = 12 * v20;
          *v24 = v31;
          *(v24 + 8) = v32;
          v25 = v9[10];
          v26 = v9[11];
          v27 = 12 * v20 + v25 - v26;
          if (v25 != v26)
          {
            v28 = (v24 + v25 - v26);
            do
            {
              v29 = *v25;
              *(v28 + 2) = *(v25 + 2);
              *v28 = v29;
              v28 += 12;
              v25 += 12;
            }

            while (v25 != v26);
            v25 = v9[10];
          }

          v14 = v24 + 12;
          v9[10] = v27;
          v9[11] = v24 + 12;
          v9[12] = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = v31;
          *(v13 + 8) = v32;
          v14 = v13 + 12;
        }

        v9[11] = v14;
        v17 = v9[31];
      }

      else
      {
        v15 = 0;
        v16 = v9[10] + 12 * ((v10 - v9[7]) >> 3);
        do
        {
          *(v16 + v15) = *(&v31 + v15);
          v15 += 4;
        }

        while (v15 != 12);
        v17 = v9[31];
        if (v16 != v9[11])
        {
          for (j = v9[16]; j; j = *j)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v33, 1);
          }

          continue;
        }
      }

      for (k = v9[22]; k; k = *k)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v17, &v33, 1);
      }
    }
  }
}

uint64_t gdc::Registry::storage<arComponents::UpDirection>(uint64_t a1)
{
  v3 = 0x7D08E683B5523498;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7D08E683B5523498uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::UpDirection>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 12 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 12;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 12);
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

void gdc::ComponentStorageWrapper<arComponents::UpDirection>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::UpDirection>::~ComponentStorageWrapper(uint64_t a1)
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

void md::ARUpDirectionUpdatesLogic::~ARUpDirectionUpdatesLogic(md::ARUpDirectionUpdatesLogic *this)
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

void sub_1B31DA1BC(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    v27 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v27, a20);
  }

  _Unwind_Resume(a1);
}

uint64_t md::SingleGEOResourceLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  gdc::Tiled::tileFromLayerDataKey(v25, *(a1 + 16));
  std::ostringstream::basic_ostringstream[abi:nn200100](&v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "gdc::LayerDataRequestKey<Type:", 30);
  v4 = *(a1 + 8);
  if (v4 > 0x51)
  {
    v5 = "<Invalid>";
  }

  else
  {
    v5 = off_1E7B30210[v4];
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, v5, v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ", Tile: ", 8);
  v7 = MEMORY[0x1B8C61C80](&v16, v27);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ".", 1);
  v9 = MEMORY[0x1B8C61C80](v8, v26);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ".", 1);
  v11 = MEMORY[0x1B8C61C90](v10, v25[1]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ">", 1);
  if ((v23 & 0x10) != 0)
  {
    v13 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v13 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v18[1].__locale_;
    v13 = v18[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_17:
  a2[v12] = 0;
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B31DA4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void md::SingleGEOResourceLayerDataSource::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerDataSource::createDebugNode(a1, a2);
  BYTE7(v9[1]) = 17;
  strcpy(v9, "gdc::ResourceType");
  v4 = *(a1 + 592);
  if (v4 > 0x35)
  {
    v5 = "<Invalid>";
  }

  else
  {
    v5 = off_1E7B3C1A8[v4];
  }

  gdc::DebugTreeValue::DebugTreeValue(v6, v5);
  gdc::DebugTreeNode::addProperty(a2, v9, v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(md::SingleGEOResourceLayerDataSource *this)
{
  *this = &unk_1F2A40088;
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  v3 = *(this + 89);
  if (v3)
  {
    *(this + 90) = v3;
    operator delete(v3);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 656);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 79));

  gdc::LayerDataSource::~LayerDataSource(this);
}

void md::GEOVectorTileResourceFetcher::~GEOVectorTileResourceFetcher(md::GEOVectorTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void extractCustomImageData(std::string *a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 type] == 3)
  {
    v4 = v3;
    v5 = [v4 customImageKey];
    if (v5 && ([v4 imageProvider], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      a1[2].__r_.__value_.__r.__words[0] = 0;
      v7 = [v4 imageProvider];
      v8 = [v4 customImageKey];
      std::string::__assign_external(a1, [v8 UTF8String]);
      v9[0] = &unk_1F2A403C8;
      v9[1] = v7;
      v9[2] = v8;
      v9[3] = v9;
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](v9, a1[1].__r_.__value_.__r.__words);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v9);
    }

    else
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      a1[2].__r_.__value_.__r.__words[0] = 0;
    }
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1[2].__r_.__value_.__r.__words[0] = 0;
  }
}

void sub_1B31DA894(_Unwind_Exception *a1)
{
  v6 = v4;

  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v3 + 24);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<extractCustomImageData(VKRouteWaypointInfo *)::$_0,std::allocator<extractCustomImageData(VKRouteWaypointInfo *)::$_0>,CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3, double a4, double a5, double a6)
{
  LODWORD(a6) = *a3;
  LODWORD(a4) = *a2;
  LODWORD(a5) = a2[1];
  return [*(a1 + 8) imageForCustomImageKey:*(a1 + 16) suggestedSize:*&a4 contentScale:{*&a5, a6}];
}