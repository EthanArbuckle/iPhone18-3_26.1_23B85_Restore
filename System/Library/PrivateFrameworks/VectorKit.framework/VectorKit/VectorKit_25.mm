uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverSharedConstants>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::batch(std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
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
                          std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
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
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
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
            std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::batch(std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::batch(std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::batch(std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
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

void *ggl::CommonMesh::Pos2Mesh::Pos2Mesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F29E4070;
  a1[2] = &unk_1F29E4090;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29E3F70;
  a1[2] = &unk_1F29E3F90;
  return a1;
}

void std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundPipelineSetup *>(v2, v1);
  }
}

unint64_t gss::FeatureAttributeSet::hash(gss::FeatureAttributeSet *this, gss::FeatureAttributeSet *a2)
{
  for (i = (a2 - this) >> 3; this != a2; this = (this + 8))
  {
    v3 = ((i << 6) - 0x61C8864680B583EBLL + (i >> 2) + *this) ^ i;
    i = (*(this + 2) - 0x61C8864680B583EBLL + (v3 << 6) + (v3 >> 2)) ^ v3;
  }

  return i;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverSharedConstants>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverSharedConstants>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[425];
}

void ggl::DaVinci::LinearDepthPipelineState::~LinearDepthPipelineState(ggl::DaVinci::LinearDepthPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22FlyoverSharedConstantsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1D358;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *gss::CartoStyle<gss::PropertyID>::applyStyle(uint64_t a1, _BYTE *a2, uint64_t a3, float a4)
{
  if (a3 && *(a1 + 32))
  {
    v8 = *(a1 + 24);
    v9 = 4 * *(a1 + 32);
    do
    {
      v10 = *v8++;
      gss::CartoStyle<gss::PropertyID>::applyStyle(*(*(a3 + 64) + 16 * v10), a2, a3, a4);
      v9 -= 4;
    }

    while (v9);
  }

  result = gss::StylePropertySet<gss::PropertyID>::unionWith(a2, *(a1 + 88));
  v12 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v13 = *(a1 + 40);
    v14 = 24 * v12;
    do
    {
      if (*v13 + -0.001 <= a4 && v13[1] > a4)
      {
        result = gss::ZoomStyle<gss::PropertyID>::applyStyle(v13, a2, a4);
      }

      v13 += 6;
      v14 -= 24;
    }

    while (v14);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22FlyoverSharedConstantsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1D358;
  a2[1] = v2;
  return result;
}

float *gss::ZoomStyle<gss::PropertyID>::applyStyle(uint64_t a1, _BYTE *a2, float a3)
{
  gss::StylePropertySet<gss::PropertyID>::unionWith(a2, *(a1 + 8));
  v6 = *(a1 + 8);
  v7 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x5Eu);
  v8 = *(v6 + 12);
  if (v7 == v8)
  {
    v8 = v7;
  }

  else if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x5Fu) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x60u) != v8)
  {
    v9 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x5Eu);
    v10 = *(v6 + 60);
    if (v9 == v10)
    {
      v11 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v11 = (*(v6 + 48) + *(v6 + 56) + 4 * v9);
    }

    v12 = *v11;
    v13 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x60u);
    if (v13 == v10)
    {
      v14 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v14 = (*(v6 + 48) + *(v6 + 56) + 4 * v13);
    }

    v15 = *v14;
    v16 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x5Fu);
    if (v16 == v10)
    {
      v17 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v17 = (*(v6 + 48) + *(v6 + 56) + 4 * v16);
    }

    v18 = gss::_interpolateSize(*v17, v12, v15, *a1, *(a1 + 4), a3);
    v70 = 94;
    v71 = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 0x5Eu) = v18;
    v6 = *(a1 + 8);
    v8 = *(v6 + 12);
  }

  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x61u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x62u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x63u) != v8)
  {
    v19 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x61u);
    v20 = *(v6 + 60);
    if (v19 == v20)
    {
      v21 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v21 = (*(v6 + 48) + *(v6 + 56) + 4 * v19);
    }

    v22 = *v21;
    v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x63u);
    if (v23 == v20)
    {
      v24 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v24 = (*(v6 + 48) + *(v6 + 56) + 4 * v23);
    }

    v25 = *v24;
    v26 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x62u);
    if (v26 == v20)
    {
      v27 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v27 = (*(v6 + 48) + *(v6 + 56) + 4 * v26);
    }

    v28 = gss::_interpolateSize(*v27, v22, v25, *a1, *(a1 + 4), a3);
    v70 = 97;
    v71 = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 0x61u) = v28;
    v6 = *(a1 + 8);
    v8 = *(v6 + 12);
  }

  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x64u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x65u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0x66u) != v8)
  {
    v29 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x64u);
    v30 = *(v6 + 60);
    if (v29 == v30)
    {
      v31 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v31 = (*(v6 + 48) + *(v6 + 56) + 4 * v29);
    }

    v32 = *v31;
    v33 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x66u);
    if (v33 == v30)
    {
      v34 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v34 = (*(v6 + 48) + *(v6 + 56) + 4 * v33);
    }

    v35 = *v34;
    v36 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0x65u);
    if (v36 == v30)
    {
      v37 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v37 = (*(v6 + 48) + *(v6 + 56) + 4 * v36);
    }

    v38 = gss::_interpolateSize(*v37, v32, v35, *a1, *(a1 + 4), a3);
    v70 = 100;
    v71 = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 0x64u) = v38;
    v6 = *(a1 + 8);
    v8 = *(v6 + 12);
  }

  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 6u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 7u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 8u) != v8)
  {
    v39 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 6u);
    v40 = *(v6 + 60);
    if (v39 == v40)
    {
      v41 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v41 = (*(v6 + 48) + *(v6 + 56) + 4 * v39);
    }

    v42 = *v41;
    v43 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 8u);
    if (v43 == v40)
    {
      v44 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v44 = (*(v6 + 48) + *(v6 + 56) + 4 * v43);
    }

    v45 = *v44;
    v46 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 7u);
    if (v46 == v40)
    {
      v47 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v47 = (*(v6 + 48) + *(v6 + 56) + 4 * v46);
    }

    v48 = gss::_interpolateSize(*v47, v42, v45, *a1, *(a1 + 4), a3);
    v70 = 6;
    v71 = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 6u) = v48;
    v6 = *(a1 + 8);
    v8 = *(v6 + 12);
  }

  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 9u) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0xAu) != v8 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0xBu) != v8)
  {
    v49 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 9u);
    v50 = *(v6 + 60);
    if (v49 == v50)
    {
      v51 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v51 = (*(v6 + 48) + *(v6 + 56) + 4 * v49);
    }

    v52 = *v51;
    v53 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0xBu);
    if (v53 == v50)
    {
      v54 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v54 = (*(v6 + 48) + *(v6 + 56) + 4 * v53);
    }

    v55 = *v54;
    v56 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0xAu);
    if (v56 == v50)
    {
      v57 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      v57 = (*(v6 + 48) + *(v6 + 56) + 4 * v56);
    }

    v58 = gss::_interpolateSize(*v57, v52, v55, *a1, *(a1 + 4), a3);
    v70 = 9;
    v71 = 0;
    geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
    *geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 9u) = v58;
    v6 = *(a1 + 8);
    v8 = *(v6 + 12);
  }

  result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0xCu);
  if (result != v8)
  {
    result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0xDu);
    if (result != v8)
    {
      result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, 0xEu);
      if (result != v8)
      {
        v60 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0xCu);
        v61 = *(v6 + 60);
        if (v60 == v61)
        {
          v62 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          v62 = (*(v6 + 48) + *(v6 + 56) + 4 * v60);
        }

        v63 = *v62;
        v64 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0xEu);
        if (v64 == v61)
        {
          v65 = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          v65 = (*(v6 + 48) + *(v6 + 56) + 4 * v64);
        }

        v66 = *v65;
        v67 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v6 + 48), 0xDu);
        if (v67 == v61)
        {
          v68 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          v68 = (*(v6 + 48) + *(v6 + 56) + 4 * v67);
        }

        v69 = gss::_interpolateSize(*v68, v63, v66, *a1, *(a1 + 4), a3);
        v70 = 12;
        v71 = 0;
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::PropertyID const,unsigned char> const*>(a2, &v70, &v72);
        result = geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((a2 + 48), 0xCu);
        *result = v69;
      }
    }
  }

  return result;
}

void ggl::DaVinci::GroundShadowMapPipelineState::~GroundShadowMapPipelineState(ggl::DaVinci::GroundShadowMapPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t std::__function::__value_func<void ()(md::ls::FlyoverSharedConstants const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B296C394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ggl::BufferMemory::~BufferMemory(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  _Unwind_Resume(a1);
}

void ggl::DaVinci::GroundPipelineState::~GroundPipelineState(ggl::DaVinci::GroundPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverClipConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverClipConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverClipConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_1B296C798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ggl::BufferMemory::~BufferMemory(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
    *algn_1EB83C328 = 0x3CCD86F46BBA1B2DLL;
    qword_1EB83C330 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>]";
    qword_1EB83C338 = 86;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void gss::StylesheetManager<gss::PropertyID>::targetStyleAttributes(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = *a3;
  v8 = a3[1];
  v10 = v8 - v7;
  v11 = v10 + 20;
  if (v10 != -20)
  {
    if (!(v11 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>>(&__p, 0, v7, v8, -20);
  v12 = *(a2 + 520);
  if (v12)
  {
    v13 = pthread_rwlock_rdlock((v12 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v19, (v12 + 240), 0, (v12 + 240), *(v12 + 252));
    v15 = pthread_rwlock_unlock((v12 + 16));
    if (v15)
    {
      geo::read_write_lock::logFailure(v15, "unlock", v16);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v19, a4, 0, a4, *(a4 + 12));
  }

  gss::ResolveMultiAttributeVectorToMap(a1, &__p);
  v17 = __p;
  if (__p)
  {

    operator delete(v17);
  }
}

void sub_1B296CBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  geo::read_write_lock::unlock((v10 + 16));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ggl::DaVinci::GroundDepthPipelineState::~GroundDepthPipelineState(ggl::DaVinci::GroundDepthPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipConstantDataHandle>();
    *algn_1EB83BDC8 = 0x5E4DB6CB13CB5848;
    qword_1EB83BDD0 = "md::ls::FlyoverClipConstantDataHandle]";
    qword_1EB83BDD8 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  gss::FeatureAttributeSet::FeatureAttributeSet(v37, a3);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v38, a4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(v38);
  v7 = pthread_rwlock_rdlock((a2 + 120));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::find<gss::StyleKey>((a2 + 32), v37);
  if (v9)
  {
    v10 = v9;
    *a1 = 0;
    a1[1] = 0;
    v11 = v9[10];
    if (v11)
    {
      v32 = std::__shared_weak_count::lock(v11);
      a1[1] = v32;
      if (v32)
      {
        v33 = v10[9];
        *a1 = v33;
        if (v33)
        {
          geo::read_write_lock::unlock((a2 + 120));
          goto LABEL_23;
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }
    }
  }

  geo::read_write_lock::unlock((a2 + 120));
  v12 = std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v35, *a2, *(a2 + 8));
  v13 = gss::zone_mallocator::instance(v12);
  v14 = pthread_rwlock_rdlock((v13 + 32));
  if (v14)
  {
    geo::read_write_lock::logFailure(v14, "read lock", v15);
  }

  v16 = malloc_type_zone_malloc(*v13, 0x168uLL, 0x1081040E106C04EuLL);
  atomic_fetch_add((v13 + 24), 1u);
  geo::read_write_lock::unlock((v13 + 32));
  *(v16 + 8) = 0u;
  *v16 = &unk_1F2A5B600;
  v17 = v35;
  v35 = 0u;
  v18 = *(&v17 + 1);
  gss::StylesheetQuery<gss::PropertyID>::StylesheetQuery((v16 + 32), v17, *(&v17 + 1), v37, v38);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  *a1 = (v16 + 32);
  a1[1] = v16;
  if (*(&v35 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v35 + 1));
  }

  v34 = (a2 + 120);
  v19 = pthread_rwlock_wrlock((a2 + 120));
  if (v19)
  {
    geo::read_write_lock::logFailure(v19, "write lock", v20);
  }

  *&v35 = v37;
  v36 = a1;
  v21 = std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::__emplace_unique_key_args<gss::StyleKey,std::piecewise_construct_t const&,std::tuple<gss::StyleKey&&>,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &>>((a2 + 32), v37, &v35, &v36);
  if ((v22 & 1) == 0)
  {
    v23 = v21;
    v24 = v21[10];
    if (v24)
    {
      v29 = std::__shared_weak_count::lock(v24);
      v25 = v29;
      if (v29)
      {
        v30 = v23[9];
        if (v30)
        {
          v31 = a1[1];
          *a1 = v30;
          a1[1] = v29;
          v25 = v31;
          if (!v31)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = *a1;
    v26 = a1[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
    }

    v28 = v23[10];
    v23[9] = v27;
    v23[10] = v26;
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    if (!v25)
    {
      goto LABEL_22;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

LABEL_22:
  geo::write_lock_guard::~write_lock_guard(&v34);
LABEL_23:
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v38);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v37);
}

void sub_1B296D364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, pthread_rwlock_t *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  geo::write_lock_guard::~write_lock_guard(va);
  if (*(v2 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v2 + 8));
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 32));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

int *gss::RenderStyle<gss::PropertyID>::styleValueForKey<unsigned int>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 6, a2);
        if (v14 == *(v11 + 30))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          return (&v11[6][2 * v14] + *(v11 + 14));
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,unsigned int>(a2);
}

void ggl::DaVinci::GroundNonCompressedPipelineState::~GroundNonCompressedPipelineState(ggl::DaVinci::GroundNonCompressedPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[335];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_13FlyoverCommon4ClipEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A150B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::LayoutContext::cameraType(md::LayoutContext *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 736))
  {
    return *(this + 224);
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "_frameState.has_value()";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
    v10 = 1024;
    v11 = 92;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v6, 0x1Cu);
  }

  if (*(this + 736))
  {
    return *(this + 224);
  }

  v4 = std::__throw_bad_optional_access[abi:nn200100]();
  return _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon4ClipEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(v4, v5);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon4ClipEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A150B8;
  a2[1] = v2;
  return result;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::DaVinciGroundRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2EC58;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::DaVinciGroundRenderable>::~CartographicTiledRenderLayer(a1);
}

void gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 256;
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(a1, a2, a3, v3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
}

void sub_1B296DA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3)
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

uint64_t md::CartographicTiledRenderLayer<md::DaVinciGroundRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BB68;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::DaVinciGroundRenderable>::~Pool(a1 + 224);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::DaVinciGroundRenderable *,md::DaVinciGroundRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtEnd(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v3 = *(a1 + 16 * a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = *(v3 + 72);
  if (!v7 || (v8 = *v7, geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v7, a2) == *(v8 + 6)))
  {
    v9 = a1 + 16 * a3;
    if (!*(v9 + 56))
    {
      return 0;
    }

    v10 = *(v9 + 48);
    v11 = 8 * *(v9 + 56);
    while (1)
    {
      v12 = *(*v10 + 72);
      if (v12)
      {
        v13 = *v12;
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v13 + 6))
        {
          break;
        }
      }

      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t geo::Pool<md::DaVinciGroundRenderable>::~Pool(uint64_t a1)
{
  geo::Pool<md::DaVinciGroundRenderable>::disposeElements(a1);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RoadBatchKey,std::piecewise_construct_t const&,std::tuple<md::RoadBatchKey const&>,std::tuple<>>(void *a1, md::RoadBatchKey *this)
{
  v4 = md::RoadBatchKey::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  v12 = *this;
  v16 = *(this + 20);
  v17 = *(this + 4);
  while (1)
  {
    v13 = v11[1];
    if (v13 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v14 = v11[2];
  if (!gss::FeatureAttributeSet::operator==(v14[30], v14[31], *(v12 + 240), *(v12 + 248)) || !geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v14 + 34, v12 + 272) || *(v11 + 8) != v17 || *(v11 + 36) != v16)
  {
    goto LABEL_21;
  }

  return v11;
}

void sub_1B296E1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverTransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverTransformConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverTransformConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::DaVinciGroundRenderable *,md::DaVinciGroundRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t (****anonymous namespace::addRoadRibbonToBatches(mdm::zone_mallocator *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, double a9, uint64_t a10, __int128 *a11, unint64_t *a12, uint64_t a13))(void)
{
  v21 = mdm::zone_mallocator::instance(a1);
  v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RoadRibbon>(v21);
  v23 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v22, a3);
  *v23 = &unk_1F2A38710;
  *(v23 + 49) = 0;
  v63 = v23;
  *(v23 + 96) = a6;
  *(v23 + 97) = a7;
  v23[11] = a3;
  if (a3)
  {
    v57 = a8;
    v24 = 0;
    v25 = 1;
    do
    {
      if (a5)
      {
        v26 = a11[1];
        v64 = *a11;
        v65 = v26;
        v27 = *a12;
        v28 = a12[1];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = md::drape(&v64, v27, v28, a13, *(a4 + 8 * v24), *(a4 + 8 * v24 + 4), *(a5 + 4 * v24), a9);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }
      }

      else
      {
        v29 = 0.0;
      }

      v23 = v63;
      v30 = v63[9] + 3 * v24;
      *v30 = *(a4 + 8 * v24);
      v30[2] = v29;
      v24 = v25++;
    }

    while (v24 < a3);
    a8 = v57;
  }

  v31 = *(a8 + 8);
  *(v23 + 98) = v31;
  if (v31)
  {
    *(v23 + 25) = *a8;
    *(v23 + 26) = *(a8 + 4);
  }

  v32 = *(a10 + 8);
  *(v23 + 99) = v32;
  if (v32 == 1)
  {
    *(v23 + 27) = *a10;
    *(v23 + 28) = *(a10 + 4);
  }

  v34 = *a2;
  v33 = a2[1];
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v59 = v34;
  v60 = v33;
  v61 = 0;
  v62 = 0;
  *&v64 = &v59;
  v35 = std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RoadBatchKey,std::piecewise_construct_t const&,std::tuple<md::RoadBatchKey const&>,std::tuple<>>(a1, &v59);
  v36 = v35;
  v38 = v35[6];
  v37 = v35[7];
  if (v38 >= v37)
  {
    v41 = v35[5];
    v42 = v38 - v41;
    v43 = (v38 - v41) >> 3;
    v44 = v43 + 1;
    if ((v43 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v45 = v37 - v41;
    if (v45 >> 2 > v44)
    {
      v44 = v45 >> 2;
    }

    if (v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      v46 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v46 = v44;
    }

    v66 = v35 + 8;
    if (v46)
    {
      v47 = mdm::zone_mallocator::instance(v35);
      v48 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(v47, v46);
      v41 = v36[5];
      v42 = v36[6] - v41;
      v49 = v42 >> 3;
    }

    else
    {
      v48 = 0;
      v49 = v43;
    }

    v50 = &v48[8 * v43];
    v51 = &v48[8 * v46];
    v52 = v63;
    v63 = 0;
    v53 = &v50[-8 * v49];
    *v50 = v52;
    v40 = v50 + 8;
    memcpy(v53, v41, v42);
    v54 = v36[5];
    v36[5] = v53;
    v36[6] = v40;
    v55 = v36[7];
    v36[7] = v51;
    *&v65 = v54;
    *(&v65 + 1) = v55;
    *&v64 = v54;
    *(&v64 + 1) = v54;
    std::__split_buffer<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v64);
  }

  else
  {
    v39 = v63;
    v63 = 0;
    *v38 = v39;
    v40 = v38 + 8;
  }

  v36[6] = v40;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  return std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](&v63);
}

void sub_1B296E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a7);
  }

  std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTransformConstantDataHandle>();
    *algn_1EB83B9B8 = 0x7D9191A7B57B7B35;
    qword_1EB83B9C0 = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    qword_1EB83B9C8 = 48;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::PuckRenderLayer::~PuckRenderLayer(md::PuckRenderLayer *this)
{
  *this = &unk_1F2A39E20;
  std::unique_ptr<md::PuckRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A39E20;
  std::unique_ptr<md::PuckRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x7851AF310F49C988)
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

float md::ElevationUtils::drapeElevation(uint64_t a1, unint64_t a2, std::__shared_weak_count *a3, uint64_t a4, float a5, float a6, float a7)
{
  v9 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v13 = *(a2 + 144);
    v12 = *(a2 + 152);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      if (v13)
      {
        v14 = *(v9 + 144);
        v12 = *(v9 + 152);
        v15 = v12 == 0;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_10:
        v16 = 1 << *(a4 + 1);
        v17 = 1 << *(v14 + 57);
        v18.i64[0] = *(a4 + 8);
        v18.i64[1] = v16 + ~*(a4 + 4);
        v19 = vcvtq_f64_f32(__PAIR64__(LODWORD(a6), LODWORD(a5)));
        v20 = vaddq_f64(v19, vcvtq_f64_s64(v18));
        v18.i64[0] = *(v14 + 64);
        v18.i64[1] = v17 + ~*(v14 + 60);
        v21 = vmulq_n_f64(vmlaq_n_f64(vnegq_f64(vmulq_n_f64(vcvtq_f64_s64(v18), 1.0 / v17)), v20, 1.0 / v16), v17);
        v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v21);
        v23.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v22)).u32[0];
        v23.i32[1] = vmovn_s32(vcgeq_f32(v22, xmmword_1B33B09C0)).i32[1];
        v24 = vaddvq_s32(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v23), 0x1FuLL)), xmmword_1B33B0FF0));
        if (!v15)
        {
          v33 = v19;
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          v19 = v33;
        }

        if ((~v24 & 0xF) == 0)
        {
          v28 = *(v9 + 144);
          v29 = *(v9 + 152);
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = 1 << *(a4 + 1);
          v31.i64[0] = *(a4 + 8);
          v31.i64[1] = v30 + ~*(a4 + 4);
          v32 = md::ElevationRaster::elevationInMetersAtWorldPoint(v28, 1, vmulq_n_f64(vaddq_f64(v19, vcvtq_f64_s64(v31)), 1.0 / v30));
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v29);
          }

          v9 = (v32 & 0x100000000uLL) >> 32;
          if ((v32 & 0x100000000) != 0)
          {
            a7 = *&v32;
          }

          if (a3)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

    else if (v13)
    {
      v14 = *(a2 + 144);
      v15 = 1;
      goto LABEL_10;
    }

    LOBYTE(v9) = 0;
  }

  if (a3)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

