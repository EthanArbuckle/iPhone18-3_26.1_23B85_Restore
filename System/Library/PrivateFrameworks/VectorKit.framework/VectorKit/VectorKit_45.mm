__n128 std::__function::__func<md::LabelManager::setShowingTrafficCasing(BOOL)::$_0,std::allocator<md::LabelManager::setShowingTrafficCasing(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0,std::allocator<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if ((*a2 | 4) == 4)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (*v3)
    {
      LODWORD(v9) = 5;
      WORD2(v9) = 11;
      DWORD2(v9) = 65552;
      WORD6(v9) = 0;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v10, &v9, 2uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v12, v10);
      gss::FeatureAttributeSet::sort(v12[0], v12[1]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v10);
      v10[0] = 0;
      v10[1] = 0;
      v11 = 256;
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v10, 0x10002u) = 1;
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v10, 0x10000u) = 0;
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v9, *v3, v12, v10);
      v4 = *(v2 + 64);
      v5 = v9;
      v9 = 0uLL;
      v6 = *(v4 + 64);
      *(v4 + 56) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        if (*(&v9 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v9 + 1));
        }
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v10);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v12);
    }

    else
    {
      v7 = *(v2 + 64);
      v8 = *(v7 + 64);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    *(*(v2 + 64) + 48) = 1;
  }
}

void sub_1B2AD28D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

void md::VenueRenderLayer::layout(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  v186[4] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0x4927EB92E562CC46uLL);
  if (v5)
  {
    v6 = v5[5];
    if (*(v6 + 8) == 0x4927EB92E562CC46)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(this + 35);
        v180[0] = *(this + 34);
        v180[1] = v8;
        v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0xE42D19AFCA302E68);
        if (v9)
        {
          v167 = v9[5];
          if (*(v167 + 8) == 0xE42D19AFCA302E68)
          {
            v9 = *(v167 + 32);
          }

          else
          {
            v9 = 0;
          }
        }

        v186[0] = &unk_1F2A068E8;
        v186[1] = this;
        v186[2] = v180;
        v186[3] = v186;
        md::StyleLogicContext::parseEvents(v9, v186);
        std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v186);
        v10 = *(a2 + 1);
        v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0xC97B9E962ADF4AD4);
        if (v11 && (v168 = v11[5], *(v168 + 8) == 0xC97B9E962ADF4AD4))
        {
          v12 = *(v168 + 32);
        }

        else
        {
          v12 = 0;
        }

        v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x8BD499FBD96FBB9ELL);
        if (v13 && (v14 = v13[5], *(v14 + 8) == 0x8BD499FBD96FBB9ELL))
        {
          v15 = *(v14 + 32);
        }

        else
        {
          v15 = 0;
        }

        v177 = v15;
        if (*v15 == 1)
        {
          v169 = *v12;
          v170 = v12[1];
          while (v169 != v170)
          {
            if (*v169 == 21)
            {
              if (v169 != v170 && *(v169 + 8))
              {
                v176 = md::LayoutContext::cameraType(a2);
                v178 = gdc::ToCoordinateSystem(v176);
                goto LABEL_13;
              }

              break;
            }

            v169 += 16;
          }
        }

        v178 = 0;
