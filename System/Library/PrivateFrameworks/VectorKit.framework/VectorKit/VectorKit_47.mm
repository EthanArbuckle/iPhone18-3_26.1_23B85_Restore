void sub_1B2AFA490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a17 == 1)
  {
    (*(*a13 + 56))(a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);
  _Unwind_Resume(a1);
}

void md::SceneQueryLogic::processPendingRegistries(md::SceneQueryLogic *this)
{
  v231 = *MEMORY[0x1E69E9840];
  if (*(this + 38))
  {
    v1 = this;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v2 = *(this + 19);
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v228.i64[0] = *v3;
        v6 = v228.i64[0];
        v7 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(v228.i64[0]);
        if (*(v7 + 88) != *(v7 + 80))
        {
          if (v5 >= v206)
          {
            v5 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(&v204, &v228);
          }

          else
          {
            *v5++ = v6;
          }

          v205 = v5;
        }

        ++v3;
      }

      while (v3 != v4);
    }

    v188 = v1;
    if (*(v1 + 31) != *(v1 + 32))
    {
      LOBYTE(v207) = 0;
      v228.i64[0] = &v207;
      v8 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(v1 + 272, 0);
      v220 = 0;
      v221 = 0;
      v222 = 0;
      v217 = 0;
      v218 = 0;
      v219 = 0;
      __p = 0;
      v215 = 0;
      v216 = 0;
      v9 = v204;
      if (v204 != v5)
      {
        v10 = v8;
        v11 = 0;
        v185 = vdupq_n_s64(0x20uLL);
        v184 = v8;
        do
        {
          v12 = *v9;
          ++*(v1 + 136);
          v13 = v220;
          v14 = v221;
          if (v221 != v220)
          {
            do
            {
              v15 = *--v14;
            }

            while (v14 != v13);
            v11 = v217;
          }

          v221 = v13;
          v215 = __p;
          v218 = v11;
          v213 = gdc::Context::context<md::components::SharedTransformData>(v12);
          v16 = MEMORY[0x1E69A1688];
          if (v213)
          {
            for (i = *(v1 + 23); i; i = *i)
            {
              v229 = 0u;
              v230 = 0u;
              v228 = 0u;
              v18 = 0.0;
              v19 = i[2];
              v20 = 0.0;
              v21 = 0.0;
              v22 = 0.0;
              v23 = 0.0;
              v24 = 0.0;
              v25 = 0.0;
              if (v19)
              {
                [v19 bounds];
                v24 = *&v228.i64[1];
                v25 = *v228.i64;
                v22 = *&v229.i64[1];
                v21 = *v229.i64;
                v20 = *(&v230 + 1);
                v23 = *&v230;
              }

              v26 = *(v16 + 16);
              v27 = *(v16 + 24);
              v207 = v25 / v26;
              v208 = 1.0 - (v23 + v24) / v27;
              v209 = v21 * 0.0000000249532021;
              v210 = (v22 + v25) / v26;
              v211 = 1.0 - v24 / v27;
              v212 = (v20 + v21) * 0.0000000249532021;
              v28 = (v213 + 20);
              for (j = 136; j != 160; j += 8)
              {
                v30 = *v28 - *(&v207 + j - 136);
                if (v30 < 0.0 || (v30 = *(v28 - 3) - *(&v207 + j - 112), v30 > 0.0))
                {
                  v18 = v18 + v30 * v30;
                }

                ++v28;
              }

              v31 = (v18 * 1.60600699e15);
              if (*(v10 + 8) > v31 || *(v10 + 9) < v31)
              {
                v32 = v221;
                if (v221 >= v222)
                {
                  v34 = v221 - v220;
                  if ((v34 + 1) >> 61)
                  {
LABEL_216:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v35 = (v222 - v220) >> 2;
                  if (v35 <= v34 + 1)
                  {
                    v35 = v34 + 1;
                  }

                  if (v222 - v220 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v36 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v36 = v35;
                  }

                  v227 = &v220;
                  if (v36)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v36);
                  }

                  v37 = (8 * v34);
                  v223 = 0;
                  v224 = v37;
                  v226 = 0;
                  *v37 = i[2];
                  v225 = v37 + 1;
                  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(&v220, &v223);
                  v33 = v221;
                  std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(&v223);
                }

                else
                {
                  *v32 = i[2];
                  v33 = v32 + 1;
                }

                v221 = v33;
              }
            }

            v38 = v12;
            v39 = gdc::Registry::storage<md::components::MeshInstance>(v12);
            v40 = gdc::Registry::storage<md::components::ClientState>(v38);
            v202 = gdc::Registry::storage<md::components::SupportsFlexing>(v38);
            v41 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(v38);
            v42 = v41;
            v191 = v38;
            v43.i64[0] = v39;
            v43.i64[1] = v40;
            v44.i64[0] = v202;
            v44.i64[1] = v41;
            v228 = vaddq_s64(v43, v185);
            v229 = vaddq_s64(v44, v185);
            v45 = v228.i64[0];
            v46 = &v228;
            for (k = 1; k != 4; ++k)
            {
              if (*(v228.i64[k] + 32) - *(v228.i64[k] + 24) < *(v45 + 32) - *(v45 + 24))
              {
                v45 = v228.i64[k];
                v46 = (&v228 + k * 8);
              }
            }

            v48 = v46->i64[0];
            v197 = v41;
            v189 = v46->i64[0];
            if (v39 + 4 == v46->i64[0])
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v49 = v39[7];
              v50 = v39[8];
              if (v49 != v50)
              {
                v51 = v39[10];
                do
                {
                  v52 = *(v49 + 4);
                  Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v40 + 4, v52);
                  v54 = v40[8];
                  if (v54 != Index && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v52) && v197[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v197 + 4, v52))
                  {
                    v55 = *v49;
                    v56 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v40 + 4, HIDWORD(*v49));
                    if (v54 == v56)
                    {
                      v57 = v40[11];
                    }

                    else
                    {
                      v57 = v40[10] + 24 * ((v56 - v40[7]) >> 3);
                    }

                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v55, v51, v57);
                  }

                  v51 += 112;
                  v49 += 8;
                }

                while (v49 != v50);
              }

              v1 = v188;
              v48 = v189;
              v42 = v197;
            }

            v200 = v40 + 4;
            if (v40 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v58 = v40[7];
              v59 = v40[8];
              if (v58 != v59)
              {
                v60 = v40[10];
                do
                {
                  v61 = *(v58 + 4);
                  v62 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v61);
                  v63 = v39[8];
                  if (v63 != v62 && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v61) && v197[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v197 + 4, v61))
                  {
                    v64 = *v58;
                    v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v58));
                    if (v63 == v65)
                    {
                      v66 = v39[11];
                    }

                    else
                    {
                      v66 = v39[10] + 112 * ((v65 - v39[7]) >> 3);
                    }

                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v64, v66, v60);
                  }

                  v60 += 24;
                  v58 += 8;
                }

                while (v58 != v59);
              }

              v1 = v188;
              v48 = v189;
              v42 = v197;
            }

            if (v202 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v68 = v202[7];
              v67 = v202[8];
              v195 = v67;
              while (v68 != v67)
              {
                v69 = *(v68 + 4);
                v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v69);
                v71 = v39[8];
                if (v71 != v70)
                {
                  v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v200, v69);
                  v73 = v40[8];
                  if (v73 != v72 && v42[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v42 + 4, v69))
                  {
                    v74 = *v68;
                    v75 = HIDWORD(*v68);
                    v76 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v68));
                    if (v71 == v76)
                    {
                      v77 = v39[11];
                    }

                    else
                    {
                      v77 = v39[10] + 112 * ((v76 - v39[7]) >> 3);
                    }

                    v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v200, v75);
                    if (v73 == v78)
                    {
                      v79 = v40[11];
                    }

                    else
                    {
                      v79 = v40[10] + 24 * ((v78 - v40[7]) >> 3);
                    }

                    v42 = v197;
                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v74, v77, v79);
                  }
                }

                v68 += 8;
                v67 = v195;
              }

              v1 = v188;
              v48 = v189;
            }

            if (v42 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v81 = v42[7];
              v80 = v42[8];
              if (v81 != v80)
              {
                v198 = v80;
                do
                {
                  v82 = *(v81 + 4);
                  v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v82);
                  v84 = v39[8];
                  if (v84 != v83)
                  {
                    v85 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v200, v82);
                    v86 = v40[8];
                    if (v86 != v85 && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v82))
                    {
                      v87 = *v81;
                      v88 = HIDWORD(*v81);
                      v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v81));
                      if (v84 == v89)
                      {
                        v90 = v39[11];
                      }

                      else
                      {
                        v90 = v39[10] + 112 * ((v89 - v39[7]) >> 3);
                      }

                      v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v200, v88);
                      if (v86 == v91)
                      {
                        v92 = v40[11];
                      }

                      else
                      {
                        v92 = v40[10] + 24 * ((v91 - v40[7]) >> 3);
                      }

                      v80 = v198;
                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v87, v90, v92);
                    }
                  }

                  v81 += 8;
                }

                while (v81 != v80);
              }

              v1 = v188;
            }

            gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(v191, v217, v218);
            v10 = v184;
            v11 = v217;
            if (v218 != v217)
            {
              v93 = 0;
              do
              {
                v94 = -1.0;
                if (v93 < (v215 - __p) >> 2)
                {
                  v94 = *(__p + v93);
                }

                v95 = v11[v93];
                *v228.i32 = v94;
                v96 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v191);
                gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v96, v95, v228.i32);
                ++v93;
                v11 = v217;
              }

              while (v93 < v218 - v217);
            }
          }

          ++v9;
        }

        while (v9 != v5);
        if (__p)
        {
          v215 = __p;
          operator delete(__p);
          v11 = v217;
        }

        if (v11)
        {
          v218 = v11;
          operator delete(v11);
        }
      }

      v228.i64[0] = &v220;
      std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v228);
    }

    if (*(v1 + 59))
    {
      v97 = v204;
      v205 = v204;
      if (*(v1 + 31))
      {
        v98 = 0;
        do
        {
          if (!*(v1 + 59))
          {
            break;
          }

          v99 = *(v1 + 57);
          v207 = *(v99 + 32);
          v100 = *&v207;
          std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(v1 + 57, v99);
          operator delete(v99);
          v101 = *(v100 + 40);
          for (m = *(v1 + 61); m; m = *m)
          {
            v103 = *(m + 16);
            if (v101 >= v103)
            {
              if (v103 >= v101)
              {
                LOWORD(v223) = *(v100 + 40);
                v228.i64[0] = &v223;
                v110 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 63, v101);
                ++*(v110 + 5);
                goto LABEL_131;
              }

              ++m;
            }
          }

          LOWORD(v223) = *(v100 + 40);
          v228.i64[0] = &v223;
          std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 480, v101)[5] = v100;
          LOWORD(v223) = *(v100 + 40);
          v228.i64[0] = &v223;
          *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 63, v223) + 5) = 0;
          v104 = gdc::Registry::storage<md::components::MeshInstance>(v100);
          v105 = gdc::Registry::storage<md::components::ClientState>(v100);
          v106 = gdc::Registry::storage<md::components::SupportsFlexing>(v100);
          v107 = 0x6DB6DB6DB6DB6DB7 * ((*(v104 + 88) - *(v104 + 80)) >> 4);
          v108 = *(v106 + 80);
          if (0xAAAAAAAAAAAAAAABLL * ((*(v105 + 88) - *(v105 + 80)) >> 3) < v107)
          {
            v107 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 88) - *(v105 + 80)) >> 3);
          }

          if (*(v106 + 88) - v108 >= v107)
          {
            LODWORD(v109) = v107;
          }

          else
          {
            v109 = *(v106 + 88) - v108;
          }

          if (v109)
          {
            if (v97 >= v206)
            {
              v97 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(&v204, &v207);
            }

            else
            {
              *v97++ = v100;
            }

            v98 += v109;
            v205 = v97;
          }

LABEL_131:
          ;
        }

        while (v98 < *(v1 + 31));
      }

      if (*(v1 + 31) != *(v1 + 32))
      {
        LOBYTE(v207) = 0;
        v228.i64[0] = &v207;
        v111 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(v1 + 272, 0);
        v220 = 0;
        v221 = 0;
        v222 = 0;
        v217 = 0;
        v218 = 0;
        v219 = 0;
        __p = 0;
        v215 = 0;
        v216 = 0;
        v112 = v204;
        if (v204 != v97)
        {
          v113 = v111;
          v114 = 0;
          v187 = vdupq_n_s64(0x20uLL);
          v190 = v97;
          v186 = v111;
          do
          {
            v196 = v112;
            v115 = *v112;
            ++*(v1 + 136);
            v116 = v220;
            v117 = v221;
            if (v221 != v220)
            {
              do
              {
                v118 = *--v117;
              }

              while (v117 != v116);
              v114 = v217;
            }

            v221 = v116;
            v215 = __p;
            v218 = v114;
            v213 = gdc::Context::context<md::components::SharedTransformData>(v115);
            if (v213)
            {
              for (n = *(v1 + 23); n; n = *n)
              {
                v229 = 0u;
                v230 = 0u;
                v228 = 0u;
                v120 = 0.0;
                v121 = n[2];
                v122 = 0.0;
                v123 = 0.0;
                v124 = 0.0;
                v125 = 0.0;
                v126 = 0.0;
                v127 = 0.0;
                if (v121)
                {
                  [v121 bounds];
                  v126 = *&v228.i64[1];
                  v127 = *v228.i64;
                  v124 = *&v229.i64[1];
                  v123 = *v229.i64;
                  v122 = *(&v230 + 1);
                  v125 = *&v230;
                }

                v128 = *(MEMORY[0x1E69A1688] + 16);
                v129 = *(MEMORY[0x1E69A1688] + 24);
                v207 = v127 / v128;
                v208 = 1.0 - (v125 + v126) / v129;
                v209 = v123 * 0.0000000249532021;
                v210 = (v124 + v127) / v128;
                v211 = 1.0 - v126 / v129;
                v212 = (v122 + v123) * 0.0000000249532021;
                v130 = (v213 + 20);
                for (ii = 136; ii != 160; ii += 8)
                {
                  v132 = *v130 - *(&v207 + ii - 136);
                  if (v132 < 0.0 || (v132 = *(v130 - 3) - *(&v207 + ii - 112), v132 > 0.0))
                  {
                    v120 = v120 + v132 * v132;
                  }

                  ++v130;
                }

                v133 = (v120 * 1.60600699e15);
                if (*(v113 + 8) > v133 || *(v113 + 9) < v133)
                {
                  v134 = v221;
                  if (v221 >= v222)
                  {
                    v136 = v221 - v220;
                    if ((v136 + 1) >> 61)
                    {
                      goto LABEL_216;
                    }

                    v137 = (v222 - v220) >> 2;
                    if (v137 <= v136 + 1)
                    {
                      v137 = v136 + 1;
                    }

                    if (v222 - v220 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v138 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v138 = v137;
                    }

                    v227 = &v220;
                    if (v138)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v138);
                    }

                    v139 = (8 * v136);
                    v223 = 0;
                    v224 = v139;
                    v226 = 0;
                    *v139 = n[2];
                    v225 = v139 + 1;
                    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(&v220, &v223);
                    v135 = v221;
                    std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(&v223);
                  }

                  else
                  {
                    *v134 = n[2];
                    v135 = v134 + 1;
                  }

                  v221 = v135;
                }
              }

              v140 = v115;
              v141 = gdc::Registry::storage<md::components::MeshInstance>(v115);
              v142 = gdc::Registry::storage<md::components::ClientState>(v140);
              v143 = gdc::Registry::storage<md::components::SupportsFlexing>(v140);
              v194 = v140;
              v144.i64[0] = v141;
              v144.i64[1] = v142;
              v228 = vaddq_s64(v144, v187);
              v201 = v143;
              v203 = (v143 + 32);
              v229.i64[0] = v143 + 32;
              v145 = v228.i64[0];
              v146 = &v228;
              for (jj = 1; jj != 3; ++jj)
              {
                if (*(v228.i64[jj] + 32) - *(v228.i64[jj] + 24) < *(v145 + 32) - *(v145 + 24))
                {
                  v145 = v228.i64[jj];
                  v146 = (&v228 + jj * 8);
                }
              }

              v148 = v146->i64[0];
              if (v141 + 4 == v146->i64[0])
              {
                v192 = v146->i64[0];
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v150 = v141[7];
                v149 = v141[8];
                if (v150 != v149)
                {
                  v151 = v141[10];
                  do
                  {
                    v152 = *(v150 + 4);
                    v153 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v142 + 4, v152);
                    v154 = v142[8];
                    if (v154 != v153 && *(v201 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v203, v152))
                    {
                      v155 = *v150;
                      v156 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v142 + 4, HIDWORD(*v150));
                      if (v154 == v156)
                      {
                        v157 = v142[11];
                      }

                      else
                      {
                        v157 = v142[10] + 24 * ((v156 - v142[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v155, v151, v157);
                    }

                    v151 += 112;
                    v150 += 8;
                  }

                  while (v150 != v149);
                }

                v1 = v188;
                v97 = v190;
                v148 = v192;
              }

              v199 = v142 + 4;
              if (v142 + 4 == v148)
              {
                v193 = v148;
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v159 = v142[7];
                v158 = v142[8];
                if (v159 != v158)
                {
                  v160 = v142[10];
                  do
                  {
                    v161 = *(v159 + 4);
                    v162 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v141 + 4, v161);
                    v163 = v141[8];
                    if (v163 != v162 && *(v201 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v203, v161))
                    {
                      v164 = *v159;
                      v165 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v141 + 4, HIDWORD(*v159));
                      if (v163 == v165)
                      {
                        v166 = v141[11];
                      }

                      else
                      {
                        v166 = v141[10] + 112 * ((v165 - v141[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v164, v166, v160);
                    }

                    v160 += 24;
                    v159 += 8;
                  }

                  while (v159 != v158);
                }

                v97 = v190;
                v148 = v193;
              }

              if (v203 == v148)
              {
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v168 = *(v201 + 56);
                v167 = *(v201 + 64);
                while (v168 != v167)
                {
                  v169 = *(v168 + 4);
                  v170 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v141 + 4, v169);
                  v171 = v141[8];
                  if (v171 != v170)
                  {
                    v172 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v199, v169);
                    v173 = v142[8];
                    if (v173 != v172)
                    {
                      v174 = *v168;
                      v175 = HIDWORD(*v168);
                      v176 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v141 + 4, HIDWORD(*v168));
                      if (v171 == v176)
                      {
                        v177 = v141[11];
                      }

                      else
                      {
                        v177 = v141[10] + 112 * ((v176 - v141[7]) >> 3);
                      }

                      v178 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v199, v175);
                      if (v173 == v178)
                      {
                        v179 = v142[11];
                      }

                      else
                      {
                        v179 = v142[10] + 24 * ((v178 - v142[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(&v228, v174, v177, v179);
                    }
                  }

                  v168 += 8;
                }

                v1 = v188;
                v97 = v190;
              }

              gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(v194, v217, v218);
              v113 = v186;
              v114 = v217;
              if (v218 != v217)
              {
                v180 = 0;
                do
                {
                  v181 = -1.0;
                  if (v180 < (v215 - __p) >> 2)
                  {
                    v181 = *(__p + v180);
                  }

                  v182 = v114[v180];
                  *v228.i32 = v181;
                  v183 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v194);
                  gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v183, v182, v228.i32);
                  ++v180;
                  v114 = v217;
                }

                while (v180 < v218 - v217);
              }
            }

            v112 = v196 + 1;
          }

          while (v196 + 1 != v97);
          if (__p)
          {
            v215 = __p;
            operator delete(__p);
            v114 = v217;
          }

          if (v114)
          {
            v218 = v114;
            operator delete(v114);
          }
        }

        v228.i64[0] = &v220;
        std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v228);
      }
    }

    if (v204)
    {
      operator delete(v204);
    }
  }
}