LABEL_16:
  if ((v9 & 1) == 0 && *(a1 + 24) == 1)
  {
    Undulation = md::GeoidModel::getUndulation(*a1, (*(a1 + 16) + ((*(a1 + 20) - *(a1 + 16)) * a6)), (*(a1 + 8) + ((*(a1 + 12) - *(a1 + 8)) * a5)));
    v26 = *&Undulation;
    if (!HIDWORD(Undulation))
    {
      v26 = 0.0;
    }

    return a7 + v26;
  }

  return a7;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
    *algn_1EB83C2B8 = 0x48075849379D7E1DLL;
    qword_1EB83C2C0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>]";
    qword_1EB83C2C8 = 91;
  }
}

float md::drape(__int128 *a1, unint64_t a2, std::__shared_weak_count *a3, uint64_t a4, float a5, float a6, float a7, double a8)
{
  if (a7 == 3.4028e38)
  {
    LOBYTE(v13) = 0;
    BYTE8(v14) = 0;
    if (a3)
    {
      atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
      a7 = 0.0;
      goto LABEL_6;
    }

    a7 = 0.0;
LABEL_8:
    v11 = md::ElevationUtils::drapeElevation(&v13, a2, a3, a4, a5, a6, a7);
    return v11 * a8;
  }

  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  if (!a3)
  {
    goto LABEL_8;
  }

  atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_6:
  v11 = md::ElevationUtils::drapeElevation(&v13, a2, a3, a4, a5, a6, a7);
  std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  return v11 * a8;
}

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x7851AF310F49C988)
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

uint64_t gss::RenderStyle<gss::PropertyID>::hasValueForKey(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 != 2)
  {
    v8 = a1 + a3;
LABEL_11:
    v9 = *(v8 + 11);
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v5 = *a1;
  if (!*a1 || (v6 = *v5, LODWORD(v5) = *v5 == 1.0, *(a1 + 10) != 1) || (v6 != 0.0 ? (v7 = v6 == 1.0) : (v7 = 1), v7))
  {
    v8 = a1 + v5;
    goto LABEL_11;
  }

LABEL_12:
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtEnd(a1, a2, 0))
  {
    return 1;
  }

  v9 = 1;
LABEL_15:

  return gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtEnd(a1, a2, v9);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[331];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_13FlyoverCommon9TransformEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14F18;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::LayerDataLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *this, uint64_t a3, void *a4)
{
  *a4 = *(a1 + 120);
  md::LayoutContext::frameState(this);
  v6 = (*(v5 + 88) * 1000.0);
  gdc::LayerDataManager::processNewResources(*(*(*(a1 + 120) + 56) + 56), *(*(*(a1 + 120) + 56) + 64), v6);
  gdc::LayerDataManager::processNewLayerData(*(*(a1 + 120) + 8), *(*(a1 + 120) + 16));
  v7 = *(*(a1 + 120) + 56);

  return gdc::LayerDataManager::updateExpired(v7, v6);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14F18;
  a2[1] = v2;
  return result;
}

uint64_t gdc::LayerDataManager::processNewResources(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this != a2)
  {
    while (1)
    {
      v4 = *(this + 8);
      v3 = *(this + 16);
      v58 = this;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = v3;
      std::mutex::lock((v4 + 128));
      v79 = *(v4 + 208);
      v5 = *(v4 + 240);
      v77 = *(v4 + 232);
      v78 = *(v4 + 192);
      v61 = v78;
      v62 = *(v4 + 216);
      *(v4 + 192) = 0u;
      *(v4 + 208) = 0u;
      v56 = v5;
      v74 = v5;
      v6 = *(v4 + 248);
      *(v4 + 224) = 0u;
      *(v4 + 240) = 0u;
      v55 = v6;
      v75 = v6;
      v76 = v62;
      *(v4 + 256) = 0;
      std::mutex::unlock((v4 + 128));
      if (v62 != *(&v62 + 1))
      {
        break;
      }

LABEL_38:
      if (v61 != *(&v61 + 1))
      {
        v24 = v61;
        v25 = *v61;
        *(v25 + 12) = a3;
        *(v25 + 13) = a3;
        v26 = *v25;
        v27 = *(v25 + 1);
        v28 = (v27 - 0x61C8864680B583EBLL + ((v26 - 0x61C8864680B583EBLL) << 6) + ((v26 - 0x61C8864680B583EBLL) >> 2)) ^ (v26 - 0x61C8864680B583EBLL);
        v29 = *(v25 + 9) - 0x61C8864680B583EBLL + (v28 << 6) + (v28 >> 2);
        v30 = v29 ^ v28;
        v31 = *(v4 + 272);
        if (v31)
        {
          v32 = vcnt_s8(v31);
          v32.i16[0] = vaddlv_u8(v32);
          v33 = v32.u32[0];
          if (v32.u32[0] > 1uLL)
          {
            v34 = v29 ^ v28;
            if (v30 >= *&v31)
            {
              v34 = v30 % *&v31;
            }
          }

          else
          {
            v34 = (*&v31 - 1) & v30;
          }

          v35 = *(*(v4 + 264) + 8 * v34);
          if (v35)
          {
            v36 = *v35;
            if (*v35)
            {
              v37 = *&v31 - 1;
              v59 = v30;
              do
              {
                v38 = v36[1];
                if (v38 == v30)
                {
                  if (*(v36 + 16) == v26 && *(v36 + 9) == v27)
                  {
                    v39 = v24;
                    v40 = v34;
                    v41 = v4;
                    v42 = v37;
                    v43 = v26;
                    v44 = gdc::GenericKey::operator==((v36 + 3), (v25 + 8));
                    v26 = v43;
                    v37 = v42;
                    v4 = v41;
                    v34 = v40;
                    v24 = v39;
                    v30 = v59;
                    if (v44)
                    {
                      v45 = v24[1];
                      if (v45)
                      {
                        atomic_fetch_add_explicit(v45 + 2, 1uLL, memory_order_relaxed);
                      }

                      v46 = v36[15];
                      v36[14] = v25;
                      v36[15] = v45;
                      if (v46)
                      {
                        std::__shared_weak_count::__release_weak(v46);
                      }

                      v47 = *v24;
                      v63 = **v24;
                      v64 = v68;
                      v65 = v68;
                      v66 = v68;
                      v67 = 32;
                      geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v64, v47[1], v47[2]);
                      v69 = v47[9];
                      v70 = *(v47 + 5);
                      v71 = *v24;
                      v48 = v24[1];
                      v72.__r_.__value_.__r.__words[0] = v48;
                      if (v48)
                      {
                        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
                      }

                      geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::insert(v4 + 344, &v63);
                    }
                  }
                }

                else
                {
                  if (v33 > 1)
                  {
                    if (v38 >= *&v31)
                    {
                      v38 %= *&v31;
                    }
                  }

                  else
                  {
                    v38 &= v37;
                  }

                  if (v38 != v34)
                  {
                    break;
                  }
                }

                v36 = *v36;
              }

              while (v36);
            }
          }
        }

        operator new();
      }

      v49 = *(v4 + 120);
      if (v49)
      {
        (*(*v49 + 48))(v49, v4 + 304);
      }

      v50 = *(v4 + 56);
      v53 = v62 == *(&v62 + 1) && v61 == *(&v61 + 1) && v55 == v56;
      if (v50 && !v53)
      {
        (*(*v50 + 48))(v50, &v78, &v76, &v74);
      }

      v63 = &v74;
      std::vector<gdc::ResourceRequest>::__destroy_vector::operator()[abi:nn200100](&v63);
      v63 = &v76;
      std::vector<gdc::ResourceRequest>::__destroy_vector::operator()[abi:nn200100](&v63);
      v63 = &v78;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v63);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      }

      this = v58 + 24;
      if (v58 + 24 == a2)
      {
        return this;
      }
    }

    v7 = v62;
LABEL_6:
    v63 = *(v7 + 8);
    v64 = v68;
    v65 = v68;
    v66 = v68;
    v67 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v64, *(v7 + 16), *(v7 + 24));
    v8 = *(v7 + 80);
    v70 = *(v7 + 88);
    v9 = *(v7 + 104);
    v69 = v8;
    v71 = v9;
    if (*(v7 + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, *(v7 + 112), *(v7 + 120));
    }

    else
    {
      v10 = *(v7 + 112);
      v72.__r_.__value_.__r.__words[2] = *(v7 + 128);
      *&v72.__r_.__value_.__l.__data_ = v10;
    }

    if (*(v7 + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v7 + 136), *(v7 + 144));
    }

    else
    {
      v11 = *(v7 + 136);
      __p.__r_.__value_.__r.__words[2] = *(v7 + 152);
      *&__p.__r_.__value_.__l.__data_ = v11;
    }

    v12 = v63;
    v13 = WORD1(v63);
    v14 = (WORD1(v63) - 0x61C8864680B583EBLL + ((v63 - 0x61C8864680B583EBLL) << 6) + ((v63 - 0x61C8864680B583EBLL) >> 2)) ^ (v63 - 0x61C8864680B583EBLL);
    v15 = &v69[8 * v14 - 0xC3910C8D016B07DLL] + (v14 >> 2) - 3;
    v16 = v15 ^ v14;
    v17 = *(v4 + 312);
    if (!*&v17)
    {
      goto LABEL_30;
    }

    v18 = vcnt_s8(v17);
    v18.i16[0] = vaddlv_u8(v18);
    v19 = v18.u32[0];
    if (v18.u32[0] > 1uLL)
    {
      v20 = v15 ^ v14;
      if (v16 >= *&v17)
      {
        v20 = v16 % *&v17;
      }
    }

    else
    {
      v20 = (*&v17 - 1) & v16;
    }

    v21 = *(*(v4 + 304) + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v23 = v22[1];
      if (v23 == v16)
      {
        if (*(v22 + 16) == v12 && *(v22 + 9) == v13 && gdc::GenericKey::operator==((v22 + 3), &v64))
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          if (v64 != v66)
          {
            free(v64);
          }

          v7 += 160;
          if (v7 == *(&v62 + 1))
          {
            goto LABEL_38;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (v19 > 1)
        {
          if (v23 >= *&v17)
          {
            v23 %= *&v17;
          }
        }

        else
        {
          v23 &= *&v17 - 1;
        }

        if (v23 != v20)
        {
          goto LABEL_30;
        }
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_30;
      }
    }
  }

  return this;
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(void *a1, _WORD *a2, uint64_t *a3, unsigned int a4, uint64_t *a5, int a6)
{
  v7 = a4;
  v8 = a2;
  if (a3 != a5 || a4 != a6)
  {
    v10 = 0;
    v11 = *(a3 + 6);
    v12 = 1;
    v13 = a4;
    do
    {
      v14 = v12;
      if (v13 + 1 < v11)
      {
        ++v13;
      }

      else
      {
        v13 = *(a3 + 6);
      }

      v10 -= 8;
      ++v12;
    }

    while (a3 != a5 || v13 != a6);
    v15 = a1[1];
    v16 = a1[2];
    if ((v14 - 1) >= (v16 - v15) >> 3)
    {
      v31 = *a1;
      v32 = v14 + (&v15[-*a1] >> 3);
      if (v32 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v33 = a2 - v31;
      v34 = v16 - v31;
      if (v34 >> 2 > v32)
      {
        v32 = v34 >> 2;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v32;
      }

      if (v35)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v35);
      }

      v44 = 0;
      v45 = 8 * (v33 >> 3);
      v46 = (v45 + 8 * v14);
      v47 = v45;
      do
      {
        if (v7 < v11)
        {
          v44 = (*a3 + 4 * v7);
          v33 = *a3 + *(a3 + 2) + 2 * v7;
        }

        *v47 = *v44;
        *(v47 + 2) = *v33;
        v47 += 8;
        if (v7 + 1 < v11)
        {
          ++v7;
        }

        else
        {
          v7 = v11;
        }
      }

      while (v47 != v46);
      memcpy(v46, a2, a1[1] - a2);
      v48 = *a1;
      v49 = &v46[a1[1] - v8];
      a1[1] = v8;
      v50 = (v45 - (v8 - v48));
      memcpy(v50, v48, v8 - v48);
      v51 = *a1;
      *a1 = v50;
      a1[1] = v49;
      a1[2] = 0;
      if (v51)
      {

        operator delete(v51);
      }
    }

    else
    {
      v17 = (v15 - a2) >> 3;
      if (v17 <= (v14 - 1))
      {
        v36 = a4;
        if (v17 >= 1)
        {
          v37 = v17 + 1;
          v36 = a4;
          do
          {
            if (v36 + 1 < v11)
            {
              ++v36;
            }

            else
            {
              v36 = *(a3 + 6);
            }

            --v37;
          }

          while (v37 > 1);
        }

        v38 = a1[1];
        if (v36 != a6)
        {
          v39 = 0;
          v38 = a1[1];
          v40 = v36;
          do
          {
            if (v40 < v11)
            {
              v39 = (*a3 + 4 * v40);
              v6 = (*a3 + *(a3 + 2) + 2 * v40);
            }

            *v38 = *v39;
            *(v38 + 4) = *v6;
            if (v40 + 1 < v11)
            {
              ++v40;
            }

            else
            {
              v40 = v11;
            }

            v38 += 8;
          }

          while (v40 != a6);
        }

        a1[1] = v38;
        if (v17 >= 1)
        {
          v41 = (v38 - 8 * v14);
          v42 = v38;
          while (v41 < v15)
          {
            v43 = *v41;
            v41 += 8;
            *v42++ = v43;
          }

          a1[1] = v42;
          if (v38 != &a2[4 * v14])
          {
            v52 = 0;
            v15 = &a2[v10 / 0xFFFFFFFFFFFFFFFELL];
            do
            {
              v53 = v52 + v38;
              *(v53 - 8) = *(v10 + v38 - 8);
              *(v53 - 4) = *(v10 + v38 - 4);
              v52 -= 8;
              v10 -= 8;
              v15 += 8;
            }

            while (v38 != v15);
          }

          if (v36 != a4)
          {
            v54 = 0;
            v55 = *(a3 + 6);
            do
            {
              if (v7 < v55)
              {
                v54 = (*a3 + 4 * v7);
                v15 = (*a3 + *(a3 + 2) + 2 * v7);
              }

              *v8 = *v54;
              *(v8 + 2) = *v15;
              if (v7 + 1 < v55)
              {
                ++v7;
              }

              else
              {
                v7 = v55;
              }

              v8 += 8;
            }

            while (v7 != v36);
          }
        }
      }

      else
      {
        v18 = &v15[-8 * v14];
        v19 = a1[1];
        if (v18 < v15)
        {
          v19 = a1[1];
          do
          {
            v20 = *v18;
            v18 += 8;
            *v19++ = v20;
          }

          while (v18 < v15);
        }

        a1[1] = v19;
        if (v15 != &a2[4 * v14])
        {
          v21 = 0;
          do
          {
            v22 = &v15[v21];
            v23 = &v15[v21 + v10];
            *(v22 - 2) = *(v23 - 2);
            *(v22 - 2) = *(v23 - 2);
            v21 -= 8;
          }

          while (a2 - v15 - v10 != v21);
        }

        v24 = *(a3 + 6);
        v25 = *a3;
        v26 = *a3 + *(a3 + 2);
        v27 = *(*a3 + 4 * a4);
        *a2 = v27;
        v28 = *(v26 + 2 * a4);
        a2[2] = v28;
        if (v14 != 1)
        {
          v29 = a2 + 6;
          do
          {
            v30 = v7 + 1;
            if (v7 + 1 < v24)
            {
              ++v7;
            }

            else
            {
              v7 = v24;
            }

            if (v30 < v24)
            {
              v27 = *(v25 + 4 * v7);
              v28 = *(v26 + 2 * v7);
            }

            *(v29 - 1) = v27;
            *v29 = v28;
            v29 += 4;
            --v12;
          }

          while (v12 > 2);
        }
      }
    }
  }
}

