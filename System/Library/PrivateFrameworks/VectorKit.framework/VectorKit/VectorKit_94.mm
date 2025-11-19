void sub_1B2E77E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void md::MuninRoadLabeler::layoutForStaging(md::MuninRoadLabeler *this, const LabelUpdateOptions *a2)
{
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v39 = 3;
  v3 = *(this + 1);
  if (&v36 != (this + 216))
  {
    v4 = *(this + 27);
    v5 = *(this + 28);
    if (v5 != v4)
    {
      v6 = (v5 - v4) >> 4;
      std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&v36);
      if (!(v6 >> 60))
      {
        v7 = (v37 - v36) >> 3;
        if (v7 <= v6)
        {
          v7 = (v5 - v4) >> 4;
        }

        if (v37 - v36 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (!(v8 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v8);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(this + 27), *(this + 28), 0);
    for (i = *(&v36 + 1); i != v9; i -= 2)
    {
      v11 = *(i - 1);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    *(&v36 + 1) = v9;
    v3 = *(this + 1);
  }

  *(&v37 + 1) = *(v3 + 424);
  if ((*(this + 74) & 1) != 0 || *(this + 75) == 1)
  {
    *(this + 74) = 0;
    md::MuninRoadLabeler::updateLocationInformation(this);
  }

  if ((*(this + 78) & 1) != 0 || *(*(this + 1) + 3176) == 1)
  {
    v12 = *(this + 10);
    v13 = *(this + 11);
    while (v12 != v13)
    {
      v14 = *v12;
      v12 += 2;
      md::MuninRoadLabel::failForStaging(v14, 29);
    }
  }

  else
  {
    v15 = *(this + 4);
    if (*(v15 + 96))
    {
      goto LABEL_25;
    }

    v26 = *(this + 10);
    v27 = *(this + 11);
    if (v26 != v27)
    {
      LOBYTE(v28) = 0;
      v29 = 0;
      do
      {
        while (v28)
        {
          v26 += 16;
          LOBYTE(v28) = 1;
          if (v26 == v27)
          {
            goto LABEL_25;
          }
        }

        if (*(*v26 + 493))
        {
          v28 = 0;
        }

        else
        {
          v30 = (v29 + 1) > 4;
          if (*(*v26 + 302))
          {
            v28 = 0;
          }

          else
          {
            ++v29;
            v28 = v30;
          }
        }

        v26 += 16;
      }

      while (v26 != v27);
      if (v28)
      {
LABEL_25:
        *(v15 + 96) = 0;
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 10);
        std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(this + 10, *(v15 + 32));
        v16 = *(v15 + 8);
        if (v16 != (v15 + 16))
        {
          do
          {
            v17 = (v16 + 4);
            v18 = v16[4];
            if (v18[493] || (v18[302] & 1) != 0)
            {
              std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](this + 10, v17);
              v19 = v16[1];
              if (v19)
              {
                do
                {
                  v20 = v19;
                  v19 = *v19;
                }

                while (v19);
              }

              else
              {
                do
                {
                  v20 = v16[2];
                  v21 = *v20 == v16;
                  v16 = v20;
                }

                while (!v21);
              }
            }

            else
            {
              atomic_store(0, v18 + 298);
              md::MuninRoadLabel::setActive(*v17, 0);
              v22 = v16[1];
              v23 = v16;
              if (v22)
              {
                do
                {
                  v20 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v20 = v23[2];
                  v21 = *v20 == v23;
                  v23 = v20;
                }

                while (!v21);
              }

              if (*(v15 + 8) == v16)
              {
                *(v15 + 8) = v20;
              }

              --*(v15 + 32);
              std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v15 + 16), v16);
              v24 = v16[5];
              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v24);
              }

              v25 = mdm::zone_mallocator::instance(v24);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(v25, v16);
            }

            v16 = v20;
          }

          while (v20 != (v15 + 16));
        }
      }
    }

    v32 = *(this + 10);
    v31 = *(this + 11);
    v33 = v31 - v32;
    if (v31 != v32)
    {
      if (!((v33 >> 4) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v33 >> 4);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v34 = *(this + 1);
    v35 = *(*(this + 4) + 64);
    if (v35)
    {
      do
      {
        (*(*v35[6] + 16))(v35[6], v34);
        v35 = *v35;
      }

      while (v35);
      v34 = *(this + 1);
    }

    md::LabelSettingsStyleCache::muninRoadStyle(*(*(v34 + 336) + 200));
    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(0, 0, 0, 1);
    LOWORD(v40[0]) = 0;
    v40[1] = 0;
    v42 = 0;
    v41 = 257;
  }

  v40[0] = &v36;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v40);
}

void sub_1B2E78B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a25 = a10;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void md::MuninRoadLabeler::updateLocationInformation(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v256 = v2;
  v3 = v1;
  v322[2] = *MEMORY[0x1E69E9840];
  v259 = *(v1 + 144);
  v4 = *(v1 + 128);
  v313 = 0uLL;
  *&__p = 0.0;
  v258 = *(v4 + 24);
  v290 = &unk_1F2A08870;
  v293 = COERCE_DOUBLE(&v290);
  _D8 = 0x401921FB54442D18;
  __asm { FMLA            D0, D8, V1.D[1]; __x }

  v10 = exp(_D0);
  v11 = atan(v10);
  v12 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11 * 114.591559 + -90.0);
  v13 = vdupq_lane_s64(COERCE__INT64(v12 * 20.0), 0);
  *&v302[16] = vaddq_f64(v258, v13);
  *v302 = vsubq_f64(v258, v13);
  v15 = *(v3 + 192);
  v14 = *(v3 + 200);
  v257 = v3;
  if (v15 != v14)
  {
    v254 = *(v3 + 200);
    do
    {
      v16 = 0;
      v17 = *v15;
      v18 = 1 << *(*v15 + 169);
      v19 = v18;
      v20 = 1.0 / v18;
      v21 = v20 * (v18 + ~*(*v15 + 172));
      *&__src = v20 * *(*v15 + 176);
      v297 = v21;
      v298 = *&__src + v20;
      v299 = v21 + v20;
      v22 = v302;
      p_src = &__src;
      v24 = 1;
      while (*(&v298 + v16) > *v22 && *p_src < *&v302[8 * v16 + 16])
      {
        v25 = v24;
        v24 = 0;
        p_src = &v297;
        v22 = &v302[8];
        v16 = 1;
        if ((v25 & 1) == 0)
        {
          *&v26 = (v258.f64[0] - *&__src) * v19;
          *&v27 = (v258.f64[1] - v21) * v19;
          v280 = __PAIR64__(v27, v26);
          v28 = *(v17 + 760);
          v260 = *(v17 + 768);
          if (v28 != v260)
          {
            v29 = v12 * v19 * (v12 * v19);
            v30 = v29 * 400.0;
            v31 = 1.0 / v29;
            v262 = v15;
            do
            {
              v32 = 0;
              v266 = v28;
              v33 = *v28;
              v34 = *&v33 + 48;
              v269 = v33;
              v35 = *&v33 + 64;
              v36 = v302;
              v37 = 1;
              while (*(v35 + 8 * v32) > *v36 && *(v34 + 8 * v32) < *&v302[8 * v32 + 16])
              {
                v38 = v37;
                v37 = 0;
                v36 = &v302[8];
                v32 = 1;
                if ((v38 & 1) == 0)
                {
                  if (v293 == 0.0 || (v286 = v269, (*(**&v293 + 48))(COERCE_DOUBLE(*&v293), &v286)))
                  {
                    v39 = **&v269;
                    if (*(**&v269 + 96))
                    {
                      v40 = 0;
                      do
                      {
                        v286 = 0.0;
                        v41 = geo::codec::multiSectionFeaturePoints(v39, v40, &v286);
                        v277 = 0.0;
                        LODWORD(v274) = 0;
                        v42 = gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(&v280, *&v286, v41, &v277, &v274);
                        if (v30 > v42)
                        {
                          v43 = *v15;
                          v44 = v15[1];
                          if (v44)
                          {
                            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
                          }

                          else
                          {
                            *(&v43 + 1) = 0;
                          }

                          *&v45 = v42 * v31;
                          HIDWORD(v45) = v274;
                          v46 = v313;
                          if (v313 >= *(&v313 + 1))
                          {
                            v48 = __p;
                            v49 = (v313 - __p) >> 5;
                            v50 = v49 + 1;
                            if ((v49 + 1) >> 59)
                            {
                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v51 = *(&v313 + 1) - __p;
                            if ((*(&v313 + 1) - __p) >> 4 > v50)
                            {
                              v50 = v51 >> 4;
                            }

                            if (v51 >= 0x7FFFFFFFFFFFFFE0)
                            {
                              v52 = 0x7FFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v52 = v50;
                            }

                            if (v52)
                            {
                              if (!(v52 >> 59))
                              {
                                operator new();
                              }

                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v53 = (v313 - __p) >> 5;
                            v54 = 32 * v49;
                            *v54 = v43;
                            *(v54 + 16) = v269;
                            *(v54 + 24) = v45;
                            v55 = (32 * v49 - 32 * v53);
                            if (v48 != v46)
                            {
                              v56 = v48;
                              v57 = v55;
                              do
                              {
                                *v57 = *v56;
                                *v56 = 0;
                                *(v56 + 1) = 0;
                                v57[1] = *(v56 + 1);
                                v56 += 32;
                                v57 += 2;
                              }

                              while (v56 != v46);
                              do
                              {
                                v58 = *(v48 + 1);
                                if (v58)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v58);
                                }

                                v48 += 32;
                              }

                              while (v48 != v46);
                            }

                            v47 = v54 + 32;
                            v59 = __p;
                            __p = v55;
                            v313 = (v54 + 32);
                            if (v59)
                            {
                              operator delete(v59);
                            }

                            v15 = v262;
                          }

                          else
                          {
                            *v313 = v43;
                            *(v46 + 16) = v269;
                            v47 = v46 + 32;
                            *(v46 + 24) = v45;
                          }

                          *&v313 = v47;
                        }

                        ++v40;
                      }

                      while (v40 < *(v39 + 96));
                    }
                  }

                  break;
                }
              }

              v28 = v266 + 1;
            }

            while (v266 + 1 != v260);
          }

          v14 = v254;
          break;
        }
      }

      v15 += 2;
    }

    while (v15 != v14);
  }

  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*)>::~__value_func[abi:nn200100](&v290);
  v61 = 126 - 2 * __clz((v313 - __p) >> 5);
  if (v313 == __p)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(__p, v313, v62, 1, v60);
  v63 = __p;
  v64 = v313;
  v252 = 0u;
  if (__p == v313)
  {
    goto LABEL_67;
  }

  do
  {
    v65 = v63[2];
    v66 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*v259 + 16), v65);
    if (v66)
    {
      v67 = v66[3];
      if (v67)
      {
        v68 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v259 + 5, v67);
        if (v68)
        {
          if (v68[7] != v68[8])
          {
            v69 = *(v67 + 24);
            v70 = *(v67 + 32) - v69;
            if (v70)
            {
              v71 = v70 >> 3;
              v72 = v71 <= 1 ? 1 : v71;
              if (*v69 == v65)
              {
                goto LABEL_63;
              }

              v73 = 0;
              v74 = v69 + 1;
              v75 = v72 - 1;
              do
              {
                if (v75 == v73)
                {
                  goto LABEL_64;
                }

                v76 = v74[v73++];
              }

              while (v76 != v65);
              if (v73 < v71)
              {
LABEL_63:
                v280 = 0;
                v277 = 0.0;
                __src = v65;
                LOBYTE(v285) = 0;
                v286 = 0.0;
                operator new();
              }
            }
          }
        }
      }
    }