void sub_1B2AFB620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::DidResolvePendingMaterial>(uint64_t a1)
{
  v3 = 0x21F9ABBDA81BEAF3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x21F9ABBDA81BEAF3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::SceneQueryLogic::updatePendingRegistries(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 152);
  v5 = *(v4 + 408);
  v6 = *(v4 + 416);
  if (v5 != v6)
  {
    v7 = (a1 + 464);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(*v5 + 40);
        v10 = (a1 + 464);
        do
        {
          v11 = *(v8[4] + 40);
          v12 = v11 >= v9;
          v13 = v11 < v9;
          if (v12)
          {
            v10 = v8;
          }

          v8 = v8[v13];
        }

        while (v8);
        if (v10 != v7 && v9 >= *(v10[4] + 40))
        {
          std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer((a1 + 456), v10);
          operator delete(v10);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
  }

  v14 = *(a1 + 456);
  v15 = (a1 + 464);
  if (v14 != (a1 + 464))
  {
    do
    {
      v16 = *(a1 + 152);
      v17 = *(v16 + 456);
      v18 = *(v16 + 464);
      if (v18 == v17)
      {
        goto LABEL_22;
      }

      v19 = *(v14[4] + 40);
      v20 = v18 - v17;
      do
      {
        v21 = v20 >> 1;
        v22 = &v17[v20 >> 1];
        v24 = *v22;
        v23 = v22 + 1;
        v20 += ~(v20 >> 1);
        if (v24 < v19)
        {
          v17 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
      if (v17 == v18 || v19 < *v17)
      {
LABEL_22:
        v25 = v14[1];
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
            v26 = v14[2];
            v27 = *v26 == v14;
            v14 = v26;
          }

          while (!v27);
        }
      }

      else
      {
        v26 = std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer((a1 + 456), v14);
        operator delete(v14);
      }

      v14 = v26;
    }

    while (v26 != v15);
  }

  v28 = *a2;
  v29 = a2[1];
  if (*a2 != v29)
  {
    do
    {
      v30 = *v28;
      v31 = gdc::Registry::storage<md::components::SupportsFlexing>(*v28);
      if (*(v31 + 88) != *(v31 + 80))
      {
        v32 = *v15;
        if (!*v15)
        {
LABEL_39:
          operator new();
        }

        v33 = *(v30 + 40);
        while (1)
        {
          while (1)
          {
            v34 = v32;
            v35 = *(v32[4] + 40);
            if (v33 >= v35)
            {
              break;
            }

            v32 = *v34;
            if (!*v34)
            {
              goto LABEL_39;
            }
          }

          if (v35 >= v33)
          {
            break;
          }

          v32 = v34[1];
          if (!v32)
          {
            goto LABEL_39;
          }
        }
      }

      ++v28;
    }

    while (v28 != v29);
  }
}

uint64_t *std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(uint64_t a1, char a2)
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
      v3 = v2;
      v4 = *(v2 + 28) - 1;
      if ((a2 - 1) >= v4)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= (a2 - 1))
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasValueForKeyAtZ(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *a1;
  if (*a1 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(a1 + v6 + 11), v9 == 2))
  {
    if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(a1, a2, v5, 0))
    {
      return 1;
    }

    v9 = 1;
  }

  return gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(a1, a2, v5, v9);
}

void gdc::LayerDataCollector::addDataKey(gdc::LayerDataCollector *this, const gdc::LayerDataRequestKey *a2)
{
  v2[0] = 255;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1;
  gdc::LayerDataCollector::addDataKey(this, a2, v2);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<md::AssetData>>>(void *result, unint64_t a2)
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

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_10;
  }

  return result;
}

void md::updateAndLogChange<BOOL>(_BYTE *a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1 != a2)
  {
    v6 = GEOGetVectorKitPuckLogicLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *a1;
      v8 = 136315650;
      v9 = a3;
      v10 = 1024;
      v11 = v7;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "State %s changed from %d to %d", &v8, 0x18u);
    }

    *a1 = a2;
  }
}

void _ZNK3gdc12RegistryViewIJN2md10components19DynamicMeshInstanceENS2_8MaterialENS2_5AssetEEE4eachIZNS1_9PuckLogic15runBeforeLayoutERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_13CameraContextENS1_16ElevationContextENS1_17NavigationContextENS1_17StyleLogicContextENS1_22SharedResourcesContextENS1_15RegistryContextENS1_25IdentifiedResourceContextENS1_12SceneContextENS1_20NonTiledAssetContextEEEENSD_IJEEEEE20ResolvedDependenciesERNS1_11PuckContextEE3__1EEvT_(int64x2_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = vbicq_s8(vaddq_s64(*a1, vdupq_n_s64(0x20uLL)), vceqzq_s64(*a1));
  v64 = v4;
  v5 = a1[1].i64[0];
  v6 = v5 + 32;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v3.i64[1];
  v8 = v4.i64[0];
  v65 = v6;
  v9 = 1;
  v10 = &v64;
  do
  {
    if (*(v64.i64[v9] + 32) - *(v64.i64[v9] + 24) < *(v8 + 32) - *(v8 + 24))
    {
      v8 = v64.i64[v9];
      v10 = (&v64 + v9 * 8);
    }

    ++v9;
  }

  while (v9 != 3);
  v11 = v10->i64[0];
  v12 = v3.i64[0] + 32;
  if (!v3.i64[0])
  {
    v12 = 0;
  }

  v55 = v10->i64[0];
  if (v12 == v11)
  {
    v13 = *(v3.i64[0] + 56);
    v14 = *(v3.i64[0] + 64);
    if (v13 != v14)
    {
      v58 = *(a2 + 8);
      v61 = *a2;
      v56 = *(a2 + 16);
      while (1)
      {
        v15 = a1->i64[1];
        v16 = *(v13 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v15 + 4, v16);
        v18 = v15[8];
        if (v18 == Index)
        {
          goto LABEL_22;
        }

        v19 = a1[1].i64[0];
        if (*(v19 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v19 + 32), v16))
        {
          goto LABEL_22;
        }

        v20 = *v13;
        v21 = HIDWORD(*v13);
        v22 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v15 + 4, HIDWORD(*v13));
        if (v18 == v22)
        {
          v23 = v15[11];
        }

        else
        {
          v23 = v15[10] + 24 * ((v22 - v15[7]) >> 3);
        }

        v24 = *(v23 + 16);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          LODWORD(v21) = *(v13 + 4);
          v19 = a1[1].i64[0];
        }

        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v19 + 32), v21);
        *v61 = 1;
        v25 = gdc::Registry::storage<md::components::RenderableInjected>(*(v58 + 288));
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v25, v20))
        {
          break;
        }

        if (v24)
        {
          goto LABEL_21;
        }

LABEL_22:
        v13 += 8;
        if (v13 == v14)
        {
          v7 = a1->i64[1];
          v11 = v55;
          goto LABEL_26;
        }
      }

      *v56 = 0;
      if (!v24)
      {
        goto LABEL_22;
      }

LABEL_21:
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      goto LABEL_22;
    }
  }

LABEL_26:
  v26 = v7 + 4;
  if (!v7)
  {
    v26 = 0;
  }

  if (v26 == v11)
  {
    v28 = v7[7];
    v27 = v7[8];
    if (v28 != v27)
    {
      v59 = *(a2 + 8);
      v62 = *a2;
      v53 = *(a2 + 16);
      v29 = (v7[10] + 16);
      v57 = v7[8];
      do
      {
        v30 = a1->i64[0];
        v31 = *(v28 + 4);
        if (*(v30 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v31))
        {
          v32 = a1[1].i64[0];
          if (*(v32 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v32 + 32), v31))
          {
            v33 = *v28;
            v34 = HIDWORD(*v28);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v30 + 32), HIDWORD(*v28));
            v35 = *v29;
            if (*v29)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
              LODWORD(v34) = *(v28 + 4);
              v32 = a1[1].i64[0];
            }

            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v32 + 32), v34);
            *v62 = 1;
            v36 = gdc::Registry::storage<md::components::RenderableInjected>(*(v59 + 288));
            if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v36, v33))
            {
              *v53 = 0;
            }

            v27 = v57;
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v35);
            }
          }
        }

        v28 += 8;
        v29 += 3;
      }

      while (v28 != v27);
    }
  }

  v37 = a1[1].i64[0];
  v38 = v37 + 32;
  if (!v37)
  {
    v38 = 0;
  }

  if (v38 == v55)
  {
    v39 = *(v37 + 56);
    v40 = *(v37 + 64);
    if (v39 != v40)
    {
      v41 = *(a2 + 8);
      v60 = *(a2 + 16);
      v63 = *a2;
      while (1)
      {
        v42 = a1->i64[0];
        v43 = *(v39 + 4);
        if (*(v42 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v43))
        {
          goto LABEL_56;
        }

        v44 = a1->i64[1];
        v45 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v44 + 4, v43);
        v46 = v44[8];
        if (v46 == v45)
        {
          goto LABEL_56;
        }

        v47 = *v39;
        v48 = HIDWORD(*v39);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v42 + 32), HIDWORD(*v39));
        v49 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v44 + 4, v48);
        v50 = v46 == v49 ? v44[11] : v44[10] + 24 * ((v49 - v44[7]) >> 3);
        v51 = *(v50 + 16);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *v63 = 1;
        v52 = gdc::Registry::storage<md::components::RenderableInjected>(*(v41 + 288));
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v52, v47))
        {
          break;
        }

        if (v51)
        {
          goto LABEL_55;
        }

LABEL_56:
        v39 += 8;
        if (v39 == v40)
        {
          return;
        }
      }

      *v60 = 0;
      if (!v51)
      {
        goto LABEL_56;
      }

LABEL_55:
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      goto LABEL_56;
    }
  }
}

void sub_1B2AFC3E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::updateAndLogChange<md::PuckRenderMode>(_BYTE *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a1 != a2)
  {
    v4 = GEOGetVectorKitPuckLogicLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a1;
      v6 = 136315650;
      v7 = "_puckRenderMode";
      v8 = 1024;
      v9 = v5;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "State %s changed from %d to %d", &v6, 0x18u);
    }

    *a1 = a2;
  }
}

int *md::RouteLineSection::halfWidthAtZoom(int *result, float a2)
{
  if (*(result + 32) != 1)
  {
    return result;
  }

  v3 = result;
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(243, 2, *(*result + 24), 0);
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(244, 2, *(*v3 + 24), 0);
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(245, 2, *(*v3 + 24), 0);
  v4 = *(*v3 + 24);
  if (a2 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v4;
  if (!*v4)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v7 = *v6;
  v8 = *v6 == 1.0;
  if (*(v4 + 10) != 1 || (v7 != 0.0 ? (v9 = v7 == 1.0) : (v9 = 1), v9))
  {
LABEL_12:
    v10 = *(v4 + v8 + 11);
    if (v10 != 2)
    {
      goto LABEL_23;
    }
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v11 + 72);
    if (v12)
    {
      v13 = *v12 + 120 * *(v12 + v5 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, 0x1B5u) != *(v13 + 12))
      {
        goto LABEL_26;
      }
    }

    if (*(v4 + 56))
    {
      v14 = *(v4 + 48);
      v15 = 8 * *(v4 + 56);
      while (1)
      {
        v16 = *(*v14 + 72);
        if (v16)
        {
          v17 = *v16 + 120 * *(v16 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x1B5u) != *(v17 + 12))
          {
            goto LABEL_26;
          }
        }

        v14 += 8;
        v10 = 1;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v10 = 1;
LABEL_23:
  v18 = *(v4 + 16 * v10 + 16);
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = *(v18 + 72);
  if (!v19 || (v20 = *v19 + 120 * *(v19 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v20, 0x1B5u) == *(v20 + 12)))
  {
    v31 = v4 + 16 * v10;
    if (!*(v31 + 56))
    {
      goto LABEL_35;
    }

    v32 = *(v31 + 48);
    v33 = 8 * *(v31 + 56);
    while (1)
    {
      v34 = *(*v32 + 72);
      if (v34)
      {
        v35 = *v34 + 120 * *(v34 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v35, 0x1B5u) != *(v35 + 12))
        {
          break;
        }
      }

      v32 += 8;
      v33 -= 8;
      if (!v33)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_26:
  v21 = fminf(fmaxf(a2, 0.0), 23.0);
  if (v6)
  {
    v22 = *v6;
    v23 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v22 != 0.0 && v22 != 1.0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(v4 + v23 + 11);
  if (v25 == 2)
  {
LABEL_53:
    v37 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, 0, &v37, v21);
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, 1, &v36, v21);
    goto LABEL_35;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, v25, 0, v21);
LABEL_35:
  v26 = fminf(fmaxf(a2, 0.0), 23.0);
  if (v6)
  {
    v27 = *v6;
    v28 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v27 != 0.0 && v27 != 1.0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = *(v4 + v28 + 11);
  if (v30 == 2)
  {
LABEL_51:
    v39 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, 0, &v39, v26);
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, 1, &v38, v26);
  }

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, v30, 0, v26);
}

uint64_t gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(uint64_t a1, float a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *v4;
    LODWORD(v4) = *v4 == 1.0;
    if (*(a1 + 10) == 1 && v5 != 0.0 && v5 != 1.0)
    {
      v7 = v5 < 1.0;
      goto LABEL_10;
    }
  }

  v8 = *(a1 + v4 + 11);
  if (v8 == 2)
  {
    v7 = 1;
LABEL_10:
    v12 = 1;
    v9 = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, 0, &v12, a2);
    LODWORD(result) = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, 1u, &v11, a2);
    if (v7)
    {
      return v9;
    }

    else
    {
      return result;
    }
  }

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, v8, 0, a2);
}

uint64_t md::PuckStyleInfo::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  for (i = 16; i != 32; i += 4)
  {
    *(result + i) = *(a2 + i);
  }

  do
  {
    *(result + i) = *(a2 + i);
    i += 4;
  }

  while (i != 48);
  do
  {
    *(result + i) = *(a2 + i);
    i += 4;
  }

  while (i != 64);
  v3 = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 64) = v3;
  return result;
}