uint64_t std::__function::__func<gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_3,std::allocator<std::unique_ptr<gdc::ResourceFetcher> &&>,void ()(std::unordered_map<gdc::ResourceKey,gdc::Error,gdc::ResourceKeyHash,std::equal_to<std::unordered_map>,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_3<std::pair<std::unordered_map const,gdc::ResourceKey>>> const&)>::operator()(uint64_t a1)
{
  result = *(*(a1 + 8) + 440);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void gss::StylesheetManager<gss::PropertyID>::sourceStyleAttributes(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = *a3;
  v8 = a3[1];
  v10 = v8 - v7;
  v11 = v10 + 20;
  if (v10 != -20)
  {
    if (!(v11 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>>(&__p, 0, v7, v8, -20);
  v12 = *(a2 + 520);
  if (v12)
  {
    v13 = pthread_rwlock_rdlock((v12 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v19, (v12 + 216), 0, (v12 + 216), *(v12 + 228));
    v15 = pthread_rwlock_unlock((v12 + 16));
    if (v15)
    {
      geo::read_write_lock::logFailure(v15, "unlock", v16);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v19, a4, 0, a4, *(a4 + 12));
  }

  gss::ResolveMultiAttributeVectorToMap(a1, &__p);
  v17 = __p;
  if (__p)
  {

    operator delete(v17);
  }
}

void sub_1B29702E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  geo::read_write_lock::unlock((v10 + 16));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::World::World(VKSharedResources *,GEOApplicationAuditToken *,float,objc_object  {objcproto14MDRenderTarget}*,std::shared_ptr<md::TaskContext>,gdc::LoadingStatusTracker *,ggl::RenderTargetFormat const&,std::function<void ()(void)>,BOOL,md::RunLoopController *,md::DaVinciGroundSettings const*,std::shared_ptr<md::TaskContext>::Logger *)::$_1,std::allocator<std::shared_ptr<md::TaskContext>::Logger *>,void ()(std::unordered_map<std::shared_ptr<md::TaskContext>::ResourceKey,std::shared_ptr<md::TaskContext>::Error,std::shared_ptr<md::TaskContext>::ResourceKeyHash,std::equal_to<std::unordered_map>,md::World::World(VKSharedResources *,GEOApplicationAuditToken *,float,objc_object  {objcproto14MDRenderTarget}*,std::shared_ptr<md::TaskContext>,gdc::LoadingStatusTracker *,ggl::RenderTargetFormat const&,std::function<void ()(void)>,BOOL,md::RunLoopController *,md::DaVinciGroundSettings const*,std::shared_ptr<md::TaskContext>::Logger *)::$_1<std::pair<std::unordered_map const,std::shared_ptr<md::TaskContext>::ResourceKey>>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_35:
    v19 = 1;
    goto LABEL_41;
  }

  v4 = *MEMORY[0x1E696A978];
  while (v3[14] == -8)
  {
LABEL_28:
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_35;
    }
  }

  v5 = GEOErrorDomain();
  v6 = [v5 UTF8String];
  v7 = (v3 + 15);
  v8 = strlen(v6);
  v9 = v8;
  v10 = *(v3 + 143);
  if (v10 < 0)
  {
    if (v8 != v3[16])
    {
LABEL_11:

      v12 = 0;
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    if (v8 == -1)
    {
      goto LABEL_47;
    }

    v11 = *v7;
  }

  else
  {
    v11 = v3 + 15;
    if (v9 != v10)
    {
      goto LABEL_11;
    }
  }

  if (memcmp(v11, v6, v9))
  {
    goto LABEL_11;
  }

  v12 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:v3[14]];

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = ([v12 _geo_isNetworkError] & 1) != 0 || objc_msgSend(v12, "code") == -15 || objc_msgSend(v12, "code") == -19;
LABEL_13:
  v14 = [v4 UTF8String];
  v15 = strlen(v14);
  v16 = *(v3 + 143);
  if (v16 < 0)
  {
    if (v15 != v3[16])
    {
LABEL_25:
      v18 = 0;
      goto LABEL_26;
    }

    if (v15 == -1)
    {
LABEL_47:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = *v7;
  }

  else if (v15 != v16)
  {
    goto LABEL_25;
  }

  v18 = !memcmp(v7, v14, v15) && v3[14] == -1001;
LABEL_26:
  if (!v18 && !v13)
  {

    goto LABEL_28;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v20 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = (*(**(v2 + 408) + 16))(*(v2 + 408));
    v22 = v3[14];
    v29 = 136315394;
    v30 = v21;
    v31 = 2048;
    v32 = v22;
    _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_INFO, "%s Retry Resources Loading Due To Code: %lli", &v29, 0x16u);
  }

  v19 = 0;
LABEL_41:
  result = (*(**(v2 + 368) + 56))(*(v2 + 368));
  if ((result & 1) == 0)
  {
    if (v19)
    {
      atomic_store(0, (v2 + 384));
    }

    else
    {
      v24 = (v2 + 384);
      v25 = atomic_load((v2 + 384));
      if (v25 <= 4)
      {
        v26 = *(v2 + 368);
        v27 = atomic_load(v24);
        v28 = ldexp(1.0, v27);
        result = (*(*v26 + 24))(v26, 0, v28 * 5.0);
        atomic_fetch_add(v24, 1u);
      }
    }
  }

  return result;
}

void std::vector<gdc::ResourceRequest>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 160;
        std::allocator_traits<std::allocator<gdc::ResourceRequest>>::destroy[abi:nn200100]<gdc::ResourceRequest,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::find<gss::StyleKey>(void *a1, uint64_t *a2)
{
  v4 = std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>::operator()[abi:nn200100](a2);
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
    v12 = *a2;
    v13 = a2[1];
    do
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (gss::FeatureAttributeSet::operator==(v11[2], v11[3], v12, v13) && (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v11 + 6, (a2 + 4)) & 1) != 0)
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v14 >= *&v5)
          {
            v14 %= *&v5;
          }
        }

        else
        {
          v14 &= *&v5 - 1;
        }

        if (v14 != v9)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignUVsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignUVsDeviceData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignUVsDeviceData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(uint64_t a1, uint64_t a2)
{
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a2;
  *a1 = &unk_1F2A386F0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  if (a2)
  {
    *(a1 + 88) = a2;
    v4 = mdm::zone_mallocator::instance(a1);
    *(a1 + 72) = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,3,1>>(v4, a2);
    *(a1 + 64) = 1;
  }

  return a1;
}

void gdc::LayerDataManager::processNewLayerData(gdc::LayerDataManager *this, gdc::LayerDataManager *a2)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (this != a2)
  {
    do
    {
      v48 = this;
      v49 = *(this + 1);
      v2 = *(v49 + 16);
      v66 = 0u;
      v67 = 0u;
      v68 = 1065353216;
      v63 = 0u;
      v64 = 0u;
      v65 = 1065353216;
      std::mutex::lock((v2 + 80));
      v3 = *(v2 + 144);
      v4 = *(v2 + 152);
      *(v2 + 144) = v66;
      v5 = *(v2 + 160);
      v6 = *(&v67 + 1);
      v7 = *(v2 + 168);
      v8 = v68;
      v9 = *(v2 + 176);
      *&v66 = v3;
      *(&v66 + 1) = v4;
      *(v2 + 160) = v67;
      *&v67 = v5;
      *(&v67 + 1) = v7;
      *(v2 + 168) = v6;
      v68 = v9;
      *(v2 + 176) = v8;
      if (v7)
      {
        v10 = *(v5 + 8);
        if ((v4 & (v4 - 1)) != 0)
        {
          if (v10 >= v4)
          {
            v10 %= v4;
          }
        }

        else
        {
          v10 &= v4 - 1;
        }

        *(v3 + 8 * v10) = &v67;
      }

      if (v6)
      {
        v11 = *(v2 + 152);
        v12 = *(*(v2 + 160) + 8);
        if ((v11 & (v11 - 1)) != 0)
        {
          if (v12 >= v11)
          {
            v12 %= v11;
          }
        }

        else
        {
          v12 &= v11 - 1;
        }

        *(*(v2 + 144) + 8 * v12) = v2 + 160;
      }

      v13 = *(v2 + 200);
      v14 = *(v2 + 184);
      v15 = *(v2 + 192);
      *(v2 + 184) = v63;
      v16 = v64;
      v17 = *(v2 + 208);
      v18 = v65;
      v19 = *(v2 + 216);
      *&v63 = v14;
      *(&v63 + 1) = v15;
      *&v64 = v13;
      *(&v64 + 1) = v17;
      *(v2 + 200) = v16;
      v65 = v19;
      *(v2 + 216) = v18;
      if (v17)
      {
        v20 = *(v13 + 8);
        if ((v15 & (v15 - 1)) != 0)
        {
          if (v20 >= v15)
          {
            v20 %= v15;
          }
        }

        else
        {
          v20 &= v15 - 1;
        }

        *(v14 + 8 * v20) = &v64;
      }

      if (*(&v16 + 1))
      {
        v21 = *(v2 + 192);
        v22 = *(*(v2 + 200) + 8);
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v22 >= v21)
          {
            v22 %= v21;
          }
        }

        else
        {
          v22 &= v21 - 1;
        }

        *(*(v2 + 184) + 8 * v22) = v2 + 200;
      }

      std::mutex::unlock((v2 + 80));
      std::vector<gdc::LayerDataRequestKey>::clear[abi:nn200100]((v2 + 224));
      std::vector<gdc::LayerDataRequestKey>::resize((v2 + 224), *(&v67 + 1));
      v23 = v53;
      for (i = v54; i != v23; i -= 120)
      {
        v25 = *(i - 96);
        if (v25 != *(i - 80))
        {
          free(v25);
        }
      }

      v54 = v23;
      std::vector<gdc::LayerDataRequestKeyPair>::reserve(&v53, *(&v67 + 1));
      v26 = v67;
      if (v67)
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v56, v67 + 16);
        v27 = *(v26 + 128);
        v28 = *(v26 + 136);
        v61 = v27;
        v62 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
          v27 = v61;
        }

        v29 = (*(*v27 + 16))(v27);
        LOBYTE(v69) = v56;
        LOWORD(v70) = WORD4(v56);
        v71 = v75;
        v72 = v75;
        v73 = v75;
        v74 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v71, v57[0], v57[1]);
        v76 = v59;
        v77 = v60;
        v78 = v61;
        v79 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
        }

        v80 = v29;
        if (std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>((v2 + 24), &v69))
        {
          std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry const&>();
        }

        std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry const&>();
      }

      v30 = v50;
      for (j = v51; j != v30; j -= 120)
      {
        v32 = *(j - 96);
        if (v32 != *(j - 80))
        {
          free(v32);
        }
      }

      v51 = v30;
      std::vector<gdc::LayerDataRequestKeyPair>::reserve(&v50, *(&v64 + 1));
      for (k = v64; k; k = *k)
      {
        v69 = k[16];
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v70, (k + 2));
        std::vector<gdc::LayerDataRequestKeyPair>::push_back[abi:nn200100](&v50, &v69);
        if (v72 != v74)
        {
          free(v72);
        }
      }

      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(&v63);
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::~__hash_table(&v66);
      gdc::LayerDataSource::processNewLayerData(long long,std::vector<gdc::LayerDataRequestKeyPair> &,std::vector<gdc::LayerDataRequestKeyPair> &)::$_0::operator()(v49, v53, v54, 0);
      gdc::LayerDataSource::processNewLayerData(long long,std::vector<gdc::LayerDataRequestKeyPair> &,std::vector<gdc::LayerDataRequestKeyPair> &)::$_0::operator()(v49, v50, v51, 1);
      v34 = *(v49 + 472);
      v35 = *(v49 + 32);
      v36 = *(v49 + 16);
      v37 = v53;
      v38 = v54;
      while (v37 != v38)
      {
        if (std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(v34 + 3, (v37 + 8)))
        {
          gdc::LayerDataStore::get(&v69, v36, (v37 + 8));
          gdc::LayerDataRequestTracker::_processKey(v34, (v37 + 8), &v69, 0);
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v70);
          }
        }

        v37 += 120;
      }

      v56 = 0u;
      *v57 = 0u;
      LODWORD(v58) = 1065353216;
      v39 = v34[5];
      if (v39)
      {
        do
        {
          if (std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>((v49 + 80), v39 + 16))
          {
            std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(&v56, (v39 + 16));
          }

          v39 = *v39;
        }

        while (v39);
        v40 = v57[0];
        if (v57[0])
        {
          do
          {
            v69 = 0;
            v70 = 0;
            gdc::LayerDataRequestTracker::_processKey(v34, v40 + 16, &v69, 0);
            if (v70)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v70);
            }

            v40 = *v40;
          }

          while (v40);
        }
      }

      v42 = v34[8];
      v41 = v34[9];
      if (v41 != v42)
      {
        v43 = 0;
        do
        {
          v44 = v42 + 112 * v43;
          if (*(v44 + 8) == v35)
          {
            gdc::LayerDataStore::get(&v66, v36, (v42 + 112 * v43));
            if (v66)
            {
              gdc::LayerDataRequestTracker::_processKey(v34, v44, &v66, 0);
            }

            v45 = v34[9];
            v46 = v34[8] + 112 * v43;
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v69, v46);
            *v46 = *(v45 - 112);
            *(v46 + 8) = *(v45 - 104);
            if (v46 != v45 - 112)
            {
              geo::small_vector_base<unsigned char>::copy((v46 + 16), (v45 - 96), (v46 + 48));
            }

            *(v46 + 80) = *(v45 - 32);
            *(v46 + 96) = *(v45 - 16);
            *(v45 - 112) = v69;
            *(v45 - 104) = v70;
            if (&v69 != (v45 - 112))
            {
              geo::small_vector_base<unsigned char>::copy((v45 - 96), &v71, (v45 - 64));
            }

            *(v45 - 32) = v76;
            *(v45 - 16) = v77;
            if (v71 != v73)
            {
              free(v71);
            }

            std::vector<gdc::LayerDataRequestKey>::resize(v34 + 8, 0x6DB6DB6DB6DB6DB7 * ((v34[9] - v34[8]) >> 4) - 1);
            if (*(&v66 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v66 + 1));
            }

            v42 = v34[8];
            v41 = v34[9];
          }

          else
          {
            ++v43;
          }
        }

        while (v43 < 0x6DB6DB6DB6DB6DB7 * ((v41 - v42) >> 4));
      }

      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(&v56);
      (*(*v49 + 32))(v49, &v53);
      this = (v48 + 24);
    }

    while ((v48 + 24) != a2);
  }

  v69 = &v50;
  std::vector<gdc::LayerDataRequestKeyPair>::__destroy_vector::operator()[abi:nn200100](&v69);
  v69 = &v53;
  std::vector<gdc::LayerDataRequestKeyPair>::__destroy_vector::operator()[abi:nn200100](&v69);
}

void std::vector<gdc::LayerDataRequestKey>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 112)
  {
    v4 = *(i - 96);
    if (v4 != *(i - 80))
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
    *algn_1EB83C5D8 = 0xD68EAE6708C7203BLL;
    qword_1EB83C5E0 = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>]";
    qword_1EB83C5E8 = 75;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UVsHandle>();
    *algn_1EB83B888 = 0xCBB77B1CBD05D7C5;
    qword_1EB83B890 = "md::ls::UVsHandle]";
    qword_1EB83B898 = 17;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

std::__shared_weak_count *geo::codec::multiSectionFeaturePoints(std::__shared_weak_count *result, unint64_t a2, void *a3)
{
  if (!result)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (LODWORD(result[4].__vftable) <= a2)
  {
    goto LABEL_8;
  }

  v4 = a3;
  v5 = result;
  result = geo::codec::vertexPoolForFeature(result);
  if (!result)
  {
    v9 = 0;
    a3 = v4;
    goto LABEL_11;
  }

  shared_owners = result[1].__shared_owners_;
  if (shared_owners)
  {
    a3 = v4;
    v7 = HIDWORD(v5[3].__shared_weak_owners_) + a2;
    if (result[1].__shared_weak_owners_ > v7)
    {
      v8 = *(shared_owners + 16 * v7);
      if (v8 < result->__shared_weak_owners_)
      {
        result = (result->__shared_owners_ + 8 * v8);
        v9 = *(shared_owners + 16 * v7 + 8);
LABEL_11:
        *a3 = v9;
        return result;
      }
    }

LABEL_8:
    v9 = 0;
    result = 0;
    goto LABEL_11;
  }

  return 0;
}

void *std::vector<gdc::LayerDataRequestKeyPair>::reserve(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x222222222222223)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<gdc::LayerDataRequestKey>::resize(void *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    v8 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v8 - v4) >> 4) < v7)
    {
      if (a2 <= 0x249249249249249)
      {
        v15 = a1;
        v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v3) >> 4);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x124924924924924)
        {
          v11 = 0x249249249249249;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v11);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v4 + 112 * v7;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = v4 + 48;
      *(v4 + 24) = v4 + 48;
      *(v4 + 32) = v4 + 48;
      *(v4 + 40) = 32;
      *(v4 + 100) = 0;
      *(v4 + 104) = 0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      v4 += 112;
    }

    while (v4 != v14);
    a1[1] = v14;
  }

  else if (!v6)
  {
    v12 = v3 + 112 * a2;
    while (v4 != v12)
    {
      v13 = *(v4 - 96);
      if (v13 != *(v4 - 80))
      {
        free(v13);
      }

      v4 -= 112;
    }

    a1[1] = v12;
  }
}

void geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = *(a1 + 12);
    v2 = *(a1 + 14);
    if (v1 != v2 || (*(a1 + 17) & 1) == 0)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, v1, v1 == v2 || (*(a1 + 17) & 1) == 0);
    }
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[363];
}

char *geo::codec::multiSectionFeatureCharacteristicPoints(char *this, GeoCodecsRoadFeature *a2, unint64_t *a3)
{
  if (this)
  {
    if (!*(this + 1))
    {
      return 0;
    }

    v3 = this;
    this = std::__shared_weak_count::lock(*(this + 1));
    if (!this)
    {
      return this;
    }

    v5 = this;
    v6 = *v3;
    if (*v3)
    {
      v7 = v3;
      v8 = v6[152];
      v9 = v6[151];
      __key = 0xCF3CF3CF3CF3CF3DLL * ((v7 - v6[4]) >> 3);
      this = bsearch(&__key, v9, v8, 0x64uLL, geo::codec::_searchForCharacteristicPoints(GeoCodecsCharacteristicPoint const*,unsigned long,unsigned long,unsigned long *)::$_0::__invoke);
      if (a2)
      {
        if (this)
        {
          for (; this > v9; this -= 100)
          {
            if (__key != *(this - 24))
            {
              break;
            }
          }

          *a2 = 0;
          v10 = &v9[100 * v8];
          if (this < v10)
          {
            v11 = __key;
            v12 = 1;
            v13 = this;
            do
            {
              if (v11 != *(v13 + 4))
              {
                break;
              }

              *a2 = v12;
              v13 += 100;
              ++v12;
            }

            while (v13 < v10);
          }

          goto LABEL_18;
        }

        *a2 = 0;
      }
    }

    this = 0;
LABEL_18:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = this;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v14;
    }
  }

  return this;
}

void sub_1B2971EAC(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v1 + 2);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t *gss::QueryableLocker<gss::PropertyID>::QueryableLocker(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    a2 = *a1;
  }

  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    v4 = (*(*a2 + 48))(a2, a1 + 2);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return a1;
}

void sub_1B2972028(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINSC_7DaVinci3UVsEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13518;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::RoadBatchKey const,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci3UVsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13518;
  a2[1] = v2;
  return result;
}

void gdc::LayerDataSource::processNewLayerData(long long,std::vector<gdc::LayerDataRequestKeyPair> &,std::vector<gdc::LayerDataRequestKeyPair> &)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v6 = a2;
    v8 = (a1 + 120);
    v9 = &unk_1ED670000;
    do
    {
      if (v9[136] != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
      {
        v11 = (*(**(a1 + 584) + 16))(*(a1 + 584));
        gdc::LayerDataRequestKey::keysInt32Str(&__p, (v6 + 8));
        v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        buf[0] = 136315394;
        *&buf[1] = v11;
        v57 = 2080;
        v58 = v12;
        _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "%s processNewLayerData: %s", buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v13 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 160), *v6);
      if (v13)
      {
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 160), v13);
      }

      else
      {
        v14 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>((a1 + 40), (v6 + 8));
        if (v14)
        {
          v15 = v14;
          v16 = v14[16];
          if (*(v16 + 209) == 1)
          {
            v17 = *(v16 + 208);
            if (a4)
            {
              if (v16[26])
              {
                if (v9[136] != -1)
                {
                  dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
                }

                v18 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
                if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_ERROR))
                {
                  v19 = (*(**(a1 + 584) + 16))(*(a1 + 584));
                  gdc::LayerDataRequestKey::keysInt32Str(&__p, (v6 + 8));
                  v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  buf[0] = 136315394;
                  *&buf[1] = v19;
                  v57 = 2080;
                  v58 = v20;
                  _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "%s Failed to create layer data for request with all resources: %s", buf, 0x16u);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                v49 = a4;
                gdc::LayerDataRequestKey::LayerDataRequestKey(&__p, v6 + 8);
                v21 = v15[17];
                v54 = v15[16];
                v55 = v21;
                if (v21)
                {
                  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v22 = v53;
                v23 = *(a1 + 128);
                v50 = v8;
                if (!*&v23)
                {
                  goto LABEL_63;
                }

                v24 = vcnt_s8(v23);
                v24.i16[0] = vaddlv_u8(v24);
                v25 = v24.u32[0];
                if (v24.u32[0] > 1uLL)
                {
                  v26 = v53;
                  if (v53 >= *&v23)
                  {
                    v26 = v53 % *&v23;
                  }
                }

                else
                {
                  v26 = (*&v23 - 1) & v53;
                }

                v35 = *(*v8 + 8 * v26);
                if (!v35 || (v36 = *v35) == 0)
                {
LABEL_63:
                  operator new();
                }

                v37 = *&v23 - 1;
                v38 = __p.__r_.__value_.__s.__data_[0];
                v39 = LOWORD(__p.__r_.__value_.__r.__words[1]);
                v47 = v26;
                v48 = v53;
                while (1)
                {
                  v40 = v36[1];
                  if (v40 == v22)
                  {
                    if (*(v36 + 16) == v38 && *(v36 + 12) == v39)
                    {
                      v41 = v37;
                      v42 = v25;
                      v43 = v38;
                      v44 = gdc::GenericKey::operator==((v36 + 4), &__p.__r_.__value_.__r.__words[2]);
                      v38 = v43;
                      v25 = v42;
                      v37 = v41;
                      v26 = v47;
                      v22 = v48;
                      if (v44)
                      {
                        if (v55)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v55);
                        }

                        a4 = v49;
                        if (__p.__r_.__value_.__r.__words[2] != v52)
                        {
                          free(__p.__r_.__value_.__r.__words[2]);
                        }

                        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
                        {
                          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
                        }

                        v8 = v50;
                        v45 = v15[16][14];
                        if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v46 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
                          if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
                          {
                            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                            v32 = v46;
                            v33 = v45;
                            v34 = "status=failed";
LABEL_73:
                            _os_signpost_emit_with_name_impl(&dword_1B2754000, v32, OS_SIGNPOST_INTERVAL_END, v33, "LayerDataRequest", v34, &__p, 2u);
                          }
                        }

                        goto LABEL_74;
                      }
                    }
                  }

                  else
                  {
                    if (v25 > 1)
                    {
                      if (v40 >= *&v23)
                      {
                        v40 %= *&v23;
                      }
                    }

                    else
                    {
                      v40 &= v37;
                    }

                    if (v40 != v26)
                    {
                      goto LABEL_63;
                    }
                  }

                  v36 = *v36;
                  if (!v36)
                  {
                    goto LABEL_63;
                  }
                }
              }

              *(v16 + 209) = 0;
            }

            else
            {
              *(v16 + 209) = 0;
              if (v17)
              {
                if (v9[136] != -1)
                {
                  dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
                }

                v27 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
                if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
                {
                  v28 = (*(**(a1 + 584) + 16))(*(a1 + 584));
                  gdc::LayerDataRequestKey::keysInt32Str(&__p, (v6 + 8));
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  buf[0] = 136315394;
                  *&buf[1] = v28;
                  v57 = 2080;
                  v58 = p_p;
                  _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_DEBUG, "%s Finished layer data request: %s", buf, 0x16u);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
                  {
                    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
                  }
                }

                v30 = v15[16][14];
                if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v31 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
                  if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
                  {
                    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v32 = v31;
                    v33 = v30;
                    v34 = "status=success";
                    goto LABEL_73;
                  }
                }

LABEL_74:
                std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&__p, (a1 + 40), v15);
                std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](&__p);
                v9 = &unk_1ED670000;
              }
            }
          }
        }
      }

      v6 += 120;
    }

    while (v6 != a3);
  }
}

void gss::Queryable<gss::PropertyID>::unlock(uint64_t a1)
{
  v1 = pthread_rwlock_unlock((a1 + 32));
  if (v1)
  {

    geo::read_write_lock::logFailure(v1, "unlock", v2);
  }
}

std::__shared_weak_count *geo::codec::multiSectionFeatureElevations(std::__shared_weak_count *result, unint64_t a2, void *a3)
{
  if (!result)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (LODWORD(result[4].__vftable) <= a2)
  {
    v10 = 0;
    result = 0;
    goto LABEL_7;
  }

  v4 = result;
  v5 = a3;
  v6 = geo::codec::vertexPoolForFeature(result);
  shared_weak_owners_high = HIDWORD(v4[3].__shared_weak_owners_);
  *v5 = 0;
  v8 = v6[1].__vftable;
  if (v8)
  {
    a3 = v5;
    v9 = (v6[1].__shared_owners_ + 16 * shared_weak_owners_high + 16 * a2);
    v11 = *v9;
    v10 = v9[1];
    result = (v8 + 4 * v11);
LABEL_7:
    *a3 = v10;
    return result;
  }

  return 0;
}

void md::DaVinciElevationRasterLayerDataSource::didProcessNewLayerData(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 760);
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *a2;
        v6 = a2[1];
        if (*a2 != v6)
        {
          do
          {
            gdc::Tiled::tileFromLayerDataKey(&v12, *(v5 + 24));
            v7 = 1.0 / (1 << v13);
            v8 = v7 * v15;
            v9 = v7 * ((1 << v13) + ~v14);
            v10 = v8 + v7;
            v11 = v9 + v7;
            md::MercatorTerrainHeightCache::invalidateRect(v4, &v8);
            v5 += 120;
          }

          while (v5 != v6);
        }
      }
    }
  }
}

uint64_t gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(int a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *v5;
      LODWORD(v5) = *v5 == 1.0;
      if (*(a3 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
      {
        v8 = v6 < 1.0;
        goto LABEL_13;
      }
    }

    v9 = (a3 + v5 + 11);
  }

  else
  {
    v9 = (a3 + 12);
  }

  v10 = *v9;
  if (v10 != 2)
  {
    return *gss::RenderStyle<gss::PropertyID>::styleValueForKey<unsigned int>(a3, a1, v10, 0);
  }

  v8 = 1;
LABEL_13:
  v16 = 1;
  v11 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<unsigned int>(a3, a1, 0, &v16);
  v12 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<unsigned int>(a3, a1, 1u, &v15);
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return *v13;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignNormalsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignNormalsDeviceData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignNormalsDeviceData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
    unk_1EB83C5B0 = 0xE913BA7B7D110BFBLL;
    qword_1EB83C5B8 = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>]";
    qword_1EB83C5C0 = 79;
  }
}