LABEL_64:
    v63 += 4;
  }

  while (v63 != v64);
  v77 = __p;
  if (__p == v313)
  {
LABEL_67:
    v80 = 0;
    v79 = v257;
  }

  else
  {
    v252 = *__p;
    v78 = (__p + 16);
    *__p = 0;
    v77[1] = 0;
    v79 = v257;
    v80 = *v78;
  }

  *v302 = &__p;
  std::vector<md::RoadSearchResult>::__destroy_vector::operator()[abi:nn200100](v302);
  *(v79 + 152) = v80;
  if (v80)
  {
    v313 = 0uLL;
    *&__p = 0.0;
    LODWORD(v274) = 1;
    operator new();
  }

  if (*(v79 + 75) == 1 && *(v79 + 76) == 1)
  {
    *(v79 + 75) = 0;
    if (*(v79 + 77) == 1)
    {
      *(v79 + 77) = 0;
      md::MuninRoadLabeler::resetCurrentJunctions(v79);
    }

    v81 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(v79 + 8) + 336) + 200));
    v274 = 0;
    v275 = 0;
    v276 = 0;
    v82 = *(v81 + 12);
    v270 = *(*(v79 + 128) + 24);
    *&__p = COERCE_DOUBLE(&unk_1F2A088B8);
    *&v313 = &v274;
    p_p = &__p;
    v286 = COERCE_DOUBLE(&unk_1F2A08900);
    v289 = &v286;
    v83 = v82;
    __asm { FMLA            D0, D8, V1.D[1]; __x }

    v85 = exp(_D0);
    v86 = atan(v85);
    v87 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v86 * 114.591559 + -90.0);
    v88 = vdupq_lane_s64(COERCE__INT64(v87 * v83), 0);
    *&v302[16] = vaddq_f64(v270, v88);
    *v302 = vsubq_f64(v270, v88);
    v89 = v79;
    v90 = *(v79 + 192);
    v91 = *(v89 + 200);
    if (v90 != v91)
    {
      v92 = v87 * v83 * (v87 * v83);
      v93 = 1.0 / (v87 * v87);
      do
      {
        v94 = 0;
        v95 = *v90;
        v96 = 1 << *(*v90 + 169);
        v97 = 1.0 / v96;
        v98 = v97 * (v96 + ~*(*v90 + 43));
        v99 = v97 * *(*v90 + 44) + v97;
        *&__src = v97 * *(*v90 + 44);
        v297 = v98;
        v298 = v99;
        v299 = v98 + v97;
        v100 = v302;
        v101 = &__src;
        v102 = 1;
        while (*(&v298 + v94) > *v100 && *v101 < *&v302[8 * v94 + 16])
        {
          v103 = v102;
          v102 = 0;
          v101 = &v297;
          v100 = &v302[8];
          v94 = 1;
          if ((v103 & 1) == 0)
          {
            v104 = *(v95 + 98);
            v105 = *(v95 + 99);
            while (v104 != v105)
            {
              v106 = 0;
              v107 = *v104;
              v108 = (*v104 + 16);
              v109 = v302;
              v110 = 1;
              while (1)
              {
                v111 = v108->f64[v106];
                if (v111 < *v109 || v111 >= *&v302[8 * v106 + 16])
                {
                  break;
                }

                v112 = v110;
                v110 = 0;
                v109 = &v302[8];
                v106 = 1;
                if ((v112 & 1) == 0)
                {
                  if (!v289 || std::function<BOOL ()(md::MuninJunction const*)>::operator()(v289, *v104))
                  {
                    v113 = vsubq_f64(v270, *v108);
                    v114 = vaddvq_f64(vmulq_f64(v113, v113));
                    if (v114 <= v92)
                    {
                      v290 = 0;
                      v291 = 0;
                      v292 = 0;
                      v293 = -1.0;
                      v115 = *v90;
                      v116 = v90[1];
                      if (v116)
                      {
                        atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
                        v117 = v291;
                        v290 = v115;
                        v291 = v116;
                        if (v117)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v117);
                        }
                      }

                      else
                      {
                        v290 = *v90;
                      }

                      v292 = v107;
                      v293 = v114 * v93;
                      if (!p_p)
                      {
                        std::__throw_bad_function_call[abi:nn200100]();
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      (*(*p_p + 6))(p_p, &v290);
                      if (v291)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v291);
                      }
                    }
                  }

                  break;
                }
              }

              ++v104;
            }

            break;
          }
        }

        v90 += 2;
      }

      while (v90 != v91);
    }

    std::__function::__value_func<BOOL ()(md::MuninJunction const*)>::~__value_func[abi:nn200100](&v286);
    std::__function::__value_func<void ()(md::JunctionSearchResult const&&)>::~__value_func[abi:nn200100](&__p);
    v119 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v275 - v274) >> 3));
    if (v275 == v274)
    {
      v120 = 0;
    }

    else
    {
      v120 = v119;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(v274, v275, v120, 1, v118);
    v281[0] = 0;
    v281[1] = 0;
    v280 = v281;
    v121 = v257 + 176;
    if (*(v257 + 168) != v257 + 176)
    {
      operator new();
    }

    v278 = 0;
    v279 = 0;
    v277 = COERCE_DOUBLE(&v278);
    v122 = v257;
    v123 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(v257 + 8) + 336) + 200));
    v124 = v256;
    v125 = v274;
    v126 = v275;
    if (v274 != v275)
    {
      v249 = v275;
      v250 = v123;
      do
      {
        v127 = v125[1];
        if (v127 >= *(v123 + 8) && v127 < *(v123 + 12) && v127 >= *(v125 + 4))
        {
          v251 = v125;
          v128 = *v125;
          v129 = v281[0];
          if (!v281[0])
          {
            goto LABEL_121;
          }

          v130 = v281;
          do
          {
            v131 = v129;
            v132 = v130;
            v133 = v129[4];
            if (v133 >= v128)
            {
              v130 = v129;
            }

            v129 = v129[v133 < v128];
          }

          while (v129);
          if (v130 == v281)
          {
            goto LABEL_121;
          }

          if (v133 < v128)
          {
            v131 = v132;
          }

          if (v128 < v131[4] || ((v135 = v130[5], (v134 = v130[6]) == 0) ? (v137 = 0, v136 = v135) : (atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed), v136 = v135, v137 = v134), *(v135 + 80) != 1))
          {
LABEL_121:
            v138 = v122[18];
            v139 = v138[11];
            v255 = v128;
            if (!*&v139)
            {
              goto LABEL_175;
            }

            v140 = 0x9DDFEA08EB382D69 * ((8 * (v128 & 0x1FFFFFFF) + 8) ^ (v128 >> 32));
            v141 = 0x9DDFEA08EB382D69 * ((v128 >> 32) ^ (v140 >> 47) ^ v140);
            v142 = 0x9DDFEA08EB382D69 * (v141 ^ (v141 >> 47));
            v143 = vcnt_s8(v139);
            v143.i16[0] = vaddlv_u8(v143);
            if (v143.u32[0] > 1uLL)
            {
              v144 = v142;
              if (v142 >= *&v139)
              {
                v144 = v142 % *&v139;
              }
            }

            else
            {
              v144 = v142 & (*&v139 - 1);
            }

            v145 = *(*&v138[10] + 8 * v144);
            if (!v145)
            {
              goto LABEL_175;
            }

            v146 = *v145;
            if (!v146)
            {
              goto LABEL_175;
            }

            while (1)
            {
              v147 = *(v146 + 1);
              if (v142 == v147)
              {
                if (*(v146 + 2) == v128)
                {
                  v253 = v146[3];
                  v148 = v128[1].f64[0] * 6.28318531;
                  v149 = exp(v128[1].f64[1] * 6.28318531 + -3.14159265);
                  v150 = atan(v149) * 2.0 + -1.57079633;
                  v151 = fmod(v148, 6.28318531);
                  v152 = fmod(v151 + 6.28318531, 6.28318531) + -3.14159265;
                  v153 = __sincos_stret(v150);
                  v154 = 6378137.0 / sqrt(v153.__sinval * v153.__sinval * -0.00669437999 + 1.0);
                  v155 = (v154 + v253) * v153.__cosval;
                  v156 = __sincos_stret(v152);
                  v286 = v155 * v156.__cosval;
                  v287 = v155 * v156.__sinval;
                  v288 = (v253 + v154 * 0.99330562) * v153.__sinval;
                  LOBYTE(__src) = 0;
                  v301 = 0;
                  v157 = 20.0;
                  do
                  {
                    LOBYTE(v290) = 0;
                    v295 = 0;
                    v158 = v122[27];
                    v261 = v122[28];
                    if (v158 != v261)
                    {
                      v159 = 1.79769313e308;
                      do
                      {
                        v160 = *v158;
                        v313 = 0uLL;
                        *&__p = 0.0;
                        geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v286, &__p);
                        v271 = *&v313;
                        v161 = tan(*&__p * 0.5 + 0.785398163);
                        v162 = log(v161);
                        v163.f64[0] = v271;
                        v163.f64[1] = v162;
                        __asm { FMOV            V0.2D, #0.5 }

                        v165 = vmlaq_f64(_Q0, vdupq_n_s64(0x3FC45F306DC9C883uLL), v163);
                        v166 = md::mun::MuninMetadata::_searchBounds(v160, v165.f64[0], v165.f64[1], v157);
                        if (SHIDWORD(v166) > v168)
                        {
                          goto LABEL_166;
                        }

                        v169 = 0;
                        v170 = v160 + 352;
                        v263 = v166;
                        v272 = v167 + 1;
                        v171 = v166 >> 32;
                        v264 = v168 + 1;
                        v172 = 1.79769313e308;
                        v267 = v166;
                        v265 = v167;
                        do
                        {
                          if (v166 <= v167)
                          {
                            v173 = 10 * v171;
                            v174 = v263;
                            do
                            {
                              v175 = *(v170 + 2 * (v173 + v174));
                              v177 = v171 == 9 && v174 == 9;
                              if (v177)
                              {
LABEL_151:
                                v178 = (*(v160 + 336) - *(v160 + 328)) >> 3;
                                goto LABEL_153;
                              }

                              while (1)
                              {
                                v178 = *(v170 + 2 * (v173 + v174 + 1));
LABEL_153:
                                if (v175 >= v178)
                                {
                                  break;
                                }

                                v179 = *(v160 + 328);
                                if (v175 >= (*(v160 + 336) - v179) >> 3)
                                {
                                  break;
                                }

                                v180 = *(v179 + 8 * v175);
                                v181 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(v180 + 8, &v286);
                                if (v181 <= v157 && v181 < v172)
                                {
                                  v169 = v180;
                                  v172 = v181;
                                }

                                ++v175;
                                if (v177)
                                {
                                  goto LABEL_151;
                                }
                              }

                              ++v174;
                            }

                            while (v272 != v174);
                          }

                          ++v171;
                          LODWORD(v166) = v267;
                          v167 = v265;
                        }

                        while (v264 != v171);
                        v122 = v257;
                        v128 = v255;
                        if (v169)
                        {
                          v182 = *v169;
                          v183 = *(v169 + 8);
                          v184 = *(v169 + 24);
                          v185 = *(v169 + 32);
                          v316 = *(v169 + 40);
                          v313 = v183;
                          p_p = v184;
                          v315 = v185;
                          v317 = *(v169 + 44);
                          v186 = *(v169 + 72);
                          v318 = *(v169 + 56);
                          v319 = v186;
                          __p = v182;
                          v320[0] = v321;
                          v320[1] = v321;
                          v320[2] = v321;
                          v320[3] = 6;
                          geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v320, *(v169 + 88), *(v169 + 96));
                          v187 = *(v169 + 1848);
                          *(v322 + 5) = *(v169 + 1853);
                          v322[0] = v187;
                          *v302 = __p;
                          *&v302[8] = v313;
                          *&v302[24] = p_p;
                          v303 = v315;
                          v304 = v316;
                          v305 = v317;
                          v307 = v319;
                          v306 = v318;
                          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v308, v320, &v309);
                          v310[0] = v322[0];
                          *(v310 + 5) = *(v322 + 5);
                          v311 = 1;
                          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v320);
                          if (v311)
                          {
                            v188 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(&v302[8], &v286);
                            if (v188 >= v159 || (v189 = v188, std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<md::mun::CollectionPoint,false> const&>(&v290, v302), v159 = v189, (v311 & 1) != 0))
                            {
                              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v308);
                            }
                          }
                        }

                        else
                        {
LABEL_166:
                          v302[0] = 0;
                          v311 = 0;
                        }

                        v158 += 2;
                      }

                      while (v158 != v261);
                    }

                    std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::mun::CollectionPoint,false>>(&__src, &v290);
                    if (v295 == 1)
                    {
                      geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v294);
                    }

                    if (v301)
                    {
                      break;
                    }

                    v157 = v157 + 15.0;
                  }

                  while (v157 <= 50.0);
                  if (v301)
                  {
                    v253 = v253 - v300[440];
                    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v300);
                  }

                  if (v253 == 1.79769313e308)
                  {
LABEL_175:
                    v297 = 0.0;
                    *&__src = 0.0;
                    v298 = 0.0;
                    v290 = 0;
                    v291 = 0;
                    v292 = 0;
                    v313 = 0uLL;
                    *&__p = 0.0;
                    v190 = v122;
                    v191 = v122[27];
                    v192 = v190[28];
                    if (v191 != v192)
                    {
                      do
                      {
                        v193 = *v191;
                        v191 += 2;
                        md::mun::MuninMetadata::neighborsWithinRadius(v193, v128 + 1, &__p, &v290, 5.0);
                      }

                      while (v191 != v192);
                      v194 = __p;
                      v195 = v313;
                      if (__p == v313)
                      {
                        if (*&__p != 0.0)
                        {
                          goto LABEL_188;
                        }
                      }

                      else
                      {
                        std::vector<double>::resize(&__src, (v291 - v290) >> 3);
                        v286 = 0.0;
                        v287 = 0.0;
                        v288 = 0.0;
                        v196 = v291 - v290;
                        if (v291 != v290)
                        {
                          if (!((v196 >> 3) >> 61))
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v196 >> 3);
                          }

                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        *v302 = &unk_1F2A1F490;
                        *&v302[24] = v302;
                        md::MuninLabelingUtils::computeWeightsForWeightedAverage(&v286, v302, &__src);
                        std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](v302);
                        v197 = 0;
                        v198 = (v195 - v194) >> 3;
                        if (v198 <= 1)
                        {
                          v198 = 1;
                        }

                        v199 = 0uLL;
                        do
                        {
                          v200 = v194[v197];
                          v201.f64[0] = *(v200 + 72);
                          v201.f64[1] = *(v200 + 1848);
                          v199 = vmlaq_n_f64(v199, v201, *(__src + v197++));
                        }

                        while (v198 != v197);
LABEL_188:
                        operator delete(v194);
                      }
                    }

                    if (v290)
                    {
                      v291 = v290;
                      operator delete(v290);
                    }

                    if (*&__src != 0.0)
                    {
                      operator delete(__src);
                    }
                  }

                  operator new();
                }
              }

              else
              {
                if (v143.u32[0] > 1uLL)
                {
                  if (v147 >= *&v139)
                  {
                    v147 %= *&v139;
                  }
                }

                else
                {
                  v147 &= *&v139 - 1;
                }

                if (v147 != v144)
                {
                  goto LABEL_175;
                }
              }

              v146 = *v146;
              if (!v146)
              {
                goto LABEL_175;
              }
            }
          }

          v202 = v278;
          if (!v278)
          {
LABEL_201:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v203 = v202;
              v204 = v202[4];
              if (v136 >= v204)
              {
                break;
              }

              v202 = *v203;
              if (!*v203)
              {
                goto LABEL_201;
              }
            }

            if (v204 >= v136)
            {
              break;
            }

            v202 = v203[1];
            if (!v202)
            {
              goto LABEL_201;
            }
          }

          v122 = v257;
          if (v137)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v137);
          }

          v126 = v249;
          v123 = v250;
          v125 = v251;
        }

        v125 += 3;
      }

      while (v125 != v126);
    }

    v297 = 0.0;
    *&__src = 0.0;
    v298 = 0.0;
    v205 = v122[21];
    *&__p = v277;
    v284 = v205;
    v285 = &v278;
    *&v283 = v257 + 176;
    v290 = &__src;
    v291 = 0;
    std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(v302, &__p, &v285, &v284, &v283, &v290);
    v290 = 0;
    v291 = 0;
    v292 = 0;
    v206 = v122[21];
    v284 = (v257 + 176);
    v285 = v206;
    v282 = &v278;
    v283 = v277;
    *&__p = COERCE_DOUBLE(&v290);
    *&v313 = 0;
    std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(v302, &v285, &v284, &v283, &v282, &__p);
    v207 = v290;
    v208 = v291;
    while (v207 != v208)
    {
      v209 = v207->__vftable;
      v207 = (v207 + 16);
      md::MuninJunctionFeature::clearLabels(v209[1].__on_zero_shared, v209[1].__get_deleter);
    }

    memset(v302, 0, 24);
    v210 = __src;
    v268 = v297;
    if (__src != *&v297)
    {
      while (1)
      {
        v211 = *(*v210 + 56);
        v212 = *(*v210 + 64);
        while (v211 != v212)
        {
          v213 = *v211;
          if ((*(*v211 + 40) & 1) == 0)
          {
            v213[40] = 1;
            (*(*v213 + 24))(v213, v124);
          }

          v211 += 16;
        }

        v214 = *&v302[8];
        v215 = *v302;
        while (v214 != v215)
        {
          v216 = *(v214 - 8);
          if (v216)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v216);
          }

          v214 -= 16;
        }

        *&v302[8] = v215;
        v217 = *v210;
        v218 = std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v302, (*(*v210 + 64) - *(*v210 + 56)) >> 3);
        v219 = *(v217 + 56);
        v220 = *(v217 + 64);
        while (v219 != v220)
        {
          v222 = *(*v219 + 16);
          v221 = *(*v219 + 24);
          while (v222 != v221)
          {
            v223 = *v222;
            if (!atomic_fetch_add((*v222 + 306), 1u) && !*(v223 + 493))
            {
              atomic_load((v223 + 298));
              *(v223 + 493) = 9473;
              *(v223 + 299) = 0;
              v224 = atomic_load((v223 + 353));
              if ((v224 & 1) == 0)
              {
                *(v223 + 356) = 2 * (*(v223 + 493) == 2);
              }
            }

            v218 = std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v302, v222++);
          }

          v219 += 16;
        }

        v273 = v210;
        v225 = *v302;
        v226 = *&v302[8];
        if (*v302 != *&v302[8])
        {
          break;
        }

LABEL_267:
        v210 = v273 + 16;
        v124 = v256;
        v121 = v257 + 176;
        if (v273 + 16 == *&v268)
        {
          goto LABEL_268;
        }
      }

      v227 = *(v257 + 32);
      v228 = (v227 + 16);
      while (1)
      {
        v229 = *v228;
        if (*v228)
        {
          v230 = *v225;
          v231 = *v228;
          do
          {
            v232 = v231[4];
            if (v230 >= v232)
            {
              if (v232 >= v230)
              {
                goto LABEL_266;
              }

              ++v231;
            }

            v231 = *v231;
          }

          while (v231);
        }

        v233 = *v225;
        if ((*(*v225 + 304) & 1) == 0)
        {
          *(v233 + 304) = 1;
        }

        v234 = (v227 + 16);
        v235 = (v227 + 16);
        if (v229)
        {
          while (1)
          {
            while (1)
            {
              v235 = v229;
              v236 = v229[4];
              if (v233 >= v236)
              {
                break;
              }

              v229 = *v235;
              v234 = v235;
              if (!*v235)
              {
                goto LABEL_247;
              }
            }

            if (v236 >= v233)
            {
              break;
            }

            v229 = v235[1];
            if (!v229)
            {
              v234 = v235 + 1;
              goto LABEL_247;
            }
          }
        }

        else
        {
LABEL_247:
          v237 = mdm::zone_mallocator::instance(v218);
          v238 = pthread_rwlock_rdlock((v237 + 32));
          if (v238)
          {
            geo::read_write_lock::logFailure(v238, "read lock", v239);
          }

          v240 = malloc_type_zone_malloc(*v237, 0x30uLL, 0x10200409B2CA512uLL);
          atomic_fetch_add((v237 + 24), 1u);
          geo::read_write_lock::unlock((v237 + 32));
          v240[4] = *v225;
          v241 = v225[1];
          v240[5] = v241;
          if (v241)
          {
            atomic_fetch_add_explicit(v241 + 1, 1uLL, memory_order_relaxed);
          }

          *v240 = 0;
          v240[1] = 0;
          v240[2] = v235;
          *v234 = v240;
          v242 = **(v227 + 8);
          if (v242)
          {
            *(v227 + 8) = v242;
            v240 = *v234;
          }

          v218 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v227 + 16), v240);
          ++*(v227 + 32);
        }

        if (*(*v227 + 3653))
        {
          goto LABEL_265;
        }

        v243 = *(*v225 + 6);
        if ((*(v243 + 47) & 0x8000000000000000) != 0)
        {
          if (!*(v243 + 32))
          {
            goto LABEL_265;
          }
        }

        else if (!*(v243 + 47))
        {
          goto LABEL_265;
        }

        v244 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>((v227 + 40), v243 + 24);
        if (!v244)
        {
          operator new();
        }

        v246 = v244[6];
        v245 = v244[7];
        if (v245)
        {
          atomic_fetch_add_explicit(&v245->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v218 = md::LabelBase::setDedupingGroup(*v225, v246);
        if (v245)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v245);
        }

LABEL_265:
        *(v227 + 96) = 1;
LABEL_266:
        v225 += 2;
        if (v225 == v226)
        {
          goto LABEL_267;
        }
      }
    }

LABEL_268:
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v257 + 176));
    v247 = v278;
    *(v257 + 168) = v277;
    *(v257 + 176) = v247;
    v248 = v279;
    *(v257 + 184) = v279;
    if (v248)
    {
      v247[2] = v121;
      v277 = COERCE_DOUBLE(&v278);
      v278 = 0;
      v279 = 0;
    }

    else
    {
      *(v257 + 168) = v121;
    }

    *&__p = COERCE_DOUBLE(v302);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&__p);
    *v302 = &v290;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v302);
    *v302 = &__src;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v302);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v278);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(v281[0]);
    if (v274)
    {
      v275 = v274;
      operator delete(v274);
    }
  }

  if (*(&v252 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v252 + 1));
  }
}