void md::PuckLogic::update3DPuck(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7)
{
  v11 = a3;
  v182 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 3760);
  [a2 size];
  v15 = v14;
  v16 = *(a1 + 120);
  v17 = *(a1 + 188);
  v18 = *(a4 + 48);
  v19 = *([v18 puck] + 32);

  v153 = (*(a5 + 209) == 1) & *(a5 + 208);
  md::PuckLogic::update3DPuckVisibility(a1, v153);
  if (!*(a1 + 288))
  {
    goto LABEL_110;
  }

  *&v162 = 0;
  *&v159 = 0;
  v173[0] = 0;
  v171 = 0;
  v20 = *(a1 + 192);
  v148 = v11;
  v149 = a7;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v172 = 1;
      v170 = 0;
      v27 = *(a1 + 392);
      v26 = *(a1 + 400);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = 0;
      *&v162 = v27;
      *&v159 = v26;
    }

    else
    {
      if (!*(a1 + 192))
      {
        v172 = 1;
        v170 = 1;
        v22 = *(a1 + 408);
        v21 = *(a1 + 416);
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        *&v162 = v22;
        *&v159 = v21;
        v24 = *(a1 + 424);
        v23 = *(a1 + 432);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v173[0] = v24;
        v171 = v23;
      }

      v25 = 1;
    }

    v28 = 1;
    goto LABEL_24;
  }

  if (!*(a1 + 193))
  {
    v30 = *(a1 + 408);
    v29 = *(a1 + 416);
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(a1 + 193) != 1)
  {
    v28 = 0;
    goto LABEL_23;
  }

  v30 = *(a1 + 392);
  v29 = *(a1 + 400);
  if (v29)
  {
LABEL_18:
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_19:
  v28 = 0;
  v173[0] = v30;
  v171 = v29;
LABEL_23:
  v25 = 1;
LABEL_24:
  v172 = v28 & v153;
  v170 = v25 & v153;
  v31 = *(a1 + 288);
  v32 = gdc::Registry::storage<md::components::OcclusionType>(v31);
  v33 = gdc::Registry::storage<md::components::CustomRenderState>(v31);
  v34 = gdc::Registry::storage<md::components::Visibility>(v31);
  v151 = a1;
  v147 = a5;
  v35.i64[0] = v32;
  v35.i64[1] = v33;
  v174 = vaddq_s64(v35, vdupq_n_s64(0x20uLL));
  v156 = v34 + 4;
  *&v175 = v34 + 4;
  v36 = v174.i64[0];
  v37 = 1;
  v38 = &v174;
  do
  {
    if (*(v174.i64[v37] + 32) - *(v174.i64[v37] + 24) < *(v36 + 32) - *(v36 + 24))
    {
      v36 = v174.i64[v37];
      v38 = (&v174 + v37 * 8);
    }

    ++v37;
  }

  while (v37 != 3);
  v157 = v32 + 4;
  v150 = v38->i64[0];
  if (v32 + 4 == v38->i64[0])
  {
    v39 = v32[7];
    v154 = v32[8];
    if (v39 != v154)
    {
      v40 = v32[10];
      do
      {
        v41 = *(v39 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v33 + 4, v41);
        v43 = v33[8];
        if (v43 != Index)
        {
          v44 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v156, v41);
          v45 = v34[8];
          if (v45 != v44)
          {
            v46 = *v39;
            v47 = HIDWORD(*v39);
            v48 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v33 + 4, HIDWORD(*v39));
            if (v43 == v48)
            {
              v49 = v33[11];
            }

            else
            {
              v49 = (v33[10] + 24 * ((v48 - v33[7]) >> 3));
            }

            v50 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v156, v47);
            if (v45 == v50)
            {
              v51 = v34[11];
            }

            else
            {
              v51 = (v34[10] + ((v50 - v34[7]) >> 3));
            }

            if (!*v40)
            {
              v52 = &v162;
              v53 = &v172;
              v54 = &v159;
              goto LABEL_43;
            }

            if (*v40 == 1)
            {
              v52 = v173;
              v53 = &v170;
              v54 = &v171;
LABEL_43:
              if (v153)
              {
                v55 = *v53;
                if (*v51 != v55)
                {
                  *v51 = v55;
                  v56 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v56, v46);
                }
              }

              else
              {
                *v51 = 0;
              }

              v57 = *v52;
              if (*v49 != *v52)
              {
                v58 = *v54;
                if (*v54)
                {
                  atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v59 = v49[1];
                *v49 = v57;
                v49[1] = v58;
                if (v59)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v59);
                }

                v60 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v60, v46);
              }
            }
          }
        }

        ++v40;
        v39 += 8;
      }

      while (v39 != v154);
    }
  }

  v155 = v33 + 4;
  if (v33 + 4 == v150)
  {
    v61 = v33[7];
    v152 = v33[8];
    if (v61 != v152)
    {
      v62 = (v33[10] + 8);
      do
      {
        v63 = *(v61 + 4);
        v64 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v157, v63);
        v65 = v32[8];
        if (v65 != v64)
        {
          v66 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v156, v63);
          v67 = v34[8];
          if (v67 != v66)
          {
            v68 = *v61;
            v69 = HIDWORD(*v61);
            v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v157, HIDWORD(*v61));
            if (v65 == v70)
            {
              v71 = v32[11];
            }

            else
            {
              v71 = (v32[10] + ((v70 - v32[7]) >> 3));
            }

            v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v156, v69);
            if (v67 == v72)
            {
              v73 = v34[11];
            }

            else
            {
              v73 = (v34[10] + ((v72 - v34[7]) >> 3));
            }

            if (!*v71)
            {
              v74 = &v162;
              v75 = &v172;
              v76 = &v159;
              goto LABEL_69;
            }

            if (*v71 == 1)
            {
              v74 = v173;
              v75 = &v170;
              v76 = &v171;
LABEL_69:
              if (v153)
              {
                v77 = *v75;
                if (*v73 != v77)
                {
                  *v73 = v77;
                  v78 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v78, v68);
                }
              }

              else
              {
                *v73 = 0;
              }

              v79 = *v74;
              if (*(v62 - 1) != *v74)
              {
                v80 = *v76;
                if (*v76)
                {
                  atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v81 = *v62;
                *(v62 - 1) = v79;
                *v62 = v80;
                if (v81)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v81);
                }

                v82 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v82, v68);
              }
            }
          }
        }

        v61 += 8;
        v62 += 3;
      }

      while (v61 != v152);
    }
  }

  if (v156 == v150)
  {
    v84 = v34[7];
    v83 = v34[8];
    if (v84 != v83)
    {
      v85 = v34[10];
      do
      {
        v86 = *(v84 + 4);
        v87 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v157, v86);
        v88 = v32[8];
        if (v88 != v87)
        {
          v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v155, v86);
          v90 = v33[8];
          if (v90 != v89)
          {
            v91 = *v84;
            v92 = HIDWORD(*v84);
            v93 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v157, HIDWORD(*v84));
            if (v88 == v93)
            {
              v94 = v32[11];
            }

            else
            {
              v94 = (v32[10] + ((v93 - v32[7]) >> 3));
            }

            v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v155, v92);
            if (v90 == v95)
            {
              v96 = v33[11];
            }

            else
            {
              v96 = (v33[10] + 24 * ((v95 - v33[7]) >> 3));
            }

            if (!*v94)
            {
              v97 = &v162;
              v98 = &v172;
              v99 = &v159;
              goto LABEL_95;
            }

            if (*v94 == 1)
            {
              v97 = v173;
              v98 = &v170;
              v99 = &v171;
LABEL_95:
              if (v153)
              {
                v100 = *v98;
                if (*v85 != v100)
                {
                  *v85 = v100;
                  v101 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v101, v91);
                }
              }

              else
              {
                *v85 = 0;
              }

              v102 = *v97;
              if (*v96 != *v97)
              {
                v103 = *v99;
                if (*v99)
                {
                  atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v104 = v96[1];
                *v96 = v102;
                v96[1] = v103;
                if (v104)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                }

                v105 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v105, v91);
              }
            }
          }
        }

        ++v85;
        v84 += 8;
      }

      while (v84 != v83);
    }
  }

  if (v171)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v171);
  }

  a5 = v147;
  v11 = v148;
  a1 = v151;
  a7 = v149;
  if (v159)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v159);
  }

LABEL_110:
  v106 = gdc::ToCoordinateSystem(*(v11 + 3784));
  v107 = 0;
  if (v106)
  {
    do
    {
      *&v174.i64[v107] = *(a7 + v107 * 8 + 48) - *(a7 + v107 * 8 + 24);
      ++v107;
    }

    while (v107 != 3);
    v108 = 0;
    v109 = 0.0;
    do
    {
      v109 = v109 + *&v174.i64[v108] * *&v174.i64[v108];
      ++v108;
    }

    while (v108 != 3);
    v110 = sqrt(v109) * 0.0000000249532021;
  }

  else
  {
    do
    {
      *&v174.i64[v107] = a6[v107 + 6] - a6[v107 + 3];
      ++v107;
    }

    while (v107 != 3);
    v111 = 0;
    v112 = 0.0;
    do
    {
      v112 = v112 + *&v174.i64[v111] * *&v174.i64[v111];
      ++v111;
    }

    while (v111 != 3);
    v110 = sqrt(v112);
  }

  v113 = 0;
  v114 = v16;
  do
  {
    *&v174.i64[v113] = a6[v113 + 6] - a6[v113];
    ++v113;
  }

  while (v113 != 3);
  v115 = gm::Matrix<double,3,1>::normalized<int,void>(&v174);
  v174.i64[0] = gm::lerp<gm::Matrix<double,3,1>,float>(a6[9], a6[10], a6[11], v115, v116, v117, v17);
  v174.i64[1] = v118;
  *&v175 = v119;
  v173[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v174);
  v173[1] = v120;
  v173[2] = v121;
  v122 = v19 * -0.5 + 1.57079633;
  v123 = sin(v122);
  for (i = 0; i != 3; ++i)
  {
    *&v174.i64[i] = *&v173[i] * v123;
  }

  v158 = v174;
  v125 = v175;
  v126 = cos(v122);
  v174 = v158;
  *&v175 = v125;
  *(&v175 + 1) = v126;
  gm::quaternionBetweenVectors<double>(&v162, (a6 + 12), v173);
  gm::Quaternion<double>::operator*(&v159, &v174, &v162);
  v127 = 0;
  v128 = a6[15] * 40075017.0;
  if (!*(a6 + 128))
  {
    v128 = 1.0;
  }

  v162 = *a6;
  v163 = *(a6 + 2);
  v164 = v159;
  v165 = v160;
  v166 = v161;
  v167 = v13 * v114 * 1.6 * v110 * v128 / v15;
  v168 = v167;
  v169 = v167;
  do
  {
    *(a1 + 336 + v127 * 8) = a6[v127];
    ++v127;
  }

  while (v127 != 3);
  geo::Transform<double>::toMatrix(&v174, &v162);
  v129 = v179;
  *(a5 + 408) = v178;
  *(a5 + 424) = v129;
  v130 = v181;
  *(a5 + 440) = v180;
  *(a5 + 456) = v130;
  v131 = v175;
  *(a5 + 344) = v174;
  *(a5 + 360) = v131;
  v132 = v177;
  *(a5 + 376) = v176;
  *(a5 + 392) = v132;
  v133 = *(a1 + 288);
  if (v133)
  {
    v134 = a5;
    v135 = gdc::Registry::storage<md::components::DynamicMeshInstance>(*(a1 + 288));
    v136 = gdc::Registry::storage<md::components::Material>(v133);
    v137 = v136;
    v138 = (v136 + 32);
    v140 = v135[7];
    v139 = v135[8];
    if (*(v136 + 64) - *(v136 + 56) >= (v139 - v140))
    {
      v141 = v135 + 4;
    }

    else
    {
      v141 = (v136 + 32);
    }

    if (v135 + 4 == v141)
    {
      v142 = a1;
      v174.i64[0] = a1;
      v174.i64[1] = v134;
      if (v140 != v139)
      {
        v143 = v135[10];
        do
        {
          if (v137[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v138, *(v140 + 4)))
          {
            gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v137, *v140);
            _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(&v174, v143);
          }

          v143 += 304;
          v140 += 8;
        }

        while (v140 != v139);
      }

      a1 = v142;
    }

    if (v138 == v141)
    {
      v174.i64[0] = a1;
      v174.i64[1] = v134;
      v144 = v137[7];
      v145 = v137[8];
      while (v144 != v145)
      {
        if (v135[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v135 + 4, *(v144 + 4)))
        {
          v146 = gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v135, *v144);
          _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(&v174, v146);
        }

        v144 += 8;
      }
    }
  }
}

uint64_t gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>(uint64_t *a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a2);
  v5 = gdc::Registry::storage<md::components::Material>(a2);
  result = gdc::Registry::storage<md::components::Visibility>(a2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

void gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>::each<md::PuckLogic::update3DPuckVisibility(BOOL)::$_0>(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = vbicq_s8(vaddq_s64(*a1, vdupq_n_s64(0x20uLL)), vceqzq_s64(*a1));
  v56 = v6;
  v7 = a1[1].i64[0];
  v8 = v7 + 32;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5.i64[1];
  v10 = v6.i64[0];
  v57 = v8;
  v11 = 1;
  v12 = &v56;
  do
  {
    if (*(v56.i64[v11] + 32) - *(v56.i64[v11] + 24) < *(v10 + 32) - *(v10 + 24))
    {
      v10 = v56.i64[v11];
      v12 = (&v56 + v11 * 8);
    }

    ++v11;
  }

  while (v11 != 3);
  v13 = v12->i64[0];
  v14 = v5.i64[0] + 32;
  if (!v5.i64[0])
  {
    v14 = 0;
  }

  v54 = v12->i64[0];
  if (v14 == v13)
  {
    v15 = *(v5.i64[0] + 56);
    v16 = *(v5.i64[0] + 64);
    if (v15 != v16)
    {
      do
      {
        v17 = a1->i64[1];
        v18 = *(v15 + 4);
        if (*(v17 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v17 + 32), v18))
        {
          v19 = a1[1].i64[0];
          Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v18);
          v21 = v19[8];
          if (v21 != Index)
          {
            v22 = *v15;
            v23 = HIDWORD(*v15);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v17 + 32), HIDWORD(*v15));
            v24 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v23);
            v25 = (v21 == v24 ? v19[11] : v19[10] + ((v24 - v19[7]) >> 3));
            v26 = *a2;
            if (v26 != *v25)
            {
              *v25 = v26;
              v27 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v27, v22);
            }
          }
        }

        v15 += 8;
      }

      while (v15 != v16);
      v9 = a1->i64[1];
      v13 = v54;
    }
  }

  v28 = v9 + 32;
  if (!v9)
  {
    v28 = 0;
  }

  if (v28 == v13)
  {
    v41 = *(v9 + 56);
    v42 = *(v9 + 64);
    while (v41 != v42)
    {
      v43 = a1->i64[0];
      v44 = *(v41 + 4);
      if (*(v43 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v44))
      {
        v45 = a1[1].i64[0];
        v46 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v45 + 4, v44);
        v47 = v45[8];
        if (v47 != v46)
        {
          v48 = *v41;
          v49 = HIDWORD(*v41);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v43 + 32), HIDWORD(*v41));
          v50 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v45 + 4, v49);
          v51 = (v47 == v50 ? v45[11] : v45[10] + ((v50 - v45[7]) >> 3));
          v52 = *a2;
          if (v52 != *v51)
          {
            *v51 = v52;
            v53 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v53, v48);
          }
        }
      }

      v41 += 8;
    }
  }

  v29 = a1[1].i64[0];
  v30 = v29 + 4;
  if (!v29)
  {
    v30 = 0;
  }

  if (v30 == v54)
  {
    v31 = v29[7];
    v32 = v29[8];
    if (v31 != v32)
    {
      v33 = v29[10];
      do
      {
        v34 = a1->i64[0];
        v35 = *(v31 + 4);
        if (*(v34 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v35))
        {
          v36 = a1->i64[1];
          if (*(v36 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v36 + 32), v35))
          {
            v37 = *v31;
            v38 = HIDWORD(*v31);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v34 + 32), HIDWORD(*v31));
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v36 + 32), v38);
            v39 = *a2;
            if (v39 != *v33)
            {
              *v33 = v39;
              v40 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v40, v37);
            }
          }
        }

        ++v33;
        v31 += 8;
      }

      while (v31 != v32);
    }
  }
}

double gm::Quaternion<double>::normalize(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + *(a1 + v1) * *(a1 + v1);
    v1 += 8;
  }

  while (v1 != 24);
  v3 = 0;
  v4 = 1.0 / sqrt(v2 + *(a1 + 24) * *(a1 + 24));
  do
  {
    *(a1 + v3) = *(a1 + v3) * v4;
    v3 += 8;
  }

  while (v3 != 24);
  result = *(a1 + 24) * v4;
  *(a1 + 24) = result;
  return result;
}

void geo::Transform<double>::toMatrix(uint64_t a1, void *a2)
{
  v4 = v22;
  geo::RigidTransform<double,double>::toMatrix(v22, a2);
  v5 = 0;
  v16 = 0u;
  v18 = 0u;
  v20 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v14 = 0u;
  v6 = a2[8];
  v13 = a2[7];
  v21 = 0x3FF0000000000000;
  *&v16 = v6;
  *(&v18 + 1) = a2[9];
  do
  {
    v7 = 0;
    v8 = &v13;
    do
    {
      v9 = 0;
      v10 = 0.0;
      v11 = v4;
      do
      {
        v12 = *v11;
        v11 += 4;
        v10 = v10 + *&v8[v9++] * v12;
      }

      while (v9 != 4);
      *(a1 + 8 * (4 * v7++ + v5)) = v10;
      v8 += 4;
    }

    while (v7 != 4);
    ++v5;
    ++v4;
  }

  while (v5 != 4);
}

double _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(void *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 + 384) & 1) == 0)
  {
    v4 = *(a2 + 36);
    *(v3 + 376) = *(a2 + 52);
    *(v3 + 360) = v4;
    *(v3 + 384) = 1;
  }

  for (i = 0; i != 12; i += 4)
  {
    *(&v29 + i) = *(a2 + i + 48) - *(a2 + i + 36);
  }

  v6 = fmaxf(*&v29, 0.0);
  v7 = fmaxf(*(&v29 + 1), 0.0);
  v8 = fmaxf(*&v30, 0.0);
  if (v6 > v7)
  {
    if (v6 > v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = v7;
  if (v7 <= v8)
  {
LABEL_9:
    v6 = v8;
  }

LABEL_10:
  v32 = 0u;
  v34 = 0;
  v37 = 0u;
  v36 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v38 = 0x3FF0000000000000;
  v29 = 1.0 / v6;
  *&v32 = v29;
  v35 = v29;
  v9 = *(a2 + 44);
  v20 = 0u;
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v21 = 0u;
  v17 = 0x3FF0000000000000;
  *&v20 = 0x3FF0000000000000;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v28 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  v27 = -v9;
  gm::operator*<double,3,4,4>(v14, (a2 + 112), a1[1] + 344);
  gm::operator*<double,3,4,4>(v15, v14, &v29);
  gm::operator*<double,3,4,4>(v16, v15, &v17);
  v10 = v16[3];
  *(a2 + 240) = v16[2];
  *(a2 + 256) = v10;
  v11 = v16[5];
  *(a2 + 272) = v16[4];
  *(a2 + 288) = v11;
  result = *v16;
  v13 = v16[1];
  *(a2 + 208) = v16[0];
  *(a2 + 224) = v13;
  return result;
}

void *md::RegistryManager::getRegistryByIdentifier(md::RegistryManager *this, unsigned int a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  std::vector<gdc::Registry *>::vector[abi:nn200100](v20, this + 48);
  std::vector<gdc::Registry *>::vector[abi:nn200100](v21, this + 51);
  v4 = v22;
  std::vector<gdc::Registry *>::vector[abi:nn200100](v22, this + 60);
  for (i = 0; i != 9; i += 3)
  {
    std::vector<gdc::Registry *>::vector[abi:nn200100](&v18, &v20[i]);
    if (v19 == v18)
    {
      goto LABEL_13;
    }

    v6 = (v19 - v18) >> 3;
    v7 = v18;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v6 += ~(v6 >> 1);
      if (*(v11 + 40) < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    if (v7 == v19)
    {
LABEL_13:
      v14 = 1;
      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      v19 = v18;
      operator delete(v18);
      goto LABEL_15;
    }

    v12 = *v7;
    v13 = *(*v7 + 40);
    v14 = v13 != a2;
    if (v13 == a2)
    {
      v4 = v12;
    }

    if (v18)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  v4 = 0;
LABEL_18:
  for (j = 0; j != -9; j -= 3)
  {
    v16 = v22[j];
    if (v16)
    {
      v22[j + 1] = v16;
      operator delete(v16);
    }
  }

  return v4;
}

double std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::operator()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) + 208;
  v6 = v23;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      *v8 = *(v5 + v7);
      v8 += 4;
      v7 += 24;
    }

    while (v7 != 96);
    ++v3;
    ++v6;
    v5 += 8;
  }

  while (v3 != 3);
  v9 = 0;
  v23[3] = 0;
  v23[7] = 0;
  v23[11] = 0;
  v23[15] = 0x3FF0000000000000;
  do
  {
    v10 = 0;
    v11 = v23;
    do
    {
      v12 = 0;
      v13 = 0.0;
      v14 = v4;
      do
      {
        v15 = *v14;
        v14 += 4;
        v13 = v13 + *&v11[v12++] * v15;
      }

      while (v12 != 4);
      v24[4 * v10++ + v9] = v13;
      v11 += 4;
    }

    while (v10 != 4);
    ++v9;
    ++v4;
  }

  while (v9 != 4);
  v16 = 0;
  v17 = v24;
  do
  {
    v19 = *v17;
    v18 = v17[1];
    v17 += 2;
    v25[v16++] = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
  }

  while (v16 != 4);
  v20 = v25[1];
  *a3 = v25[0];
  a3[1] = v20;
  result = *&v26;
  v22 = v27;
  a3[2] = v26;
  a3[3] = v22;
  return result;
}