void ggl::TextureAlphaMask::MeshPipelineState::~MeshPipelineState(ggl::TextureAlphaMask::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t gss::FeatureAttributeSet::operator==(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  do
  {
    v5 = *a1 == *a3 && *(a1 + 4) == *(a3 + 4);
    a1 += 8;
    a3 += 8;
  }

  while (v5 && a1 != a2);
  return v5;
}

void std::vector<gdc::LayerDataRequestKeyPair>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gdc::LayerDataRequestKeyPair>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NormalsHandle>();
    *algn_1EB83D968 = 0x3218EFD67197A145;
    qword_1EB83D970 = "md::ls::NormalsHandle]";
    qword_1EB83D978 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::LayerDataManager::updateExpired(gdc::LayerDataManager *this, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(this + 39);
  v5[0] = &unk_1F2A607D8;
  v5[1] = this;
  v5[2] = a2;
  v6 = v5;
  for (i = *(v2 + 24); i; i = *i)
  {
    if (*(i + 28) == 2)
    {
      if (!v6)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v6 + 48))(v6, i + 2);
    }
  }

  return std::__function::__value_func<void ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](v5);
}

void sub_1B2973358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::ClearRenderLayer::~ClearRenderLayer(md::ClearRenderLayer *this)
{
  *this = &unk_1F2A4C080;
  std::__function::__value_func<std::vector<md::CommandBufferLocation> ()(md::LayoutContext const&)>::~__value_func[abi:nn200100](this + 80);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4049ECCB0CLL);
  }

  *this = &unk_1F2A16858;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C080;
  std::__function::__value_func<std::vector<md::CommandBufferLocation> ()(md::LayoutContext const&)>::~__value_func[abi:nn200100](this + 80);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4049ECCB0CLL);
  }

  *this = &unk_1F2A16858;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t std::__function::__value_func<void ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B29735EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a13);
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C62190](v13, v14);
  _Unwind_Resume(a1);
}

void md::createFeatureAttributeSet(gss::FeatureAttributeSet **a1, uint64_t *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (*a2)
  {
    v4 = std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::reserve(&v32, *(*a2 + 32) + *(*a2 + 33));
    v29 = a1;
    v5 = *a2;
    if (*(*a2 + 33))
    {
      v6 = 0;
      v7 = 0;
      v8 = v33;
      do
      {
        v9 = (*v5 + v6);
        v10 = *v9;
        v11 = v9[1];
        if (v8 >= v34)
        {
          v12 = v32;
          v13 = v8 - v32;
          v14 = (v8 - v32) >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v16 = v34 - v32;
          if ((v34 - v32) >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          v31[4] = v35;
          if (v17)
          {
            v18 = gss::zone_mallocator::instance(v4);
            v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v18, v17);
            v12 = v32;
            v13 = v33 - v32;
            v20 = (v33 - v32) >> 3;
          }

          else
          {
            v19 = 0;
            v20 = v14;
          }

          v21 = &v19[8 * v14];
          v22 = &v19[8 * v17];
          *v21 = v10;
          *(v21 + 2) = v11;
          v8 = v21 + 8;
          v23 = &v21[-8 * v20];
          memcpy(v23, v12, v13);
          v24 = v32;
          v25 = v34;
          v32 = v23;
          v33 = v8;
          v34 = v22;
          v31[2] = v24;
          v31[3] = v25;
          v31[0] = v24;
          v31[1] = v24;
          v4 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v31);
          v5 = *a2;
        }

        else
        {
          *v8 = v10;
          *(v8 + 2) = v11;
          v8 += 8;
        }

        v33 = v8;
        ++v7;
        v6 += 8;
      }

      while (v7 < *(v5 + 33));
    }

    a1 = v29;
    if (*(v5 + 32))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v5 + 24) + v26;
        LODWORD(v31[0]) = *v28;
        v30 = *(v28 + 4);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::emplace_back<gss::StyleAttribute,unsigned short>(&v32, v31, &v30);
        ++v27;
        v5 = *a2;
        v26 += 12;
      }

      while (v27 < *(*a2 + 32));
    }
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](a1, &v32);
  gss::FeatureAttributeSet::sort(*a1, a1[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v32);
}

void sub_1B2973844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[362];
}

uint64_t std::__function::__value_func<std::vector<md::CommandBufferLocation> ()(md::LayoutContext const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::LabelFeature::updateTextVector(md::LabelFeature *this)
{
  v2 = (this + 160);
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 21) - *(this + 20)) >> 3);
  if (v3 == (*(*this + 496))(this))
  {
    return;
  }

  (*(*this + 600))(&v27, this, 0);
  if (v27)
  {
    v4 = *(v27 + 33);
    if (*(v27 + 33))
    {
      v5 = *v27;
      if (**v27 == 4)
      {
        v6 = 0;
LABEL_6:
        v7 = v5[2 * v6 + 1];
        goto LABEL_12;
      }

      v6 = 0;
      v8 = v5 + 2;
      while (v4 - 1 != v6)
      {
        v9 = *v8;
        v8 += 2;
        ++v6;
        if (v9 == 4)
        {
          if (v6 < v4)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  LOWORD(v7) = -1;
LABEL_12:
  v10 = (*(*this + 496))(this);
  v11 = v10;
  v12 = *(this + 20);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 22) - v12) >> 3) < v10)
  {
    if (v10 >= 0x492492492492493)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = *(this + 21);
    v29[4] = this + 184;
    v14 = mdm::zone_mallocator::instance(v10);
    v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextDataEntry>(v14, v11);
    v16 = &v15[v13 - v12];
    v17 = &v15[56 * v11];
    v18 = *(this + 20);
    v19 = *(this + 21);
    v20 = &v16[v18 - v19];
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>,md::TextDataEntry*>(v18, v19, v20);
    v21 = *(this + 20);
    *(this + 20) = v20;
    *(this + 21) = v16;
    v22 = *(this + 22);
    *(this + 22) = v17;
    v29[2] = v21;
    v29[3] = v22;
    v29[0] = v21;
    v29[1] = v21;
    std::__split_buffer<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator> &>::~__split_buffer(v29);
  }

  v23 = (*(*this + 512))(this);
  for (i = 0x6DB6DB6DB6DB6DB7 * ((*(this + 21) - *(this + 20)) >> 3); i < (*(*this + 496))(this); ++i)
  {
    v25 = (*(*this + 480))(this, i);
    v26 = (*(*this + 488))(this, i);
    md::TextDataStore::addString(v2, v25, v26, v23, v7);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void sub_1B2973C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINSC_7DaVinci7NormalsEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13448;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci7NormalsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13448;
  a2[1] = v2;
  return result;
}

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::hash(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 80);
  if (!v2)
  {
    v4 = *(a1 + 56);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *(v5 + 33);
      if (*(v5 + 33))
      {
        v7 = *v5;
        if (*v7 == 189)
        {
          v8 = 0;
LABEL_11:
          if (LOBYTE(v7[2 * v8 + 1]) == 1)
          {
            v11 = *(v4 + 40);
            if (v11)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v8 = 0;
          v9 = v7 + 2;
          while (v6 - 1 != v8)
          {
            v10 = *v9;
            v9 += 2;
            ++v8;
            if (v10 == 189)
            {
              if (v8 >= v6)
              {
                break;
              }

              goto LABEL_11;
            }
          }
        }
      }
    }

    NativeShieldCount = geo::codec::featureGetNativeShieldCount(*(a1 + 56));
    if (NativeShieldCount)
    {
      v13 = NativeShieldCount;
      v14 = 0;
      v11 = 0;
      do
      {
        v31 = 0;
        __s = 0;
        geo::codec::featureGetNativeShield(v4, v14, &__s, &v31, 0);
        v15 = __s;
        if (__s)
        {
          v16 = strlen(__s);
          v17 = -2128831035;
          v18 = 0x9E3779BA006719DALL;
          if (v16)
          {
            do
            {
              v19 = *v15++;
              v17 = (v17 * v19) ^ 0x1000193;
              --v16;
            }

            while (v16);
            v18 = v17 - 0x61C8864680B583EBLL;
          }

          v11 ^= (v11 >> 2) + (v11 << 6) + v18;
        }

        v11 ^= v31 - 0x61C8864680B583EBLL + (v11 << 6) + (v11 >> 2);
        ++v14;
      }

      while (v14 != v13);
    }

    else
    {
      NativeLabelCount = geo::codec::featureGetNativeLabelCount(v4);
      if (NativeLabelCount)
      {
        v21 = NativeLabelCount;
        v22 = 0;
        v11 = 0;
        do
        {
          __s = 0;
          geo::codec::featureGetNativeLabel(v4, v22, &__s, 0);
          v23 = __s;
          if (__s)
          {
            v24 = strlen(__s);
            v25 = -2128831035;
            v26 = 0x9E3779BA006719DALL;
            if (v24)
            {
              do
              {
                v27 = *v23++;
                v25 = (v25 * v27) ^ 0x1000193;
                --v24;
              }

              while (v24);
              v26 = v25 - 0x61C8864680B583EBLL;
            }

            v11 ^= (v11 >> 2) + (v11 << 6) + v26;
          }

          ++v22;
        }

        while (v22 != v21);
      }

      else
      {
        v28 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
        v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v28 >> 47) ^ v28);
        v11 = 0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47));
      }
    }

LABEL_32:
    v3 = (v1 << 6) - 0x61C8864680B583EBLL + (v1 >> 2) + v11;
    return v3 ^ v1;
  }

  v3 = v2 - 0x61C8864680B583EBLL + (v1 << 6) + (v1 >> 2);
  return v3 ^ v1;
}

void md::VenueRenderLayer::~VenueRenderLayer(md::VenueRenderLayer *this)
{
  *this = off_1F2A067F8;
  *(this + 57) = &unk_1F2A3EF58;

  *(this + 48) = &unk_1F2A4E720;
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  std::unique_ptr<md::CVenueRenderResources>::~unique_ptr[abi:nn200100](this + 47);
  std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](this + 46);
  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A067F8;
  *(this + 57) = &unk_1F2A3EF58;

  *(this + 48) = &unk_1F2A4E720;
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  std::unique_ptr<md::CVenueRenderResources>::~unique_ptr[abi:nn200100](this + 47);
  std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](this + 46);

  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::~CartographicTiledVectorRenderLayer(this);
}

void md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 87) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
}

void std::vector<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,geo::allocator_adapter<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
          v8 = v6[31];
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          v9 = v6[15];
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 9));
          v10 = v6[7];
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v11 = v6[4];
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }

          v12 = v6[2];
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          v13 = mdm::zone_mallocator::instance(v12);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStore::WorkUnit>(v13, v6);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v14 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>>(v14, v4);
  }
}

void md::LabelLineStore::consumeWorkUnits(md::LabelLineStore *this)
{
  v252 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 155);
  if ((v1 & 1) == 0)
  {
    return;
  }

  v245 = 0uLL;
  v246 = 0;
  v211 = *(this + 7);
  std::mutex::lock(v211);
  v3 = *(this + 4);
  v245 = v3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v246 = *(this + 10);
  *(this + 10) = 0;
  atomic_store(0, this + 155);
  md::LabelLineStore::processWorkUnits(this, v3, *(&v3 + 1));
  v4 = atomic_load(this + 156);
  if (v4)
  {
    goto LABEL_232;
  }

  v5 = atomic_load(this + 156);
  if (v5)
  {
    goto LABEL_232;
  }

  ++*(this + 4);
  for (i = 128; i != 152; ++i)
  {
    atomic_store(0xFEu, this + i);
  }

  atomic_store(1u, this + 156);
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(v243, *this, *(this + 1));
  v7 = *(this + 12);
  v210 = this;
  v8 = *&v243[8];
  v212 = *(this + 13);
  if (v7 == v212)
  {
    v203 = *(this + 13);
    goto LABEL_212;
  }

  v215 = *v243;
  v217 = *v243;
  __asm { FMOV            V10.2S, #1.0 }

  v216 = *&v243[8];
  do
  {
    v14 = v7[10];
    for (j = v7[11]; j != v14; std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](j, 0))
    {
      --j;
    }

    v7[11] = v14;
    v16 = v7[2];
    if (v16 == v7[3])
    {
      goto LABEL_209;
    }

    v17 = md::LabelLineSegment::coincidentPointTolerance(*v16);
    v247 = 0uLL;
    v248 = 0;
    v18 = std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::reserve(&v247, (v7[7] - v7[6]) >> 3);
    v214 = v7;
    v20 = v7[6];
    v19 = v7[7];
    for (k = *(&v247 + 1); v20 != v19; ++v20)
    {
      v22 = *v20;
      if (k >= v248)
      {
        v23 = 0xF0F0F0F0F0F0F0F1 * (&k[-v247] >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0x1E1E1E1E1E1E1E1)
        {
LABEL_235:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0xE1E1E1E1E1E1E1E2 * (&v248[-v247] >> 3) > v24)
        {
          v24 = 0xE1E1E1E1E1E1E1E2 * (&v248[-v247] >> 3);
        }

        if (0xF0F0F0F0F0F0F0F1 * (&v248[-v247] >> 3) >= 0xF0F0F0F0F0F0F0)
        {
          v25 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v25 = v24;
        }

        *&v243[32] = &v249;
        if (v25)
        {
          v26 = mdm::zone_mallocator::instance(v18);
          v27 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStitchSegment>(v26, v25);
        }

        else
        {
          v27 = 0;
        }

        *v243 = v27;
        *&v243[8] = &v27[136 * v23];
        *&v243[16] = *&v243[8];
        *&v243[24] = &v27[136 * v25];
        md::LabelLineStitchSegment::LabelLineStitchSegment(*&v243[8], v22);
        k = (*&v243[16] + 136);
        *&v243[16] += 136;
        v29 = *(&v247 + 1);
        v28 = v247;
        v30 = *&v243[8] + v247 - *(&v247 + 1);
        if (v247 != *(&v247 + 1))
        {
          v31 = *&v243[8] + v247 - *(&v247 + 1);
          do
          {
            v32 = *(v28 + 16);
            *v31 = *v28;
            *(v31 + 16) = v32;
            v33 = *(v28 + 32);
            *(v31 + 48) = *(v28 + 48);
            *(v31 + 32) = v33;
            *(v31 + 56) = *(v28 + 56);
            v34 = *(v28 + 72);
            *(v31 + 75) = *(v28 + 75);
            *(v31 + 72) = v34;
            v35 = *(v28 + 80);
            *(v31 + 96) = *(v28 + 96);
            *(v31 + 80) = v35;
            *(v31 + 104) = *(v28 + 104);
            v36 = *(v28 + 120);
            *(v31 + 123) = *(v28 + 123);
            *(v31 + 120) = v36;
            *(v31 + 128) = *(v28 + 128);
            v28 += 136;
            v31 += 136;
          }

          while (v28 != v29);
          v28 = v247;
          k = *&v243[16];
        }

        *&v247 = v30;
        *(&v247 + 1) = k;
        v37 = v248;
        v248 = *&v243[24];
        *&v243[16] = v28;
        *&v243[24] = v37;
        *v243 = v28;
        *&v243[8] = v28;
        v18 = std::__split_buffer<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator> &>::~__split_buffer(v243);
      }

      else
      {
        v18 = md::LabelLineStitchSegment::LabelLineStitchSegment(k, *v20);
        k += 136;
      }

      *(&v247 + 1) = k;
    }

    v7 = v214;
    if (v247 != k)
    {
      md::LabelLineZSet::connectEntries(v214, 0, &v247, v17);
    }

    std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v247);
    v248 = 0;
    v247 = 0uLL;
    std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::reserve(&v247, (v214[3] - v214[2]) >> 3);
    v39 = v214[2];
    v38 = v214[3];
    if (v39 != v38)
    {
      v40 = 0;
      v41 = 0;
      while (1)
      {
        if (*(v214 + 2) != 1)
        {
          goto LABEL_44;
        }

        if (!v40)
        {
          break;
        }

        md::LabelLineSegment::tile(v243, *v39);
        v42 = *v243;
        if (*&v243[8])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v243[8]);
        }

        if (v42 == v40)
        {
          goto LABEL_44;
        }

LABEL_63:
        if (++v39 == v38)
        {
          goto LABEL_66;
        }
      }

      md::LabelLineSegment::tile(v243, *v39);
      v43 = *&v243[8];
      v40 = *v243;
      *v243 = 0uLL;
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
        if (*&v243[8])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v243[8]);
        }
      }

      v41 = v43;
LABEL_44:
      v44 = (*(**v39 + 16))();
      if (v44 >= 2)
      {
        v45 = *v39;
        if ((*(*v39 + 37) & 1) == 0)
        {
          v227 = v41;
          v46 = *(&v247 + 1);
          if (*(&v247 + 1) >= v248)
          {
            v48 = 0xF0F0F0F0F0F0F0F1 * ((*(&v247 + 1) - v247) >> 3);
            v49 = v48 + 1;
            if (v48 + 1 > 0x1E1E1E1E1E1E1E1)
            {
              goto LABEL_235;
            }

            if (0xE1E1E1E1E1E1E1E2 * (&v248[-v247] >> 3) > v49)
            {
              v49 = 0xE1E1E1E1E1E1E1E2 * (&v248[-v247] >> 3);
            }

            if (0xF0F0F0F0F0F0F0F1 * (&v248[-v247] >> 3) >= 0xF0F0F0F0F0F0F0)
            {
              v50 = 0x1E1E1E1E1E1E1E1;
            }

            else
            {
              v50 = v49;
            }

            *&v243[32] = &v249;
            if (v50)
            {
              v51 = mdm::zone_mallocator::instance(v44);
              v52 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStitchSegment>(v51, v50);
            }

            else
            {
              v52 = 0;
            }

            *v243 = v52;
            *&v243[8] = &v52[136 * v48];
            *&v243[16] = *&v243[8];
            *&v243[24] = &v52[136 * v50];
            md::LabelLineStitchSegment::LabelLineStitchSegment(*&v243[8], v45);
            v47 = *&v243[16] + 136;
            *&v243[16] += 136;
            v54 = *(&v247 + 1);
            v53 = v247;
            v55 = *&v243[8] + v247 - *(&v247 + 1);
            v41 = v227;
            if (v247 != *(&v247 + 1))
            {
              v56 = *&v243[8] + v247 - *(&v247 + 1);
              do
              {
                v57 = *(v53 + 16);
                *v56 = *v53;
                *(v56 + 16) = v57;
                v58 = *(v53 + 32);
                *(v56 + 48) = *(v53 + 48);
                *(v56 + 32) = v58;
                *(v56 + 56) = *(v53 + 56);
                v59 = *(v53 + 72);
                *(v56 + 75) = *(v53 + 75);
                *(v56 + 72) = v59;
                v60 = *(v53 + 80);
                *(v56 + 96) = *(v53 + 96);
                *(v56 + 80) = v60;
                *(v56 + 104) = *(v53 + 104);
                v61 = *(v53 + 120);
                *(v56 + 123) = *(v53 + 123);
                *(v56 + 120) = v61;
                *(v56 + 128) = *(v53 + 128);
                v53 += 136;
                v56 += 136;
              }

              while (v53 != v54);
              v53 = v247;
              v47 = *&v243[16];
            }

            *&v247 = v55;
            *(&v247 + 1) = v47;
            v62 = v248;
            v248 = *&v243[24];
            *&v243[16] = v53;
            *&v243[24] = v62;
            *v243 = v53;
            *&v243[8] = v53;
            std::__split_buffer<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator> &>::~__split_buffer(v243);
          }

          else
          {
            md::LabelLineStitchSegment::LabelLineStitchSegment(*(&v247 + 1), v45);
            v47 = v46 + 136;
            v41 = v227;
          }

          *(&v247 + 1) = v47;
        }
      }

      goto LABEL_63;
    }

    v41 = 0;