void sub_1B2E7B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57)
{
  std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&STACK[0x1070]);
  v58 = STACK[0x920];
  if (STACK[0x920])
  {
    STACK[0x928] = v58;
    operator delete(v58);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(a54);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a57);
  if (a50)
  {
    operator delete(a50);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v135 = a2;
  v136 = &a2[-1].i64[1];
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = (a2 - v7) >> 3;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v81 = *v136;
        v82 = v6->i64[0];
        result = md::MuninRoadLabelSorter::operator()(*v136, v6->i64[0]);
        if (result)
        {
          v6->i64[0] = v81;
          *v136 = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(v6->i64, &v6->i64[1], v6[1].i64, v136);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(v6->i64, &v6->i64[1], v6[1].i64, &v6[1].i64[1]);
      v74 = *v136;
      v75 = v6[1].i64[1];
      result = md::MuninRoadLabelSorter::operator()(*v136, v75);
      if (!result)
      {
        return result;
      }

      v6[1].i64[1] = v74;
      *v136 = v75;
      v77 = v6[1].i64[0];
      v76 = v6[1].i64[1];
      result = md::MuninRoadLabelSorter::operator()(v76, v77);
      if (!result)
      {
        return result;
      }

      v6[1].i64[0] = v76;
      v6[1].i64[1] = v77;
      v78 = v6->i64[1];
      result = md::MuninRoadLabelSorter::operator()(v76, v78);
      if (!result)
      {
        return result;
      }

      v6->i64[1] = v76;
      v6[1].i64[0] = v78;
      v79 = v6->i64[0];
      v80 = v76;
      goto LABEL_166;
    }

LABEL_10:
    v139 = v6;
    if (v8 <= 23)
    {
      v87 = &v6->u64[1];
      v89 = v6 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v6;
          do
          {
            v93 = *v91;
            v92 = v91[1];
            v91 = v87;
            result = md::MuninRoadLabelSorter::operator()(v92, v93);
            if (result)
            {
              v94 = v90;
              while (1)
              {
                *(&v139->i64[1] + v94) = v93;
                if (!v94)
                {
                  break;
                }

                v93 = *(&v139->i64[-1] + v94);
                result = md::MuninRoadLabelSorter::operator()(v92, v93);
                v94 -= 8;
                if ((result & 1) == 0)
                {
                  v95 = (&v139->i64[1] + v94);
                  goto LABEL_128;
                }
              }

              v95 = v139;
LABEL_128:
              *v95 = v92;
            }

            v87 = (v91 + 1);
            v90 += 8;
          }

          while (v91 + 1 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v131 = v6->i64[0];
          v130 = v6->i64[1];
          v6 = v87;
          result = md::MuninRoadLabelSorter::operator()(v130, v131);
          if (result)
          {
            v132 = v6;
            do
            {
              v6->i64[0] = v131;
              v131 = v6[-1].i64[0];
              result = md::MuninRoadLabelSorter::operator()(v130, v131);
              v6 = (v6 - 8);
            }

            while ((result & 1) != 0);
            v6->i64[0] = v130;
            v6 = v132;
            a2 = v135;
          }

          v87 = &v6->u64[1];
        }

        while (&v6->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v6 != a2)
      {
        v96 = (v8 - 2) >> 1;
        v137 = v96;
        do
        {
          v97 = v96;
          if (v137 >= v96)
          {
            v98 = (2 * v96) | 1;
            v99 = &v6->i64[v98];
            v100 = *v99;
            if (2 * v96 + 2 < v8)
            {
              v101 = v99[1];
              if (md::MuninRoadLabelSorter::operator()(*v99, v101))
              {
                v100 = v101;
                ++v99;
                v98 = 2 * v97 + 2;
              }
            }

            v102 = &v6->i64[v97];
            v103 = *v102;
            result = md::MuninRoadLabelSorter::operator()(v100, *v102);
            a2 = v135;
            if ((result & 1) == 0)
            {
              do
              {
                v104 = v99;
                *v102 = v100;
                if (v137 < v98)
                {
                  break;
                }

                v105 = (2 * v98) | 1;
                v99 = &v6->i64[v105];
                v106 = 2 * v98 + 2;
                v100 = *v99;
                if (v106 < v8)
                {
                  v107 = v99[1];
                  v108 = md::MuninRoadLabelSorter::operator()(*v99, v107);
                  if (v108)
                  {
                    v100 = v107;
                    ++v99;
                  }

                  v6 = v139;
                  if (v108)
                  {
                    v105 = v106;
                  }
                }

                result = md::MuninRoadLabelSorter::operator()(v100, v103);
                v102 = v104;
                v98 = v105;
              }

              while (!result);
              *v104 = v103;
              a2 = v135;
            }
          }

          v96 = v97 - 1;
        }

        while (v97);
        do
        {
          v109 = a2;
          v110 = 0;
          v138 = v6->i64[0];
          v111 = v6;
          do
          {
            v112 = &v111[v110];
            v114 = v112 + 1;
            v113 = v112[1];
            v115 = (2 * v110) | 1;
            v116 = 2 * v110 + 2;
            if (v116 >= v8)
            {
              v110 = (2 * v110) | 1;
            }

            else
            {
              v119 = v112[2];
              v117 = v112 + 2;
              v118 = v119;
              result = md::MuninRoadLabelSorter::operator()(v113, v119);
              if (result)
              {
                v113 = v118;
                v114 = v117;
                v110 = v116;
              }

              else
              {
                v110 = v115;
              }
            }

            *v111 = v113;
            v111 = v114;
          }

          while (v110 <= (v8 - 2) / 2);
          v120 = &v109[-1].i64[1];
          if (v114 == v120)
          {
            v121 = v120;
            v6 = v139;
            *v114 = v138;
          }

          else
          {
            *v114 = *v120;
            v121 = v120;
            v6 = v139;
            *v120 = v138;
            v122 = (v114 - v139 + 8) >> 3;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = &v139->i64[v124 >> 1];
              v127 = *v126;
              v128 = *v114;
              result = md::MuninRoadLabelSorter::operator()(*v126, *v114);
              if (result)
              {
                do
                {
                  v129 = v126;
                  *v114 = v127;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = &v139->i64[v125];
                  v127 = *v126;
                  result = md::MuninRoadLabelSorter::operator()(*v126, v128);
                  v114 = v129;
                }

                while ((result & 1) != 0);
                *v129 = v128;
              }
            }
          }

          v123 = v8-- <= 2;
          a2 = v121;
        }

        while (!v123);
      }

      return result;
    }

    v9 = &v6->i64[v8 >> 1];
    v10 = v9;
    v11 = *v136;
    if (v8 >= 0x81)
    {
      v12 = *v9;
      v13 = v6->i64[0];
      v14 = md::MuninRoadLabelSorter::operator()(*v9, v6->i64[0]);
      v15 = md::MuninRoadLabelSorter::operator()(v11, v12);
      if (v14)
      {
        if (v15)
        {
          v6->i64[0] = v11;
          goto LABEL_27;
        }

        v6->i64[0] = v12;
        *v9 = v13;
        v24 = *v136;
        if (md::MuninRoadLabelSorter::operator()(*v136, v13))
        {
          *v9 = v24;
LABEL_27:
          *v136 = v13;
        }
      }

      else if (v15)
      {
        *v9 = v11;
        *v136 = v12;
        v20 = *v9;
        v21 = v6->i64[0];
        if (md::MuninRoadLabelSorter::operator()(*v9, v6->i64[0]))
        {
          v6->i64[0] = v20;
          *v9 = v21;
        }
      }

      v25 = v9 - 1;
      v26 = *(v9 - 1);
      v27 = v6->i64[1];
      v28 = md::MuninRoadLabelSorter::operator()(v26, v27);
      v29 = a2[-1].i64[0];
      v30 = md::MuninRoadLabelSorter::operator()(v29, v26);
      if (v28)
      {
        if (v30)
        {
          v6->i64[1] = v29;
          goto LABEL_39;
        }

        v6->i64[1] = v26;
        *v25 = v27;
        v34 = a2[-1].i64[0];
        if (md::MuninRoadLabelSorter::operator()(v34, v27))
        {
          *v25 = v34;
LABEL_39:
          a2[-1].i64[0] = v27;
        }
      }

      else if (v30)
      {
        *v25 = v29;
        a2[-1].i64[0] = v26;
        v31 = *v25;
        v32 = v6->i64[1];
        if (md::MuninRoadLabelSorter::operator()(*v25, v32))
        {
          v6->i64[1] = v31;
          *v25 = v32;
        }
      }

      v37 = v9[1];
      v36 = v9 + 1;
      v35 = v37;
      v38 = v6[1].i64[0];
      v39 = md::MuninRoadLabelSorter::operator()(v37, v38);
      v40 = a2[-2].i64[1];
      v41 = md::MuninRoadLabelSorter::operator()(v40, v37);
      if (v39)
      {
        if (v41)
        {
          v6[1].i64[0] = v40;
          goto LABEL_48;
        }

        v6[1].i64[0] = v35;
        *v36 = v38;
        v44 = a2[-2].i64[1];
        if (md::MuninRoadLabelSorter::operator()(v44, v38))
        {
          *v36 = v44;
LABEL_48:
          a2[-2].i64[1] = v38;
        }
      }

      else if (v41)
      {
        *v36 = v40;
        a2[-2].i64[1] = v35;
        v42 = *v36;
        v43 = v6[1].i64[0];
        if (md::MuninRoadLabelSorter::operator()(*v36, v43))
        {
          v6[1].i64[0] = v42;
          *v36 = v43;
        }
      }

      v45 = *v10;
      v46 = *v25;
      v47 = md::MuninRoadLabelSorter::operator()(*v10, *v25);
      v48 = *v36;
      v49 = md::MuninRoadLabelSorter::operator()(*v36, v45);
      if (v47)
      {
        if (!v49)
        {
          *v25 = v45;
          *v10 = v46;
          v25 = v10;
          v45 = v48;
          if (!md::MuninRoadLabelSorter::operator()(v48, v46))
          {
            v45 = v46;
LABEL_56:
            v50 = v6->i64[0];
            v6->i64[0] = v45;
            *v10 = v50;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v49)
        {
          goto LABEL_56;
        }

        *v10 = v48;
        *v36 = v45;
        v36 = v10;
        v45 = v46;
        if (!md::MuninRoadLabelSorter::operator()(v48, v46))
        {
          v45 = v48;
          goto LABEL_56;
        }
      }

      *v25 = v48;
      *v36 = v46;
      goto LABEL_56;
    }

    v16 = v6->i64[0];
    v17 = *v9;
    v18 = md::MuninRoadLabelSorter::operator()(v6->i64[0], *v9);
    v19 = md::MuninRoadLabelSorter::operator()(v11, v16);
    if (!v18)
    {
      if (v19)
      {
        v6->i64[0] = v11;
        *v136 = v16;
        v22 = v6->i64[0];
        v23 = *v9;
        if (md::MuninRoadLabelSorter::operator()(v6->i64[0], *v9))
        {
          *v9 = v22;
          v6->i64[0] = v23;
        }
      }

      goto LABEL_57;
    }

    if (v19)
    {
      *v9 = v11;
    }

    else
    {
      *v9 = v16;
      v6->i64[0] = v17;
      v33 = *v136;
      if (!md::MuninRoadLabelSorter::operator()(*v136, v17))
      {
        goto LABEL_57;
      }

      v6->i64[0] = v33;
    }

    *v136 = v17;
LABEL_57:
    --a3;
    v51 = v6->i64[0];
    v52 = v6;
    if ((a4 & 1) != 0 || (v52 = v6, md::MuninRoadLabelSorter::operator()(v6[-1].i64[1], v6->i64[0])))
    {
      do
      {
        v53 = v52;
        v55 = v52->i64[1];
        v52 = (v52 + 8);
        v54 = v55;
      }

      while (md::MuninRoadLabelSorter::operator()(v55, v51));
      if (v53 == v6)
      {
        a2 = v135;
        do
        {
          if (v52 >= a2)
          {
            break;
          }

          v57 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while (!md::MuninRoadLabelSorter::operator()(v57, v51));
      }

      else
      {
        do
        {
          v56 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while (!md::MuninRoadLabelSorter::operator()(v56, v51));
      }

      if (v52 < a2)
      {
        v58 = a2->i64[0];
        v59 = v52;
        v60 = a2;
        do
        {
          *v59 = v58;
          *v60 = v54;
          do
          {
            v53 = v59;
            v61 = v59[1];
            ++v59;
            v54 = v61;
          }

          while (md::MuninRoadLabelSorter::operator()(v61, v51));
          do
          {
            v62 = *--v60;
            v58 = v62;
          }

          while (!md::MuninRoadLabelSorter::operator()(v62, v51));
        }

        while (v59 < v60);
      }

      if (v53 != v6)
      {
        v6->i64[0] = *v53;
      }

      *v53 = v51;
      v63 = v52 >= a2;
      a2 = v135;
      if (!v63)
      {
        goto LABEL_78;
      }

      v64 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>(v6, v53);
      v7 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>((v53 + 1), v135);
      if (result)
      {
        a2 = v53;
        if (!v64)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v64)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(v6, v53, a3, a4 & 1);
        a4 = 0;
        v7 = v53 + 1;
      }
    }

    else
    {
      result = md::MuninRoadLabelSorter::operator()(v51, *v136);
      if (result)
      {
        v7 = v6;
        do
        {
          v65 = v7[1];
          ++v7;
          result = md::MuninRoadLabelSorter::operator()(v51, v65);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v66 = &v6->i64[1];
        do
        {
          v7 = v66;
          if (v66 >= a2)
          {
            break;
          }

          ++v66;
          result = md::MuninRoadLabelSorter::operator()(v51, *v7);
        }

        while (!result);
      }

      v67 = a2;
      if (v7 < a2)
      {
        v67 = a2;
        do
        {
          v68 = *--v67;
          result = md::MuninRoadLabelSorter::operator()(v51, v68);
        }

        while ((result & 1) != 0);
      }

      if (v7 < v67)
      {
        v69 = *v7;
        v70 = *v67;
        do
        {
          *v7 = v70;
          *v67 = v69;
          do
          {
            v71 = v7[1];
            ++v7;
            v69 = v71;
          }

          while (!md::MuninRoadLabelSorter::operator()(v51, v71));
          do
          {
            v72 = *--v67;
            v70 = v72;
            result = md::MuninRoadLabelSorter::operator()(v51, v72);
          }

          while ((result & 1) != 0);
        }

        while (v7 < v67);
      }

      v73 = v7 - 1;
      if (v7 - 1 != v139)
      {
        v139->i64[0] = *v73;
      }

      a4 = 0;
      *v73 = v51;
    }
  }

  v83 = v6->i64[0];
  v84 = v6->i64[1];
  v85 = md::MuninRoadLabelSorter::operator()(v84, v6->i64[0]);
  v86 = *v136;
  result = md::MuninRoadLabelSorter::operator()(*v136, v84);
  if (!v85)
  {
    if (!result)
    {
      return result;
    }

    v6->i64[1] = v86;
    *v136 = v84;
    v79 = v6->i64[0];
    v80 = v6->i64[1];
LABEL_166:
    result = md::MuninRoadLabelSorter::operator()(v80, v79);
    if (result)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }

    return result;
  }

  if (result)
  {
    v6->i64[0] = v86;
  }

  else
  {
    v6->i64[0] = v84;
    v6->i64[1] = v83;
    v133 = *v136;
    result = md::MuninRoadLabelSorter::operator()(*v136, v83);
    if (!result)
    {
      return result;
    }

    v6->i64[1] = v133;
  }

  *v136 = v83;
  return result;
}

BOOL md::MuninRoadLabelSorter::operator()(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2 && v2 == *(a2 + 24))
  {
    return *(a1 + 32) < *(a2 + 32);
  }

  v3 = (*(a1 + 538) & 0xFD) == 1;
  if (((*(a1 + 538) & 0xFD) == 1) == ((*(a2 + 538) & 0xFD) == 1))
  {
    return *(a1 + 488) <= *(a2 + 488);
  }

  return v3;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = md::MuninRoadLabelSorter::operator()(*a2, *a1);
  v11 = *a3;
  v12 = md::MuninRoadLabelSorter::operator()(*a3, v8);
  if (v10)
  {
    if (v12)
    {
      *a1 = v11;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (md::MuninRoadLabelSorter::operator()(*a3, v9))
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (md::MuninRoadLabelSorter::operator()(*a2, *a1))
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = md::MuninRoadLabelSorter::operator()(*a4, v8);
  if (result)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = md::MuninRoadLabelSorter::operator()(*a3, *a2);
    if (result)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = md::MuninRoadLabelSorter::operator()(*a2, *a1);
      if (result)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = *a1;
        v15 = *(a1 + 8);
        v16 = md::MuninRoadLabelSorter::operator()(v15, *a1);
        v17 = *(a2 - 1);
        v18 = md::MuninRoadLabelSorter::operator()(v17, v15);
        if (v16)
        {
          if (v18)
          {
            *a1 = v17;
          }

          else
          {
            *a1 = v15;
            *(a1 + 8) = v14;
            v25 = *(a2 - 1);
            if (!md::MuninRoadLabelSorter::operator()(v25, v14))
            {
              return 1;
            }

            *(a1 + 8) = v25;
          }

          *(a2 - 1) = v14;
          return 1;
        }

        if (!v18)
        {
          return 1;
        }

        *(a1 + 8) = v17;
        *(a2 - 1) = v15;
        v12 = *a1;
        v13 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v7 = *(a2 - 1);
        v8 = *(a1 + 24);
        if (!md::MuninRoadLabelSorter::operator()(v7, v8))
        {
          return 1;
        }

        *(a1 + 24) = v7;
        *(a2 - 1) = v8;
        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        if (!md::MuninRoadLabelSorter::operator()(v9, v10))
        {
          return 1;
        }

        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        v11 = *(a1 + 8);
        if (!md::MuninRoadLabelSorter::operator()(v9, v11))
        {
          return 1;
        }

        *(a1 + 8) = v9;
        *(a1 + 16) = v11;
        v12 = *a1;
        v13 = v9;
        break;
      default:
        goto LABEL_16;
    }

    if (md::MuninRoadLabelSorter::operator()(v13, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (md::MuninRoadLabelSorter::operator()(v5, *a1))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = md::MuninRoadLabelSorter::operator()(v20, *a1);
  v23 = (a1 + 16);
  v22 = *(a1 + 16);
  v24 = md::MuninRoadLabelSorter::operator()(v22, v20);
  if (v21)
  {
    if (v24)
    {
      *a1 = v22;
      *(a1 + 16) = v19;
    }

    else
    {
      *a1 = v20;
      *(a1 + 8) = v19;
      if (md::MuninRoadLabelSorter::operator()(v22, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v24)
  {
    *(a1 + 8) = v22;
    *(a1 + 16) = v20;
    if (md::MuninRoadLabelSorter::operator()(v22, v19))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v27 = 0;
  for (i = 24; ; i += 8)
  {
    v29 = *v26;
    v30 = *v23;
    if (md::MuninRoadLabelSorter::operator()(*v26, *v23))
    {
      v31 = i;
      while (1)
      {
        *(a1 + v31) = v30;
        v32 = v31 - 8;
        if (v31 == 8)
        {
          break;
        }

        v30 = *(a1 + v31 - 16);
        v33 = md::MuninRoadLabelSorter::operator()(v29, v30);
        v31 = v32;
        if (!v33)
        {
          v34 = (a1 + v32);
          goto LABEL_40;
        }
      }

      v34 = a1;
LABEL_40:
      *v34 = v29;
      if (++v27 == 8)
      {
        break;
      }
    }

    v23 = v26++;
    if (v26 == a2)
    {
      return 1;
    }
  }

  return v26 + 1 == a2;
}

void std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::mun::CollectionPoint,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1864) == *(a2 + 1864))
  {
    if (*(a1 + 1864))
    {
      *a1 = *a2;
      for (i = 32; i != 44; i += 4)
      {
        *(a1 + i) = *(a2 + i);
      }

      *(a1 + 44) = *(a2 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(a1 + j) = *(a2 + j);
      }

      *(a1 + 48) = *(a2 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(a1 + k) = *(a2 + k);
      }

      *(a1 + 80) = *(a2 + 80);
      if (a1 != a2)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, a2 + 88, a1 + 120);
      }

      v7 = *(a2 + 1848);
      *(a1 + 1853) = *(a2 + 1853);
      *(a1 + 1848) = v7;
    }
  }

  else if (*(a1 + 1864))
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(a1 + 88);
    *(a1 + 1864) = 0;
  }

  else
  {
    *a1 = *a2;
    v8 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    v9 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v9;
    *(a1 + 44) = *(a2 + 44);
    v10 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v10;
    geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((a1 + 88), a2 + 88, a1 + 120);
    v11 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v11;
    *(a1 + 1864) = 1;
  }
}

char *std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(char *result, char **a2, char **a3, uint64_t a4, void *a5, char **a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_39:
    v27 = *a6;
    goto LABEL_40;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 4);
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = *(v8 + 1);
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
            v24 = *(v8 + 2);
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      result = std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(*a6, a6[1], v8 + 32);
      a6[1] = result + 16;
      v17 = *a2;
      v18 = *(*a2 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v17 + 2);
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_39;
    }
  }

  v27 = *a6;
  if (v8 == v9)
  {
LABEL_40:
    v9 = v8;
    goto LABEL_41;
  }

  v28 = *a6;
  v29 = *(&v27 + 1);
  v32 = v27;
  do
  {
    result = std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(v28, v29, v8 + 32);
    v30 = *(v8 + 1);
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = *(v8 + 2);
        v20 = *v31 == v8;
        v8 = v31;
      }

      while (!v20);
    }

    v29 = result + 16;
    v8 = v31;
  }

  while (v31 != v9);
  *&v27 = v32;
  *(&v27 + 1) = result + 16;
LABEL_41:
  *v7 = v9;
  *(v7 + 8) = v27;
  return result;
}