uint64_t std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(v4);
}

uint64_t std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(*a3 + 40) - *(*a3 + 32);
  if (v4)
  {
    v5 = *(result + 16);
    v6 = *(v5 + 120);
    if (v6 <= *(result + 8))
    {
      v7 = *a2;
      *(v5 + 120) = v6 + (v4 >> 3);
      result = std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(*(*(result + 24) + 24), v7, v3);
      *(v3 + 40) = *(v3 + 32);
    }

    else
    {
      *(v5 + 128) = 1;
    }
  }

  return result;
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>::resolveDependencies(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t *md::SceneContext::subtileClipMask(int8x8_t *a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a1[10];
  if (v3)
  {
    v4 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = v4 & (*&v3 - 1);
    }

    v7 = *(*&a1[9] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (*(i + 32) == a3 && i[2] == a2)
          {
            return i[5];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  }

  if (v8)
  {
    if (v8[4] == v8[3] * v8[3])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2AFE1C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::BaseMapTileDataRenderable::setSubtileClipMask(md::BaseMapTileDataRenderable *this, const gdc::SubtileClipMask *a2)
{
  if (a2)
  {
    v5 = *(this + 32);
    if (!v5)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile8ClippingEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    ggl::BufferMemory::BufferMemory(v16);
    ggl::ResourceAccessor::accessConstantData(v18, 0, v5, 1);
    ggl::BufferMemory::operator=(v16, v18);
    ggl::BufferMemory::~BufferMemory(v18);
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      v10 = v17;
      v11 = v17 + 1;
      do
      {
        v12 = 0;
        v13 = 1;
        v14 = v7;
        do
        {
          v12 |= ((*(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) << (v13 - 1);
          ++v14;
        }

        while (v6 > v13++);
        v11[v8++] = v12;
        v7 += v6;
      }

      while (v6 > v8);
    }

    else
    {
      v10 = v17;
    }

    *v10 = v6;
    ggl::BufferMemory::~BufferMemory(v16);
  }

  else
  {
    v3 = *(this + 33);
    *(this + 32) = 0;
    *(this + 33) = 0;
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void md::MercatorTerrainAnchor::setCoordinate(md::MercatorTerrainAnchor *a1, uint64_t a2)
{
  (*(*a1 + 64))(&v5);
  if (*a2 != *&v5 || *(a2 + 8) != *(&v5 + 1) || *(a2 + 16) != v6)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      md::AnchorManager::clearTerrainHeightForAnchor(*(v4 + 16), a1);
      v5 = *a2;
      v6 = *(a2 + 16);
      md::Anchor::setCoordinate(a1, &v5);
    }
  }
}

uint64_t std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (result)
  {
    v3 = result;
    result = 1;
    do
    {
      v4 = *(v3 + 48);
      v5 = *(v3 + 48) > a3;
      v6 = *(v3 + 32);
      if (v4 == a3)
      {
        v5 = v6 > a2;
      }

      if (!v5)
      {
        v7 = v6 < a2;
        if (v4 == a3)
        {
          v8 = v7;
        }

        else
        {
          v8 = v4 < a3;
        }

        if (!v8)
        {
          return result;
        }

        v3 += 8;
      }

      v3 = *v3;
    }

    while (v3);
    return 0;
  }

  return result;
}

void md::BaseMapTileDataRenderable::adjustZScale(md::BaseMapTileDataRenderable *this, float a2, float a3)
{
  if ((*(this + 384) & 1) == 0)
  {
    v5 = *(this + 10) - *(this + 8);
    *(this + 22) = v5;
    *(this + 26) = 0;
  }

  ggl::ConstantDataTyped<ggl::Grid::Style>::write(v7, *(this + 30));
  v6 = v8;
  *(v8 + 348) = a2;
  *(v6 + 344) = a3;
  ggl::BufferMemory::~BufferMemory(v7);
}

void md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = *(a3 + 408);
  v7 = *(a3 + 416);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a3 + 392);
  v9 = *(a3 + 400);
  v54 = v9;
  v55 = v7;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v6 + 169) > *(v8 + 169))
    {
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if (*(v6 + 169) > *(v8 + 169))
  {
LABEL_5:
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v8;
    v11 = v7;
    v12 = v9;
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_69:
    v12 = 0;
    v14 = *(v10 + 169);
    v13 = 1;
    goto LABEL_9;
  }

  v10 = v6;
  v11 = v9;
  v6 = v8;
  v12 = v7;
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_8:
  v13 = 0;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v10 + 169);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  v15 = *a2;
  v16 = (*a2)[10];
  v56 = v12;
  if (v16)
  {
    v17 = ((v10 << 6) + (v10 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v10;
    v18 = vcnt_s8(v16);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = ((v10 << 6) + (v10 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v10;
      if (v17 >= *&v16)
      {
        v19 = v17 % *&v16;
      }
    }

    else
    {
      v19 = v17 & (*&v16 - 1);
    }

    v20 = *(*&v15[9] + 8 * v19);
    if (v20)
    {
      for (i = *v20; i; i = *i)
      {
        v22 = i[1];
        if (v17 == v22)
        {
          if (*(i + 32) == v5 && i[2] == v10)
          {
            v39 = i[5];
            goto LABEL_29;
          }
        }

        else
        {
          if (v18.u32[0] > 1uLL)
          {
            if (v22 >= *&v16)
            {
              v22 %= *&v16;
            }
          }

          else
          {
            v22 &= *&v16 - 1;
          }

          if (v22 != v19)
          {
            break;
          }
        }
      }
    }
  }

  v39 = 0;
LABEL_29:
  v24 = *(v6 + 169);
  v25 = *(v6 + 172);
  v26 = *(v6 + 176);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *a2;
    v53 = v11;
  }

  else
  {
    v53 = 0;
  }

  v27 = md::SceneContext::subtileClipMask(v15, v6, v5);
  v52 = v13;
  if (!(v27 | v39))
  {
    __p = 0;
    v58 = 0uLL;
    operator new();
  }

  v28 = v27;
  if (v39)
  {
    v29 = v24 - v14;
    v30 = (*(v39 + 6) >> (v24 - v14));
    v31 = -1 << v29;
    v32 = v30 * (v26 & ~v31);
    v33 = v30 * (v25 & ~v31);
    if (v27)
    {
      LODWORD(v40) = *(v27 + 24);
      if (v30 <= v40)
      {
        v40 = v40;
      }

      else
      {
        v40 = v30;
      }

      LOBYTE(v60) = 0;
      v41 = v40;
      std::vector<BOOL>::vector(&__p, v40 * v40);
      v42 = 0;
      v59 = v41;
      v50 = v41 / v30;
      v51 = v41 / *(v28 + 24);
      do
      {
        v43 = 0;
        v49 = v42 / v50 + v33;
        v44 = v42;
        v45 = v42 / v51;
        do
        {
          v46 = v43 / v51 + *(v28 + 24) * v45;
          if ((*(*v28 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = v43 / v50 + v32 + v39[3] * v49;
            v48 = (*(*v39 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1;
          }

          else
          {
            LODWORD(v48) = 0;
          }

          gdc::SubtileClipMask::setSubTileVisible(&__p, v43++, v44, v48);
        }

        while (v43 < v41);
        v42 = v44 + 1;
      }

      while (v44 + 1 < v41);
    }

    else
    {
      __p = 0;
      v58 = 0uLL;
      if (v30)
      {
        std::vector<BOOL>::__vallocate[abi:nn200100](&__p, v30 * v30);
      }

      v59 = v30;
    }
  }

  else
  {
    std::vector<BOOL>::vector(&__p, v27);
    v59 = *(v28 + 24);
  }

  v34 = (a3 + 424);
  if ((a3 + 424) != &__p)
  {
    v37 = v58;
    if (v58)
    {
      if (v58 > *(a3 + 440) << 6)
      {
        if (*v34)
        {
          operator delete(*v34);
          *v34 = 0;
          *(a3 + 432) = 0;
          *(a3 + 440) = 0;
          v37 = v58;
        }

        std::vector<BOOL>::__vallocate[abi:nn200100](a3 + 424, v37);
      }

      memmove(*v34, __p, (((v58 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v38 = v58;
    }

    else
    {
      v38 = 0;
    }

    *(a3 + 432) = v38;
  }

  *(a3 + 448) = v59;
  v35 = *(&v59 + 1);
  *(a3 + 464) = *(&v59 + 1) != 0;
  if (v35)
  {
    if (*(a3 + 456) == *(a3 + 448) * *(a3 + 448))
    {
      v36 = 0;
    }

    else
    {
      v36 = (a3 + 424);
    }

    md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v36);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if ((v52 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  if ((v52 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B2AFEAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *(a2 + 392);
  v4 = *(a2 + 400);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 408);
  v6 = *(a2 + 416);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 56);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(*(v3 + 136), v5, v8);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(*(v10 + 8), v7, v8))
  {
    v11 = 1;
  }

  else
  {
LABEL_21:
    FillRect = grl::IconMetricsRenderResult::getFillRect(v5);
    v11 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v3 + 88), FillRect) != 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_14:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v11;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  result = md::VKMRenderResourcesStore::getAssociationItemStorage(**(a1 + 8), *a3, 0);
  if (!result)
  {
    v5 = *v3;
    v6 = ecs2::ExecutionTaskContext::currentEntity(0);
    v7 = ecs2::addComponent<md::ls::PendingDeletion>(v5, v6);
    v8 = *v3;
    v9 = ecs2::ExecutionTaskContext::currentEntity(v7);

    return ecs2::removeComponent<md::ls::MeshRenderableID>(v8, v9);
  }

  return result;
}

uint64_t md::VKMRenderResourcesStore::getAssociationItemStorage(void *a1, unint64_t a2, int a3)
{
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1716, a2);
  if (v5 == a1[1721])
  {
    return 0;
  }

  v7 = (v5 - a1[1720]) >> 3;
  v8 = v7 >> 6;
  v9 = v7 & 0x3F;
  result = *(a1[1729] + 8 * v8) + 56 * v9;
  if (a3)
  {
    v10 = *(a1[1723] + 8 * v8);
    ++*(v10 + 24 * v9);
  }

  return result;
}

uint64_t ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1];
  if (v2 < (a1[2] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    return a1[4] + 8 * v5[1];
  }

  else
  {
    return a1[5];
  }
}

uint64_t **std::__function::__func<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = **(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = v5;
  v10[1] = v6;
  result = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(v4 + 46, v10);
  if (!result || !result[4] || (**(a1 + 16) & 1) != 0 || (result = md::MaterialResourceStore::canDeleteMaterial(v4, v5, v6), result))
  {
    v8 = *v3;
    v9 = ecs2::ExecutionTaskContext::currentEntity(result);

    return ecs2::addComponent<md::ls::PendingDeletion>(v8, v9);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = (*a2 + ((v3 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (v3 - 0x61C8864680B583EBLL);
  v5 = *(a2 + 9);
  v6 = ((v5 | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = ((v5 | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[2] == *a2 && __PAIR64__(*(result + 25), *(result + 24)) == __PAIR64__(v5, v3))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **md::MaterialResourceStore::canDeleteMaterial(void *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  result = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(a1 + 46, v9);
  if (result)
  {
    v5 = result[4];
    v8 = v5;
    if (!v5)
    {
      return 0;
    }

    v6 = *(*(a1[3] + 8 * (v5 >> 6)) + 16 * (v5 & 0x3F) + 8);
    v7 = (*(a1[9] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v6 & 0x3F));
    if (*v7 || v7[1])
    {
      return 0;
    }

    else
    {
      ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(a1 + 2, &v8);
      util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 28), v5);
      std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(a1 + 51, v5);
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::__erase_unique<md::MaterialKey>(a1 + 46, v9);
      return 1;
    }
  }

  return result;
}

uint64_t **std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1>,void ()(md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, uint64_t a5, char **a6, unint64_t **a7, uint64_t *a8)
{
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v43 = *(a1 + 40);
  v13 = **(a1 + 8);
  Registry = md::VKMRenderResourcesStore::getRegistry(v13, *a2);
  v15 = **(a1 + 16);
  v16 = md::MeshRenderableContext::renderablesForRegistry(v15, Registry);
  LOBYTE(v17) = 0;
  if (v10)
  {
    if (v11)
    {
      v17 = **(a1 + 24);
      if (v17)
      {
        BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v13, *v11);
        DynamicRenderables = md::FlyoverCompleteTileDataContext::getDynamicRenderables(v17, v10, *(BaseMapTileDataRenderable + 56));
        LOBYTE(v17) = md::FlyoverCompleteTileDataContext::needsUpdate(*(**(a1 + 24) + 32), v10, *(BaseMapTileDataRenderable + 56));
        md::FlyoverCompleteTileDataContext::getOctileInstances(__p, **(a1 + 24), v10, *(BaseMapTileDataRenderable + 56));
        if (*DynamicRenderables != *(DynamicRenderables + 1))
        {
          LOBYTE(v17) = 1;
          v16 = DynamicRenderables;
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v15 = **(a1 + 16);
      }
    }
  }

  result = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v15 + 5, *(Registry + 40));
  if (result)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  if (v12 || v21 | **(a1 + 32))
  {
    v22 = *(a3 + 16) - *(a3 + 8);
    v23 = (v16[1] - *v16) >> 3;
    __p[0] = 0xFFFFFFFFLL;
    v24 = std::vector<unsigned long>::resize((a3 + 8), v23, __p);
    v25 = *v16;
    v26 = v16[1];
    v27 = v26 - *v16;
    v28 = v27 >> 3;
    if (v27 >> 3 > (v22 >> 3))
    {
      v29 = 0;
      v30 = 0;
      v31 = *(a3 + 8);
      do
      {
        v32 = *(v25[v30] + 204);
        v33 = *(v31 + 8 * v30);
        v35 = v33 != v32 && v33 != 0xFFFFFFFFLL;
        v29 |= v35;
        *(v31 + 8 * v30++) = v32;
      }

      while (v28 != v30);
    }

    else
    {
      v45[0] = 204;
      v45[1] = v16;
      std::__copy_impl::operator()[abi:nn200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::back_insert_iterator<std::vector<unsigned long>>>(__p, v45, v25, v45, v26, a3 + 8);
      v25 = *v16;
      v26 = v16[1];
      v27 = v26 - *v16;
      v29 = 1;
    }

    if (v12)
    {
      v36 = 1;
    }

    else
    {
      v36 = v26 == v25;
    }

    v37 = v36;
    v38 = v37 | (v28 <= v22 >> 3) | v29;
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v22 >> 3;
    }

    *a3 = v27 >> 3;
    *(a3 + 2) = v39;
    v40 = v38 | (*a4 == 62);
    v41 = *v43;
    v42 = ecs2::ExecutionTaskContext::currentEntity(v24);
    return ecs2::addComponent<md::ls::EnteringView>(v41, v42, v40 & 1);
  }

  return result;
}

uint64_t md::VKMRenderResourcesStore::getRegistry(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1665];
  if (v2 < (a1[1666] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[1668];
    v7 = v6 + 8 * v5[1];
    v8 = a1[1669];
  }

  else
  {
    v8 = a1[1669];
    v6 = a1[1668];
    v7 = v8;
  }

  if (v7 == v8)
  {
    return 0;
  }

  v9 = v7 - v6;
  v10 = *(a1[1677] + (((v9 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8));
  if (!v10)
  {
    return 0;
  }

  else
  {
    return *(v10 + (v9 & 0x1F8));
  }
}

uint64_t *md::MeshRenderableContext::renderablesForRegistry(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v2 = a1[1];
  if (!*&v2)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v3 = *(a2 + 40);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *(a2 + 40);
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v7 = *v6;
  result = &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  if (!v7)
  {
    return result;
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == v3)
    {
      if (*(v7 + 8) == v3)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v2)
      {
        v9 %= *&v2;
      }
    }

    else
    {
      v9 &= *&v2 - 1;
    }

    if (v9 != v5)
    {
      break;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v7 = 0;
LABEL_22:
  if (v7)
  {
    return (v7 + 3);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablesCount>();
    *algn_1EB83D508 = 0x684A78DCF1B284C1;
    qword_1EB83D510 = "md::ls::RenderablesCount]";
    qword_1EB83D518 = 24;
  }
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(void *a1, uint64_t a2)
{
  v3 = *(a2 + 392);
  v4 = *(a2 + 400);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 56);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 56);
  }

  v6 = a1[17];
  if (!v6)
  {
LABEL_13:
    FillRect = grl::IconMetricsRenderResult::getFillRect(v3);
    v13 = a1[12];
    if (!*&v13)
    {
      goto LABEL_30;
    }

    v14 = FillRect;
    v15 = *(FillRect + 104);
    v16 = vcnt_s8(v13);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v16.u32[0];
    if (v16.u32[0] > 1uLL)
    {
      v18 = *(FillRect + 104);
      if (v15 >= *&v13)
      {
        v18 = v15 % *&v13;
      }
    }

    else
    {
      v18 = (*&v13 - 1) & v15;
    }

    v19 = *(a1[11] + 8 * v18);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = *(i + 8);
        if (v15 == v21)
        {
          if (gdc::LayerDataRequestKey::operator==((i + 16), v14))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v17 > 1)
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

          if (v21 != v18)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      i = 0;
    }

    if (v4)
    {
      goto LABEL_32;
    }

    return i;
  }

  while (1)
  {
    v7 = *(v6 + 48);
    v8 = v7 > v5;
    v9 = v6[4];
    if (v5 == v7)
    {
      v8 = v3 < v9;
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v10 = *(v6 + 48);
    v11 = v9 < v3;
    if (v5 != v10)
    {
      v11 = v10 < v5;
    }

    if (!v11)
    {
      break;
    }

    ++v6;
LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

LABEL_34:
  i = 1;
  if (!v4)
  {
    return i;
  }

LABEL_32:
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  return i;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
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
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)> &,md::MapTileDataRenderable<md::DaVinciTrafficTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B2B00128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::DaVinciTrafficRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *(a1 + 34);
  v6 = *(a3 + 8);
  v7 = md::LayoutContext::get<md::ElevationContext>(v6);
  v8 = md::LayoutContext::get<md::SettingsContext>(v6);
  if (v8)
  {
    v9 = v8[6];
  }

  else
  {
    v9 = 0;
  }

  v10 = md::LayoutContext::get<md::CameraContext>(v6);
  v11 = v10;
  if (v9 && v10)
  {
    v12 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v9, 6, fmaxf(*(v10 + 3080) + *(v10 + 3076), 1.0));
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v13 = fmin(*(v11 + 3776), 0.0);
LABEL_9:
  if (v7)
  {
    v14 = v7[4];
    v15 = v7[5];
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
  }

  v16 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    v18 = v15 * v12;
    do
    {
      v19 = *v16;
      v20 = *(*v16 + 392);
      md::BaseMapTileDataRenderable::adjustZScale(*v16, v14, v15);
      if (v5 != 47)
      {
        gdc::Tiled::unitsPerMeter((v20 + 168));
        v22 = v18 * v21;
        ggl::ConstantDataTyped<ggl::Grid::Style>::write(v25, *(v19 + 240));
        *(v26 + 336) = v22;
        ggl::BufferMemory::~BufferMemory(v25);
      }

      gdc::Tiled::unitsPerMeter((v20 + 168));
      v24 = v23;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v25, *(v19 + 240));
      *(v26 + 352) = v24 * v13;
      ggl::BufferMemory::~BufferMemory(v25);
      ++v16;
    }

    while (v16 != v17);
  }

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateWithContext(v10, a2, a3);
}

const geo::QuadTile *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  v15 = result;
  if (result)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      if (!(v6 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v6);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    result = (*(*a1 + 208))(a1);
    if (result)
    {
      v7 = *(a1 + 34);
    }

    else
    {
      v7 = -1;
    }

    v8 = *(a1 + 176);
    if (v8 != a1 + 184)
    {
      v14 = v7;
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v10 + 172);
      *v17 = *(v10 + 168);
      v19 = *(v10 + 184);
      v20 = *(v10 + 192);
      v11 = *(v10 + 608);
      v12 = *(v10 + 616);
      v13 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v13);
      md::GeometryContext::transformConstantData(v11, v12, v16, v15, v17, v13, v14);
    }
  }

  return result;
}

void sub_1B2B0090C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2B00A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(uint64_t a1, unsigned __int16 a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 16 * a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 72);
  if (!v9 || (v10 = *v9 + 120 * *(v9 + a3 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v10, a2) == *(v10 + 12)))
  {
    v12 = a1 + 16 * a4;
    if (!*(v12 + 56))
    {
      return 0;
    }

    v13 = *(v12 + 48);
    v14 = 8 * *(v12 + 56);
    v15 = a3;
    while (1)
    {
      v16 = *(*v13 + 72);
      if (v16)
      {
        v17 = *v16 + 120 * *(v16 + v15 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, a2) != *(v17 + 12))
        {
          break;
        }
      }

      result = 0;
      v13 += 8;
      v14 -= 8;
      if (!v14)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  if (a5 == 2)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = *v11;
      LODWORD(v11) = *v11 == 1.0;
      if (*(a2 + 10) == 1 && v12 != 0.0 && v12 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v14 = a2 + v11;
  }

  else
  {
    v14 = a2 + a5;
  }

  v15 = *(v14 + 11);
  v12 = 0.0;
  if (v15 != 2)
  {
    result = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, a4, v15, a6);
    *a1 = *result;
    return result;
  }

LABEL_12:
  v21 = v12;
  v23 = 1;
  v22 = 1;
  v16 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, a4, 0, &v23);
  result = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, a4, 1u, &v22);
  v18 = *result;
  if (a6)
  {
    *a6 = (v23 | v22) & 1;
  }

  v19 = vdupq_n_s32(0x37800080u);
  v20 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v16)), v19);
  *a1 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vmovl_u16(v18))), v21), vdupq_n_s32(0x477FFF00u))));
  return result;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (v12)
        {
          v15 = *v12;
          v13 = v12 + 2;
          v14 = v15;
          v16 = v15 + 120 * *(v13 + a3);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) != *(v16 + 12))
          {
            break;
          }
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if (a3 >= 0x17)
      {
        v24 = 23;
      }

      else
      {
        v24 = a3;
      }

      v25 = v14 + 120 * *(v13 + v24);
      v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v25 + 72), a2);
      if (v21 != *(v25 + 84))
      {
        v22 = *(v25 + 72);
        v23 = *(v25 + 80);
        return (v22 + v23 + 8 * v21);
      }

      return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