LABEL_66:
    if (v247 != *(&v247 + 1))
    {
      md::LabelLineZSet::connectEntries(v214, 1, &v247, v17);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v247);
    v63 = v214[10];
    v64 = v214[11];
    v65 = 126 - 2 * __clz(v64 - v63);
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,false>(v63, v64, v66, 1);
    v214[1] = 0;
    v67 = v214[10];
    v213 = v214[11];
    if (v67 == v213)
    {
      goto LABEL_209;
    }

    do
    {
      v218 = v67;
      v68 = *v67;
      v69 = *v7;
      started = md::LabelLine::startCoordinate(*(*v67 + 1), *(*v67 + 2));
      v71 = started;
      v233 = v215;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v234 = v68;
      v236 = started;
      v237 = *(v217 + 16);
      v72 = *(v68 + 1);
      v73 = *(v68 + 2) - v72;
      v74 = (v72 + 16 * started);
      if (started >= (v73 >> 4))
      {
        v75 = 0;
      }

      else
      {
        v75 = v74;
      }

      v235 = v75;
      memset(v231, 0, sizeof(v231));
      *v232 = 2139095039;
      *&v232[4] = 0;
      v232[6] = 0;
      if (v69 <= 0xA)
      {
        v76 = 2;
      }

      else
      {
        v76 = 4;
      }

      if (v69 > 0xC)
      {
        v76 = 127;
      }

      v228 = v76;
      v223 = *(v217 + 159);
      v77 = 1.0;
      if (md::LabelLinePosition::pointExists(&v233))
      {
        v78 = (*(**v75 + 24))(*v75, v71 >> 16);
        for (m = 0; m != 24; m += 8)
        {
          *&v231[m] = *(v78 + m);
        }

        *&v231[24] = *(v78 + 24);
        v80 = *(v78 + 43);
        *v232 = *(v78 + 40);
        *&v232[3] = v80;
        if ((v223 & 1) == 0)
        {
          v81 = md::LabelPoint::mercatorPoint(v231);
          v82 = exp(*(v81 + 8) * 6.28318531 + -3.14159265);
          v83 = atan(v82);
          v77 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v83 * 114.591559 + -90.0);
        }
      }

      v84 = 0.0;
      while (1)
      {
        v85 = md::LabelLinePosition::pointExists(&v233);
        if (!v85)
        {
          break;
        }

        v87 = v235;
        v88 = SWORD1(v236);
        v89 = (*(**v235 + 24))(*v235, SWORD1(v236));
        LOWORD(v90) = v88;
        v91 = *&md::LabelPoint::vectorToPoint(v231, v89, v223);
        v92 = 0;
        *v243 = v91;
        *&v243[8] = v93;
        *&v243[16] = v94;
        v95 = 0.0;
        do
        {
          v95 = v95 + *&v243[v92] * *&v243[v92];
          v92 += 8;
        }

        while (v92 != 24);
        v84 = sqrt(v95) + v84;
        if (v88)
        {
          if ((*(**v87 + 16))() <= v88 && v87[10] == 1)
          {
LABEL_98:
            *v243 = 261;
            v243[2] = 0;
            v244[0] = 1;
            v96 = v236;
            *&v243[24] = v236;
            *&v243[32] = 0xFFFFFFFFLL;
            *&v243[8] = v84;
            *&v243[16] = v84;
            std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), v243);
            v90 = v96 >> 16;
          }
        }

        else
        {
          if (v87[9])
          {
            goto LABEL_98;
          }

          LOWORD(v90) = 0;
        }

        v97 = md::LabelLinePosition::vertexInfo(&v233);
        v98 = md::LabelLinePosition::vertexInfo(&v233);
        v99 = v98 & 0xFF00;
        if (v68[1] == 2)
        {
          if (v99 == 32512)
          {
            goto LABEL_113;
          }

          v100 = 3;
LABEL_103:
          v243[0] = v100;
          v244[0] = v100 == 3;
          v101 = md::LabelLinePosition::vertexInfo(&v233) >> 24;
          if (v101)
          {
            v102 = v77 * (v101 * 0.1);
          }

          else
          {
            v102 = 0.0000001;
          }

          v103 = v102 + v84;
          *&v243[8] = v84 - v102;
          *&v243[16] = v102 + v84;
          *&v243[24] = md::LabelLine::coordinateAtOffset(v68, v84 - v102);
          v243[1] = 1;
          *&v243[32] = md::LabelLine::coordinateAtOffset(v68, v103);
          v243[2] = 1;
          std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), v243);
          goto LABEL_113;
        }

        if (v99 != 32512)
        {
          v100 = v97 - (v98 >> 8) <= 1 ? 2 : 3;
          if (v228 < v97 || v228 >= v98 >> 8)
          {
            goto LABEL_103;
          }
        }

LABEL_113:
        v104 = (*(**v87 + 24))(*v87, v90);
        for (n = 0; n != 24; n += 8)
        {
          *&v231[n] = *(v104 + n);
        }

        *&v231[24] = *(v104 + 24);
        v106 = *(v104 + 43);
        *v232 = *(v104 + 40);
        *&v232[3] = v106;
        md::LabelLinePosition::moveToNextPoint(&v233);
      }

      v107 = *v68;
      if (*v68)
      {
LABEL_137:
        if (v107 == 3)
        {
          v122 = *(v217 + 159);
          memset(v243, 0, sizeof(v243));
          *v244 = 2139095039;
          *&v244[4] = 0;
          v244[6] = 0;
          v123 = md::LabelLine::startCoordinate(*(v68 + 1), *(v68 + 2));
          v124 = v123;
          v247 = v215;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v248 = v68;
          v250 = v123;
          v251 = *(v217 + 16);
          v125 = *(v68 + 1);
          v126 = *(v68 + 2) - v125;
          v127 = (v125 + 16 * v123);
          if (v123 >= (v126 >> 4))
          {
            v128 = 0;
          }

          else
          {
            v128 = v127;
          }

          v249 = v128;
          v229 = 0xFFFFFFFFLL;
          if (md::LabelLinePosition::pointExists(&v247))
          {
            (*(**v128 + 24))(*v128, v124 >> 16);
            v130 = 0;
            v229 = v124;
            do
            {
              *&v243[v130] = *(v129 + v130);
              v130 += 8;
            }

            while (v130 != 24);
            *&v243[24] = *(v129 + 24);
            v131 = *(v129 + 43);
            *v244 = *(v129 + 40);
            *&v244[3] = v131;
            md::LabelLinePosition::moveToNextPoint(&v247);
          }

          v221 = 0;
          v225 = 0;
          v132 = 0;
          v133 = 0.0;
          while (md::LabelLinePosition::pointExists(&v247))
          {
            v134 = v249;
            v135 = SWORD1(v250);
            v136 = (*(**v249 + 24))(*v249, SWORD1(v250));
            v137 = *&md::LabelPoint::vectorToPoint(v243, v136, v122);
            v138 = 0;
            *&v238 = v137;
            *(&v238 + 1) = v139;
            v239 = v140;
            v141 = 0.0;
            do
            {
              v141 = v141 + *(&v238 + v138) * *(&v238 + v138);
              v138 += 8;
            }

            while (v138 != 24);
            v142 = (*(**v134 + 24))(*v134, v135);
            v143 = sqrt(v141) + v133;
            v144 = md::LabelPoint::mercatorPoint(v142);
            v145 = md::LabelPoint::mercatorPoint(v243);
            v146 = vabdd_f64(*v144, *v145);
            v147 = vabdd_f64(v144[1], v145[1]);
            v148 = v147 < 1.0e-15;
            v149 = v146 < 1.0e-15;
            if (v146 >= 1.0e-15 || v147 >= 1.0e-15)
            {
              if (v146 < 1.0e-15 || v147 < 1.0e-15)
              {
                if (v132 & 1) != 0 && (((v225 ^ (v146 < 1.0e-15)) & 1) != 0 || ((v221 ^ (v147 < 1.0e-15))))
                {
                  LOWORD(v238) = 259;
                  v242 = 1;
                  *(&v238 + 1) = v133;
                  v239 = v133;
                  v240 = v229;
                  v241 = v229;
                  BYTE2(v238) = 1;
                  std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), &v238);
                }

                v132 = 1;
                v221 = v148;
                v225 = v149;
              }

              else
              {
                LOWORD(v238) = 263;
                v242 = 1;
                *(&v238 + 1) = v133;
                v239 = v143;
                v240 = v229;
                v241 = v250;
                BYTE2(v238) = 1;
                std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), &v238);
                v221 = 0;
                v225 = 0;
                v132 = 0;
              }
            }

            v229 = v250;
            v150 = (*(**v134 + 24))(*v134, SWORD1(v250));
            for (ii = 0; ii != 24; ii += 8)
            {
              *&v243[ii] = *(v150 + ii);
            }

            *&v243[24] = *(v150 + 24);
            v152 = *(v150 + 43);
            *v244 = *(v150 + 40);
            *&v244[3] = v152;
            md::LabelLinePosition::moveToNextPoint(&v247);
            v133 = v143;
          }

          v85 = *(&v247 + 1);
          if (*(&v247 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v247 + 1));
          }
        }
      }

      else
      {
        v108 = *(v68 + 1);
        v224 = *(v68 + 2);
        if (v108 != v224)
        {
          v109 = 0.0;
          while (1)
          {
            v110 = 0;
            v111 = *v108;
            *&v247 = 0;
            if (!*(v111 + 32))
            {
              v110 = *(v111 + 16);
            }

            v85 = geo::codec::roadFeatureCrossings(v110, *(v111 + 44), &v247, v86);
            v112 = v247;
            if (v247)
            {
              break;
            }

LABEL_135:
            v109 = *(v111 + 8) + v109;
            v108 += 2;
            if (v108 == v224)
            {
              v107 = *v68;
              v8 = v216;
              goto LABEL_137;
            }
          }

          v113 = 0;
          v114 = *(v111 + 36);
          v115 = v85 + 9;
          while (2)
          {
            v116 = *(v115 - 1);
            if (v68[1] == 2)
            {
              if (v116 != 127)
              {
                v117 = 3;
                goto LABEL_131;
              }
            }

            else
            {
              if (v114 - 1 <= v116)
              {
                v117 = 2;
              }

              else
              {
                v117 = 3;
              }

              if (v228 < v114 || v228 >= v116)
              {
LABEL_131:
                v243[0] = v117;
                *&v243[1] = 0;
                *&v243[8] = 0;
                *&v243[16] = 0;
                *&v243[24] = 0xFFFFFFFFLL;
                *&v243[32] = 0xFFFFFFFFLL;
                v244[0] = v117 == 3;
                v118 = *v115;
                v119 = md::LabelLineSegment::offsetAtCoordinate(v111, *(v108 + 8), *(v115 - 7), *(v115 - 5));
                v120 = v77 * (v118 * 0.1);
                if (!v118)
                {
                  v120 = 0.0000001;
                }

                v121 = v119 + v109 + v120;
                *&v243[8] = v119 + v109 - v120;
                *&v243[16] = v121;
                *&v243[24] = md::LabelLine::coordinateAtOffset(v68, *&v243[8]);
                v243[1] = 1;
                *&v243[32] = md::LabelLine::coordinateAtOffset(v68, v121);
                v243[2] = 1;
                v85 = std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), v243);
              }
            }

            ++v113;
            v115 += 12;
            if (v113 >= v112)
            {
              goto LABEL_135;
            }

            continue;
          }
        }
      }

      v153 = *(v68 + 40);
      v154 = *(v68 + 5);
      if (v154 != *(v68 + 6))
      {
        v155 = *(v68 + 6);
        v247 = 0uLL;
        v248 = 0;
        do
        {
          v156 = *v154;
          v157 = *(&v247 + 1) - v247;
          v158 = *(*(*v154 + 16) + 40) + ((*(&v247 + 1) - v247) >> 3);
          if (v158 > &v248[-v247] >> 3)
          {
            if (v158 >> 61)
            {
LABEL_234:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            *&v243[32] = &v249;
            v159 = mdm::zone_mallocator::instance(v85);
            v160 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsLabelLineAttribute *>(v159, v158);
            v161 = &v160[v157];
            v162 = &v160[8 * v158];
            v163 = &v161[-(*(&v247 + 1) - v247)];
            memcpy(v163, v247, *(&v247 + 1) - v247);
            v164 = v247;
            v165 = v248;
            *&v247 = v163;
            *(&v247 + 1) = v161;
            v248 = v162;
            *&v243[16] = v164;
            *&v243[24] = v165;
            *v243 = v164;
            *&v243[8] = v164;
            std::__split_buffer<GeoCodecsLabelLineAttribute *,geo::allocator_adapter<GeoCodecsLabelLineAttribute *,mdm::zone_mallocator> &>::~__split_buffer(v243);
          }

          v166 = std::__shared_weak_count::lock(*(v156 + 8));
          v167 = *(*v156 + 1864);
          v168 = *(*(v156 + 16) + 36);
          std::__shared_weak_count::__release_shared[abi:nn200100](v166);
          if (*(*(v156 + 16) + 40))
          {
            v169 = 0;
            v170 = v167 + 24 * v168;
            v171 = *(&v247 + 1);
            do
            {
              if (v171 >= v248)
              {
                v172 = &v171[-v247] >> 3;
                if ((v172 + 1) >> 61)
                {
                  goto LABEL_234;
                }

                v173 = &v248[-v247] >> 2;
                if (v173 <= v172 + 1)
                {
                  v173 = v172 + 1;
                }

                if (&v248[-v247] >= 0x7FFFFFFFFFFFFFF8)
                {
                  v174 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v174 = v173;
                }

                *&v243[32] = &v249;
                if (v174)
                {
                  v175 = mdm::zone_mallocator::instance(v85);
                  v176 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsLabelLineAttribute *>(v175, v174);
                }

                else
                {
                  v176 = 0;
                }

                v178 = &v176[8 * v174];
                v177 = &v176[8 * v172];
                *v177 = v170;
                v171 = (v177 + 8);
                v179 = &v177[-(*(&v247 + 1) - v247)];
                memcpy(v179, v247, *(&v247 + 1) - v247);
                v180 = v247;
                v181 = v248;
                *&v247 = v179;
                *(&v247 + 1) = v171;
                v248 = v178;
                *&v243[16] = v180;
                *&v243[24] = v181;
                *v243 = v180;
                *&v243[8] = v180;
                v85 = std::__split_buffer<GeoCodecsLabelLineAttribute *,geo::allocator_adapter<GeoCodecsLabelLineAttribute *,mdm::zone_mallocator> &>::~__split_buffer(v243);
              }

              else
              {
                *v171 = v170;
                v171 += 8;
              }

              *(&v247 + 1) = v171;
              ++v169;
              v170 += 24;
            }

            while (v169 < *(*(v156 + 16) + 40));
          }

          ++v154;
        }

        while (v154 != v155);
        v183 = *(&v247 + 1);
        v182 = v247;
        if (v247 != *(&v247 + 1))
        {
          v184 = (v68 + 104);
          do
          {
            v185 = *v182;
            v243[0] = 7;
            v244[0] = 1;
            v186 = *(v68 + 15);
            v187 = *(v68 + 16) - v186;
            v188 = *(v185 + 8) - v186;
            if (v187 <= 0.0)
            {
              v191 = (v68 + 104);
              if (!v68[2])
              {
                v191 = *(**(v68 + 5) + 16);
              }

              v189 = *v191 * v188;
              v190 = *v191 * (*(v185 + 16) - v186);
            }

            else
            {
              v189 = *v184 * v188 / v187;
              v190 = *v184 * (*(v185 + 16) - v186) / v187;
            }

            *&v243[8] = v189;
            *&v243[16] = v190;
            *&v243[24] = md::LabelLine::coordinateAtOffset(v68, v189);
            v243[1] = 1;
            *&v243[32] = md::LabelLine::coordinateAtOffset(v68, v190);
            v243[2] = 1;
            std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), v243);
            ++v182;
          }

          while (v182 != v183);
        }

        std::vector<GeoCodecsLabelLineAttribute *,geo::allocator_adapter<GeoCodecsLabelLineAttribute *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v247);
      }

      v8 = v216;
      if (*v68 == 2)
      {
        v192 = *(v68 + 1);
        v193 = *(v68 + 2);
        if (v192 != v193)
        {
          *&v153 = 0;
          v220 = v153;
          do
          {
            v194 = *(*(*v192 + 16) + 48);
            v195 = (*(v194 + 48) + 8 * *(*v192 + 44));
            v219 = *(*v192 + 8);
            if (v195[1])
            {
              v196 = 0;
              v222 = vdupq_lane_s64(v220, 0);
              v226 = vdupq_lane_s64(*(*v192 + 8), 0);
              do
              {
                v197 = v196 + *v195;
                v198 = *(v194 + 80);
                strcpy(v243, "\a");
                v243[2] = 0;
                *&v243[24] = 0xFFFFFFFFLL;
                *&v243[32] = 0xFFFFFFFFLL;
                v244[0] = 1;
                v199 = *(v198 + 8 * v197);
                v200 = vsub_f32(_D10, v199);
                if (v192[8])
                {
                  v201 = -1;
                }

                else
                {
                  v201 = 0;
                }

                *&v243[8] = vmlaq_f64(v222, vcvtq_f64_f32(vbsl_s8(vdup_n_s32(v201), v199, vrev64_s32(v200))), v226);
                v230 = *&v243[16];
                *&v243[24] = md::LabelLine::coordinateAtOffset(v68, *&v243[8]);
                v243[1] = 1;
                *&v243[32] = md::LabelLine::coordinateAtOffset(v68, v230);
                v243[2] = 1;
                std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100]((v68 + 72), v243);
                ++v196;
              }

              while (v196 < v195[1]);
            }

            *(&v202 + 1) = *(&v220 + 1);
            *&v202 = v219 + *&v220;
            v220 = v202;
            v192 += 16;
          }

          while (v192 != v193);
        }
      }

      if (*(&v233 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v233 + 1));
      }

      v67 = v218 + 1;
      v7 = v214;
      *(v214 + 1) = *(v214 + 1) + *(*v218 + 13);
    }

    while (v218 + 1 != v213);
LABEL_209:
    v7 += 14;
  }

  while (v7 != v212);
  v7 = *(v210 + 12);
  v203 = *(v210 + 13);
LABEL_212:
  if (v7 == v203)
  {
    goto LABEL_229;
  }

  v204 = v7;
  while (*(v204 + 80) != *(v204 + 88))
  {
    v204 += 112;
    if (v204 == v203)
    {
      goto LABEL_229;
    }
  }

  if (v204 != v203)
  {
    v205 = v7;
    v206 = v203;
    v207 = v204 + 112;
    v208 = v206;
    if ((v204 + 112) == v206)
    {
      v203 = v206;
      v7 = v205;
    }

    else
    {
      do
      {
        if (*(v207 + 80) != *(v207 + 88))
        {
          *v204 = *v207;
          std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__vdeallocate((v204 + 16));
          *(v204 + 16) = *(v207 + 16);
          *(v204 + 32) = *(v207 + 32);
          *(v207 + 16) = 0;
          *(v207 + 24) = 0;
          *(v207 + 32) = 0;
          std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__vdeallocate((v204 + 48));
          *(v204 + 48) = *(v207 + 48);
          *(v204 + 64) = *(v207 + 64);
          *(v207 + 48) = 0;
          *(v207 + 56) = 0;
          *(v207 + 64) = 0;
          std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__vdeallocate((v204 + 80));
          *(v204 + 80) = *(v207 + 80);
          *(v204 + 96) = *(v207 + 96);
          *(v207 + 80) = 0;
          *(v207 + 88) = 0;
          *(v207 + 96) = 0;
          v204 += 112;
        }

        v207 += 112;
      }

      while (v207 != v208);
      v7 = *(v210 + 12);
      v203 = *(v210 + 13);
    }
  }

  if (v204 == v203)
  {
LABEL_229:
    v204 = v203;
  }

  else
  {
    while (v203 != v204)
    {
      v203 -= 14;
      std::allocator_traits<geo::allocator_adapter<md::LabelLineZSet,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LabelLineZSet,void,0>(v203);
    }

    *(v210 + 13) = v204;
    v7 = *(v210 + 12);
  }

  *v243 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *&v243[16] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *&v247 = &unk_1F2A08A28;
  *(&v247 + 1) = v243;
  v249 = &v247;
  md::LabelLineStore::enumerateLabelLineSegments(v7, v204, &v247);
  std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](&v247);
  v209 = *&v243[16];
  *(v210 + 24) = *v243;
  *(v210 + 40) = v209;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

LABEL_232:
  std::mutex::unlock(v211);
  *v243 = &v245;
  std::vector<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,geo::allocator_adapter<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v243);
}

void sub_1B29756DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](v52 - 224);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  std::mutex::unlock(a10);
  a45 = v52 - 256;
  std::vector<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,geo::allocator_adapter<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::CVenueRenderResources>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::FrameAllocator<ggl::RenderItem>::reset(v2 + 3792);
    free(*(v2 + 3792));
    v3 = *(v2 + 3768);
    if (v3)
    {
      *(v2 + 3776) = v3;
      operator delete(v3);
    }

    v6 = (v2 + 3736);
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v4 = *(v2 + 3712);
    if (v4)
    {
      *(v2 + 3720) = v4;
      operator delete(v4);
    }

    md::VenueFootprintRenderResources::~VenueFootprintRenderResources((v2 + 2712));
    md::VenueOpenToBelowRenderResources::~VenueOpenToBelowRenderResources((v2 + 1992));
    md::VenueWallRenderResources::~VenueWallRenderResources((v2 + 520));
    md::VenueDimmingOverlayRenderResources::~VenueDimmingOverlayRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void md::VenueFootprintRenderResources::~VenueFootprintRenderResources(md::VenueFootprintRenderResources *this)
{
  ggl::RenderDataHolder::~RenderDataHolder((this + 744));
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 92);
  v2 = *(this + 91);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 504));
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 62);
  v3 = *(this + 61);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 264));
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 32);
  v4 = *(this + 31);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 24));
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 2);
  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

uint64_t md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xC97B9E962ADF4AD4)
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

void md::TextDataStringInfo::TextDataStringInfo(char *__dst, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    LOBYTE(v25) = *(a2 + 24);
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dsta, *a2, *(a2 + 8));
    }

    else
    {
      __dsta = *a2;
      v24 = *(a2 + 16);
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__dsta, "");
  }

  if (a3)
  {
    v22 = *(a3 + 24);
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
    }

    else
    {
      v20 = *a3;
      v21 = *(a3 + 16);
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v20, "");
  }

  v9 = md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, &__dsta, &v20);
  if (SHIBYTE(v21) < 0)
  {
    v10 = v20;
    v11 = mdm::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  if (SHIBYTE(v24) < 0)
  {
    v12 = __dsta;
    v13 = mdm::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }

  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  *(__dst + 10) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  *(__dst + 32) = 0x1000000;
  *(__dst + 66) = 0;
  __dst[134] = 0;
  v14 = __dst[55];
  if (v14 < 0)
  {
    if (*(__dst + 5))
    {
LABEL_17:
      v15 = &md::TextDataStringInfo::TextDataStringInfo(std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const*,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const*,BOOL,gss::Country)::localeTraits;
      v16 = 144;
      while (1)
      {
        v17 = __dst + 32;
        if ((v14 & 0x80000000) != 0)
        {
          v17 = *(__dst + 4);
        }

        v18 = strlen(*v15);
        if (!strncasecmp(v17, *v15, v18))
        {
          break;
        }

        v15 += 2;
        v16 -= 16;
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      *(__dst + 64) = *(v15 + 4);
      *(__dst + 131) = *(v15 + 5);
      __dst[133] = *(v15 + 12) & a4;
      __dst[134] = *(v15 + 13);
      goto LABEL_30;
    }
  }

  else if (__dst[55])
  {
    goto LABEL_17;
  }

  if (a5 == 10)
  {
    v19 = 2;
  }

  else
  {
    if (a5 != 4)
    {
      goto LABEL_30;
    }

    v19 = 1;
  }

  __dst[128] = v19;
LABEL_30:
  v20 = 0uLL;
  v21 = 0;
  md::TextDataStringInfo::widenText();
}

void sub_1B2975FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, mdm::zone_mallocator *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  std::vector<char16_t,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a10 < 0)
  {
    v23 = a18;
    v24 = mdm::zone_mallocator::instance(v22);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v24, v23);
  }

  std::vector<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a11);
  if (*(v18 + 87) < 0)
  {
    v26 = *v19;
    v27 = mdm::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v27, v26);
  }

  if (*(v18 + 55) < 0)
  {
    v28 = *v20;
    v29 = mdm::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v29, v28);
  }

  if (*(v18 + 23) < 0)
  {
    v30 = *v18;
    v31 = mdm::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v31, v30);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignElevationsDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignElevationsDeviceData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignElevationsDeviceData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