char *std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(void *a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v41 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v14);
    }

    v17 = (16 * v15);
    v38 = 0;
    v39 = 16 * v15;
    v40 = (16 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v29 = 1;
        }

        else
        {
          v29 = v12 >> 3;
        }

        v42 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v29);
      }

      v17 = (v17 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v39 = v17;
      *&v40 = v17;
    }

    v30 = *(a3 + 1);
    *v17 = *a3;
    v17[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      v17 = v40;
    }

    *&v40 = v17 + 2;
    v31 = v39;
    memcpy(v17 + 2, a2, a1[1] - a2);
    v32 = *a1;
    *&v40 = v40 + a1[1] - v4;
    a1[1] = v4;
    v33 = v4 - v32;
    v34 = (v31 - (v4 - v32));
    memcpy(v34, v32, v33);
    v35 = *a1;
    *a1 = v34;
    v36 = a1[2];
    *(a1 + 1) = v40;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    v38 = v35;
    v39 = v35;
    std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v38);
    return v31;
  }

  else if (a2 == v6)
  {
    v16 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    v8 = v6 - 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *v8;
      v9 = v6 + 16;
      *v8 = 0;
      *(v6 - 1) = 0;
    }

    a1[1] = v9;
    if (v6 != a2 + 16)
    {
      v18 = (v6 - 8);
      v19 = a2 - v6 + 16;
      v20 = v6 - 32;
      do
      {
        v21 = *v20;
        *v20 = 0;
        *(v20 + 1) = 0;
        v22 = *v18;
        *(v18 - 1) = v21;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        v18 -= 2;
        v20 -= 16;
        v19 += 16;
      }

      while (v19);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 16;
    if (v23)
    {
      v24 = 0;
    }

    v25 = &a3[v24];
    v27 = *v25;
    v26 = *(v25 + 1);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(v4 + 1);
    *v4 = v27;
    *(v4 + 1) = v26;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }
  }

  return v4;
}

void std::__shared_ptr_emplace<md::MuninJunctionFeature>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::MuninJunctionFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninJunction const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::JunctionSearchResult const&&)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = *(a2 - 16);
        if (result.n128_f64[0] >= *(v12 + 8))
        {
          return result;
        }

LABEL_111:
        v193 = *(v12 + 16);
        v168 = *v12;
        v90 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v90;
        result = v168;
        *(a2 - 8) = v193;
LABEL_112:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = *(v12 + 32);
      v92 = *(v12 + 56);
      if (v91 >= *(v12 + 8))
      {
        if (v92 < v91)
        {
          v138 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v138;
          if (*(v12 + 32) < *(v12 + 8))
          {
            v196 = *(v12 + 16);
            v171 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v171.n128_u64[1];
            *(v12 + 24) = v171;
            *(v12 + 40) = v196;
          }
        }
      }

      else if (v92 >= v91)
      {
        v198 = *(v12 + 16);
        v173 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        *(v12 + 24) = v173;
        *(v12 + 40) = v198;
        if (v92 < *(v12 + 32))
        {
          v146 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v146;
        }
      }

      else
      {
        v194 = *(v12 + 16);
        v169 = *v12;
        *v12 = *(v12 + 48);
        *(v12 + 16) = *(v12 + 64);
        result.n128_u64[1] = v169.n128_u64[1];
        *(v12 + 48) = v169;
        *(v12 + 64) = v194;
      }

      result.n128_u64[0] = *(a2 - 16);
      if (result.n128_f64[0] >= *(v12 + 56))
      {
        return result;
      }

      result = *(v12 + 48);
      v147 = *(v12 + 64);
      v148 = *(a2 - 8);
      *(v12 + 48) = *v9;
      *(v12 + 64) = v148;
      *(a2 - 8) = v147;
      *v9 = result;
      result.n128_u64[0] = *(v12 + 56);
      if (result.n128_f64[0] >= *(v12 + 32))
      {
        return result;
      }

      v149 = *(v12 + 40);
      result = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = result;
      *(v12 + 64) = v149;