LABEL_7:
    v17 = *(v7 + 72);
    if (v17)
    {
      v18 = a3 >= 0x17 ? 23 : a3;
      v19 = *v17 + 120 * *(v17 + v18 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, a2) != *(v19 + 12))
      {
        v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v19 + 72), a2);
        if (v21 != *(v19 + 84))
        {
          v22 = *(v19 + 72);
          v23 = *(v19 + 80);
          return (v22 + v23 + 8 * v21);
        }

        return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::find<md::FoundationKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::FoundationKeyHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (geo::QuadTile::operator==(i + 16, this) && *(i + 12) == *(this + 8))
      {
        return i;
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
  }

  return i;
}

unint64_t md::OverlayKeyHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v2 = ((*(this + 2) << 6) + (*(this + 2) >> 2) + *(this + 16) - 0x61C8864680B583EBLL) ^ *(this + 2);
  result = (*(this + 9) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  if (*(this + 48) == 1)
  {
    result ^= (result << 6) - 0x61C8864680B583EBLL + (result >> 2) + *(this + 5);
  }

  return result;
}

BOOL md::OverlayKey::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v9 = a2;
    v10 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v9;
    a1 = v10;
    v10[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v7 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v8 = (*(a2 + 1) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    v3 = (*(a2 + 2) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  if (v2 != v3 || *a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 16) != *(a2 + 16) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a1[48];
  v5 = v4 == a2[48];
  if (v4 == a2[48] && a1[48])
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  return v5;
}

unsigned __int8 *gdc::LayerDataRequestKey::LayerDataRequestKey(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int16 a3, uint64_t a4, int a5)
{
  *a1 = a2;
  v9 = (a1 + 8);
  v11[0] = v14;
  v11[1] = v14;
  v12 = v14;
  v13 = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(v11, *a4, *(a4 + 8));
  v14[4] = *(a4 + 64);
  gdc::LayerDataKey::LayerDataKey(v9, a3, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  *(a1 + 24) = a5;
  a1[100] = 1;
  *(a1 + 13) = (*(a1 + 11) + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  return a1;
}

unsigned __int16 *gdc::LayerDataKey::LayerDataKey(unsigned __int16 *a1, unsigned __int16 a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 1) = a1 + 20;
  *(a1 + 2) = a1 + 20;
  *(a1 + 3) = a1 + 20;
  *(a1 + 4) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1 + 1, *a3, *(a3 + 8));
  v5 = *(a3 + 64);
  v6 = (v5 + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  *(a1 + 9) = v5;
  *(a1 + 10) = v6;
  return a1;
}

void md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_0::operator()(uint64_t a1, void *a2, std::__shared_weak_count *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    if ((*(a1 + 320) & 1) == 0)
    {
      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      v6 = a2[141];
      if (v6 != a2 + 142)
      {
        if (v19 != v20)
        {
          v7 = v20;
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        operator new();
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v20[0]);
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      v10 = a2[144];
      v11 = a2 + 145;
      if (v10 != a2 + 145)
      {
        do
        {
          v12 = v10[4];
          if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 152), v12) && (*(a1 + 216) & v10[5]) != 0)
          {
            v19 = v12;
            v20[0] = 0;
            gdc::GenericKey::GenericKey(v15, &v19, 2);
            gdc::LayerDataRequestKey::LayerDataRequestKey(v16, 0, 0x37u, v15, -1073741827);
            if (v15[0] != v15[2])
            {
              free(v15[0]);
            }

            gdc::LayerDataCollector::addDataKey(*(a1 + 120), v16);
            if (v17 != v18)
            {
              free(v17);
            }
          }

          v13 = v10[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v10[2];
              v9 = *v14 == v10;
              v10 = v14;
            }

            while (!v9);
          }

          v10 = v14;
        }

        while (v14 != v11);
      }
    }
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }
}

void sub_1B2B0180C(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 - 104));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::RenderableInjected>(uint64_t a1)
{
  v3 = 0x2D19D14B1A606548;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2D19D14B1A606548uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::PuckStyleInfo::update(uint64_t a1, void **a2, uint64_t a3, id *a4, uint64_t *a5, uint64_t *a6, float a7)
{
  v367[1] = *MEMORY[0x1E69E9840];
  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorLinear, &md::kDefaultArrowColor);
  }

  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorStaleLinear, &md::kDefaultArrowColorStale);
  }

  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultCircleColorLinear, &md::TransitLine::_resolveStyle(int,std::shared_ptr<gss::FeatureQueryImpl<gss::PropertyID>> &,md::TransitLine::ResolvedStyle &)::kZeroBrightnessColor);
  }

  v12 = *a6;
  v13 = a6[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v353, v12, v13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v346 = a5;
  v14 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*a2, a2[1]);
  v15 = v356;
  if ((v356 & 1) == 0)
  {
    *(a1 + 8) = 1065353216;
    goto LABEL_72;
  }

  v16 = a7;
  v17 = v353[3];
  if (a7 >= 0x17)
  {
    v18 = 23;
  }

  else
  {
    v18 = v16;
  }

  v19 = *v17;
  if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
  {
    v23 = *(v17 + 16);
    if (v23)
    {
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = *v24 + 120 * *(v24 + v18 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0xF7u) != *(v25 + 12))
        {
          goto LABEL_34;
        }
      }

      if (*(v17 + 56))
      {
        v26 = *(v17 + 48);
        v27 = 8 * *(v17 + 56);
        v22 = 1;
        while (1)
        {
          v28 = *(*v26 + 72);
          if (v28)
          {
            v29 = *v28 + 120 * *(v28 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0xF7u) != *(v29 + 12))
            {
              goto LABEL_34;
            }
          }

          v26 += 8;
          v27 -= 8;
          if (!v27)
          {
            goto LABEL_31;
          }
        }
      }
    }

    v22 = 1;
  }

LABEL_31:
  v30 = *(v17 + 16 * v22 + 16);
  if (!v30)
  {
    goto LABEL_41;
  }

  v31 = *(v30 + 72);
  if (v31)
  {
    v32 = *v31 + 120 * *(v31 + v18 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, 0xF7u) != *(v32 + 12))
    {
      goto LABEL_34;
    }
  }

  v34 = v17 + 16 * v22;
  if (!*(v34 + 56))
  {
LABEL_41:
    *(a1 + 8) = 1065353216;
    v15 = 1;
    goto LABEL_42;
  }

  v35 = *(v34 + 48);
  v36 = 8 * *(v34 + 56);
  while (1)
  {
    v37 = *(*v35 + 72);
    if (v37)
    {
      v38 = *v37 + 120 * *(v37 + v18 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0xF7u) != *(v38 + 12))
      {
        break;
      }
    }

    v35 += 8;
    v36 -= 8;
    if (!v36)
    {
      goto LABEL_41;
    }
  }

LABEL_34:
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v17, 247, v18, 2u, 0);
  v15 = v356;
  *(a1 + 8) = v33;
  if (v15)
  {
LABEL_42:
    v39 = v353[3];
    if (v16 >= 0x17)
    {
      v40 = 23;
    }

    else
    {
      v40 = v16;
    }

    v41 = *v39;
    if (*v39 && (v42 = *v41, LODWORD(v41) = *v41 == 1.0, *(v39 + 10) == 1) && (v42 != 0.0 ? (v43 = v42 == 1.0) : (v43 = 1), !v43) || (v44 = *(v39 + v41 + 11), v44 == 2))
    {
      v45 = *(v39 + 16);
      if (v45)
      {
        v46 = *(v45 + 72);
        if (v46)
        {
          v47 = *v46 + 120 * *(v46 + v40 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x18Fu) != *(v47 + 12))
          {
            goto LABEL_66;
          }
        }

        if (*(v39 + 56))
        {
          v48 = *(v39 + 48);
          v49 = 8 * *(v39 + 56);
          while (1)
          {
            v50 = *(*v48 + 72);
            if (v50)
            {
              v51 = *v50 + 120 * *(v50 + v40 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v51, 0x18Fu) != *(v51 + 12))
              {
                goto LABEL_66;
              }
            }

            v48 += 8;
            v44 = 1;
            v49 -= 8;
            if (!v49)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v44 = 1;
    }

LABEL_63:
    v52 = *(v39 + 16 * v44 + 16);
    if (!v52)
    {
      goto LABEL_72;
    }

    v53 = *(v52 + 72);
    if (!v53 || (v54 = *v53 + 120 * *(v53 + v40 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v54, 0x18Fu) == *(v54 + 12)))
    {
      v56 = v39 + 16 * v44;
      if (!*(v56 + 56))
      {
        goto LABEL_72;
      }

      v57 = *(v56 + 48);
      v58 = 8 * *(v56 + 56);
      while (1)
      {
        v59 = *(*v57 + 72);
        if (v59)
        {
          v60 = *v59 + 120 * *(v59 + v40 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x18Fu) != *(v60 + 12))
          {
            break;
          }
        }

        v57 += 8;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_72;
        }
      }
    }

LABEL_66:
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v365, v39, 399, v40, 2u, 0);
    v357 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v365)), vdupq_n_s32(0x37800080u));
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v353[3], 503, v40, 2u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v365, *v14, &v357, v55);
    *(a1 + 16) = v365;
    v15 = v356;
    goto LABEL_74;
  }

LABEL_72:
  for (i = 0; i != 4; ++i)
  {
    *(a1 + 16 + i * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultCircleColorLinear[i];
  }

LABEL_74:
  if (v15)
  {
    v62 = v353[3];
    if (a7 >= 0x17)
    {
      v63 = 23;
    }

    else
    {
      v63 = a7;
    }

    v64 = *v62;
    if (*v62 && (v65 = *v64, LODWORD(v64) = *v64 == 1.0, *(v62 + 10) == 1) && (v65 != 0.0 ? (v66 = v65 == 1.0) : (v66 = 1), !v66) || (v67 = *(v62 + v64 + 11), v67 == 2))
    {
      v68 = *(v62 + 16);
      if (v68)
      {
        v69 = *(v68 + 72);
        if (v69)
        {
          v70 = *v69 + 120 * *(v69 + v63 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v70, 0xF9u) != *(v70 + 12))
          {
            goto LABEL_99;
          }
        }

        if (*(v62 + 56))
        {
          v71 = *(v62 + 48);
          v72 = 8 * *(v62 + 56);
          while (1)
          {
            v73 = *(*v71 + 72);
            if (v73)
            {
              v74 = *v73 + 120 * *(v73 + v63 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v74, 0xF9u) != *(v74 + 12))
              {
                goto LABEL_99;
              }
            }

            v71 += 8;
            v67 = 1;
            v72 -= 8;
            if (!v72)
            {
              goto LABEL_96;
            }
          }
        }
      }

      v67 = 1;
    }

LABEL_96:
    v75 = *(v62 + 16 * v67 + 16);
    if (v75)
    {
      v76 = *(v75 + 72);
      if (v76)
      {
        v77 = *v76 + 120 * *(v76 + v63 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v77, 0xF9u) != *(v77 + 12))
        {
LABEL_99:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v365, v62, 249, v63, 2u, 0);
          v357 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v365)), vdupq_n_s32(0x37800080u));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v353[3], 502, v63, 2u, 0);
          md::AccessibilityHelper::luminanceAdjustedColor(&v365, *v14, &v357, v78);
          *(a1 + 48) = v365;
          v15 = v356;
          goto LABEL_107;
        }
      }

      v79 = v62 + 16 * v67;
      if (*(v79 + 56))
      {
        v80 = *(v79 + 48);
        v81 = 8 * *(v79 + 56);
        do
        {
          v82 = *(*v80 + 72);
          if (v82)
          {
            v83 = *v82 + 120 * *(v82 + v63 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v83, 0xF9u) != *(v83 + 12))
            {
              goto LABEL_99;
            }
          }

          v80 += 8;
          v81 -= 8;
        }

        while (v81);
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(a1 + 48 + j * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorStaleLinear[j];
  }

LABEL_107:
  if (v15)
  {
    v85 = v353[3];
    if (a7 >= 0x17)
    {
      v86 = 23;
    }

    else
    {
      v86 = a7;
    }

    v87 = *v85;
    if (*v85 && (v88 = *v87, LODWORD(v87) = *v87 == 1.0, *(v85 + 10) == 1) && (v88 != 0.0 ? (v89 = v88 == 1.0) : (v89 = 1), !v89) || (v90 = *(v85 + v87 + 11), v90 == 2))
    {
      v91 = *(v85 + 16);
      if (v91)
      {
        v92 = *(v91 + 72);
        if (v92)
        {
          v93 = *v92 + 120 * *(v92 + v86 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v93, 0xF8u) != *(v93 + 12))
          {
            goto LABEL_132;
          }
        }

        if (*(v85 + 56))
        {
          v94 = *(v85 + 48);
          v95 = 8 * *(v85 + 56);
          while (1)
          {
            v96 = *(*v94 + 72);
            if (v96)
            {
              v97 = *v96 + 120 * *(v96 + v86 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v97, 0xF8u) != *(v97 + 12))
              {
                goto LABEL_132;
              }
            }

            v94 += 8;
            v90 = 1;
            v95 -= 8;
            if (!v95)
            {
              goto LABEL_129;
            }
          }
        }
      }

      v90 = 1;
    }