LABEL_13:
        v16 = md::PolygonRenderResources::resetPools(*(this + 46));
        v179 = *(this + 47);
        v17 = *(v179 + 536);
        v18 = *(v17 + 32);
        v19 = *(v17 + 40);
        if (v18 != v19)
        {
          v20 = *(v17 + 8);
          do
          {
            v21 = *v18;
            v22 = *(v17 + 16);
            if (v20 >= v22)
            {
              v23 = (v20 - *v17) >> 3;
              if ((v23 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v24 = v22 - *v17;
              v25 = v24 >> 2;
              if (v24 >> 2 <= (v23 + 1))
              {
                v25 = v23 + 1;
              }

              if (v24 >= 0x7FFFFFFFFFFFFFF8)
              {
                v26 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v25;
              }

              v185 = v17 + 24;
              if (v26)
              {
                v27 = ggl::zone_mallocator::instance(v16);
                v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(v27, v26);
              }

              else
              {
                v28 = 0;
              }

              v30 = &v28[8 * v26];
              v29 = &v28[8 * v23];
              *v29 = v21;
              v20 = v29 + 8;
              v31 = *(v17 + 8) - *v17;
              v32 = &v29[-v31];
              memcpy(&v29[-v31], *v17, v31);
              v33 = *v17;
              *v17 = v32;
              v181 = v33;
              v182 = v33;
              *(v17 + 8) = v20;
              v183 = v33;
              v34 = *(v17 + 16);
              *(v17 + 16) = v30;
              v184 = v34;
              v16 = std::__split_buffer<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v20++ = v21;
            }

            *(v17 + 8) = v20;
            ++v18;
          }

          while (v18 != v19);
          v18 = *(v17 + 32);
          v19 = *(v17 + 40);
        }

        if (v18 != v19)
        {
          *(v17 + 40) = v18;
        }

        v35 = *(v179 + 992);
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        if (v36 != v37)
        {
          v38 = *(v35 + 8);
          do
          {
            v39 = *v36;
            v40 = *(v35 + 16);
            if (v38 >= v40)
            {
              v41 = (v38 - *v35) >> 3;
              if ((v41 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v42 = v40 - *v35;
              v43 = v42 >> 2;
              if (v42 >> 2 <= (v41 + 1))
              {
                v43 = v41 + 1;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v43;
              }

              v185 = v35 + 24;
              if (v44)
              {
                v45 = ggl::zone_mallocator::instance(v16);
                v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v45, v44);
              }

              else
              {
                v46 = 0;
              }

              v48 = &v46[8 * v44];
              v47 = &v46[8 * v41];
              *v47 = v39;
              v38 = v47 + 8;
              v49 = *(v35 + 8) - *v35;
              v50 = &v47[-v49];
              memcpy(&v47[-v49], *v35, v49);
              v51 = *v35;
              *v35 = v50;
              v181 = v51;
              v182 = v51;
              *(v35 + 8) = v38;
              v183 = v51;
              v52 = *(v35 + 16);
              *(v35 + 16) = v48;
              v184 = v52;
              v16 = std::__split_buffer<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v38++ = v39;
            }

            *(v35 + 8) = v38;
            ++v36;
          }

          while (v36 != v37);
          v36 = *(v35 + 32);
          v37 = *(v35 + 40);
        }

        if (v36 != v37)
        {
          *(v35 + 40) = v36;
        }

        v53 = *(v179 + 1232);
        v54 = *(v53 + 32);
        v55 = *(v53 + 40);
        if (v54 != v55)
        {
          v56 = *(v53 + 8);
          do
          {
            v57 = *v54;
            v58 = *(v53 + 16);
            if (v56 >= v58)
            {
              v59 = (v56 - *v53) >> 3;
              if ((v59 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v60 = v58 - *v53;
              v61 = v60 >> 2;
              if (v60 >> 2 <= (v59 + 1))
              {
                v61 = v59 + 1;
              }

              if (v60 >= 0x7FFFFFFFFFFFFFF8)
              {
                v62 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v62 = v61;
              }

              v185 = v53 + 24;
              if (v62)
              {
                v63 = ggl::zone_mallocator::instance(v16);
                v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v63, v62);
              }

              else
              {
                v64 = 0;
              }

              v66 = &v64[8 * v62];
              v65 = &v64[8 * v59];
              *v65 = v57;
              v56 = v65 + 8;
              v67 = *(v53 + 8) - *v53;
              v68 = &v65[-v67];
              memcpy(&v65[-v67], *v53, v67);
              v69 = *v53;
              *v53 = v68;
              v181 = v69;
              v182 = v69;
              *(v53 + 8) = v56;
              v183 = v69;
              v70 = *(v53 + 16);
              *(v53 + 16) = v66;
              v184 = v70;
              v16 = std::__split_buffer<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v56++ = v57;
            }

            *(v53 + 8) = v56;
            ++v54;
          }

          while (v54 != v55);
          v54 = *(v53 + 32);
          v55 = *(v53 + 40);
        }

        if (v54 != v55)
        {
          *(v53 + 40) = v54;
        }

        v71 = *(v179 + 1256);
        v72 = *(v71 + 32);
        v73 = *(v71 + 40);
        if (v72 != v73)
        {
          v74 = *(v71 + 8);
          do
          {
            v75 = *v72;
            v76 = *(v71 + 16);
            if (v74 >= v76)
            {
              v77 = (v74 - *v71) >> 3;
              if ((v77 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v78 = v76 - *v71;
              v79 = v78 >> 2;
              if (v78 >> 2 <= (v77 + 1))
              {
                v79 = v77 + 1;
              }

              if (v78 >= 0x7FFFFFFFFFFFFFF8)
              {
                v80 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v80 = v79;
              }

              v185 = v71 + 24;
              if (v80)
              {
                v81 = ggl::zone_mallocator::instance(v16);
                v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v81, v80);
              }

              else
              {
                v82 = 0;
              }

              v84 = &v82[8 * v80];
              v83 = &v82[8 * v77];
              *v83 = v75;
              v74 = v83 + 8;
              v85 = *(v71 + 8) - *v71;
              v86 = &v83[-v85];
              memcpy(&v83[-v85], *v71, v85);
              v87 = *v71;
              *v71 = v86;
              v181 = v87;
              v182 = v87;
              *(v71 + 8) = v74;
              v183 = v87;
              v88 = *(v71 + 16);
              *(v71 + 16) = v84;
              v184 = v88;
              v16 = std::__split_buffer<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v74++ = v75;
            }

            *(v71 + 8) = v74;
            ++v72;
          }

          while (v72 != v73);
          v72 = *(v71 + 32);
          v73 = *(v71 + 40);
        }

        if (v72 != v73)
        {
          *(v71 + 40) = v72;
        }

        v89 = *(v179 + 1280);
        v90 = *(v89 + 32);
        v91 = *(v89 + 40);
        if (v90 != v91)
        {
          v92 = *(v89 + 8);
          do
          {
            v93 = *v90;
            v94 = *(v89 + 16);
            if (v92 >= v94)
            {
              v95 = (v92 - *v89) >> 3;
              if ((v95 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v96 = v94 - *v89;
              v97 = v96 >> 2;
              if (v96 >> 2 <= (v95 + 1))
              {
                v97 = v95 + 1;
              }

              if (v96 >= 0x7FFFFFFFFFFFFFF8)
              {
                v98 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v97;
              }

              v185 = v89 + 24;
              if (v98)
              {
                v99 = ggl::zone_mallocator::instance(v16);
                v100 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v99, v98);
              }

              else
              {
                v100 = 0;
              }

              v102 = &v100[8 * v98];
              v101 = &v100[8 * v95];
              *v101 = v93;
              v92 = v101 + 8;
              v103 = *(v89 + 8) - *v89;
              v104 = &v101[-v103];
              memcpy(&v101[-v103], *v89, v103);
              v105 = *v89;
              *v89 = v104;
              v181 = v105;
              v182 = v105;
              *(v89 + 8) = v92;
              v183 = v105;
              v106 = *(v89 + 16);
              *(v89 + 16) = v102;
              v184 = v106;
              v16 = std::__split_buffer<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v92++ = v93;
            }

            *(v89 + 8) = v92;
            ++v90;
          }

          while (v90 != v91);
          v90 = *(v89 + 32);
          v91 = *(v89 + 40);
        }

        if (v90 != v91)
        {
          *(v89 + 40) = v90;
        }

        ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pushAll(*(v179 + 1760));
        v107 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pushAll(*(v179 + 1520));
        v108 = *(v179 + 1984);
        v109 = *(v108 + 32);
        v110 = *(v108 + 40);
        if (v109 != v110)
        {
          v111 = *(v108 + 8);
          do
          {
            v112 = *v109;
            v113 = *(v108 + 16);
            if (v111 >= v113)
            {
              v114 = (v111 - *v108) >> 3;
              if ((v114 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v115 = v113 - *v108;
              v116 = v115 >> 2;
              if (v115 >> 2 <= (v114 + 1))
              {
                v116 = v114 + 1;
              }

              if (v115 >= 0x7FFFFFFFFFFFFFF8)
              {
                v117 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v117 = v116;
              }

              v185 = v108 + 24;
              if (v117)
              {
                v118 = ggl::zone_mallocator::instance(v107);
                v119 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v118, v117);
              }

              else
              {
                v119 = 0;
              }

              v121 = &v119[8 * v117];
              v120 = &v119[8 * v114];
              *v120 = v112;
              v111 = v120 + 8;
              v122 = *(v108 + 8) - *v108;
              v123 = &v120[-v122];
              memcpy(&v120[-v122], *v108, v122);
              v124 = *v108;
              *v108 = v123;
              v181 = v124;
              v182 = v124;
              *(v108 + 8) = v111;
              v183 = v124;
              v125 = *(v108 + 16);
              *(v108 + 16) = v121;
              v184 = v125;
              v107 = std::__split_buffer<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v111++ = v112;
            }

            *(v108 + 8) = v111;
            ++v109;
          }

          while (v109 != v110);
          v109 = *(v108 + 32);
          v110 = *(v108 + 40);
        }

        if (v109 != v110)
        {
          *(v108 + 40) = v109;
        }

        v126 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pushAll(*(v179 + 2008));
        v127 = *(v179 + 2248);
        v128 = *(v127 + 32);
        v129 = *(v127 + 40);
        if (v128 != v129)
        {
          v130 = *(v127 + 8);
          do
          {
            v131 = *v128;
            v132 = *(v127 + 16);
            if (v130 >= v132)
            {
              v133 = (v130 - *v127) >> 3;
              if ((v133 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v134 = v132 - *v127;
              v135 = v134 >> 2;
              if (v134 >> 2 <= (v133 + 1))
              {
                v135 = v133 + 1;
              }

              if (v134 >= 0x7FFFFFFFFFFFFFF8)
              {
                v136 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v136 = v135;
              }

              v185 = v127 + 24;
              if (v136)
              {
                v137 = ggl::zone_mallocator::instance(v126);
                v138 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v137, v136);
              }

              else
              {
                v138 = 0;
              }

              v140 = &v138[8 * v136];
              v139 = &v138[8 * v133];
              *v139 = v131;
              v130 = v139 + 8;
              v141 = *(v127 + 8) - *v127;
              v142 = &v139[-v141];
              memcpy(&v139[-v141], *v127, v141);
              v143 = *v127;
              *v127 = v142;
              v181 = v143;
              v182 = v143;
              *(v127 + 8) = v130;
              v183 = v143;
              v144 = *(v127 + 16);
              *(v127 + 16) = v140;
              v184 = v144;
              v126 = std::__split_buffer<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v130++ = v131;
            }

            *(v127 + 8) = v130;
            ++v128;
          }

          while (v128 != v129);
          v128 = *(v127 + 32);
          v129 = *(v127 + 40);
        }

        if (v128 != v129)
        {
          *(v127 + 40) = v128;
        }

        v145 = *(v179 + 2488);
        v146 = *(v145 + 32);
        v147 = *(v145 + 40);
        if (v146 != v147)
        {
          v148 = *(v145 + 8);
          do
          {
            v149 = *v146;
            v150 = *(v145 + 16);
            if (v148 >= v150)
            {
              v151 = (v148 - *v145) >> 3;
              if ((v151 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v152 = v150 - *v145;
              v153 = v152 >> 2;
              if (v152 >> 2 <= (v151 + 1))
              {
                v153 = v151 + 1;
              }

              if (v152 >= 0x7FFFFFFFFFFFFFF8)
              {
                v154 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v154 = v153;
              }

              v185 = v145 + 24;
              if (v154)
              {
                v155 = ggl::zone_mallocator::instance(v126);
                v156 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v155, v154);
              }

              else
              {
                v156 = 0;
              }

              v158 = &v156[8 * v154];
              v157 = &v156[8 * v151];
              *v157 = v149;
              v148 = v157 + 8;
              v159 = *(v145 + 8) - *v145;
              v160 = &v157[-v159];
              memcpy(&v157[-v159], *v145, v159);
              v161 = *v145;
              *v145 = v160;
              v181 = v161;
              v182 = v161;
              *(v145 + 8) = v148;
              v183 = v161;
              v162 = *(v145 + 16);
              *(v145 + 16) = v158;
              v184 = v162;
              v126 = std::__split_buffer<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v181);
            }

            else
            {
              *v148++ = v149;
            }

            *(v145 + 8) = v148;
            ++v146;
          }

          while (v146 != v147);
          v146 = *(v145 + 32);
          v147 = *(v145 + 40);
        }

        if (v146 != v147)
        {
          *(v145 + 40) = v146;
        }

        ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pushAll(*(v179 + 2728));
        ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pushAll(*(v179 + 3208));
        ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pushAll(*(v179 + 3448));
        ggl::Batcher::reset((v179 + 3712));
        md::RenderItemPool::reset((v179 + 3792));
        *(this + 392) = v178;
        *(this + 393) = v178;
        v163 = md::VenueRenderLayer::_venuesCommandBuffer(this, *(a2 + 1));
        ggl::CommandBuffer::clearRenderItems(v163);
        *(this + 56) = v163;
        v164 = *(a2 + 1);
        md::LayoutContext::zoomAtCentrePoint(v164);
        if (fminf(fmaxf((v165 * 2.0) + -31.0, 0.0), 1.0) >= 0.00000011921)
        {
          if (md::LayoutContext::get<md::LightingLogicContext>(v164))
          {
            *(this + 438) = *(v7 + 352);
            *(this + 55) = v7;
            md::PolygonLayoutCharacteristics::setSelectedFeatureIds(this + 384, (v7 + 120));
            if ((*(this + 393) & 1) == 0)
            {
              v171 = *(this + 34);
              v172 = *(this + 35);
              if (v171 != v172)
              {
                v174 = v177[4];
                v173 = v177[5];
                do
                {
                  v175 = *v171++;
                  md::BaseMapTileDataRenderable::adjustZScale(v175, v174, v173);
                }

                while (v171 != v172);
              }

LABEL_174:
              *(*(this + 46) + 264) = 0;
              md::preparePolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(this + 34, *(a2 + 1), this + 384);
              md::VenueRenderLayer::_layoutDimmingOverlay(this, *(a2 + 1));
              md::VenueRenderLayer::_layoutVenueWalls(this, a2);
            }

            v166 = md::LayoutContext::get<md::NavigationContext>(*(a2 + 1));
            if (!v166 || (*v166 & 1) == 0)
            {
              goto LABEL_174;
            }
          }
        }
      }
    }
  }
}

void sub_1B2AD3520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 <= 4 && v2 != 2)
  {
    md::VenueRenderLayer::_updateStyles(**(a1 + 16), *(*(a1 + 16) + 8));
  }
}

uint64_t *md::PolygonRenderResources::resetPools(md::PolygonRenderResources *this)
{
  v2 = *(this + 22);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  if (v3 != v4)
  {
    do
    {
      v21 = *v3++;
      v27 = v21;
      std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonStroke::MeshPipelineSetup * const&>(v2, &v27);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v5 = *(this + 23);
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  if (v6 != v7)
  {
    do
    {
      v22 = *v6++;
      v27 = v22;
      std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonStrokeMask::MeshPipelineSetup * const&>(v5, &v27);
    }

    while (v6 != v7);
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  if (v6 != v7)
  {
    *(v5 + 5) = v6;
  }

  v8 = *(this + 24);
  v9 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v9 != v10)
  {
    do
    {
      v23 = *v9++;
      v27 = v23;
      std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::HillshadeFillMask::CompressedMeshPipelineSetup * const&>(v8, &v27);
    }

    while (v9 != v10);
    v9 = *(v8 + 4);
    v10 = *(v8 + 5);
  }

  if (v9 != v10)
  {
    *(v8 + 5) = v9;
  }

  v11 = *(this + 25);
  v12 = *(v11 + 4);
  v13 = *(v11 + 5);
  if (v12 != v13)
  {
    do
    {
      v24 = *v12++;
      v27 = v24;
      std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonAnimatableStroke::MeshPipelineSetup * const&>(v11, &v27);
    }

    while (v12 != v13);
    v12 = *(v11 + 4);
    v13 = *(v11 + 5);
  }

  if (v12 != v13)
  {
    *(v11 + 5) = v12;
  }

  ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pushAll(*(this + 26));
  ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pushAll(*(this + 27));
  v14 = *(this + 28);
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  if (v15 != v16)
  {
    do
    {
      v25 = *v15++;
      v27 = v25;
      std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup * const&>(v14, &v27);
    }

    while (v15 != v16);
    v15 = *(v14 + 4);
    v16 = *(v14 + 5);
  }

  if (v15 != v16)
  {
    *(v14 + 5) = v15;
  }

  v17 = *(this + 29);
  v18 = *(v17 + 4);
  v19 = *(v17 + 5);
  if (v18 != v19)
  {
    do
    {
      v26 = *v18++;
      v27 = v26;
      std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonFill::MeshPipelineSetup * const&>(v17, &v27);
    }

    while (v18 != v19);
    v18 = *(v17 + 4);
    v19 = *(v17 + 5);
  }

  if (v18 != v19)
  {
    *(v17 + 5) = v18;
  }

  ggl::Batcher::reset((this + 984));

  return md::RenderItemPool::reset(this + 133);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
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

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
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

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
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

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

uint64_t md::VenueRenderLayer::_venuesCommandBuffer(uint64_t a1, void *a2)
{
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v3 && (v4 = v3[5], *(v4 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  if (*(v5 + 16) <= 0.01)
  {
    v7 = *(v5 + 3) == 0;
    v6 = 482;
    if (!v7)
    {
      v6 = 484;
    }
  }

  else
  {
    v6 = 482;
  }

  v8 = *(*(a1 + 40) + 24);
  v9 = 480;
  if (*(a1 + 393))
  {
    v9 = v6;
  }

  v10 = (a1 + v9);
  result = md::FrameGraph::renderQueueForPass(*(v8 + 8), *v10);
  if (result)
  {
    return *(*(result + 16) + 8 * v10[1]);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 201) = *(a1 + 16);
  return (*(**(*(v1 + 168) + 56) + 8))(*(*(v1 + 168) + 56), *(a1 + 24));
}

uint64_t std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 201) = *(a1 + 16);
  (*(**(*(v1 + 168) + 32) + 120))(*(*(v1 + 168) + 32), *(a1 + 24));
  v2 = ***(*(v1 + 168) + 40);

  return v2();
}

void md::MapNavLabeler::setRouteContext(md::MapNavLabeler *this, VKRouteContext *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v3 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 80, v3);
  v4 = *(this + 90);
  v111 = v3;
  if (*(v4 + 24) != v111)
  {
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v5 = [(VKRouteContext *)v111 alternateRoutes];
    v6 = [v5 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *v124;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v124 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v123 + 1) + 8 * i) route];
        v10 = *(v4 + 24);
        v11 = [v10 routeInfo];
        v12 = [v11 route];
        v13 = v9 == v12;

        if (v13)
        {
          v14 = 0;
LABEL_12:

          v15 = [(VKRouteContext *)v111 routeInfo];
          v16 = [*(v4 + 24) routeInfo];
          if (v15 == v16)
          {
            v14 = 1;
          }

          if (v14)
          {
            md::LabelNavEtaLabeler::clearEtaFeatures(v4);
          }

          v17 = *(v4 + 24);
          v18 = v111;
          gatherRoutesFromContext(&v122._inspectedSegmentIndex, v17);
          gatherRoutesFromContext(&v122, v18);
          v121[0] = 0;
          v121[1] = 0;
          v119[1] = 0;
          v120 = v121;
          v118 = v119;
          v119[0] = 0;
          v114[0] = v122.super.isa;
          __p[0] = &v122._routeInfo;
          v122._currentSegmentIndex = &v122._inspectedStepIndex;
          v122._currentStepIndex = v122._inspectedSegmentIndex;
          v116.n128_u64[0] = &v120;
          v116.n128_u64[1] = v121;
          std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::insert_iterator<std::set<GEOComposedRoute * {__strong}>> &>(&v122._snappingToTransitLines, v114, __p, &v122._currentStepIndex, &v122._currentSegmentIndex, &v116);
          v114[0] = v122._inspectedSegmentIndex;
          __p[0] = &v122._inspectedStepIndex;
          v122._currentSegmentIndex = &v122._routeInfo;
          v122._currentStepIndex = v122.super.isa;
          v116.n128_u64[0] = &v118;
          v116.n128_u64[1] = v118;
          std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::insert_iterator<std::set<GEOComposedRoute * {__strong}>> &>(&v122._snappingToTransitLines, v114, __p, &v122._currentStepIndex, &v122._currentSegmentIndex, &v116);
          v19 = GEOGetVectorKitLabelNavEtaLabelerLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = &v116;
            buildStringForRouteSet(&v116, &v122);
            if (v117 < 0)
            {
              v20 = v116.n128_u64[0];
            }

            buildStringForRouteSet(v114, &v120);
            v21 = v115;
            v22 = v114[0];
            buildStringForRouteSet(__p, &v118);
            v23 = v114;
            if (v21 < 0)
            {
              v23 = v22;
            }

            if (v113 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            *&v122._snappingToTransitLines = 134219010;
            *(&v122._snappingToTransitLines + 4) = v17;
            WORD2(v122._currentWaypoint) = 2048;
            *(&v122._currentWaypoint + 6) = v18;
            *(&v122._currentWaypointProximity + 3) = 2080;
            *&v122._puckLocation.latitude = v20;
            LOWORD(v122._puckLocation.longitude) = 2080;
            *(&v122._puckLocation.longitude + 2) = v23;
            HIWORD(v122._puckRadius) = 2080;
            *(&v122._puckRadius + 1) = v24;
            _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_INFO, "Received new routeContext - old:%p new:%p routes:%s enteringRoutes:%s exitingRoutes:%s", &v122._snappingToTransitLines, 0x34u);
            if (v113 < 0)
            {
              operator delete(__p[0]);
            }

            if (v115 < 0)
            {
              operator delete(v114[0]);
            }

            if (v117 < 0)
            {
              operator delete(v116.n128_u64[0]);
            }
          }

          std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v119[0]);
          std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v121[0]);
          std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(&v122._routeInfo->super.isa);
          std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v122._inspectedStepIndex);

          v25 = *(v4 + 24);
          v26 = *(v4 + 120);
          [v26 stopObserving:v25];

          geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v4 + 16, v18);
          v27 = *(v4 + 24);
          v28 = *(v4 + 120);
          [v28 startObserving:v27];

          v29 = *(v4 + 24);
          *(v4 + 252) = v29 != 0;
          if (!v29)
          {
            md::LabelNavEtaLabeler::clearEtaFeatures(v4);
          }

          std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,mdm::zone_mallocator>>::destroy(*(v4 + 464));
          *(v4 + 480) = 0;
          *(v4 + 456) = v4 + 464;
          *(v4 + 464) = 0;
          std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v4 + 496));
          *(v4 + 512) = 0;
          *(v4 + 488) = v4 + 496;
          *(v4 + 496) = 0;
          std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v4 + 528));
          *(v4 + 544) = 0;
          *(v4 + 520) = v4 + 528;
          *(v4 + 528) = 0;
          md::LabelNavEtaLabeler::recreateRouteCollider(v4, v18);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
      if (!v6)
      {
LABEL_10:
        v14 = 1;
        goto LABEL_12;
      }
    }
  }

  v30 = *(this + 8);
  v31 = v111;
  v32 = *(v30 + 24);
  v110 = v31;
  if (v32 != v31)
  {
    if (!v31 || (v122._inspectedSegmentIndex = 0, geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v32, &v122._inspectedSegmentIndex)) || (-[VKRouteContext routeInfo](v110, "routeInfo"), v33 = objc_claimAutoreleasedReturnValue(), [*(v30 + 24) routeInfo], v34 = objc_claimAutoreleasedReturnValue(), v35 = v33 == v34, v34, v33, !v35))
    {
      v36 = 1;
      v37 = 1;
LABEL_38:
      v38 = *(v30 + 24);
      v39 = *(v30 + 184);
      [v39 stopObserving:v38];

      geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v30 + 16, v110);
      v40 = *(v30 + 24);
      v41 = *(v30 + 184);
      [v41 startObserving:v40];

      if (v37)
      {
        if (v36)
        {
          md::RouteLineSupport::resolveCurrentRouteLeg(v30);
        }

        *(v30 + 274) = 1;
      }

      if (v36)
      {
        std::unique_ptr<md::LabelRoute>::reset[abi:nn200100]((v30 + 200), 0);
        v42 = *(v30 + 208);
        for (j = *(v30 + 216); j != v42; std::unique_ptr<md::LabelRoute>::reset[abi:nn200100](j, 0))
        {
          --j;
        }

        *(v30 + 216) = v42;
        v45 = *(v30 + 376);
        v44 = *(v30 + 384);
        if (v44 != v45)
        {
          v46 = v44 - 3;
          v47 = v44 - 3;
          v48 = v44 - 3;
          do
          {
            v49 = *v48;
            v48 -= 3;
            (*v49)(v47);
            v46 -= 3;
            v50 = v47 == v45;
            v47 = v48;
          }

          while (!v50);
        }

        *(v30 + 384) = v45;
        v52 = *(v30 + 400);
        v51 = *(v30 + 408);
        if (v51 != v52)
        {
          v53 = v51 - 3;
          v54 = v51 - 3;
          v55 = v51 - 3;
          do
          {
            v56 = *v55;
            v55 -= 3;
            (*v56)(v54);
            v53 -= 3;
            v50 = v54 == v52;
            v54 = v55;
          }

          while (!v50);
        }

        *(v30 + 408) = v52;
        if (!*(v30 + 200))
        {
          v57 = [*(v30 + 24) routeInfo];
          v58 = [v57 route];

          if (v58)
          {
            if (((*(v30 + 232) + 1) & 0xFE) != 0)
            {
              v59 = *(v30 + 232) + 1;
            }

            else
            {
              v59 = 1;
            }

            *(v30 + 232) = v59;
            operator new();
          }
        }

        if (*(v30 + 208) == *(v30 + 216))
        {
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v60 = [*(v30 + 24) alternateRoutes];
          v61 = [v60 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
          if (v61)
          {
            v62 = *v124;
            do
            {
              for (k = 0; k != v61; ++k)
              {
                if (*v124 != v62)
                {
                  objc_enumerationMutation(v60);
                }

                [*(*(&v123 + 1) + 8 * k) route];
                if (objc_claimAutoreleasedReturnValue())
                {
                  if (((*(v30 + 232) + 1) & 0xFE) != 0)
                  {
                    v64 = *(v30 + 232) + 1;
                  }

                  else
                  {
                    v64 = 1;
                  }

                  *(v30 + 232) = v64;
                  operator new();
                }
              }

              v61 = [v60 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
            }

            while (v61);
          }
        }

        v65 = *(v30 + 424);
        if (v65)
        {
          v66 = *(v30 + 24);
          v67 = [v66 routeInfo];
          v68 = [v67 route];
          v69 = (*(*v65 + 56))(v65, v68);

          if (v69)
          {
            v70 = [v69 routeRibbon];
            *&v122._snappingToTransitLines = v70;
            v71 = *(v30 + 384);
            if (v71 >= *(v30 + 392))
            {
              v72 = std::vector<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLine * {__strong},geo::memory_management_mode const&>((v30 + 376), &v122._snappingToTransitLines);
            }

            else
            {
              v72 = geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v71, v70) + 3;
              *(v30 + 384) = v72;
            }

            *(v30 + 384) = v72;

            v80 = [VKRouteLineObserverForExternalFeatures alloc];
            v81 = *(*(v30 + 384) - 16);
            v82 = [(VKRouteLineObserverForExternalFeatures *)v80 initWithRouteLineSupport:v30 andRouteLine:v81];
            v83 = v82;
            v122.super.isa = v82;
            v84 = *(v30 + 408);
            if (v84 >= *(v30 + 416))
            {
              v86 = std::vector<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLineObserverForExternalFeatures * {__strong},geo::memory_management_mode const&>((v30 + 400), &v122.super.isa);
            }

            else
            {
              v85 = v82;
              *v84 = &unk_1F2A45FE0;
              v84[1] = v85;
              v86 = (v84 + 3);
            }

            *(v30 + 408) = v86;
          }

          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v87 = [*(v30 + 24) alternateRoutes];
          v88 = [v87 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
          if (v88)
          {
            v89 = *v124;
            do
            {
              v90 = 0;
              v91 = v69;
              do
              {
                if (*v124 != v89)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(v30 + 424);
                v93 = [*(*(&v123 + 1) + 8 * v90) route];
                v69 = (*(*v92 + 56))(v92, v93);

                v94 = [v69 routeRibbon];
                v120 = v94;
                v95 = *(v30 + 384);
                if (v95 >= *(v30 + 392))
                {
                  v96 = std::vector<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLine * {__strong},geo::memory_management_mode const&>((v30 + 376), &v120);
                }

                else
                {
                  v96 = geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v95, v94) + 3;
                  *(v30 + 384) = v96;
                }

                *(v30 + 384) = v96;

                v97 = [VKRouteLineObserverForExternalFeatures alloc];
                v98 = *(*(v30 + 384) - 16);
                v99 = [(VKRouteLineObserverForExternalFeatures *)v97 initWithRouteLineSupport:v30 andRouteLine:v98];
                v100 = v99;
                v118 = v99;
                v101 = *(v30 + 408);
                if (v101 >= *(v30 + 416))
                {
                  v103 = std::vector<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<VKRouteLineObserverForExternalFeatures * {__strong},geo::memory_management_mode const&>((v30 + 400), &v118);
                }

                else
                {
                  v102 = v99;
                  *v101 = &unk_1F2A45FE0;
                  v101[1] = v102;
                  v103 = (v101 + 3);
                }

                *(v30 + 408) = v103;

                ++v90;
                v91 = v69;
              }

              while (v88 != v90);
              v88 = [v87 countByEnumeratingWithState:&v123 objects:&v122._accessPointEntryName count:16];
            }

            while (v88);
          }
        }
      }

      v31 = v110;
      if (!*(v30 + 24))
      {
        v104 = *(v30 + 264);
        *(v30 + 264) = 0;

        std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(*(v30 + 48));
        *(v30 + 40) = v30 + 48;
        *(v30 + 48) = 0;
        v105 = *(v30 + 80);
        *(v30 + 64) = 0;
        *(v30 + 72) = 0;
        *(v30 + 80) = 0;
        if (v105)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v105);
        }

        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v30 + 88));
        std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::clear(v30 + 120);
        md::RouteLineSupport::clearRouteLabelFeatures(v30);
        ++*(v30 + 256);
        v31 = v110;
      }

      goto LABEL_108;
    }

    if (*(v30 + 24))
    {
      v73 = [(VKRouteContext *)v110 alternateRoutes];
      v74 = [v73 count];
      v75 = [*(v30 + 24) alternateRoutes];
      v76 = v74 != [v75 count];

      v77 = *(v30 + 24);
      v50 = v77 == 0;
      v78 = v77 != 0;
      v79 = v50;
      if ((v79 | v76))
      {
        v36 = 0;
        v37 = v78 || v76;
        goto LABEL_38;
      }

      v106 = [(VKRouteContext *)v110 alternateRoutes];
      v107 = [v106 count];
      v108 = [*(v30 + 24) alternateRoutes];
      v109 = v107 == [v108 count];

      if (!v109)
      {
        getSortedArrayOfRoutes(&v122._accessPointEntryName, v110);
        getSortedArrayOfRoutes(&v123, *(v30 + 24));
        v37 = *(&v123 + 1) - v123 != v122._accessPointExitName - v122._accessPointEntryName || memcmp(v123, v122._accessPointEntryName, *(&v123 + 1) - v123) != 0;
        *&v122._snappingToTransitLines = &v123;
        std::vector<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v122._snappingToTransitLines);
        *&v123 = &v122._accessPointEntryName;
        std::vector<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v123);
        v36 = 0;
        goto LABEL_38;
      }
    }

    v36 = 0;
    v37 = 0;
    goto LABEL_38;
  }

LABEL_108:
}