LABEL_187:
      result.n128_u64[0] = *(v12 + 32);
      if (result.n128_f64[0] < *(v12 + 8))
      {
        v199 = *(v12 + 16);
        v174 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v174;
        *(v12 + 24) = v174;
        *(v12 + 40) = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = (v12 + 24);
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            v98 = v93;
            result.n128_u64[0] = *(v97 + 32);
            if (result.n128_f64[0] < *(v97 + 8))
            {
              v99 = *v93;
              v100 = *(v97 + 40);
              v101 = v96;
              while (1)
              {
                v102 = v12 + v101;
                *(v102 + 24) = *(v12 + v101);
                *(v102 + 40) = *(v12 + v101 + 16);
                if (!v101)
                {
                  break;
                }

                v101 -= 24;
                if (result.n128_f64[0] >= *(v102 - 16))
                {
                  v103 = v12 + v101 + 24;
                  goto LABEL_131;
                }
              }

              v103 = v12;
LABEL_131:
              *v103 = v99;
              *(v103 + 8) = result.n128_u64[0];
              *(v103 + 16) = v100;
            }

            v93 = v98 + 3;
            v96 += 24;
            v97 = v98;
          }

          while (v98 + 3 != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v139 = v93;
          result.n128_u64[0] = *(a1 + 32);
          if (result.n128_f64[0] < *(a1 + 8))
          {
            v140 = *v93;
            v141 = *(a1 + 40);
            v142 = v139;
            do
            {
              *v142 = *(v142 - 3);
              *(v142 + 4) = *(v142 - 2);
              v143 = *(v142 - 5);
              v142 -= 3;
            }

            while (result.n128_f64[0] < v143);
            *v142 = v140;
            v142[1] = result.n128_u64[0];
            *(v142 + 4) = v141;
          }

          v93 = v139 + 3;
          a1 = v139;
        }

        while (v139 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v104 = (v14 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = v12 + 24 * v107;
            if (2 * v106 + 2 < v14 && *(v108 + 8) < *(v108 + 32))
            {
              v108 += 24;
              v107 = 2 * v106 + 2;
            }

            v109 = v12 + 24 * v106;
            v110 = *(v109 + 8);
            if (*(v108 + 8) >= v110)
            {
              v111 = *v109;
              v112 = *(v109 + 16);
              do
              {
                v113 = v109;
                v109 = v108;
                v114 = *v108;
                *(v113 + 16) = *(v108 + 16);
                *v113 = v114;
                if (v104 < v107)
                {
                  break;
                }

                v115 = 2 * v107;
                v107 = (2 * v107) | 1;
                v108 = v12 + 24 * v107;
                v116 = v115 + 2;
                if (v116 < v14 && *(v108 + 8) < *(v108 + 32))
                {
                  v108 += 24;
                  v107 = v116;
                }
              }

              while (*(v108 + 8) >= v110);
              *v109 = v111;
              *(v109 + 8) = v110;
              *(v109 + 16) = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v117 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v118 = 0;
          v195 = *(v12 + 16);
          v170 = *v12;
          v119 = v12;
          do
          {
            v120 = v119 + 24 * v118;
            v121 = (v120 + 24);
            v122 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v117)
            {
              v118 = v122;
            }

            else
            {
              v123 = *(v120 + 32);
              v124 = *(v120 + 56);
              v125 = (v120 + 48);
              if (v123 >= v124)
              {
                v118 = v122;
              }

              else
              {
                v121 = v125;
              }
            }

            v126 = *v121;
            *(v119 + 16) = v121[1].n128_u32[0];
            *v119 = v126;
            v119 = v121;
          }

          while (v118 <= ((v117 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v170;
            v121[1].n128_u32[0] = v195;
            *v121 = v170;
          }

          else
          {
            v127 = *a2;
            v121[1].n128_u32[0] = *(a2 + 16);
            *v121 = v127;
            result = v170;
            *(a2 + 16) = v195;
            *a2 = v170;
            v128 = &v121[1].n128_i64[1] - v12;
            if (v128 >= 25)
            {
              v129 = (-2 - 0x5555555555555555 * (v128 >> 3)) >> 1;
              v130 = v12 + 24 * v129;
              result.n128_u64[0] = v121->n128_u64[1];
              if (*(v130 + 8) < result.n128_f64[0])
              {
                v131 = v121->n128_u64[0];
                v132 = v121[1].n128_i32[0];
                do
                {
                  v133 = v121;
                  v121 = v130;
                  v134 = *v130;
                  v133[1].n128_u32[0] = *(v130 + 16);
                  *v133 = v134;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v12 + 24 * v129;
                }

                while (*(v130 + 8) < result.n128_f64[0]);
                v121->n128_u64[0] = v131;
                v121->n128_u64[1] = result.n128_u64[0];
                v121[1].n128_u32[0] = v132;
              }
            }
          }
        }

        while (v117-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 16);
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[1];
      if (v18 >= *(v12 + 8))
      {
        if (v17 < v18)
        {
          v177 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u32[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v177;
          *v9 = v152;
          if (v16->n128_f64[1] < *(v12 + 8))
          {
            v178 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u32[0];
            *v12 = v23;
            v16[1].n128_u32[0] = v178;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v175 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v181 = *(v12 + 16);
        v156 = *v12;
        v24 = *v16;
        *(v12 + 16) = v16[1].n128_u32[0];
        *v12 = v24;
        v16[1].n128_u32[0] = v181;
        *v16 = v156;
        if (*(a2 - 16) < v16->n128_f64[1])
        {
          v175 = v16[1].n128_u64[0];
          v150 = *v16;
          v25 = *v9;
          v16[1].n128_u32[0] = *(a2 - 8);
          *v16 = v25;
LABEL_26:
          *(a2 - 8) = v175;
          *v9 = v150;
        }
      }

      v26 = v12 + 24 * v15;
      v27 = (v26 - 24);
      v28 = *(v26 - 16);
      v29 = *(a2 - 40);
      if (v28 >= *(v12 + 32))
      {
        if (v29 < v28)
        {
          v182 = *(v26 - 8);
          v157 = *v27;
          v33 = *v10;
          *(v26 - 8) = *(a2 - 32);
          *v27 = v33;
          *(a2 - 32) = v182;
          *v10 = v157;
          if (*(v26 - 16) < *(v12 + 32))
          {
            v34 = *(v12 + 24);
            v35 = *(v12 + 40);
            v36 = v27[1].n128_i32[0];
            *(v12 + 24) = *v27;
            *(v12 + 40) = v36;
            v27[1].n128_u32[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v30 = *(v12 + 24);
          v31 = *(v12 + 40);
          v32 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v32;
          *(a2 - 32) = v31;
          goto LABEL_38;
        }

        v38 = *(v12 + 24);
        v39 = *(v12 + 40);
        v40 = v27[1].n128_i32[0];
        *(v12 + 24) = *v27;
        *(v12 + 40) = v40;
        v27[1].n128_u32[0] = v39;
        *v27 = v38;
        if (*(a2 - 40) < v27->n128_f64[1])
        {
          v184 = v27[1].n128_i64[0];
          v159 = *v27;
          v41 = *v10;
          v27[1].n128_u32[0] = *(a2 - 32);
          *v27 = v41;
          v30 = v159;
          *(a2 - 32) = v184;
LABEL_38:
          *v10 = v30;
        }
      }

      v42 = v12 + 24 * v15;
      v43 = *(v42 + 32);
      v44 = *(a2 - 64);
      if (v43 >= *(v12 + 56))
      {
        if (v44 < v43)
        {
          v185 = *(v42 + 40);
          v160 = *(v42 + 24);
          v48 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v48;
          *(a2 - 56) = v185;
          *v11 = v160;
          if (*(v42 + 32) < *(v12 + 56))
          {
            v49 = *(v12 + 48);
            v50 = *(v12 + 64);
            v51 = *(v42 + 40);
            *(v12 + 48) = *(v42 + 24);
            *(v12 + 64) = v51;
            *(v42 + 40) = v50;
            *(v42 + 24) = v49;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 48);
          v46 = *(v12 + 64);
          v47 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v47;
          *(a2 - 56) = v46;
          goto LABEL_47;
        }

        v52 = *(v12 + 48);
        v53 = *(v12 + 64);
        v54 = *(v42 + 40);
        *(v12 + 48) = *(v42 + 24);
        *(v12 + 64) = v54;
        *(v42 + 40) = v53;
        *(v42 + 24) = v52;
        if (*(a2 - 64) < *(v42 + 32))
        {
          v186 = *(v42 + 40);
          v161 = *(v42 + 24);
          v55 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v55;
          v45 = v161;
          *(a2 - 56) = v186;
LABEL_47:
          *v11 = v45;
        }
      }

      v56 = v16->n128_f64[1];
      v57 = *(v42 + 32);
      if (v56 >= v27->n128_f64[1])
      {
        if (v57 < v56)
        {
          v188 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u32[0] = *(v42 + 40);
          *(v42 + 40) = v188;
          *(v42 + 24) = v163;
          if (v16->n128_f64[1] < v27->n128_f64[1])
          {
            v189 = v27[1].n128_i64[0];
            v164 = *v27;
            *v27 = *v16;
            v27[1].n128_u32[0] = v16[1].n128_u32[0];
            v16[1].n128_u32[0] = v189;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v187 = v27[1].n128_u64[0];
          v162 = *v27;
          *v27 = *(v42 + 24);
          v27[1].n128_u32[0] = *(v42 + 40);
          goto LABEL_56;
        }

        v190 = v27[1].n128_i64[0];
        v165 = *v27;
        *v27 = *v16;
        v27[1].n128_u32[0] = v16[1].n128_u32[0];
        v16[1].n128_u32[0] = v190;
        *v16 = v165;
        if (*(v42 + 32) < v16->n128_f64[1])
        {
          v187 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u32[0] = *(v42 + 40);
LABEL_56:
          *(v42 + 40) = v187;
          *(v42 + 24) = v162;
        }
      }

      v191 = *(v12 + 16);
      v166 = *v12;
      result = *v16;
      *(v12 + 16) = v16[1].n128_u32[0];
      *v12 = result;
      result.n128_u64[1] = v166.n128_u64[1];
      v16[1].n128_u32[0] = v191;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *(v12 + 8);
    if (v20 >= v16->n128_f64[1])
    {
      if (v17 < v20)
      {
        v179 = *(v12 + 16);
        v154 = *v12;
        result = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = result;
        result.n128_u64[1] = v154.n128_u64[1];
        *(a2 - 8) = v179;
        *v9 = v154;
        if (*(v12 + 8) < v16->n128_f64[1])
        {
          v180 = v16[1].n128_u64[0];
          v155 = *v16;
          result = *v12;
          v16[1].n128_u32[0] = *(v12 + 16);
          *v16 = result;
          result.n128_u64[1] = v155.n128_u64[1];
          *(v12 + 16) = v180;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v176 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u32[0] = *(a2 - 8);
      *v16 = v21;
LABEL_35:
      result.n128_u64[1] = v151.n128_u64[1];
      *(a2 - 8) = v176;
      *v9 = v151;
      goto LABEL_58;
    }

    v183 = v16[1].n128_u64[0];
    v158 = *v16;
    result = *v12;
    v16[1].n128_u32[0] = *(v12 + 16);
    *v16 = result;
    result.n128_u64[1] = v158.n128_u64[1];
    *(v12 + 16) = v183;
    *v12 = v158;
    if (*(a2 - 16) < *(v12 + 8))
    {
      v176 = *(v12 + 16);
      v151 = *v12;
      v37 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = *(v12 + 8);
LABEL_61:
      v58 = *v12;
      v59 = *(v12 + 16);
      v60 = v12;
      do
      {
        v61 = v60;
        v60 += 24;
      }

      while (*(v61 + 32) < result.n128_f64[0]);
      v62 = a2;
      if (v61 == v12)
      {
        v65 = a2;
        while (v60 < v65)
        {
          v63 = v65 - 24;
          v66 = *(v65 - 16);
          v65 -= 24;
          if (v66 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v63 = v65;
      }

      else
      {
        do
        {
          v63 = v62 - 24;
          v64 = *(v62 - 16);
          v62 -= 24;
        }

        while (v64 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v60;
      if (v60 < v63)
      {
        v67 = v63;
        do
        {
          v68 = *v12;
          v69 = *(v12 + 16);
          v70 = *(v67 + 16);
          *v12 = *v67;
          *(v12 + 16) = v70;
          *(v67 + 16) = v69;
          *v67 = v68;
          do
          {
            v71 = *(v12 + 32);
            v12 += 24;
          }

          while (v71 < result.n128_f64[0]);
          do
          {
            v72 = *(v67 - 16);
            v67 -= 24;
          }

          while (v72 >= result.n128_f64[0]);
        }

        while (v12 < v67);
      }

      if (v12 - 24 != a1)
      {
        v73 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v73;
      }

      *(v12 - 24) = v58;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v59;
      if (v60 < v63)
      {
        goto LABEL_82;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(a1, v12 - 24, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(v12, a2, v75))
      {
        a2 = v12 - 24;
        if (!v74)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v74)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = *(v12 + 8);
      if (*(v12 - 16) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] >= *(a2 - 16))
      {
        v78 = v12 + 24;
        do
        {
          v12 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v79 = *(v78 + 8);
          v78 += 24;
        }

        while (result.n128_f64[0] >= v79);
      }

      else
      {
        v76 = v12;
        do
        {
          v12 = v76 + 24;
          v77 = *(v76 + 32);
          v76 += 24;
        }

        while (result.n128_f64[0] >= v77);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v81 = a2;
        do
        {
          v80 = v81 - 24;
          v82 = *(v81 - 16);
          v81 -= 24;
        }

        while (result.n128_f64[0] < v82);
      }

      v83 = *a1;
      v84 = *(a1 + 16);
      while (v12 < v80)
      {
        v192 = *(v12 + 16);
        v167 = *v12;
        v85 = *v80;
        *(v12 + 16) = *(v80 + 16);
        *v12 = v85;
        *(v80 + 16) = v192;
        *v80 = v167;
        do
        {
          v86 = *(v12 + 32);
          v12 += 24;
        }

        while (result.n128_f64[0] >= v86);
        do
        {
          v87 = *(v80 - 16);
          v80 -= 24;
        }

        while (result.n128_f64[0] < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v83;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v84;
    }
  }

  result.n128_u64[0] = *(v12 + 32);
  v89 = *(a2 - 16);
  if (result.n128_f64[0] >= *(v12 + 8))
  {
    if (v89 >= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v136 = *(v12 + 40);
    v137 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v137;
    *(a2 - 8) = v136;
    *v9 = result;
    goto LABEL_187;
  }

  if (v89 < result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v197 = *(v12 + 16);
  v172 = *v12;
  *v12 = *(v12 + 24);
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v172.n128_u64[1];
  *(v12 + 24) = v172;
  *(v12 + 40) = v197;
  result.n128_u64[0] = *(a2 - 16);
  if (result.n128_f64[0] < *(v12 + 32))
  {
    result = *(v12 + 24);
    v144 = *(v12 + 40);
    v145 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v145;
    *(a2 - 8) = v144;
    goto LABEL_112;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v11;
      a3[1].n128_u32[0] = v10;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        a2[1].n128_u32[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      a3[1].n128_u32[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    a2[1].n128_u32[0] = v14;
    *a2 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    a4[1].n128_u32[0] = v17;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v20;
      a3[1].n128_u32[0] = v19;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    v23 = a4[1].n128_i64[0];
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    a5[1].n128_u32[0] = v23;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      a4[1].n128_u32[0] = v25;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        a2[1].n128_u32[0] = v28;
        a3[1].n128_u32[0] = v27;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u32[0];
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          a2[1].n128_u32[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 32);
      v9 = *(a2 - 16);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 16) >= *(a1 + 32))
          {
            return 1;
          }

          v10 = *(a1 + 24);
          v11 = *(a1 + 40);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *(a2 - 8) = v11;
        *v7 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 24);
      v25 = *(a1 + 40);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *(a2 - 8) = v25;
      *v7 = v24;
LABEL_50:
      if (*(a1 + 32) < *(a1 + 8))
      {
        v57 = *(a1 + 16);
        v58 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v58;
        *(a1 + 40) = v57;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 16) >= *(a1 + 56))
    {
      return 1;
    }

    v51 = a2 - 24;
    v52 = *(a1 + 48);
    v53 = *(a1 + 64);
    v54 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v54;
    *(v51 + 16) = v53;
    *v51 = v52;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v55 = *(a1 + 40);
    v56 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v56;
    *(a1 + 64) = v55;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 16) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 8);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 8) = v5;
      *(a2 - 24) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 8);
    if (v43 < *(v13 + 8))
    {
      v44 = *v40;
      v45 = *(v40 + 16);
      v46 = v41;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (v43 >= *(v47 + 32))
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v44;
      *(v48 + 8) = v43;
      *(v48 + 16) = v45;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_1,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_1>,BOOL ()(md::MuninJunction const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 69);
  if (v2 > 2)
  {
    return 1;
  }

  if (v2 - 1 > 1)
  {
    return 0;
  }

  return *(*a2 + 68) > 2u;
}

void std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0>,void ()(md::JunctionSearchResult const&&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = sqrt(*(a2 + 24));
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v2) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(v12);
    }

    v16 = 24 * v9;
    v17 = *(a2 + 16);
    *v16 = v17;
    *(v16 + 8) = v3;
    v18 = 10.0;
    if (!*(v17 + 64))
    {
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      v18 = 0.0;
      while (v22 != v23)
      {
        v24 = *v22++;
        v18 = fmaxf(v18, *(v24 + 8));
      }
    }

    *(24 * v9 + 0x10) = v18;
    v8 = v16 + 24;
    v19 = *(v2 + 8) - *v2;
    v20 = v16 - v19;
    memcpy((v16 - v19), *v2, v19);
    v21 = *v2;
    *v2 = v20;
    *(v2 + 8) = v8;
    *(v2 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = v6;
    *(v4 + 8) = v3;
    v7 = 10.0;
    if (!*(v6 + 64))
    {
      v13 = *(v6 + 40);
      v14 = *(v6 + 48);
      v7 = 0.0;
      while (v13 != v14)
      {
        v15 = *v13++;
        v7 = fmaxf(v7, *(v15 + 8));
      }
    }

    *(v4 + 16) = v7;
    v8 = v4 + 24;
  }

  *(v2 + 8) = v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0>,void ()(md::JunctionSearchResult const&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A088B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0,std::allocator<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  if (**(a1 + 24) >= *a4)
  {
    v4 = *a2;
    v5 = sqrt((*(*a2 + 16) - **(a1 + 8)) * (*(*a2 + 16) - **(a1 + 8)) + (*(*a2 + 24) - *(*(a1 + 8) + 8)) * (*(*a2 + 24) - *(*(a1 + 8) + 8))) / **(a1 + 16);
    v6 = **(a1 + 32) + 24 * *a4;
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(v13);
      }

      v14 = 24 * v10;
      *v14 = v4;
      *(v14 + 8) = v5;
      *(v14 + 16) = 0;
      v9 = 24 * v10 + 24;
      v15 = *(v6 + 8) - *v6;
      v16 = v14 - v15;
      memcpy((v14 - v15), *v6, v15);
      v17 = *v6;
      *v6 = v16;
      *(v6 + 8) = v9;
      *(v6 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v4;
      *(v8 + 8) = v5;
      v9 = v8 + 24;
      *(v8 + 16) = 0;
    }

    *(v6 + 8) = v9;
  }

  return 1;
}

__n128 std::__function::__func<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0,std::allocator<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08948;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(uint64_t a1, float *a2, uint64_t a3, char a4, __n128 a5)
{
  while (2)
  {
    v144 = (a2 - 8);
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 5;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:
                v72 = *(v9 + 56);
                v73 = *(a2 - 2);
                if (v72 >= *(v9 + 24))
                {
                  if (v73 >= v72)
                  {
                    return;
                  }

                  v70 = (v9 + 32);
                  v71 = (a2 - 8);
                  goto LABEL_207;
                }

                if (v73 < v72)
                {
                  goto LABEL_126;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, (v9 + 32));
                if (*(a2 - 2) >= *(v9 + 56))
                {
                  return;
                }

                v74 = (v9 + 32);
LABEL_127:
                v75 = (a2 - 8);
LABEL_128:

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v74, v75);
                return;
              case 4uLL:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(v9, v9 + 32, v9 + 64, v144);
                return;
              case 5uLL:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(v9, v9 + 32, v9 + 64, v9 + 96);
                if (*(a2 - 2) >= *(v9 + 120))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v9 + 96), v144);
                if (*(v9 + 120) >= *(v9 + 88))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v9 + 64), (v9 + 96));
                if (*(v9 + 88) >= *(v9 + 56))
                {
                  return;
                }

                v70 = (v9 + 32);
                v71 = (v9 + 64);
LABEL_207:
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v70, v71);
                if (*(v9 + 56) >= *(v9 + 24))
                {
                  return;
                }

                v75 = (v9 + 32);
                v74 = v9;
                goto LABEL_128;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*(a2 - 2) >= *(v9 + 24))
              {
                return;
              }

LABEL_126:
              v74 = v9;
              goto LABEL_127;
            }
          }

          if (v10 <= 23)
          {
            v76 = (v9 + 32);
            v78 = v9 == a2 || v76 == a2;
            if (a4)
            {
              if (!v78)
              {
                v79 = 0;
                v80 = v9;
                do
                {
                  v81 = v76;
                  if (*(v80 + 56) < *(v80 + 24))
                  {
                    v82 = *v76;
                    *v76 = 0;
                    *(v76 + 1) = 0;
                    v83 = *(v80 + 48);
                    v84 = v79;
                    a5.n128_u64[0] = *(v80 + 56);
                    v145 = v82;
                    v150 = a5;
                    while (1)
                    {
                      v85 = v9 + v84;
                      v86 = *(v9 + v84);
                      *v85 = 0;
                      *(v85 + 8) = 0;
                      v87 = *(v9 + v84 + 40);
                      *(v85 + 32) = v86;
                      if (v87)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v87);
                      }

                      *(v85 + 48) = *(v85 + 16);
                      if (!v84)
                      {
                        break;
                      }

                      v88 = v9 + v84;
                      v89 = *(v9 + v84 - 8);
                      v84 -= 32;
                      if (v150.n128_f32[0] >= v89)
                      {
                        v90 = v9 + v84 + 32;
                        v91 = (v88 + 16);
                        goto LABEL_151;
                      }
                    }

                    v91 = (v9 + 16);
                    v90 = v9;
LABEL_151:
                    v92 = *(v90 + 8);
                    *v90 = v145;
                    if (v92)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v92);
                    }

                    *v91 = v83;
                    a5.n128_u64[1] = v150.n128_u64[1];
                    *(v90 + 24) = v150.n128_u64[0];
                  }

                  v76 = v81 + 8;
                  v79 += 32;
                  v80 = v81;
                }

                while (v81 + 8 != a2);
              }
            }

            else if (!v78)
            {
              do
              {
                v136 = v76;
                if (*(a1 + 56) < *(a1 + 24))
                {
                  v137 = *v76;
                  *v76 = 0;
                  *(v76 + 1) = 0;
                  v138 = *(a1 + 48);
                  v139 = v76;
                  a5.n128_u64[0] = *(a1 + 56);
                  v146 = v137;
                  v153 = a5;
                  do
                  {
                    v140 = *(v139 - 2);
                    *(v139 - 4) = 0;
                    *(v139 - 3) = 0;
                    v141 = *(v139 + 1);
                    *v139 = v140;
                    if (v141)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v141);
                    }

                    *(v139 + 1) = *(v139 - 1);
                    v142 = *(v139 - 10);
                    v139 -= 8;
                  }

                  while (v153.n128_f32[0] < v142);
                  v143 = *(v139 + 1);
                  *v139 = v146;
                  if (v143)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v143);
                  }

                  *(v139 + 2) = v138;
                  a5.n128_u64[1] = v153.n128_u64[1];
                  *(v139 + 3) = v153.n128_u64[0];
                }

                v76 = (v136 + 32);
                a1 = v136;
              }

              while ((v136 + 32) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v93 = v11 >> 1;
              v94 = v11 >> 1;
              do
              {
                v95 = v94;
                if (v93 >= v94)
                {
                  v96 = (2 * v94) | 1;
                  v97 = a1 + 32 * v96;
                  if (2 * v95 + 2 < v10 && *(v97 + 24) < *(v97 + 56))
                  {
                    v97 += 32;
                    v96 = 2 * v95 + 2;
                  }

                  v98 = a1 + 32 * v95;
                  v99 = *(v98 + 24);
                  if (*(v97 + 24) >= v99)
                  {
                    v151 = *v98;
                    *v98 = 0;
                    *(v98 + 8) = 0;
                    v100 = *(v98 + 16);
                    v101 = *(v98 + 28);
                    do
                    {
                      v102 = v98;
                      v98 = v97;
                      v103 = *v97;
                      *v97 = 0;
                      *(v97 + 8) = 0;
                      v104 = *(v102 + 8);
                      *v102 = v103;
                      if (v104)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                      }

                      *(v102 + 16) = *(v98 + 16);
                      if (v93 < v96)
                      {
                        break;
                      }

                      v105 = 2 * v96;
                      v96 = (2 * v96) | 1;
                      v97 = a1 + 32 * v96;
                      v106 = v105 + 2;
                      if (v106 < v10 && *(v97 + 24) < *(v97 + 56))
                      {
                        v97 += 32;
                        v96 = v106;
                      }
                    }

                    while (*(v97 + 24) >= v99);
                    v107 = *(v98 + 8);
                    *v98 = v151;
                    if (v107)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v107);
                    }

                    *(v98 + 16) = v100;
                    *(v98 + 24) = v99;
                    *(v98 + 28) = v101;
                  }
                }

                v94 = v95 - 1;
              }

              while (v95);
              do
              {
                v108 = 0;
                v109 = a2;
                v111 = *a1;
                v110 = *(a1 + 8);
                *a1 = 0;
                *(a1 + 8) = 0;
                v155 = *(a1 + 16);
                v112 = a1;
                do
                {
                  v113 = v112 + 32 * v108;
                  v114 = v113 + 32;
                  if (2 * v108 + 2 >= v10)
                  {
                    v108 = (2 * v108) | 1;
                  }

                  else
                  {
                    v115 = *(v113 + 56);
                    v116 = *(v113 + 88);
                    v117 = v113 + 64;
                    if (v115 >= v116)
                    {
                      v108 = (2 * v108) | 1;
                    }

                    else
                    {
                      v114 = v117;
                      v108 = 2 * v108 + 2;
                    }
                  }

                  v118 = *v114;
                  *v114 = 0;
                  *(v114 + 8) = 0;
                  v119 = *(v112 + 8);
                  *v112 = v118;
                  if (v119)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v119);
                  }

                  *(v112 + 16) = *(v114 + 16);
                  v112 = v114;
                }

                while (v108 <= ((v10 - 2) >> 1));
                a2 -= 8;
                if (v114 == v109 - 8)
                {
                  v135 = *(v114 + 8);
                  *v114 = v111;
                  *(v114 + 8) = v110;
                  if (v135)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v135);
                  }

                  *(v114 + 16) = v155;
                }

                else
                {
                  v120 = *(v109 - 2);
                  *a2 = 0;
                  *(v109 - 3) = 0;
                  v121 = *(v114 + 8);
                  *v114 = v120;
                  if (v121)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v121);
                  }

                  *(v114 + 16) = *(v109 - 1);
                  v122 = *(v109 - 3);
                  *(v109 - 4) = v111;
                  *(v109 - 3) = v110;
                  if (v122)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v122);
                  }

                  *(v109 - 1) = v155;
                  v123 = (v114 + 32 - a1) >> 5;
                  v124 = v123 < 2;
                  v125 = v123 - 2;
                  if (!v124)
                  {
                    v126 = v125 >> 1;
                    v127 = a1 + 32 * (v125 >> 1);
                    v128 = *(v114 + 24);
                    if (*(v127 + 24) < v128)
                    {
                      v152 = *v114;
                      *v114 = 0;
                      *(v114 + 8) = 0;
                      v129 = *(v114 + 16);
                      v130 = *(v114 + 28);
                      do
                      {
                        v131 = v127;
                        v132 = *v127;
                        *v127 = 0;
                        *(v127 + 8) = 0;
                        v133 = *(v114 + 8);
                        *v114 = v132;
                        if (v133)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v133);
                        }

                        *(v114 + 16) = *(v131 + 16);
                        if (!v126)
                        {
                          break;
                        }

                        v126 = (v126 - 1) >> 1;
                        v127 = a1 + 32 * v126;
                        v114 = v131;
                      }

                      while (*(v127 + 24) < v128);
                      v134 = *(v131 + 8);
                      *v131 = v152;
                      if (v134)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v134);
                      }

                      *(v131 + 16) = v129;
                      *(v131 + 24) = v128;
                      *(v131 + 28) = v130;
                    }
                  }
                }

                v124 = v10-- <= 2;
              }

              while (!v124);
            }

            return;
          }

          v12 = v9 + 32 * (v10 >> 1);
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *(v12 + 24);
            if (v14 >= *(a1 + 24))
            {
              if (v13 >= v14 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((a1 + 32 * (v10 >> 1)), v144), *(v12 + 24) >= *(a1 + 24)))
              {
LABEL_26:
                v20 = *(v12 - 8);
                v21 = *(a2 - 10);
                if (v20 >= *(a1 + 56))
                {
                  if (v21 >= v20 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v12 - 32), a2 - 4), *(v12 - 8) >= *(a1 + 56)))
                  {
LABEL_39:
                    v24 = *(v12 + 56);
                    v25 = *(a2 - 18);
                    if (v24 >= *(a1 + 88))
                    {
                      if (v25 >= v24 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v12 + 32), a2 - 6), *(v12 + 56) >= *(a1 + 88)))
                      {
LABEL_48:
                        v28 = *(v12 + 24);
                        v29 = *(v12 + 56);
                        if (v28 >= *(v12 - 8))
                        {
                          if (v29 >= v28)
                          {
                            goto LABEL_57;
                          }

                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v12, (v12 + 32));
                          if (*(v12 + 24) >= *(v12 - 8))
                          {
                            goto LABEL_57;
                          }

                          v30 = (v12 - 32);
                          v31 = v12;
                        }

                        else
                        {
                          v30 = (v12 - 32);
                          if (v29 >= v28)
                          {
                            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v30, v12);
                            if (*(v12 + 56) >= *(v12 + 24))
                            {
LABEL_57:
                              v33 = *a1;
                              v32 = *(a1 + 16);
                              *a1 = 0;
                              *(a1 + 8) = 0;
                              v154 = v32;
                              v34 = *v12;
                              *v12 = 0;
                              *(v12 + 8) = 0;
                              v35 = *(a1 + 8);
                              *a1 = v34;
                              if (v35)
                              {
                                v147 = v33;
                                std::__shared_weak_count::__release_shared[abi:nn200100](v35);
                                v33 = v147;
                              }

                              *(a1 + 16) = *(v12 + 16);
                              v36 = *(v12 + 8);
                              *v12 = v33;
                              if (v36)
                              {
                                std::__shared_weak_count::__release_shared[abi:nn200100](v36);
                              }

                              *(v12 + 16) = v154;
                              goto LABEL_62;
                            }

                            v30 = v12;
                          }

                          v31 = (v12 + 32);
                        }

                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v30, v31);
                        goto LABEL_57;
                      }

                      v26 = (a1 + 64);
                      v27 = (v12 + 32);
                    }

                    else
                    {
                      v26 = (a1 + 64);
                      if (v25 >= v24)
                      {
                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v26, (v12 + 32));
                        if (*(a2 - 18) >= *(v12 + 56))
                        {
                          goto LABEL_48;
                        }

                        v26 = (v12 + 32);
                      }

                      v27 = (a2 - 24);
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v26, v27);
                    goto LABEL_48;
                  }

                  v22 = (a1 + 32);
                  v23 = (v12 - 32);
                }

                else
                {
                  v22 = (a1 + 32);
                  if (v21 >= v20)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v22, (v12 - 32));
                    if (*(a2 - 10) >= *(v12 - 8))
                    {
                      goto LABEL_39;
                    }

                    v22 = (v12 - 32);
                  }

                  v23 = (a2 - 16);
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v22, v23);
                goto LABEL_39;
              }

              v15 = a1;
              v16 = (a1 + 32 * (v10 >> 1));
            }

            else
            {
              v15 = a1;
              if (v13 >= v14)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, (a1 + 32 * (v10 >> 1)));
                if (*(a2 - 2) >= *(v12 + 24))
                {
                  goto LABEL_26;
                }

                v15 = (a1 + 32 * (v10 >> 1));
              }

              v16 = (a2 - 8);
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v15, v16);
            goto LABEL_26;
          }

          v17 = *(a1 + 24);
          if (v17 < *(v12 + 24))
          {
            v18 = (a1 + 32 * (v10 >> 1));
            if (v13 >= v17)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v18, a1);
              if (*(a2 - 2) >= *(a1 + 24))
              {
                goto LABEL_62;
              }

              v18 = a1;
            }

            v19 = (a2 - 8);
            goto LABEL_34;
          }

          if (v13 < v17)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v144);
            if (*(a1 + 24) < *(v12 + 24))
            {
              v18 = (a1 + 32 * (v10 >> 1));
              v19 = a1;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v18, v19);
            }
          }