LABEL_129:
    v98 = *(v85 + 16 * v90 + 16);
    if (v98)
    {
      v99 = *(v98 + 72);
      if (v99)
      {
        v100 = *v99 + 120 * *(v99 + v86 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v100, 0xF8u) != *(v100 + 12))
        {
LABEL_132:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v365, v85, 248, v86, 2u, 0);
          v357 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v365)), vdupq_n_s32(0x37800080u));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v353[3], 501, v86, 2u, 0);
          md::AccessibilityHelper::luminanceAdjustedColor(&v365, *v14, &v357, v101);
          *(a1 + 32) = v365;
          v15 = v356;
          goto LABEL_140;
        }
      }

      v102 = v85 + 16 * v90;
      if (*(v102 + 56))
      {
        v103 = *(v102 + 48);
        v104 = 8 * *(v102 + 56);
        do
        {
          v105 = *(*v103 + 72);
          if (v105)
          {
            v106 = *v105 + 120 * *(v105 + v86 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v106, 0xF8u) != *(v106 + 12))
            {
              goto LABEL_132;
            }
          }

          v103 += 8;
          v104 -= 8;
        }

        while (v104);
      }
    }
  }

  for (k = 0; k != 4; ++k)
  {
    *(a1 + 32 + k * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorLinear[k];
  }

LABEL_140:
  if ((v15 & 1) == 0)
  {
    *(a1 + 12) = 1065353216;
    goto LABEL_229;
  }

  v108 = a7;
  v109 = v353[3];
  if (a7 >= 0x17)
  {
    v110 = 23;
  }

  else
  {
    v110 = v108;
  }

  v111 = *v109;
  if (!*v109 || (v112 = *v111, LODWORD(v111) = *v111 == 1.0, *(v109 + 10) != 1) || (v112 != 0.0 ? (v113 = v112 == 1.0) : (v113 = 1), v113))
  {
    v114 = *(v109 + v111 + 11);
    if (v114 != 2)
    {
LABEL_163:
      v122 = *(v109 + 16 * v114 + 16);
      if (v122)
      {
        v123 = *(v122 + 72);
        if (v123)
        {
          v124 = *v123 + 120 * *(v123 + v110 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v124, 0xF6u) != *(v124 + 12))
          {
            goto LABEL_166;
          }
        }

        v126 = v109 + 16 * v114;
        if (*(v126 + 56))
        {
          v127 = *(v126 + 48);
          v128 = 8 * *(v126 + 56);
          do
          {
            v129 = *(*v127 + 72);
            if (v129)
            {
              v130 = *v129 + 120 * *(v129 + v110 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v130, 0xF6u) != *(v130 + 12))
              {
                goto LABEL_166;
              }
            }

            v127 += 8;
            v128 -= 8;
          }

          while (v128);
        }
      }

      *(a1 + 12) = 1065353216;
      if (v15)
      {
        goto LABEL_174;
      }

LABEL_229:
      v167 = 0;
      goto LABEL_230;
    }
  }

  v115 = *(v109 + 16);
  if (!v115)
  {
    goto LABEL_162;
  }

  v116 = *(v115 + 72);
  if (v116)
  {
    v117 = *v116 + 120 * *(v116 + v110 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v117, 0xF6u) != *(v117 + 12))
    {
      goto LABEL_166;
    }
  }

  if (!*(v109 + 56))
  {
LABEL_162:
    v114 = 1;
    goto LABEL_163;
  }

  v118 = *(v109 + 48);
  v119 = 8 * *(v109 + 56);
  while (1)
  {
    v120 = *(*v118 + 72);
    if (v120)
    {
      v121 = *v120 + 120 * *(v120 + v110 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v121, 0xF6u) != *(v121 + 12))
      {
        break;
      }
    }

    v118 += 8;
    v114 = 1;
    v119 -= 8;
    if (!v119)
    {
      goto LABEL_163;
    }
  }

LABEL_166:
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v109, 246, v110, 2u, 0);
  v15 = v356;
  *(a1 + 12) = v125;
  if ((v15 & 1) == 0)
  {
    goto LABEL_229;
  }

LABEL_174:
  v131 = v353[3];
  if (v108 >= 0x17)
  {
    v132 = 23;
  }

  else
  {
    v132 = v108;
  }

  v133 = *v131;
  if (!*v131)
  {
    v135 = 0;
    goto LABEL_184;
  }

  v134 = *v133;
  v135 = *v133 == 1.0;
  if (*(v131 + 10) != 1 || (v134 != 0.0 ? (v136 = v134 == 1.0) : (v136 = 1), v136))
  {
LABEL_184:
    v137 = *(v131 + v135 + 11);
    if (v137 != 2)
    {
      goto LABEL_195;
    }
  }

  v138 = *(v131 + 16);
  if (v138)
  {
    v139 = *(v138 + 72);
    if (v139)
    {
      v140 = *v139 + 120 * *(v139 + v132 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v140, 0xFAu) != *(v140 + 12))
      {
        goto LABEL_198;
      }
    }

    if (*(v131 + 56))
    {
      v141 = *(v131 + 48);
      v142 = 8 * *(v131 + 56);
      v137 = 1;
      while (1)
      {
        v143 = *(*v141 + 72);
        if (v143)
        {
          v144 = *v143 + 120 * *(v143 + v132 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v144, 0xFAu) != *(v144 + 12))
          {
            goto LABEL_198;
          }
        }

        v141 += 8;
        v142 -= 8;
        if (!v142)
        {
          goto LABEL_195;
        }
      }
    }
  }

  v137 = 1;
LABEL_195:
  v145 = *(v131 + 16 * v137 + 16);
  if (!v145)
  {
    goto LABEL_208;
  }

  v146 = *(v145 + 72);
  if (v146)
  {
    v147 = *v146 + 120 * *(v146 + v132 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v147, 0xFAu) != *(v147 + 12))
    {
LABEL_198:
      v148 = fminf(fmaxf(a7, 0.0), 23.0);
      if (v133)
      {
        v149 = *v133;
        v150 = *v133 == 1.0;
        if (*(v131 + 10) == 1 && v149 != 0.0 && v149 != 1.0)
        {
          goto LABEL_457;
        }
      }

      else
      {
        v150 = 0;
      }

      v152 = *(v131 + v150 + 11);
      v149 = 0.0;
      if (v152 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v131, 250, v152, 0, v148);
LABEL_207:
        *a1 = v153;
        goto LABEL_208;
      }

LABEL_457:
      v357.i8[0] = 1;
      LOBYTE(v365) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v131, 250, 0, &v357, v148);
      v343 = v342;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v131, 250, 1, &v365, v148);
      v153 = v343 + ((v344 - v343) * v149);
      goto LABEL_207;
    }
  }

  v182 = v131 + 16 * v137;
  if (*(v182 + 56))
  {
    v183 = *(v182 + 48);
    v184 = 8 * *(v182 + 56);
    do
    {
      v185 = *(*v183 + 72);
      if (v185)
      {
        v186 = *v185 + 120 * *(v185 + v132 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v186, 0xFAu) != *(v186 + 12))
        {
          goto LABEL_198;
        }
      }

      v183 += 8;
      v184 -= 8;
    }

    while (v184);
  }

LABEL_208:
  if ((v15 & 1) == 0)
  {
    goto LABEL_229;
  }

  v154 = v353[3];
  if (v108 >= 0x17)
  {
    v155 = 23;
  }

  else
  {
    v155 = v108;
  }

  v156 = *v154;
  if (*v154 && (v157 = *v156, LODWORD(v156) = *v156 == 1.0, *(v154 + 10) == 1) && (v157 != 0.0 ? (v158 = v157 == 1.0) : (v158 = 1), !v158) || (v159 = *(v154 + v156 + 11), v159 == 2))
  {
    v160 = *(v154 + 16);
    if (v160)
    {
      v161 = *(v160 + 72);
      if (v161)
      {
        v162 = *v161 + 120 * *(v161 + v155 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v162, 0xFBu) != *(v162 + 12))
        {
          goto LABEL_417;
        }
      }

      if (*(v154 + 56))
      {
        v163 = *(v154 + 48);
        v164 = 8 * *(v154 + 56);
        while (1)
        {
          v165 = *(*v163 + 72);
          if (v165)
          {
            v166 = *v165 + 120 * *(v165 + v155 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v166, 0xFBu) != *(v166 + 12))
            {
              break;
            }
          }

          v163 += 8;
          v159 = 1;
          v164 -= 8;
          if (!v164)
          {
            goto LABEL_414;
          }
        }

LABEL_417:
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v154, 251, v155, 2u, 0);
        v309 = v356;
        *(a1 + 4) = v310;
        v167 = 0;
        if ((v309 & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_425;
      }
    }

    v159 = 1;
  }

LABEL_414:
  v306 = *(v154 + 16 * v159 + 16);
  if (v306)
  {
    v307 = *(v306 + 72);
    if (v307)
    {
      v308 = *v307 + 120 * *(v307 + v155 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v308, 0xFBu) != *(v308 + 12))
      {
        goto LABEL_417;
      }
    }

    v311 = v154 + 16 * v159;
    if (*(v311 + 56))
    {
      v312 = *(v311 + 48);
      v313 = 8 * *(v311 + 56);
      do
      {
        v314 = *(*v312 + 72);
        if (v314)
        {
          v315 = *v314 + 120 * *(v314 + v155 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v315, 0xFBu) != *(v315 + 12))
          {
            goto LABEL_417;
          }
        }

        v312 += 8;
        v313 -= 8;
      }

      while (v313);
    }
  }

  v167 = 0;
  if ((v15 & 1) == 0)
  {
    goto LABEL_230;
  }

LABEL_425:
  v316 = v353[3];
  if (v108 >= 0x17)
  {
    v317 = 23;
  }

  else
  {
    v317 = v108;
  }

  v318 = *v316;
  if (*v316 && (v319 = *v318, LODWORD(v318) = *v318 == 1.0, *(v316 + 10) == 1) && (v319 != 0.0 ? (v320 = v319 == 1.0) : (v320 = 1), !v320) || (v321 = *(v316 + v318 + 11), v321 == 2))
  {
    v322 = *(v316 + 16);
    if (v322)
    {
      v323 = *(v322 + 72);
      if (v323)
      {
        v324 = *v323 + 120 * *(v323 + v317 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v324, 0x1B9u) != *(v324 + 12))
        {
LABEL_449:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v316, 441, v317, 2u, 0);
          v167 = v332;
          goto LABEL_230;
        }
      }

      if (*(v316 + 56))
      {
        v325 = *(v316 + 48);
        v326 = 8 * *(v316 + 56);
        while (1)
        {
          v327 = *(*v325 + 72);
          if (v327)
          {
            v328 = *v327 + 120 * *(v327 + v317 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v328, 0x1B9u) != *(v328 + 12))
            {
              goto LABEL_449;
            }
          }

          v325 += 8;
          v321 = 1;
          v326 -= 8;
          if (!v326)
          {
            goto LABEL_446;
          }
        }
      }
    }

    v321 = 1;
  }

LABEL_446:
  v329 = *(v316 + 16 * v321 + 16);
  v167 = 0;
  if (!v329)
  {
    goto LABEL_230;
  }

  v330 = *(v329 + 72);
  if (v330)
  {
    v331 = *v330 + 120 * *(v330 + v317 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v331, 0x1B9u) != *(v331 + 12))
    {
      goto LABEL_449;
    }
  }

  v333 = v316 + 16 * v321;
  if (*(v333 + 56))
  {
    v334 = *(v333 + 48);
    v335 = 8 * *(v333 + 56);
    do
    {
      v336 = *(*v334 + 72);
      if (v336)
      {
        v337 = *v336 + 120 * *(v336 + v317 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v337, 0x1B9u) != *(v337 + 12))
        {
          goto LABEL_449;
        }
      }

      v334 += 8;
      v335 -= 8;
    }

    while (v335);
  }

LABEL_230:
  *(a1 + 68) = v167;
  if ((v356 & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_263:
    *(a1 + 73) = 0;
LABEL_264:
    v192 = 1.2;
    goto LABEL_265;
  }

  v168 = a7;
  v169 = v353[3];
  if (a7 >= 0x17)
  {
    v170 = 23;
  }

  else
  {
    v170 = v168;
  }

  v171 = *v169;
  if (*v169 && (v172 = *v171, LODWORD(v171) = *v171 == 1.0, *(v169 + 10) == 1) && (v172 != 0.0 ? (v173 = v172 == 1.0) : (v173 = 1), !v173) || (v174 = *(v169 + v171 + 11), v174 == 2))
  {
    v175 = *(v169 + 16);
    if (v175)
    {
      v176 = *(v175 + 72);
      if (v176)
      {
        v177 = *v176 + 120 * *(v176 + v170 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v177, 0x1C4u) != *(v177 + 12))
        {
          goto LABEL_262;
        }
      }

      if (*(v169 + 56))
      {
        v178 = *(v169 + 48);
        v179 = 8 * *(v169 + 56);
        while (1)
        {
          v180 = *(*v178 + 72);
          if (v180)
          {
            v181 = *v180 + 120 * *(v180 + v170 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v181, 0x1C4u) != *(v181 + 12))
            {
              goto LABEL_262;
            }
          }

          v178 += 8;
          v174 = 1;
          v179 -= 8;
          if (!v179)
          {
            goto LABEL_259;
          }
        }
      }
    }

    v174 = 1;
  }

LABEL_259:
  v187 = *(v169 + 16 * v174 + 16);
  if (!v187)
  {
    goto LABEL_310;
  }

  v188 = *(v187 + 72);
  if (v188)
  {
    v189 = *v188 + 120 * *(v188 + v170 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v189, 0x1C4u) != *(v189 + 12))
    {
      goto LABEL_262;
    }
  }

  v239 = v169 + 16 * v174;
  if (!*(v239 + 56))
  {
LABEL_310:
    *(a1 + 72) = 0;
    v191 = 1;
    goto LABEL_311;
  }

  v240 = *(v239 + 48);
  v241 = 8 * *(v239 + 56);
  while (1)
  {
    v242 = *(*v240 + 72);
    if (v242)
    {
      v243 = *v242 + 120 * *(v242 + v170 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v243, 0x1C4u) != *(v243 + 12))
      {
        break;
      }
    }

    v240 += 8;
    v241 -= 8;
    if (!v241)
    {
      goto LABEL_310;
    }
  }

LABEL_262:
  v190 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v169, 452, v170, 2, 0);
  v191 = v356;
  *(a1 + 72) = v190;
  if ((v191 & 1) == 0)
  {
    goto LABEL_263;
  }

LABEL_311:
  v244 = v353[3];
  if (v168 >= 0x17)
  {
    v245 = 23;
  }

  else
  {
    v245 = v168;
  }

  v246 = *v244;
  if (*v244 && (v247 = *v246, LODWORD(v246) = *v246 == 1.0, *(v244 + 10) == 1) && (v247 != 0.0 ? (v248 = v247 == 1.0) : (v248 = 1), !v248) || (v249 = *(v244 + v246 + 11), v249 == 2))
  {
    v250 = *(v244 + 16);
    if (v250)
    {
      v251 = *(v250 + 72);
      if (v251)
      {
        v252 = *v251 + 120 * *(v251 + v245 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v252, 0x1C5u) != *(v252 + 12))
        {
          goto LABEL_374;
        }
      }

      if (*(v244 + 56))
      {
        v253 = *(v244 + 48);
        v254 = 8 * *(v244 + 56);
        v249 = 1;
        while (1)
        {
          v255 = *(*v253 + 72);
          if (v255)
          {
            v256 = *v255 + 120 * *(v255 + v245 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v256, 0x1C5u) != *(v256 + 12))
            {
              goto LABEL_374;
            }
          }

          v253 += 8;
          v254 -= 8;
          if (!v254)
          {
            goto LABEL_371;
          }
        }
      }
    }

    v249 = 1;
  }

LABEL_371:
  v274 = *(v244 + 16 * v249 + 16);
  if (!v274)
  {
    goto LABEL_381;
  }

  v275 = *(v274 + 72);
  if (v275)
  {
    v276 = *v275 + 120 * *(v275 + v245 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v276, 0x1C5u) != *(v276 + 12))
    {
      goto LABEL_374;
    }
  }

  v279 = v244 + 16 * v249;
  if (!*(v279 + 56))
  {
LABEL_381:
    *(a1 + 73) = 0;
    if ((v191 & 1) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_382;
  }

  v280 = *(v279 + 48);
  v281 = 8 * *(v279 + 56);
  while (1)
  {
    v282 = *(*v280 + 72);
    if (v282)
    {
      v283 = *v282 + 120 * *(v282 + v245 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v283, 0x1C5u) != *(v283 + 12))
      {
        break;
      }
    }

    v280 += 8;
    v281 -= 8;
    if (!v281)
    {
      goto LABEL_381;
    }
  }

LABEL_374:
  v277 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v244, 453, v245, 2, 0);
  v278 = v356;
  *(a1 + 73) = v277;
  if ((v278 & 1) == 0)
  {
    goto LABEL_264;
  }

LABEL_382:
  v284 = v353[3];
  if (v168 >= 0x17)
  {
    v285 = 23;
  }

  else
  {
    v285 = v168;
  }

  v286 = *v284;
  if (*v284 && (v287 = *v286, LODWORD(v286) = *v286 == 1.0, *(v284 + 10) == 1) && (v287 != 0.0 ? (v288 = v287 == 1.0) : (v288 = 1), !v288) || (v289 = *(v284 + v286 + 11), v289 == 2))
  {
    v290 = *(v284 + 16);
    if (v290)
    {
      v291 = *(v290 + 72);
      if (v291)
      {
        v292 = *v291 + 120 * *(v291 + v285 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v292, 0x1A1u) != *(v292 + 12))
        {
LABEL_406:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v284, 417, v285, 2u, 0);
          v192 = v300;
          goto LABEL_265;
        }
      }

      if (*(v284 + 56))
      {
        v293 = *(v284 + 48);
        v294 = 8 * *(v284 + 56);
        while (1)
        {
          v295 = *(*v293 + 72);
          if (v295)
          {
            v296 = *v295 + 120 * *(v295 + v285 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v296, 0x1A1u) != *(v296 + 12))
            {
              goto LABEL_406;
            }
          }

          v293 += 8;
          v289 = 1;
          v294 -= 8;
          if (!v294)
          {
            goto LABEL_403;
          }
        }
      }
    }

    v289 = 1;
  }

LABEL_403:
  v297 = *(v284 + 16 * v289 + 16);
  v192 = 1.2;
  if (!v297)
  {
    goto LABEL_265;
  }

  v298 = *(v297 + 72);
  if (v298)
  {
    v299 = *v298 + 120 * *(v298 + v285 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v299, 0x1A1u) != *(v299 + 12))
    {
      goto LABEL_406;
    }
  }

  v301 = v284 + 16 * v289;
  if (*(v301 + 56))
  {
    v302 = *(v301 + 48);
    v303 = 8 * *(v301 + 56);
    do
    {
      v304 = *(*v302 + 72);
      if (v304)
      {
        v305 = *v304 + 120 * *(v304 + v285 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v305, 0x1A1u) != *(v305 + 12))
        {
          goto LABEL_406;
        }
      }

      v302 += 8;
      v303 -= 8;
    }

    while (v303);
  }