void sub_1B2AD4978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  *(v49 - 176) = &a49;
  std::vector<GEOComposedRoute * {__strong},geo::allocator_adapter<GEOComposedRoute * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v49 - 176));

  _Unwind_Resume(a1);
}

void md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::purge(uint64_t a1)
{
  *(a1 + 104) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = 0;
    do
    {
      if ((*(v2 + 56) & 1) != 0 || (v4 = *(v2 + 40)) == 0 || *(v4 + 8) == -1)
      {
        v2 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::erase((a1 + 32), v2);
      }

      else
      {
        *(v2 + 48) = a1;
        v2 = *v2;
        ++v3;
      }
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 100) = v3;

  std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear(a1);
}

void md::LabelManager::updateStyleManagerClientStyleAttributes(md::LabelManager *this)
{
  v1 = *(this + 441);
  if (!v1)
  {
    return;
  }

  v3 = *(v1 + 520);
  v4 = *(v1 + 528);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    if (!v3)
    {
      return;
    }

    v5 = *(this + 441);
    v3 = *(v5 + 520);
    v6 = *(v5 + 528);
    if (v6)
    {
      v7 = 0;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_9;
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v6 = 0;
  }

  v7 = 1;
LABEL_9:
  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v3, 0x10004u, (*(this + 3020) & 1) == 0);
  if ((v7 & 1) == 0)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2AD4DE8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::setLabelMarkerSelectionEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setLabelMarkerSelectionEnabled(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 3020) != v2)
  {
    *(v1 + 3020) = v2;
    md::LabelManager::updateStyleManagerClientStyleAttributes(v1);
    md::LabelStyleCache::stylesheetDidChange(*(v1 + 336));

    md::LabelManager::clearScene(v1, 0);
  }
}

void md::LabelStyleCache::stylesheetDidChange(std::mutex *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v2 = *&this[7].__m_.__opaque[16];
  *&this[7].__m_.__opaque[8] = 0;
  *&this[7].__m_.__opaque[16] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::lock(this);
  v4[0] = &unk_1F2A3A1D0;
  v4[3] = v4;
  md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*this[4].__m_.__opaque, v4);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](v4);
  v3[0] = &unk_1F2A3A1D0;
  v3[3] = v3;
  md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*&this[5].__m_.__opaque[48], v3);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](v3);
  std::mutex::unlock(this);
}

void sub_1B2AD4F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void md::LabelManager::setSelectedLabelMarker(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 3440) != *a2)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v4 = (a1 + 3440);
    v5 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v5))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LabelsSelectLabel", &unk_1B3514CAA, &v17, 2u);
    }

    if (*v4)
    {
      v6 = *(a1 + 240);
      v17 = 0;
      v18 = 0;
      (*(*v6 + 184))(v6, &v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }

      v7 = *(a1 + 136);
      if (v7)
      {
        v8 = *(v7 + 184);
        if (v8)
        {
          std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(v8, a1);
        }
      }
    }

    v9 = *a2;
    v10 = a2[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 3440) = v9;
    v11 = *(a1 + 3448);
    *(a1 + 3448) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      v9 = *v4;
    }

    if (v9)
    {
      (*(**(a1 + 240) + 184))(*(a1 + 240), a1 + 3440);
      v12 = *(a1 + 136);
      if (v12)
      {
        v13 = *(v12 + 184);
        if (v13)
        {
          std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(v13, a1);
        }
      }

      *(a1 + 3464) = *(a1 + 3312);
      *(a1 + 3456) = 1;
    }

    *(a1 + 3414) = 1;
    *(a1 + 3036) = 1;
    *(a1 + 3038) = 1;
    *(a1 + 3040) = 1;
    v14 = atomic_load((a1 + 3053));
    if (v14)
    {
      v15 = *(a1 + 136);
      if (v15)
      {
        v16 = *(v15 + 56);
        if (v16)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v16, a1, 9);
        }
      }
    }
  }
}

void sub_1B2AD5164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::setStyleManager(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::setStyleManager(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (*(v1 + 3528))
  {
    md::LabelManager::updateStyleManagerClientStyleAttributes(*(a1 + 8));
    v2 = *(v1 + 3528);
    v3 = *(v1 + 336);
    if (v2)
    {
      v4 = *(v2 + 24);
      v20[0] = *(v2 + 16);
      v20[1] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::StylesheetManager<gss::PropertyID>::initWithStyleSheet(v21, v20);
      v6 = v21[0];
      v5 = v21[1];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      if (v6)
      {
        v7 = *(v6 + 520);
        v8 = *(v6 + 528);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (!v7)
        {
          gss::ClientStyleState<gss::PropertyID>::init();
        }

        v9 = *(v1 + 3528);
        v10 = *(v9 + 520);
        v11 = *(v9 + 528);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        if (v10)
        {
          v12 = *(v6 + 520);
          v13 = *(v6 + 528);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v14 = *(v1 + 3528);
          v15 = *(v14 + 520);
          v16 = *(v14 + 528);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::ClientStyleState<gss::PropertyID>::setStateWithClientStyleState(v12, v15);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }
        }
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v3 = *(v1 + 336);
  }

  std::mutex::lock(v3);
  std::mutex::lock((v3 + 64));
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(v3 + 192);
  *(v3 + 184) = v6;
  *(v3 + 192) = v5;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  std::mutex::unlock((v3 + 64));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 240);
  std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 208));
  *(v3 + 308) = 0;
  *(v3 + 300) = 0;
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 352);
  std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 320));
  *(v3 + 420) = 0;
  *(v3 + 412) = 0;
  v18 = *(v3 + 456);
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(v3 + 472);
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  std::mutex::unlock(v3);
  md::LabelStyleContext::initialize(*(v3 + 136));
}

void sub_1B2AD5684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 256;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A2F398;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL md::LabelManager::updateDisplayStyle(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 336);
  v11 = a2;
  std::mutex::lock(v4);
  v5 = gss::DisplayStyle::operator==((v4 + 161), &v11);
  if (v5)
  {
    std::mutex::unlock(v4);
  }

  else
  {
    *(v4 + 161) = a2;
    v13[0] = &unk_1F2A3A218;
    v13[1] = a2;
    v13[3] = v13;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 264), v13);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](v13);
    v12[0] = &unk_1F2A3A218;
    v12[1] = a2;
    v12[3] = v12;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 376), v12);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](v12);
    std::mutex::unlock(v4);
    v7 = *(a1 + 168);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      (*(*v10 + 8))(v10);
    }
  }

  return !v5;
}

void sub_1B2AD5B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t md::LabelWorldTraits::styleManagerDidChange(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    v1 = this;
    this = md::LabelSettingsStyleCache::muninPointStyle(*(*(*(this + 8) + 336) + 200));
    v2 = *(this + 40);
    if (v2 == 0.0)
    {
      v2 = 400.0;
    }

    if (*(v1 + 48) != v2)
    {
      *(v1 + 48) = v2;
      v3 = *(*(v1 + 8) + 168);
      v4 = *v3;
      v5 = v3[1];
      while (v4 != v5)
      {
        v6 = *v4++;
        this = (*(*v6 + 40))(v6);
      }
    }
  }

  return this;
}

void md::LabelCustomFeatureProvider::refreshFeatures(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    md::LabelClusterProvider::resetClusters(*(a1 + 232));
    md::LabelCustomFeatureProvider::clearFeatures(a1, 1);
  }

  *(*a1 + 232) = 1;

  md::LabelCustomFeatureProvider::featuresDidChangeForRect(a1);
}

void md::LabelCustomFeatureSupport::refreshFeatures(md::LabelCustomFeatureSupport *this)
{
  v1 = *(this + 9);
  v2 = this + 80;
  if (v1 != (this + 80))
  {
    do
    {
      md::LabelCustomFeatureProvider::refreshFeatures((v1 + 5));
      v3 = v1[1];
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
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void md::LabelCustomFeatureProvider::featuresDidChangeForRect(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (a1 + 72);
  if (v1 != (a1 + 72))
  {
    do
    {
      if (GEOMapRectIntersectsRect())
      {
        *(v1 + 184) = 0;
        v4 = v1[16];
        if (v4 != v1[17])
        {
          md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(*a1, *(*v4 + 80), *(*v4 + 88));
        }

        v5 = v1[21];
        md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(a1, v5, 0);

        v6 = v1[21];
        if (v6)
        {
          v1[21] = 0;
        }
      }

      v7 = v1[1];
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
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void md::LabelCustomFeatureProvider::clearFeatures(md::LabelCustomFeatureProvider *this, char a2)
{
  v4 = *(this + 8);
  v5 = this + 72;
  if (v4 != this + 72)
  {
    do
    {
      v4[184] = 0;
      v6 = *(v4 + 21);
      if (v6)
      {
        *(v4 + 21) = 0;
      }

      v7 = *(v4 + 1);
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
          v8 = *(v4 + 2);
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(this + 17);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = *(this + 26);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = (this + 208);
  do
  {
    v14 = v12[4];
    v15 = v14 >= v11;
    v16 = v14 < v11;
    if (v15)
    {
      v13 = v12;
    }

    v12 = v12[v16];
  }

  while (v12);
  if (v13 == (this + 208) || v11 < v13[4])
  {
LABEL_20:

LABEL_21:
    v17 = *(this + 17);
    v34 = 0;
    if (v17)
    {
      *(this + 17) = 0;
    }

    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    v21 = 0;
    goto LABEL_24;
  }

  v18 = v13[5];
  v19 = v13[6];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = HIDWORD(v13[7]);
  v34 = HIDWORD(v13[7]);
  std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::erase(this + 200, v13);
  v21 = 1;
LABEL_24:
  v22 = (this + 200);
  v23 = *(this + 25);
  v24 = (this + 208);
  if (v23 != (this + 208))
  {
    do
    {
      (*(*v23[5] + 88))(v23[5]);
      v25 = v23[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v23[2];
          v9 = *v26 == v23;
          v23 = v26;
        }

        while (!v9);
      }

      v23 = v26;
    }

    while (v26 != v24);
  }

  std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(*(this + 26));
  *(this + 28) = 0;
  *(this + 25) = v24;
  *(this + 26) = 0;
  if (v21)
  {
    v27 = *(this + 17);
    v28 = v27;
    v29 = *(this + 26);
    v30 = (this + 208);
    if (v29)
    {
      while (1)
      {
        while (1)
        {
          v30 = v29;
          v31 = v29[4];
          if (v27 >= v31)
          {
            break;
          }

          v29 = *v30;
          v24 = v30;
          if (!*v30)
          {
            goto LABEL_39;
          }
        }

        if (v31 >= v27)
        {
          break;
        }

        v29 = v30[1];
        if (!v29)
        {
          v24 = v30 + 1;
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      v32 = mdm::zone_mallocator::instance(v27);
      v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(v32);
      v33[4] = v28;
      v33[5] = v18;
      v33[6] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33[7] = __PAIR64__(v34, v20);
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v22, v30, v24, v33);
      v28 = 0;
    }
  }

  if (v19)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }
}

void sub_1B2AD61D4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void md::LabelClusterProvider::resetClusters(md::LabelClusterProvider *this)
{
  *(this + 64) = 0;
  v2 = *(this + 14);
  if (v2)
  {
    *(v2 + 8) = 0;
    v3 = *(this + 15);
    *(this + 14) = 0;
    *(this + 15) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 10) = 0;
  }
}

void std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>((a1 + 4));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(v3, a1);
  }
}

void md::MapNavLabeler::styleManagerDidChange(md::MapNavLabeler *this)
{
  v2 = *(this + 7);
  v3 = *(*(this + 3) + 336);
  v5 = *(v3 + 184);
  v4 = *(v3 + 192);
  v6 = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v2 setStyleManager:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *(this + 826) = 1;
}

void sub_1B2AD6320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0,std::allocator<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v5 = *(*(v2 + 336) + 161);
  result = gss::DisplayStyle::operator==((a1 + 16), &v5);
  if (*(a1 + 24) == 1)
  {
    if ((*(v2 + 3407) & result & 1) == 0)
    {
      v4 = *(a1 + 16);

      return md::LabelManager::startStylesheetAnimation(v2, v4);
    }
  }

  else if ((result & 1) == 0)
  {
    md::LabelManager::startStylesheetAnimation(v2, *(a1 + 16));
    *(v2 + 3407) = 0;

    return md::LabelManager::restyleActiveLabels(v2);
  }

  return result;
}

uint64_t md::LabelManager::startStylesheetAnimation(uint64_t a1, uint64_t a2)
{
  *(a1 + 3405) = 0;
  v4 = (*(a1 + 3588) - 1) < 4;
  *(a1 + 3409) = *(a1 + 3410) == v4;
  *(a1 + 3410) = v4;
  (*(**(a1 + 240) + 144))(*(a1 + 240));
  *(a1 + 3407) = 257;
  v5 = *(a1 + 3336);
  if ((v5 + 1) > 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 3336) = v6;
  result = md::LabelManager::updateDisplayStyle(a1, a2);
  v8 = atomic_load((a1 + 3053));
  if (v8)
  {
    v9 = *(a1 + 136);
    if (v9)
    {
      result = *(v9 + 56);
      if (result)
      {

        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, a1, 9);
      }
    }
  }

  return result;
}

uint64_t md::CompositeLabeler::stylesheetAnimationDidStart(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 144))(v3);
  }

  return this;
}

void md::StandardLabeler::stylesheetAnimationDidStart(md::StandardLabeler *this)
{
  if ((*(*(this + 3) + 3409) & 1) == 0)
  {
    md::LabelPool::resetActiveLabels(*(this + 6));
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 9);

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 13);
  }
}

uint64_t md::LabelManager::restyleActiveLabels(md::LabelManager *this)
{
  v2 = *(this + 34);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100]((v2 + 24));
  *(v2 + 60) = 1;
  v3 = *(this + 37);
  v4 = *(v3 + 12);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  *(v3 + 12) = v6;
  if (v5)
  {
    *(v3 + 12) = 0x100000002;
    v6 = 2;
  }

  atomic_store(v6, (v3 + 8));
  (*(**(this + 30) + 152))(*(this + 30));
  md::LabelTextDataLoader::finishBatch(*(this + 34));
  v7 = *(**(*(this + 21) + 72) + 8);

  return v7();
}

uint64_t md::CompositeLabeler::restyleActiveLabels(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 152))(v3);
  }

  return this;
}

void md::MapNavLabeler::restyleActiveLabels(md::MapNavLabeler *this)
{
  [*(this + 7) styleManagerDidChange:*(*(this + 3) + 3407)];
  md::RouteAnnotationSupport::restyleFeatures(*(this + 9));
  v2 = *(this + 8);

  md::RouteLineSupport::restyleFeatures(v2);
}

void md::LabelFeatureStyler::restyleFeatures(_DWORD *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  memset(&v15, 0, sizeof(v15));
  v2 = atomic_load((*a1 + 3428));
  memset(&v14, 0, sizeof(v14));
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      v6 = *v3;
      v13 = v6;
      if (v6[32] != a1[3])
      {
        if ((*(*v6 + 264))(v6) == 7)
        {
          (*(*v6 + 552))(v6, *a1);
        }

        else
        {
          v7 = v16;
          for (i = v17; i != v7; i -= 2)
          {
            v9 = *(i - 1);
            if (v9)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v9);
            }
          }

          v17 = v7;
          if (!(*(*v6 + 64))(v6))
          {
            (*(*v6 + 544))(v6, v2);
          }

          (*(*v6 + 584))(v6, &v16, *(*a1 + 336) + 184);
          if (v16 != v17)
          {
            std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::assign(&v14, (v17 - v16) >> 4, &v13);
            v10 = v15.__vftable;
            for (j = v15.__shared_owners_; j != v10; j -= 16)
            {
              v12 = *(j - 8);
              if (v12)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v12);
              }
            }

            v15.__shared_owners_ = v10;
            md::LabelStyleCache::requestStyles(*(*a1 + 336), &v16, &v15, &v14);
            (*(*v6 + 592))(v6);
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14.__vftable = &v15;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v15.__vftable = &v16;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
}

void sub_1B2AD69D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = &a14;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a14 = &a18;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);
  _Unwind_Resume(a1);
}

void md::RouteAnnotationSupport::restyleFeatures(md::RouteAnnotationSupport *this)
{
  md::LabelFeatureStyler::restyleFeatures(*(*this + 296), this + 144);
  v2 = *this;
  *(v2 + 3034) = 1;
  v3 = atomic_load((v2 + 3053));
  if (v3)
  {
    v4 = *(v2 + 136);
    if (v4)
    {
      v5 = *(v4 + 56);
      if (v5)
      {

        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v5, v2, 9);
      }
    }
  }
}

void md::RouteLineSupport::restyleFeatures(char **this)
{
  v1 = this;
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = this[11];
  v3 = this[12];
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (v3 == v2)
  {
    v6 = 0;
    v4 = 0;
  }

  else
  {
    this = std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v34, (v3 - v2) >> 4);
    v4 = v35;
    do
    {
      *v4 = *v2;
      v5 = *(v2 + 1);
      *(v4 + 1) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v2 += 16;
      v4 += 16;
    }

    while (v2 != v3);
    v35 = v4;
    v6 = v34;
  }

  v8 = *(v1 + 39);
  v7 = *(v1 + 40);
  v9 = v7 - v8;
  v10 = (v7 - v8) >> 4;
  if (v10 >= 1)
  {
    if (v36 - v4 >= v9)
    {
      for (; v8 != v7; v4 += 16)
      {
        *v4 = *v8;
        v17 = *(v8 + 1);
        *(v4 + 1) = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v8 += 16;
      }

      v35 = v4;
    }

    else
    {
      v11 = v4 - v6;
      v12 = v10 + ((v4 - v6) >> 4);
      if (v12 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v36 - v6;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v33 = v37;
      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(this);
        v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v15, v14);
      }

      else
      {
        v16 = 0;
      }

      v18 = &v16[16 * (v11 >> 4)];
      v32 = &v16[16 * v14];
      v19 = &v18[v9];
      v20 = v18;
      do
      {
        *v20 = *v8;
        v21 = *(v8 + 1);
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v8 += 16;
      }

      while (v20 != v19);
      memcpy(&v18[v9], v4, v35 - v4);
      v22 = &v19[v35 - v4];
      v35 = v4;
      v23 = v4 - v34;
      v24 = &v18[-(v4 - v34)];
      memcpy(v24, v34, v23);
      v25 = v34;
      v26 = v36;
      v34 = v24;
      v35 = v22;
      v36 = v32;
      v31.__shared_weak_owners_ = v25;
      v32 = v26;
      v31.__vftable = v25;
      v31.__shared_owners_ = v25;
      std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v31);
    }
  }

  md::LabelFeatureStyler::styleExternalFeatures(*(*(v1 + 1) + 296), &v34);
  v27 = *(v1 + 1);
  *(v27 + 3034) = 1;
  v28 = atomic_load((v27 + 3053));
  if (v28)
  {
    v29 = *(v27 + 136);
    if (v29)
    {
      v30 = *(v29 + 56);
      if (v30)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v30, v27, 9);
      }
    }
  }

  v31.__vftable = &v34;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
}