LABEL_62:
          --a3;
          if (a4)
          {
            break;
          }

          v37 = *(a1 + 24);
          if (*(a1 - 8) < v37)
          {
            goto LABEL_65;
          }

          v149 = *a1;
          *a1 = 0;
          *(a1 + 8) = 0;
          if (v37 >= *(a2 - 2))
          {
            v57 = a1 + 32;
            do
            {
              v9 = v57;
              if (v57 >= a2)
              {
                break;
              }

              v58 = *(v57 + 24);
              v57 += 32;
            }

            while (v37 >= v58);
          }

          else
          {
            v55 = a1;
            do
            {
              v9 = v55 + 32;
              v56 = *(v55 + 56);
              v55 += 32;
            }

            while (v37 >= v56);
          }

          v59 = a2;
          if (v9 < a2)
          {
            v60 = a2;
            do
            {
              v59 = (v60 - 8);
              v61 = *(v60 - 2);
              v60 -= 8;
            }

            while (v37 < v61);
          }

          v62 = *(a1 + 16);
          v63 = *(a1 + 28);
          while (v9 < v59)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, v59);
            do
            {
              v64 = *(v9 + 56);
              v9 += 32;
            }

            while (v37 >= v64);
            do
            {
              v65 = *(v59 - 2);
              v59 -= 2;
            }

            while (v37 < v65);
          }

          v66 = (v9 - 32);
          if (v9 - 32 != a1)
          {
            v67 = *v66;
            *v66 = 0;
            *(v9 - 24) = 0;
            v68 = *(a1 + 8);
            *a1 = v67;
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v68);
            }

            *(a1 + 16) = *(v9 - 16);
          }

          v69 = *(v9 - 24);
          a5.n128_u64[1] = *(&v149 + 1);
          *(v9 - 32) = v149;
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v69);
          }

          a4 = 0;
          *(v9 - 16) = v62;
          *(v9 - 8) = v37;
          *(v9 - 4) = v63;
        }

        v37 = *(a1 + 24);
LABEL_65:
        v148 = *a1;
        *a1 = 0;
        *(a1 + 8) = 0;
        v38 = *(a1 + 16);
        v39 = a1;
        v40 = *(a1 + 28);
        do
        {
          v41 = v39;
          v39 += 32;
        }

        while (*(v41 + 56) < v37);
        v42 = a2;
        if (v41 == a1)
        {
          v45 = a2;
          while (v39 < v45)
          {
            v43 = (v45 - 8);
            v46 = *(v45 - 2);
            v45 -= 8;
            if (v46 < v37)
            {
              goto LABEL_75;
            }
          }

          v43 = v45;
        }

        else
        {
          do
          {
            v43 = (v42 - 8);
            v44 = *(v42 - 2);
            v42 -= 8;
          }

          while (v44 >= v37);
        }

LABEL_75:
        if (v39 >= v43)
        {
          v9 = v39;
        }

        else
        {
          v47 = v43;
          v9 = v39;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, v47);
            do
            {
              v48 = *(v9 + 56);
              v9 += 32;
            }

            while (v48 < v37);
            do
            {
              v49 = *(v47 - 2);
              v47 -= 2;
            }

            while (v49 >= v37);
          }

          while (v9 < v47);
        }

        v50 = (v9 - 32);
        if (v9 - 32 != a1)
        {
          v51 = *v50;
          *v50 = 0;
          *(v9 - 24) = 0;
          v52 = *(a1 + 8);
          *a1 = v51;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v52);
          }

          *(a1 + 16) = *(v9 - 16);
        }

        v53 = *(v9 - 24);
        *(v9 - 32) = v148;
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v53);
        }

        *(v9 - 16) = v38;
        *(v9 - 8) = v37;
        *(v9 - 4) = v40;
        if (v39 >= v43)
        {
          break;
        }

LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(a1, v9 - 32, a3, a4 & 1);
        a4 = 0;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(a1, v9 - 32);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(v9, a2))
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_92;
      }
    }

    a2 = (v9 - 32);
    if (!v54)
    {
      continue;
    }

    break;
  }
}

void std::vector<md::RoadSearchResult>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v4 = a1[1];
  *a1 = 0;
  *(a1 + 1) = 0;
  v11 = v4;
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = *(a1 + 1);
  *a1 = v6;
  if (v7)
  {
    v10 = v5;
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v5 = v10;
  }

  a1[1] = a2[1];
  v8 = *(a2 + 1);
  *a2 = v5;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  result = v11;
  a2[1] = v11;
  return result;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (v8 >= *(a1 + 24))
  {
    if (v9 < v8)
    {
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a2, a3);
      if (*(a2 + 24) < *(v7 + 24))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v11);
      goto LABEL_10;
    }

    v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, a2);
    if (*(a3 + 24) < *(a2 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v10.n128_u32[0] = *(a4 + 24);
  if (v10.n128_f32[0] < *(a3 + 24))
  {
    v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a3, a4);
    v10.n128_u32[0] = *(a3 + 24);
    if (v10.n128_f32[0] < *(a2 + 24))
    {
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a2, a3);
      v10.n128_u32[0] = *(a2 + 24);
      if (v10.n128_f32[0] < *(v7 + 24))
      {

        v10.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v7, a2).n128_u64[0];
      }
    }
  }

  return v10.n128_f64[0];
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 56);
        v9 = *(a2 - 8);
        if (v8 < *(a1 + 24))
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, (a1 + 32));
            if (*(a2 - 8) >= *(v3 + 56))
            {
              return 1;
            }

            a1 = v3 + 32;
          }

          v5 = (a2 - 32);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 32);
        v7 = (a2 - 32);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(a1, a1 + 32, a1 + 64, a1 + 96);
        if (*(a2 - 8) >= *(v3 + 120))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v3 + 96), (a2 - 32));
        if (*(v3 + 120) >= *(v3 + 88))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v3 + 64), (v3 + 96));
        if (*(v3 + 88) >= *(v3 + 56))
        {
          return 1;
        }

        v6 = (v3 + 32);
        v7 = (v3 + 64);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v6, v7);
    if (*(v3 + 56) < *(v3 + 24))
    {
      v5 = (v3 + 32);
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
    if (*(a2 - 8) < *(a1 + 24))
    {
      v5 = (a2 - 32);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 64;
  v11 = *(a1 + 56);
  v12 = *(a1 + 88);
  if (v11 < *(a1 + 24))
  {
    if (v12 >= v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, (a1 + 32));
      if (*(v3 + 88) >= *(v3 + 56))
      {
        goto LABEL_36;
      }

      a1 = v3 + 32;
    }

    v13 = (v3 + 64);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((a1 + 32), (a1 + 64));
    if (*(v3 + 56) < *(v3 + 24))
    {
      v13 = (v3 + 32);
      a1 = v3;
LABEL_35:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 96;
  if (v3 + 96 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 24);
    if (v17 < *(v10 + 24))
    {
      v30 = *v14;
      *v14 = 0;
      *(v14 + 8) = 0;
      v18 = *(v14 + 16);
      v19 = v15;
      v20 = *(v14 + 28);
      while (1)
      {
        v21 = v3 + v19;
        v22 = *(v3 + v19 + 64);
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
        v23 = *(v3 + v19 + 104);
        *(v21 + 96) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        *(v21 + 112) = *(v21 + 80);
        if (v19 == -64)
        {
          break;
        }

        v24 = v3 + v19;
        v25 = *(v3 + v19 + 56);
        v19 -= 32;
        if (v17 >= v25)
        {
          v26 = v3 + v19 + 96;
          v27 = (v24 + 80);
          goto LABEL_46;
        }
      }

      v27 = (v3 + 16);
      v26 = v3;
LABEL_46:
      v28 = *(v26 + 8);
      *v26 = v30;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      *v27 = v18;
      *(v26 + 24) = v17;
      *(v26 + 28) = v20;
      if (++v16 == 8)
      {
        return v14 + 32 == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 += 32;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void md::MuninRoadLabeler::synchronizedUpdate(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  md::LayoutContext::get<md::CameraContext>(v3);
  v4 = gdc::Context::context<md::MuninSceneContext>(v3);
  v5 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(a1 + 8) + 336) + 200));
  v6 = *(*(*(*(a1 + 8) + 336) + 200) + 32);
  v43 = a1;
  if (!v6)
  {
    operator new();
  }

  *(a1 + 48) = *v5;
  if (*(a1 + 289))
  {
    *(a1 + 289) = 0;
    *(a1 + 74) = 257;
    v7 = 1;
    *(a1 + 77) = 1;
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 75);
    v7 = *(a1 + 74);
  }

  v10 = (a1 + 152);
  v9 = *(a1 + 152);
  v11 = *v6;
  *(a1 + 75) = v8 | (*(a1 + 44) != *v6);
  *(a1 + 74) = v7 | (v9 == 0);
  *(a1 + 44) = v11;
  v12 = v4[1];
  isFinishedLoadingAllLayers = md::SceneStateManager::isFinishedLoadingAllLayers(v12);
  *(a1 + 79) = isFinishedLoadingAllLayers;
  v14 = isFinishedLoadingAllLayers && (*(a1 + 288) & 1) == 0 && *(a1 + 78) == 0;
  *(a1 + 76) = v14;
  v46 = 0uLL;
  v47 = 0;
  md::SceneContext::renderData(v50, v12, 35);
  *__n = *v50;
  v15 = v51[0];
  for (i = v50[0]; gdc::DataKeyIterator::operator!=(i, v15); i = __n[0])
  {
    v17 = gdc::DataIterator::operator*(i);
    v18 = v17[1];
    *&v49 = *v17;
    *(&v49 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](&v46, &v49);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    gdc::DataIterator::operator++(__n);
  }

  v19 = 126 - 2 * __clz((*(&v46 + 1) - v46) >> 4);
  if (*(&v46 + 1) == v46)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(v46, *(&v46 + 1), v20, 1);
  v21 = *(v43 + 27);
  v22 = *(v43 + 28);
  v23 = v46;
  if (v22 - v21 == *(&v46 + 1) - v46)
  {
    while (v21 != v22)
    {
      if (*v21 != *v23)
      {
        goto LABEL_23;
      }

      v21 += 16;
      v23 += 2;
    }

    v42 = 0;
  }

  else
  {
LABEL_23:
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(v43 + 27);
    *(v43 + 216) = v46;
    *(v43 + 29) = v47;
    v47 = 0;
    v46 = 0uLL;
    v42 = 1;
  }

  *__p = 0uLL;
  md::SceneContext::renderData(v50, v4[1], 39);
  *__n = *v50;
  v24 = v51[0];
  for (j = v50[0]; gdc::DataKeyIterator::operator!=(j, v24); j = __n[0])
  {
    v26 = gdc::DataIterator::operator*(j);
    v44 = *v26;
    v27 = *(v26 + 8);
    if (v27)
    {
      atomic_fetch_add_explicit((*(v26 + 8) + 8), 1uLL, memory_order_relaxed);
    }

    v28 = (__p[1] - __p[0]) >> 4;
    v29 = v28 + 1;
    if ((v28 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v30 = -__p[0];
    if (-__p[0] >> 3 > v29)
    {
      v29 = v30 >> 3;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF0)
    {
      v31 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v31);
    }

    v32 = 16 * v28;
    *(16 * v28) = v44;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = (v32 + 16);
    v34 = (v32 - (__p[1] - __p[0]));
    memcpy(v34, __p[0], __p[1] - __p[0]);
    v35 = __p[0];
    __p[0] = v34;
    if (v35)
    {
      operator delete(v35);
    }

    __p[1] = v33;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    gdc::DataIterator::operator++(__n);
  }

  v36 = 126 - 2 * __clz((__p[1] - __p[0]) >> 4);
  if (__p[1] == __p[0])
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(__p[0], __p[1], v37, 1);
  v38 = *(v43 + 24);
  v39 = *(v43 + 25);
  v40 = (v43 + 192);
  v41 = __p[0];
  if (v39 - v38 == __p[1] - __p[0])
  {
    while (1)
    {
      if (v38 == v39)
      {
        if (*(v43 + 17) && ((v42 & 1) != 0 || !*(v43 + 18)))
        {
          operator new();
        }

        operator new();
      }

      if (*v38 != *v41)
      {
        break;
      }

      v38 += 16;
      v41 += 2;
    }
  }

  md::MuninRoadLabeler::resetCurrentJunctions(v43);
  *v10 = 0;
  v10[1] = 0;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v43 + 30);
  if (*(v43 + 24))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v40);
    operator delete(*v40);
    *v40 = 0;
    *(v43 + 25) = 0;
    *(v43 + 26) = 0;
  }

  *(v43 + 12) = *__p;
  *(v43 + 26) = 0;
  operator new();
}

void sub_1B2E84354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](&a69);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  a52 = a19;
  std::vector<md::MuninRoadEdgePolyline>::__destroy_vector::operator()[abi:nn200100](&a52);
  v70 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v70;
    operator delete(v70);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table(a33 + 384);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a9);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a33 + 304);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a32 + 34));
  v71 = *(a33 + 240);
  if (v71)
  {
    a32[32] = v71;
    operator delete(v71);
  }

  v72 = *a18;
  if (*a18)
  {
    a32[29] = v72;
    operator delete(v72);
  }

  v73 = *(a33 + 192);
  if (v73)
  {
    a32[26] = v73;
    operator delete(v73);
  }

  v74 = *a17;
  if (*a17)
  {
    a32[23] = v74;
    operator delete(v74);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a13);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a14);
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table(a15);
  MEMORY[0x1B8C62190](a32, 0x10F0C40B169F8A8);
  a52 = &a35;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a52);
  a35 = &a39;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a35);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(unint64_t *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 16);
  v9 = a2 - 8;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 4;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v103 = a1[2];
          v104 = *a1;
          v105 = *v8;
          if (v103 >= *a1)
          {
            if (v105 >= v103)
            {
              return;
            }

            a1[2] = v105;
            *v8 = v103;
            v168 = a1[3];
            a1[3] = *v9;
            *v9 = v168;
            v169 = a1[2];
            v170 = *a1;
            if (v169 >= *a1)
            {
              return;
            }

            *a1 = v169;
            a1[2] = v170;
            v106 = (a1 + 1);
            v9 = (a1 + 3);
          }

          else
          {
            if (v105 >= v103)
            {
              v106 = (a1 + 3);
              v183 = a1[3];
              v184 = a1[1];
              *a1 = v103;
              a1[1] = v183;
              a1[2] = v104;
              a1[3] = v184;
              if (*v8 >= v104)
              {
                return;
              }

              a1[2] = *v8;
            }

            else
            {
              v106 = (a1 + 1);
              *a1 = v105;
            }

            *v8 = v104;
          }

          v185 = *v106;
          *v106 = *v9;
          *v9 = v185;
          return;
        case 4:
          v107 = a1[2];
          v108 = *a1;
          v109 = a1[4];
          if (v107 >= *a1)
          {
            if (v109 < v107)
            {
              v171 = (a1 + 3);
              v172 = a1[3];
              v173 = a1[5];
              a1[2] = v109;
              a1[3] = v173;
              a1[4] = v107;
              a1[5] = v172;
              if (v109 < v108)
              {
                *a1 = v109;
                a1[2] = v108;
                v110 = (a1 + 1);
                goto LABEL_225;
              }

LABEL_227:
              if (*v8 < v107)
              {
                a1[4] = *v8;
                *v8 = v107;
                v189 = a1[5];
                a1[5] = *v9;
                *v9 = v189;
                v190 = a1[4];
                v191 = a1[2];
                if (v190 < v191)
                {
                  v192 = a1[3];
                  v193 = a1[5];
                  a1[2] = v190;
                  a1[3] = v193;
                  a1[4] = v191;
                  a1[5] = v192;
                  v194 = *a1;
                  if (v190 < *a1)
                  {
                    v195 = a1[1];
                    *a1 = v190;
                    a1[1] = v193;
                    a1[2] = v194;
                    a1[3] = v195;
                  }
                }
              }

              return;
            }
          }

          else
          {
            if (v109 < v107)
            {
              v110 = (a1 + 1);
              *a1 = v109;
              goto LABEL_224;
            }

            v110 = (a1 + 3);
            v186 = a1[3];
            v187 = a1[1];
            *a1 = v107;
            a1[1] = v186;
            a1[2] = v108;
            a1[3] = v187;
            if (v109 < v108)
            {
              a1[2] = v109;
LABEL_224:
              a1[4] = v108;
              v171 = (a1 + 5);
LABEL_225:
              v188 = *v110;
              *v110 = *v171;
              *v171 = v188;
              v107 = a1[4];
              goto LABEL_227;
            }
          }

          v107 = v109;
          goto LABEL_227;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v101 = *a1;
        if (*v8 < *a1)
        {
          *a1 = *v8;
          *v8 = v101;
          v102 = a1[1];
          a1[1] = *v9;
          *v9 = v102;
        }

        return;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v126 = v12 >> 1;
      v127 = v12 >> 1;
      do
      {
        v128 = v127;
        if (v126 >= v127)
        {
          v129 = (2 * v127) | 1;
          v130 = &a1[2 * v129];
          if (2 * v128 + 2 >= v11)
          {
            v131 = *v130;
          }

          else
          {
            v131 = *v130;
            if (*v130 < v130[2])
            {
              v131 = v130[2];
              v130 += 2;
              v129 = 2 * v128 + 2;
            }
          }

          v132 = &a1[2 * v128];
          v133 = *v132;
          if (v131 >= *v132)
          {
            v134 = v132[1];
            *v132 = 0;
            v132[1] = 0;
            v135 = *v130;
            do
            {
              v136 = v130;
              v137 = v130[1];
              *v136 = 0;
              v136[1] = 0;
              v138 = v132[1];
              *v132 = v135;
              v132[1] = v137;
              if (v138)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v138);
              }

              if (v126 < v129)
              {
                break;
              }

              v130 = &a1[2 * ((2 * v129) | 1)];
              if (2 * v129 + 2 >= v11)
              {
                v135 = *v130;
                v129 = (2 * v129) | 1;
              }

              else
              {
                v135 = *v130;
                if (*v130 >= v130[2])
                {
                  v129 = (2 * v129) | 1;
                }

                else
                {
                  v135 = v130[2];
                  v130 += 2;
                  v129 = 2 * v129 + 2;
                }
              }

              v132 = v136;
            }

            while (v135 >= v133);
            v139 = v136[1];
            *v136 = v133;
            v136[1] = v134;
            if (v139)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v139);
            }
          }
        }

        v127 = v128 - 1;
      }

      while (v128);
      while (2)
      {
        if (v11 >= 2)
        {
          v140 = 0;
          v142 = *a1;
          v141 = a1[1];
          v143 = a1;
          *a1 = 0;
          a1[1] = 0;
          do
          {
            v144 = &v143[2 * v140];
            v145 = v144 + 2;
            if (2 * v140 + 2 >= v11)
            {
              v146 = *v145;
              v140 = (2 * v140) | 1;
            }

            else
            {
              v148 = v144[4];
              v147 = v144 + 4;
              v146 = v148;
              v149 = *(v147 - 2);
              v150 = v149 >= v148;
              if (v149 < v148)
              {
                v145 = v147;
              }

              else
              {
                v146 = *(v147 - 2);
              }

              if (v150)
              {
                v140 = (2 * v140) | 1;
              }

              else
              {
                v140 = 2 * v140 + 2;
              }
            }

            v151 = v145[1];
            *v145 = 0;
            v145[1] = 0;
            v152 = v143[1];
            *v143 = v146;
            v143[1] = v151;
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v152);
            }

            v143 = v145;
          }

          while (v140 <= ((v11 - 2) >> 1));
          if (v145 == (a2 - 16))
          {
            v167 = v145[1];
            *v145 = v142;
            v145[1] = v141;
            if (!v167)
            {
              goto LABEL_199;
            }
          }

          else
          {
            v153 = *(a2 - 1);
            *(a2 - 2) = 0;
            *(a2 - 1) = 0;
            v154 = v145[1];
            *v145 = v153;
            if (v154)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v154);
            }

            v155 = *(a2 - 1);
            *(a2 - 2) = v142;
            *(a2 - 1) = v141;
            if (v155)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v155);
            }

            v156 = ((v145 + 2) - a1) >> 4;
            v157 = v156 < 2;
            v158 = v156 - 2;
            if (v157)
            {
              goto LABEL_199;
            }

            v159 = v158 >> 1;
            v160 = &a1[2 * (v158 >> 1)];
            v161 = *v145;
            if (*v160 >= *v145)
            {
              goto LABEL_199;
            }

            v162 = v145[1];
            *v145 = 0;
            v145[1] = 0;
            v163 = *v160;
            do
            {
              v164 = v160;
              v165 = v160[1];
              *v164 = 0;
              v164[1] = 0;
              v166 = v145[1];
              *v145 = v163;
              v145[1] = v165;
              if (v166)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v166);
              }

              if (!v159)
              {
                break;
              }

              v159 = (v159 - 1) >> 1;
              v160 = &a1[2 * v159];
              v163 = *v160;
              v145 = v164;
            }

            while (*v160 < v161);
            v167 = v164[1];
            *v164 = v161;
            v164[1] = v162;
            if (!v167)
            {
              goto LABEL_199;
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v167);
        }