float md::SettingsLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 120);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    if (*v7 == 23)
    {
      if (v7 != v8)
      {
        v9 = *(v7 + 8) != 0;
        goto LABEL_8;
      }

      break;
    }

    v7 += 16;
  }

  v9 = 0;
LABEL_8:
  v10 = +[VKDebugSettings sharedSettings];
  v11 = [v10 showTrafficCasing] & v9;

  if (v9 != v11)
  {
    v12 = *(a1 + 120);
    v39 = 23;
    md::MapEngineSettings::set(v12, &v39, v11);
  }

  v13 = *(a1 + 120);
  v14 = (a4 + 32);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a4 + 32));
  *(a4 + 24) = a4 + 32;
  *(a4 + 40) = 0;
  *(a4 + 32) = 0;
  *(a4 + 8) = *a4;
  v15 = *v13;
  v16 = *(v13 + 8);
  while (v15 != v16)
  {
    geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::insert(a4, v15);
    v15 += 16;
  }

  if (*(v13 + 40))
  {
    v17 = *(v13 + 24);
    v18 = (v13 + 32);
    if (v17 != (v13 + 32))
    {
      do
      {
        v19 = *v14;
        v20 = a4 + 32;
        if (*(a4 + 24) == v14)
        {
          goto LABEL_21;
        }

        v21 = *v14;
        v22 = a4 + 32;
        if (v19)
        {
          do
          {
            v20 = v21;
            v21 = *(v21 + 8);
          }

          while (v21);
        }

        else
        {
          do
          {
            v20 = *(v22 + 16);
            v23 = *v20 == v22;
            v22 = v20;
          }

          while (v23);
        }

        v24 = *(v17 + 25);
        if (*(v20 + 25) < v24)
        {
LABEL_21:
          if (v19)
          {
            v25 = (v20 + 8);
          }

          else
          {
            v25 = (a4 + 32);
          }
        }

        else
        {
          v25 = (a4 + 32);
          if (v19)
          {
            v25 = (a4 + 32);
            while (1)
            {
              while (1)
              {
                v28 = v19;
                v29 = *(v19 + 25);
                if (v24 >= v29)
                {
                  break;
                }

                v19 = *v28;
                v25 = v28;
                if (!*v28)
                {
                  goto LABEL_25;
                }
              }

              if (v29 >= v24)
              {
                break;
              }

              v25 = v28 + 1;
              v19 = v28[1];
              if (!v19)
              {
                goto LABEL_25;
              }
            }
          }
        }

        if (!*v25)
        {
LABEL_25:
          operator new();
        }

        v26 = v17[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v17[2];
            v23 = *v27 == v17;
            v17 = v27;
          }

          while (!v23);
        }

        v17 = v27;
      }

      while (v27 != v18);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v13 + 32));
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 24) = v18;
  }

  *(a4 + 48) = *(a1 + 128);
  *(a4 + 56) = *(a1 + 152);
  *(a4 + 57) = *(a1 + 232);
  *(a4 + 58) = *(a1 + 312);
  *(a4 + 59) = *(a1 + 392);
  *(a4 + 60) = *(a1 + 472);
  *(a4 + 61) = *(a1 + 552);
  *(a4 + 62) = *(a1 + 632);
  *(a4 + 63) = *(a1 + 712);
  *(a4 + 64) = *(a1 + 792);
  v30 = *(a1 + 872);
  v31 = *(a1 + 952);
  *(a4 + 68) = v30;
  *(a4 + 72) = v31;
  *(a4 + 76) = *(a1 + 1032);
  v32 = *(a1 + 1112);
  v33 = *(a1 + 1192);
  *(a4 + 80) = v32;
  *(a4 + 84) = v33;
  v34 = *(a1 + 1272);
  *(a4 + 88) = v34;
  *(a4 + 92) = *(a1 + 1352);
  *(a4 + 93) = *(a1 + 1432);
  *(a4 + 94) = *(a1 + 1672);
  v35 = *(a1 + 1752);
  v36 = *(a1 + 1832);
  *(a4 + 96) = v35;
  *(a4 + 100) = v36;
  result = *(a1 + 1912);
  v38 = *(a1 + 1992);
  *(a4 + 104) = result;
  *(a4 + 108) = v38;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolygonSolidFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
    *algn_1EB83C628 = 0x5FEC906E580C2ACDLL;
    qword_1EB83C630 = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>]";
    qword_1EB83C638 = 82;
  }
}

void md::LabelFeature::styleAttributes(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7[0] = &unk_1F2A46C38;
  v7[1] = &v4;
  v7[3] = v7;
  md::LabelFeature::enumerateGEOFeatures(a1, v7);
  std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](v7);
  if (v4 == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = v4[1];
    *a2 = *v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v7[0] = &v4;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v7);
}

void sub_1B2976994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](va);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevationHandle>();
    unk_1EB83D730 = 0xD443D3DCBB78491ALL;
    qword_1EB83D738 = "md::ls::ElevationHandle]";
    qword_1EB83D740 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::LabelLineZSet::connectEntries(unsigned __int8 *a1, int a2, uint64_t *a3, double a4)
{
  v237 = *MEMORY[0x1E69E9840];
  v7 = ldexp(1.0, *a1);
  v234 = 0;
  v235 = 0;
  v236 = 0;
  v219 = a3;
  v9 = *a3;
  v8 = a3[1];
  if (v9 == v8)
  {
    goto LABEL_93;
  }

  v10 = 0.001 / v7;
  do
  {
    md::LabelLineZSet::connectedSegmentInsert(a1, &v234, v9, 1, a4);
    md::LabelLineZSet::connectedSegmentInsert(a1, &v234, v9, 0, a4);
    v9 += 136;
  }

  while (v9 != v8);
  v11 = v234;
  v12 = v235;
  if (v234 == v235)
  {
    goto LABEL_93;
  }

  v220 = v235;
  do
  {
    isWithinEpsilon = *(v11 + 48);
    v13 = *(v11 + 56);
    if ((v13 - isWithinEpsilon) < 0x11)
    {
      goto LABEL_66;
    }

    if (!a2)
    {
      v60 = 126 - 2 * __clz(v13 - isWithinEpsilon);
      if (v13 == isWithinEpsilon)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60;
      }

      std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,false>(isWithinEpsilon, v13, v61, 1);
      isWithinEpsilon = *(v11 + 48);
      v62 = *(v11 + 56);
      if (v62 - isWithinEpsilon == 16)
      {
        goto LABEL_66;
      }

      v222 = 0;
      v63 = 0;
      while (1)
      {
        v64 = &isWithinEpsilon[v63];
        if (v64->n128_u8[9] == 1)
        {
          v65 = v63 + 1;
        }

        else
        {
          v65 = v63 + 1;
          if (v63 + 1 < (v62 - isWithinEpsilon) >> 4)
          {
            v66 = v63;
            v67 = v63 + 1;
            while (1)
            {
              v68 = &isWithinEpsilon[v66];
              if ((isWithinEpsilon[v66 + 1].n128_u8[9] & 1) == 0 && v64->n128_u8[8] != v68[1].n128_u8[8])
              {
                v69 = *(v64->n128_u64[0] + 8);
                v70 = *(v68[1].n128_u64[0] + 8);
                if ((*(v69 + 60) & 1) != 0 || (*(v70 + 60) & 1) != 0 || *(*(v69 + 16) + 24) == *(*(v70 + 16) + 24))
                {
                  v71 = *(v69 + 16);
                  v72 = *(v70 + 16);
                  if (vabdd_f64(*v71, *v72) <= v10)
                  {
                    v73 = v64->n128_u8[8] ? 8 : 16;
                    v74 = v68[1].n128_u8[8] ? 8 : 16;
                    if (vabdd_f64(*(v71 + v73), *(v72 + v74)) <= v10 / *v71)
                    {
                      break;
                    }
                  }
                }
              }

              ++v67;
              ++v66;
              if ((v62 - isWithinEpsilon) >> 4 == v67)
              {
                goto LABEL_87;
              }
            }

            v64->n128_u8[9] = 1;
            v68[1].n128_u8[9] = 1;
            v75 = v222;
            v76 = v222 >> 4;
            if (((v222 >> 4) + 1) >> 60)
            {
LABEL_240:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (v222 >> 4 != -1)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v222 >> 4) + 1);
            }

            v77 = (16 * v76);
            *v77 = v63;
            v77[1] = v67;
            v222 = 16 * v76 + 16;
            memcpy(0, 0, v75);
            isWithinEpsilon = *(v11 + 48);
            v62 = *(v11 + 56);
          }
        }

LABEL_87:
        v63 = v65;
        if (v65 >= ((v62 - isWithinEpsilon) >> 4) - 1)
        {
          goto LABEL_53;
        }
      }
    }

    v222 = 0;
    v14 = 0;
    do
    {
      v15 = &isWithinEpsilon[v14];
      if (v15->n128_u8[9] == 1)
      {
        v16 = v14 + 1;
        goto LABEL_52;
      }

      v17 = v15->n128_u8[8];
      v18 = v15->n128_u64[0];
      v19 = 80;
      if (v17)
      {
        v19 = 32;
      }

      v224 = v19;
      v20 = *v18;
      if (!*v18)
      {
        v21 = v18[1];
        if (!v21)
        {
          goto LABEL_20;
        }

        if (v17)
        {
          v22 = *(v21 + 24);
        }

        else
        {
          v22 = (*(v21 + 32) - 16);
        }

        v20 = *v22;
      }

      v23 = *(v20 + 38);
      if (v23 == -1)
      {
LABEL_20:
        v23 = 101;
      }

      v16 = v14 + 1;
      if (v14 + 1 >= v13 - isWithinEpsilon)
      {
        goto LABEL_52;
      }

      v24 = 0;
      v223 = 0;
      v25 = 1.79769313e308;
      v26 = v14 + 1;
      do
      {
        if (isWithinEpsilon[v26].n128_u8[9])
        {
          goto LABEL_46;
        }

        LODWORD(v229) = md::LabelLineStitchSegment::direction(isWithinEpsilon[v14].n128_u64[0], isWithinEpsilon[v14].n128_u8[8], a1[4]);
        HIDWORD(v229) = v27;
        LODWORD(v230) = v28;
        v29 = md::LabelLineStitchSegment::direction(*(*(v11 + 48) + 16 * v26), *(*(v11 + 48) + 16 * v26 + 8), a1[4]);
        v30 = 0;
        v227 = __PAIR64__(v31, LODWORD(v29));
        v32 = 0.0;
        v228 = v33;
        do
        {
          v32 = v32 + (*(&v227 + v30) * *(&v229 + v30));
          v30 += 4;
        }

        while (v30 != 12);
        if (v32 > 0.0)
        {
          goto LABEL_46;
        }

        v34 = *(v11 + 48) + 16 * v26;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *v35;
        if (*v35)
        {
          goto LABEL_34;
        }

        v38 = v35[1];
        if (v38)
        {
          if (v36)
          {
            v39 = *(v38 + 24);
          }

          else
          {
            v39 = (*(v38 + 32) - 16);
          }

          v37 = *v39;
LABEL_34:
          v40 = *(v37 + 38);
          goto LABEL_35;
        }

        v40 = -1;
LABEL_35:
        if ((v24 & (v23 != v40)) != 0)
        {
          v24 = 1;
          goto LABEL_46;
        }

        v95 = v36 == 0;
        v41 = 10;
        if (!v95)
        {
          v41 = 4;
        }

        v42 = *&md::LabelPoint::vectorToPoint((v18 + v224), &v35[v41], a1[4]);
        v43 = 0;
        v229 = v42;
        v230 = v44;
        v231 = v45;
        v46 = 0.0;
        do
        {
          v46 = v46 + *&(&v229)[v43] * *&(&v229)[v43];
          ++v43;
        }

        while (v43 != 3);
        if (!(v24 & 1 | (v23 != v40)))
        {
          v24 = 1;
LABEL_45:
          v223 = v26;
          v25 = v46;
          goto LABEL_46;
        }

        if (v46 < v25)
        {
          goto LABEL_45;
        }

LABEL_46:
        ++v26;
        isWithinEpsilon = *(v11 + 48);
        v13 = *(v11 + 56);
      }

      while (v26 < v13 - isWithinEpsilon);
      if (!v223)
      {
        goto LABEL_52;
      }

      isWithinEpsilon[v14].n128_u8[9] = 1;
      isWithinEpsilon[v223].n128_u8[9] = 1;
      v47 = v222;
      v48 = v222 >> 4;
      if (((v222 >> 4) + 1) >> 60)
      {
        goto LABEL_240;
      }

      if (v222 >> 4 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v222 >> 4) + 1);
      }

      v49 = (16 * v48);
      *v49 = v14;
      v49[1] = v223;
      v222 = 16 * v48 + 16;
      memcpy(0, 0, v47);
      isWithinEpsilon = *(v11 + 48);
      v13 = *(v11 + 56);
LABEL_52:
      v14 = v16;
    }

    while (v16 < v13 - isWithinEpsilon - 1);
LABEL_53:
    v50 = 0;
    if (v222)
    {
      do
      {
        v51 = *v50;
        v52 = v50[1];
        v50 += 2;
        v53 = &isWithinEpsilon[v51];
        v54 = &isWithinEpsilon[v52];
        v55 = v53->n128_u8[8];
        v56 = v54->n128_u64[0];
        v57 = v53->n128_u64[0];
        if (v55)
        {
          v58 = 16;
        }

        else
        {
          v58 = 24;
        }

        *(v57 + v58) = v56;
        if (v54->n128_u8[8])
        {
          v59 = 16;
        }

        else
        {
          v59 = 24;
        }

        *(v56 + v59) = v57;
      }

      while (v50 != v222);
    }

    v12 = v220;
LABEL_66:
    v11 += 80;
  }

  while (v11 != v12);
LABEL_93:
  v79 = *v219;
  for (i = v219[1]; *v219 != i; i = v219[1])
  {
    while (*(v79 + 129) == 1)
    {
      v79 += 136;
      if (v79 == i)
      {
        goto LABEL_239;
      }
    }

    *(v79 + 128) = 257;
    v80 = *(v79 + 24);
    v81 = v79;
    if (v80)
    {
      LOBYTE(isWithinEpsilon) = 1;
      v82 = v79;
      while (1)
      {
        v81 = v80;
        v83 = *(v80 + 16);
        if (v83 == *(v81 + 3))
        {
          v84 = 80;
          if ((isWithinEpsilon & 1) == 0)
          {
            v84 = 32;
          }

          isWithinEpsilon = md::LabelPoint::isWithinEpsilon(&v82[v84], (v81 + 32), a4, a1[4]);
        }

        else
        {
          isWithinEpsilon = (v83 == v82);
        }

        if (v81[129] == 1)
        {
          break;
        }

        v81[128] = isWithinEpsilon;
        v81[129] = 1;
        if (isWithinEpsilon)
        {
          v85 = 24;
        }

        else
        {
          v85 = 16;
        }

        v80 = *&v81[v85];
        v82 = v81;
        if (!v80)
        {
          goto LABEL_135;
        }
      }

      v86 = 0;
      v87 = -1.0;
      v88 = v82;
      v81 = v82;
      while (1)
      {
        v89 = 16;
        if (v88[128])
        {
          v89 = 24;
        }

        v90 = *&v88[v89];
        LODWORD(v229) = md::LabelLineStitchSegment::direction(v88, v88[128] ^ 1, a1[4]);
        HIDWORD(v229) = v91;
        LODWORD(v230) = v92;
        LODWORD(v227) = md::LabelLineStitchSegment::direction(v90, v90[128], a1[4]);
        HIDWORD(v227) = v93;
        v228 = v94;
        if (v229)
        {
          v95 = 0;
        }

        else
        {
          v95 = v230 == 0;
        }

        if (!v95 && (v227 || v228 != 0))
        {
          v97 = 0;
          v98 = 0.0;
          do
          {
            v98 = v98 + (*(&v227 + v97) * *(&v229 + v97));
            v97 += 4;
          }

          while (v97 != 12);
          v99 = v98 <= v87;
          v87 = fmaxf(v98, v87);
          if (!v99)
          {
            v81 = v88;
          }
        }

        if (v86 > 0x3E7)
        {
          break;
        }

        ++v86;
        v88 = v90;
        if (v90 == v82)
        {
          goto LABEL_128;
        }
      }

      v81 = v82;
LABEL_128:
      if (v81[128])
      {
        v100 = 24;
      }

      else
      {
        v100 = 16;
      }

      v101 = *&v81[v100];
      *&v81[v100] = 0;
      if (*(v101 + 128))
      {
        v102 = 16;
      }

      else
      {
        v102 = 24;
      }

      *(v101 + v102) = 0;
    }

LABEL_135:
    *(v79 + 129) = 1;
    if (*(v79 + 128))
    {
      v103 = 16;
    }

    else
    {
      v103 = 24;
    }

    v104 = *(v79 + v103);
    if (!v104)
    {
      goto LABEL_144;
    }

    do
    {
      v105 = v79;
      v79 = v104;
      v95 = *(v104 + 24) == v105;
      *(v104 + 128) = v95;
      *(v104 + 129) = 1;
      if (v95)
      {
        v106 = 16;
      }

      else
      {
        v106 = 24;
      }

      v104 = *(v79 + v106);
    }

    while (v104);
    if (v81)
    {
LABEL_144:
      v107 = mdm::zone_mallocator::instance(isWithinEpsilon);
      v108 = pthread_rwlock_rdlock((v107 + 32));
      if (v108)
      {
        geo::read_write_lock::logFailure(v108, "read lock", v109);
      }

      v110 = malloc_type_zone_malloc(*v107, 0x88uLL, 0x10A0040E2772D3FuLL);
      atomic_fetch_add((v107 + 24), 1u);
      geo::read_write_lock::unlock((v107 + 32));
      *v110 = *(a1 + 1);
      *(v110 + 1) = 0;
      v111 = (v110 + 8);
      v110[2] = a2;
      *(v110 + 2) = 0;
      *(v110 + 3) = 0;
      *(v110 + 5) = 0;
      v225 = v110 + 40;
      *(v110 + 6) = 0;
      *(v110 + 7) = 0;
      *(v110 + 9) = 0;
      *(v110 + 10) = 0;
      *(v110 + 11) = 0;
      *(v110 + 104) = 0u;
      *(v110 + 120) = 0u;
      if (a2 == 1)
      {
        v112 = 0;
        v113 = v79;
        while (1)
        {
          v114 = v112;
          if (v113 == v81)
          {
            break;
          }

          if (v113[128])
          {
            v115 = 24;
          }

          else
          {
            v115 = 16;
          }

          v113 = *&v113[v115];
          ++v112;
          if (!v113)
          {
            goto LABEL_163;
          }
        }

        ++v112;
LABEL_163:
        std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::resize(v111, v112);
        if (v112)
        {
          v130 = v114 + 1;
          v131 = (*(v110 + 1) + 8);
          do
          {
            *(v131 - 1) = *v79;
            v132 = *(v79 + 128);
            *v131 = v132;
            v131 += 16;
            if (v132)
            {
              v133 = 24;
            }

            else
            {
              v133 = 16;
            }

            v79 = *(v79 + v133);
            --v130;
          }

          while (v130);
        }
      }

      else
      {
        v116 = 0;
        v117 = 0;
        v118 = v79;
        do
        {
          v117 += (*(*(v118 + 8) + 32) - *(*(v118 + 8) + 24)) >> 4;
          ++v116;
          if (*(v118 + 128))
          {
            v119 = 24;
          }

          else
          {
            v119 = 16;
          }

          v118 = *(v118 + v119);
        }

        while (v118);
        if (v116)
        {
          if (v116 >> 61)
          {
LABEL_241:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v233 = v110 + 64;
          v120 = mdm::zone_mallocator::instance(v111);
          v121 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TileLabelLine const*>(v120, v116);
          v122 = &v121[8 * v116];
          v123 = *(v110 + 5);
          v124 = *(v110 + 6) - v123;
          v125 = &v121[-v124];
          memcpy(&v121[-v124], v123, v124);
          v126 = *(v110 + 5);
          *(v110 + 5) = v125;
          *(v110 + 6) = v121;
          v127 = *(v110 + 7);
          *(v110 + 7) = v122;
          v231 = v126;
          v232 = v127;
          v229 = v126;
          v230 = v126;
          v111 = std::__split_buffer<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator> &>::~__split_buffer(&v229);
          v128 = *(v110 + 3);
          v129 = *(v110 + 1);
        }

        else
        {
          v129 = 0;
          v128 = 0;
        }

        if (v117 <= (v128 - v129) >> 4)
        {
          goto LABEL_174;
        }

        if (v117 >> 60)
        {
LABEL_242:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v134 = *(v110 + 2);
        v233 = v110 + 32;
        v135 = mdm::zone_mallocator::instance(v111);
        v136 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineSegmentInfo>(v135, v117);
        v137 = &v136[v134 - v129];
        v138 = &v136[16 * v117];
        v139 = *(v110 + 1);
        v140 = *(v110 + 2) - v139;
        v141 = &v137[-v140];
        memcpy(&v137[-v140], v139, v140);
        v142 = *(v110 + 1);
        *(v110 + 1) = v141;
        *(v110 + 2) = v137;
        v143 = *(v110 + 3);
        *(v110 + 3) = v138;
        v231 = v142;
        v232 = v143;
        v229 = v142;
        v230 = v142;
        v111 = std::__split_buffer<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator> &>::~__split_buffer(&v229);
        do
        {
LABEL_174:
          v145 = *(v110 + 6);
          v144 = *(v110 + 7);
          if (v145 >= v144)
          {
            v148 = (v145 - *v225) >> 3;
            if ((v148 + 1) >> 61)
            {
              goto LABEL_241;
            }

            v149 = v144 - *v225;
            v150 = v149 >> 2;
            if (v149 >> 2 <= (v148 + 1))
            {
              v150 = v148 + 1;
            }

            if (v149 >= 0x7FFFFFFFFFFFFFF8)
            {
              v151 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v151 = v150;
            }

            v233 = v110 + 64;
            if (v151)
            {
              v152 = mdm::zone_mallocator::instance(v111);
              v153 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TileLabelLine const*>(v152, v151);
            }

            else
            {
              v153 = 0;
            }

            v155 = &v153[8 * v151];
            v154 = &v153[8 * v148];
            *v154 = *(v79 + 8);
            v147 = v154 + 8;
            v156 = *(v110 + 5);
            v157 = *(v110 + 6) - v156;
            v158 = &v154[-v157];
            memcpy(&v154[-v157], v156, v157);
            v159 = *(v110 + 5);
            *(v110 + 5) = v158;
            *(v110 + 6) = v147;
            v160 = *(v110 + 7);
            *(v110 + 7) = v155;
            v231 = v159;
            v232 = v160;
            v229 = v159;
            v230 = v159;
            v111 = std::__split_buffer<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator> &>::~__split_buffer(&v229);
            v146 = *(v79 + 8);
          }

          else
          {
            v146 = *(v79 + 8);
            *v145 = v146;
            v147 = v145 + 1;
          }

          *(v110 + 6) = v147;
          v162 = *(v146 + 24);
          v161 = *(v146 + 32);
          v163 = v161 - v162;
          v164 = (v161 - v162) >> 4;
          if (v164 >= 1)
          {
            v166 = *(v110 + 2);
            v165 = *(v110 + 3);
            if (v165 - v166 >= v163)
            {
              while (v162 != v161)
              {
                v175 = *v162;
                v162 += 16;
                *v166++ = v175;
              }

              *(v110 + 2) = v166;
            }

            else
            {
              v167 = *(v110 + 1);
              v168 = v166 - v167;
              v169 = v164 + ((v166 - v167) >> 4);
              if (v169 >> 60)
              {
                goto LABEL_242;
              }

              v170 = v165 - v167;
              v171 = (v165 - v167) >> 3;
              if (v171 > v169)
              {
                v169 = v171;
              }

              if (v170 >= 0x7FFFFFFFFFFFFFF0)
              {
                v172 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v169;
              }

              v233 = v110 + 32;
              if (v172)
              {
                v173 = mdm::zone_mallocator::instance(v111);
                v174 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineSegmentInfo>(v173, v172);
              }

              else
              {
                v174 = 0;
              }

              v176 = &v174[16 * (v168 >> 4)];
              v177 = &v176[v163];
              v178 = v176;
              do
              {
                v179 = *v162;
                v162 += 16;
                *v178 = v179;
                v178 += 16;
                v163 -= 16;
              }

              while (v163);
              v180 = &v174[16 * v172];
              memcpy(v177, v166, *(v110 + 2) - v166);
              v181 = *(v110 + 1);
              v182 = &v177[*(v110 + 2) - v166];
              *(v110 + 2) = v166;
              v183 = &v176[-(v166 - v181)];
              memcpy(v183, v181, v166 - v181);
              v184 = *(v110 + 1);
              *(v110 + 1) = v183;
              *(v110 + 2) = v182;
              v185 = *(v110 + 3);
              *(v110 + 3) = v180;
              v231 = v184;
              v232 = v185;
              v229 = v184;
              v230 = v184;
              v111 = std::__split_buffer<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator> &>::~__split_buffer(&v229);
            }
          }

          if (*(v79 + 128))
          {
            v186 = 24;
          }

          else
          {
            v186 = 16;
          }

          v79 = *(v79 + v186);
        }

        while (v79);
        v188 = *(v110 + 5);
        v187 = *(v110 + 6);
        if (v188 != v187)
        {
          *(v110 + 15) = *(*(*v188 + 16) + 8);
          *(v110 + 16) = *(*(*(v187 - 8) + 16) + 16);
        }
      }

      if (v110[1] == 4)
      {
        v189 = 0;
        v190 = 1;
      }

      else
      {
        v189 = 1;
        v190 = 0;
      }

      v191 = md::LabelLine::flagNameOrStyleChanges(*(v110 + 1), *(v110 + 2), v189, v190);
      v192 = *(v110 + 1);
      v193 = 0.0;
      while (v192 != *(v110 + 2))
      {
        v194 = *v192;
        v192 += 2;
        v193 = *(v194 + 8) + v193;
      }

      *(v110 + 13) = v193;
      if (a2)
      {
        v195 = v193 * 0.5;
      }

      else
      {
        v196 = *(v110 + 15);
        v197 = *(v110 + 16) - v196;
        v198 = 0.5 - v196;
        if (v197 <= 0.0)
        {
          if (!v110[2])
          {
            v193 = **(**v225 + 16);
          }

          v195 = v193 * v198;
        }

        else
        {
          v195 = v198 * v193 / v197;
        }
      }

      *(v110 + 14) = v195;
      v227 = v110;
      v200 = *(a1 + 11);
      v199 = *(a1 + 12);
      if (v200 >= v199)
      {
        v202 = *(a1 + 10);
        v203 = v200 - v202;
        v204 = (v200 - v202) >> 3;
        v205 = v204 + 1;
        if ((v204 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v206 = v199 - v202;
        if (v206 >> 2 > v205)
        {
          v205 = v206 >> 2;
        }

        if (v206 >= 0x7FFFFFFFFFFFFFF8)
        {
          v207 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v207 = v205;
        }

        if (v207)
        {
          v208 = mdm::zone_mallocator::instance(v191);
          v209 = pthread_rwlock_rdlock((v208 + 32));
          if (v209)
          {
            geo::read_write_lock::logFailure(v209, "read lock", v210);
          }

          v211 = malloc_type_zone_malloc(*v208, 8 * v207, 0x2004093837F09uLL);
          atomic_fetch_add((v208 + 24), 1u);
          geo::read_write_lock::unlock((v208 + 32));
          v202 = *(a1 + 10);
          v203 = *(a1 + 11) - v202;
          v212 = v203 >> 3;
          v110 = v227;
        }

        else
        {
          v211 = 0;
          v212 = (v200 - v202) >> 3;
        }

        v213 = &v211[8 * v204];
        v214 = &v211[8 * v207];
        v227 = 0;
        v215 = &v213[-8 * v212];
        *v213 = v110;
        v201 = v213 + 8;
        v216 = memcpy(v215, v202, v203);
        v217 = *(a1 + 10);
        *(a1 + 10) = v215;
        *(a1 + 11) = v201;
        *(a1 + 12) = v214;
        if (v217)
        {
          v218 = mdm::zone_mallocator::instance(v216);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>>(v218, v217);
        }
      }

      else
      {
        v227 = 0;
        *v200 = v110;
        v201 = v200 + 8;
      }

      *(a1 + 11) = v201;
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v227, 0);
    }

    v79 = *v219;
  }

LABEL_239:
  v229 = &v234;
  std::vector<md::SegmentConnectionPoint,geo::allocator_adapter<md::SegmentConnectionPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v229);
}

void sub_1B2977B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  geo::read_write_lock::unlock((v29 + 32));
  std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&a22, 0);
  a22 = &a29;
  std::vector<md::SegmentConnectionPoint,geo::allocator_adapter<md::SegmentConnectionPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a22);
  _Unwind_Resume(a1);
}