void sub_1B2AD6CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a10 = &a16;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature> const*,std::shared_ptr<md::LabelFeature> const*>(mdm::zone_mallocator *a1, void *a2, void *a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v6, 1);
  *a1 = result;
  *(a1 + 1) = result;
  for (*(a1 + 2) = result + 2; a2 != a3; result += 2)
  {
    v8 = a2[1];
    *result = *a2;
    result[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  *(a1 + 1) = result;
  return result;
}

void md::StandardLabeler::restyleActiveLabels(md::StandardLabeler *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(this + 6);
  v3 = (v2 + 200);
  std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*(v2 + 200));
  *(v2 + 192) = v2 + 200;
  v4 = v2 + 192;
  *(v4 + 24) = 0;
  *v3 = 0;
  v5 = *(v4 + 32);
  if (v5 != (v4 + 40))
  {
    do
    {
      v6 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::__find_equal<std::pair<unsigned long long,md::LabelIdentifier>>(v4, &v45, v5[4], *(v5 + 10));
      if (!*v6)
      {
        v7 = v6;
        v8 = mdm::zone_mallocator::instance(v6);
        v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(v8);
        v9[2] = *(v5 + 2);
        *(v9 + 6) = v5[6];
        v10 = v5[7];
        *(v9 + 7) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
        }

        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v4, v45, v7, v9);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != (v4 + 40));
  }

  (*(*this + 440))(this);
  md::LabelCustomFeatureSupport::updateStylesForFeatures(*(this + 4));
  v14 = *(this + 5);
  if (*(v14 + 8) != *(v14 + 16))
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(*v14 + 296), (v14 + 8));
  }

  v15 = *(this + 6);
  v16 = v15[31];
  if (v16)
  {
    v40 = *(this + 3);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v17 = std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::reserve(&v41, v16);
    v18 = v15[28];
    v39 = v15;
    v19 = v15 + 29;
    if (v18 != v15 + 29)
    {
      v20 = v42;
      do
      {
        v21 = *(v18[6] + 8);
        if (v20 >= v43)
        {
          v22 = (v20 - v41) >> 3;
          if ((v22 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v23 = (v43 - v41) >> 2;
          if (v23 <= v22 + 1)
          {
            v23 = v22 + 1;
          }

          if (v43 - v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          v49 = &v44;
          if (v24)
          {
            v25 = mdm::zone_mallocator::instance(v17);
            v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v25, v24);
          }

          else
          {
            v26 = 0;
          }

          v28 = &v26[8 * v24];
          v27 = &v26[8 * v22];
          *v27 = v21;
          v20 = (v27 + 8);
          v29 = &v27[-(v42 - v41)];
          memcpy(v29, v41, v42 - v41);
          v30 = v41;
          v31 = v43;
          v41 = v29;
          v42 = v20;
          v43 = v28;
          v47 = v30;
          v48 = v31;
          v45 = v30;
          v46 = v30;
          v17 = std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(&v45);
        }

        else
        {
          v20->__vftable = v21;
          v20 = (v20 + 8);
        }

        v42 = v20;
        v32 = v18[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v18[2];
            v13 = *v33 == v18;
            v18 = v33;
          }

          while (!v13);
        }

        v18 = v33;
      }

      while (v33 != v19);
    }

    md::LabelFeatureStyler::restyleFeatures(*(v40 + 296), &v41);
    v15 = v39;
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v41);
  }

  v34 = v15[88];
  if (v34)
  {
    v35 = *(v34 + 16);
    v41 = *(v34 + 8);
    v42 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature> const*,std::shared_ptr<md::LabelFeature> const*>(&v45, &v41, &v43);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }

    md::LabelFeatureStyler::styleExternalFeatures(*(v15[1] + 296), &v45);
    v41 = &v45;
    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v41);
  }

  if (*(*(this + 3) + 3407) == 1)
  {

    md::StandardLabeler::layoutDisplayableLabelsForStaging(this);
  }

  else
  {
    v36 = *(this + 9);
    v37 = *(this + 10);
    while (v36 != v37)
    {
      v38 = *v36;
      v36 += 2;
      *(v38 + 52) = 0;
    }
  }
}

void sub_1B2AD7160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelFeatureStyler::styleExternalFeatures(unsigned int *a1, uint64_t **a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v6 = std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::reserve(&v23, (v3 - v2) >> 4);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        v9 = *v7;
        if (*(*v7 + 128) != a1[3])
        {
          v10 = v24;
          if (v24 >= v25)
          {
            v12 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3);
            v13 = v12 + 1;
            if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v25 - v23) >> 3) > v13)
            {
              v13 = 0x5555555555555556 * ((v25 - v23) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v25 - v23) >> 3) >= 0x555555555555555)
            {
              v14 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v14 = v13;
            }

            v22[4] = v26;
            if (v14)
            {
              v15 = mdm::zone_mallocator::instance(v6);
              v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v15, v14);
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[24 * v12];
            v18 = &v16[24 * v14];
            *(v17 + 1) = 0;
            *(v17 + 2) = 0;
            *v17 = v9;
            v11 = v17 + 24;
            v19 = &v17[-(v24 - v23)];
            memcpy(v19, v23, v24 - v23);
            v20 = v23;
            v21 = v25;
            v23 = v19;
            v24 = v11;
            v25 = v18;
            v22[2] = v20;
            v22[3] = v21;
            v22[0] = v20;
            v22[1] = v20;
            v6 = std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(v22);
          }

          else
          {
            v24[1] = 0;
            v10[2] = 0;
            v11 = v10 + 3;
            *v10 = v9;
          }

          v24 = v11;
        }

        v7 += 2;
      }

      while (v7 != v8);
    }

    if (v23 != v24)
    {
      md::LabelFeatureStyler::styleLabelFeatures(a1, &v23, 1u, 0, *(*(*a1 + 152) + 64));
    }

    std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v23);
  }
}

void sub_1B2AD738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelTransitSupport::updateStylesForFeatures(md::LabelTransitSupport *this)
{
  if (*(this + 16) != *(this + 17))
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(*(this + 2) + 296), this + 16);
  }

  if (*(this + 30) != *(this + 31))
  {
    v2 = *(*(this + 2) + 296);

    md::LabelFeatureStyler::styleExternalFeatures(v2, this + 30);
  }
}

void md::LabelCustomFeatureSupport::updateStylesForFeatures(std::__shared_weak_count *this)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  md::LabelCustomFeatureSupport::populateAllLabelFeatures(this, &v3);
  if (v3.__vftable != v3.__shared_owners_)
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(this->__shared_weak_owners_ + 296), &v3);
  }

  v2 = &v3;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::__function::__func<md::LabelManager::stylesheetDidTransition(void)::$_0,std::allocator<md::LabelManager::stylesheetDidTransition(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 3407) == 1)
  {
    *(v1 + 3407) = 0;
    if (*(v1 + 3408) == 1)
    {
      *(v1 + 3408) = 0;
      md::LabelManager::restyleActiveLabels(v1);
    }

    (*(**(v1 + 240) + 160))(*(v1 + 240));
  }

  v2 = *(v1 + 3528);
  if (v2)
  {
    v3 = *(v2 + 520);
    v4 = *(v2 + 528);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v3);
    updated = md::LabelManager::updateDisplayStyle(v1, v5);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (updated)
    {
      *(v1 + 3405) = 1;
      v7 = atomic_load((v1 + 3053));
      if (v7)
      {
        v8 = *(v1 + 136);
        if (v8)
        {
          v9 = *(v8 + 56);
          if (v9)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v9, v1, 9);
          }
        }
      }
    }
  }

  v10 = atomic_load((v1 + 3053));
  if (v10)
  {
    v11 = *(v1 + 136);
    if (v11)
    {
      v12 = *(v11 + 56);
      if (v12)
      {

        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v12, v1, 9);
      }
    }
  }
}

void sub_1B2AD75FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::stylesheetDidChange(void)::$_0,std::allocator<md::LabelManager::stylesheetDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 3528);
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 520);
  v4 = *(v2 + 528);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_16;
    }

    v6 = 0;
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = *(v1 + 3528);
  v3 = *(v5 + 520);
  v6 = *(v5 + 528);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = 0;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  v8 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v3);
  updated = md::LabelManager::updateDisplayStyle(v1, v8);
  if ((v7 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (updated)
  {
    *(v1 + 3405) = 1;
    v10 = atomic_load((v1 + 3053));
    if (v10)
    {
      v11 = *(v1 + 136);
      if (v11)
      {
        v12 = *(v11 + 56);
        if (v12)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v12, v1, 9);
        }
      }
    }
  }

LABEL_16:
  md::LabelStyleCache::stylesheetDidChange(*(v1 + 336));
  v13 = atomic_load((v1 + 3053));
  if (v13)
  {
    v14 = *(v1 + 136);
    if (v14)
    {
      v15 = *(v14 + 56);
      if (v15)
      {

        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v15, v1, 9);
      }
    }
  }
}

void sub_1B2AD7738(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 352);
  *(v1 + 344) = v2;
  *(v1 + 352) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t std::__function::__func<md::LabelManager::setEmphasis(gss::Emphasis)::$_0,std::allocator<md::LabelManager::setEmphasis(gss::Emphasis)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != *(v1 + 3016))
  {
    *(v1 + 3016) = v2;
    v3 = atomic_load((v1 + 3425));
    if (v3)
    {
      v4 = 1;
    }

    else if (*(v1 + 196) == 5)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2 * (*(v1 + 3016) == 1);
    }

    v5 = (v1 + 3428);
    v6 = atomic_load(v5);
    if (v6 != v4)
    {
      atomic_store(v4, v5);
    }
  }

  return result;
}

uint64_t md::LabelManager::queueRestyle(uint64_t this, char a2)
{
  *(this + 3405) = 1;
  *(this + 3406) |= a2;
  v2 = atomic_load((this + 3053));
  if (v2)
  {
    v3 = this;
    v4 = *(this + 136);
    if (v4)
    {
      this = *(v4 + 56);
      if (this)
      {
        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v3, 9);
      }
    }
  }

  return this;
}

uint64_t std::__function::__func<md::LabelManager::setGroundMode(gss::GroundMode)::$_0,std::allocator<md::LabelManager::setGroundMode(gss::GroundMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3017))
  {
    *(result + 3017) = v3;
    return md::LabelManager::queueRestyle(result, 1);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::setNewInterfaceEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setNewInterfaceEnabled(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3044))
  {
    *(result + 3044) = v3;
    return md::LabelManager::queueRestyle(result, 1);
  }

  return result;
}

_BYTE *std::__function::__func<md::LabelManager::setShowingTrafficCasing(BOOL)::$_0,std::allocator<md::LabelManager::setShowingTrafficCasing(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != result[3024])
  {
    result[3024] = v3;
    if (result[3022] == 1)
    {
      result[3038] = 1;
      result[3040] = 1;
      return md::LabelManager::setNeedsLayout(result, 1);
    }
  }

  return result;
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      if (*(a1 + 8))
      {
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2AD7A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  else
  {
    v2 = v3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void md::LabelClusterProvider::initializeSourceAnnotations(md::LabelClusterProvider *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((*(this + 129) & 1) == 0)
  {
    v2 = *(this + 1);
    v3 = *(this + 4);
    v4 = [v3 annotationsInMapRect:{*MEMORY[0x1E69A1688], *(MEMORY[0x1E69A1688] + 8), *(MEMORY[0x1E69A1688] + 16), *(MEMORY[0x1E69A1688] + 24)}];
    v5 = md::LabelCustomFeatureSupport::filterAnnotations(v2, v4);
    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 48, v5);

    *(this + 129) = 1;
    if (*(this + 130) == 1)
    {
      v6 = *(*(*(*(this + 2) + 336) + 200) + 64);
      if (!v6)
      {
        operator new();
      }

      v7 = *v6;
      if (*v6 >= 0.01)
      {
        v36 = v6[1];
        v8 = *(*(this + 2) + 424);
        v9 = v8[270];
        v10 = v8[268];
        v11 = v8[271];
        v12 = v8[269];
        v13 = v8[11];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v14 = *(this + 7);
        v15 = [v14 countByEnumeratingWithState:&v38 objects:&v37 count:16];
        if (v15)
        {
          v16 = *v39;
          v35 = (fminf(v11 - v12, v9 - v10) / v13) * v7;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v38 + 1) + 8 * i) feature];
              v19 = [v18 pointFeature];

              v20 = *(v19 + 240);
              v21 = v20;
              if (v20)
              {
                [v20 southLat];
                v23 = v22;
                [v21 westLng];
                v25 = v24;
                v26 = tan(v23 * 0.00872664626 + 0.785398163);
                v27 = log(v26);
                [v21 northLat];
                v29 = v28;
                [v21 eastLng];
                v31 = v30;
                v32 = tan(v29 * 0.00872664626 + 0.785398163);
                v33 = log(v32);
                v34 = log2(v35 / (fmax((v31 - v25) * 0.00277777778, (v33 - v27) * 0.159154943) * 512.0));
                *(v19 + 80) = fmaxf(fminf(v36 + v34, 252.0), 0.0);
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v38 objects:&v37 count:16];
          }

          while (v15);
        }
      }
    }
  }
}

void sub_1B2AD7F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

id md::LabelCustomFeatureSupport::filterAnnotations(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
  v3 = *(*(a1 + 16) + 1664);
  v16 = v3;
  if (v3)
  {
    v4 = *(v3 + 34) != 0;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v15;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 feature];
        if ([v9 isPointFeature])
        {
          if (!v4 || (v10 = [v9 venueID], v11 = objc_msgSend(v9, "venueBuildingID"), v12 = objc_msgSend(v9, "venueLevelID"), v13 = objc_msgSend(v9, "venueFloorOrdinal"), !v10) || !v12 || md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v16, v11) == v13)
          {
            [v17 addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v17;
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void md::LabelSettingsStyleCache::styleQueryForAttributes(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v5, a3);
  gss::FeatureAttributeSet::sort(v5[0], v5[1]);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(a1, a2, v5);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v5);
}

void sub_1B2AD830C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

int *gss::RenderStyle<gss::PropertyID>::styleValueForKey<float>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
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
          return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
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

  return gss::defaultValueForKey<gss::PropertyID,float>(a2);
}

int *gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(int a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (a2 == 2)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = *v7;
      LODWORD(v7) = *v7 == 1.0;
      if (*(a3 + 10) == 1 && v8 != 0.0 && v8 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v10 = (a3 + v7 + 11);
  }

  else
  {
    v10 = (a3 + 12);
  }

  v11 = *v10;
  if (v11 != 2)
  {
    return gss::RenderStyle<gss::PropertyID>::styleValueForKey<float>(a3, a1, v11, a4);
  }

LABEL_12:
  v14 = 1;
  v13 = 1;
  gss::RenderStyle<gss::PropertyID>::styleValueForKey<float>(a3, a1, 0, &v14);
  result = gss::RenderStyle<gss::PropertyID>::styleValueForKey<float>(a3, a1, 1u, &v13);
  if (a4)
  {
    *a4 = (v14 | v13) & 1;
  }

  return result;
}

void *std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::clear[abi:nn200100](void *result)
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

uint64_t md::MapNavLabeler::prepareForLayoutForStaging(md::MapNavLabeler *this, const LabelUpdateOptions *a2)
{
  result = (*(*this + 360))(this, a2);
  if (result)
  {
    v4 = *(this + 7);

    return [v4 prepareForLayoutForStaging];
  }

  return result;
}

uint64_t md::CompositeLabeler::prepareForLayoutForStaging(uint64_t this, const LabelUpdateOptions *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = (*(*v5 + 40))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

void md::LabelSettingsStyleCache::styleQueryForCategory(uint64_t *a1, uint64_t *a2, __int16 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  LODWORD(v5) = 65611;
  WORD2(v5) = a3;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v6, &v5, 1uLL);
  md::LabelSettingsStyleCache::styleQueryForAttributes(a1, *a2, v6);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
}

void sub_1B2AD8724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *gss::PropertySetValueHelper<gss::PropertyID,std::string>::value(unsigned __int16 a1, uint64_t a2)
{
  v3 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((a2 + 96), a1);
  if (v3 != *(a2 + 108))
  {
    return *(*(a2 + 96) + *(a2 + 104) + 16 * v3 + 8);
  }

  gss::PropertySetDefaultStringValue(v3);
  return &gss::PropertySetDefaultStringValue(void)::defaultStringValue;
}