LABEL_199:
        a2 -= 16;
        v157 = v11-- > 2;
        if (!v157)
        {
          return;
        }

        continue;
      }
    }

    v13 = &a1[2 * (v11 >> 1)];
    v14 = v13;
    v15 = *v8;
    if (v11 >= 0x81)
    {
      v16 = *v13;
      v17 = *a1;
      if (*v13 >= *a1)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *v8 = v16;
          v22 = (v13 + 1);
          v23 = v13[1];
          v13[1] = *v9;
          *v9 = v23;
          v24 = *a1;
          if (*v13 < *a1)
          {
            *a1 = *v13;
            v18 = (a1 + 1);
            *v13 = v24;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v18 = (a1 + 1);
          *a1 = v15;
          goto LABEL_26;
        }

        v18 = (v13 + 1);
        v28 = v13[1];
        v29 = a1[1];
        *a1 = v16;
        a1[1] = v28;
        *v13 = v17;
        v13[1] = v29;
        if (*v8 < v17)
        {
          *v13 = *v8;
LABEL_26:
          *v8 = v17;
          v22 = a2 - 8;
LABEL_27:
          v30 = *v18;
          *v18 = *v22;
          *v22 = v30;
        }
      }

      v31 = v13 - 2;
      v32 = *(v13 - 2);
      v33 = a1[2];
      v34 = *(a2 - 4);
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          *v31 = v34;
          *(a2 - 4) = v32;
          v37 = (v13 - 1);
          v36 = *(v13 - 1);
          *(v13 - 1) = *(a2 - 3);
          *(a2 - 3) = v36;
          v38 = a1[2];
          if (*v31 < v38)
          {
            a1[2] = *v31;
            *v31 = v38;
            v35 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v34 < v32)
        {
          v35 = a1 + 3;
          a1[2] = v34;
          goto LABEL_39;
        }

        v35 = v13 - 1;
        v41 = *(v13 - 1);
        v42 = a1[3];
        a1[2] = v32;
        a1[3] = v41;
        *v31 = v33;
        *(v13 - 1) = v42;
        v43 = *(a2 - 4);
        if (v43 < v33)
        {
          *v31 = v43;
LABEL_39:
          *(a2 - 4) = v33;
          v37 = a2 - 24;
LABEL_40:
          v44 = *v35;
          *v35 = *v37;
          *v37 = v44;
        }
      }

      v47 = v13[2];
      v45 = v13 + 2;
      v46 = v47;
      v48 = a1[4];
      v49 = *(a2 - 6);
      if (v47 >= v48)
      {
        if (v49 < v46)
        {
          *v45 = v49;
          *(a2 - 6) = v46;
          v52 = (v45 + 1);
          v51 = v45[1];
          v45[1] = *(a2 - 5);
          *(a2 - 5) = v51;
          v46 = *v45;
          v53 = a1[4];
          if (*v45 < v53)
          {
            a1[4] = v46;
            *v45 = v53;
            v50 = (a1 + 5);
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v50 = (a1 + 5);
          a1[4] = v49;
          goto LABEL_49;
        }

        v50 = (v45 + 1);
        v54 = v45[1];
        v55 = a1[5];
        a1[4] = v46;
        a1[5] = v54;
        *v45 = v48;
        v45[1] = v55;
        v56 = *(a2 - 6);
        if (v56 >= v48)
        {
          v46 = v48;
        }

        else
        {
          *v45 = v56;
LABEL_49:
          *(a2 - 6) = v48;
          v52 = a2 - 40;
LABEL_50:
          v57 = *v50;
          *v50 = *v52;
          *v52 = v57;
          v46 = *v45;
        }
      }

      v58 = *v14;
      v59 = *v31;
      if (*v14 >= *v31)
      {
        if (v46 < v58)
        {
          v62 = (v14 + 1);
          v63 = v14[1];
          *v14 = v46;
          v14[1] = v45[1];
          *v45 = v58;
          v45[1] = v63;
          if (v46 < v59)
          {
            *v31 = v46;
            v60 = (v31 + 1);
            *v14 = v59;
            goto LABEL_60;
          }

          v58 = v46;
        }
      }

      else
      {
        if (v46 < v58)
        {
          *v31 = v46;
          v60 = (v31 + 1);
          *v45 = v59;
          v61 = (v45 + 1);
          goto LABEL_59;
        }

        v64 = v14[1];
        *v14 = v59;
        v65 = v31[1];
        *v31 = v58;
        v31[1] = v64;
        v14[1] = v65;
        if (v46 >= v59)
        {
          v58 = v59;
        }

        else
        {
          *v14 = v46;
          *v45 = v59;
          v61 = (v45 + 1);
          v60 = (v14 + 1);
LABEL_59:
          v62 = v61;
LABEL_60:
          v66 = *v60;
          *v60 = *v62;
          *v62 = v66;
          v58 = *v14;
        }
      }

      v67 = *a1;
      *a1 = v58;
      v21 = (a1 + 1);
      *v14 = v67;
      v27 = (v14 + 1);
      goto LABEL_62;
    }

    v19 = *a1;
    v20 = *v13;
    if (*a1 >= *v13)
    {
      if (v15 >= v19)
      {
        goto LABEL_63;
      }

      *a1 = v15;
      *v8 = v19;
      v25 = a1[1];
      a1[1] = *v9;
      *v9 = v25;
      v26 = *v14;
      if (*a1 >= *v14)
      {
        goto LABEL_63;
      }

      *v14 = *a1;
      *a1 = v26;
      v21 = (v14 + 1);
      v27 = (a1 + 1);
    }

    else
    {
      if (v15 >= v19)
      {
        v21 = (a1 + 1);
        v39 = a1[1];
        v40 = v14[1];
        *v14 = v19;
        v14[1] = v39;
        *a1 = v20;
        a1[1] = v40;
        if (*v8 >= v20)
        {
          goto LABEL_63;
        }

        *a1 = *v8;
      }

      else
      {
        v21 = (v13 + 1);
        *v14 = v15;
      }

      *v8 = v20;
      v27 = a2 - 8;
    }

LABEL_62:
    v68 = *v21;
    *v21 = *v27;
    *v27 = v68;
LABEL_63:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 2) < *a1)
    {
      v69 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v70 = a1;
      do
      {
        v71 = v70;
        v73 = v70[2];
        v70 += 2;
        v72 = v73;
      }

      while (v73 < v69);
      v74 = a2;
      if (v71 == a1)
      {
        v74 = a2;
        do
        {
          if (v70 >= v74)
          {
            break;
          }

          v76 = *(v74 - 2);
          v74 -= 16;
        }

        while (v76 >= v69);
      }

      else
      {
        do
        {
          v75 = *(v74 - 2);
          v74 -= 16;
        }

        while (v75 >= v69);
      }

      if (v70 >= v74)
      {
        v10 = v70;
      }

      else
      {
        v77 = *v74;
        v10 = v70;
        v78 = v74;
        do
        {
          *v10 = v77;
          *v78 = v72;
          v79 = v10[1];
          v10[1] = v78[1];
          v78[1] = v79;
          do
          {
            v80 = v10[2];
            v10 += 2;
            v72 = v80;
          }

          while (v80 < v69);
          do
          {
            v81 = *(v78 - 2);
            v78 -= 2;
            v77 = v81;
          }

          while (v81 >= v69);
        }

        while (v10 < v78);
      }

      v82 = v10 - 2;
      if (v10 - 2 != a1)
      {
        v83 = *v82;
        *v82 = 0;
        *(v10 - 1) = 0;
        v84 = a1[1];
        *a1 = v83;
        if (v84)
        {
          v196 = v69;
          std::__shared_weak_count::__release_shared[abi:nn200100](v84);
          v69 = v196;
        }
      }

      v85 = *(v10 - 1);
      *(v10 - 1) = v69;
      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85);
      }

      if (v70 < v74)
      {
        goto LABEL_89;
      }

      v86 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(a1, v10 - 16);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(v10, a2))
      {
        a2 = (v10 - 2);
        if (v86)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v86)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(a1, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v87 = *a1;
      *a1 = 0;
      a1[1] = 0;
      if (v87 >= *v8)
      {
        v89 = a1 + 2;
        do
        {
          v10 = v89;
          if (v89 >= a2)
          {
            break;
          }

          v89 += 2;
        }

        while (v87 >= *v10);
      }

      else
      {
        v10 = a1;
        do
        {
          v88 = v10[2];
          v10 += 2;
        }

        while (v87 >= v88);
      }

      v90 = a2;
      if (v10 < a2)
      {
        v90 = a2;
        do
        {
          v91 = *(v90 - 2);
          v90 -= 2;
        }

        while (v87 < v91);
      }

      if (v10 < v90)
      {
        v92 = *v10;
        v93 = *v90;
        do
        {
          *v10 = v93;
          *v90 = v92;
          v94 = v10[1];
          v10[1] = v90[1];
          v90[1] = v94;
          do
          {
            v95 = v10[2];
            v10 += 2;
            v92 = v95;
          }

          while (v87 >= v95);
          do
          {
            v96 = *(v90 - 2);
            v90 -= 2;
            v93 = v96;
          }

          while (v87 < v96);
        }

        while (v10 < v90);
      }

      v97 = v10 - 2;
      if (v10 - 2 != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v10 - 1) = 0;
        v99 = a1[1];
        *a1 = v98;
        if (v99)
        {
          v197 = v87;
          std::__shared_weak_count::__release_shared[abi:nn200100](v99);
          v87 = v197;
        }
      }

      a4 = 0;
      v100 = *(v10 - 1);
      *(v10 - 1) = v87;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
        a4 = 0;
      }
    }
  }

  v111 = (a1 + 2);
  v113 = a1 == a2 || v111 == a2;
  if (a4)
  {
    if (!v113)
    {
      v114 = 0;
      v115 = a1;
      do
      {
        v116 = v115;
        v115 = v111;
        v117 = v116[2];
        v118 = *v116;
        if (v117 < *v116)
        {
          v119 = v116[3];
          v120 = v114;
          *v115 = 0;
          v115[1] = 0;
          while (1)
          {
            v121 = (a1 + v120);
            v122 = *(a1 + v120 + 8);
            *v121 = 0;
            v121[1] = 0;
            v123 = *(a1 + v120 + 24);
            v121[2] = v118;
            v121[3] = v122;
            if (v123)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v123);
            }

            if (!v120)
            {
              break;
            }

            v118 = *(a1 + v120 - 16);
            v120 -= 16;
            if (v117 >= v118)
            {
              v124 = (a1 + v120 + 16);
              goto LABEL_144;
            }
          }

          v124 = a1;
LABEL_144:
          v125 = v124[1];
          *v124 = v117;
          v124[1] = v119;
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v125);
          }
        }

        v111 = (v115 + 2);
        v114 += 16;
      }

      while (v115 + 2 != a2);
    }
  }

  else if (!v113)
  {
    v174 = (a1 + 3);
    do
    {
      v175 = a1;
      a1 = v111;
      v176 = v175[2];
      v177 = *v175;
      if (v176 < *v175)
      {
        v178 = v175[3];
        v179 = v174;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v180 = *(v179 - 2);
          *(v179 - 3) = 0;
          *(v179 - 2) = 0;
          v181 = *v179;
          *(v179 - 1) = v177;
          *v179 = v180;
          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v181);
          }

          v177 = *(v179 - 5);
          v179 -= 2;
        }

        while (v176 < v177);
        v182 = *v179;
        *(v179 - 1) = v176;
        *v179 = v178;
        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v182);
        }
      }

      v111 = (a1 + 2);
      v174 += 2;
    }

    while (a1 + 2 != a2);
  }
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(uint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = a1[2];
      v9 = *a1;
      v10 = *(a2 - 2);
      if (v8 >= *a1)
      {
        if (v10 >= v8)
        {
          return 1;
        }

        a1[2] = v10;
        *(a2 - 2) = v8;
        v22 = (a1 + 3);
        v21 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v21;
        v23 = a1[2];
        v24 = *a1;
        if (v23 >= *a1)
        {
          return 1;
        }

        *a1 = v23;
        a1[2] = v24;
        v11 = (a1 + 1);
      }

      else
      {
        if (v10 >= v8)
        {
          v11 = (a1 + 3);
          v31 = a1[3];
          v32 = a1[1];
          *a1 = v8;
          a1[1] = v31;
          a1[2] = v9;
          a1[3] = v32;
          v33 = *(a2 - 2);
          if (v33 >= v9)
          {
            return 1;
          }

          a1[2] = v33;
        }

        else
        {
          v11 = (a1 + 1);
          *a1 = v10;
        }

        *(a2 - 2) = v9;
        v22 = a2 - 8;
      }

      v34 = *v11;
      *v11 = *v22;
      *v22 = v34;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v17 = a1[2];
    v18 = *a1;
    v19 = a1[4];
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v29 = (a1 + 3);
        v28 = a1[3];
        v30 = a1[5];
        a1[2] = v19;
        a1[3] = v30;
        a1[4] = v17;
        a1[5] = v28;
        if (v19 >= v18)
        {
LABEL_55:
          v19 = v17;
          goto LABEL_56;
        }

        *a1 = v19;
        a1[2] = v18;
        v20 = (a1 + 1);
LABEL_54:
        v52 = *v20;
        *v20 = *v29;
        *v29 = v52;
        goto LABEL_55;
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = (a1 + 1);
        *a1 = v19;
LABEL_53:
        a1[4] = v18;
        v29 = (a1 + 5);
        v17 = v18;
        goto LABEL_54;
      }

      v20 = (a1 + 3);
      v50 = a1[3];
      v51 = a1[1];
      *a1 = v17;
      a1[1] = v50;
      a1[2] = v18;
      a1[3] = v51;
      if (v19 < v18)
      {
        a1[2] = v19;
        goto LABEL_53;
      }
    }

LABEL_56:
    v53 = *(a2 - 2);
    if (v53 < v19)
    {
      a1[4] = v53;
      *(a2 - 2) = v19;
      v54 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v54;
      v55 = a1[4];
      v56 = a1[2];
      if (v55 < v56)
      {
        v57 = a1[3];
        v58 = a1[5];
        a1[2] = v55;
        a1[3] = v58;
        a1[4] = v56;
        a1[5] = v57;
        v59 = *a1;
        if (v55 < *a1)
        {
          v60 = a1[1];
          *a1 = v55;
          a1[1] = v58;
          a1[2] = v59;
          a1[3] = v60;
        }
      }
    }

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
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 4);
  v13 = a1[4];
  v14 = a1[2];
  v15 = *a1;
  if (v14 < *a1)
  {
    if (v13 >= v14)
    {
      v16 = (a1 + 3);
      v35 = a1[3];
      v36 = a1[1];
      *a1 = v14;
      a1[1] = v35;
      a1[2] = v15;
      a1[3] = v36;
      if (v13 >= v15)
      {
        goto LABEL_36;
      }

      a1[2] = v13;
    }

    else
    {
      v16 = (a1 + 1);
      *a1 = v13;
    }

    a1[4] = v15;
    v26 = (a1 + 5);
    goto LABEL_35;
  }

  if (v13 < v14)
  {
    v26 = (a1 + 3);
    v25 = a1[3];
    v27 = a1[5];
    a1[2] = v13;
    a1[3] = v27;
    a1[4] = v14;
    a1[5] = v25;
    if (v13 < v15)
    {
      *a1 = v13;
      a1[2] = v15;
      v16 = (a1 + 1);
LABEL_35:
      v37 = *v16;
      *v16 = *v26;
      *v26 = v37;
    }
  }

LABEL_36:
  v38 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = *v38;
    v42 = *v12;
    if (*v38 < v42)
    {
      v43 = *(v38 + 1);
      v44 = v39;
      *v38 = 0;
      *(v38 + 1) = 0;
      while (1)
      {
        v45 = (a1 + v44);
        v46 = *(a1 + v44 + 40);
        v45[4] = 0;
        v45[5] = 0;
        v47 = *(a1 + v44 + 56);
        v45[6] = v42;
        v45[7] = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v47);
        }

        if (v44 == -32)
        {
          break;
        }

        v42 = *(a1 + v44 + 16);
        v44 -= 16;
        if (v41 >= v42)
        {
          v48 = (a1 + v44 + 48);
          goto LABEL_46;
        }
      }

      v48 = a1;