char *geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::insert(const void **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  result = *a1;
  while (*a2 != *result)
  {
    result += 16;
    if (result == v4)
    {
      goto LABEL_7;
    }
  }

  if (result == v4)
  {
LABEL_7:
    v6 = a1[2];
    if (v4 >= v6)
    {
      v8 = (v4 - v3) >> 4;
      v9 = v8 + 1;
      if ((v8 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v6 - v3;
      if (v10 >> 3 > v9)
      {
        v9 = v10 >> 3;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::MapEngineSetting,long long>>>(v11);
      }

      v12 = (16 * v8);
      *v12 = *a2;
      v7 = 16 * v8 + 16;
      v13 = a1[1] - *a1;
      v14 = v12 - v13;
      memcpy(v12 - v13, *a1, v13);
      v15 = *a1;
      *a1 = v14;
      a1[1] = v7;
      a1[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v4 = *a2;
      v7 = (v4 + 16);
    }

    a1[1] = v7;
    return (v7 - 16);
  }

  return result;
}

void ggl::PolygonSolidFill::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::PolygonSolidFill::CompressedMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[365];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINSC_7DaVinci10ElevationsEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13378;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

char *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (*(result + 2) - *result) >> 3)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vdeallocate(result);
    if (a4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = *(v7 + 2) - *v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](v7, v11);
    v8 = *(v7 + 1);
    while (v6 != a3)
    {
      v12 = *v6++;
      *v8 = v12;
      v8 += 8;
    }

    goto LABEL_20;
  }

  v13 = *(result + 1);
  if (a4 <= (v13 - v8) >> 3)
  {
    while (v6 != a3)
    {
      *v8 = *v6;
      *(v8 + 4) = *(v6++ + 2);
      v8 += 8;
    }

LABEL_20:
    *(v7 + 1) = v8;
    return result;
  }

  v14 = (v13 + a2 - v8);
  if (v13 != v8)
  {
    do
    {
      *v8 = *v6;
      *(v8 + 4) = *(v6++ + 2);
      v8 += 8;
    }

    while (v6 != v14);
  }

  while (v14 != a3)
  {
    v15 = *v14++;
    *v13++ = v15;
  }

  *(result + 1) = v13;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci10ElevationsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13378;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::VenueOpenToBelowShadow::MeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueOpenToBelowShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueOpenToBelowShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__init_copy_ctor_external(mdm::zone_mallocator *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0xA)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    v7 = mdm::zone_mallocator::instance(__dst);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char16_t>(v7, v6);
    *(v5 + 1) = a3;
    *(v5 + 2) = v6 | 0x8000000000000000;
    *v5 = v8;
    v5 = v8;
  }

  else
  {
    *(__dst + 23) = a3;
  }

  return memmove(v5, __src, 2 * a3 + 2);
}

void md::VenueOpenToBelowRenderResources::~VenueOpenToBelowRenderResources(md::VenueOpenToBelowRenderResources *this)
{
  ggl::RenderDataHolder::~RenderDataHolder((this + 504));
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::VenueOpenToBelowShadow::MeshPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  v4 = *(this + 61);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 264));
  v5 = *(this + 32);
  *(this + 32) = 0;
  if (v5)
  {
    v6 = ggl::FragmentedPool<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup>::~FragmentedPool(v5);
    MEMORY[0x1B8C62190](v6, 0x10A0C405CD4001ALL);
  }

  v7 = *(this + 31);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 24));
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 2);
  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

void std::vector<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v2, v1);
  }
}

void md::LabelLineStore::addRoadFeature(mdm::zone_mallocator *a1, uint64_t *a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  if (a4)
  {
    v11 = a2[1];
    if (v11)
    {
      v11 = std::__shared_weak_count::lock(v11);
      v12 = v11;
      if (v11)
      {
        v13 = *a2;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v17 = mdm::zone_mallocator::instance(v11);
    v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v17);
    *v18 = 5;
    *(v18 + 1) = v13;
    *(v18 + 2) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v18 + 11) = 0;
    *(v18 + 72) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 13) = a4;
    *(v18 + 14) = 0;
    *(v18 + 15) = 0;
    *(v18 + 16) = a6;
    *(v18 + 17) = *a5;
    v18[168] = 0;
    *(v18 + 148) = *(a5 + 12);
    *(v18 + 72) = *(a5 + 8);
    *(v18 + 20) = *(a5 + 24);
    v18[168] = *(a5 + 32);
    v19 = *(a5 + 40);
    v20 = *(a5 + 56);
    v21 = *(a5 + 72);
    *(v18 + 219) = *(a5 + 83);
    *(v18 + 12) = v20;
    *(v18 + 13) = v21;
    *(v18 + 11) = v19;
    *(v18 + 30) = *(a5 + 104);
    v22 = *(a5 + 112);
    *(v18 + 31) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = 0;
    std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v24, v18);
    std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v23, 0);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }

  else
  {
    v15 = mdm::zone_mallocator::instance(a1);
    v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v15);
    md::LabelLineStore::WorkUnit::WorkUnit(v16, 0, a2, a3, a5, a6);
    v23 = 0;
    std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v24, v16);
    std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v23, 0);
  }

  md::LabelLineStore::queueWorkUnit(a1, &v24);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v24, 0);
}

void sub_1B29783F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignInstanceTransformDeviceData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignInstanceTransformDeviceData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignInstanceTransformDeviceData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xC97B9E962ADF4AD4)
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

void ggl::VenueOpenToBelowShadow::MeshPipelineState::~MeshPipelineState(ggl::VenueOpenToBelowShadow::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void md::LabelLineZSet::addSegment(mdm::zone_mallocator *a1, uint64_t *a2)
{
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (v5 >= v4)
  {
    v8 = *(a1 + 2);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
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

    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(a1);
      v15 = pthread_rwlock_rdlock((v14 + 32));
      if (v15)
      {
        geo::read_write_lock::logFailure(v15, "read lock", v16);
      }

      v17 = malloc_type_zone_malloc(*v14, 8 * v13, 0x2004093837F09uLL);
      atomic_fetch_add((v14 + 24), 1u);
      geo::read_write_lock::unlock((v14 + 32));
      v8 = *(a1 + 2);
      v9 = *(a1 + 3) - v8;
      v18 = v9 >> 3;
    }

    else
    {
      v17 = 0;
      v18 = v10;
    }

    v19 = &v17[8 * v10];
    v20 = *a2;
    *a2 = 0;
    v21 = &v19[-8 * v18];
    *v19 = v20;
    v7 = v19 + 8;
    v22 = memcpy(v21, v8, v9);
    v23 = *(a1 + 2);
    *(a1 + 2) = v21;
    *(a1 + 3) = v7;
    *(a1 + 4) = &v17[8 * v13];
    if (v23)
    {
      v24 = mdm::zone_mallocator::instance(v22);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineSegment>>(v24, v23);
    }
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  *(a1 + 3) = v7;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
    unk_1EB83C600 = 0xF2AA04C63467A586;
    qword_1EB83C608 = "md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>]";
    qword_1EB83C610 = 89;
  }
}

double md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 3) = 0;
  *a1 = 0;
  result = 0.0078125;
  *(a1 + 8) = xmmword_1B33B06F0;
  return result;
}

void *ggl::FragmentedPool<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>::buildRequiredTuple<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xE42D19AFCA302E68))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0xC97B9E962ADF4AD4))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x3070CB6B3C7F21D3uLL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x3070CB6B3C7F21D3))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

void md::LabelStyleCache::requestStyles(uint64_t a1, uint64_t **a2, std::__shared_weak_count *a3, void *a4)
{
  v59[4] = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::reserve(a3, (a2[1] - *a2) >> 4);
  memset(v59, 0, 24);
  std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::reserve(v59, (a2[1] - *a2) >> 4);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = *v8;
      if (*v8)
      {
        v11 = v8[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v52, v10, v11);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        LOBYTE(v51) = v54;
        std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::push_back(v59, &v51);
        if (v54 == 1)
        {
          (*(v52.~__shared_weak_count + 7))(v52.__vftable);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v53);
        }

        if (v52.__shared_owners_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v52.__shared_owners_);
        }
      }

      else
      {
        LOBYTE(v52.__vftable) = 0;
        std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::push_back(v59, &v52);
      }

      v8 += 2;
    }

    while (v8 != v9);
  }

  v50 = 0uLL;
  std::mutex::lock(a1);
  if (a2[1] == *a2)
  {
    std::mutex::unlock(a1);
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = atomic_load((*(a1 + 128) + 3699));
      if (v14)
      {
        v12 = std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::push_back[abi:nn200100](a3, (a1 + 432));
      }

      else if ((*(v59[0] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13))
      {
        md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::find(&v52, a1 + 320, &(*a2)[2 * v13]);
        if (LOBYTE(v52.__shared_weak_owners_) != 1)
        {
          operator new();
        }

        v16 = v52.__vftable;
        shared_owners = v52.__shared_owners_;
        if (v52.__shared_owners_)
        {
          atomic_fetch_add_explicit((v52.__shared_owners_ + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(&v50 + 1);
        *&v50 = v16;
        *(&v50 + 1) = shared_owners;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        if (v52.__shared_owners_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v52.__shared_owners_);
        }

        v12 = std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::push_back[abi:nn200100](a3, &v50);
        v31 = atomic_load((*(a1 + 128) + 3701));
        if (v31)
        {
          v32 = *a2;
          v33 = *(*a4 + 8 * v13);
          md::LabelStyle::styleName(v57, v50);
          md::LabelStyleCache::logStyleAttributes(a1, "StyleQuery", &v32[2 * v13], v33, v57);
          if (v58 < 0)
          {
            v34 = v57[0];
            v35 = mdm::zone_mallocator::instance(v12);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
          }
        }
      }

      else
      {
        v18 = atomic_load((*(a1 + 128) + 3700));
        if (v18 & 1) != 0 || (v19 = atomic_load((*(a1 + 128) + 3701)), (v19))
        {
          v20 = *(*a4 + 8 * v13);
          v21 = &(*a2)[2 * v13];
          v56 = 8;
          strcpy(v55, "No Style");
          md::LabelStyleCache::logStyleAttributes(a1, "StyleQuery FAIL", v21, v20, v55);
          if (v56 < 0)
          {
            v22 = v55[0];
            v23 = mdm::zone_mallocator::instance(v12);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
          }
        }

        v24 = *(a1 + 128);
        v25 = 0uLL;
        if (v24)
        {
          v26 = atomic_load((v24 + 3698));
          if (v26)
          {
            v25 = *(a1 + 432);
            v27 = *(a1 + 440);
            if (v27)
            {
              atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
            }
          }
        }

        v29 = a3->__shared_owners_;
        shared_weak_owners = a3->__shared_weak_owners_;
        if (v29 >= shared_weak_owners)
        {
          v36 = (v29 - a3->__vftable) >> 4;
          if ((v36 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v37 = shared_weak_owners - a3->__vftable;
          v38 = v37 >> 3;
          if (v37 >> 3 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF0)
          {
            v39 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          v54 = a3 + 1;
          if (v39)
          {
            v49 = v25;
            v40 = mdm::zone_mallocator::instance(v12);
            v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(v40, v39);
            v25 = v49;
          }

          else
          {
            v41 = 0;
          }

          v43 = &v41[16 * v39];
          v42 = &v41[16 * v36];
          *v42 = v25;
          v30 = v42 + 16;
          v44 = a3->__shared_owners_ - a3->__vftable;
          v45 = &v42[-v44];
          memcpy(&v42[-v44], a3->__vftable, v44);
          v46 = a3->__vftable;
          a3->__vftable = v45;
          a3->__shared_owners_ = v30;
          v47 = a3->__shared_weak_owners_;
          a3->__shared_weak_owners_ = v43;
          v52.__shared_weak_owners_ = v46;
          v53 = v47;
          v52.__vftable = v46;
          v52.__shared_owners_ = v46;
          v12 = std::__split_buffer<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator> &>::~__split_buffer(&v52);
        }

        else
        {
          *v29 = v25;
          v30 = v29 + 16;
        }

        a3->__shared_owners_ = v30;
      }

      ++v13;
    }

    while (v13 < (a2[1] - *a2) >> 4);
    v48 = *(&v50 + 1);
    std::mutex::unlock(a1);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }
  }

  std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v59[0]);
}

void std::vector<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v2, v1);
  }
}

uint64_t md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8BD499FBD96FBB9ELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>::buildRequiredTuple<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>(&v13, v8);
      v9 = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 144))(v7, a2, &v10, v5);
    }
  }

  return result;
}

void std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::resize(void **a1, _BYTE *a2)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = a1[1];
    v4 = a2 - v7;
    if (a2 > v7)
    {
      v3 = a1[1];
      v8 = a1[2];
      v5 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v8);
      goto LABEL_6;
    }

    a1[1] = a2;
    v2 = *a1;
LABEL_28:
    v17 = v2 + a2;
    goto LABEL_31;
  }

  v4 = &a2[-v3];
  if (a2 <= v3)
  {
    *(a1 + 23) = a2;
    goto LABEL_28;
  }

  v5 = 10;
  LOBYTE(v6) = *(a1 + 23);
LABEL_6:
  if (v5 - v3 < v4)
  {
    std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__grow_by(a1, v5, v4 - v5 + v3, v3, v3);
    v2[1] = v3;
    LOBYTE(v6) = *(v2 + 23);
  }

  v9 = v2;
  if ((v6 & 0x80) != 0)
  {
    v9 = *v2;
  }

  v10 = 0;
  v11 = vdupq_n_s64(v4 - 1);
  v12 = v9 + v3 + 4;
  do
  {
    v13 = vdupq_n_s64(v10);
    v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B33B0560)));
    if (vuzp1_s8(vuzp1_s16(v14, *v11.i8), *v11.i8).u8[0])
    {
      *(v12 - 4) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v14, *&v11), *&v11).i8[1])
    {
      *(v12 - 3) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B33B0550)))), *&v11).i8[2])
    {
      *(v12 - 2) = 0;
      *(v12 - 1) = 0;
    }

    v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B33B0C10)));
    if (vuzp1_s8(*&v11, vuzp1_s16(v15, *&v11)).i32[1])
    {
      *v12 = 0;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(v15, *&v11)).i8[5])
    {
      v12[1] = 0;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1B33B0C00))))).i8[6])
    {
      v12[2] = 0;
      v12[3] = 0;
    }

    v10 += 8;
    v12 += 8;
  }

  while (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) != v10);
  v16 = v3 + v4;
  if (*(v2 + 23) < 0)
  {
    v2[1] = v16;
  }

  else
  {
    *(v2 + 23) = v16 & 0x7F;
  }

  v17 = v9 + v16;