void gss::RenderStyleHelper<gss::PropertyID,std::string>::valueForKey(std::string *a1, unsigned __int16 a2, int a3, uint64_t a4, _BYTE *a5)
{
  if (a3 == 2)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a4 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v12 = v10 < 1.0;
LABEL_13:
        v24 = 1;
        v23 = 1;
        v15 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<std::string>(a4, a2, 0, &v24);
        v16 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<std::string>(a4, a2, 1u, &v23);
        if (a5)
        {
          *a5 = (v24 | v23) & 1;
        }

        if (v12)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        if ((*(v17 + 23) & 0x80000000) == 0)
        {
          v18 = *v17;
          v19 = v17[2];
LABEL_22:
          a1->__r_.__value_.__r.__words[2] = v19;
          *&a1->__r_.__value_.__l.__data_ = v18;
          return;
        }

        std::string::__init_copy_ctor_external(a1, *v17, v17[1]);
        return;
      }
    }

    v13 = (a4 + v9 + 11);
  }

  else
  {
    v13 = (a4 + 12);
  }

  v14 = *v13;
  if (v14 == 2)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v20 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<std::string>(a4, a2, v14, a5);
  if ((*(v20 + 23) & 0x80000000) == 0)
  {
    v18 = *v20;
    v19 = v20[2];
    goto LABEL_22;
  }

  v21 = *v20;
  v22 = v20[1];

  std::string::__init_copy_ctor_external(a1, v21, v22);
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKey<std::string>(uint64_t a1, unsigned __int16 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

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
          goto LABEL_12;
        }
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(v5 + 72);
  if (!v12 || (v11 = *v12, geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) == *(v11 + 6)))
  {
LABEL_9:
    if (a4)
    {
      *a4 = 0;
    }

    return &gss::defaultValueForKey<gss::PropertyID,std::string>(gss::PropertyID)::_defaultValue;
  }

LABEL_12:

  return gss::PropertySetValueHelper<gss::PropertyID,std::string>::value(a2, v11);
}

uint64_t md::LabelManager::synchStagingWithDisplay(md::FontTrackingCache **this)
{
  md::FontTrackingCache::updateForDisplay(this[39]);
  v2 = *(*this[30] + 56);

  return v2();
}

uint64_t ggl::Buffer::Buffer(uint64_t result, char a2, char a3, uint64_t a4)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *result = &unk_1F2A5D420;
  *(result + 36) = a2;
  *(result + 37) = 3;
  *(result + 38) = a3;
  *(result + 39) = 0;
  *(result + 40) = a4;
  return result;
}

void *md::LabelGGLResourceCopier::uploadBuffer(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  result = mre::GGLResourceStore::getBufferStorage(*(a1 + 24), a2);
  if (result)
  {
    if (*result)
    {
      v6 = (***(a1 + 32))(*(a1 + 32));
      result = md::FrameGraph::renderQueueForPass(*(v6 + 8), *(a1 + 8));
      if (result)
      {
        if (*(result[2] + 8 * *(a1 + 9)))
        {
          v10 = *a3;
          v11 = *(a3 + 2);
          std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, a3 + 24);
          if (v13)
          {
            if (v13 == v12)
            {
              v8 = v7;
              (*(*v13 + 24))(v13, v7);
            }

            else
            {
              v8 = v13;
              v13 = 0;
            }
          }

          else
          {
            v8 = 0;
          }

          v9 = 0;
          operator new();
        }
      }
    }
  }

  return result;
}

void sub_1B2AD90C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](&a33);
  std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](&a25);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v34);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v33);
  _Unwind_Resume(a1);
}

uint64_t mre::GGLResourceStore::getBufferStorage(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock_shared((a1 + 272));
  v4 = geo::packed_array<mre::BufferStorage,geo::handle<mre::Buffer>>::find((a1 + 904), a2);
  if (*(a1 + 960) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__shared_mutex_base::unlock_shared((a1 + 272));
  return v5;
}

uint64_t std::__function::__func<ta2::TextureAtlas::prepareClearBuffer(void)::$_0,std::allocator<ta2::TextureAtlas::prepareClearBuffer(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A16EF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *ggl::BufferLoadItem::BufferLoadItem(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a5;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100]((a1 + 4), a6);
  return a1;
}

void std::__function::__func<ta2::TextureAtlas::prepareClearBuffer(void)::$_0,std::allocator<ta2::TextureAtlas::prepareClearBuffer(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__function::__func<md::LabelGGLResourceCopier::uploadBuffer(geo::handle<mre::Buffer>,mre::BufferUploadDescriptor &&)::$_0,std::allocator<mre::BufferUploadDescriptor &&>,void ()(ggl::BufferLoadItem const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 32);

  operator delete(a1);
}

void md::ClientDrapedPolygonRenderLayer::layout(ggl::zone_mallocator **this, const md::LayoutContext *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0xC97B9E962ADF4AD4);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xC97B9E962ADF4AD4) && (v13 = *(v5 + 32)) != 0)
  {
    v14 = *v13;
    v15 = v13[1];
    while (v14 != v15)
    {
      if (*v14 == 11)
      {
        if (v14 != v15 && *(v14 + 8))
        {
          goto LABEL_3;
        }

        return;
      }

      v14 += 16;
    }
  }

  else
  {
LABEL_3:
    md::ElevatedPolygonRenderResources::resetPools(this[60]);
    v6 = this[60];
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v6 + 107));
    *(v6 + 106) = v6 + 856;
    *(v6 + 856) = 0u;
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x1B9039CBDAB12E5CuLL);
    if (v7 && (v12 = v7[5], *(v12 + 8) == 0x1B9039CBDAB12E5CLL))
    {
      v8 = *(v12 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = this[34];
    v10 = this[35];
    while (v9 != v10)
    {
      v11 = *v9;
      if (*(*v9 + 464) == 1)
      {
        md::ClientDrapedPolygonRenderLayer::_layoutDrapedTileOverlay(this, a2, v8, *v9, 0);
        if (*(v8 + 8))
        {
          md::ClientDrapedPolygonRenderLayer::_layoutDrapedTileOverlay(this, a2, v8, v11, 1);
        }
      }

      v9 = (v9 + 8);
    }
  }
}

ggl::zone_mallocator *md::PostchainRenderLayer::layout(md::PostchainRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(this + 5) + 24);
  v8 = +[VKDebugSettings sharedSettings];
  v9 = [v8 enableDOF];

  if (v9)
  {
    v10 = *(*(*(this + 5) + 24) + 8);
    v11 = md::FrameGraph::renderQueueForPass(v10, *(this + 48));
    if (v11)
    {
      v12 = *(*(v11 + 16) + 8 * *(this + 49));
    }

    else
    {
      v12 = 0;
    }

    v13 = md::FrameGraph::renderQueueForPass(v10, *(this + 60));
    if (v13)
    {
      v170 = *(*(v13 + 16) + 8 * *(this + 61));
    }

    else
    {
      v170 = 0;
    }

    v14 = md::FrameGraph::renderQueueForPass(v10, *(this + 50));
    if (v14)
    {
      v15 = *(*(v14 + 16) + 8 * *(this + 51));
    }

    else
    {
      v15 = 0;
    }

    v16 = md::FrameGraph::renderQueueForPass(v10, *(this + 52));
    if (v16)
    {
      v17 = *(*(v16 + 16) + 8 * *(this + 53));
    }

    else
    {
      v17 = 0;
    }

    v18 = md::FrameGraph::renderQueueForPass(v10, *(this + 54));
    if (v18)
    {
      v166 = *(*(v18 + 16) + 8 * *(this + 55));
    }

    else
    {
      v166 = 0;
    }

    v19 = md::FrameGraph::renderQueueForPass(v10, *(this + 56));
    if (v19)
    {
      v168 = *(*(v19 + 16) + 8 * *(this + 57));
    }

    else
    {
      v168 = 0;
    }

    v20 = md::FrameGraph::renderQueueForPass(v10, *(this + 58));
    if (v20)
    {
      v21 = *(*(v20 + 16) + 8 * *(this + 59));
    }

    else
    {
      v21 = 0;
    }

    v22 = *(gdc::Camera::cameraFrame(v6) + 24);
    v23 = *(v6 + 968);
    v24 = *(v6 + 976);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v175, *(this + 9));
    v25 = v176;
    v26 = v23;
    v27 = v24;
    v176->f32[0] = v26;
    v25->f32[1] = v27;
    v28 = v22;
    v25[1].f32[0] = v28;
    v29 = +[VKDebugSettings sharedSettings];
    [v29 dofStrength];
    v176[1].f32[1] = v30 * 6.0;

    v31 = +[VKDebugSettings sharedSettings];
    [v31 dofStrength];
    if (v32 <= 0.1)
    {
      v176[2].i32[0] = 1065353216;
    }

    else
    {
      v33 = +[VKDebugSettings sharedSettings];
      [v33 dofStrength];
      v35 = 0.1 / v34;
      v176[2].f32[0] = v35;
    }

    ggl::BufferMemory::~BufferMemory(v175);
    v36 = v7[28];
    if (v36)
    {
      v37 = *(v36 + 32);
      v38 = *(v7[1] + 96);
      v39 = v12;
      if (v37 >= (*(v7[1] + 104) - v38) >> 3)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(*(v38 + 8 * v37) + 16);
      }
    }

    else
    {
      v39 = v12;
    }

    **(*(this + 32) + 168) = v36;
    v40 = v7[14];
    if (v40)
    {
      v41 = *(v40 + 32);
      v42 = *(v7[1] + 96);
      if (v41 >= (*(v7[1] + 104) - v42) >> 3)
      {
        v40 = 0;
      }

      else
      {
        v40 = *(*(v42 + 8 * v41) + 16);
      }
    }

    *(*(*(this + 32) + 168) + 8) = v40;
    ggl::CommandBuffer::pushRenderItem(v39, *(this + 34));
    v43 = v7[31];
    if (v43)
    {
      v44 = *(v43 + 32);
      v45 = *(v7[1] + 96);
      if (v44 >= (*(v7[1] + 104) - v45) >> 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(*(v45 + 8 * v44) + 16);
      }
    }

    **(*(this + 39) + 168) = v43;
    ggl::CommandBuffer::pushRenderItem(v15, *(this + 41));
    v46 = v7[31];
    if (v46)
    {
      v47 = *(v46 + 32);
      v48 = *(v7[1] + 96);
      v49 = v17;
      if (v47 >= (*(v7[1] + 104) - v48) >> 3)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(*(v48 + 8 * v47) + 16);
      }
    }

    else
    {
      v49 = v17;
    }

    **(*(this + 48) + 168) = v46;
    v50 = v7[30];
    if (v50)
    {
      v51 = *(v50 + 32);
      v52 = *(v7[1] + 96);
      if (v51 >= (*(v7[1] + 104) - v52) >> 3)
      {
        v50 = 0;
      }

      else
      {
        v50 = *(*(v52 + 8 * v51) + 16);
      }
    }

    *(*(*(this + 48) + 168) + 8) = v50;
    ggl::CommandBuffer::pushRenderItem(v49, *(this + 52));
    v53 = v7[32];
    if (v53)
    {
      v54 = *(v53 + 32);
      v55 = *(v7[1] + 96);
      if (v54 >= (*(v7[1] + 104) - v55) >> 3)
      {
        v53 = 0;
      }

      else
      {
        v53 = *(*(v55 + 8 * v54) + 16);
      }
    }

    **(*(this + 50) + 168) = v53;
    ggl::CommandBuffer::pushRenderItem(v166, *(this + 53));
    v56 = v7[33];
    if (v56)
    {
      v57 = *(v56 + 32);
      v58 = *(v7[1] + 96);
      if (v57 >= (*(v7[1] + 104) - v58) >> 3)
      {
        v56 = 0;
      }

      else
      {
        v56 = *(*(v58 + 8 * v57) + 16);
      }
    }

    **(*(this + 60) + 168) = v56;
    ggl::CommandBuffer::pushRenderItem(v168, *(this + 64));
    v59 = v7[34];
    if (v59)
    {
      v60 = *(v59 + 32);
      v61 = *(v7[1] + 96);
      if (v60 >= (*(v7[1] + 104) - v61) >> 3)
      {
        v59 = 0;
      }

      else
      {
        v59 = *(*(v61 + 8 * v60) + 16);
      }
    }

    **(*(this + 62) + 168) = v59;
    ggl::CommandBuffer::pushRenderItem(v21, *(this + 65));
    v62 = v7[28];
    if (v62)
    {
      v63 = *(v62 + 32);
      v64 = *(v7[1] + 96);
      v65 = v170;
      if (v63 >= (*(v7[1] + 104) - v64) >> 3)
      {
        v62 = 0;
      }

      else
      {
        v62 = *(*(v64 + 8 * v63) + 16);
      }
    }

    else
    {
      v65 = v170;
    }

    **(*(this + 23) + 168) = v62;
    v66 = v7[14];
    if (v66)
    {
      v67 = *(v66 + 32);
      v68 = *(v7[1] + 96);
      if (v67 >= (*(v7[1] + 104) - v68) >> 3)
      {
        v66 = 0;
      }

      else
      {
        v66 = *(*(v68 + 8 * v67) + 16);
      }
    }

    *(*(*(this + 23) + 168) + 8) = v66;
    v69 = v7[35];
    if (v69)
    {
      v70 = *(v69 + 32);
      v71 = *(v7[1] + 96);
      if (v70 >= (*(v7[1] + 104) - v71) >> 3)
      {
        v69 = 0;
      }

      else
      {
        v69 = *(*(v71 + 8 * v70) + 16);
      }
    }

    *(*(*(this + 23) + 168) + 16) = v69;
    v72 = v7[36];
    if (v72)
    {
      v73 = *(v72 + 32);
      v74 = *(v7[1] + 96);
      if (v73 >= (*(v7[1] + 104) - v74) >> 3)
      {
        v72 = 0;
      }

      else
      {
        v72 = *(*(v74 + 8 * v73) + 16);
      }
    }

    *(*(*(this + 23) + 168) + 24) = v72;
    ggl::CommandBuffer::pushRenderItem(v65, *(this + 27));
  }

  result = md::LayoutContext::get<md::LightingLogicContext>(*(a2 + 1));
  if (result)
  {
    v76 = result;
    if (*(result + 259) == 1)
    {
      v77 = +[VKDebugSettings sharedSettings];
      v78 = [v77 daVinciSSAOHighSampleCountEnabled];

      v79 = +[VKDebugSettings sharedSettings];
      v80 = [v79 daVinciSSAODepthAwareBlurEnabled];

      v81 = +[VKDebugSettings sharedSettings];
      v82 = [v81 daVinciSSAODepthAwareUpsampleEnabled];

      v83 = v7[22];
      if (v83)
      {
        v84 = *(v83 + 32);
        v85 = *(v7[1] + 96);
        if (v84 >= (*(v7[1] + 104) - v85) >> 3)
        {
          v83 = 0;
        }

        else
        {
          v83 = *(*(v85 + 8 * v84) + 16);
        }
      }

      **(*(this + 82) + 168) = v83;
      v86 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 64));
      if (v86)
      {
        v86 = *(*(v86 + 2) + 8 * *(this + 65));
      }

      ggl::CommandBuffer::pushRenderItem(v86, *(this + 84));
      v87 = +[VKDebugSettings sharedSettings];
      v88 = [v87 daVinciSSAOEnableBlur];

      if (v88)
      {
        v89 = this + 16 * v80 + 728;
        v90 = v7[16];
        if (v90)
        {
          v91 = *(v90 + 32);
          v92 = *(v7[1] + 96);
          if (v91 >= (*(v7[1] + 104) - v92) >> 3)
          {
            v90 = 0;
          }

          else
          {
            v90 = *(*(v92 + 8 * v91) + 16);
          }
        }

        **(*v89 + 168) = v90;
        v94 = *v89;
        v95 = v7[19];
        if (v95)
        {
          v96 = *(v95 + 32);
          v97 = *(v7[1] + 96);
          if (v96 >= (*(v7[1] + 104) - v97) >> 3)
          {
            v95 = 0;
          }

          else
          {
            v95 = *(*(v97 + 8 * v96) + 16);
          }
        }

        *(*(v94 + 168) + 8) = v95;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v175, *(this + 13));
        v98 = v176;
        v176->f32[0] = 1.0 / *(*(*(*(v7[1] + 96) + 8 * *(v7[16] + 32)) + 16) + 80);
        v98->i32[1] = 0;
        v99 = +[VKDebugSettings sharedSettings];
        v100 = [v99 daVinciSSAOBlurSize];
        v176[1].i32[0] = v100;

        v101 = +[VKDebugSettings sharedSettings];
        [v101 daVinciSSAOBlurriness];
        v176[1].i32[1] = v102;

        v103 = +[VKDebugSettings sharedSettings];
        [v103 daVinciSSAODepthBlurriness];
        v176[2].i32[0] = v104;

        ggl::BufferMemory::~BufferMemory(v175);
        v105 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 66));
        if (v105)
        {
          v105 = *(*(v105 + 2) + 8 * *(this + 67));
        }

        v106 = (this + 8 * v80);
        ggl::CommandBuffer::pushRenderItem(v105, v106[99]);
        v107 = this + 16 * v80 + 760;
        v108 = v7[17];
        if (v108)
        {
          v109 = *(v108 + 32);
          v110 = *(v7[1] + 96);
          if (v109 >= (*(v7[1] + 104) - v110) >> 3)
          {
            v108 = 0;
          }

          else
          {
            v108 = *(*(v110 + 8 * v109) + 16);
          }
        }

        **(*v107 + 168) = v108;
        v111 = *v107;
        v112 = v7[19];
        if (v112)
        {
          v113 = *(v112 + 32);
          v114 = *(v7[1] + 96);
          if (v113 >= (*(v7[1] + 104) - v114) >> 3)
          {
            v112 = 0;
          }

          else
          {
            v112 = *(*(v114 + 8 * v113) + 16);
          }
        }

        *(*(v111 + 168) + 8) = v112;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v175, *(this + 15));
        v115 = 1.0 / *(*(*(*(v7[1] + 96) + 8 * *(v7[16] + 32)) + 16) + 84);
        v116 = v176;
        v176->i32[0] = 0;
        v116->f32[1] = v115;
        v117 = +[VKDebugSettings sharedSettings];
        v118 = [v117 daVinciSSAOBlurSize];
        v176[1].i32[0] = v118;

        v119 = +[VKDebugSettings sharedSettings];
        [v119 daVinciSSAOBlurriness];
        v176[1].i32[1] = v120;

        v121 = +[VKDebugSettings sharedSettings];
        [v121 daVinciSSAODepthBlurriness];
        v176[2].i32[0] = v122;

        ggl::BufferMemory::~BufferMemory(v175);
        v123 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 68));
        if (v123)
        {
          v123 = *(*(v123 + 2) + 8 * *(this + 69));
        }

        ggl::CommandBuffer::pushRenderItem(v123, v106[101]);
        if (!v82)
        {
          goto LABEL_114;
        }

        v93 = v7[18];
        if (!v93)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (!v82)
        {
LABEL_114:
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v175, *(this + 11));
          v126 = v7[37];
          v127 = *(*(*(v7[1] + 96) + 8 * *(v7[16] + 32)) + 16);
          v128 = *(v127 + 80) / *(v126 + 80);
          LODWORD(v126) = *(v127 + 84) / *(v126 + 84);
          v129 = v176;
          v176[3].f32[0] = v128;
          v129[3].f32[1] = v126;
          v130 = *(v6 + 1264);
          v172 = *(v6 + 1248);
          v173 = v130;
          v174 = 0x3FF0000000000000;
          v131 = gm::operator*<double,4,4,1>((v6 + 3160), &v172);
          v167 = v132;
          v169 = v131;
          v133 = *(v6 + 1312);
          *v171 = v134;
          v172 = *(v6 + 1296);
          v173 = v133;
          v174 = 0x3FF0000000000000;
          v135.f64[0] = gm::operator*<double,4,4,1>((v6 + 3160), &v172);
          v136.f64[0] = v169;
          v136.f64[1] = v167;
          *&v136.f64[0] = vcvt_f32_f64(v136);
          v135.f64[1] = v137;
          *&v137 = *(v6 + 1008) + *(v6 + 1040);
          *(&v172 + 2) = -*&v137;
          *&v172 = vsub_f32(vcvt_f32_f64(v135), *&v136.f64[0]);
          *v129 = vdiv_f32(*&v136.f64[0], *&v172);
          v129[1].f32[0] = vcvt_f32_f64(*v171).f32[0] / -*&v137;
          v138 = 1.0;
          if (!*(v6 + 3784))
          {
            v139 = gdc::Camera::cameraFrame(v6);
            v138 = geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(*v139);
          }

          v140 = 0;
          v141 = 1.0 / v138;
          do
          {
            *(&v172 + v140) = *(&v172 + v140) * v141;
            v140 += 4;
          }

          while (v140 != 12);
          v129[4].f32[0] = 1.0 / *(&v172 + 2);
          v129[5].i32[0] = 1017370378;
          v142 = +[VKDebugSettings sharedSettings];
          [v142 daVinciSSAODepthThreshold];
          v176[6].i32[0] = v143;

          v144 = *(*(*(v7[1] + 96) + 8 * *(v7[16] + 32)) + 16);
          v145 = 1.0 / *(v144 + 80);
          v146 = 1.0 / *(v144 + 84);
          v147 = v176;
          v176[2].f32[0] = v145;
          v147[2].f32[1] = v146;
          v147[6].i32[1] = *(v76 + 252);
          v147[5].i32[1] = *(v76 + 236);
          v147[4].f32[1] = *(v76 + 240) * 20.0;
          v148 = +[VKDebugSettings sharedSettings];
          [v148 ssaoFalloffScale];
          v176[7].i32[0] = v149;

          v150 = +[VKDebugSettings sharedSettings];
          [v150 ssaoMaxDistance];
          v176[7].i32[1] = v151;

          ggl::BufferMemory::~BufferMemory(v175);
          v152 = this + 16 * v78 + 576;
          v153 = v7[19];
          if (v153)
          {
            v154 = *(v153 + 32);
            v155 = *(v7[1] + 96);
            if (v154 >= (*(v7[1] + 104) - v155) >> 3)
            {
              v153 = 0;
            }

            else
            {
              v153 = *(*(v155 + 8 * v154) + 16);
            }
          }

          **(*v152 + 168) = v153;
          *(*(*v152 + 168) + 8) = v7[37];
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v175, *(this + 17));
          v156 = +[VKDebugSettings sharedSettings];
          [v156 daVinciSSAOUpsampleDepthThreshold];
          v176->i32[0] = v157;

          ggl::BufferMemory::~BufferMemory(v175);
          v158 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 62));
          if (v158)
          {
            v158 = *(*(v158 + 2) + 8 * *(this + 63));
          }

          result = ggl::CommandBuffer::pushRenderItem(v158, *(this + v78 + 76));
          if (v82)
          {
            v159 = v7[19];
            if (v159)
            {
              v160 = *(v159 + 32);
              v161 = *(v7[1] + 96);
              if (v160 >= (*(v7[1] + 104) - v161) >> 3)
              {
                v159 = 0;
              }

              else
              {
                v159 = *(*(v161 + 8 * v160) + 16);
              }
            }

            *(*(*(this + 107) + 168) + 8) = v159;
            v162 = v7[22];
            if (v162)
            {
              v163 = *(v162 + 32);
              v164 = *(v7[1] + 96);
              if (v163 >= (*(v7[1] + 104) - v164) >> 3)
              {
                v162 = 0;
              }

              else
              {
                v162 = *(*(v164 + 8 * v163) + 16);
              }
            }

            **(*(this + 107) + 168) = v162;
            v165 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 70));
            if (v165)
            {
              v165 = *(*(v165 + 2) + 8 * *(this + 71));
            }

            return ggl::CommandBuffer::pushRenderItem(v165, *(this + 109));
          }

          return result;
        }

        v93 = v7[16];
        if (!v93)
        {
LABEL_113:
          *(*(*(this + 107) + 168) + 16) = v93;
          goto LABEL_114;
        }
      }

      v124 = *(v93 + 32);
      v125 = *(v7[1] + 96);
      if (v124 >= (*(v7[1] + 104) - v125) >> 3)
      {
        v93 = 0;
      }

      else
      {
        v93 = *(*(v125 + 8 * v124) + 16);
      }

      goto LABEL_113;
    }
  }

  return result;
}