LABEL_265:
  v193 = *(a3 + 40);
  v194 = [v193 routeInfo];
  v195 = [v194 route];
  v196 = [v195 transportType];

  v365 = 0uLL;
  v366 = 0;
  v360 = v367;
  v198 = gss::zone_mallocator::instance(v197);
  v199 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v198, 1);
  *v199 = 0xB00000005;
  v200 = v199 - (*(&v365 + 1) - v365);
  memcpy(v200, v365, *(&v365 + 1) - v365);
  v201 = v365;
  v202 = v366;
  *&v365 = v200;
  *(&v365 + 1) = v199 + 1;
  v366 = (v199 + 1);
  v358 = v201;
  v359 = v202;
  v357.i64[0] = v201;
  v357.i64[1] = v201;
  v203 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v357);
  *(&v365 + 1) = v199 + 1;
  if ((v199 + 1) >= v366)
  {
    v205 = (v199 - v365 + 8) >> 3;
    if ((v205 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v206 = (v366 - v365) >> 2;
    if (v206 <= v205 + 1)
    {
      v206 = v205 + 1;
    }

    if (v366 - v365 >= 0x7FFFFFFFFFFFFFF8)
    {
      v207 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v207 = v206;
    }

    v360 = v367;
    if (v207)
    {
      v208 = gss::zone_mallocator::instance(v203);
      v209 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v208, v207);
    }

    else
    {
      v209 = 0;
    }

    v210 = &v209[8 * v207];
    v211 = (v196 << 32) | 0x10010;
    v212 = &v209[8 * v205];
    *v212 = v211;
    v204 = (v212 + 1);
    v213 = &v209[8 * v205 - (*(&v365 + 1) - v365)];
    memcpy(v213, v365, *(&v365 + 1) - v365);
    v214 = v365;
    v215 = v366;
    *&v365 = v213;
    *(&v365 + 1) = v204;
    v366 = v210;
    v358 = v214;
    v359 = v215;
    v357.i64[0] = v214;
    v357.i64[1] = v214;
    std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v357);
  }

  else
  {
    v199[1] = (v196 << 32) | 0x10010;
    v204 = (v199 + 2);
  }

  *(&v365 + 1) = v204;
  memset(v364, 0, 24);
  gss::FeatureAttributeSet::setByReplacingAttributes(v363, v364, v365, v204);
  v351[0] = 0;
  v351[1] = 0;
  v352 = 256;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v351, 0x10002u) = 1;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v351, 0x1004Du) = 1;
  v216 = *(*v346 + 520);
  v217 = *(*v346 + 528);
  if (v217)
  {
    atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v218 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v216);
  if (v217)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v217);
  }

  v357.i64[0] = v218;
  gss::DisplayStyle::applyDisplayStyle(&v357, v351);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v349, *v346, v363, v351);
  v219 = v349;
  v220 = v350;
  if (v350)
  {
    atomic_fetch_add_explicit(&v350->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v357, v219, v220);
  if (v220)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v220);
  }

  if (v360 == 1)
  {
    md::RouteLineSection::halfWidthAtZoom(&v357, a7);
    v222 = v221;
    v223 = *a4;
    v224 = v222 + v222;
    if ([v223 alphaAtlas])
    {
      v225 = *a4;
      v226 = *([v225 alphaAtlas] + 16);

      v224 = v226 * v224;
    }

    v227 = *(v357.i64[0] + 24);
    if (a7 >= 0x17)
    {
      v228 = 23;
    }

    else
    {
      v228 = a7;
    }

    v229 = *v227;
    if (*v227 && (v230 = *v229, LODWORD(v229) = *v229 == 1.0, *(v227 + 10) == 1) && v230 != 0.0 && v230 != 1.0 || (v231 = *(v227 + v229 + 11), v231 == 2))
    {
      v232 = *(v227 + 16);
      if (v232)
      {
        v233 = *(v232 + 72);
        if (v233)
        {
          v234 = *v233 + 120 * *(v233 + v228 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v234, 0x13Fu) != *(v234 + 12))
          {
            goto LABEL_335;
          }
        }

        if (*(v227 + 56))
        {
          v235 = *(v227 + 48);
          v236 = 8 * *(v227 + 56);
          while (1)
          {
            v237 = *(*v235 + 72);
            if (v237)
            {
              v238 = *v237 + 120 * *(v237 + v228 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v238, 0x13Fu) != *(v238 + 12))
              {
                goto LABEL_335;
              }
            }

            v235 += 8;
            v231 = 1;
            v236 -= 8;
            if (!v236)
            {
              goto LABEL_332;
            }
          }
        }
      }

      v231 = 1;
    }

LABEL_332:
    v257 = *(v227 + 16 * v231 + 16);
    if (!v257)
    {
      goto LABEL_344;
    }

    v258 = *(v257 + 72);
    if (v258)
    {
      v259 = *v258 + 120 * *(v258 + v228 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v259, 0x13Fu) != *(v259 + 12))
      {
        goto LABEL_335;
      }
    }

    v262 = v227 + 16 * v231;
    if (!*(v262 + 56))
    {
LABEL_344:
      v260 = 1.0;
LABEL_345:
      if (v360 == 1)
      {
        v267 = *(v357.i64[0] + 24);
        v268 = fminf(fmaxf(a7, 0.0), 23.0);
        v269 = *v267;
        if (*v267 && (v270 = *v269, LODWORD(v269) = *v269 == 1.0, *(v267 + 10) == 1) && (v270 != 0.0 ? (v271 = v270 == 1.0) : (v271 = 1), !v271) || (v272 = *(v267 + v269 + 11), v270 = 0.0, v272 == 2))
        {
          v362 = 1;
          v338 = v270;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v267, 97, 0, &v362, v268);
          v348 = v224;
          v340 = v339;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v267, 97, 1, &v361, v268);
          v273 = v340 + ((v341 - v340) * v338);
          v224 = v348;
        }

        else
        {
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v357.i64[0] + 24), 97, v272, 0, v268);
        }

        *a1 = fmaxf(*a1, (v224 + ((v260 + v260) * v273)) * v192);
        (*(*v357.i64[0] + 56))(v357.i64[0]);
      }

      else
      {
        *a1 = fmaxf(*a1, v224 * v192);
      }

      goto LABEL_357;
    }

    v263 = *(v262 + 48);
    v264 = 8 * *(v262 + 56);
    while (1)
    {
      v265 = *(*v263 + 72);
      if (v265)
      {
        v266 = *v265 + 120 * *(v265 + v228 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v266, 0x13Fu) != *(v266 + 12))
        {
          break;
        }
      }

      v263 += 8;
      v264 -= 8;
      if (!v264)
      {
        goto LABEL_344;
      }
    }

LABEL_335:
    v260 = 0.0;
    v261 = gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(v227, fminf(fmaxf(a7, 0.0), 23.0));
    if (v261 == 2)
    {
      v260 = 0.5;
    }

    if (v261)
    {
      goto LABEL_345;
    }

    goto LABEL_344;
  }

LABEL_357:
  if (v359)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v359);
  }

  if (v357.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v357.i64[1]);
  }

  if (v350)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v350);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v351);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v363);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v364);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v365);
  if (v356 == 1)
  {
    (*(*v353 + 56))(v353);
  }

  if (v355)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v355);
  }

  if (v354)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v354);
  }
}

void sub_1B2B0370C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  _Unwind_Resume(exception_object);
}

int *gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(void *a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v3 = 23;
  }

  else
  {
    v3 = a3;
  }

  v4 = *a1 + 120 * *(a1 + v3 + 16);
  v5 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 48), a2);
  if (v5 == *(v4 + 60))
  {
    return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 48) + *(v4 + 56) + 4 * v5);
  }
}

uint64_t gdc::Registry::storage<md::components::OcclusionType>(uint64_t a1)
{
  v3 = 0x2CA863C195D6BB81;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2CA863C195D6BB81uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

double gm::quaternionBetweenVectors<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = gm::Matrix<double,3,1>::cross<int,void>(a2, a3);
  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + *(a3 + v9) * *(a2 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v11 = 0;
  *&v14 = v6;
  *(&v14 + 1) = v7;
  v12 = 0.0;
  v15 = v8;
  v16 = v10;
  do
  {
    v12 = v12 + *(&v14 + v11) * *(&v14 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = sqrt(v12 + v10 * v10) + v10;

  return gm::Quaternion<double>::normalize(a1);
}

uint64_t gm::operator*<double,3,4,4>(uint64_t result, double *a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = 0;
      v7 = 0.0;
      v8 = a2;
      do
      {
        v9 = *v8;
        v8 += 3;
        v7 = v7 + *(v5 + v6) * v9;
        v6 += 8;
      }

      while (v6 != 32);
      *(result + 8 * (3 * v4++ + i)) = v7;
      v5 += 32;
    }

    while (v4 != 4);
    ++a2;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      if (*(v2 + 48) == 1)
      {
        v3 = v2[5];
        if (v3)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v3);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void md::DrapingLogic::_drapeKeyPair(uint64_t a1, uint64_t a2, uint64_t a3, grl::IconMetricsRenderResult **a4, grl::IconMetricsRenderResult **a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v9 = std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::find<md::FoundationKey>((*(a1 + 168) + 8), a2);
  if (!v9 || (v10 = v9, !std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::find<md::OverlayKey>(v9 + 7, a3)))
  {
    operator new();
  }

  v11 = std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::find<md::OverlayKey>(v10 + 7, a3);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = *(v11 + 9);
  v14 = *(v13 + 32);
  if (v14 && (v15 = std::__shared_weak_count::lock(v14)) != 0)
  {
    v16 = *(v13 + 24);
    v17 = *a4;
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (v16 != v17)
    {
LABEL_8:
      if (GEOGetVectorKitDrapingLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
      }

      v18 = GEOGetVectorKitDrapingLog_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *(v55.__r_.__value_.__r.__words + 4) = *(a2 + 4);
        LOWORD(v55.__r_.__value_.__l.__data_) = *a2;
        v55.__r_.__value_.__r.__words[2] = *(a2 + 16);
        LOBYTE(v56) = *(a2 + 24);
        md::debugString<geo::QuadTile>(&v53, &v55);
        if (v54 >= 0)
        {
          v19 = &v53;
        }

        else
        {
          v19 = v53;
        }

        v20 = *(v12 + 9);
        v21 = *(v20 + 32);
        v51 = a3;
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = *(v20 + 24);
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
          v22 = 0;
        }

        v24 = *a4;
        v25 = *(v12 + 9);
        v26 = *(v25 + 32);
        if (v26)
        {
          v26 = std::__shared_weak_count::lock(v26);
          v27 = v26;
          if (v26)
          {
            v26 = *(v25 + 24);
          }
        }

        else
        {
          v27 = 0;
        }

        FillRect = grl::IconMetricsRenderResult::getFillRect(v26);
        v29 = &v55;
        gdc::LayerDataRequestKey::keysInt32Str(&v55, FillRect);
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v55.__r_.__value_.__r.__words[0];
        }

        v30 = grl::IconMetricsRenderResult::getFillRect(*a4);
        gdc::LayerDataRequestKey::keysInt32Str(&__p, v30);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        buf[0] = 136316162;
        *&buf[1] = v19;
        v58 = 2048;
        v59 = v23;
        v60 = 2048;
        v61 = v24;
        v62 = 2080;
        v63 = v29;
        v64 = 2080;
        v65 = p_p;
        _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_DEBUG, "For draping key %s : Mismatch of ground tile data ptrs %p and %p.  Keys are %s, %s", buf, 0x34u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        a3 = v51;
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53);
        }
      }
    }
  }

  else if (*a4)
  {
    goto LABEL_8;
  }

  v32 = *(v12 + 9);
  v33 = *(v32 + 48);
  if (v33 && (v34 = std::__shared_weak_count::lock(v33)) != 0)
  {
    v35 = *(v32 + 40);
    v36 = *a5;
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    if (v35 == v36)
    {
      return;
    }
  }

  else if (!*a5)
  {
    return;
  }

  if (GEOGetVectorKitDrapingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
  }

  v37 = GEOGetVectorKitDrapingLog_log;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *(v55.__r_.__value_.__r.__words + 4) = *(a3 + 4);
    LOWORD(v55.__r_.__value_.__l.__data_) = *a3;
    v55.__r_.__value_.__r.__words[2] = *(a3 + 16);
    LOBYTE(v56) = *(a3 + 24);
    md::debugString<geo::QuadTile>(&v53, &v55);
    if (v54 >= 0)
    {
      v38 = &v53;
    }

    else
    {
      v38 = v53;
    }

    v39 = *(v12 + 9);
    v40 = *(v39 + 48);
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      if (v41)
      {
        v42 = *(v39 + 40);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v43 = *a5;
    v44 = *(v12 + 9);
    v45 = *(v44 + 48);
    if (v45)
    {
      v45 = std::__shared_weak_count::lock(v45);
      v46 = v45;
      if (v45)
      {
        v45 = *(v44 + 40);
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = grl::IconMetricsRenderResult::getFillRect(v45);
    v48 = &v55;
    gdc::LayerDataRequestKey::keysInt32Str(&v55, v47);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v55.__r_.__value_.__r.__words[0];
    }

    v49 = grl::IconMetricsRenderResult::getFillRect(*a5);
    gdc::LayerDataRequestKey::keysInt32Str(&__p, v49);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &__p;
    }

    else
    {
      v50 = __p.__r_.__value_.__r.__words[0];
    }

    buf[0] = 136316162;
    *&buf[1] = v38;
    v58 = 2048;
    v59 = v42;
    v60 = 2048;
    v61 = v43;
    v62 = 2080;
    v63 = v48;
    v64 = 2080;
    v65 = v50;
    _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_DEBUG, "For draping key %s : Mismatch of overlay tile data ptrs %p and %p.  Keys are %s, %s", buf, 0x34u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }
  }
}

uint64_t md::FoundationKeyHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  return ((*(this + 2) << 6) + (*(this + 2) >> 2) + *(this + 8) - 0x61C8864680B583EBLL) ^ *(this + 2);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::find<md::OverlayKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::OverlayKeyHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (md::OverlayKey::operator==(i + 16, this))
      {
        return i;
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
  }

  return i;
}

{
  v4 = md::OverlayKeyHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (md::OverlayKey::operator==(i + 16, this))
      {
        return i;
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
  }

  return i;
}

uint64_t geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(void *a1, unint64_t a2)
{
  if (a2 >> 7 >= (a1[1] - *a1) >> 3)
  {
    return a1[4];
  }

  v2 = *(*a1 + 8 * (a2 >> 7));
  if (!v2)
  {
    return a1[4];
  }

  v3 = *(v2 + 2 * (a2 & 0x7F));
  v5 = a1[3];
  result = a1[4];
  if (v3 < (result - v5) >> 3)
  {
    v6 = v5 + 8 * v3;
    if (*(v6 + 4) == a2)
    {
      return v6;
    }
  }

  return result;
}

uint64_t *gdc::GenericKey::GenericKey(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = (a1 + 4);
  a1[1] = (a1 + 4);
  a1[2] = (a1 + 4);
  a1[3] = 32;
  a1[8] = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v5 = 8 * a3;
  do
  {
    v6 = *a2++;
    v13 = v6;
    geo::small_vector_base<unsigned char>::insert<unsigned char *>(a1, a1[1], &v13, &v14);
    v5 -= 8;
  }

  while (v5);
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  if (v7 == *a1)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = *v8++;
      v10 ^= (v10 << 6) + (v10 >> 2) - 0x61C8864680B583EBLL + v11;
      --v9;
    }

    while (v9);
  }

  a1[8] = v10;
  return a1;
}

void md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_1::operator()(uint64_t a1, unint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 152), a2))
  {
    v8[0] = a2;
    v8[1] = 0;
    gdc::GenericKey::GenericKey(v4, v8, 2);
    gdc::LayerDataRequestKey::LayerDataRequestKey(v5, 0, 0x37u, v4, -1073741827);
    if (v4[0] != v4[2])
    {
      free(v4[0]);
    }

    gdc::LayerDataCollector::addDataKey(*(a1 + 120), v5);
    if (v6 != v7)
    {
      free(v6);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = *(v5 + 8);
      if (v7.u32[0] > 1uLL)
      {
        v12 = *(v5 + 8);
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = *(v5 + 8);
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v3);
}

uint64_t gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material,md::components::Asset>(uint64_t *a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a2);
  v5 = gdc::Registry::storage<md::components::Material>(a2);
  result = gdc::Registry::storage<md::components::Asset>(a2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + ((v3 - a1[7]) >> 3);
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

uint64_t gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(uint64_t a1, unsigned int a2, _BYTE *a3, float a4)
{
  v4 = a3;
  LODWORD(v5) = a4;
  if (a4 >= 0x17)
  {
    v6 = 23;
  }

  else
  {
    v6 = v5;
  }

  if (v5 >= 0x16)
  {
    v5 = 22;
  }

  else
  {
    v5 = v5;
  }

  v7 = *(a1 + 16 * a2 + 16);
  if (!v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return *gss::defaultValueForKey<gss::PropertyID,unsigned int>(319);
  }

  v9 = v5 + 1;
  v10 = a1 + 16 * a2;
  if (!*(v10 + 56))
  {
    v32 = 1;
    v31 = 1;
    v26 = *(v7 + 72);
    v12 = *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v26, v6, &v32);
LABEL_39:
    v27 = *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v26, v9, &v31);
    if (v4)
    {
LABEL_40:
      *v4 = (v32 | v31) & 1;
    }

    goto LABEL_41;
  }

  v29 = *(a1 + 16 * a2 + 16);
  v11 = 0;
  v28 = 0;
  v12 = 0;
  v13 = *(v10 + 48);
  v14 = &v13[*(v10 + 56)];
  while (2)
  {
    LOBYTE(v15) = 0;
    while (1)
    {
      v16 = *v13;
      if (v15)
      {
        break;
      }

      v17 = *(v16 + 72);
      if (v17)
      {
        v18 = *v17 + 120 * *(v17 + v6 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v18, 0x13Fu) != *(v18 + 12))
        {
          v19 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v18 + 48), 0x13Fu);
          v20 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
          if (v19 != *(v18 + 60))
          {
            v20 = (*(v18 + 48) + *(v18 + 56) + 4 * v19);
          }

          v12 = *v20;
          break;
        }
      }

      v15 = 0;
      if (v11)
      {
        goto LABEL_24;
      }

LABEL_20:
      v21 = *(v16 + 72);
      if (v21)
      {
        v22 = *v21 + 120 * *(v21 + v9 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, 0x13Fu) != *(v22 + 12))
        {
          v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v22 + 48), 0x13Fu);
          v24 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
          if (v23 != *(v22 + 60))
          {
            v24 = (*(v22 + 48) + *(v22 + 56) + 4 * v23);
          }

          v28 = *v24;
          if ((v15 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_44:
          v32 = 1;
          v31 = 1;
          goto LABEL_45;
        }
      }

      v11 = 0;
      if (++v13 == v14)
      {
        v32 = 1;
        v31 = 1;
        v26 = *(v29 + 72);
        if (!v15)
        {
          v12 = *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v26, v6, &v32);
        }

        v4 = a3;
        goto LABEL_39;
      }
    }

    v15 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v15)
    {
      goto LABEL_44;
    }

LABEL_29:
    ++v13;
    v11 = 1;
    if (v13 != v14)
    {
      continue;
    }

    break;
  }

  v32 = 1;
  v31 = 1;
  v12 = *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v29 + 72), v6, &v32);
LABEL_45:
  v4 = a3;
  v27 = v28;
  if (a3)
  {
    goto LABEL_40;
  }

LABEL_41:
  if ((a4 - v6) >= 1.0)
  {
    return v27;
  }

  else
  {
    return v12;
  }
}

double gm::lerp<gm::Matrix<double,3,1>,float>(double a1, double a2, double a3, double a4, double a5, double a6, float a7)
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