LABEL_31:
  *v17 = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceTransformHandle>();
    unk_1EB83CA70 = 0xAF179EFD8A4C83D4;
    qword_1EB83CA78 = "md::ls::InstanceTransformHandle]";
    qword_1EB83CA80 = 31;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[364];
}

void *gdc::Context::context<md::LayerDataLogicContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x7851AF310F49C988uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x7851AF310F49C988)
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

void ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState::~MeshPipelineState(ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void md::ElevationLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *this, uint64_t *a3, uint64_t a4)
{
  v238 = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 280) + 41936);
  v9 = *v8;
  v10 = v8[1];
  if (v9 != v10)
  {
    v11 = v9;
    while (*v11 != 20)
    {
      v11 += 16;
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    if (v11 != v10)
    {
      v12 = *(v11 + 8);
      goto LABEL_9;
    }
  }

LABEL_8:
  v12 = 0;
LABEL_9:
  while (v9 != v10)
  {
    if (*v9 == 29)
    {
      if (v9 != v10)
      {
        v13 = *(v9 + 8) == 3;
        goto LABEL_15;
      }

      break;
    }

    v9 += 16;
  }

  v13 = 0;
LABEL_15:
  v15 = *a3;
  v14 = a3[1];
  v16 = *(a4 + 16);
  v186 = *(a4 + 3);
  *(a4 + 5) = *(a1 + 352);
  if (v12 > 8 || ((1 << v12) & 0x121) == 0)
  {
    *a4 = 0;
    *(a4 + 2) = 0;
    *(a4 + 8) = xmmword_1B33B06F0;
    goto LABEL_46;
  }

  v4 = +[VKDebugSettings sharedSettings];
  v17 = md::LayoutContext::camera(this);
  v18 = *grl::IconMetricsRenderResult::size(v17);
  v19 = *gdc::Camera::cameraFrame(v17);
  v20 = cos(v19 + v19) * -559.82 + 111132.92;
  v21 = v20 + cos(v19 * 4.0) * 1.175;
  v22 = v21 + cos(v19 * 6.0) * -0.0023;
  v23 = v19 * 0.5;
  v24 = tan(v19 * 0.5 + 0.78103484);
  v25 = log(v24);
  v26 = tan(v23 + 0.789761487);
  v27 = fabs((log(v26) - v25) * 0.159154943);
  gdc::Camera::horizontalFieldOfView(v219, v17);
  v28 = tan(*v219 * 0.5);
  v29 = log2(v18 * (v28 + v28) * v27 / v22);
  LODWORD(v18) = *(v15 + 100);
  v219[0] = 0;
  LOBYTE(v233) = 0;
  gss::ClientStyleState<gss::PropertyID>::queryNightMode(*(v15 + 32), v219, &v233);
  v30 = v29;
  v31 = *&v18 - v30;
  v32 = 1.0;
  if (v12 != 5)
  {
    v33 = +[VKDebugSettings sharedSettings];
    if ([v33 daVinciOverrideElevationScaling])
    {
      v34 = [v33 daVinciElevationScalingMaxZ];
      if (v34 > [v33 daVinciElevationScalingMinZ])
      {
        v35 = [v33 daVinciElevationScalingMinZ];
        v36 = [v33 daVinciElevationScalingMaxZ];
        [v33 daVinciElevationScalingMinZFactor];
        v38 = v37;
        [v33 daVinciElevationScalingMaxZFactor];
        v32 = v38 + ((v39 - v38) * fminf(fmaxf((v31 - v35) / (v36 - v35), 0.0), 1.0));
      }
    }

    else
    {
      v32 = md::DaVinciGroundSettings::valueForZoomLevel<float>(*(v14 + 48), 4, v31);
    }
  }

  v40 = [v4 daVinciElevationScalingNormalsOnly];
  v41 = *(a1 + 160);
  v42 = *(v41 + 48);
  v43 = v42 * v32;
  if (v40)
  {
    v43 = *(v41 + 48);
  }

  *(a4 + 16) = v43;
  v44 = *(v41 + 80);
  *a4 = v44;
  *(a4 + 8) = v42;
  *(a4 + 2) = *(v41 + 76) != 0;
  v45 = *(a4 + 1);
  if (v12 != 8 && !v13 || (*(a4 + 1) & 1) != 0)
  {
    if (v12 == 8 || v13 || (v45 & 1) == 0 || !v44)
    {
      goto LABEL_38;
    }

    v54 = *(a1 + 144);
    if (v54)
    {
      [v54 stop];
    }

    *(a1 + 168) = 1065353216;
    [v4 daVinciTransitionDuration];
    md::ElevationLogic::_startFlatteningScaleAnimation(a1, v55);
    v53 = 0;
  }

  else
  {
    if (!v44)
    {
      goto LABEL_38;
    }

    v46 = *(a1 + 144);
    if (v46)
    {
      [v46 stop];
    }

    __asm { FMOV            V0.2S, #-1.0 }

    *(a1 + 168) = -_D0;
    [v4 daVinciTransitionDuration];
    md::ElevationLogic::_startFlatteningScaleAnimation(a1, v52);
    v53 = 1;
  }

  *(a4 + 1) = v53;
  v42 = *(*(a1 + 160) + 48);
  v43 = *(a4 + 16);
LABEL_38:
  v56 = *(a1 + 172);
  *(a4 + 12) = fmaxf(v42 + (-(v56 - (v32 * v56)) * v42), 0.01);
  *(a4 + 16) = v43 * v56;
  v57 = 1.0;
  if (v12 != 5 && (*a4 != 1 || [v4 daVinciPitchScaleEnabled]))
  {
    [v4 buildingPOIPitchScaleMinZoom];
    v59 = v58;
    [v4 buildingPOIPitchScaleMaxZoom];
    v61 = v60;
    v62 = md::LayoutContext::camera(this);
    v63 = *gdc::Camera::pitch(v62);
    [v4 buildingPOIPitchScaleMaxZoomFactor];
    v65 = v64;
    [v4 buildingPOIPitchScaleFullHeightAngle];
    v67 = fminf(((v65 + -1.0) * fminf((v31 - v59) / (v61 - v59), 1.0)) + 1.0, 1.0);
    v66 = v63 * 0.636619772;
    v57 = fminf(((v66 - (v67 * v66)) / sinf(v68 * 0.017453)) + v67, 1.0);
  }

  *(a4 + 20) = v57;
  *(a4 + 3) = v45 & 1 | (v31 > 11.0);
  *(a4 + 4) = 0;
  if (*(*(a1 + 280) + 42104) == 1 && !md::LayoutContext::cameraType(this))
  {
    v69 = md::LayoutContext::camera(this);
    v70 = gdc::Camera::cameraFrame(v69);
    v71 = *(a4 + 20);
    v72 = v71 / cos(*v70);
    *(a4 + 20) = v72;
    *(a4 + 4) = 1;
  }

LABEL_46:
  md::LayoutContext::frameState(this);
  v74 = *(v73 + 88);
  v75 = *(a1 + 240);
  md::LayoutContext::frameState(this);
  *(a1 + 240) = *(v76 + 88);
  if (!*(a1 + 256) || (+[VKDebugSettings sharedSettings](), v4 = objc_claimAutoreleasedReturnValue(), v77 = [v4 toursCorrectElevation], v4, !v77))
  {
    if ((*a4 & 1) == 0)
    {
      v156 = *(*(a1 + 280) + 41936);
      v157 = *v156;
      v158 = v156[1];
      if (v157 != v158)
      {
        v159 = v157;
        while (*v159 != 20)
        {
          v159 += 16;
          if (v159 == v158)
          {
            goto LABEL_128;
          }
        }

        if (v159 != v158)
        {
          v160 = (*(v159 + 8) - 2) < 3;
          goto LABEL_129;
        }
      }

LABEL_128:
      v160 = 0;
LABEL_129:
      while (v157 != v158)
      {
        if (*v157 == 29)
        {
          if (v157 != v158 && *(v157 + 8) != 0 && v160)
          {
            goto LABEL_54;
          }

          break;
        }

        v157 += 16;
      }

      *(a1 + 176) = 0;
      *(a1 + 248) = 0;
      v161 = md::LayoutContext::camera(this);
      if ((*(a1 + 288) & 0xFE) != 2)
      {
        goto LABEL_152;
      }

      v162 = 0.0;
LABEL_151:
      gdc::Camera::setAltitude(v161, *&v162);
      goto LABEL_152;
    }

LABEL_54:
    v4 = md::LayoutContext::camera(this);
    v91 = *(a1 + 176);
    v92 = gdc::Camera::cameraFrame(v4);
    v93 = md::ElevationLogic::elevationSampleAtCoordinate(a1, v92);
    v95 = v94;
    if ((v94 & 0x100) != 0)
    {
      v96 = *&v93;
    }

    else
    {
      v96 = 0.0;
    }

    v97 = v96;
    if (v12 - 2 <= 2)
    {
      v98 = +[VKDebugSettings sharedSettings];
      if ([v98 correctBumpiness])
      {
        v99 = *(a1 + 432);

        if ((v99 & 1) == 0)
        {
          v184 = v74;
          v185 = v16;
          v100 = gdc::Camera::cameraFrame(v4);
          gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(&v228, v100);
          v101 = *grl::IconMetricsRenderResult::size(v4);
          v102 = *(v100 + 8);
          v103 = *(v100 + 16);
          v104 = __sincos_stret(*v100);
          v105 = 6378137.0 / sqrt(v104.__sinval * v104.__sinval * -0.00669437999 + 1.0);
          v106 = (v105 + v103) * v104.__cosval;
          v107 = __sincos_stret(v102);
          *&v226 = v106 * v107.__cosval;
          *(&v226 + 1) = v106 * v107.__sinval;
          v227 = (v103 + v105 * 0.99330562) * v104.__sinval;
          v108 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(&v228, a1 + 208);
          *(a1 + 208) = v228;
          *(a1 + 224) = v229;
          if (v108 <= 0.00001 || v101 >= 5000.0)
          {
            goto LABEL_157;
          }

          v109 = gdc::Camera::near(v4);
          v110 = *v109 + *v109;
          *v111.i64 = gm::Matrix<double,3,1>::normalized<int,void>(&v228);
          for (i = 0; i != 24; i += 8)
          {
            *&v219[i] = *&v230[i] - *(&v228 + i);
          }

          v115 = 0;
          v233 = *v219;
          *&v234 = *&v219[16];
          do
          {
            *&v219[v115] = *&v230[v115 + 24] + *(&v233 + v115);
            v115 += 8;
          }

          while (v115 != 24);
          v116 = 0;
          v117 = -(v113 * *v219 - *&v219[16] * *v111.i64);
          *&v118.f64[0] = v111.i64[0];
          v118.f64[1] = v112;
          v119.f64[0] = v112;
          v119.f64[1] = v113;
          v120 = vmlaq_f64(vnegq_f64(vmulq_f64(*&v219[8], v118)), v119, *v219);
          v223[0] = *&v120.f64[1];
          *&v223[1] = v117;
          v223[2] = *&v120.f64[0];
          v121 = vdupq_lane_s64(*&v120.f64[0], 0);
          v121.f64[0] = v117;
          v224 = vmlaq_f64(vnegq_f64(vmulq_f64(v121, vextq_s8(v119, v111, 8uLL))), v119, v120);
          v225 = -(vmuld_lane_f64(v112, v120, 1) - v117 * *v111.i64);
          v122 = 0.0;
          do
          {
            v122 = v122 + v224.f64[v116] * v224.f64[v116];
            ++v116;
          }

          while (v116 != 3);
          v123 = 0;
          v124 = 1.0 / sqrt(v122);
          do
          {
            v224.f64[v123] = v224.f64[v123] * v124;
            ++v123;
          }

          while (v123 != 3);
          v125 = 0;
          v126 = 0.0;
          do
          {
            v126 = v126 + *&v223[v125] * *&v223[v125];
            ++v125;
          }

          while (v125 != 3);
          v127 = 0;
          v128 = 1.0 / sqrt(v126);
          do
          {
            *&v223[v127] = *&v223[v127] * v128;
            ++v127;
          }

          while (v127 != 3);
          for (j = 0; j != 3; ++j)
          {
            *(&v233 + j * 8) = v224.f64[j] * 5.0;
          }

          v130 = 0;
          v212 = v233;
          v213 = v234;
          do
          {
            *(&v233 + v130) = *(&v212 + v130) + *(&v228 + v130);
            v130 += 8;
          }

          while (v130 != 24);
          v131 = 0;
          v214 = v233;
          v215 = v234;
          do
          {
            *(&v233 + v131 * 8) = *&v223[v131] * 5.0;
            ++v131;
          }

          while (v131 != 3);
          v132 = 0;
          v210 = v233;
          v211 = v234;
          do
          {
            *(&v233 + v132) = *(&v210 + v132) + *(&v214 + v132);
            v132 += 8;
          }

          while (v132 != 24);
          v216 = v233;
          v217 = v234;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v218, &v216);
          v133 = 0;
          v233 = v218;
          do
          {
            *(&v231 + v133 * 8) = v224.f64[v133] * 5.0;
            ++v133;
          }

          while (v133 != 3);
          v134 = 0;
          v203 = v231;
          v204 = v232;
          do
          {
            *(&v231 + v134) = *(&v203 + v134) + *(&v228 + v134);
            v134 += 8;
          }

          while (v134 != 24);
          v135 = 0;
          v205 = v231;
          v206 = v232;
          do
          {
            *(&v231 + v135 * 8) = *&v223[v135] * 5.0;
            ++v135;
          }

          while (v135 != 3);
          v136 = 0;
          v201 = v231;
          v202 = v232;
          do
          {
            *(&v231 + v136) = *(&v205 + v136) - *(&v201 + v136);
            v136 += 8;
          }

          while (v136 != 24);
          v207 = v231;
          v208 = v232;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v209, &v207);
          v137 = 0;
          v234 = v209;
          do
          {
            *(&v231 + v137 * 8) = v224.f64[v137] * 2.5;
            ++v137;
          }

          while (v137 != 3);
          v138 = 0;
          v196 = v231;
          v197 = v232;
          do
          {
            *(&v231 + v138) = *(&v228 + v138) - *(&v196 + v138);
            v138 += 8;
          }

          while (v138 != 24);
          v198 = v231;
          v199 = v232;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v200, &v198);
          v139 = 0;
          v235 = v200;
          do
          {
            *(&v231 + v139 * 8) = v224.f64[v139] * 15.0;
            ++v139;
          }

          while (v139 != 3);
          v140 = 0;
          v191 = v231;
          v192 = v232;
          do
          {
            *(&v231 + v140) = *(&v191 + v140) + *(&v228 + v140);
            v140 += 8;
          }

          while (v140 != 24);
          v193 = v231;
          v194 = v232;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v195, &v193);
          v141 = 0;
          v236 = v195;
          do
          {
            *(&v231 + v141 * 8) = v224.f64[v141] * 30.0;
            ++v141;
          }

          while (v141 != 3);
          v142 = 0;
          v187 = v231;
          v188 = v232;
          do
          {
            *(&v231 + v142) = *(&v187 + v142) + *(&v228 + v142);
            v142 += 8;
          }

          while (v142 != 24);
          v143 = fmax(v110, 35.0);
          v189 = v231;
          v190 = v232;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v231, &v189);
          v144 = 0;
          v237 = v231;
          *v219 = v221;
          *&v219[8] = v221;
          *&v219[16] = v221;
          v220 = 5;
          do
          {
            *&v221[v144] = *(&v233 + v144);
            v144 += 16;
          }

          while (v144 != 80);
          v145 = 0;
          *&v219[8] = &v222;
          v146 = 0.0;
          do
          {
            v146 = v146 + *(&v228 + v145) * *(&v228 + v145);
            v145 += 8;
          }

          while (v145 != 24);
          v147 = 0.0;
          do
          {
            v147 = v147 + *(&v228 + v145) * *(&v228 + v145);
            v145 += 8;
          }

          while (v145 != 48);
          v148 = 0;
          v149 = sqrt(v147) - sqrt(v146) + v143;
          v150 = 0.0;
          for (k = 32; k != 112; k += 16)
          {
            v233 = *&v219[k];
            *&v234 = 0;
            v152 = COERCE_DOUBLE(md::ElevationLogic::elevationSampleAtCoordinate(a1, &v233));
            if (v148)
            {
              v154 = v150;
            }

            else
            {
              v154 = v149 + v152;
            }

            v155 = fmax(v149 + v152, v154);
            if ((v153 & 0x100) != 0)
            {
              v150 = v155;
              v148 = 1;
            }
          }

          if (*v219 != *&v219[16])
          {
            free(*v219);
          }

          if ((v148 & 1) != 0 && v150 > *(a1 + 176))
          {
            *(a1 + 232) = 0;
            *(a1 + 184) = v226;
            *(a1 + 200) = v227;
            v91 = v150;
          }

          else
          {
LABEL_157:
            if ((v95 & 0x100) != 0)
            {
              v176 = 0;
              v91 = v97;
              v177 = (a1 + 184);
              v16 = v185;
              do
              {
                *&v219[v176] = *(v177 + v176) - *(&v226 + v176);
                v176 += 8;
              }

              while (v176 != 24);
              v178 = 0;
              v179 = 0.0;
              do
              {
                v179 = v179 + *&v219[v178] * *&v219[v178];
                v178 += 8;
              }

              while (v178 != 24);
              v180 = sqrt(v179);
              if (v180 < 1000.0)
              {
                v181 = *(a1 + 176);
                v182 = fmin(fmax(fmin(fmax((v97 - v181) / fmax(v180, 0.00001) - *(a1 + 232), -((v184 - v75) * 0.2)), (v184 - v75) * 0.2) + *(a1 + 232), -0.2), 0.2);
                *(a1 + 232) = v182;
                v91 = v181 + v182 * v180;
              }

              if (v108 <= 0.00001)
              {
                *(a1 + 232) = 0;
              }

              *v177 = v226;
              *(a1 + 200) = v227;
              goto LABEL_140;
            }

            *(a1 + 232) = 0;
          }

          v16 = v185;
LABEL_140:
          v170 = (*(a4 + 16) * *(a4 + 20));
          *(a1 + 176) = v91 * v170;
          if ((v95 & 0x100) != 0)
          {
            v171 = v97;
          }

          else
          {
            v171 = v91;
          }

          *(a1 + 248) = (v91 - v171) * v170;
          v172 = *(a1 + 288);
          if (v172 == 3)
          {
            v162 = v91 * v170;
          }

          else
          {
            if (v172 == 2)
            {
              v173 = *gdc::Camera::altitude(v4) * v170;
            }

            else
            {
              if (v172 != 1)
              {
                goto LABEL_152;
              }

              v173 = *gdc::Camera::altitude(v4) + v91 * v170;
            }

            v162 = v173;
          }

          v161 = v4;
          goto LABEL_151;
        }
      }

      else
      {
      }
    }

    *(a1 + 232) = 0;
    v163 = *(v92 + 8);
    v164 = *(v92 + 16);
    v165 = __sincos_stret(*v92);
    v166 = 6378137.0 / sqrt(v165.__sinval * v165.__sinval * -0.00669437999 + 1.0);
    v167 = (v166 + v164) * v165.__cosval;
    v168 = __sincos_stret(v163);
    *(a1 + 184) = v167 * v168.__cosval;
    *(a1 + 192) = v167 * v168.__sinval;
    *(a1 + 200) = (v164 + v166 * 0.99330562) * v165.__sinval;
    v169 = gdc::Camera::cameraFrame(v4);
    gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(v219, v169);
    *(a1 + 208) = *v219;
    *(a1 + 224) = *&v219[16];
    if ((v95 & 0x100) != 0)
    {
      v91 = v97;
    }

    else
    {
      v91 = 0.0;
    }

    goto LABEL_140;
  }

  v4 = md::LayoutContext::camera(this);
  v78 = *(*(a1 + 256) + 152);
  v79 = gdc::Camera::cameraFrame(v4);
  *&v80 = COERCE_DOUBLE(md::ElevationLogic::elevationSampleAtCoordinate(a1, v79));
  v82 = v81;
  if ((v81 & 0x100) != 0)
  {
    v83 = *&v80;
  }

  else
  {
    v83 = 0.0;
  }

  gdc::Camera::setAltitude(v4, v78);
  *(a1 + 176) = v78;
  v84 = *(v79 + 8);
  v85 = *(v79 + 16);
  v86 = __sincos_stret(*v79);
  v87 = 6378137.0 / sqrt(v86.__sinval * v86.__sinval * -0.00669437999 + 1.0);
  v88 = (v87 + v85) * v86.__cosval;
  v89 = __sincos_stret(v84);
  *(a1 + 184) = v88 * v89.__cosval;
  *(a1 + 192) = v88 * v89.__sinval;
  *(a1 + 200) = (v85 + v87 * 0.99330562) * v86.__sinval;
  v90 = gdc::Camera::cameraFrame(v4);
  gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(v219, v90);
  *(a1 + 208) = *v219;
  *(a1 + 224) = *&v219[16];
  *(a1 + 232) = 0;
  if ((v82 & 0x100) != 0)
  {
    *(a1 + 248) = *gdc::Camera::altitude(v4) - v83;
  }

  else
  {
    *(a1 + 248) = 0;
  }

LABEL_152:
  if (*(a1 + 328) == 1)
  {
    v174 = md::LayoutContext::camera(this);
    if (*(a1 + 328))
    {
      *v219 = *gdc::Camera::altitude(v174);
      v219[8] = 1;
      v175 = *(a1 + 320);
      if (v175)
      {
        (*(*v175 + 48))(v175, v219);
        goto LABEL_156;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v183 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v183);
  }

LABEL_156:
  *(a4 + 6) = (v16 <= 0.01) & v186 ^ (*(a4 + 16) <= 0.01) & *(a4 + 3);
}