void sub_1B2ADA16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void gdc::ResourceFetcher::failedToLoad(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a3 != 1)
  {
    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v8 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      gdc::ResourceKey::keysInt32Str(&__p, a3);
      v9 = *(a3 + 2);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      v11 = *a4;
      if (*(a4 + 31) >= 0)
      {
        v12 = a4 + 8;
      }

      else
      {
        v12 = *(a4 + 8);
      }

      *buf = 136315906;
      v16 = p_p;
      v17 = 1024;
      v18 = v9;
      v19 = 2048;
      v20 = v11;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Failed to load key: %s type: %d, %lld: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v13 = geo::linear_map<unsigned short,std::shared_ptr<gdc::ResourceStore>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::shared_ptr<gdc::ResourceStore>>>,std::vector<std::pair<unsigned short,std::shared_ptr<gdc::ResourceStore>>>>::operator[]((a1 + 24), *(a3 + 2));
  gdc::ResourceStore::failed(*v13, a2, a3, a4);
}

void gdc::ResourceStore::failed(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 128));
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v8 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
  {
    v9 = (*(**(a1 + 424) + 16))(*(a1 + 424));
    gdc::ResourceKey::keysInt32Str(&__p, a3);
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v15 = a2;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "%s Resource Failed: %s, rid: %llu", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *a3;
  v11 = *(a3 + 1);
  *buf = a2;
  *&buf[8] = v12;
  *&buf[16] = v18;
  v15 = v18;
  v16 = v18;
  v17 = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(&buf[16], v11, *(a3 + 2));
  v18[4] = *(a3 + 9);
  v19 = *(a3 + 5);
  v20 = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, a4[1], a4[2]);
  }

  else
  {
    v21 = *(a4 + 1);
  }

  if (*(a4 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, a4[4], a4[5]);
  }

  else
  {
    v22 = *(a4 + 4);
  }

  std::vector<gdc::ResourceRequest>::push_back[abi:nn200100]((a1 + 216), buf);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (*&buf[16] != v16)
  {
    free(*&buf[16]);
  }

  std::mutex::unlock((a1 + 128));
}

void std::vector<gdc::ResourceRequest>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 5);
    if (v9 + 1 > 0x199999999999999)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 5);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0xCCCCCCCCCCCCCCLL)
    {
      v12 = 0x199999999999999;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x199999999999999)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 32 * ((v5 - *a1) >> 5);
    *v13 = *a2;
    geo::small_vector_base<unsigned char>::small_vector_base((v13 + 16), a2 + 16, (v13 + 48));
    v14 = *(a2 + 128);
    v15 = *(a2 + 112);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    v16 = *(a2 + 152);
    v17 = *(a2 + 136);
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    v18 = *a1;
    v19 = a1[1];
    v20 = 160 * v9 - (v19 - *a1);
    *(v13 + 80) = *(a2 + 80);
    *(v13 + 88) = *(a2 + 88);
    *(v13 + 104) = *(a2 + 104);
    *(v13 + 112) = v15;
    *(v13 + 128) = v14;
    *(v13 + 136) = v17;
    v8 = 160 * v9 + 160;
    *(v13 + 152) = v16;
    if (v19 != v18)
    {
      v21 = v18 + 16;
      v22 = (160 * v9 - 32 * ((v19 - v18) >> 5) + 48);
      v23 = v20;
      do
      {
        *(v22 - 6) = *(v21 - 16);
        *(v23 + 8) = *(v21 - 8);
        geo::small_vector_base<unsigned char>::small_vector_base(v22 - 4, v21, v22);
        *(v23 + 80) = *(v21 + 64);
        *(v23 + 88) = *(v21 + 72);
        *(v23 + 104) = *(v21 + 88);
        v24 = *(v21 + 96);
        *(v23 + 128) = *(v21 + 112);
        *(v23 + 112) = v24;
        *(v21 + 104) = 0;
        *(v21 + 112) = 0;
        *(v21 + 96) = 0;
        v25 = *(v21 + 120);
        *(v23 + 152) = *(v21 + 136);
        *(v23 + 136) = v25;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = 0;
        v23 += 160;
        v26 = v21 + 144;
        v21 += 160;
        v22 += 160;
      }

      while (v26 != v19);
      do
      {
        std::allocator_traits<std::allocator<gdc::ResourceRequest>>::destroy[abi:nn200100]<gdc::ResourceRequest,void,0>(v18);
        v18 += 160;
      }

      while (v18 != v19);
    }

    v27 = *a1;
    *a1 = v20;
    a1[1] = v8;
    a1[2] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    geo::small_vector_base<unsigned char>::small_vector_base((v5 + 16), a2 + 16, (v5 + 48));
    *(v5 + 80) = *(a2 + 80);
    *(v5 + 88) = *(a2 + 88);
    *(v5 + 104) = *(a2 + 104);
    v6 = *(a2 + 112);
    *(v5 + 128) = *(a2 + 128);
    *(v5 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 136);
    *(v5 + 152) = *(a2 + 152);
    *(v5 + 136) = v7;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v8 = v5 + 160;
  }

  a1[1] = v8;
}

BOOL std::__unordered_map_equal<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::equal_to<md::GridRenderResources::TileMeshEntry>,md::GridRenderResources::TileMeshEntryHash,true>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v8 = a2;
    v9 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v8;
    a1 = v9;
    v9[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v6 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v7 = (*(a2 + 1) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    v3 = (*(a2 + 2) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  v4 = v2 == v3 && *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return *(a1 + 4) == *(a2 + 4) && v4;
}

void std::list<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[8];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void md::RegionMetaLayerDataSource::createLayerData(unsigned __int16 **a1@<X2>, void *a2@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap(&v4, 46, *a1, a1[1]);
  v3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v3 + 1));
  }

  if (v3)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v3 + 1));
  }
}

void sub_1B2ADB458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, md::MapTileData *a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  __p = a13;
  std::vector<md::MetaDataRegion>::__destroy_vector::operator()[abi:nn200100](&__p);
  md::MapTileData::~MapTileData(a11);
  std::__shared_weak_count::~__shared_weak_count(a16);
  operator delete(v38);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MetaDataRegion>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::MetaDataRegion>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v5 = (i - 24);
    std::vector<md::MetaDataRegionPolygon>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MetaDataRegionPolygon>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MetaDataRegion>,md::MetaDataRegion*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v9[3] = v3;
    v9[4] = v4;
    v6 = a1;
    v7 = a1;
    do
    {
      v8 = *(v7 + 16);
      *a3 = *v7;
      *(a3 + 16) = v8;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = *(v7 + 24);
      *(a3 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a3 += 48;
    }

    while (v7 != a2);
    do
    {
      v9[0] = (v6 + 24);
      std::vector<md::MetaDataRegionPolygon>::__destroy_vector::operator()[abi:nn200100](v9);
      v6 += 48;
    }

    while (v6 != a2);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MetaDataRegionPolygon>,md::MetaDataRegionPolygon*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      *a3 = *v6;
      std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100]((a3 + 16), (v6 + 16));
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      v7 = *(v6 + 40);
      v8 = *(v6 + 48);
      if (v8 != v7)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
        if (v9 < 0xAAAAAAAAAAAAAABLL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v9);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v6 += 64;
      a3 += 64;
    }

    while (v6 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::MetaDataRegionPolygon,0>(v5);
      v5 += 64;
    }

    while (v5 != a2);
  }
}

void sub_1B2ADB800(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<md::MetaDataRegionPolygon>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:nn200100]<md::MetaDataRegionPolygon,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<gm::Matrix<float,2,1>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void anonymous namespace::getPointsFromSegments(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = (*(a1 + 32) + 16 * a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = v8 + *v6;
  if (a4)
  {
    if (v9 > v7)
    {
      v10 = a3[1];
      do
      {
        v11 = *(*(a1 + 8) + 8 * v9 - 8);
        v12 = a3[2];
        if (v10 >= v12)
        {
          v13 = (v10 - *a3) >> 3;
          if ((v13 + 1) >> 61)
          {
            goto LABEL_34;
          }

          v14 = v12 - *a3;
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

          v29 = a3;
          if (v16)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v16);
          }

          __p = 0;
          v26 = (8 * v13);
          *v26 = v11;
          v27 = 8 * v13 + 8;
          v28 = 0;
          std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a3, &__p);
          v10 = a3[1];
          if (__p)
          {
            operator delete(__p);
          }
        }

        else
        {
          *v10++ = v11;
        }

        a3[1] = v10;
        --v9;
      }

      while (v9 > v7);
    }
  }

  else if (v7 < v9)
  {
    v17 = a3[1];
    v18 = 8 * v7;
    do
    {
      v19 = *(*(a1 + 8) + v18);
      v20 = a3[2];
      if (v17 >= v20)
      {
        v21 = (v17 - *a3) >> 3;
        if ((v21 + 1) >> 61)
        {
LABEL_34:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = v20 - *a3;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        v29 = a3;
        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v24);
        }

        __p = 0;
        v26 = (8 * v21);
        *v26 = v19;
        v27 = 8 * v21 + 8;
        v28 = 0;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a3, &__p);
        v17 = a3[1];
        if (__p)
        {
          operator delete(__p);
        }
      }

      else
      {
        *v17++ = v19;
      }

      a3[1] = v17;
      v18 += 8;
      --v8;
    }

    while (v8);
  }
}

void std::vector<md::MetaDataRegionPolygon>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:nn200100]<md::MetaDataRegionPolygon,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::IsOpaque const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsTransparent const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::find(uint64_t a1, unsigned __int8 *a2)
{
  if (std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((a1 + 24), a2))
  {
    std::__list_imp<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry const&>();
  }

  return a1;
}

void *md::LogicManager::runLogicAfter(void *result, uint64_t a2, void *a3, int a4)
{
  v4 = result;
  v5 = result + 14;
  if (!*(result + 136))
  {
    v5 = &md::LogicManager::executionOrder(void)const::empty;
  }

  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v11 = *v6;
      if (*(*v6 + 56) == 1)
      {
        v15 = *(v11 + 32);
        v16 = *(v11 + 48);
        result = gdc::Context::context(a3, &v15);
        if (result)
        {
          v12 = result;
          result = (*(*v11 + 96))(v11, a2, result);
          if (a4)
          {
            result = (*(**v6 + 80))(*v6, a2, v12);
          }
        }
      }

      v6 += 7;
    }

    while (v6 != v7);
  }

  v13 = v4[25];
  if ((v13 + 1) <= 0x78)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  v4[25] = v14;
  return result;
}

uint64_t md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xE42D19AFCA302E68)
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

uint64_t md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xE42D19AFCA302E68)
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

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3)
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

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3)
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

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x7851AF310F49C988)
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

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x7851AF310F49C988)
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

uint64_t md::LayerDataLogic::runAfterLayoutAtVariableRate(uint64_t a1, md::LayoutContext *this, uint64_t a3, void *a4)
{
  md::LayoutContext::frameState(this);
  v7 = (*(v6 + 88) * 1000.0);
  gdc::LayerDataManager::processLayerDataRequests(*(a1 + 120), v7);
  result = gdc::LayerDataManager::cancelLayerDataRequestIfNotCurrent(*(a1 + 120), v7);
  *a4 = *(a1 + 120);
  return result;
}