void md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator()(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v75[4] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(*a1 + 42, a2);
  if (!v6)
  {
    v7 = *a1[1];
    v8 = gdc::Registry::storage<md::components::MarketMask>(v7);
    gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v8, a2);
    v9 = gdc::Registry::storage<md::components::GeneratedTexture>(v7);
    gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v9, a2);
    v10 = gdc::Registry::storage<md::components::Visibility>(v7);
    gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
    v11 = gdc::Registry::storage<md::components::Collapsible>(v7);
    gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v11, a2);
    v12 = gdc::Registry::storage<md::components::CustomRenderState>(v7);
    gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v12, a2);
    v13 = gdc::Registry::storage<md::components::IntendedSceneLayer>(v7);
    gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v13, a2);
    v14 = gdc::Registry::storage<md::components::AlbedoTint>(v7);
    v15 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v14, a2);
    v16 = gdc::Registry::storage<md::components::PositionScaleFactor>(v7);
    gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v16, a2);
    v17 = gdc::Registry::storage<md::components::CustomZIndex>(v7);
    gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v17, a2);
    v18 = gdc::Registry::storage<md::components::StencilBucket>(v7);
    gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v18, a2);
    if (v15)
    {
      v74[0] = *(v15 + 1);
      *(v74 + 7) = *(v15 + 8);
    }

    operator new();
  }

  for (i = 0; i != 3; ++i)
  {
    v60[i] = *(a3 + 36 + 4 * i);
  }

  v20 = (a3 + 48);
  for (j = 3; j != 6; ++j)
  {
    v22 = *v20++;
    v60[j] = v22;
  }

  v23 = 0;
  v24 = a3 + 208;
  v25 = buf;
  do
  {
    v26 = 0;
    v27 = v25;
    do
    {
      *v27 = *(v24 + v26);
      v27 += 32;
      v26 += 24;
    }

    while (v26 != 96);
    ++v23;
    v25 += 8;
    v24 += 8;
  }

  while (v23 != 3);
  v28 = a3;
  *&v66[20] = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0x3FF0000000000000;
  v61 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v62 = xmmword_1B33B0520;
  *&v62[16] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v75[0] = &unk_1F2A61070;
  v75[1] = &v61;
  v75[2] = buf;
  v75[3] = v75;
  gm::Box<double,3>::forEachCorner(v60, v75);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v75);
  if (*(v6 + 34) != 1)
  {
    goto LABEL_32;
  }

  v29 = *(v5 + 136);
  v31 = *(v29 + 48);
  v30 = *(v29 + 49);
  if (v31 == v30)
  {
    v32 = 0;
  }

  else
  {
    while (*(*v31 + 40) != *(v6 + 16))
    {
      v31 += 8;
      if (v31 == v30)
      {
        v31 = *(v29 + 49);
        break;
      }
    }

    v32 = v31 != v30;
  }

  v34 = *(v29 + 60);
  v33 = *(v29 + 61);
  if (v34 == v33)
  {
    v36 = 0;
    v35 = *(v6 + 16);
  }

  else
  {
    v35 = *(v6 + 16);
    while (*(*v34 + 40) != v35)
    {
      v34 += 8;
      if (v34 == v33)
      {
        v34 = *(v29 + 61);
        break;
      }
    }

    v36 = v34 != v33;
  }

  RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(v29, v35);
  if ((*(v6 + 34) & 1) == 0)
  {
LABEL_32:
    RegistryToInject = md::MeshRenderableLogic::findRegistryToInject(*(v5 + 136), &v61);
    goto LABEL_33;
  }

  if (!v36 && !v32)
  {
    v53 = *(v5 + 136);
    v54 = *(v53 + 408);
    v55 = *(v53 + 416);
    if (v54 != v55)
    {
      while (*(*v54 + 40) != *(v6 + 16))
      {
        v54 += 8;
        if (v54 == v55)
        {
          goto LABEL_62;
        }
      }
    }

    if (v54 == v55)
    {
LABEL_62:
      v56 = GEOGetVectorKitMeshRenderableLogicLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        if ((*(v6 + 34) & 1) == 0)
        {
          goto LABEL_71;
        }

        v57 = *(v6 + 16);
        *buf = 67109890;
        *v66 = v57;
        *&v66[4] = 2080;
        *&v66[6] = "isExiting()";
        *&v66[14] = 2080;
        *&v66[16] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MeshRenderableLogic.mm";
        *&v66[24] = 1024;
        *&v66[26] = 532;
        _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_ERROR, "[RenderableInjection] Injected registry %hu is not tracked: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x22u);
      }
    }

    md::MeshRenderableLogic::removeDynamicRenderableInjection(v5, a2);
    RegistryToInject = md::MeshRenderableLogic::findRegistryToInject(*(v5 + 136), &v61);
    if (!*a1[1])
    {
      v58 = GEOGetVectorKitMeshRenderableLogicLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v66 = "registry";
        *&v66[8] = 2080;
        *&v66[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MeshRenderableLogic.mm";
        *&v66[18] = 1024;
        *&v66[20] = 536;
        _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_ERROR, "[RenderableInjection] Failed to find registry to re-inject into: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
      }
    }

    goto LABEL_33;
  }

  v38 = RegistryByIdentifier;
  if ((registryContainsInstance(RegistryByIdentifier, v61, *&v62[8]) & 1) == 0)
  {
    RegistryToInject = md::MeshRenderableLogic::findRegistryToInject(*(v5 + 136), &v61);
    if (RegistryToInject != v38)
    {
      md::MeshRenderableLogic::removeDynamicRenderableInjection(v5, a2);
LABEL_33:
      md::MeshRenderableLogic::injectDynamicRenderable(v5, a2, RegistryToInject);
    }
  }

  v40 = *(v6 + 34);
  v41 = gdc::Registry::storage<md::components::RenderableInjected>(*a1[1]);
  if ((v40 & 1) == 0)
  {
    gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(v41, a2);
    return;
  }

  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v41, a2))
  {
    v42 = gdc::Registry::storage<md::components::RenderableInjected>(*a1[1]);
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v42, a2);
  }

  if ((*(v6 + 34) & 1) == 0)
  {
    goto LABEL_71;
  }

  v43 = md::RegistryManager::getRegistryByIdentifier(*(v5 + 136), *(v6 + 16));
  v44 = v43;
  if (!v43 || (v45 = gdc::Context::context<md::components::SharedTransformData>(v43)) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v51 = GEOGetVectorKitVKDefaultLog_log;
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    if (*(v6 + 34))
    {
      v52 = *(v6 + 16);
      *buf = 67110402;
      *v66 = v52;
      *&v66[4] = 2048;
      *&v66[6] = v44;
      *&v66[14] = 2048;
      *&v66[16] = 0;
      *&v66[24] = 2080;
      *&v66[26] = "false";
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MeshRenderableLogic.mm";
      v69 = 1024;
      v70 = 567;
      _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_ERROR, "Failed to resolve registry(%d:%p) transform data(%p): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x36u);
LABEL_54:

      return;
    }

LABEL_71:
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v46.n128_f64[0] = gm::Matrix<double,4,4>::inverted<int,void>(buf, v45 + 39);
  v47 = v6[3];
  v63[0] = &unk_1F2A08378;
  v63[1] = buf;
  v63[2] = v28;
  v64 = v63;
  v48 = v63;
  if (*(v47 + 148) != 1)
  {
    goto LABEL_55;
  }

  ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(&v61, **(v47 + 32), 0, (*(**(v47 + 32) + 48) - *(**(v47 + 32) + 40)) / *(**(v47 + 32) + 8), 1);
  if (*(*(v47 + 32) + 16))
  {
    v49 = 0;
    v50 = 0;
    do
    {
      *&v60[0] = v50;
      if (!v64)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v64 + 48))(v64, v60, *&v62[24] + v49);
      ++v50;
      v49 += 64;
    }

    while (v50 < *(*(v47 + 32) + 16));
  }

  md::MeshRenderable::recalculateBounds(v47);
  ggl::BufferMemory::~BufferMemory(&v61);
  v48 = v64;
  if (v64 == v63)
  {
LABEL_55:
    (*(*v48 + 32))(v48, v46);
  }

  else if (v64)
  {
    (*(*v64 + 40))();
  }
}

void sub_1B2B060B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  operator delete(v41);
  md::MaterialRenderable::~MaterialRenderable(&STACK[0x220]);
  md::MeshRenderable::~MeshRenderable(&a41);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (__PAIR64__(*(result + 9), *(result + 8)) == __PAIR64__(WORD1(a2), a2) && *(result + 5) == HIDWORD(a2))
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

void *registryContainsInstance(void *result, __n128 a2, __n128 a3)
{
  if (result)
  {
    result = gdc::Context::context<md::components::SharedTransformData>(result);
    if (result)
    {
      v3 = 0;
      v4 = 0;
      v5 = 1 << *(result + 1);
      v6 = 1.0 / v5;
      v7 = v6 * (v5 + ~*(result + 1));
      v8 = v6 * *(result + 2) + v6;
      v18 = v6 * *(result + 2);
      v19 = v7;
      v9 = &v18;
      v20[0] = v8;
      v20[1] = v7 + v6;
      v10 = &v16;
      v16 = a2;
      v17 = a3;
      while (v20[v4] > v10->n128_f64[0])
      {
        v11 = *v9;
        v12 = v17.n128_f64[v4];
        v4 = 1;
        v13 = (*v9 < v12) & ~v3;
        v3 = 1;
        v10 = &v16.n128_i8[8];
        v9 = &v19;
        if ((v13 & 1) == 0)
        {
          return (v11 < v12);
        }
      }

      return 0;
    }
  }

  return result;
}

void md::MeshRenderable::recalculateBounds(md::MeshRenderable *this)
{
  v10[4] = *MEMORY[0x1E69E9840];
  *(this + 76) = xmmword_1B33AFF10;
  v2 = (this + 76);
  *(this + 92) = 0x80000000800000;
  ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(v9, **(this + 4), 0, (*(**(this + 4) + 48) - *(**(this + 4) + 40)) / *(**(this + 4) + 8), 0);
  if (*(*(v2 - 11) + 16))
  {
    v3 = 0;
    do
    {
      v4 = *(this + 26);
      v7 = xmmword_1B33AFF10;
      v8 = 0x80000000800000;
      v10[0] = &unk_1F2A572F0;
      v10[1] = &v7;
      v10[2] = v9[5] + (v3 << 6);
      v10[3] = v10;
      gm::Box<float,3>::forEachCorner((v4 + 36), v10);
      std::__function::__value_func<void ()(gm::Matrix<float,3,1> &)>::~__value_func[abi:nn200100](v10);
      v5 = v2;
      for (i = 88; i != 100; i += 4)
      {
        *v5 = fminf(*(&v7 + i - 88), *v5);
        v5[3] = fmaxf(v5[3], *(&v7 + i - 76));
        ++v5;
      }

      ++v3;
    }

    while (v3 < *(*(this + 4) + 16));
  }

  if (*(this + 124) == 1)
  {
    *(this + 124) = 0;
  }

  if (*(this + 140) == 1)
  {
    *(this + 140) = 0;
  }

  ggl::BufferMemory::~BufferMemory(v9);
}

uint64_t gdc::Registry::storage<md::components::QueuedForDestruction<>>(uint64_t a1)
{
  v3 = 0x257EF5A82043772ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x257EF5A82043772EuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::MeshInstance>(uint64_t a1)
{
  v3 = 0x6307588E3A87BAE2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6307588E3A87BAE2uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

float md::RouteLineLogic::computeRouteWidth(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v16 = gdc::ToCoordinateSystem(*(a3 + 3784));
  if (v16 || (a4 & 1) != 0)
  {
    v18 = gdc::Camera::cameraFrame(a3);
    v19 = v18[1];
    v20 = v18[2];
    v21 = tan(*v18 * 0.5 + 0.785398163);
    v61 = v19 * 0.159154943 + 0.5;
    v62 = log(v21) * 0.159154943 + 0.5;
    v22 = exp(v62 * 6.28318531 + -3.14159265);
    v23 = atan(v22) * 2.0 + -1.57079633;
    v24 = fmod(v61 * 6.28318531, 6.28318531);
    v25 = fmod(v24 + 6.28318531, 6.28318531) + -3.14159265;
    v26 = __sincos_stret(v23);
    v27 = 1.0;
    v28 = 6378137.0 / sqrt(v26.__sinval * v26.__sinval * -0.00669437999 + 1.0);
    v29 = (v28 + v20) * v26.__cosval;
    v30 = __sincos_stret(v25);
    v60[0] = v29 * v30.__cosval;
    v60[1] = v29 * v30.__sinval;
    v60[2] = (v20 + v28 * 0.99330562) * v26.__sinval;
    if (!a5)
    {
      goto LABEL_26;
    }

    v31 = a3 + 984;
    v32 = 0;
    if (v16)
    {
      v33 = a3 + 984;
      do
      {
        v34 = 0;
        v35 = 0.0;
        do
        {
          v35 = v35 + *(v33 + v34) * *(a5 + 32 + v34);
          v34 += 8;
        }

        while (v34 != 24);
        v36 = *(v31 + v32 + 24) + v35;
        v37 = v36 >= 0.0;
        if (v36 < 0.0)
        {
          break;
        }

        v32 += 32;
        v33 += 32;
      }

      while (v32 != 192);
    }

    else
    {
      v38 = a3 + 984;
      do
      {
        v39 = 0;
        v40 = 0.0;
        do
        {
          v40 = v40 + *(v38 + v39) * *(a5 + 8 + v39);
          v39 += 8;
        }

        while (v39 != 24);
        v41 = *(v31 + v32 + 24) + v40;
        v37 = v41 >= 0.0;
        if (v41 < 0.0)
        {
          break;
        }

        v32 += 32;
        v38 += 32;
      }

      while (v32 != 192);
    }

    if (v37 && (a7 & 1) != 0 && (a6 & 1) != 0)
    {
      v42 = gdc::CameraView::position(a3);
      v43 = 0;
      if (v16)
      {
        do
        {
          *(&v64 + v43) = *(v42 + v43) - *(a5 + 32 + v43);
          v43 += 8;
        }

        while (v43 != 24);
        v44 = 0;
        v45 = 0.0;
        do
        {
          v45 = v45 + *(&v64 + v44) * *(&v64 + v44);
          v44 += 8;
        }

        while (v44 != 24);
        v17 = sqrt(v45) * 0.0000000249532021;
      }

      else
      {
        do
        {
          *(&v64 + v43) = *(v42 + v43) - *(a5 + 8 + v43);
          v43 += 8;
        }

        while (v43 != 24);
        v56 = 0;
        v57 = 0.0;
        do
        {
          v57 = v57 + *(&v64 + v56) * *(&v64 + v56);
          v56 += 8;
        }

        while (v56 != 24);
        v17 = sqrt(v57);
      }
    }

    else
    {
LABEL_26:
      if ((a6 & 1) != 0 && *(a1 + 216) == 1)
      {
        v27 = *(a1 + 208);
      }

      v46 = gdc::CameraView::position(a3);
      v47 = 0;
      if (v16)
      {
        v58 = *v46;
        v59 = *(v46 + 16);
        do
        {
          *(&v64 + v47 * 8) = *(&v58 + v47 * 8) - v60[v47];
          ++v47;
        }

        while (v47 != 3);
        v48 = 0;
        v49 = 0.0;
        do
        {
          v49 = v49 + *(&v64 + v48) * *(&v64 + v48);
          v48 += 8;
        }

        while (v48 != 24);
        v17 = v27 * 0.0000000249532021 * sqrt(v49);
      }

      else
      {
        v58 = *v46;
        v59 = *(v46 + 16);
        v63 = v20 * 0.0000000249532021;
        do
        {
          *(&v64 + v47 * 8) = *(&v58 + v47 * 8) - *(&v61 + v47 * 8);
          ++v47;
        }

        while (v47 != 3);
        v50 = 0;
        v51 = 0.0;
        do
        {
          v51 = v51 + *(&v64 + v50) * *(&v64 + v50);
          v50 += 8;
        }

        while (v50 != 24);
        v17 = sqrt(v51) * v27;
      }
    }
  }

  else
  {
    v17 = -*(gdc::CameraView::position(a3) + 16) / fmin(*(a3 + 3104), -0.000001);
  }

  gdc::Camera::verticalFieldOfView(&v64, a3);
  v52 = *&v64;
  [a2 size];
  v54 = v52 / v53;
  result = v17 * v54;
  *(a8 + 76) = result;
  return result;
}

_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(*(*a2 + 392) + 169);
  v5 = *result;
  v6 = *a3;
  v7 = *(*(*a3 + 392) + 169);
  if (v4 > *(*(*result + 392) + 169))
  {
    if (v7 <= v4)
    {
      *result = v3;
      *a2 = v5;
      v12 = result[2];
      result[2] = a2[2];
      a2[2] = v12;
      v13 = *a2;
      if (*(*(*a3 + 392) + 169) <= *(*(*a2 + 392) + 169))
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v13;
      v8 = a3 + 2;
      result = a2 + 2;
    }

    else
    {
      *result = v6;
      result += 2;
      *a3 = v5;
      v8 = a3 + 2;
    }

    v9 = v8;
    goto LABEL_10;
  }

  if (v7 > v4)
  {
    *a2 = v6;
    *a3 = v3;
    v9 = a2 + 2;
    v10 = a2[2];
    a2[2] = a3[2];
    a3[2] = v10;
    v11 = *result;
    if (*(*(*a2 + 392) + 169) > *(*(*result + 392) + 169))
    {
      *result = *a2;
      result += 2;
      *a2 = v11;
LABEL_10:
      v14 = *result;
      *result = *v9;
      *v9 = v14;
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<md::components::SubtileZone>(uint64_t a1)
{
  v3 = 0x8AD11DEF4A920028;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8AD11DEF4A920028);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

__n128 std::__function::__func<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "RouteLine DistanceField");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v5 = *(v3 + 168);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

unsigned __int8 **std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(unsigned __int8 **result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = **a2;
  v6 = **result;
  v7 = *a3;
  v8 = **a3;
  if (v5 >= v6)
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v3;
      v9 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v9;
      }
    }
  }

  else
  {
    if (v8 >= v5)
    {
      *result = v3;
      *a2 = v4;
      if (**a3 >= v6)
      {
        return result;
      }

      *a2 = *a3;
    }

    else
    {
      *result = v7;
    }

    *a3 = v4;
  }

  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassRouteLineDescriptor>(ecs2::Entity,md::ls::PassRouteLineDescriptor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassRouteLineDescriptor>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata) = *(a2 + 4096);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::lineWidth(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 240))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 240))(v8, a2);
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
      v14 = (*(*v13 + 240))(v13, a2);
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