LABEL_46:
      v49 = v48[1];
      *v48 = v41;
      v48[1] = v43;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      if (++v40 == 8)
      {
        return v38 + 16 == a2;
      }
    }

    v12 = v38;
    v39 += 16;
    v38 += 16;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::MuninRoadLabeler::startFrameLayout(uint64_t result, float a2)
{
  *(result + 40) = a2;
  *(result + 72) = 0;
  v2 = *(result + 104);
  for (i = *(result + 112); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = *(*v2 + 538);
    if (v6 == 2)
    {
      *(v5 + 264) = fmaxf(fminf(*(v5 + 264), 0.9) - (a2 / *(v5 + 276)), 0.0);
      v7.n128_f32[0] = (*(v5 + 288))();
      *(v5 + 268) = v7.n128_u32[0];
      if (*(v5 + 264) <= 0.0 || v7.n128_f32[0] <= 0.1)
      {
        v8 = (v5 + 288);
        *(v5 + 264) = 0;
        v7.n128_u64[0] = 0;
        goto LABEL_10;
      }
    }

    else if (v6 == 1)
    {
      *(v5 + 264) = fminf((a2 / *(v5 + 272)) + fmaxf(*(v5 + 264), 0.1), 1.0);
      v7.n128_f32[0] = (*(v5 + 280))();
      *(v5 + 268) = v7.n128_u32[0];
      if (*(v5 + 264) >= 1.0 || v7.n128_f32[0] >= 0.9)
      {
        v8 = (v5 + 280);
        *(v5 + 264) = 1065353216;
        v7.n128_u32[0] = 1.0;
LABEL_10:
        *(v5 + 268) = (*v8)(v7);
        md::MuninRoadLabel::updateStateMachineForDisplay(v5, 7, *(v5 + 539), 0);
      }
    }

    result = *(v5 + 64);
    if (result)
    {
      result = (*(*result + 624))(result, a2);
    }
  }

  return result;
}

void md::MuninRoadLabeler::~MuninRoadLabeler(md::MuninRoadLabeler *this)
{
  md::MuninRoadLabeler::~MuninRoadLabeler(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A086E0;
  md::MuninRoadLabeler::resetCurrentJunctions(this);
  md::MuninRoadLabelPool::clear(*(this + 4));
  v2 = *(this + 35);
  *(this + 35) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C407D563059);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 240);
  v6 = (this + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 192);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 22));
  std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100](this + 18, 0);
  std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100](this + 17, 0);
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C407D563059);
  }

  v6 = (this + 104);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 80);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](this + 4);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x20C4093837F09);
  }
}

void sub_1B2E85CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 280);
  *(v10 + 280) = 0;
  if (v14)
  {
    MEMORY[0x1B8C62190](v14, v12);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10 + 240);
  a10 = (v10 + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 192);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 176));
  std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100]((v10 + 144), 0);
  std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100]((v10 + 136), 0);
  v15 = *(v10 + 128);
  *(v10 + 128) = 0;
  if (v15)
  {
    MEMORY[0x1B8C62190](v15, v12);
  }

  a10 = (v10 + 104);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 80);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v16 = *(v10 + 64);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](v11);
  v17 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v17)
  {
    MEMORY[0x1B8C62190](v17, 0x20C4093837F09);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(v2 + 40);
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(*(v2 + 16));
    MEMORY[0x1B8C62190](v2, 0x10A0C4089BE28BCLL);
  }

  return a1;
}

void std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(v3, a1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(uint64_t a1, void *a2)
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

void md::ARWalkingAppSimulatedMapEngineMode::~ARWalkingAppSimulatedMapEngineMode(md::ARWalkingAppSimulatedMapEngineMode *this)
{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[31];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[15];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 9));
    v5 = v2[7];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = v2[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = mdm::zone_mallocator::instance(v7);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStore::WorkUnit>(v8, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x100uLL, 0x1070040F7F2EDB8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void md::LabelLineStore::removeRoadFeaturesInTile<geo::codec::VectorTile>(mdm::zone_mallocator *a1, void *a2)
{
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  *v5 = 9;
  v6 = a2[1];
  *(v5 + 1) = *a2;
  *(v5 + 2) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 11) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 17) = 0;
  *(v5 + 72) = 255;
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  *(v5 + 20) = 0;
  v5[168] = 1;
  *(v5 + 22) = 0;
  *(v5 + 23) = 0;
  *(v5 + 12) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v5 + 13) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5[224] = 0;
  *(v5 + 57) = 0;
  *(v5 + 116) = 256;
  v5[234] = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  v7 = v5;
  md::LabelLineStore::queueWorkUnit(a1, &v7);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v7, 0);
}

void sub_1B2E863BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void md::LabelLineStore::addContourLine(mdm::zone_mallocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = mdm::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v8);
  v10 = md::LabelLineStore::WorkUnit::WorkUnit(v9, 1, a2, a3);
  v10[16] = a4;
  md::LabelLineStore::queueWorkUnit(a1, &v10);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v10, 0);
}

void sub_1B2E86448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLineStore::WorkUnit::WorkUnit(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  geo::GEOFeatureTile_retain_ptr<GeoCodecsFeatureBase const>::reset((a1 + 40), a3);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = *a4;
  *(a1 + 168) = 0;
  *(a1 + 145) = *(a4 + 9);
  *(a1 + 148) = *(a4 + 12);
  *(a1 + 144) = *(a4 + 8);
  *(a1 + 160) = *(a4 + 24);
  *(a1 + 168) = *(a4 + 32);
  v6 = *(a4 + 40);
  v7 = *(a4 + 56);
  v8 = *(a4 + 72);
  *(a1 + 219) = *(a4 + 83);
  *(a1 + 192) = v7;
  *(a1 + 208) = v8;
  *(a1 + 176) = v6;
  v9 = *(a4 + 112);
  *(a1 + 240) = *(a4 + 104);
  *(a1 + 248) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void md::LabelLineStore::addOverlayLine(mdm::zone_mallocator *a1, void *a2, uint64_t a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v6);
  *v7 = 2;
  v8 = 0uLL;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v9 = a2[1];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    v8 = 0uLL;
    *(v7 + 4) = v10;
    if (v10)
    {
      *(v7 + 3) = *a2;
    }
  }

  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0;
  *(v7 + 8) = a2;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  *(v7 + 9) = 0;
  *(v7 + 120) = v8;
  *(v7 + 104) = v8;
  *(v7 + 17) = *a3;
  v7[168] = 0;
  *(v7 + 148) = *(a3 + 12);
  *(v7 + 72) = *(a3 + 8);
  *(v7 + 20) = *(a3 + 24);
  v7[168] = *(a3 + 32);
  v11 = *(a3 + 40);
  v12 = *(a3 + 56);
  v13 = *(a3 + 72);
  *(v7 + 219) = *(a3 + 83);
  *(v7 + 12) = v12;
  *(v7 + 13) = v13;
  *(v7 + 11) = v11;
  v14 = *(a3 + 112);
  *(v7 + 30) = *(a3 + 104);
  *(v7 + 31) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  md::LabelLineStore::queueWorkUnit(a1, &v15);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v15, 0);
}

void sub_1B2E8662C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

int64x2_t md::LabelLineStore::WorkUnit::WorkUnit(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v5 = *a3;
  v4 = a3[1];
  *(a1 + 104) = 0;
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = a4;
  *(a1 + 136) = 0;
  *(a1 + 144) = 255;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 192) = result;
  *(a1 + 208) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 256;
  *(a1 + 234) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

void md::LabelLineStore::addExternalRoadFeature(mdm::zone_mallocator *a1, uint64_t *a2)
{
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  v6 = v5;
  v7 = *a2;
  v8 = a2[1];
  v10[0] = v7;
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    md::LabelLineStore::WorkUnit::WorkUnit(v5, 6, v10, 0);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  else
  {
    md::LabelLineStore::WorkUnit::WorkUnit(v5, 6, v10, 0);
  }

  v9 = v6;
  md::LabelLineStore::queueWorkUnit(a1, &v9);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v9, 0);
}

void sub_1B2E86778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void md::LabelLineStore::addTransitLineSegment(mdm::zone_mallocator *a1, uint64_t *a2, uint64_t a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v6);
  v8 = md::LabelLineStore::WorkUnit::WorkUnit(v7, 8, a2, a3);
  md::LabelLineStore::queueWorkUnit(a1, &v8);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v8, 0);
}

void sub_1B2E867FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

double md::LabelLineStore::lineStartForZoom(md::LabelLineStore *this, std::__shared_weak_count **a2, unsigned int a3, unint64_t a4)
{
  v7 = md::LabelLineStore::lineSetIndexForZoom(a2, a3);
  if ((v7 & 0x80000000) != 0 || (v8 = a2[12] + 112 * v7, v9 = *(v8 + 80), a4 >= (*(v8 + 88) - v9) >> 3))
  {
    result = 0.0;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
    *(this + 8) = -1;
  }

  else
  {
    v10 = a2[1];
    if (!v10 || (v11 = *a2, (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      v21 = std::__throw_bad_weak_ptr[abi:nn200100]();
      std::__shared_weak_count::__release_shared[abi:nn200100](a2);
      _Unwind_Resume(v21);
    }

    v13 = v12;
    v14 = *(v9 + 8 * a4);
    started = md::LabelLine::startCoordinate(*(v14 + 8), *(v14 + 16));
    *this = v11;
    *(this + 1) = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 10) = v11->__shared_weak_owners_;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16) - v16;
    v18 = v16 + 16 * started;
    if (started >= (v17 >> 4))
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    *(this + 2) = v14;
    *(this + 3) = v19;
    *(this + 4) = started;

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return result;
}

void std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    v2 = std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::clear[abi:nn200100](a1);
    v3 = *a1;
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineSegment>>(v4, v3);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    *(a1 + 1) = v1;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>>(v5, v4);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    *(a1 + 1) = v1;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>>(v5, v4);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

uint64_t std::__function::__func<md::LabelLineStore::updateLineSets(void)::$_1,std::allocator<md::LabelLineStore::updateLineSets(void)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08A28;
  a2[1] = v2;
  return result;
}

void std::allocator_traits<geo::allocator_adapter<md::LabelLineZSet,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LabelLineZSet,void,0>(void **a1)
{
  v2 = a1 + 10;
  std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 6;
  std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 2;
  std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 72));
    std::vector<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 40));
    std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 8));
    v4 = mdm::zone_mallocator::instance(v3);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLine>(v4, v2);
  }
}

void std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__destroy_at[abi:nn200100]<md::TileLabelLine,0>(v2);
    v4 = mdm::zone_mallocator::instance(v3);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine>(v4, v2);
  }
}

void std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::FixedLabelLineSegment<5ul>::vertexInfo(uint64_t a1, uint64_t a2)
{
  return a1 + 4 * a2 + 288;
}

{
  return a1 + 4 * a2 + 288;
}

void md::FixedLabelLineSegment<5ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<5ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<4ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<4ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<3ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<3ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<2ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<2ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentVertexInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPoint>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentVertexInfo>(uint64_t a1, void *a2)
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

void md::LabelLineSegmentImpl::~LabelLineSegmentImpl(md::LabelLineSegmentImpl *this)
{
  *this = &unk_1F2A08A70;
  std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 80));
  std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  *this = &unk_1F2A2D928;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A08A70;
  std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 80));
  std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  *this = &unk_1F2A2D928;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }
}

uint64_t md::DaVinciMaterialLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  UInt64 = gdc::ResourceKey::getUInt64(*(a1 + 16), 0);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "gdc::LayerDataRequestKey<Type:", 30);
  v5 = *(a1 + 8);
  if (v5 > 0x51)
  {
    v6 = "<Invalid>";
  }

  else
  {
    v6 = off_1E7B30210[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, ", Material ID: ", 15);
  v8 = MEMORY[0x1B8C61CF0](&v13, UInt64);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ">", 1);
  if ((v20 & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v10 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v15[1].__locale_;
    v10 = v15[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_17:
  a2[v9] = 0;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v21);
}

void md::DaVinciMaterialLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  gdc::LayerDataSource::getResourceFromMap(&v6, 36, *a3, a3[1]);
  v4 = v6;
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = *(v4 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2E87610(_Unwind_Exception *exception_object)
{
  v3 = v1[26];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v1[3] = &unk_1F2A60328;
  v4 = v1[7];
  if (v4 != v1[9])
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::MaterialData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08CC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciMaterialLayerDataSource::~DaVinciMaterialLayerDataSource(md::DaVinciMaterialLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t __Block_byref_object_copy__12936(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2E893D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](v4 + 8);
  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<std::pair<unsigned long long,std::function<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B2E89600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKPuckAnimator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2E89934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](&a18);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2E89F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<VKRouteWaypointInfo * {__strong},geo::allocator_adapter<VKRouteWaypointInfo * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKRouteWaypointInfo * {__strong}>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKRouteWaypointInfo * {__strong}>(uint64_t a1, void *a2)
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

void sub_1B2E8A2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(v7, v4);
  }
}

void sub_1B2E8A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = mdm::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v8, a4);
    v10 = v9;
    *a1 = v9;
    *(a1 + 1) = v9;
    *(a1 + 2) = &v9[3 * a4];
    if (a2 != a3)
    {
      v11 = v9;
      do
      {
        *v10 = &unk_1F2A381B8;
        v10[1] = 0;
        v12 = *(a2 + 8);
        v13 = v10[1];
        v10[1] = v12;

        a2 += 24;
        v10 += 3;
        v11 += 3;
      }

      while (a2 != a3);
    }

    *(a1 + 1) = v10;
  }
}

void geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A381B8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A381B8;

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x81040B49F1EBBuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2E8AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8B2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
        a1 = *(v3 - 2);
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelImageInfo>(v6, v4);
  }
}

void sub_1B2E8C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8C9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8CAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8CBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ARCameraImagePipelineState::~ARCameraImagePipelineState(ggl::ARCameraImagePipelineState *this)
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

void ggl::ARCameraImagePipelineSetup::~ARCameraImagePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::RoadStyling::subscribeLayer(md::RoadStyling *this, md::RoadLayer *a2)
{
  ++*(a2 + 54);
  v2 = *(a2 + 1);
  for (i = *(a2 + 2); v2 != i; v2 += 8)
  {
    v4 = *v2;
    v5 = *(*v2 + 1048);
    v6 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v5);
    v7 = *this;
    v8 = *(this + 1);
    if (*this == v8)
    {
LABEL_7:
      v10 = *(this + 2);
      if (v8 >= v10)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4) + 1;
        if (v12 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v7) >> 4);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x2AAAAAAAAAAAAAALL)
        {
          v14 = 0x555555555555555;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (v14 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = (16 * ((v8 - v7) >> 4));
        *(v15 + 1) = 0uLL;
        *(v15 + 2) = 0uLL;
        *v15 = 0uLL;
        v16 = v15 - (v8 - v7);
        if (v7 != v8)
        {
          v17 = v7;
          v18 = 16 * ((v8 - v7) >> 4) - (v8 - v7);
          do
          {
            *v18 = *v17;
            *(v18 + 8) = *(v17 + 8);
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            *(v18 + 24) = *(v17 + 24);
            *(v18 + 32) = *(v17 + 32);
            *(v17 + 32) = 0;
            *(v17 + 40) = 0;
            v17 += 48;
            v18 += 48;
          }

          while (v17 != v8);
          do
          {
            std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(v7);
            v7 += 48;
          }

          while (v7 != v8);
        }

        v11 = v15 + 48;
        v19 = *this;
        *this = v16;
        *(this + 8) = (v15 + 48);
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        v8[1] = 0u;
        v8[2] = 0u;
        v11 = v8 + 3;
        *v8 = 0u;
      }

      *(this + 1) = v11;
      operator new();
    }

    v9 = *this;
    while (*v9 != v6 || !gss::FeatureAttributeSet::operator==(*(*(v9 + 8) + 240), *(*(v9 + 8) + 248), *(v5 + 240), *(v5 + 248)))
    {
      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    md::RoadBatch::setStyle(v4, (v9 + 32));
    ++*(v9 + 24);
  }
}

void sub_1B2E8D308(_Unwind_Exception *a1)
{
  md::RoadStyleConstants::~RoadStyleConstants(v2);
  v4 = v1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  MEMORY[0x1B8C62190](v1, 0x1020C40F1B7CD7FLL);
  _Unwind_Resume(a1);
}

void *std::default_delete<md::RoadStyle>::operator()[abi:nn200100](void *result)
{
  if (result)
  {
    v1 = result;
    md::RoadStyleConstants::~RoadStyleConstants((result + 10));
    v2 = v1[8];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = v1[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v1[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::RoadStyleConstants::~RoadStyleConstants(md::RoadStyleConstants *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_pointer<md::RoadStyle *,std::shared_ptr<md::RoadStyle>::__shared_ptr_default_delete<md::RoadStyle,md::RoadStyle>,std::allocator<md::RoadStyle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RoadStyling::unsubscribeLayer(md::RoadStyling *this, md::RoadLayer *a2)
{
  v4 = *(a2 + 54) - 1;
  *(a2 + 54) = v4;
  if (!v4)
  {
    v23[12] = v2;
    v23[13] = v3;
    v5 = *(a2 + 1);
    for (i = *(a2 + 2); v5 != i; v5 += 8)
    {
      v8 = *v5;
      v9 = *(*v5 + 1048);
      v10 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v9);
      v11 = *this;
      v12 = *(this + 1);
      if (*this != v12)
      {
        v13 = v10;
        while (*v11 != v13 || !gss::FeatureAttributeSet::operator==(*(*(v11 + 8) + 240), *(*(v11 + 8) + 248), *(v9 + 240), *(v9 + 248)))
        {
          v11 += 48;
          if (v11 == v12)
          {
            goto LABEL_19;
          }
        }

        v14 = *(v11 + 24) - 1;
        *(v11 + 24) = v14;
        v23[0] = 0;
        v23[1] = 0;
        md::RoadBatch::setStyle(v8, v23);
        if (!v14)
        {
          v15 = *(this + 1);
          v16 = *(v15 - 40);
          *v11 = *(v15 - 48);
          v17 = *(v15 - 32);
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = *(v11 + 16);
          *(v11 + 8) = v16;
          *(v11 + 16) = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
          }

          *(v11 + 24) = *(v15 - 24);
          v20 = *(v15 - 16);
          v19 = *(v15 - 8);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v21 = *(v11 + 40);
          *(v11 + 32) = v20;
          *(v11 + 40) = v19;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          v22 = *(this + 1) - 48;
          std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(v22);
          *(this + 1) = v22;
        }
      }

LABEL_19:
      ;
    }
  }
}