void gdc::LayerDataManager::processLayerDataRequests(gdc::LayerDataManager *this, uint64_t a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v92 = *(this + 2);
  if (v2 != v92)
  {
    while (1)
    {
      v94 = v2;
      v4 = *(v2 + 8);
      v96 = *(this + 7);
      v5 = *(v4 + 96);
      while (v5)
      {
        v6 = v5[16];
        if (v6[25] >= a2)
        {
          v102[0] = 0;
          v105 = 0;
          v8 = v6[15];
          v9 = v6[16];
          if (v8 == v9)
          {
            goto LABEL_24;
          }

          v10 = 3;
          do
          {
            v11 = (v8 + 24);
            v12 = v10;
            do
            {
              v10 = v12;
              v11 = *v11;
              if (!v11)
              {
                break;
              }

              v13 = *(v4 + 272);
              v14 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v13 + 8), v11 + 16);
              if (!v14 || *(v14 + 29) != 2)
              {
                v15 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v13 + 8), v11 + 16);
                if (!v15)
                {
                  goto LABEL_18;
                }

                v16 = *(v15 + 28);
                if (v16 < 2)
                {
                  v10 = 0;
                  break;
                }

                if (v16 == 3)
                {
LABEL_18:
                  v10 = 1;
LABEL_21:
                  std::optional<gdc::ResourceKey>::operator=[abi:nn200100]<gdc::ResourceKey const&,void>(v102, (v11 + 16));
                  break;
                }

                if (v16 == 4)
                {
                  v10 = 2;
                  goto LABEL_21;
                }
              }

              v12 = 3;
            }

            while (v10 == 3);
            v8 += 48;
          }

          while (v8 != v9);
          if ((v10 - 3) <= 0xFFFFFFFD)
          {
LABEL_24:
            if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
            }

            v17 = *(v5[16] + 112);
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v18 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
              if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
              {
                v19 = v5[4];
                v20 = *v19;
                v21 = v19[1];
                v22 = v19[2];
                v23 = *(v5 + 12);
                v24 = *(v5 + 16);
                v25 = "<Invalid>";
                if (v24 == 1)
                {
                  v25 = "Preliminary";
                }

                v26 = v24 == 0;
                v27 = "Standard";
                if (!v26)
                {
                  v27 = v25;
                }

                buf = 67110146;
                *buf_4 = v20;
                *&buf_4[4] = 1024;
                *&buf_4[6] = v21;
                *&buf_4[10] = 1024;
                *&buf_4[12] = v22;
                *&buf_4[16] = 1024;
                *&buf_4[18] = v23;
                *&buf_4[22] = 2080;
                *&buf_4[24] = v27;
                _os_signpost_emit_with_name_impl(&dword_1B2754000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v17, "LayerDataRequest", "tileKey=%d.%d.%d tileType=%d requestType=%s retry=true", &buf, 0x24u);
              }
            }

            gdc::LayerDataRequestKey::LayerDataRequestKey(&buf, (v5 + 2));
            v28 = v5[17];
            v110 = v5[16];
            v111 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>((v4 + 40), &buf);
            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v111);
            }

            if (*&buf_4[12] != *&buf_4[28])
            {
              free(*&buf_4[12]);
            }

            v29 = *v5;
            std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&buf, (v4 + 80), v5);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](&buf);
            v5 = v29;
          }

          else
          {
            v5 = *v5;
          }

          if (v105 == 1 && v103 != v104)
          {
            free(v103);
          }
        }

        else
        {
          v7 = *v5;
          std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&buf, (v4 + 80), v5);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](&buf);
          v5 = v7;
        }
      }

      v30 = *(v4 + 56);
      if (v30)
      {
        break;
      }

LABEL_214:
      v2 = v94 + 24;
      if (v94 + 24 == v92)
      {
        return;
      }
    }

    while (1)
    {
      v32 = (v30 + 16);
      v31 = v30[16];
      if (*(v31 + 200) >= a2 && (*(v31 + 209) & 1) == 0)
      {
        break;
      }

      v33 = *v30;
LABEL_48:
      v30 = v33;
      if (!v33)
      {
        goto LABEL_214;
      }
    }

    v102[0] = 0;
    v105 = 0;
    v34 = *(v31 + 120);
    v35 = *(v31 + 128);
    if (v34 != v35)
    {
      v36 = 3;
      do
      {
        v37 = (v34 + 24);
        v38 = v36;
        do
        {
          v36 = v38;
          v37 = *v37;
          if (!v37)
          {
            break;
          }

          v39 = *(v4 + 272);
          v40 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v39 + 8), v37 + 16);
          if (!v40 || *(v40 + 29) != 2)
          {
            v41 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v39 + 8), v37 + 16);
            if (!v41)
            {
              goto LABEL_62;
            }

            v42 = *(v41 + 28);
            if (v42 < 2)
            {
              v36 = 0;
              break;
            }

            if (v42 == 3)
            {
LABEL_62:
              v36 = 1;
LABEL_65:
              std::optional<gdc::ResourceKey>::operator=[abi:nn200100]<gdc::ResourceKey const&,void>(v102, (v37 + 16));
              break;
            }

            if (v42 == 4)
            {
              v36 = 2;
              goto LABEL_65;
            }
          }

          v38 = 3;
        }

        while (v36 == 3);
        v34 += 48;
      }

      while (v34 != v35);
      if (v36 <= 1)
      {
        if (v36)
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(&buf, (v30 + 2));
          v43 = v30[17];
          v110 = v30[16];
          v111 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>((v4 + 80), &buf);
          if (v111)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v111);
          }

          if (*&buf_4[12] != *&buf_4[28])
          {
            free(*&buf_4[12]);
          }

          if (*(v30 + 16) != 1)
          {
            if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
            }

            v44 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
            if (!os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
            {
LABEL_91:
              v48 = *(*v32 + 14);
              if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_119;
              }

              v49 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
              if (!os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
              {
                goto LABEL_119;
              }

              goto LABEL_118;
            }

            v45 = (*(**(v4 + 584) + 16))(*(v4 + 584));
            gdc::LayerDataRequestKey::keysInt32Str(&v112, v30 + 8);
            if ((v105 & 1) == 0)
            {
              goto LABEL_216;
            }

            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v112;
            }

            else
            {
              v46 = v112.__r_.__value_.__r.__words[0];
            }

            gdc::ResourceKey::keysInt32Str(&__p, v102);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            buf = 136315650;
            *buf_4 = v45;
            *&buf_4[8] = 2080;
            *&buf_4[10] = v46;
            *&buf_4[18] = 2080;
            *&buf_4[20] = p_p;
            _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_DEBUG, "%s Failed layer data request: %s due to failed resource: %s", &buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }
          }

          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          goto LABEL_91;
        }

LABEL_210:
        v33 = *v30;
        goto LABEL_211;
      }

      if (v36 == 2)
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&buf, (v30 + 2));
        v50 = v30[17];
        v110 = v30[16];
        v111 = v50;
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>((v4 + 80), &buf);
        if (v111)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v111);
        }

        if (*&buf_4[12] != *&buf_4[28])
        {
          free(*&buf_4[12]);
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v51 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
        {
          v52 = (*(**(v4 + 584) + 16))(*(v4 + 584));
          gdc::LayerDataRequestKey::keysInt32Str(&v112, v30 + 8);
          if ((v105 & 1) == 0)
          {
            goto LABEL_216;
          }

          if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v112;
          }

          else
          {
            v53 = v112.__r_.__value_.__r.__words[0];
          }

          gdc::ResourceKey::keysInt32Str(&__p, v102);
          v54 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = __p.__r_.__value_.__r.__words[0];
          }

          buf = 136315650;
          *buf_4 = v52;
          *&buf_4[8] = 2080;
          *&buf_4[10] = v53;
          *&buf_4[18] = 2080;
          *&buf_4[20] = v54;
          _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_DEBUG, "%s Failed layer data request: %s due to cancelled resource: %s", &buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v112.__r_.__value_.__l.__data_);
          }

          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }
        }

        v48 = *(*v32 + 14);
        if (v48 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_119;
        }

        v49 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (!os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          goto LABEL_119;
        }

LABEL_118:
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v49, OS_SIGNPOST_INTERVAL_END, v48, "LayerDataRequest", "status=failed", &buf, 2u);
LABEL_119:
        v33 = *v30;
        std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&buf, (v4 + 40), v30);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](&buf);
LABEL_211:
        if (v105 == 1 && v103 != v104)
        {
          free(v103);
        }

        goto LABEL_48;
      }
    }

    if (!(*(*v4 + 56))(v4))
    {
      goto LABEL_210;
    }

    v55 = gdc::LayerDataRequest::collectResources(*v32, v96);
    v56 = *v32;
    if (v55 & 1) == 0 && (*(v56 + 208) & 1) == 0 && (*(v4 + 296) != 1 || (*(v56 + 209)))
    {
      goto LABEL_210;
    }

    v95 = (v30 + 2);
    if (!(*(*v4 + 120))(v4, v30 + 16, v96, v56 + 168))
    {
LABEL_179:
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v78 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
      {
        v79 = (*(**(v4 + 584) + 16))(*(v4 + 584));
        gdc::LayerDataRequestKey::keysInt32Str(&v112, *v32);
        v80 = &v112;
        if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v80 = v112.__r_.__value_.__r.__words[0];
        }

        buf = 136315650;
        *buf_4 = v79;
        *&buf_4[8] = 2080;
        *&buf_4[10] = v80;
        *&buf_4[18] = 2048;
        *&buf_4[20] = a2;
        _os_log_impl(&dword_1B2754000, v78, OS_LOG_TYPE_DEBUG, "%s Queuing creation of: %s timestamp: %lld", &buf, 0x20u);
        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }
      }

      *(*v32 + 209) = 1;
      v81 = *(v4 + 8);
      (*(*v4 + 64))(v4);
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v82 = os_signpost_id_generate(GEOGetGeoDisplayCoreResourceLoadingLog::log);
      v83 = *(*v32 + 14);
      v84 = *(*v32 + 208);
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      if (v82 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v81)
        {
          goto LABEL_201;
        }
      }

      else
      {
        v85 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          v86 = "no";
          if (*(*v32 + 208))
          {
            v86 = "yes";
          }

          v87 = *(*v32 + 14);
          buf = 134218498;
          *buf_4 = v83;
          *&buf_4[8] = 2080;
          *&buf_4[10] = v86;
          *&buf_4[18] = 2048;
          *&buf_4[20] = v87;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v85, OS_SIGNPOST_INTERVAL_BEGIN, v82, "LayerDataDecode", "requestId=%zu hasAllResources=%s parent_signpost=%zu", &buf, 0x20u);
        }

        if (v81)
        {
LABEL_201:
          v89 = *v32;
          gdc::LayerDataRequestKey::LayerDataRequestKey(v97, v95);
          memset(v98, 0, 24);
          std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__init_with_size[abi:nn200100]<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>*,std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>*>(v98, *(v89 + 21), *(v89 + 22), 0xAAAAAAAAAAAAAAABLL * ((*(v89 + 22) - *(v89 + 21)) >> 4));
          v98[3] = a2;
          v98[4] = v83;
          v99 = v84;
          v106 = 0;
          operator new();
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v88 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v88, OS_SIGNPOST_INTERVAL_BEGIN, v82, "LayerDataDecodeDispatched", &unk_1B3514CAA, &buf, 2u);
        }
      }

      gdc::LayerDataSource::updateLayerData(v4, v83, v95, *v32 + 21, a2, v84);
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v90 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v90, OS_SIGNPOST_INTERVAL_END, v82, "LayerDataDecodeDispatched", &unk_1B3514CAA, &buf, 2u);
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }
        }

        v91 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v91, OS_SIGNPOST_INTERVAL_END, v82, "LayerDataDecode", &unk_1B3514CAA, &buf, 2u);
        }
      }

      goto LABEL_210;
    }

    LOBYTE(buf) = 0;
    v109 = 0;
    v57 = *v32;
    v58 = *(*v32 + 15);
    v59 = *(*v32 + 16);
    if (v58 != v59)
    {
      v60 = 3;
      do
      {
        v61 = (v58 + 24);
        v62 = v60;
        do
        {
          v60 = v62;
          v61 = *v61;
          if (!v61)
          {
            break;
          }

          v63 = *(v4 + 272);
          v64 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v63 + 8), v61 + 16);
          if (!v64 || *(v64 + 29) != 2)
          {
            v65 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v63 + 8), v61 + 16);
            if (!v65)
            {
              goto LABEL_136;
            }

            v66 = *(v65 + 28);
            if (v66 < 2)
            {
              v60 = 0;
              break;
            }

            if (v66 == 3)
            {
LABEL_136:
              v60 = 1;
LABEL_139:
              std::optional<gdc::ResourceKey>::operator=[abi:nn200100]<gdc::ResourceKey const&,void>(&buf, (v61 + 16));
              break;
            }

            if (v66 == 4)
            {
              v60 = 2;
              goto LABEL_139;
            }
          }

          v62 = 3;
        }

        while (v60 == 3);
        v58 += 48;
      }

      while (v58 != v59);
      if (v60 <= 1)
      {
        if (!v60 || *v95 == 1)
        {
          goto LABEL_172;
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v67 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (!os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_172;
        }

        v68 = (*(**(v4 + 584) + 16))(*(v4 + 584));
        gdc::LayerDataRequestKey::keysInt32Str(&__p, v95);
        if ((v109 & 1) == 0)
        {
          goto LABEL_216;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &__p;
        }

        else
        {
          v69 = __p.__r_.__value_.__r.__words[0];
        }

        gdc::ResourceKey::keysInt32Str(&v100, &buf);
        v70 = &v100;
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v70 = v100.__r_.__value_.__r.__words[0];
        }

        LODWORD(v112.__r_.__value_.__l.__data_) = 136315650;
        *(v112.__r_.__value_.__r.__words + 4) = v68;
        WORD2(v112.__r_.__value_.__r.__words[1]) = 2080;
        *(&v112.__r_.__value_.__r.__words[1] + 6) = v69;
        HIWORD(v112.__r_.__value_.__r.__words[2]) = 2080;
        v113 = v70;
        v71 = v67;
        v72 = "%s Failed layer data request after update: %s failed resource: %s";
LABEL_168:
        _os_log_impl(&dword_1B2754000, v71, OS_LOG_TYPE_DEBUG, v72, &v112, 0x20u);
        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_172:
        v77 = 0;
LABEL_175:
        if (v109 == 1 && *&buf_4[4] != *&buf_4[20])
        {
          free(*&buf_4[4]);
        }

        if (!v77)
        {
          goto LABEL_210;
        }

        goto LABEL_179;
      }

      if (v60 == 2)
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v73 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (!os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_172;
        }

        v74 = (*(**(v4 + 584) + 16))(*(v4 + 584));
        gdc::LayerDataRequestKey::keysInt32Str(&__p, v95);
        if ((v109 & 1) == 0)
        {
LABEL_216:
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &__p;
        }

        else
        {
          v75 = __p.__r_.__value_.__r.__words[0];
        }

        gdc::ResourceKey::keysInt32Str(&v100, &buf);
        v76 = &v100;
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v76 = v100.__r_.__value_.__r.__words[0];
        }

        LODWORD(v112.__r_.__value_.__l.__data_) = 136315650;
        *(v112.__r_.__value_.__r.__words + 4) = v74;
        WORD2(v112.__r_.__value_.__r.__words[1]) = 2080;
        *(&v112.__r_.__value_.__r.__words[1] + 6) = v75;
        HIWORD(v112.__r_.__value_.__r.__words[2]) = 2080;
        v113 = v76;
        v71 = v73;
        v72 = "%s Failed layer data request after update: %s cancelled resource: %s";
        goto LABEL_168;
      }

      v57 = *v32;
    }

    gdc::LayerDataRequest::collectResources(v57, v96);
    v77 = 1;
    goto LABEL_175;
  }
}

uint64_t gdc::LayerDataRequest::collectResources(gdc::LayerDataRequest *this, gdc::ResourceManager *a2)
{
  *(this + 208) = 1;
  v24 = 0;
  v23[0] = &v24;
  v23[1] = a2;
  v23[2] = this;
  gdc::LayerDataRequest::collectResources(gdc::ResourceManager *)::$_0::operator()(v23, *(this + 15), *(this + 16));
  gdc::LayerDataRequest::collectResources(gdc::ResourceManager *)::$_0::operator()(v23, *(this + 18), *(this + 19));
  v3 = *(this + 21);
  v4 = *(this + 22);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = v3[3];
      if (v5)
      {
        break;
      }

LABEL_47:
      v3 += 6;
      if (v3 == v4)
      {
        return v24;
      }
    }

    v6 = v3 + 1;
    while (1)
    {
      v7 = *(v5 + 9);
      v8 = *(this + 15);
      v9 = *(this + 16);
      while (v8 != v9)
      {
        if (v7 == *v8)
        {
          goto LABEL_9;
        }

        v8 += 24;
      }

      v8 = *(this + 16);
LABEL_9:
      v10 = *(this + 18);
      v11 = *(this + 19);
      while (v10 != v11)
      {
        if (v7 == *v10)
        {
          goto LABEL_14;
        }

        v10 += 24;
      }

      v10 = *(this + 19);
LABEL_14:
      if ((v8 == v9 || !std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(v8 + 1, v5 + 16)) && (v10 == v11 || !std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(v10 + 1, v5 + 16)))
      {
        break;
      }

      v12 = *v5;
LABEL_46:
      v5 = v12;
      if (!v12)
      {
        goto LABEL_47;
      }
    }

    v13 = v3[2];
    v14 = *(v5 + 1);
    v15 = vcnt_s8(v13);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      if (v14 >= *&v13)
      {
        v14 %= *&v13;
      }
    }

    else
    {
      v14 &= *&v13 - 1;
    }

    v12 = *v5;
    v16 = *(*v6 + 8 * v14);
    do
    {
      v17 = v16;
      v16 = *v16;
    }

    while (v16 != v5);
    if (v17 == v3 + 3)
    {
      goto LABEL_51;
    }

    v18 = v17[1];
    if (v15.u32[0] > 1uLL)
    {
      if (v18 >= *&v13)
      {
        v18 %= *&v13;
      }
    }

    else
    {
      v18 &= *&v13 - 1;
    }

    v19 = *v5;
    if (v18 != v14)
    {
LABEL_51:
      if (v12)
      {
        v20 = *(v12 + 1);
        if (v15.u32[0] > 1uLL)
        {
          if (v20 >= *&v13)
          {
            v20 %= *&v13;
          }
        }

        else
        {
          v20 &= *&v13 - 1;
        }

        v19 = *v5;
        if (v20 == v14)
        {
          goto LABEL_39;
        }
      }

      *(*v6 + 8 * v14) = 0;
      v19 = *v5;
    }

    if (!v19)
    {
LABEL_45:
      *v17 = v19;
      *v5 = 0;
      --v3[4];
      v25[0] = v5;
      v25[1] = v3 + 1;
      v26 = 1;
      memset(v27, 0, sizeof(v27));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>>>>::~unique_ptr[abi:nn200100](v25);
      goto LABEL_46;
    }

LABEL_39:
    v21 = *(v19 + 1);
    if (v15.u32[0] > 1uLL)
    {
      if (v21 >= *&v13)
      {
        v21 %= *&v13;
      }
    }

    else
    {
      v21 &= *&v13 - 1;
    }

    if (v21 != v14)
    {
      *(*v6 + 8 * v21) = v17;
      v19 = *v5;
    }

    goto LABEL_45;
  }

  return v24;
}

void gdc::LayerDataRequest::collectResources(gdc::ResourceManager *)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    v4 = a1;
    v5 = *(a1 + 16);
    v39 = v5;
    do
    {
      v6 = *(v3 + 24);
      if (!v6)
      {
        goto LABEL_65;
      }

      v40 = *v3;
      do
      {
        v7 = *(v4 + 8);
        v8 = *(v7 + 56);
        v9 = *(v7 + 64);
        if (v8 == v9)
        {
          goto LABEL_14;
        }

        while (*(v6 + 9) != *v8)
        {
          v8 += 3;
          if (v8 == v9)
          {
            goto LABEL_14;
          }
        }

        if (v8 == v9)
        {
LABEL_14:
          v42 = 0;
          v43 = 0;
LABEL_15:
          *(v5 + 208) = 0;
          goto LABEL_16;
        }

        gdc::ResourceStore::resource(&v42, v8[1], v6 + 16);
        v41 = v42;
        if (!v42)
        {
          goto LABEL_15;
        }

        v10 = geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[]((v5 + 168), v40);
        v11 = *(v10 + 4);
        if (!*&v11)
        {
          goto LABEL_35;
        }

        v12 = v6[16];
        v13 = *(v6 + 9);
        v14 = (v13 - 0x61C8864680B583EBLL + ((v12 - 0x61C8864680B583EBLL) << 6) + ((v12 - 0x61C8864680B583EBLL) >> 2)) ^ (v12 - 0x61C8864680B583EBLL);
        v15 = (*(v6 + 11) - 0x61C8864680B583EBLL + (v14 << 6) + (v14 >> 2)) ^ v14;
        v16 = vcnt_s8(v11);
        v16.i16[0] = vaddlv_u8(v16);
        v17 = v16.u32[0];
        if (v16.u32[0] > 1uLL)
        {
          v18 = (*(v6 + 11) - 0x61C8864680B583EBLL + (v14 << 6) + (v14 >> 2)) ^ v14;
          if (v15 >= *&v11)
          {
            v18 = v15 % *&v11;
          }
        }

        else
        {
          v18 = (*&v11 - 1) & v15;
        }

        v19 = *(*v10 + 8 * v18);
        if (!v19 || (v20 = *v19) == 0)
        {
LABEL_35:
          v5 = v39;
          geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[]((v39 + 168), v40);
          goto LABEL_36;
        }

        while (1)
        {
          v21 = v20[1];
          if (v21 == v15)
          {
            break;
          }

          if (v17 > 1)
          {
            if (v21 >= *&v11)
            {
              v21 %= *&v11;
            }
          }

          else
          {
            v21 &= *&v11 - 1;
          }

          if (v21 != v18)
          {
            goto LABEL_35;
          }

LABEL_34:
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_35;
          }
        }

        if (*(v20 + 16) != v12 || *(v20 + 9) != v13 || !gdc::GenericKey::operator==((v20 + 3), (v6 + 24)))
        {
          goto LABEL_34;
        }

        v5 = v39;
        geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[]((v39 + 168), v40);
        v4 = a1;
        if (v20[14] == v41 || *(v41 + 136))
        {
          goto LABEL_60;
        }

LABEL_36:
        v22 = geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[]((v5 + 168), v40);
        v23 = v6[16];
        v24 = *(v6 + 9);
        v25 = (v24 - 0x61C8864680B583EBLL + ((v23 - 0x61C8864680B583EBLL) << 6) + ((v23 - 0x61C8864680B583EBLL) >> 2)) ^ (v23 - 0x61C8864680B583EBLL);
        v26 = *(v6 + 11) - 0x61C8864680B583EBLL + (v25 << 6) + (v25 >> 2);
        v27 = v26 ^ v25;
        v28 = *(v22 + 4);
        if (!*&v28)
        {
          goto LABEL_54;
        }

        v29 = vcnt_s8(v28);
        v29.i16[0] = vaddlv_u8(v29);
        v30 = v29.u32[0];
        if (v29.u32[0] > 1uLL)
        {
          v31 = v26 ^ v25;
          if (v27 >= *&v28)
          {
            v31 = v27 % *&v28;
          }
        }

        else
        {
          v31 = (*&v28 - 1) & v27;
        }

        v32 = *(*v22 + 8 * v31);
        if (!v32 || (v33 = *v32) == 0)
        {
LABEL_54:
          operator new();
        }

        while (2)
        {
          v34 = v33[1];
          if (v34 != v27)
          {
            if (v30 > 1)
            {
              if (v34 >= *&v28)
              {
                v34 %= *&v28;
              }
            }

            else
            {
              v34 &= *&v28 - 1;
            }

            if (v34 != v31)
            {
              goto LABEL_54;
            }

LABEL_53:
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_54;
            }

            continue;
          }

          break;
        }

        if (*(v33 + 16) != v23 || *(v33 + 9) != v24 || !gdc::GenericKey::operator==((v33 + 3), (v6 + 24)))
        {
          goto LABEL_53;
        }

        v4 = a1;
        v5 = v39;
        v35 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v33[15];
        v33[14] = v41;
        v33[15] = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v36);
        }

        **a1 = 1;
LABEL_60:
        if (*(v41 + 136))
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        }

        v6 = *v6;
      }

      while (v6);
LABEL_65:
      v3 += 48;
    }

    while (v3 != a3);
  }
}

void std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__init_with_size[abi:nn200100]<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>*,std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t __copy_helper_block_8_40c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t result, uint64_t a2)
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

uint64_t md::DaVinciCenterLineRoadsLayerDataSource::updateRequest(uint64_t a1, gdc::LayerDataRequest **a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 832);
  if (result)
  {
    return md::ElevationRequestUpdater::updateRequest(result, a2, a4);
  }

  return result;
}

void md::SelectedLabelLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v17, *(a1 + 592), *a3, a3[1]);
  v8 = v17;
  if (!v17)
  {
    operator new();
  }

  v9 = *(a1 + 824);
  if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
  {
    v11 = v10;
    if (*(a1 + 816))
    {
      gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
      v12 = *(a2 + 16);
      gdc::ResourceKey::getInt32(v12, 2u);
      gdc::ResourceKey::getInt32(v12, 1u);
      gdc::ResourceKey::getInt32(v12, 0);
      v13 = *(*(v8 + 8) + 16);
      if (!v13)
      {
        goto LABEL_15;
      }

      std::mutex::lock((a1 + 832));
      v14 = *(a1 + 896);
      if (v14 && v13 == *v14)
      {
        v15 = *(a1 + 904);
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        std::mutex::unlock((a1 + 832));
LABEL_15:
        md::LabelLayerDataSource::toLabelTileType(*(a1 + 32));
        operator new();
      }

      *a4 = 0;
      a4[1] = 0;
      std::mutex::unlock((a1 + 832));
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v16 = __p[0];
  if (__p[0])
  {

    operator delete(v16);
  }
}

void sub_1B2ADE118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::LayerDataManager::cancelLayerDataRequestIfNotCurrent(uint64_t this, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; v2 += 24)
  {
    v4 = *(v2 + 8);
    v5 = *(v4 + 56);
    if (v5)
    {
      do
      {
        while (*(*(v5 + 16) + 200) >= a2)
        {
          v5 = *v5;
          if (!v5)
          {
            goto LABEL_23;
          }
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v6 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
        {
          v7 = (*(**(v4 + 584) + 16))(*(v4 + 584));
          gdc::LayerDataRequestKey::keysInt32Str(&__p, *(v5 + 16));
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v9 = "n";
          if (*(*(v5 + 16) + 209))
          {
            v9 = "y";
          }

          *buf = 136315650;
          *&buf[4] = v7;
          *&buf[12] = 2080;
          *&buf[14] = p_p;
          v18 = 2080;
          v19 = v9;
          _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_DEBUG, "%s Auto cancelling layer data request: %s, pendingCreation: %s", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }
        }

        v10 = *(v5 + 16);
        v11 = *(v10 + 112);
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_END, v11, "LayerDataRequest", "status=cancelled", buf, 2u);
            v10 = *(v5 + 16);
          }
        }

        if (*(v10 + 209) == 1)
        {
          *buf = *(v10 + 112);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>((v4 + 160), *buf);
        }

        v13 = *(v4 + 472);
        *buf = 0;
        *&buf[8] = 0;
        gdc::LayerDataRequestTracker::_processKey(v13, v5 + 16, buf, 1);
        v14 = *v5;
        std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(buf, (v4 + 40), v5);
        this = std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
        v5 = v14;
      }

      while (v14);
    }

LABEL_23:
    *(v4 + 280) = a2;
  }

  return this;
}

uint64_t md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xC97B9E962ADF4AD4)
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

uint64_t md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xC97B9E962ADF4AD4)
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

uint64_t md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
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
      return (*(*v7 + 152))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
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
      return (*(*v7 + 136))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x8BD499FBD96FBB9ELL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::ElevationContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x64780CBD71DF7CF5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 152))(v5, a2, v14, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x64780CBD71DF7CF5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x64780CBD71DF7CF5uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x479E84E48468DB70uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x479E84E48468DB70))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13[0] = v9;
      v13[1] = v12;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::TileSelectionContext>(v8);
      v9[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9F2276D081C2CB20)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9F2276D081C2CB20)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA8300AA8F44B09FFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x9F2276D081C2CB20)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA8300AA8F44B09FFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::get<md::PendingSceneContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x9F2276D081C2CB20);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x9F2276D081C2CB20))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v13 && (v14 = v13[5], *(v14 + 8) == 0x1AF456233693CD46))
      {
        v15 = *(v14 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xA8300AA8F44B09FFLL)[5] + 32);
      v17[0] = v9;
      v17[1] = v12;
      v17[2] = v15;
      v17[3] = v16;
      return (*(*v5 + 152))(v5, a2, v17, v3);
    }
  }

  return result;
}

void md::OverlaysLogic::runAfterLayout(uint64_t a1, md::LayoutContext *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 744);
  v9[0] = &unk_1F2A18550;
  v9[3] = v9;
  geo::TaskQueue::barrierSync(v4, v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
  md::LayoutContext::frameState(a2);
  v6 = a1 + 944;
  v7 = *(a1 + 952);
  if (v7 != (a1 + 944))
  {
    v8 = *(v5 + 624);
    do
    {
      if (v7[20] >= v8)
      {
        v7 = v7[1];
      }

      else
      {
        v7 = std::list<md::OverlayTileData::OverlayTileResource>::erase(v6, v7);
      }
    }

    while (v7 != v6);
  }
}

void sub_1B2ADF228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xADE8F13E6C18D970);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0xADE8F13E6C18D970))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x9F2276D081C2CB20);
      if (v13 && (v14 = v13[5], *(v14 + 8) == 0x9F2276D081C2CB20))
      {
        v15 = *(v14 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL)[5] + 32);
      v17[0] = v9;
      v17[1] = v12;
      v17[2] = v15;
      v17[3] = v16;
      return (*(*v5 + 152))(v5, a2, v17, v3);
    }
  }

  return result;
}

void md::DrapingLogic::runAfterLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 168);
  v11[1] = 0;
  v12 = v3;
  v10 = v11;
  v11[0] = 0;
  v4 = gdc::Registry::storage<md::overlayComponents::VectorOverlay>(v3);
  _ZNK3gdc12RegistryViewIJN2md17overlayComponents13VectorOverlayEEE4eachIS3_ZNS1_12DrapingLogic14runAfterLayoutERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_15OverlaysContextENS1_13CameraContextENS1_19PendingSceneContextENS1_16ElevationContextEEEENSB_IJEEEEE20ResolvedDependenciesERNS1_14DrapingContextEE3__0EEvT0_(v4, &v12, &v10);
  v5 = v10;
  if (v10 != v11)
  {
    do
    {
      v6 = *(v5 + 32);
      if (*(v5 + 40))
      {
        md::OverlayTileData::clearEntities(v6);
      }

      else
      {
        md::ElevatedStrokeTileData::clearEntities(v6);
      }

      v7 = *(v5 + 8);
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
          v8 = *(v5 + 16);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v11);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11[0]);
}

uint64_t md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

void *_ZNK3gdc12RegistryViewIJN2md17overlayComponents13VectorOverlayEEE4eachIS3_ZNS1_12DrapingLogic14runAfterLayoutERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_15OverlaysContextENS1_13CameraContextENS1_19PendingSceneContextENS1_16ElevationContextEEEENSB_IJEEEEE20ResolvedDependenciesERNS1_14DrapingContextEE3__0EEvT0_(void *result, uint64_t *a2, uint64_t *a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = result[7];
  v4 = result[8];
  if (v3 != v4)
  {
    v5 = result[10];
    do
    {
      v6 = *v3++;
      result = _ZZN2md12DrapingLogic14runAfterLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__0clENS5_6EntityERNS_17overlayComponents13VectorOverlayE(v7, v6);
      v5 += 104;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x99BED48DEFBBD82BLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(v14, v8);
      v9 = md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(v8);
      v11[0] = v14[0];
      v11[1] = v14[1];
      v12 = v9;
      v13 = v10;
      return (*(*v7 + 152))(v7, a2, v11, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x99BED48DEFBBD82BLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(v14, v8);
      v9 = md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(v8);
      v11[0] = v14[0];
      v11[1] = v14[1];
      v12 = v9;
      v13 = v10;
      return (*(*v7 + 136))(v7, a2, v11, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9052DC4F017D3735)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9052DC4F017D3735)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x336A901A15BB7353)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xE42D19AFCA302E68)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x64780CBD71DF7CF5uLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x64780CBD71DF7CF5))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x336A901A15BB7353)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x13043386C0978CC2)
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

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x13043386C0978CC2)
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

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL)
  {
    v19[12] = v3;
    v19[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xE42D19AFCA302E68);
      if (v9 && (v10 = v9[5], *(v10 + 8) == 0xE42D19AFCA302E68))
      {
        v11 = *(v10 + 32);
      }

      else
      {
        v11 = 0;
      }

      v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x8BD499FBD96FBB9ELL);
      if (v12 && (v13 = v12[5], *(v13 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v14 = *(v13 + 32);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL)[5] + 32);
      v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x13043386C0978CC2uLL);
      if (v16 && (v17 = v16[5], *(v17 + 8) == 0x13043386C0978CC2))
      {
        v18 = *(v17 + 32);
      }

      else
      {
        v18 = 0;
      }

      v19[0] = v11;
      v19[1] = v14;
      v19[2] = v15;
      v19[3] = v18;
      return (*(*v7 + 152))(v7, a2, v19, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 136))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 152))(v5, a2, v14, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::SceneContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xB6D730E769EC7123)
  {
    v19[12] = v3;
    v19[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
      if (v9 && (v10 = v9[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v11 = *(v10 + 32);
      }

      else
      {
        v11 = 0;
      }

      v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xFBD83FDA8879FF7ELL);
      if (v12 && (v13 = v12[5], *(v13 + 8) == 0xFBD83FDA8879FF7ELL))
      {
        v14 = *(v13 + 32);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1B8B241A8D896A1DuLL)[5] + 32);
      v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x4927EB92E562CC46uLL);
      if (v16 && (v17 = v16[5], *(v17 + 8) == 0x4927EB92E562CC46))
      {
        v18 = *(v17 + 32);
      }

      else
      {
        v18 = 0;
      }

      v19[0] = v11;
      v19[1] = v14;
      v19[2] = v15;
      v19[3] = v18;
      return (*(*v7 + 152))(v7, a2, v19, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xB6D730E769EC7123)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 136))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x412AFB1345D08930)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x412AFB1345D08930)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5A88E3C88DA0DCA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5A88E3C88DA0DCA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x552ACF95227023D6)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x5A88E3C88DA0DCA1uLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x5A88E3C88DA0DCA1))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x552ACF95227023D6)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)62>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PuckLocationAnimationTracingLogic,md::PuckLocationAnimationTracingContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA81ACD73F9C92AA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x1B8B241A8D896A1DuLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PuckLocationAnimationTracingLogic,md::PuckLocationAnimationTracingContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA81ACD73F9C92AA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA60DDA5A69582425)
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

uint64_t md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA60DDA5A69582425)
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

uint64_t md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL)
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

uint64_t md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL)
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

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::buildRequiredTuple<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>(v14, v8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xD77FB76AFC10A710);
      if (v9 && (v11 = v9[5], *(v11 + 8) == 0xD77FB76AFC10A710))
      {
        v10 = *(v11 + 32);
      }

      else
      {
        v10 = 0;
      }

      v12[0] = v14[0];
      v12[1] = v14[1];
      v13 = v10;
      return (*(*v7 + 152))(v7, a2, v12, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL)
  {
    v8[9] = v3;
    v8[10] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 136))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9AEE7E062376E454)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9AEE7E062376E454)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD2404CDD1F9A6950)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD2404CDD1F9A6950)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA588623CD4116DAELL)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xE42D19AFCA302E68)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xF014CCE28176CA44);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0xF014CCE28176CA44))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA588623CD4116DAELL)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5B0BFF71B88387C7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5B0BFF71B88387C7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF5BDE3F396AD5C40)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x5B0BFF71B88387C7uLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x5B0BFF71B88387C7))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF5BDE3F396AD5C40)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)54>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x401D4CCE847AB1D1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xC97B9E962ADF4AD4);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0xC97B9E962ADF4AD4))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 152))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x401D4CCE847AB1D1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::SettingsContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3619066E3FB5F2CLL)
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

uint64_t md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3619066E3FB5F2CLL)
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

uint64_t md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFFA06A69D924B0E8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 152))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFFA06A69D924B0E8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x90B6813830DCB581)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x99BED48DEFBBD82BLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x12B1E486D3040E2CuLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x12B1E486D3040E2CLL))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x90B6813830DCB581)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF20ACC1C64F7EF84)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x9052DC4F017D3735);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x9052DC4F017D3735))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF20ACC1C64F7EF84)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8E4587A431F9C696)
  {
    v8[10] = v3;
    v8[11] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 152))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8E4587A431F9C696)
  {
    v8[10] = v3;
    v8[11] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 136))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC81F81A7CB7767BBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0xE42D19AFCA302E68))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 152))(v5, a2, v14, v3);
    }
  }

  return result;
}