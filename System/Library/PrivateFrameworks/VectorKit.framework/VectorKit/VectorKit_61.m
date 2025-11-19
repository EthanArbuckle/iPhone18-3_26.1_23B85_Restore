uint64_t **std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(uint64_t **a1, unsigned __int8 a2, char **a3)
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
        v8 = *(v5 + 32);
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

    v12 = malloc_type_zone_malloc(*v9, 0x88uLL, 0x1020040ADBB207DuLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[32] = **a3;
    *(v12 + 16) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v12 + 40) = _Q0;
    *(v12 + 56) = _Q0;
    *(v12 + 72) = _Q0;
    *(v12 + 88) = _Q0;
    *(v12 + 13) = 0xBFF0000000000000;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v12 + 14) = _Q0;
    *(v12 + 30) = -1;
    *(v12 + 124) = 0;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v18 = **a1;
    v19 = v12;
    if (v18)
    {
      *a1 = v18;
      v19 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v19);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

void md::LineLabelPlacer::updatePlacements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a2;
  v166 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = *(a1 + 16);
  if ((*(*a1 + 157) & 1) != 0 || (v12 = md::LabelLineStore::lineSetIndexForZoom(v9, a2), (v12 & 0x80000000) != 0) || (v13 = *(v9 + 12)) == 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v13 + 112 * v12 + 8);
    v15 = v14 > 12.0 / ldexpf(1.0, v7);
  }

  v16 = *(a1 + 20);
  v118 = 1 << a2;
  if (v10 != v11)
  {
    goto LABEL_13;
  }

  v17 = *(a1 + 68);
  if ((v118 & v17) != 0)
  {
    v18 = a5;
  }

  else
  {
    v18 = 1;
  }

  if (!(v18 | v15) && (v118 & v16) == 0)
  {
    return;
  }

  if (a5)
  {
LABEL_13:
    LODWORD(v17) = 0;
  }

  v19 = *a1;
  v20 = v16 & ~v118;
  v21 = v16 | v118;
  if (!v15)
  {
    v21 = v20;
  }

  *(a1 + 16) = *(*a1 + 16);
  *(a1 + 20) = v21;
  *(a1 + 68) = v17 | v118;
  v22 = *(a1 + 32);
  v109 = a1 + 32;
  v115 = (a1 + 40);
  if (v22 != (a1 + 40))
  {
    v23 = *(a3 + 56);
    while (1)
    {
      v24 = v22[5];
      if ((v118 & v24[3]) == 0)
      {
LABEL_32:
        v37 = v22[1];
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
            v38 = v22[2];
            v58 = *v38 == v22;
            v22 = v38;
          }

          while (!v58);
        }

        goto LABEL_39;
      }

      if (v15)
      {
        v25 = (*(*v24 + 56))(v24);
        v26 = md::LabelPoint::mercatorPoint(v25);
        v27 = *(a4 + 424);
        *__dst = *v26;
        *v146 = 0;
        v28 = &v131;
        v29.n128_u64[0] = md::LabelLayoutContext::projectPointToPixel(v27, __dst, &v131);
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v29.n128_u32[0] = v28->i32[0];
          if (*v28->i32 < *(v27 + 1104 + 4 * v31))
          {
            break;
          }

          v32 = *(v27 + 1112 + 4 * v31);
          v31 = 1;
          v33 = (v29.n128_f32[0] < v32) & ~v30;
          v30 = 1;
          v28 = (v131.i64 + 4);
          if ((v33 & 1) == 0)
          {
            if (v29.n128_f32[0] < v32)
            {
              v24 = v22[5];
              goto LABEL_27;
            }

            break;
          }
        }

        v34 = (*(**(*(a4 + 168) + 64) + 56))(*(*(a4 + 168) + 64), v26, v29);
        v24 = v22[5];
        if (v34)
        {
          goto LABEL_27;
        }

        v35 = a2;
      }

      else
      {
LABEL_27:
        v36 = (*(*v24 + 176))(v24, a2, v23);
        v24 = v22[5];
        if (v36)
        {
          *(v24 + 11) = 0;
          goto LABEL_31;
        }

        v35 = a2;
      }

      md::RoadPosition::setValidAtZoom(v24, v35, 0);
LABEL_31:
      if (*(v22[5] + 12))
      {
        goto LABEL_32;
      }

      v38 = std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::erase(v109, v22);
LABEL_39:
      v22 = v38;
      if (v38 == v115)
      {
        v19 = *a1;
        break;
      }
    }
  }

  v39 = md::LabelLineStore::lineSetIndexForZoom(v19, a2);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_171;
  }

  v40 = *(v19 + 12);
  if (!v40)
  {
    goto LABEL_171;
  }

  if (*(a3 + 40) <= 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(a3 + 86);
  }

  v42 = *a3;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v116 = *(a1 + 24);
  __p = 0;
  v126 = 0;
  v127 = 0;
  v43 = v40 + 112 * v39;
  v44 = *(v43 + 80);
  v110 = *(v43 + 88);
  if (v44 == v110)
  {
    goto LABEL_170;
  }

  v45 = 2.0;
  v112 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v113 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v119 = 1.0 / v42;
  v114 = v41;
  do
  {
    v46 = v163;
    for (i = v164; i != v46; i -= 216)
    {
      v48 = *(i - 200);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v48);
      }
    }

    v164 = v46;
    v161 = v160;
    md::LineLabelPlacer::populateBlocks(a1, a2, *v44, &v163, &v160);
    v111 = v44;
    v49 = *(*v44 + 112);
    v126 = __p;
    v50 = v163;
    v51 = v164;
    while (v50 != v51)
    {
      if (*(v50 + 23) - *(v50 + 22) + fmin(*(v50 + 25), *(v50 + 24)) * v45 < *(a3 + 64))
      {
        goto LABEL_166;
      }

      if (v15)
      {
        v131 = v113;
        v132[0] = v112;
        md::LabelLineResolvedPosition::ensureValidLinePosition((v50 + 2), *v112.i64);
        v52 = *(v50 + 2);
        __dst[0] = *(v50 + 1);
        __dst[1] = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(v52 + 1, 1uLL, memory_order_relaxed);
        }

        *v146 = *(v50 + 6);
        *&v146[16] = *(v50 + 5);
        *&v146[24] = v50[12];
        md::LabelLinePosition::offsetDistance(__dst, &v131, *(v50 + 23) - *(v50 + 22));
        if (__dst[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
        }

        v130[0] = v131;
        v130[1] = v132[0];
        if (((*(**(*(a4 + 168) + 64) + 64))(*(*(a4 + 168) + 64), v130) & 1) == 0)
        {
          goto LABEL_166;
        }
      }

      if (*(a1 + 24) == 1)
      {
        v49 = (v160[2 * *v50 + 1] + v160[2 * *v50]) * 0.5;
      }

      v53 = *(v50 + 22);
      v54 = *(v50 + 23);
      v55 = ((v53 - v49) * v119);
      v56 = v53 > v49 || v54 < v49;
      v57 = (v54 - v49) * v119;
      v58 = v56 && v55 == v57;
      if (v58)
      {
        goto LABEL_166;
      }

      if ((v41 & 1) != 0 && *(a3 + 88) == 1)
      {
        v59 = *(a3 + 84);
      }

      else
      {
        v59 = 0;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v50 + 2), v57);
      if (md::LabelLinePosition::textIndex((v50 + 2)) == 255)
      {
        v61 = 0;
      }

      else
      {
        v61 = *(a3 + 84);
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v50 + 2), v60);
      if (md::LabelLinePosition::hasAnnotation((v50 + 2)))
      {
        v63 = *(a3 + 85);
      }

      else
      {
        v63 = 0;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v50 + 2), v62);
      v64 = md::LabelLinePosition::travelDirection((v50 + 2));
      v65 = *(a1 + 72);
      if (v65 != 7 && v64 - 3 > 0xFFFFFFFD)
      {
        LOBYTE(v66) = 0;
        v67 = *(a3 + 87) == 0;
        LODWORD(v68) = 4;
        goto LABEL_87;
      }

      LOBYTE(v66) = 0;
      v68 = 0;
      if (v65 == 7 && v64 < 2)
      {
        v66 = *(a3 + 87);
        v67 = v66 == 0;
        LODWORD(v68) = 5;
LABEL_87:
        if (v67)
        {
          v68 = 0;
        }

        else
        {
          v68 = v68;
        }
      }

      if (v59)
      {
        v69 = 2;
      }

      else
      {
        v69 = 3;
      }

      if ((v59 | v41))
      {
        goto LABEL_104;
      }

      if (v61 & v63)
      {
        v69 = 7;
LABEL_104:
        *v122 = v49;
        v70 = v15;
        v157[0] = &unk_1F2A2A340;
        v157[1] = &__p;
        LOBYTE(v158) = v116;
        memset(&v158 + 1, 0, 7);
        v159 = v157;
        v71 = *(a3 + 76);
        if (v71 < 0.0)
        {
          v72 = 80.0;
        }

        else
        {
          v72 = v71;
        }

        v73 = *(v50 + 23) - *(v50 + 22);
        v74 = v73 + fmin(*(v50 + 25), *(v50 + 24)) * 2.0;
        v75 = a2 < 0xE || v71 >= 0.0;
        while (1)
        {
          v76 = v68;
          v77 = v69;
          v78 = metricsForPositionType(v69, a3);
          v79 = v78;
          v81 = v80;
          v82 = v72;
          if (!v75)
          {
            if (*(*a1 + 154) == 2)
            {
              v82 = 8.0;
            }

            else
            {
              v82 = 10.0;
            }
          }

          if (v76)
          {
            if (v77 != v76)
            {
              v68 = 0;
              v69 = v76;
              if (v78 > v74)
              {
                continue;
              }
            }
          }

          if (v77 != 7)
          {
            break;
          }

          v68 = 0;
          v69 = 6;
          if (v78 <= v74)
          {
            break;
          }
        }

        v120 = *(a3 + 48);
        __src = v73 * 0.5;
        v83 = metricsForPositionType(v77, a3);
        v85 = fmax(v79 + v81, v83 + v84);
        v86 = v85 * 0.800000012 * (v85 * 0.800000012);
        if (!*(*a1 + 159))
        {
          v82 = v82 * 0.0000000249532021;
        }

        v87 = (v73 / v85);
        v88 = 1 << (__clz(v87) ^ 0x1F);
        if (v87)
        {
          v89 = v88;
        }

        else
        {
          v89 = 0;
        }

        if (v89 > 2)
        {
LABEL_137:
          if (v76 | v87)
          {
            v92 = v65 == 0;
          }

          else
          {
            v92 = 0;
          }

          if (v92)
          {
            v93 = v77;
            if (v76)
            {
              v85 = v79 * 0.5 + *(a3 + 48) * 2.0;
              v93 = v76;
            }

            if (__src > v85 + v82)
            {
              *__dst = 0u;
              *v146 = 0u;
              *&v146[20] = 0;
              *&v146[16] = -1;
              v147 = 0;
              v148 = 0u;
              memset(v149, 0, sizeof(v149));
              *v150 = 2139095039;
              *&v150[4] = 0;
              v150[6] = 0;
              v151 = 0u;
              memset(v152, 0, sizeof(v152));
              *v153 = 2139095039;
              *&v153[4] = 0;
              v153[6] = 0;
              v154 = 0;
              v155 = 0;
              v156 = 255;
              if (md::LabelLineResolvedPosition::positionAtDistance(v50 + 1, __dst, v82) && (std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v159, __dst, v86) & 1) == 0)
              {
                md::LineLabelPlacer::addPositionIfValid(&v131, a1, __dst, 0, v93, a2, v120);
                if (v131.i64[1])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v131.i64[1]);
                }
              }

              if (md::LabelLineResolvedPosition::positionAtDistance(v50 + 1, __dst, v73 - v82) && (std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v159, __dst, v86) & 1) == 0)
              {
                md::LineLabelPlacer::addPositionIfValid(v130, a1, __dst, 2, v93, a2, v120);
                if (*(&v130[0] + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v130[0] + 1));
                }
              }

              if (__dst[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
              }
            }
          }

          if (v89 >= 3)
          {
            *__dst = 0u;
            *v146 = 0u;
            *&v146[20] = 0;
            *&v146[16] = -1;
            v147 = 0;
            v148 = 0u;
            memset(v149, 0, sizeof(v149));
            *v150 = 2139095039;
            *&v150[4] = 0;
            v150[6] = 0;
            v151 = 0u;
            memset(v152, 0, sizeof(v152));
            *v153 = 2139095039;
            *&v153[4] = 0;
            v153[6] = 0;
            v154 = 0;
            v155 = 0;
            v156 = 255;
            v94 = 1;
            v95 = v77;
            do
            {
              v96 = md::LabelLineResolvedPosition::positionAtDistance(v50 + 1, __dst, v73 * v94 * (1.0 / v89));
              v97 = v77;
              if (v96)
              {
                if (std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v159, __dst, v86))
                {
                  v97 = v95;
                }

                else
                {
                  md::LineLabelPlacer::addPositionIfValid(v128, a1, __dst, 1, v95, a2, v120);
                  v97 = v77;
                  if (v129)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v129);
                    v97 = v77;
                  }
                }
              }

              ++v94;
              v95 = v97;
            }

            while (v89 != v94);
            if (__dst[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
            }
          }
        }

        else if (v79 <= v74)
        {
          *__dst = 0u;
          *v146 = 0u;
          *&v146[20] = 0;
          *&v146[16] = -1;
          v147 = 0;
          v148 = 0u;
          memset(v149, 0, sizeof(v149));
          *v150 = 2139095039;
          *&v150[4] = 0;
          v150[6] = 0;
          v151 = 0u;
          memset(v152, 0, sizeof(v152));
          *v153 = 2139095039;
          *&v153[4] = 0;
          v153[6] = 0;
          v154 = 0;
          v155 = 0;
          v156 = 255;
          if (md::LabelLineResolvedPosition::positionAtDistance(v50 + 1, __dst, __src) && (std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v159, __dst, v86) & 1) == 0)
          {
            md::LineLabelPlacer::addPositionIfValid(&v131, a1, __dst, 1, v77, a2, v120);
            v90 = v131;
            if (v131.i64[1])
            {
              atomic_fetch_add_explicit((v131.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v91 = __dst[1];
            *__dst = v90;
            if (v91)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v91);
            }

            *v146 = v132[0];
            *&v146[12] = *(v132 + 12);
            v147 = v133;
            v148 = v134;
            v149[0] = v135;
            *&v150[3] = *(v137 + 3);
            *v150 = v137[0];
            v152[0] = v139;
            v151 = v138;
            *&v149[1] = v136;
            *&v152[1] = v140;
            *&v153[3] = *(v141 + 3);
            *v153 = v141[0];
            v155 = v143;
            v154 = v142;
            v156 = v144;
            if (v131.i64[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v131.i64[1]);
            }
          }

          if (__dst[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
          }

          v65 = *(a1 + 72);
          goto LABEL_137;
        }

        std::__function::__value_func<BOOL ()(md::LabelLineResolvedPosition const&,double)>::~__value_func[abi:nn200100](v157);
        v15 = v70;
        v41 = v114;
        v45 = 2.0;
        v49 = *v122;
        goto LABEL_166;
      }

      if ((v61 & 1 & v66) != 0)
      {
        LODWORD(v69) = 8;
      }

      else
      {
        LODWORD(v69) = 1;
      }

      if (v61)
      {
        v69 = v69;
      }

      else
      {
        v69 = 6;
      }

      if ((v61 | v63))
      {
        goto LABEL_104;
      }

      v69 = v68;
      if (v68)
      {
        goto LABEL_104;
      }

LABEL_166:
      v50 += 54;
    }

    v44 = v111 + 1;
  }

  while (v111 + 1 != v110);
  if (__p)
  {
    v126 = __p;
    operator delete(__p);
  }

LABEL_170:
  std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v160);
  __dst[0] = &v163;
  std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](__dst);
LABEL_171:
  v123 = *(*a1 + 159);
  v98 = *(a1 + 32);
  if (v98 == v115)
  {
    v99 = 0;
    goto LABEL_196;
  }

  v99 = 0;
  v100 = a2;
  while (2)
  {
    v101 = v98[5];
    if ((v118 & *(v101 + 12)) != 0)
    {
      if (*(v101 + 11) == 1)
      {
        v102 = *(v101 + 9);
        if (v102 == 8 || v102 == 4)
        {
          *(v101 + 10) = 1;
          *(v101 + 16) |= v118;
        }

        else
        {
          *(v101 + 10) = 0;
          v106 = v99 >> 3;
          if (((v99 >> 3) + 1) >> 61)
          {
            goto LABEL_201;
          }

          if (v99 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v99 >> 3) + 1);
          }

          *(8 * v106) = v101;
          memcpy(0, 0, v99);
          v99 = 8 * v106 + 8;
          v100 = a2;
        }

        goto LABEL_187;
      }

      md::RoadPosition::setValidAtZoom(v98[5], v100, 0);
      v104 = v98[5];
      v105 = *(v104 + 12);
      *(v104 + 16) &= ~v118;
      if (v105)
      {
        goto LABEL_187;
      }

      v98 = std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::erase(v109, v98);
    }

    else
    {
LABEL_187:
      v107 = v98[1];
      if (v107)
      {
        do
        {
          v98 = v107;
          v107 = *v107;
        }

        while (v107);
      }

      else
      {
        do
        {
          v108 = v98;
          v98 = v98[2];
        }

        while (*v98 != v108);
      }
    }

    if (v98 != v115)
    {
      continue;
    }

    break;
  }

  if (v99)
  {
    if (!((v99 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v99 >> 3);
    }

LABEL_201:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_196:
  if (v123)
  {
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(0, 0, 0, 1);
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(0, 0, 0, 1);
  }

  else
  {
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(0, 0, 0, 1);
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(0, 0, 0, 1);
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,false>(0, v99, 0, 1);
}

void sub_1B2BD2034(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else if (!v2)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(v2);
  goto LABEL_6;
}

uint64_t md::LabelLineStore::lineSetIndexForZoom(md::LabelLineStore *this, unsigned int a2)
{
  if (a2 >= 0x17)
  {
    v2 = 23;
  }

  else
  {
    v2 = a2;
  }

  v3 = this + 128;
  v4 = atomic_load(this + v2 + 128);
  if (v4 != 254)
  {
    return v4;
  }

  if (*(this + 158))
  {
    v5 = 24;
  }

  else
  {
    v5 = 5;
  }

  v6 = *(this + 12);
  v7 = *(this + 13);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
    v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    result = 0xFFFFFFFFLL;
    v12 = 1000.0;
    while (1)
    {
      v13 = *v6;
      v6 += 112;
      v14 = v2 - v13;
      if (v2 == v13)
      {
        break;
      }

      if (v14 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -v14;
      }

      if (v15 <= v5)
      {
        v16 = v14;
        if (v14 < 0)
        {
          v16 = v14 * -0.8;
        }

        v17 = v16 < v12;
        v12 = fminf(v16, v12);
        if (v17)
        {
          result = v9;
        }

        else
        {
          result = result;
        }
      }

      if (v10 == ++v9)
      {
        goto LABEL_27;
      }
    }

    result = v9;
  }

LABEL_27:
  atomic_store(result, &v3[v2]);
  return result;
}

void *md::LineLabelPlacer::placementsForRect(void *result, void *a2, uint64_t a3, char a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v4 = a2[4];
  v5 = a2 + 5;
  if (v4 != a2 + 5)
  {
    v8 = result;
    v9 = 0;
    v10 = 1 << a4;
    v11 = a3 + 16;
    do
    {
      result = v4[5];
      if ((v10 & result[2]) != 0)
      {
        if (*(*a2 + 159))
        {
          if (v9 < *(v8 + 16))
          {
LABEL_12:
            *v9++ = *(v4 + 8);
          }

          else
          {
LABEL_13:
            result = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(v8, v4 + 8);
            v9 = result;
          }

          *(v8 + 8) = v9;
        }

        else
        {
          v12 = (*(*result + 56))(result);
          result = md::LabelPoint::mercatorPoint(v12);
          v13 = 0;
          v14 = 1;
          while (1)
          {
            v15 = *&result[v13];
            if (v15 < *(a3 + 8 * v13) || v15 > *(v11 + 8 * v13))
            {
              break;
            }

            v16 = v14;
            v14 = 0;
            v13 = 1;
            if ((v16 & 1) == 0)
            {
              if (v9 >= *(v8 + 16))
              {
                goto LABEL_13;
              }

              goto LABEL_12;
            }
          }
        }
      }

      v17 = v4[1];
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
          v18 = v4[2];
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }

  return result;
}

void sub_1B2BD23EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::PointLabelFeature::updatePositions(md::PointLabelFeature *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 312);
  if (v1)
  {
    v46 = 0uLL;
    v47 = 0;
    std::mutex::lock((this + 248));
    v45 = *(this + 20);
    v46 = v45;
    *(this + 40) = 0;
    *(this + 41) = 0;
    v47 = *(this + 42);
    *(this + 42) = 0;
    atomic_store(0, this + 312);
    std::mutex::unlock((this + 248));
    v3 = v45;
    if (v45 != *(&v45 + 1))
    {
      v4 = (this + 440);
      do
      {
        v5 = *v3;
        if (v5 == 2)
        {
          v40 = *(v3 + 5);
          v41 = (*(*this + 160))(this);
          if (md::DebugStreamingPOIFeatureID)
          {
            v42 = md::DebugStreamingPOIFeatureID == v41;
          }

          else
          {
            v42 = 0;
          }

          if (v42)
          {
            if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
            }

            v43 = GEOGetVectorKitStreamingPOILog_log;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              v44 = *(this + 52);
              *buf = 134218240;
              *&buf[4] = v44;
              v49 = 2048;
              v50 = v40;
              _os_log_impl(&dword_1B2754000, v43, OS_LOG_TYPE_DEBUG, "PointLabelFeature::setPoiRemoveVersion, oldVersion=%llu, newVersion=%llu", buf, 0x16u);
            }
          }

          *(this + 52) = v40;
        }

        else if (v5 == 1)
        {
          v6 = (*(*this + 160))(this);
          if (md::DebugStreamingPOIFeatureID)
          {
            v7 = md::DebugStreamingPOIFeatureID == v6;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
            }

            v8 = GEOGetVectorKitStreamingPOILog_log;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v9 = *(v3 + 2);
              *buf = 134217984;
              *&buf[4] = v9;
              _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "PointLabelFeature::removeTileElements, geoTile=%p", buf, 0xCu);
            }
          }

          v10 = *(this + 54);
          if (v10 != v4)
          {
            do
            {
              v12 = v10[5];
              v11 = v10[6];
              v13 = *(v3 + 2);
              v14 = *(v3 + 3);
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v12 != v11)
              {
                while (1)
                {
                  v15 = *v12 ? (*v12 + 1) : 0;
                  if (*(v15 + 8) == v13)
                  {
                    break;
                  }

                  if (++v12 == v11)
                  {
                    v12 = v11;
                    goto LABEL_37;
                  }
                }

                if (v12 != v11)
                {
                  for (i = v12 + 1; i != v11; ++i)
                  {
                    if (*i)
                    {
                      v17 = *i + 8;
                    }

                    else
                    {
                      v17 = 0;
                    }

                    if (*(v17 + 8) != v13)
                    {
                      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v12++, i);
                    }
                  }
                }
              }

LABEL_37:
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v14);
              }

              v18 = v10[6];
              if (v12 != v18)
              {
                while (v18 != v12)
                {
                  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(--v18);
                }

                v10[6] = v12;
              }

              v19 = v10[5];
              if (v19 != v12)
              {
                v20 = *v19 ? *v19 + 8 : 0;
                if (*(v20 + 72) != *(this + 51))
                {
                  v21 = (*(*this + 160))(this);
                  if (md::DebugStreamingPOIFeatureID && md::DebugStreamingPOIFeatureID == v21)
                  {
                    if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                    {
                      dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                    }

                    v22 = GEOGetVectorKitStreamingPOILog_log;
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      v23 = *(this + 51);
                      if (*v19)
                      {
                        v24 = *v19 + 8;
                      }

                      else
                      {
                        v24 = 0;
                      }

                      v25 = *(v24 + 72);
                      *buf = 134218240;
                      *&buf[4] = v23;
                      v49 = 2048;
                      v50 = v25;
                      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_DEBUG, "PointLabelFeature::removeTile, unexpire elements oldVersion=%llu -> updateVersion=%llu", buf, 0x16u);
                    }
                  }

                  if (*v19)
                  {
                    v26 = *v19 + 8;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  *(this + 51) = *(v26 + 72);
                  v27 = v10[5];
                  v28 = v10[6];
                  while (v27 != v28)
                  {
                    v29 = *v27;
                    *buf = v29;
                    if (v29)
                    {
                      ++*v29;
                      v30 = (v29 + 1);
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if (*(v30 + 9) != *(this + 51))
                    {
                      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(buf);
                      break;
                    }

                    md::PointLabelFeatureElement::updateText(v30, this, *(this + 689));
                    if (*buf)
                    {
                      v31 = (*buf + 8);
                    }

                    else
                    {
                      v31 = 0;
                    }

                    md::PointLabelFeatureElement::updateLabelPlacements(v31, this);
                    geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(buf);
                    ++v27;
                  }
                }
              }

              v32 = v10[1];
              if (v10[5] == v10[6])
              {
                v34 = v10[1];
                v35 = v10;
                if (v32)
                {
                  do
                  {
                    v33 = v34;
                    v34 = *v34;
                  }

                  while (v34);
                }

                else
                {
                  do
                  {
                    v33 = v35[2];
                    v7 = *v33 == v35;
                    v35 = v33;
                  }

                  while (!v7);
                }

                v36 = v10;
                if (v32)
                {
                  do
                  {
                    v37 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v37 = v36[2];
                    v7 = *v37 == v36;
                    v36 = v37;
                  }

                  while (!v7);
                }

                if (*(this + 54) == v10)
                {
                  *(this + 54) = v37;
                }

                --*(this + 57);
                std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 55), v10);
                *buf = v10 + 5;
                std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
                v39 = mdm::zone_mallocator::instance(v38);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v39, v10);
              }

              else if (v32)
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
                  v33 = v10[2];
                  v7 = *v33 == v10;
                  v10 = v33;
                }

                while (!v7);
              }

              v10 = v33;
            }

            while (v33 != v4);
          }
        }

        else if (!*v3)
        {
          (*(*this + 776))(this, v3 + 8, v3[32]);
        }

        v3 += 48;
      }

      while (v3 != *(&v45 + 1));
    }

    *buf = &v46;
    std::vector<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
  }
}

void sub_1B2BD2A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  a19 = &a15;
  std::vector<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

__int128 *md::PointLabelFeature::labelPoint(md::LabelPoint *a1, unsigned int *a2)
{
  v2 = *(a1 + 55);
  if (v2)
  {
    v3 = *a2;
    v4 = (a1 + 440);
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != (a1 + 440) && v3 >= *(v4 + 8))
    {
      return (v4 + 9);
    }
  }

  md::LabelPoint::NullPoint(a1);
  return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
}

void md::LabelPool::labelForFeature(uint64_t *a1, md::LabelPool *this, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  v83 = a3;
  if (*(this + 27) > *(this + 76))
  {
    md::LabelPool::pruneCachedLabels(this);
    *(this + 76) = *this + *(this + 27);
  }

  *a1 = 0;
  a1[1] = 0;
  v11 = *(*a4 + 72);
  v81 = v11;
  v82 = *a5;
  v12 = v82;
  v13 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(this + 224, v11, v82);
  if ((this + 232) == v13)
  {
    if (!a6)
    {
      return;
    }

    v16 = *(this + 25);
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = this + 200;
    do
    {
      v18 = *(v16 + 4);
      v20 = v18 == v11;
      v19 = v18 < v11;
      if (v20)
      {
        v19 = *(v16 + 10) < v82;
      }

      v20 = !v19;
      if (v19)
      {
        v21 = 8;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v17 = v16;
      }

      v16 = *&v16[v21];
    }

    while (v16);
    if (v17 == this + 200)
    {
      goto LABEL_27;
    }

    v22 = *(v17 + 4);
    v20 = v11 == v22;
    v23 = v11 < v22;
    if (v20)
    {
      v23 = v82 < *(v17 + 10);
    }

    if (v23 || (v24 = *(v17 + 7)) == 0 || v24->__shared_owners_ == -1)
    {
LABEL_27:
      std::allocate_shared[abi:nn200100]<md::Label,std::allocator<md::Label>,md::LabelManager *&,std::shared_ptr<md::LabelFeature> const&,md::LabelIdentifier const&,0>();
    }

    v25 = std::__shared_weak_count::lock(v24);
    v26 = v25;
    if (v25)
    {
      v27 = *(v17 + 6);
    }

    else
    {
      v27 = 0;
    }

    *a1 = v27;
    a1[1] = v25;
    v85 = &v81;
    v28 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>(this + 28, v81, v82, &v85);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v28 + 7);
    *(v28 + 6) = v27;
    *(v28 + 7) = v26;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if ((*(v27 + 1341) & 1) == 0)
    {
      *(v27 + 1341) = 1;
    }

    if (*(*(this + 1) + 3653))
    {
      goto LABEL_152;
    }

    (*(**(v27 + 8) + 288))(&v85);
    v30 = v85;
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v86);
    }

    if (v30)
    {
      v31 = (*(**(v27 + 8) + 288))(&v85);
      v32 = v85;
      v33 = 0x9DDFEA08EB382D69 * ((8 * (v85 & 0x1FFFFFFF) + 8) ^ (v85 >> 32));
      v34 = 0x9DDFEA08EB382D69 * ((v85 >> 32) ^ (v33 >> 47) ^ v33);
      v35 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
      v36 = *(this + 40);
      if (v36)
      {
        v37 = vcnt_s8(v36);
        v37.i16[0] = vaddlv_u8(v37);
        if (v37.u32[0] > 1uLL)
        {
          v12 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
          if (v35 >= v36)
          {
            v12 = v35 % v36;
          }
        }

        else
        {
          v12 = v35 & (v36 - 1);
        }

        v43 = *(*(this + 39) + 8 * v12);
        if (v43)
        {
          for (i = *v43; i; i = *i)
          {
            v45 = i[1];
            if (v45 == v35)
            {
              if (i[2] == v85)
              {
                goto LABEL_134;
              }
            }

            else
            {
              if (v37.u32[0] > 1uLL)
              {
                if (v45 >= v36)
                {
                  v45 %= v36;
                }
              }

              else
              {
                v45 &= v36 - 1;
              }

              if (v45 != v12)
              {
                break;
              }
            }
          }
        }
      }

      v46 = mdm::zone_mallocator::instance(v31);
      v47 = pthread_rwlock_rdlock((v46 + 32));
      if (v47)
      {
        geo::read_write_lock::logFailure(v47, "read lock", v48);
      }

      v49 = malloc_type_zone_malloc(*v46, 0x20uLL, 0x10200404161829EuLL);
      atomic_fetch_add((v46 + 24), 1u);
      geo::read_write_lock::unlock((v46 + 32));
      *v49 = 0;
      v49[1] = v35;
      v51 = v86;
      v49[2] = v85;
      v49[3] = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = (*(this + 44) + 1);
      v53 = *(this + 90);
      if (v36 && (v53 * v36) >= v52)
      {
LABEL_124:
        v77 = *(this + 39);
        v78 = *(v77 + 8 * v12);
        if (v78)
        {
          *v49 = *v78;
        }

        else
        {
          *v49 = *(this + 42);
          *(this + 42) = v49;
          *(v77 + 8 * v12) = this + 336;
          if (!*v49)
          {
LABEL_133:
            ++*(this + 44);
            v27 = *a1;
            v32 = v85;
LABEL_134:
            md::LabelBase::setDedupingGroup(v27, v32);
            v80 = v86;
            if (!v86)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }

          v79 = *(*v49 + 8);
          if ((v36 & (v36 - 1)) != 0)
          {
            if (v79 >= v36)
            {
              v79 %= v36;
            }
          }

          else
          {
            v79 &= v36 - 1;
          }

          v78 = (*(this + 39) + 8 * v79);
        }

        *v78 = v49;
        goto LABEL_133;
      }

      v54 = 1;
      if (v36 >= 3)
      {
        v54 = (v36 & (v36 - 1)) != 0;
      }

      v55 = v54 | (2 * v36);
      v56 = vcvtps_u32_f32(v52 / v53);
      if (v55 <= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      if (v57 == 1)
      {
        v57 = 2;
      }

      else if ((v57 & (v57 - 1)) != 0)
      {
        prime = std::__next_prime(v57);
        v57 = prime;
      }

      v36 = *(this + 40);
      if (v57 > v36)
      {
        goto LABEL_77;
      }

      if (v57 < v36)
      {
        prime = vcvtps_u32_f32(*(this + 44) / *(this + 90));
        if (v36 < 3 || (v66 = vcnt_s8(v36), v66.i16[0] = vaddlv_u8(v66), v66.u32[0] > 1uLL))
        {
          prime = std::__next_prime(prime);
        }

        else
        {
          v67 = 1 << -__clz(prime - 1);
          if (prime >= 2)
          {
            prime = v67;
          }
        }

        if (v57 <= prime)
        {
          v57 = prime;
        }

        if (v57 >= v36)
        {
          v36 = *(this + 40);
        }

        else
        {
          if (v57)
          {
LABEL_77:
            v58 = mdm::zone_mallocator::instance(prime);
            v59 = pthread_rwlock_rdlock((v58 + 32));
            if (v59)
            {
              geo::read_write_lock::logFailure(v59, "read lock", v60);
            }

            v61 = malloc_type_zone_malloc(*v58, 8 * v57, 0x2004093837F09uLL);
            atomic_fetch_add((v58 + 24), 1u);
            geo::read_write_lock::unlock((v58 + 32));
            std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>((this + 312), v61);
            v62 = 0;
            *(this + 40) = v57;
            do
            {
              *(*(this + 39) + 8 * v62++) = 0;
            }

            while (v57 != v62);
            v63 = *(this + 42);
            if (v63)
            {
              v64 = v63[1];
              v65 = vcnt_s8(v57);
              v65.i16[0] = vaddlv_u8(v65);
              if (v65.u32[0] > 1uLL)
              {
                if (v64 >= v57)
                {
                  v64 %= v57;
                }
              }

              else
              {
                v64 &= v57 - 1;
              }

              *(*(this + 39) + 8 * v64) = this + 336;
              v74 = *v63;
              if (*v63)
              {
                do
                {
                  v75 = v74[1];
                  if (v65.u32[0] > 1uLL)
                  {
                    if (v75 >= v57)
                    {
                      v75 %= v57;
                    }
                  }

                  else
                  {
                    v75 &= v57 - 1;
                  }

                  if (v75 != v64)
                  {
                    v76 = *(this + 39);
                    if (!*(v76 + 8 * v75))
                    {
                      *(v76 + 8 * v75) = v63;
                      goto LABEL_115;
                    }

                    *v63 = *v74;
                    *v74 = **(v76 + 8 * v75);
                    **(v76 + 8 * v75) = v74;
                    v74 = v63;
                  }

                  v75 = v64;
LABEL_115:
                  v63 = v74;
                  v74 = *v74;
                  v64 = v75;
                }

                while (v74);
              }
            }

            v36 = v57;
            goto LABEL_119;
          }

          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>((this + 312), 0);
          v36 = 0;
          *(this + 40) = 0;
        }
      }

LABEL_119:
      if ((v36 & (v36 - 1)) != 0)
      {
        if (v35 >= v36)
        {
          v12 = v35 % v36;
        }

        else
        {
          v12 = v35;
        }
      }

      else
      {
        v12 = (v36 - 1) & v35;
      }

      goto LABEL_124;
    }

    v38 = *(v27 + 38);
    if (v38 == 1)
    {
      v68 = *(*(v27 + 8) + 72);
      v84 = v68;
      if (!v68)
      {
        goto LABEL_152;
      }

      v69 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 53, v68);
      if (!v69)
      {
        operator new();
      }

      v42 = v69[3];
      v41 = v69[4];
      if (!v41)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v38 != 2)
      {
        if (!*(v27 + 1297))
        {
          goto LABEL_152;
        }

        v70 = (*(**(v27 + 8) + 480))(*(v27 + 8), 0);
        if (!v70)
        {
          goto LABEL_152;
        }

        v71 = *(v70 + 23);
        if (v71 < 0)
        {
          v71 = *(v70 + 8);
        }

        if (!v71)
        {
          goto LABEL_152;
        }

        v72 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(this + 32, v70);
        if (!v72)
        {
          operator new();
        }

        v73 = v72[6];
        v41 = v72[7];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        md::LabelBase::setDedupingGroup(v27, v73);
LABEL_149:
        if (v41)
        {
          v80 = v41;
LABEL_151:
          std::__shared_weak_count::__release_shared[abi:nn200100](v80);
        }

LABEL_152:
        *(this + 758) = 1;
        return;
      }

      v39 = (*(**(v27 + 8) + 160))(*(v27 + 8));
      v84 = v39;
      if (!v39)
      {
        goto LABEL_152;
      }

      v40 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 46, v39);
      if (!v40)
      {
        operator new();
      }

      v42 = v40[3];
      v41 = v40[4];
      if (!v41)
      {
LABEL_144:
        md::LabelBase::setDedupingGroup(v27, v42);
        goto LABEL_149;
      }
    }

    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_144;
  }

  v15 = v13[6];
  v14 = v13[7];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v15;
  a1[1] = v14;
}

void sub_1B2BD3600(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

void sub_1B2BD48AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  v20 = *(v18 + 1344);
  *(v18 + 1344) = 0;
  if (v20)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v20);
  }

  v21 = *(v18 + 1304);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](a10, 0);
  v22 = *(v18 + 1200);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(v18 + 1136);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(v18 + 1120);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(v18 + 1104);
  *(v18 + 1104) = 0;
  if (v25)
  {
    MEMORY[0x1B8C62190](v25, 0x1000C4057661CB1);
  }

  v26 = *(v18 + 1096);
  *(v18 + 1096) = 0;
  if (v26)
  {
    MEMORY[0x1B8C62190](v26, 0x1000C4015B1EB14);
  }

  if (*(v18 + 912) == 1)
  {
    v27 = *(v18 + 888);
    if (v27)
    {
      *(v18 + 896) = v27;
      operator delete(v27);
    }
  }

  v28 = *(v18 + 760);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v18 + 744);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v18 + 728);
  *(v18 + 728) = 0;
  if (v30)
  {
    MEMORY[0x1B8C62190](v30, 0x1000C4057661CB1);
  }

  v31 = *(v18 + 720);
  *(v18 + 720) = 0;
  if (v31)
  {
    MEMORY[0x1B8C62190](v31, 0x1000C4015B1EB14);
  }

  v32 = *(v18 + 488);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(v18 + 408);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(v18 + 368);
  *(v18 + 368) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *a11;
  *a11 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v18 + 352);
  *(v18 + 352) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v18 + 328);
  *(v18 + 328) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(v18 + 320);
  *(v18 + 320) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(v18 + 304);
  *(v18 + 304) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(v18 + 296);
  *(v18 + 296) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *a12;
  *a12 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v18 + 112);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43 = *(v18 + 96);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  *(v18 + 24) = a13;
  v44 = *(v18 + 40);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v45);
  _Unwind_Resume(a1);
}

double md::LabelPoint::coordinate(float64x2_t *this, uint64_t a2)
{
  if (*(a2 + 45) == 1)
  {
    if (*(a2 + 40) == 3.4028e38)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = *(a2 + 40);
    }

    v5 = *(a2 + 24) * 6.28318531;
    v6 = exp(*(a2 + 32) * 6.28318531 + -3.14159265);
    v11 = atan(v6);
    v7 = fmod(v5, 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531);
    v9.f64[0] = v11;
    v9.f64[1] = v8;
    *this = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v9);
  }

  else
  {
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(a2, this);
    if (*(a2 + 40) == 3.4028e38)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = *(a2 + 40);
    }
  }

  result = v4;
  this[1].f64[0] = v4;
  return result;
}

void *md::PointLabelFeatureElement::extendedPosition(void *this, uint64_t a2)
{
  if (*(a2 + 64) != 3.4028e38 || (*(a2 + 100) & 1) != 0 || (*(a2 + 108) & 1) != 0 || *(a2 + 112) != 0.0)
  {
    operator new();
  }

  *this = 0;
  return this;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::__find_equal<std::pair<unsigned long long,md::LabelIdentifier>>(uint64_t a1, void *a2, unint64_t a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        v9 = *(v7 + 10);
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

_OWORD *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>(void **a1, unint64_t a2, unsigned int a3, _OWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = v6[4];
        v9 = *(v7 + 10);
        v10 = v9 > a3;
        if (v8 != a2)
        {
          v10 = v8 > a2;
        }

        if (!v10)
        {
          break;
        }

        v6 = *v7;
        v11 = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v12 = v9 < a3;
      v13 = v8 == a2;
      v14 = v8 < a2;
      if (v13)
      {
        v14 = v12;
      }

      if (!v14)
      {
        return v7;
      }

      v11 = v7 + 1;
      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v11 = a1 + 1;
LABEL_13:
    v15 = mdm::zone_mallocator::instance(a1);
    v16 = pthread_rwlock_rdlock((v15 + 32));
    if (v16)
    {
      geo::read_write_lock::logFailure(v16, "read lock", v17);
    }

    v18 = malloc_type_zone_malloc(*v15, 0x40uLL, 0x102004081FDBCCDuLL);
    atomic_fetch_add((v15 + 24), 1u);
    geo::read_write_lock::unlock((v15 + 32));
    v18[2] = **a4;
    *(v18 + 6) = 0;
    *(v18 + 7) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v7;
    *v11 = v18;
    v19 = **a1;
    v20 = v18;
    if (v19)
    {
      *a1 = v19;
      v20 = *v11;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v20);
    a1[3] = (a1[3] + 1);
  }

  return v18;
}

uint64_t std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>(uint64_t **a1, unint64_t a2, uint64_t *a3)
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
        return 0;
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

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10200409B2CA512uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = a3[1];
    v12[4] = *a3;
    v12[5] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    if (v14)
    {
      *a1 = v14;
      v12 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v12);
    a1[3] = (a1[3] + 1);
    return 1;
  }
}

uint64_t md::LabelMapTile::addLabel(uint64_t a1, unint64_t *a2)
{
  result = std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>((a1 + 416), *a2, a2);
  if (result)
  {
    v4 = *a2;

    return md::Label::incTileRefCount(v4);
  }

  return result;
}

_BYTE *md::Label::incTileRefCount(_BYTE *this)
{
  v1 = this;
  if (!atomic_fetch_add(this + 1384, 1u) && !this[844])
  {
    this[1295] = -1;
    this = md::Label::updateStateMachineForStaging(this, 0, 37);
  }

  v1[1349] = 0;
  *(v1 + 164) = 0;
  return this;
}

void md::Label::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 24))(a3, a1);
  v6 = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 48);
  md::LabelPoint::coordinate(__p, v6);
  *(a1 + 128) = *__p;
  *(a1 + 144) = v38;
  v7 = *(v6 + 40);
  v8 = v7 != 3.4028e38;
  if (v7 == 3.4028e38)
  {
    v7 = 0.0;
  }

  *(a1 + 188) = v7;
  *(a1 + 192) = v8;
  if (*(*(a2 + 232) + 17) == 1)
  {
    v9 = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 48);
    v10 = md::LabelPoint::mercatorPoint(v9);
    *(a1 + 664) = *v10;
    *(a1 + 672) = v10[1];
  }

  if (*(a1 + 1291) == 1)
  {
    v11 = *(a1 + 8);
    v12 = *(a2 + 3369) + *(a3 + 9);
    v13 = atomic_load((a2 + 3368));
    v14 = md::PointLabelFeature::elementAtZoom(v11, *(a1 + 48), (v12 - v13) & ~((v12 - v13) >> 31));
    if (v14 && (v15 = v14, *(v14 + 128) == 1))
    {
      v16 = *(a1 + 704);
      if (!v16)
      {
        operator new();
      }

      *v16 = *(v15 + 80);
      *(v16 + 8) = *(v15 + 88);
      *(v16 + 16) = *(v15 + 129);
    }

    else
    {
      v17 = *(a1 + 704);
      if (!v17)
      {
        goto LABEL_14;
      }

      *(a1 + 704) = 0;
      MEMORY[0x1B8C62190](v17, 0x1000C4057661CB1);
    }

    *(a1 + 1382) = 1;
  }

LABEL_14:
  if (*(a2 + 3022) == 1)
  {
    v18 = *(a3 + 336);
    if (*(a1 + 64) == v18)
    {
      goto LABEL_24;
    }

    v19 = *(a3 + 344);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(a1 + 72);
    *(a1 + 64) = v18;
    *(a1 + 72) = v19;
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 64))
  {
    goto LABEL_24;
  }

  v20 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v20)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

LABEL_23:
  ++*(a1 + 96);
LABEL_24:
  v21 = *(a3 + 304);
  if (*(a1 + 80) != v21)
  {
    v22 = *(a3 + 312);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    ++*(a1 + 100);
  }

  if (*(a1 + 1291) == 1)
  {
    v24 = *(a1 + 8);
    v25 = *(v24 + 440);
    if (v25)
    {
      v26 = v24 + 440;
      v27 = *(a1 + 48);
      v28 = v26;
      do
      {
        v29 = *(v25 + 32);
        v30 = v29 >= v27;
        v31 = v29 < v27;
        if (v30)
        {
          v28 = v25;
        }

        v25 = *(v25 + 8 * v31);
      }

      while (v25);
      if (v28 != v26 && v27 >= *(v28 + 32))
      {
        v32 = *(v28 + 40);
        v33 = *(v28 + 48);
        if (v32 != v33 && (*(v28 + 147) & 1) != 0)
        {
          v34 = (v33 - v32) >> 3;
          if (!(v34 >> 59))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::PointLabelZoomPosition>>(v34);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }
      }
    }

    LOBYTE(__p[0]) = 0;
    v35 = (a1 + 864);
    if (*(a1 + 888))
    {
      v36 = *v35;
      if (*v35)
      {
        *(a1 + 872) = v36;
        operator delete(v36);
      }

      *(a1 + 888) = 0;
    }

    *(a1 + 861) = -1;
  }
}

void sub_1B2BD5878(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double md::StandardLabelMapTile::assignWorldPointToLabel(md::StandardLabelMapTile *this, md::Label *a2)
{
  v4 = (*(**(a2 + 1) + 120))(*(a2 + 1), a2 + 48, *(this + 9), *(this + 70));
  v5 = md::LabelPoint::mercatorPoint(v4);
  v6 = *(v5 + 8);
  v7 = *v5 + *(this + 40);
  v12[2] = 0;
  *v12 = v7;
  v12[1] = v6;
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = 0x3FF0000000000000;
  v8 = v4[10];
  v9 = v8 != 3.4028e38;
  if (v8 == 3.4028e38)
  {
    v8 = 0.0;
  }

  return md::Label::setWorldPoint(a2, v12, v11, LODWORD(v8) | (v9 << 32));
}

__int128 *md::PointLabelFeature::labelPointWithElevationUpdate(md::LabelPoint *a1, unsigned int *a2, int a3, md::PointLabelFeatureBase *this)
{
  v4 = *(a1 + 55);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = (a1 + 440);
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != (a1 + 440) && v5 >= *(v6 + 8))
  {
    if (this)
    {
      if ((*(v6 + 146) & 1) == 0)
      {
        md::PointLabelFeatureBase::updatePointElevation(this, (v6 + 148), (v6 + 9), this);
      }
    }

    return (v6 + 9);
  }

  else
  {
LABEL_9:
    md::LabelPoint::NullPoint(a1);
    return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
  }
}

double md::Label::setWorldPoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(a1 + 188) = a4;
  *(a1 + 192) = BYTE4(a4);
  *(a1 + 859) = BYTE4(a4) & 1;
  do
  {
    *(a1 + 496 + v4) = *(a2 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v5 = 0;
  v6 = *&a4;
  if ((a4 & 0x100000000) == 0)
  {
    v6 = 0.0;
  }

  v7 = *(a1 + 232) * v6;
  *(a1 + 680) = v7;
  do
  {
    *(&v11 + v5) = *(a3 + v5) * v7;
    v5 += 8;
  }

  while (v5 != 24);
  v8 = 0;
  v9 = v12;
  *(a1 + 568) = v11;
  *(a1 + 584) = v9;
  do
  {
    result = *(a3 + v8);
    *(a1 + 544 + v8) = result;
    v8 += 8;
  }

  while (v8 != 24);
  return result;
}

uint64_t md::LabelRouteCollisionInfo::collisionInfoForZoom(md::LabelRouteCollisionInfo *this, unsigned int a2)
{
  if (a2 >> 1 >= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = a2 >> 1;
  }

  v3 = *(*this + 8 * v2);
  if (!v3)
  {
    operator new();
  }

  return v3 + 8;
}

void sub_1B2BD61C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollisionPath>(v5, v4);
  }

  return a1;
}

void std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollisionPath>(v2, v1);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>,gdc::LayerDataRequestKeyPair*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 8;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 15;
      *(v5 - 8) = v8;
      v5 = gdc::LayerDataRequestKey::LayerDataRequestKey(v5, (v6 + 1)) + 120;
      v6 = v7;
    }

    while (v7 != a2);
    do
    {
      v9 = v4[3];
      if (v9 != v4[5])
      {
        free(v9);
      }

      v4 += 15;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::LayerDataRequestKeyPair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 120;
    v4 = *(v2 - 96);
    if (v4 == *(v2 - 80))
    {
      v2 -= 120;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL md::PointLabelFeatureBase::setFlexZone(md::PointLabelFeatureBase *this, unsigned __int8 a2)
{
  v2 = *(this + 244);
  if (v2 != a2)
  {
    *(this + 244) = a2;
  }

  return v2 != a2;
}

uint64_t md::MapTileData::estimatedCost(md::MapTileData *this)
{
  v1 = *(this + 86);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

void md::Label::~Label(md::Label *this)
{
  *this = &unk_1F2A476D0;
  *(this + 5) = &unk_1F2A47728;
  if (*(this + 483) == 1)
  {
    *(*(this + 57) + 285) = 1;
  }

  atomic_fetch_add(md::Label::_totalLabels, 0xFFFFFFFF);
  v2 = *(this + 165);
  *(this + 165) = 0;
  if (v2)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v2);
  }

  v3 = *(this + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](this + 158, 0);
  v4 = *(this + 147);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 139);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 137);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 135);
  *(this + 135) = 0;
  if (v7)
  {
    MEMORY[0x1B8C62190](v7, 0x1000C4057661CB1);
  }

  v8 = *(this + 134);
  *(this + 134) = 0;
  if (v8)
  {
    MEMORY[0x1B8C62190](v8, 0x1000C4015B1EB14);
  }

  if (*(this + 888) == 1)
  {
    v9 = *(this + 108);
    if (v9)
    {
      *(this + 109) = v9;
      operator delete(v9);
    }
  }

  v10 = *(this + 92);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 90);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 88);
  *(this + 88) = 0;
  if (v12)
  {
    MEMORY[0x1B8C62190](v12, 0x1000C4057661CB1);
  }

  v13 = *(this + 87);
  *(this + 87) = 0;
  if (v13)
  {
    MEMORY[0x1B8C62190](v13, 0x1000C4015B1EB14);
  }

  v14 = *(this + 58);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 48);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 43);
  *(this + 43) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 42);
  *(this + 42) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 41);
  *(this + 41) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 38);
  *(this + 38) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 37);
  *(this + 37) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 35);
  *(this + 35) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 34);
  *(this + 34) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 33);
  *(this + 33) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(this + 9);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  *this = &unk_1F2A3C020;
  v26 = *(this + 2);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }
}

{
  md::Label::~Label(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    if ((v7 + 1) > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x124924924924924)
    {
      v10 = 0x249249249249249;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
    }

    v11 = 112 * v7;
    gdc::LayerDataRequestKey::LayerDataRequestKey(v11, a2);
    v18 = (v11 + 112);
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = a1[2];
    v16 = v18;
    *(a1 + 1) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v17);
    v6 = v16;
  }

  else
  {
    result = gdc::LayerDataRequestKey::LayerDataRequestKey(v3, a2);
    v6 = result + 112;
  }

  a1[1] = v6;
  return result;
}

uint64_t std::vector<gdc::LayerDataRequestKeyPair>::push_back[abi:nn200100](uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0x222222222222222)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>>(v10);
    }

    v11 = 120 * v7;
    *v11 = *a2;
    v5 = 120 * v7 + 120;
    gdc::LayerDataRequestKey::LayerDataRequestKey(v11 + 8, (a2 + 1));
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>,gdc::LayerDataRequestKeyPair*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v5;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<gdc::LayerDataRequestKeyPair>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 15);
    result = gdc::LayerDataRequestKey::LayerDataRequestKey((v4 + 1), (a2 + 1));
  }

  a1[1] = v5;
  return result;
}

uint64_t *std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (v2 + 24);
    std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void gdc::LayerDataRequest::~LayerDataRequest(gdc::LayerDataRequest *this)
{
  v3 = *(this + 15);
  v4 = *(this + 16);
  v2 = (this + 120);
  while (v3 != v4)
  {
    for (i = *(v3 + 24); i; i = *i)
    {
      v6 = *(this + 24);
      v14 = (i + 2);
      v7 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>((v6 + 8), i + 16);
      v7[15] = (v7[15] - 1);
    }

    v3 += 48;
  }

  v8 = *(this + 18);
  v9 = *(this + 19);
  while (v8 != v9)
  {
    for (j = *(v8 + 24); j; j = *j)
    {
      v11 = *(this + 24);
      v14 = (j + 2);
      v12 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>((v11 + 8), j + 16);
      v12[15] = (v12[15] - 1);
    }

    v8 += 48;
  }

  v14 = (this + 168);
  std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 144);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = v2;
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v13 = *(this + 2);
  if (v13 != *(this + 4))
  {
    free(v13);
  }
}

uint64_t md::RouteAnnotationLabelFeature::facingVector(uint64_t a1)
{
  if (*(a1 + 380) == 1)
  {
    return *(a1 + 384);
  }

  else
  {
    return 0;
  }
}

void std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 48;
        std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::LayerDataRequestKeyPair>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 120)
  {
    v4 = *(i - 96);
    if (v4 != *(i - 80))
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

void **std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](void **a1, uint64_t a2)
{
  v3 = std::__tree<gdc::LayerDataWithWorld>::__emplace_hint_unique_key_args<gdc::LayerDataWithWorld,gdc::LayerDataWithWorld const&>(*a1, a1[1], *a2, *(a2 + 16));
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 104);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v10 == v4)
    {
      if (gdc::LayerDataRequestKey::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
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

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 104);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v4 == v10)
    {
      if (gdc::LayerDataRequestKey::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
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

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t md::RouteAnnotationLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 256);
  *a2 = *(this + 248);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::LabelBase::setDedupingGroup(md::LabelBase *this, md::LabelDedupingGroup *a2)
{
  *(this + 3) = a2;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v5 >= v4)
  {
    v7 = *(a2 + 1);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v22[4] = a2 + 32;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[8 * v11];
    v14 = &v13[8 * v8];
    *v14 = this;
    v6 = v14 + 8;
    v16 = *(a2 + 1);
    v17 = *(a2 + 2) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(a2 + 1);
    *(a2 + 1) = v18;
    *(a2 + 2) = v6;
    v20 = *(a2 + 3);
    *(a2 + 3) = v15;
    v22[2] = v19;
    v22[3] = v20;
    v22[0] = v19;
    v22[1] = v19;
    std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v5 = this;
    v6 = v5 + 1;
  }

  *(a2 + 2) = v6;
  return (*(*a2 + 40))(a2, this);
}

uint64_t geo::small_vector_base<md::OcclusionTest>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[10];
      if (v4 != v2[12])
      {
        free(v4);
      }

      v5 = v2[1];
      if (v5 != v2[3])
      {
        free(v5);
      }

      v2 += 31;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t md::LabelFeature::dedupingFeatureID(md::LabelFeature *this)
{
  if ((*(*this + 176))(this) || (*(*this + 160))(this))
  {
    return 4;
  }

  result = (*(*this + 168))(this);
  if (result)
  {
    (*(*this + 168))(this);
    return 3;
  }

  return result;
}

void md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F2A4BA20;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 255;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = a4;
  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2BD7240(_Unwind_Exception *exception_object)
{
  v3 = v1[33];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = v1[31];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[29];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::find<md::LabelFeatureID>(void *a1, unsigned __int8 a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (*(result + 16) == a2 && result[3] == a3)
      {
        return result;
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

  return result;
}

float64_t md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::BaseMapTileDataRenderable *this, const md::MapTileData *a2)
{
  v4 = 1 << *(a2 + 169);
  v5 = 1.0 / v4;
  v6 = v5 * *(a2 + 44);
  v7 = v5 * (v4 + ~*(a2 + 43));
  v8 = v6 + v5;
  *(this + 8) = v6;
  *(this + 9) = v7;
  *(this + 10) = v6 + v5;
  *(this + 11) = v7 + v5;
  v9 = *(a2 + 168);
  *(this + 33) = *(a2 + 177);
  *(this + 24) = v9;
  if (*(this + 56))
  {
    v10 = *(this + 56);
    *(this + 8) = v6 + v10;
    *(this + 10) = v8 + v10;
  }

  if (*(this + 384) == 1)
  {
    v11 = geo::OrientedBox<double,3u,double,double>::operator=(this + 272, a2 + 200);
    if ((*(*a2 + 40))(a2, v11))
    {
      {
        *&qword_1EB829F58 = 0u;
        *&algn_1EB829F60[24] = 0u;
        unk_1EB829F98 = 0u;
        unk_1EB829F88 = 0u;
        *&algn_1EB829F60[8] = 0u;
        unk_1EB829F48 = 0u;
        unk_1EB829F38 = 0u;
        qword_1EB829FA8 = 0x3FF0000000000000;
        md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::MapTileData const*)::kTileSkirtsFactorMatrix = 0x3FF00029F16B11C7;
        qword_1EB829F58 = 0x3FF00029F16B11C7;
        qword_1EB829F80 = 0x3FF0000000000000;
      }

      v12 = 0;
      v13 = (a2 + 352);
      do
      {
        v14 = 0;
        v15 = &md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::MapTileData const*)::kTileSkirtsFactorMatrix;
        do
        {
          v16 = 0;
          v17 = 0.0;
          v18 = v13;
          do
          {
            v19 = *v18;
            v18 += 4;
            v17 = v17 + *&v15[v16++] * v19;
          }

          while (v16 != 4);
          *(&v41[2 * v14++] + v12) = v17;
          v15 += 4;
        }

        while (v14 != 4);
        ++v12;
        ++v13;
      }

      while (v12 != 4);
      v20 = v45;
      *(this + 10) = v44;
      *(this + 11) = v20;
      v21 = v47;
      *(this + 12) = v46;
      *(this + 13) = v21;
      v22 = v41[1];
      *(this + 6) = v41[0];
      *(this + 7) = v22;
      *&v23.f64[0] = v42;
      v24 = v43;
      *(this + 8) = v42;
      *(this + 9) = v24;
    }

    else
    {
      for (i = 0; i != 128; i += 8)
      {
        v23.f64[0] = *(a2 + i + 352);
        *(this + i + 96) = v23.f64[0];
      }
    }
  }

  else
  {
    v25 = (*(*a2 + 40))(a2);
    v26 = *(this + 11);
    if (v25)
    {
      v27.f64[0] = *(this + 10);
      *(this + 104) = 0u;
      *(this + 120) = 0u;
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 23) = 0;
      v27.f64[1] = v26;
      v28 = *(this + 4);
      v29 = vsubq_f64(v27, v28);
      v30 = vmulq_f64(vmaxnmq_f64(v29, 0), vdupq_n_s64(0x3FF00029F16B11C7uLL));
      __asm { FMOV            V3.2D, #0.5 }

      v23 = vmlaq_f64(v28, _Q3, vsubq_f64(v29, v30));
      *(this + 17) = *&v30.f64[1];
      *(this + 12) = *&v30.f64[0];
      *(this + 22) = *&v30.f64[0];
      *(this + 12) = v23;
    }

    else
    {
      v37 = *(this + 8);
      v38 = *(this + 9);
      v39 = *(this + 10) - v37;
      *(this + 12) = v39;
      *(this + 104) = 0u;
      *(this + 120) = 0u;
      *(this + 17) = v26 - v38;
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 22) = v39;
      *(this + 23) = 0;
      *(this + 24) = v37;
      *(this + 25) = v38;
      v23.f64[0] = 0.0;
    }

    *(this + 13) = xmmword_1B33B0740;
  }

  return v23.f64[0];
}

uint64_t *md::Label::createNextPart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1335) = 1;
  LOBYTE(v40[0]) = 1;
  memset(v40 + 1, 0, 7);
  v6 = *(a1 + 264);
  if (v6 || (v6 = *(a1 + 272)) != 0)
  {
    (*(*v6 + 440))(v6, v40);
  }

  if (a3)
  {
    if (*(a3 + 8) == 1)
    {
      LOBYTE(v40[0]) = *a3;
    }

    if (*(a3 + 9) == 1)
    {
      HIBYTE(v40[0]) = *(a3 + 1);
    }

    if (*(a3 + 10) == 1)
    {
      LOBYTE(v40[1]) = *(a3 + 2);
    }

    if (*(a3 + 11) == 1)
    {
      HIBYTE(v40[1]) = *(a3 + 3);
    }

    v40[3] = *(a3 + 6);
  }

  if ((*(**(*(a2 + 168) + 32) + 24))(*(*(a2 + 168) + 32)))
  {
    LOBYTE(v40[0]) = 0;
  }

  atomic_load((a1 + 1330));
  v7 = *(a1 + 8);
  v8 = *(a1 + 48);
  v9 = atomic_load((a1 + 1328));
  result = (*(*v7 + 568))(v7, v8, 0, v9 & 1, 0);
  v11 = *result;
  if (*result)
  {
    v12 = result;
    v13 = *(*(a1 + 8) + 132);
    *(a1 + 1295) = *(a1 + 404);
    v14 = *(a2 + 3336);
    *(a1 + 52) = v13;
    *(a1 + 56) = v14;
    *(a1 + 1371) = 0;
    *(a1 + 1373) = 0;
    *(a1 + 1376) = 0;
    if (*(a1 + 1338) == 1)
    {
      *(a1 + 1338) = 0;
      *(a1 + 1375) = 4;
      v15 = atomic_load((a1 + 1328));
      if (v15)
      {
        if ((*(a1 + 1333) & 1) != 0 || (v16 = atomic_load((a1 + 1328)), (v16) && (*(a1 + 1333) & 1) == 0 || (*(a1 + 1333)) && *(a1 + 846) != 1)
        {
          v17 = 4;
          v18 = 3;
        }

        else
        {
          v17 = 2;
          v18 = 1;
        }

        *(a1 + 1376) = v18;
        *(a1 + 1377) = v17;
        *(a1 + 857) = 1;
        goto LABEL_51;
      }

      v24 = atomic_load((a1 + 1331));
      if (v24)
      {
        *(a1 + 1373) = 1;
        *(a1 + 858) = 1;
        *(a1 + 1376) = *(a1 + 1377);
        goto LABEL_51;
      }
    }

    else
    {
      v19 = *(v11 + 296);
      if (!v19)
      {
        v20 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v11, 0);
        v19 = *v20;
        *(v11 + 296) = *v20;
      }

      if (*(v19 + 88) == 11)
      {
        v21 = *(a1 + 1272);
        if (v21)
        {
          if ((v22 = *(v21 + 52), v22 == 1) || v22 == 2 && *(*(*v21 + 424) + 336) - *(v21 + 104) < 0.5 || *(a1 + 1361) == 1)
          {
            if (*(a2 + 3703) == 1)
            {
              *(a1 + 1375) = 2308;
LABEL_51:
              v26 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a1, *v12, v40);
              v27 = *(a1 + 264);
              *(a1 + 264) = v26;
              if (v27)
              {
                v27 = (*(*v27 + 8))(v27);
                v26 = *(a1 + 264);
              }

              *(a1 + 1361) = 0;
              if (v26 || (v34 = mdm::zone_mallocator::instance(v27), v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v34, 0x240uLL), bzero(v26, 0x240uLL), v35 = md::LabelPart::LabelPart(v26), *v26 = &unk_1F2A47848, v36 = *(a1 + 264), *(a1 + 264) = v26, !v36) || (result = (*(*v36 + 8))(v36, v35), (v26 = *(a1 + 264)) != 0))
              {
                (*(*v26 + 16))(v26, a1);
                v28 = *(a1 + 272);
                if (v28)
                {
                  v29 = *(a1 + 264);
                  v30 = (*(*v28 + 432))(v28);
                  (*(*v29 + 424))(v29, v30);
                }

                if (*(a1 + 1363) & 1) != 0 || (v31 = atomic_load((a1 + 1328)), (v31))
                {
                  (*(**(a1 + 264) + 824))(*(a1 + 264), 3);
                }

                (*(**(a1 + 264) + 72))(*(a1 + 264), a2);
                result = (*(**(a1 + 264) + 536))(&v38);
                v32 = v38;
                *(a1 + 312) = v38;
                v33 = v39;
                *(a1 + 316) = v39;
                *(a1 + 317) = v32;
                *(a1 + 321) = v33;
                atomic_load((a1 + 1330));
              }

              return result;
            }
          }
        }
      }

      if (*(a2 + 3407) == 1)
      {
        v23 = 2;
LABEL_50:
        *(a1 + 1375) = v23;
        goto LABEL_51;
      }

      if ((*(a1 + 1333) & 1) == 0)
      {
        v25 = atomic_load((a1 + 1328));
        if ((v25 & 1) != 0 && (*(a1 + 1333) & 1) == 0 && *(a1 + 846) != 1)
        {
          v23 = 1;
          *(a1 + 850) = 1;
          goto LABEL_50;
        }
      }

      if (*(a1 + 1383) == 1)
      {
        *(a1 + 1375) = 1797;
        *(a1 + 1383) = 0;
        *(a1 + 480) = 1;
        *(a1 + 1372) = 257;
        goto LABEL_51;
      }

      if (*(a1 + 1392) != -1 && (*(a1 + 1343) & 1) == 0)
      {
        *(a1 + 1375) = 4;
        if ((*(**(a1 + 8) + 360))(*(a1 + 8)))
        {
          v37 = 6;
        }

        else
        {
          v37 = 5;
        }

        *(a1 + 1376) = v37;
        *(a1 + 1373) = 1;
        goto LABEL_51;
      }
    }

    v23 = 3;
    goto LABEL_50;
  }

  return result;
}

void md::MapTileDataRenderable<md::DaVinciTrafficTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C0B0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A4BA20;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

{
  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PointLabelFeature::newRootPart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v137[4] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v10 = *(a3 + 392);
  v11 = atomic_load((a2 + 3368));
  v12 = md::PointLabelFeature::elementAtZoom(a1, *(a3 + 48), (v10 - v11) & ~((v10 - v11) >> 31));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v125 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137[3] = 0;
  LOBYTE(__p.__begin_) = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v120 = a2;
  v121 = a3;
  v122 = a4;
  v123 = a1 + 87;
  begin = (*(*a1 + 688))(&v117, a1);
  if (v125 == v118)
  {
    if (v125)
    {
      begin = __p.__begin_;
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      __p = v117;
      memset(&v117, 0, sizeof(v117));
    }
  }

  else if (v125)
  {
    begin = __p.__begin_;
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    v125 = 0;
  }

  else
  {
    __p = v117;
    memset(&v117, 0, sizeof(v117));
    v125 = 1;
  }

  v113 = a5;
  if (v118 == 1)
  {
    begin = v117.__begin_;
    if (v117.__begin_)
    {
      v117.__end_ = v117.__begin_;
      operator delete(v117.__begin_);
    }
  }

  v126 = v13;
  if (*(a3 + 804) >= *(a3 + 204))
  {
    v16 = *(a4 + 250);
  }

  else
  {
    v16 = *(a4 + 250) | 2;
  }

  if (v125 == 1)
  {
    v17 = *(a4 + 296);
    if (!v17)
    {
      begin = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a4, 0);
      v17 = *begin;
      *(a4 + 296) = *begin;
    }

    v18 = *(v17 + 97);
    if (v18)
    {
      if ((v125 & 1) == 0)
      {
        v107 = std::__throw_bad_optional_access[abi:nn200100]();
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v137);
        if (SHIBYTE(v136) < 0)
        {
          operator delete(v134);
        }

        if (v125 == 1 && __p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        _Unwind_Resume(v107);
      }

      if (v18 - 1 < (__p.__end_ - __p.__begin_))
      {
        std::vector<unsigned int>::resize(&__p, v18 - 1);
      }
    }
  }

  if ((v16 & 1) == 0)
  {
    v112 = 0;
    v19 = 0;
    goto LABEL_56;
  }

  v20 = *(a4 + 296);
  if (!v20)
  {
    v21 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a4, 0);
    v20 = *v21;
    *(a4 + 296) = *v21;
  }

  v112 = *(v20 + 88) == 9;
  if ((*(a3 + 1358) & 1) == 0)
  {
    v22 = atomic_load((a3 + 1328));
    if (v22 & 1) != 0 && (*(a3 + 1333))
    {
      goto LABEL_48;
    }
  }

  v23 = v122;
  v24 = *(v122 + 34);
  if (!v24)
  {
    v25 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v122);
    v24 = *v25;
    *(v23 + 34) = *v25;
  }

  if ((*(v24 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(v24 + 248))
    {
      goto LABEL_48;
    }
  }

  else if (!*(v24 + 263))
  {
    goto LABEL_48;
  }

  v27 = v121;
  v26 = v122;
  v28 = v120;
  v29 = *(v122 + 34);
  if (!v29)
  {
    v30 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v122);
    v29 = *v30;
    *(v26 + 34) = *v30;
  }

  v31 = md::LabelStyle::namedIcon(&v117, v26, v28, v27, v29 + 240);
  if (v117.__begin_)
  {
    v32 = mdm::zone_mallocator::instance(v31);
    v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v32, 0x350uLL);
    md::PointIconLabelPart::PointIconLabelPart(v19, &v117, v120, v121, v122, 0);
  }

  else
  {
    v19 = 0;
  }

  if (v117.__end_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117.__end_);
  }

  if (!v19)
  {
LABEL_48:
    begin = (*(*a1 + 672))(a1, &v120);
    v19 = begin;
    if (!begin)
    {
      goto LABEL_56;
    }
  }

  begin = (*(*v19 + 176))(v19, 1);
  if ((*(a3 + 1333) & 1) == 0)
  {
    v33 = atomic_load((a3 + 1328));
    if ((v33 & 1) != 0 && (*(a3 + 1333) & 1) == 0 && *(a3 + 846) != 1)
    {
      *(v19 + 567) = 1;
    }
  }

  if (*(a1 + 692) == 1)
  {
    *(v19 + 567) = *(a2 + 3705) ^ 1;
    *(v19 + 568) = 1;
  }

LABEL_56:
  if ((v16 & 2) == 0)
  {
LABEL_57:
    v34 = 0;
    goto LABEL_58;
  }

  v34 = 0;
  v36 = *(a4 + 144);
  if (v36 <= 5)
  {
    if (*(a4 + 144) && v36 != 2)
    {
      if (v36 != 5)
      {
        goto LABEL_58;
      }

      v37 = md::PointLabelFeature::resolveAnnotationLayout(8, a4);
      begin = md::PointLabelFeature::createAnnotationPart(a1, &v120, 1, v37);
      goto LABEL_169;
    }

    v38 = (*a1 + 704);
    goto LABEL_70;
  }

  if (v36 - 10 < 2)
  {
    v39 = (*(*a1 + 728))(a1, &v120);
    v40 = 1;
LABEL_72:
    begin = md::PointLabelFeature::newTextPart(a1, &v120, v39, v40);
    v41 = begin;
    if (begin)
    {
      v42 = md::PointLabelFeature::resolveAnnotationLayout(v16, a4);
      v43 = md::PointLabelFeature::createAnnotationPart(a1, &v120, 1, v42);
      v44 = *(a4 + 312);
      if (!v44)
      {
        v45 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a4);
        v44 = *v45;
        *(a4 + 312) = *v45;
      }

      v46 = *(v44 + 51);
      begin = md::PointLabelFeature::createAnnotationPart(a1, &v120, 2, v46);
      v47 = v46 == 6 || v42 == 6;
      v48 = v112;
      if (v47)
      {
        v48 = 1;
      }

      v112 = v48;
      if (v43 | begin)
      {
        v49 = v43;
        v50 = begin;
        v51 = mdm::zone_mallocator::instance(begin);
        v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v51, 0x2B8uLL);
        md::StackLabelPart::StackLabelPart(v34, 0, 0, 0, 0);
        (*(*v52 + 176))(v52, 6);
        begin = md::CompositeLabelPart::addLabelPart(v34, v41);
        if (v49)
        {
          begin = md::CompositeLabelPart::addLabelPart(v34, v49);
        }

        if (v50)
        {
          begin = md::CompositeLabelPart::addLabelPart(v34, v50);
        }
      }

      else
      {
        v34 = v41;
      }

      v35 = v19 != 0;
LABEL_88:
      v53 = *(a3 + 256);
      v54 = 131;
      if (v53 == 3)
      {
        v54 = 133;
      }

      v47 = v53 == 2;
      v55 = 132;
      if (!v47)
      {
        v55 = v54;
      }

      v56 = *(v13 + v55);
      v111 = a1[69] + 32 * v56;
      if (!v35 || *(a4 + 242) || (v85 = *v111, *v111 == *(v111 + 8)))
      {
        *v115 = 150994944;
        v115[4] = 0;
      }

      else
      {
        *v115 = *v85;
        v115[2] = 0;
        *&v115[3] = *(v85 + 3);
      }

      v57 = mdm::zone_mallocator::instance(begin);
      v58 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v57, 0x3C8uLL);
      v15 = v58;
      v59 = v58 + 664;
      v60 = (a3 + 317);
      v110 = *v113;
      if (*v113)
      {
        v60 = v115;
      }

      v109 = v60;
      v61 = *(v13 + 130);
      md::LabelPart::LabelPart(v58);
      *(v62 + 592) = 0;
      v63 = 0uLL;
      *(v62 + 576) = 0u;
      *(v62 + 608) = 0;
      *(v62 + 612) = 0;
      *(v62 + 616) = 0;
      *(v62 + 624) = 0;
      *(v62 + 628) = 1;
      *(v62 + 630) = 0;
      *v62 = &unk_1F2A5B868;
      *(v62 + 632) = 0u;
      *(v62 + 648) = 0u;
      *v59 = xmmword_1B33B0730;
      *(v62 + 680) = 0;
      *(v62 + 684) = 0u;
      *(v62 + 700) = 0u;
      *(v59 + 52) = xmmword_1B33B0730;
      *(v62 + 732) = 0;
      v108 = v62 + 736;
      *(v62 + 752) = 0;
      *(v62 + 736) = 0u;
      *(v62 + 768) = 0u;
      *(v62 + 784) = -1;
      *(v59 + 121) = 0;
      *(v62 + 792) = 0;
      v114 = (v62 + 800);
      *(v62 + 816) = 0;
      *(v62 + 800) = 0u;
      *(v62 + 832) = 150994944;
      *(v62 + 836) = 0;
      *(v62 + 840) = 9;
      v64 = *(a4 + 244);
      v65 = *(a4 + 248);
      *(v62 + 842) = *(a4 + 251);
      *(v62 + 843) = v65;
      *(v59 + 181) = v64;
      *(v62 + 847) = 9;
      *(v62 + 850) = 0x8000;
      *(v62 + 852) = 0x80;
      v66 = *(a4 + 272);
      if (!v66)
      {
        v67 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a4);
        v66 = *v67;
        *(a4 + 272) = *v67;
        v63 = 0uLL;
      }

      *(v15 + 853) = *(v66 + 64);
      *(v15 + 854) = 0;
      *(v15 + 856) = 0;
      v68 = *(a4 + 253);
      *(v15 + 857) = v68;
      *(v15 + 858) = v68;
      v69 = *(a4 + 164);
      *(v15 + 860) = v69 > 0.0;
      v70 = 1065353216;
      *(v15 + 864) = 1065353216;
      *(v15 + 888) = v63;
      *(v15 + 904) = v63;
      *(v15 + 920) = 0;
      *(v15 + 921) = 1;
      v71 = *(a4 + 250);
      *(v15 + 922) = v71;
      *(v15 + 923) = *(a4 + 144);
      *(v15 + 924) = *(v66 + 70);
      *(v15 + 941) = 0;
      *(v15 + 925) = v63;
      *(v15 + 943) = v61;
      *(v15 + 944) = v56;
      *(v15 + 945) = 0;
      *(v15 + 947) = 2;
      *(v15 + 948) = 1065353216;
      *(v15 + 952) = 0x100000001000001;
      *(v15 + 960) = *(a3 + 1353);
      if (v68 == 5)
      {
        if ((*(a3 + 164) & 1) == 0)
        {
          v72 = 4;
LABEL_105:
          *(v15 + 858) = v72;
        }
      }

      else if (!v68 && v69 > 0.0)
      {
        v72 = 1;
        goto LABEL_105;
      }

      if (*(a3 + 1348) == 1 && *(a2 + 3176) == 1)
      {
        *(v15 + 954) = 1;
      }

      v73 = *(a2 + 424);
      if (v19)
      {
        md::CompositeLabelPart::addLabelPart(v15, v19);
        *(v15 + 925) = 1;
      }

      else if (v71)
      {
        md::LabelIconStyleMonitor::initialize(v108, 1, a4);
      }

      if (v34)
      {
        md::CompositeLabelPart::addLabelPart(v15, v34);
        *(v15 + 930) = (*(*v34 + 680))(v34);
        *(v15 + 926) = 1;
        *(v15 + 955) = *(a2 + 3664);
        v74 = *(v15 + 922);
        *(v15 + 927) = (v74 & 0x1C) != 0;
        *(v15 + 928) = (v74 & 4) != 0;
        *(v15 + 942) = 1;
        md::AnnotationMonitorProperties::init((v15 + 933), a4);
        v75 = *(*(a3 + 8) + 480);
        if (v75)
        {
          v76 = *(v75 + 88);
          *(v15 + 946) = v76;
          if (v76)
          {
            *(v15 + 947) = v76;
          }
        }

        else
        {
          *(v15 + 946) = 0;
        }
      }

      v77 = *(v15 + 858);
      *(v15 + 565) = *(v15 + 858) != 0;
      if (v77)
      {
        operator new();
      }

      if (!v19 || *(a4 + 242) || *(v15 + 842) == 5)
      {
        *(v15 + 921) = 1;
        *(v15 + 958) = 1;
        if (v34)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v90 = *v111;
        v91 = *(v111 + 8);
        v92 = *(v111 + 24) == 1 && 0xCCCCCCCCCCCCCCCDLL * (v91 - v90) < 2;
        *(v15 + 921) = v92;
        *(v15 + 958) = v90 == v91;
        if (v34)
        {
          if (v90 != v91)
          {
            LOWORD(v117.__begin_) = *v90;
            BYTE2(v117.__begin_) = 0;
            *(&v117.__begin_ + 3) = *(v90 + 3);
            goto LABEL_125;
          }

LABEL_124:
          LODWORD(v117.__begin_) = 150994944;
          BYTE4(v117.__begin_) = 0;
LABEL_125:
          md::CaptionedIconLabelPart::populatePlacement(v15, v15 + 837, &v117, 1);
          v79 = *(a4 + 246);
          *(v15 + 856) = ((v79 & 0xAA) != 0) | *(v111 + 25) & 1;
          if (*(v15 + 958) != 1 || v79)
          {
            md::CaptionedIconLabelPart::populatePlacement(v15, v15 + 832, v109, v110);
          }

          else
          {
            *(v15 + 832) = *(v15 + 837);
            *(v15 + 836) = *(v15 + 841);
          }

          v80 = *(v15 + 832);
          v82 = v80 == 3 || v80 == 100;
          *(v15 + 855) = v82;
          *(v15 + 920) = (v80 & 0xFE) == 2;
          if (v80 == 5)
          {
            LOBYTE(v83) = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(a3, v73, v78);
            goto LABEL_145;
          }

          if ((v80 & 0xFE) == 2)
          {
            v84 = v73[472] + *(v15 + 836);
            if (*(v15 + 856) != 1)
            {
              v83 = ((v84 + 32) >> 5) & 6;
              goto LABEL_145;
            }
          }

          else
          {
            v83 = *(v15 + 835);
            if (v83 != 10)
            {
              goto LABEL_145;
            }

            LOBYTE(v84) = *(v15 + 836);
          }

          LOBYTE(v83) = (v84 + 16) >> 5;
LABEL_145:
          *(v15 + 847) = v83;
          (*(*v34 + 376))(v34);
          v86 = *(v15 + 833);
          v87 = *(v15 + 847);
          if (v86 > 7)
          {
            if (v86 != 8)
            {
              if (v86 == 16)
              {
                if (v87 == 6)
                {
                  v86 = 8;
                }

                else
                {
                  v86 = 1;
                }

                if (v87 == 2)
                {
                  v86 = 4;
                }

                goto LABEL_160;
              }

              goto LABEL_164;
            }

            v88 = &diagonalDownLabelAnchors;
          }

          else
          {
            if (v86 == 1)
            {
LABEL_165:
              *(v15 + 848) = v86;
LABEL_176:
              if (*(v15 + 955) == 1)
              {
                if (*(v15 + 921))
                {
                  md::CaptionedIconLabelPart::initAlternatePlacements(v15);
                }

                else
                {
                  v93 = *(v15 + 800);
                  *(v15 + 808) = v93;
                  v94 = *v111;
                  v95 = *(v111 + 8);
                  if (*v111 != v95)
                  {
                    do
                    {
                      *v116 = 150994944;
                      v116[4] = 0;
                      v96 = md::CaptionedIconLabelPart::populatePlacement(v15, v116, v94, 1);
                      v97 = v116[0];
                      if (__PAIR64__(v116[1], v116[0]) != __PAIR64__(*(v15 + 833), *(v15 + 832)) || v116[3] != *(v15 + 835) || v116[3] == 10 && v116[4] != *(v15 + 836))
                      {
                        v98 = *(v15 + 816);
                        if (v93 >= v98)
                        {
                          v99 = 0xCCCCCCCCCCCCCCCDLL * (v93 - *v114);
                          v100 = v99 + 1;
                          if (v99 + 1 >= 0x3333333333333334)
                          {
                            std::__throw_bad_array_new_length[abi:nn200100]();
                          }

                          v101 = 0xCCCCCCCCCCCCCCCDLL * (v98 - *v114);
                          if (2 * v101 > v100)
                          {
                            v100 = 2 * v101;
                          }

                          if (v101 >= 0x1999999999999999)
                          {
                            v102 = 0x3333333333333333;
                          }

                          else
                          {
                            v102 = v100;
                          }

                          v119 = v15 + 824;
                          if (v102)
                          {
                            v103 = mdm::zone_mallocator::instance(v96);
                            v104 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v103, v102);
                          }

                          else
                          {
                            v104 = 0;
                          }

                          v105 = v104 + 5 * v99;
                          v117.__begin_ = v104;
                          v117.__end_ = v105;
                          v118 = v104 + 5 * v102;
                          *v105 = v97;
                          v105[1] = v116[1];
                          v105[2] = 0;
                          *(v105 + 3) = *&v116[3];
                          v117.__end_cap_.__value_ = (v105 + 5);
                          std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v114, &v117);
                          v93 = *(v15 + 808);
                          std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v117);
                        }

                        else
                        {
                          *v93 = *v116;
                          *(v93 + 2) = 0;
                          *(v93 + 3) = *&v116[3];
                          v93 += 5;
                        }

                        *(v15 + 808) = v93;
                      }

                      v94 += 5;
                    }

                    while (v94 != v95);
                    std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit(v114);
                  }
                }

                md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(v15);
              }

              goto LABEL_200;
            }

            if (v86 != 4)
            {
LABEL_164:
              LOBYTE(v86) = 1;
              goto LABEL_165;
            }

            v88 = &diagonalUpLabelAnchors;
          }

          v89 = &v88[2 * v87];
          if (*v89 && v89[1])
          {
LABEL_160:
            *(v15 + 848) = v86;
            if ((v86 & 0xC) != 0)
            {
              if (v86 == 4)
              {
                v70 = 0x3F12D5E73F51B3F2;
              }

              else if (v86 == 8)
              {
                v70 = 0xBF12D5E73F51B3F2;
              }

              *(v15 + 864) = v70;
              (*(*v34 + 384))(v34);
            }

            goto LABEL_176;
          }

          goto LABEL_164;
        }
      }

LABEL_200:
      *(v15 + 561) = v112;
      goto LABEL_201;
    }

    goto LABEL_57;
  }

  if (v36 != 6)
  {
    if (v36 != 9)
    {
      goto LABEL_58;
    }

    v38 = (*a1 + 712);
LABEL_70:
    v39 = (*v38)(a1, &v120);
    v40 = 0;
    goto LABEL_72;
  }

  begin = md::PointLabelFeature::createGraphicAnnotationPart(a1, &v120, 1, 1);
LABEL_169:
  v34 = begin;
LABEL_58:
  v35 = v19 != 0;
  if (v19 | v34)
  {
    goto LABEL_88;
  }

  v15 = 0;
LABEL_201:
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v137);
  if (SHIBYTE(v136) < 0)
  {
    operator delete(v134);
  }

  if (v125 == 1 && __p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v15;
}

char *md::PointLabelFeature::newIconPart(uint64_t *a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  size = (*(*a1 + 64))(a1);
  if (size && *(a1[60] + 352) != *(a1[60] + 360))
  {
    v5 = mdm::zone_mallocator::instance(size);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v5, 0x2A8uLL);
    v7 = *a2;
    md::ImageLabelPart::ImageLabelPart(v6);
    *v8 = &unk_1F2A272B0;
    v9 = a1[60];
    v8[80] = v9;
    v10 = a1[61];
    v8[81] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = a1[60];
    }

    *(v6 + 41) = 0u;
    v11 = *(v9 + 352);
    v12 = *(v7 + 176);
    v13 = vmul_n_f32(*v11, v12);
    v14 = vmul_n_f32(v11[1], -v12);
    v66.__r_.__value_.__l.__data_ = v14;
    v66.__r_.__value_.__r.__words[1] = vadd_f32(v13, v14);
    LODWORD(v11) = v11[2].u8[0];
    v6[672] = v11;
    v56 = v13;
    if (v11 == 1)
    {
      v15 = v13.f32[1];
      v16 = fmaxf(v13.f32[0], v13.f32[1]) * 0.5;
      *(v6 + 164) = v16;
      v62 = vmla_f32(v14, 0x3F0000003F000000, v13);
      *&v63 = v16;
      md::LabelPart::LabelPartLayoutState::setCollisionCircle((v6 + 72), &v62);
      md::LabelPart::LabelPartLayoutState::setCollisionCircle((v6 + 312), &v62);
    }

    else
    {
      *(v6 + 660) = vmul_n_f32(v13, v12 * 0.5);
      md::CollisionObject::resetWithRects(v6 + 9, 1u);
      md::CollisionObject::addRect((v6 + 72), &v66);
      md::CollisionObject::resetWithRects(v6 + 39, 1u);
      md::CollisionObject::addRect((v6 + 312), &v66);
      v15 = v56.f32[1];
    }

    *(v6 + 167) = 0.5 - (fminf(v15, v56.f32[0]) * 0.5);
    return v6;
  }

  v17 = *(a2 + 16);
  v18 = *(v17 + 296);
  if (!v18)
  {
    size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
    v18 = *size;
    *(v17 + 296) = *size;
  }

  if (!*(v18 + 68) || (size = (*(*a1 + 680))(a1, a2), (v6 = size) == 0))
  {
    v19 = *(a2 + 8);
    if (v19[1333] == 1)
    {
      if (v19[1358])
      {
        v20 = *(a2 + 16);
        v21 = *(v20 + 296);
        if (!v21)
        {
          size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
          v21 = *size;
          *(v20 + 296) = *size;
        }

        if (*(v21 + 88) != 10)
        {
          goto LABEL_35;
        }

LABEL_21:
        *(a2 + 72) = (*(*a1 + 736))(a1, a2);
        v23 = *(a2 + 16);
        if (!*(v23 + 296))
        {
          *(v23 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
        }

        (*(*a1 + 696))(&v66, a1);
        v24 = *(a2 + 84);
        if (v24 == v66.__r_.__value_.__s.__data_[4])
        {
          if (*(a2 + 84))
          {
            *(a2 + 80) = v66.__r_.__value_.__l.__data_;
          }
        }

        else
        {
          if (v24)
          {
            v25 = 0;
          }

          else
          {
            *(a2 + 80) = v66.__r_.__value_.__l.__data_;
            v25 = 1;
          }

          *(a2 + 84) = v25;
        }

        md::PointLabelFeature::customImageData(&v66, a1);
        if (*(a2 + 127) < 0)
        {
          operator delete(*(a2 + 104));
        }

        *(a2 + 104) = v66;
        *(&v66.__r_.__value_.__s + 23) = 0;
        v66.__r_.__value_.__s.__data_[0] = 0;
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=[abi:nn200100](a2 + 128, v67);
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v67);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        md::PointLabelFeatureBase::newBalloonWithDotPart(a2);
      }

      v22 = atomic_load(v19 + 1328);
      if (v22 & 1) != 0 && (v19[1333])
      {
        goto LABEL_21;
      }
    }

LABEL_35:
    v26 = *(a2 + 16);
    v27 = *(v26 + 296);
    if (!v27)
    {
      size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
      v27 = *size;
      *(v26 + 296) = *size;
    }

    if (*(v27 + 88) == 11)
    {
      *(a2 + 72) = (*(*a1 + 736))(a1, a2);
      v28 = *(a2 + 16);
      if (!*(v28 + 296))
      {
        *(v28 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
      }

      (*(*a1 + 696))(&v66, a1);
      v29 = *(a2 + 84);
      if (v29 == v66.__r_.__value_.__s.__data_[4])
      {
        if (*(a2 + 84))
        {
          *(a2 + 80) = v66.__r_.__value_.__l.__data_;
        }
      }

      else
      {
        if (v29)
        {
          v30 = 0;
        }

        else
        {
          *(a2 + 80) = v66.__r_.__value_.__l.__data_;
          v30 = 1;
        }

        *(a2 + 84) = v30;
      }

      v57 = a2;
      md::PointLabelFeatureBase::newRingIconPart(md::PartCreationContext const&)::$_0::operator()();
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v58 = 0;
    v31 = *(a2 + 16);
    v32 = *(v31 + 272);
    if (!v32)
    {
      size = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*(a2 + 16));
      v32 = *size;
      *(v31 + 272) = *size;
    }

    if (*(v32 + 69) == 6)
    {
      v33 = *(a2 + 64);
      v34 = atomic_load((*a2 + 3426));
      md::PointLabelFeatureElement::getSummaryIconInfos(&v66, v33, 2, v34 & 1);
      if (v67[8] == 1)
      {
        if (v66.__r_.__value_.__r.__words[0] != v66.__r_.__value_.__l.__size_)
        {
          v35 = *(a2 + 16);
          if (!*(v35 + 296))
          {
            *(v35 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v35, 0);
          }

          md::PointLabelFeature::customImageData(&__p, a1);
          md::LabelStyle::createIcon();
        }

        v57 = &v66;
        std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v57);
      }
    }

    v36 = v62;
    v37 = v63;
    if (v62 == v63)
    {
      v39 = *(a2 + 8);
      v38 = *(a2 + 16);
      v40 = *a2;
      v41 = (*(*a1 + 736))(a1, a2);
      v42 = *(a2 + 16);
      if (!*(v42 + 296))
      {
        *(v42 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
      }

      (*(*a1 + 696))(&v57, a1);
      md::PointLabelFeature::customImageData(&v59, a1);
      BYTE2(v55) = 0;
      LOWORD(v55) = -256;
      md::LabelStyle::pointIcon(&v66, v38, v40, v39, (a1 + 87), v41, &v57, 0, a2 + 32, v55, &v59);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&v60);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v66.__r_.__value_.__r.__words[0])
      {
        std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v62, &v66);
        md::PointLabelFeature::appendAlternateIcons(a1, a2, 0, &v62, &v58);
      }

      size = v66.__r_.__value_.__l.__size_;
      if (v66.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v66.__r_.__value_.__l.__size_);
      }

      v36 = v62;
      v37 = v63;
    }

    if (v36 == v37)
    {
      v6 = 0;
    }

    else
    {
      v43 = v37 - v36;
      v44 = v58;
      v45 = mdm::zone_mallocator::instance(size);
      if (v43 > 0x10 || v44)
      {
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v45, 0x3B8uLL);
        v46 = md::PointIconLabelPart::PointIconLabelPart(v6, v62, *a2, *(a2 + 8), *(a2 + 16), 0);
        *v6 = &unk_1F29ECEF0;
        *(v6 + 106) = 0;
        *(v6 + 108) = 0;
        *(v6 + 107) = 0;
        v6[872] = v65;
        v47 = v62;
        v48 = v63;
        v49 = v63 - v62;
        if (v63 == v62)
        {
          v53 = v62;
        }

        else
        {
          if ((v49 >> 4) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v50 = mdm::zone_mallocator::instance(v46);
          v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelIcon>>(v50, v49 >> 4);
          *(v6 + 106) = v51;
          *(v6 + 107) = v51;
          *(v6 + 108) = v51 + v49;
          do
          {
            *v51 = *v47;
            v52 = *(v47 + 1);
            v51[1] = v52;
            if (v52)
            {
              atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
            }

            v47 += 16;
            v51 += 2;
          }

          while (v47 != v48);
          *(v6 + 107) = v51;
          LODWORD(v47) = v62;
          v53 = v63;
        }

        *(v6 + 112) = 0;
        *(v6 + 55) = 0u;
        *(v6 + 114) = 0;
        *(v6 + 230) = 1065353216;
        v6[924] = 0;
        *(v6 + 116) = 0;
        *(v6 + 234) = 1065353216;
        v6[940] = 0;
        v6[944] = ((v53 - v47) >> 4) - 1;
        *(v6 + 945) = 0;
        v6[947] = 0;
      }

      else
      {
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v45, 0x350uLL);
        md::PointIconLabelPart::PointIconLabelPart(v6, v62, *a2, *(a2 + 8), *(a2 + 16), 0);
      }
    }

    v66.__r_.__value_.__r.__words[0] = &v62;
    std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v66);
  }

  return v6;
}

void sub_1B2BD9A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36)
{
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&a36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 136) == 1)
  {
    a17 = v37 - 168;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  }

  *(v36 + 32) = v36;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v37 - 168));
  _Unwind_Resume(a1);
}

char *md::PointLabelFeature::iconText(void *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *(v4 + 296);
  if (v5)
  {
    v6 = *(v5 + 90);
  }

  else
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v8 = *v7;
    *(v4 + 296) = *v7;
    v9 = a2[2];
    v5 = *(v9 + 296);
    v6 = *(v8 + 90);
    if (!v5)
    {
      v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
      v5 = *v10;
      *(v9 + 296) = *v10;
    }
  }

  if (*(v5 + 88) == 9)
  {
    if (v6 == 7)
    {
      goto LABEL_9;
    }

    if (v6 != 2)
    {
      if (!v6)
      {
LABEL_9:
        v11 = *(*a2 + 3512);
        md::LabelExternalPointFeature::incident(v11);
        objc_claimAutoreleasedReturnValue();
        if (v11)
        {
          v18 = 0;
          [v11 getTextForKey:&unk_1F2A88548 text:&v18 locale:0];
          v12 = v18;
          v13 = v12;
          if (v12)
          {
            v14 = [v12 UTF8String];
LABEL_24:

            return v14;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = 0;
        goto LABEL_24;
      }

LABEL_16:
      v15 = 255;
      goto LABEL_18;
    }
  }

  else if (v6 != 2)
  {
    if (v6 == 7 && (*(*a1 + 64))(a1))
    {
      v15 = md::PointLabelFeature::externalFeatureTextIndex(a1, 3, *a2);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v15 = *(a2[8] + 130);
LABEL_18:
  v16 = a1[65];
  if (v15 >= ((a1[66] - v16) >> 6))
  {
    return 0;
  }

  v14 = (v16 + (v15 << 6));
  if (v14[23] < 0)
  {
    return *v14;
  }

  return v14;
}

uint64_t md::PointLabelFeature::customImageData(std::string *this, void *a2)
{
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v5 = a2[60];
    if (*(v5 + 143) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(v5 + 120), *(v5 + 128));
    }

    else
    {
      v6 = *(v5 + 120);
      this->__r_.__value_.__r.__words[2] = *(v5 + 136);
      *&this->__r_.__value_.__l.__data_ = v6;
    }

    return std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&this[1], v5 + 144);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = 0;
    *&this->__r_.__value_.__r.__words[2] = 0u;
    *&this[1].__r_.__value_.__r.__words[1] = 0u;
    *&this->__r_.__value_.__l.__data_ = 0u;
  }

  return result;
}

void sub_1B2BD9EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void md::PointLabelFeature::iconColor(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if ((*(a1 + 89) & 0xFD) != 0)
  {
    v2 = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = *(a1 + 72);
    v2 = 1;
  }

  a2[4] = v2;
}

void sub_1B2BDA3E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2BDA410(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, a10);
  }

  JUMPOUT(0x1B2BDA3FCLL);
}

void *md::LabelStyle::pointIcon(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = result;
  v15[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 3025))
  {
    goto LABEL_5;
  }

  v13 = *(a2 + 272);
  if (!v13)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2);
    v13 = *result;
    *(a2 + 272) = *result;
  }

  if (*(v13 + 72))
  {
LABEL_5:
    if (*(a11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a11, *(a11 + 8));
    }

    else
    {
      *&v14.__r_.__value_.__l.__data_ = *a11;
      v14.__r_.__value_.__r.__words[2] = *(a11 + 16);
    }

    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v15, a11 + 24);
    md::LabelStyle::pointIconImageKey();
  }

  *v12 = 0;
  v12[1] = 0;
  return result;
}

md::LabelMapTileBase *md::LabelTrafficTile::LabelTrafficTile(md::LabelMapTileBase *a1, uint64_t a2, geo::codec::VectorTile *a3, zilch::TrafficSkeletonTile *a4, uint64_t *a5)
{
  v7 = a1;
  v132[15] = *MEMORY[0x1E69E9840];
  md::LabelMapTileBase::LabelMapTileBase(a1, a2);
  *v8 = &unk_1F2A05810;
  v89 = a3;
  *(v8 + 80) = a3 == 0;
  *(v8 + 88) = 0;
  v77 = (v8 + 88);
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = 0;
  *(v8 + 137) = 0;
  *(v8 + 176) = 0;
  *(v8 + 168) = 1065353216;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  v9 = *a5;
  if (a5[1] != *a5)
  {
    v10 = 0;
    v96 = v7;
    do
    {
      v79 = v10;
      v95 = (v9 + 16 * v10);
      updated = zilch::TrafficDynamicTile::feedUpdateTimeSeconds(*&(*v95)[18]);
      v12 = updated;
      v14 = *(v96 + 12);
      v13 = *(v96 + 13);
      if (v14 >= v13)
      {
        v16 = *v77;
        v17 = v14 - *v77;
        v18 = v17 >> 3;
        v19 = (v17 >> 3) + 1;
        if (v19 >> 61)
        {
          goto LABEL_85;
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          v22 = mdm::zone_mallocator::instance(updated);
          v23 = pthread_rwlock_rdlock((v22 + 32));
          if (v23)
          {
            geo::read_write_lock::logFailure(v23, "read lock", v24);
          }

          v25 = malloc_type_zone_malloc(*v22, 8 * v21, 0x100004000313F17uLL);
          atomic_fetch_add((v22 + 24), 1u);
          geo::read_write_lock::unlock((v22 + 32));
          v26 = v96;
          v16 = *(v96 + 11);
          v17 = *(v96 + 12) - v16;
          v27 = v17 >> 3;
        }

        else
        {
          v25 = 0;
          v27 = v17 >> 3;
          v26 = v96;
        }

        v28 = &v25[8 * v18];
        v29 = &v25[8 * v21];
        v30 = &v28[-v27];
        *v28 = v12;
        v15 = v28 + 1;
        v31 = memcpy(v30, v16, v17);
        v32 = *(v26 + 11);
        *(v26 + 11) = v30;
        *(v26 + 12) = v15;
        *(v26 + 13) = v29;
        if (v32)
        {
          v33 = mdm::zone_mallocator::instance(v31);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v33, v32);
        }
      }

      else
      {
        *v14 = updated;
        v15 = v14 + 8;
      }

      v34 = 0;
      *(v96 + 12) = v15;
      while (1)
      {
        v35 = (*v95)[25];
        if (v34 >= (*&(*v95)[26] - *&v35) >> 3)
        {
          break;
        }

        v36 = *(*&v35 + 8 * v34);
        [v36 mercatorPoint];
        v39 = 0;
        v40 = 1;
        v41 = 1 << *(a2 + 1);
        v42 = 1.0 / v41;
        v43 = v42 * (v41 + ~*(a2 + 4));
        v44 = v42 * *(a2 + 8) + v42;
        *&v131 = v42 * *(a2 + 8);
        *(&v131 + 1) = v43;
        *v132 = v44;
        *&v132[1] = v43 + v42;
        v45 = &v131;
        while (v37 >= *v45 && v37 < *&v132[v39])
        {
          v46 = v40;
          v40 = 0;
          v45 = &v131 + 1;
          v37 = v38;
          v39 = 1;
          if ((v46 & 1) == 0)
          {
            v47 = v36;
            operator new();
          }
        }

        ++v34;
      }

      v7 = v96;
      if (v89)
      {
        v121[0] = &unk_1F2A05830;
        v121[1] = v96;
        v122 = v121;
        v84 = *(v89 + 4);
        v87 = geo::codec::VectorTile::linesCount(v84, *(v89 + 5));
        v48 = *(v89 + 100);
        if (v48)
        {
          v49 = 0;
          v88 = 0;
          v78 = 0;
          v82 = *(v89 + 100);
          v81 = *(v48 + 32);
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          *v106 = 0u;
          *v103 = 0u;
          *v104 = 0u;
          v109 = 3;
          v111 = 0;
          v110 = 0;
          v112 = 0xC120000000000000;
          v113 = 0;
          v114 = 0xFFFFFFF6FFFFFFFFLL;
          v115 = -1054867456;
          v116 = 0u;
          v117 = 0u;
          v118 = 0;
          v119 = 0xFFFFFFFF00000000;
          v80 = 0;
          v120 = 0;
          while (v49 < zilch::TrafficSkeletonTile::size(a4))
          {
            v50 = zilch::TrafficSkeletonTile::operator[]();
            v51 = *(v50 + 16);
            v100 = *v50;
            v101 = v51;
            v102 = *(v50 + 32);
            v131 = 0u;
            memset(v132, 0, 112);
            v52 = md::TrafficDynamicTileResource::flowForRoadId(*v95, v51, &v131);
            if (v52 && v87 > v100)
            {
              v53 = v84 + 168 * v100;
              v54 = v88;
              if (!v88)
              {
                v54 = v84 + 168 * v100;
              }

              v55 = *(&v100 + 3);
              v88 = v54;
              if (fabsf(*(&v100 + 3)) >= 0.000001)
              {
                v85 = v100;
                v56 = 8 * v52;
                std::__introsort<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,false>(&v131, &v132[v56 / 8 - 2], 126 - 2 * __clz(v52), 1);
                v57 = 0;
                v58 = DWORD1(v100);
                v59 = (v81 + 16 * (DWORD1(v100) + *(v53 + 92)));
                v90 = *(v82 + 8) + 8 * *v59;
                v91 = *v59;
                v92 = v59[1];
                v60 = (v92 - 1);
                if (v55 > 0.0)
                {
                  v61 = 1;
                }

                else
                {
                  v61 = -1;
                }

                v86 = v61;
                v62 = v55;
                do
                {
                  if (v58 <= *(v53 + 96))
                  {
                    v63 = v132[v57 / 8 - 2];
                    v64 = *(v63 + 16);
                    if (v64 > 2)
                    {
                      goto LABEL_49;
                    }

                    v98 = 0;
                    v99 = 0;
                    v97 = 0;
                    v65 = geo::codec::VectorTile::key(v89);
                    v66 = *(v65 + 10);
                    v67 = *(v65 + 8);
                    *buf = *v65;
                    *&buf[8] = v67;
                    buf[10] = v66;
                    v97 = GEOTileKeyMake();
                    v98 = v68;
                    if ((md::TrafficUtilities::buildStartOffset(&v99 + 1, &v99, v53, &v100, v91, v92, v63, v90, &v97) & 1) == 0)
                    {
                      goto LABEL_49;
                    }

                    v69 = *(&v99 + 1);
                    if (*(&v99 + 1) < 0.0 || *(&v99 + 1) > v60 || (v71 = *&v99, *&v99 < 0.0) || *&v99 > v60)
                    {
                      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
                      {
                        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
                      }

                      v70 = GEOGetVectorKitVKDefaultLog_log;
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134219264;
                        *&buf[4] = v69;
                        *&buf[12] = 2048;
                        *&buf[14] = *&v99;
                        *&buf[22] = 2048;
                        v124 = v91;
                        v125 = 2048;
                        v126 = v92;
                        v127 = 2048;
                        v128 = *(&v100 + 2);
                        v129 = 2048;
                        v130 = v62;
                        _os_log_impl(&dword_1B2754000, v70, OS_LOG_TYPE_INFO, "Skeleton traffic tile implicates bad section (start: %f, end: %f, valid: %lu,%lu, skeleton record: %f,%f)", buf, 0x3Eu);
                      }

LABEL_49:
                      v7 = v96;
                      goto LABEL_50;
                    }

                    v83 = DWORD2(v101);
                    if (md::TrafficAccum::canAppend(v103, v53, v64, SDWORD2(v101), v86, v58, 0, 0, *(&v99 + 1), 0, 0))
                    {
                      v7 = v96;
                    }

                    else
                    {
                      if (v112 >= 1)
                      {
                        *buf = v88;
                        *&buf[8] = v58;
                        v72 = vrndm_f32(__PAIR64__(v115, v80));
                        *&buf[16] = vcvt_s32_f32(v72);
                        v124 = vsub_f32(__PAIR64__(v115, v80), v72);
                        if (!v122)
                        {
                          goto LABEL_84;
                        }

                        (*(*v122 + 48))(v122, buf);
                      }

                      v103[1] = v103[0];
                      *&v105 = v104[1];
                      v106[1] = v106[0];
                      *&v108 = *(&v107 + 1);
                      v113 = v53;
                      LODWORD(v114) = v85;
                      v109 = v64;
                      v110 = v83;
                      v111 = v86;
                      LODWORD(v112) = 0;
                      v73 = *(&v116 + 1);
                      v116 = 0uLL;
                      if (v73)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v73);
                      }

                      v74 = *(&v117 + 1);
                      v117 = 0uLL;
                      v7 = v96;
                      if (v74)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v74);
                      }

                      HIDWORD(v119) = 0;
                      LOBYTE(v120) = 0;
                      v69 = *(&v99 + 1);
                      v58 = DWORD1(v100);
                      v71 = *&v99;
                      v88 = v53;
                      v78 = DWORD1(v100);
                      v80 = HIDWORD(v99);
                    }

                    v113 = v53;
                    v114 = __PAIR64__(v58, v85);
                    v115 = LODWORD(v71);
                    md::TrafficAccum::addPoints(v103, v90, 0, 0, v92, 0, v69, v71);
                  }

LABEL_50:
                  v57 += 8;
                }

                while (v56 != v57);
              }
            }

            ++v49;
          }

          if (v112 > 0)
          {
            *&v131 = v88;
            *(&v131 + 1) = v78;
            v75 = vrndm_f32(__PAIR64__(v115, v80));
            v132[0] = vcvt_s32_f32(v75);
            v132[1] = vsub_f32(__PAIR64__(v115, v80), v75);
            if (!v122)
            {
LABEL_84:
              std::__throw_bad_function_call[abi:nn200100]();
LABEL_85:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            (*(*v122 + 48))(v122, &v131);
          }

          if (*(&v117 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v117 + 1));
          }

          if (*(&v116 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v116 + 1));
          }

          if (*(&v107 + 1))
          {
            *&v108 = *(&v107 + 1);
            operator delete(*(&v107 + 1));
          }

          if (v106[0])
          {
            v106[1] = v106[0];
            operator delete(v106[0]);
          }

          if (v104[1])
          {
            *&v105 = v104[1];
            operator delete(v104[1]);
          }

          if (v103[0])
          {
            v103[1] = v103[0];
            operator delete(v103[0]);
          }
        }

        std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](v121);
      }

      v9 = *a5;
      v10 = v79 + 1;
    }

    while (v79 + 1 < ((a5[1] - *a5) >> 4));
  }

  return v7;
}

void sub_1B2BDB1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, mdm::zone_mallocator *a12, mdm::zone_mallocator *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a70);
  }

  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a68);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a55)
  {
    operator delete(a55);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a49)
  {
    operator delete(a49);
  }

  std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](&STACK[0x230]);
  STACK[0x290] = a29;
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x290]);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(v70 + 144));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](a12);
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a13);
  _Unwind_Resume(a1);
}

double md::LabelMapTileBase::LabelMapTileBase(md::LabelMapTileBase *this, const geo::QuadTile *a2)
{
  v2 = *(a2 + 1);
  v3 = 1 << v2;
  v4 = (*(a2 + 1) % v3 + v3) % v3;
  v5 = (*(a2 + 2) % v3 + v3) % v3;
  *(this + 8) = *a2;
  *(this + 9) = v2;
  *(this + 3) = v4;
  *(this + 4) = v5;
  *(this + 3) = 0;
  *(this + 32) = 1;
  v6 = (1 << *(a2 + 1));
  v7 = *(a2 + 2);
  *this = &unk_1F2A45F78;
  *(this + 10) = vcvtmd_s64_f64(v7 / v6);
  v8 = 1.0 / (1 << v2);
  v9 = v8 * v5;
  v10 = v8 * ((1 << v2) + ~v4);
  v11 = v9 + v8;
  *(this + 6) = v9;
  *(this + 7) = v10;
  result = v10 + v8;
  *(this + 8) = v11;
  *(this + 9) = result;
  return result;
}

float md::LabelStyle::iconContentScale(md::LabelStyle *this)
{
  v2 = *this;
  if (!*this || (v3 = *(v2 + 16)) == 0 || (v4 = std::__shared_weak_count::lock(v3)) == 0)
  {
    v12 = 0;
    v13 = 0;
LABEL_9:
    v8 = (this + 88);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(v2 + 8);
  if (!v6)
  {
    v12 = 0;
    v13 = 0;
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    goto LABEL_9;
  }

  gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v12, *(v6 + 16));
  v7 = v12;
  std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = *(v7 + 216);
  v8 = (v7 + 216);
  if (v9 <= 0.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = *v8;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return v10;
}

void *md::LabelImageKey::setCustomImageData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  *(a1 + 264) = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);

  return std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=((a1 + 272), a2 + 24);
}

void *std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void **std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<false>(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

unint64_t md::LabelImageKey::hash(md::LabelImageKey *this)
{
  v2 = *(this + 39);
  v3 = *(this + 3);
  if ((v2 & 0x80u) == 0)
  {
    v4 = (this + 16);
  }

  else
  {
    v4 = *(this + 2);
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = *(this + 6);
  v8 = *(this + 14);
  v33 = *(this + 15);
  v32 = *(this + 32);
  v31 = *(this + 112);
  v9 = *(this + 114);
  v10 = *(this + 115);
  v11 = *(this + 116);
  v12 = *(this + 117);
  v13 = *(this + 143);
  if (v13 >= 0)
  {
    v14 = (this + 120);
  }

  else
  {
    v14 = *(this + 15);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 143);
  }

  else
  {
    v15 = *(this + 16);
  }

  v16 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v14, v15);
  v17 = 0;
  v18 = 0;
  do
  {
    v18 ^= (v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2) + *(this + v17++ + 160);
  }

  while (v17 != 4);
  if (v8 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v8);
  }

  v20 = *(this + 19) ^ v16 ^ *(this + 164) ^ v18 ^ ((v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2));
  v21 = *(this + 45);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if (*(this + 184))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(this + 47);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v26 = *(this + 50);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  result = v7 ^ v6 ^ v33 ^ v32 ^ v31 ^ v9 ^ v19 ^ v10 ^ v11 ^ v12 ^ *(this + 168) ^ *(this + 43) ^ *(this + 44) ^ *(this + 48) ^ v23 ^ v20 ^ v25 ^ *(this + 196) ^ v27 ^ (*(this + 37) != 0);
  for (i = *(this + 9); i != *(this + 10); ++i)
  {
    v30 = *i;
    result ^= v30;
  }

  return result;
}

uint64_t md::TrafficIncidentLabelFeature::TrafficIncidentLabelFeature(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [v5 mercatorPoint];
  v17[0] = v6;
  v17[1] = v7;
  v17[2] = v8;
  md::PointLabelFeatureBase::PointLabelFeatureBase(a1, v17);
  *a1 = &unk_1F2A4E2C8;
  v9 = v5;
  *(a1 + 248) = v9;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 2139095039;
  *(a1 + 316) = 0;
  *(a1 + 318) = 0;
  [v9 minZoom];
  *(a1 + 320) = v10;
  [v9 maxZoom];
  *(a1 + 324) = v11;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 353) = (([v9 type] - 3) & 0xFFFFFFFFFFFFFFFBLL) == 0;
  [v9 routeOffsetInMeters];
  *(a1 + 360) = v12;
  *(a1 + 368) = [v9 collisionPriority];
  v13 = a3[1];
  *(a1 + 376) = *a3;
  *(a1 + 384) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 232) == 3.4028e38)
  {
    v14 = 252.0;
  }

  else
  {
    [v9 elevationMinZoom];
  }

  v15 = 0;
  *(a1 + 328) = v14;
  do
  {
    *(a1 + v15 + 272) = *(a1 + v15 + 192);
    v15 += 8;
  }

  while (v15 != 24);
  *(a1 + 296) = *(a1 + 216);
  *(a1 + 312) = *(a1 + 232);
  *(a1 + 315) = *(a1 + 235);
  if (v14 > 0.0)
  {
    *(a1 + 232) = 2139095039;
    *(a1 + 242) = 0;
  }

  return a1;
}

void sub_1B2BDBB80(_Unwind_Exception *a1)
{
  v4 = *(v1 + 384);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 344);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 264);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  md::LabelFeature::~LabelFeature(v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>(void *a1, md::LabelImageKey *this)
{
  v4 = md::LabelImageKey::hash(this);
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
        if (md::LabelImageKey::operator==(v11[2], this))
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

void md::LabelImageLoader::loadImage(void *a1, uint64_t a2, md::LabelImageKey **a3)
{
  v172 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((*(a2 + 112) + 3427));
  if (v4)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v5 = a3;
  shared_weak_owners = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>((a2 + 32), *a3);
  if (shared_weak_owners)
  {
    v8 = shared_weak_owners;
    v9 = shared_weak_owners[2].__vftable;
    if (v9 != a2)
    {
      v10 = *(a2 + 8);
      if (v10 != v9)
      {
        v11 = v9->~__shared_weak_count_0;
        if (v11 != v10)
        {
          v12 = v9->~__shared_weak_count;
          *(v12 + 1) = v11;
          *v11 = v12;
          v13 = *v10;
          *(v13 + 8) = v9;
          v9->~__shared_weak_count = v13;
          *v10 = v9;
          v9->~__shared_weak_count_0 = v10;
        }
      }

      ++*(a2 + 92);
      on_zero_shared_weak = v9->__on_zero_shared_weak;
      v14 = v9[1].~__shared_weak_count;
      *&v137 = on_zero_shared_weak;
      *(&v137 + 1) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
      }

      goto LABEL_12;
    }

    if (LOBYTE(shared_weak_owners[2].__shared_owners_) == 1)
    {
      ++*(a2 + 92);
      v137 = 0uLL;
LABEL_12:
      *a1 = v137;
      if (*(&v137 + 1))
      {
        atomic_fetch_add_explicit((*(&v137 + 1) + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v137 + 1));
      }

      return;
    }

    shared_weak_owners = shared_weak_owners[1].__shared_weak_owners_;
    if (shared_weak_owners)
    {
      shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
      if (shared_weak_owners)
      {
        v16 = shared_weak_owners;
        v17 = v5;
        shared_owners = v8[1].__shared_owners_;
        if (shared_owners)
        {
          v19 = mdm::zone_mallocator::instance(shared_weak_owners);
          v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v19);
          *&v21 = shared_owners;
          *(&v21 + 1) = v16;
          v20->~__shared_weak_count = 0;
          v20->~__shared_weak_count_0 = 0;
          v20->__on_zero_shared = *v17;
          v22 = v17[1];
          v20->__get_deleter = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v20->__on_zero_shared_weak = shared_owners;
          v20[1].~__shared_weak_count = v16;
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v20->~__shared_weak_count = a2;
          v23 = *(a2 + 8);
          v20->~__shared_weak_count_0 = v23;
          *v23 = v20;
          v24 = *(a2 + 16) + 1;
          *(a2 + 8) = v20;
          *(a2 + 16) = v24;
          v8[2].__vftable = v20;
          ++*(a2 + 92);
          v137 = v21;
          goto LABEL_12;
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
        v5 = v17;
      }
    }
  }

  v25 = 0;
  ++*(a2 + 96);
  *a1 = 0;
  a1[1] = 0;
  v26 = *v5;
  v27 = *(*v5 + 112);
  if (v27 > 4)
  {
    if (v27 != 5)
    {
      if (v27 != 6)
      {
        v28 = 0;
        if (v27 != 7)
        {
          goto LABEL_120;
        }

        v29 = [VKImage alloc];
        v30 = (*v5 + 16);
        if (*(*v5 + 39) < 0)
        {
          v30 = *v30;
        }

        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
        v32 = *(*v5 + 56);
        v33 = *(*(a2 + 112) + 96);
        md::LabelExternalPointFeature::incident(v33);
        v34 = [objc_claimAutoreleasedReturnValue() resourceManager];
        gdc::ServiceLocator::resolveWeak<mre::GraphicsResourceStore>(&v154, **(*(a2 + 112) + 112), *(*(*(a2 + 112) + 112) + 8));
        v35 = [(VKImage *)v29 initWithName:v31 scale:v34 resourceManager:&v154 resourceStore:v32];
        v150.i64[0] = v35;
        if (v155)
        {
          std::__shared_weak_count::__release_weak(v155);
        }

        if (v35)
        {
          *(*v5 + 113) = 4;
          std::allocate_shared[abi:nn200100]<md::ExternalImageLabelIcon,std::allocator<md::ExternalImageLabelIcon>,VKImage * {__strong}&,0>();
        }

        v47 = 0uLL;
        goto LABEL_118;
      }

      goto LABEL_33;
    }

    v154 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v155 = _D0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = v166;
    v166[0] = 0;
    v167 = 0;
    v171 = 0;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v41 = (v26 + 120);
    v42 = *(v26 + 143);
    if ((v42 & 0x8000000000000000) != 0)
    {
      v42 = *(v26 + 128);
      if (v42 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v41 = *(v26 + 120);
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v42;
    if (v42)
    {
      memmove(&__dst, v41, v42);
    }

    __dst.__r_.__value_.__s.__data_[v42] = 0;
    v48 = grl::IconModifiers::setText(&v154, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    LODWORD(v48) = *(v26 + 160);
    v150 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v48))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v150);
    v49 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
    LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v49, 1), v49).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
    grl::IconModifiers::setTransitLineColor(&v154, &__dst);
    v149 = 0uLL;
    v50 = 0uLL;
    v148 = 0u;
    v147 = 0u;
    *&__dst.__r_.__value_.__r.__words[1] = 0u;
    v51 = *v5;
    v52 = *(*v5 + 39);
    if (v52 < 0)
    {
      v52 = *(v51 + 24);
    }

    if (!v52)
    {
      v59 = 0;
LABEL_109:
      v134 = v50;
      if (SHIBYTE(v148) < 0)
      {
        operator delete(*(&v147 + 1));
      }

      if (SBYTE7(v147) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__size_);
      }

      if (!v59)
      {
        goto LABEL_116;
      }

      v65 = v59;
LABEL_115:
      std::__shared_weak_count::__release_shared[abi:nn200100](v65);
LABEL_116:
      grl::IconModifiers::~IconModifiers(&v154);
      goto LABEL_117;
    }

    v150.i32[0] = 1065353216;
    v150.i8[4] = 4;
    *(&v150.i32[1] + 2) = 0;
    v150.i16[5] = -1;
    v150.i8[12] = 0;
    v26 = &v151;
    v152 = 0;
    v153 = 0;
    v151 = 0;
    grl::IconRequestOptions::setContentScale(v150.f32, *(v51 + 56));
    grl::IconModifiers::setMirrored(&v150, *(v51 + 168));
    grl::IconRequestOptions::setVariant(&v150, *(v51 + 172));
    grl::IconRequestOptions::setDataVariant(&v150, *(v51 + 176));
    grl::IconRequestOptions::setCountryCode(&v150, *(v51 + 192));
    (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v144);
    v142 = 0;
    v143 = 0;
    v141 = 0;
    if (v144)
    {
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v141, *v144, v144[1], 0xAAAAAAAAAAAAAAABLL * ((v144[1] - *v144) >> 3));
      v53 = v141;
      v54 = v142;
    }

    else
    {
      v54 = 0;
      v53 = 0;
    }

    grl::IconRequestOptions::setResourceNames(&v150, v53, v54);
    v66 = [*(*(a2 + 112) + 96) grlIconManager];
    v67 = *v5;
    v68 = *(*v5 + 39);
    if ((v68 & 0x8000000000000000) == 0)
    {
      v69 = (v67 + 16);
LABEL_94:
      if (v68 >= 0x17)
      {
        operator new();
      }

      v139 = v68;
      if (v68)
      {
        memmove(__p, v69, v68);
      }

      *(__p + v68) = 0;
      grl::IconManager::imageForName(&v140, v66, __p, &v154, v150.f32, &__dst);
      v70 = v140;
      v140 = 0uLL;
      v71 = *(&v149 + 1);
      v135 = v70;
      v149 = v70;
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v71);
        if (*(&v140 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v140 + 1));
        }
      }

      if (v139 < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(&v135 + 1);
      __p[0] = &v141;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__p);
      if (v145)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v145);
      }

      v141 = &v151;
      std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v141);
      if (v135)
      {
        v72 = v5;
        v73 = *v5;
        *(v73 + 208) = __dst.__r_.__value_.__l.__data_;
        std::string::operator=((v73 + 216), &__dst.__r_.__value_.__r.__words[1]);
        std::string::operator=((v73 + 240), (&v147 + 8));
        *(*v72 + 113) = 5;
        std::allocate_shared[abi:nn200100]<md::ShieldLabelIcon,std::allocator<md::ShieldLabelIcon>,std::shared_ptr<md::LabelImageKey const> const&,std::shared_ptr<grl::IconImage> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&,0>();
      }

      v50 = 0uLL;
      goto LABEL_109;
    }

    v68 = *(v67 + 24);
    if (v68 <= 0x7FFFFFFFFFFFFFF7)
    {
      v69 = *(v67 + 16);
      goto LABEL_94;
    }

LABEL_233:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v27 == 1)
  {
    v43 = (v26 + 120);
    v154 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v155 = _D0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = v166;
    v166[0] = 0;
    v167 = 0;
    v171 = 0;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    if (*(v26 + 184) == 1)
    {
      grl::IconModifiers::setTailDirection(&v154, *(v26 + 180));
    }

    grl::IconModifiers::setScale(&v154, *(v26 + 188));
    v45 = *(v26 + 143);
    v46 = (v26 + 120);
    if ((v45 & 0x8000000000000000) != 0)
    {
      v45 = *(v26 + 128);
      if (v45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v46 = *(v26 + 120);
    }

    if (v45 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v45;
    if (v45)
    {
      memmove(&__dst, v46, v45);
    }

    __dst.__r_.__value_.__s.__data_[v45] = 0;
    v55 = grl::IconModifiers::setText(&v154, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    LODWORD(v55) = *(v26 + 160);
    v150 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v55))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v150);
    v56 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
    LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v56, 1), v56).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
    grl::IconModifiers::setTransitLineColor(&v154, &__dst);
    (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v149);
    v142 = 0;
    v143 = 0;
    v141 = 0;
    if (v149)
    {
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v141, *v149, *(v149 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v149 + 8) - *v149) >> 3));
      v58 = v141;
      v57 = v142;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v150.i32[0] = 1065353216;
    v150.i8[4] = 4;
    *(&v150.i32[1] + 2) = 0;
    v150.i16[5] = -1;
    v150.i8[12] = 0;
    v132 = v5;
    v152 = 0;
    v153 = 0;
    v151 = 0;
    v60 = *v5;
    grl::IconRequestOptions::setContentScale(v150.f32, *(v60 + 56));
    grl::IconModifiers::setMirrored(&v150, *(v60 + 168));
    grl::IconRequestOptions::setVariant(&v150, *(v60 + 172));
    grl::IconRequestOptions::setDataVariant(&v150, *(v60 + 176));
    grl::IconRequestOptions::setCountryCode(&v150, *(v60 + 192));
    grl::IconRequestOptions::setResourceNames(&v150, v58, v57);
    v148 = 0u;
    v147 = 0u;
    *&__dst.__r_.__value_.__r.__words[1] = 0u;
    v61 = [*(*(a2 + 112) + 96) grlIconManager];
    v62 = *(v26 + 152);
    v63 = *(v26 + 143);
    v5 = v132;
    if ((v63 & 0x8000000000000000) != 0)
    {
      v63 = *(v26 + 128);
      if (v63 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v43 = *(v26 + 120);
    }

    if (v63 >= 0x17)
    {
      operator new();
    }

    v139 = v63;
    if (v63)
    {
      memmove(__p, v43, v63);
    }

    *(__p + v63) = 0;
    grl::IconManager::imageForDataIDAndText(&v144, v61, v62, __p, &v154, v150.f32, &__dst);
    if (v139 < 0)
    {
      operator delete(__p[0]);
    }

    if (v144)
    {
      v64 = *v132;
      *(v64 + 208) = __dst.__r_.__value_.__l.__data_;
      std::string::operator=((v64 + 216), &__dst.__r_.__value_.__r.__words[1]);
      std::string::operator=((v64 + 240), (&v147 + 8));
      *(*v132 + 113) = 1;
      std::allocate_shared[abi:nn200100]<md::ShieldLabelIcon,std::allocator<md::ShieldLabelIcon>,std::shared_ptr<md::LabelImageKey const> const&,std::shared_ptr<grl::IconImage> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&,0>();
    }

    v134 = 0u;
    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v145);
    }

    if (SHIBYTE(v148) < 0)
    {
      operator delete(*(&v147 + 1));
    }

    if (SBYTE7(v147) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__size_);
    }

    __dst.__r_.__value_.__r.__words[0] = &v151;
    std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__dst);
    __dst.__r_.__value_.__r.__words[0] = &v141;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
    v65 = *(&v149 + 1);
    if (!*(&v149 + 1))
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v28 = 0;
  if (v27 != 4)
  {
    goto LABEL_120;
  }

LABEL_33:
  md::LabelImageLoader::loadIconImage(&v154, a2, v5);
  if (v154)
  {
    operator new();
  }

  v47 = 0uLL;
  if (!v155)
  {
    goto LABEL_118;
  }

  v134 = 0uLL;
  std::__shared_weak_count::__release_shared[abi:nn200100](v155);
LABEL_117:
  v47 = v134;
LABEL_118:
  *a1 = v47;
  v25 = *(&v47 + 1);
  v28 = v47;
  if (v47)
  {
    *(v47 + 136) = *(*(*(a2 + 112) + 424) + 48);
    md::LabelImageLoader::enqueueIconForRendering(a2, a1);
  }

LABEL_120:
  v74 = mdm::zone_mallocator::instance(shared_weak_owners);
  v75 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v74);
  v76 = v75;
  *v75 = 0;
  v75[1] = 0;
  v75[2] = *v5;
  v77 = v5[1];
  v75[3] = v77;
  if (v77)
  {
    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
  }

  v75[4] = v28;
  v75[5] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    v78 = *a1;
  }

  else
  {
    v78 = v28;
  }

  *v75 = a2;
  v79 = *(a2 + 8);
  v75[1] = v79;
  *v79 = v75;
  v80 = *(a2 + 16) + 1;
  *(a2 + 8) = v75;
  *(a2 + 16) = v80;
  v136 = v78;
  if (*(&v78 + 1))
  {
    atomic_fetch_add_explicit((*(&v78 + 1) + 16), 1uLL, memory_order_relaxed);
    v81 = *a1;
  }

  else
  {
    v81 = v78;
  }

  v82 = v81 == 0;
  v83 = *v5;
  v84 = md::LabelImageKey::hash(*v5);
  v85 = v84;
  v86 = *(a2 + 40);
  if (v86)
  {
    v87 = vcnt_s8(v86);
    v87.i16[0] = vaddlv_u8(v87);
    v88 = v87.u32[0];
    if (v87.u32[0] > 1uLL)
    {
      v26 = v84;
      if (v84 >= v86)
      {
        v26 = v84 % v86;
      }
    }

    else
    {
      v26 = (v86 - 1) & v84;
    }

    v89 = *(*(a2 + 32) + 8 * v26);
    if (v89)
    {
      v133 = v5;
      for (i = *v89; i; i = *i)
      {
        v91 = i[1];
        if (v91 == v85)
        {
          v84 = md::LabelImageKey::operator==(i[2], v83);
          if (v84)
          {
            v120 = i[5];
            *(i + 2) = v136;
            if (v120)
            {
              std::__shared_weak_count::__release_weak(v120);
            }

            i[6] = v76;
            *(i + 56) = v82;
            goto LABEL_212;
          }
        }

        else
        {
          if (v88 > 1)
          {
            if (v91 >= v86)
            {
              v91 %= v86;
            }
          }

          else
          {
            v91 &= v86 - 1;
          }

          if (v91 != v26)
          {
            break;
          }
        }
      }

      v5 = v133;
    }
  }

  v92 = mdm::zone_mallocator::instance(v84);
  v93 = pthread_rwlock_rdlock((v92 + 32));
  if (v93)
  {
    geo::read_write_lock::logFailure(v93, "read lock", v94);
  }

  v95 = malloc_type_zone_malloc(*v92, 0x40uLL, 0x10600406F71BDCCuLL);
  atomic_fetch_add((v92 + 24), 1u);
  geo::read_write_lock::unlock((v92 + 32));
  *v95 = 0;
  v95[1] = v85;
  v95[2] = *v5;
  v97 = v5[1];
  v95[3] = v97;
  if (v97)
  {
    atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
  }

  *(v95 + 2) = v136;
  v95[6] = v76;
  *(v95 + 56) = v82;
  v98 = (*(a2 + 72) + 1);
  v99 = *(a2 + 80);
  if (!v86 || (v99 * v86) < v98)
  {
    v100 = 1;
    if (v86 >= 3)
    {
      v100 = (v86 & (v86 - 1)) != 0;
    }

    v101 = v100 | (2 * v86);
    v102 = vcvtps_u32_f32(v98 / v99);
    if (v101 <= v102)
    {
      v103 = v102;
    }

    else
    {
      v103 = v101;
    }

    if (v103 == 1)
    {
      v103 = 2;
    }

    else if ((v103 & (v103 - 1)) != 0)
    {
      prime = std::__next_prime(v103);
      v103 = prime;
    }

    v86 = *(a2 + 40);
    if (v103 > v86)
    {
      goto LABEL_162;
    }

    if (v103 < v86)
    {
      prime = vcvtps_u32_f32(*(a2 + 72) / *(a2 + 80));
      if (v86 < 3 || (v112 = vcnt_s8(v86), v112.i16[0] = vaddlv_u8(v112), v112.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v113 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v113;
        }
      }

      if (v103 <= prime)
      {
        v103 = prime;
      }

      if (v103 >= v86)
      {
        v86 = *(a2 + 40);
      }

      else
      {
        if (v103)
        {
LABEL_162:
          v104 = mdm::zone_mallocator::instance(prime);
          v105 = pthread_rwlock_rdlock((v104 + 32));
          if (v105)
          {
            geo::read_write_lock::logFailure(v105, "read lock", v106);
          }

          v107 = malloc_type_zone_malloc(*v104, 8 * v103, 0x2004093837F09uLL);
          atomic_fetch_add((v104 + 24), 1u);
          geo::read_write_lock::unlock((v104 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>((a2 + 32), v107);
          v108 = 0;
          *(a2 + 40) = v103;
          do
          {
            *(*(a2 + 32) + 8 * v108++) = 0;
          }

          while (v103 != v108);
          v109 = *(a2 + 56);
          if (v109)
          {
            v110 = v109[1];
            v111 = vcnt_s8(v103);
            v111.i16[0] = vaddlv_u8(v111);
            if (v111.u32[0] > 1uLL)
            {
              if (v110 >= v103)
              {
                v110 %= v103;
              }
            }

            else
            {
              v110 &= v103 - 1;
            }

            *(*(a2 + 32) + 8 * v110) = a2 + 56;
            v114 = *v109;
            if (*v109)
            {
              do
              {
                v115 = v114[1];
                if (v111.u32[0] > 1uLL)
                {
                  if (v115 >= v103)
                  {
                    v115 %= v103;
                  }
                }

                else
                {
                  v115 &= v103 - 1;
                }

                if (v115 != v110)
                {
                  v116 = *(a2 + 32);
                  if (!*(v116 + 8 * v115))
                  {
                    *(v116 + 8 * v115) = v109;
                    goto LABEL_186;
                  }

                  *v109 = *v114;
                  *v114 = **(v116 + 8 * v115);
                  **(v116 + 8 * v115) = v114;
                  v114 = v109;
                }

                v115 = v110;
LABEL_186:
                v109 = v114;
                v114 = *v114;
                v110 = v115;
              }

              while (v114);
            }
          }

          v86 = v103;
          goto LABEL_190;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>((a2 + 32), 0);
        v86 = 0;
        *(a2 + 40) = 0;
      }
    }

LABEL_190:
    if ((v86 & (v86 - 1)) != 0)
    {
      if (v85 >= v86)
      {
        v26 = v85 % v86;
      }

      else
      {
        v26 = v85;
      }
    }

    else
    {
      v26 = (v86 - 1) & v85;
    }
  }

  v117 = *(a2 + 32);
  v118 = *(v117 + 8 * v26);
  if (v118)
  {
    *v95 = *v118;
  }

  else
  {
    *v95 = *(a2 + 56);
    *(a2 + 56) = v95;
    *(v117 + 8 * v26) = a2 + 56;
    if (!*v95)
    {
      goto LABEL_204;
    }

    v119 = *(*v95 + 8);
    if ((v86 & (v86 - 1)) != 0)
    {
      if (v119 >= v86)
      {
        v119 %= v86;
      }
    }

    else
    {
      v119 &= v86 - 1;
    }

    v118 = (*(a2 + 32) + 8 * v119);
  }

  *v118 = v95;
LABEL_204:
  ++*(a2 + 72);
LABEL_212:
  while (1)
  {
    v127 = *(a2 + 16);
    if (v127 <= *(a2 + 88))
    {
      break;
    }

    v121 = *a2;
    v122 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>((a2 + 32), *(*a2 + 16));
    if (v122 && v122[6] == v121)
    {
      v122[6] = a2;
      v121 = *a2;
    }

    v124 = *v121;
    v123 = v121[1];
    *(v124 + 8) = v123;
    *v123 = v124;
    *(a2 + 16) = v127 - 1;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v121 + 2));
    v126 = mdm::zone_mallocator::instance(v125);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v126, v121);
  }

  v128 = *(a2 + 104) + 1;
  *(a2 + 104) = v128;
  if (v128 >= 0x65)
  {
    *(a2 + 104) = 0;
    v129 = *(a2 + 56);
    if (v129)
    {
      v130 = 0;
      do
      {
        while (1)
        {
          if ((*(v129 + 56) & 1) == 0)
          {
            v131 = *(v129 + 40);
            if (!v131 || *(v131 + 8) == -1)
            {
              break;
            }
          }

          v129 = *v129;
          ++v130;
          if (!v129)
          {
            goto LABEL_224;
          }
        }

        v129 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::erase((a2 + 32), v129);
      }

      while (v129);
    }

    else
    {
      v130 = 0;
    }

LABEL_224:
    *(a2 + 100) = v130;
  }
}

void sub_1B2BDCFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, std::__shared_weak_count *a49)
{
  a14 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  grl::IconModifiers::~IconModifiers(&a48);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeatureBase::PointLabelFeatureBase(uint64_t result, uint64_t a2)
{
  *(result + 8) = 850045863;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  *(result + 128) = 0x100000000;
  *(result + 136) = 0;
  *(result + 141) = 0;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *result = &unk_1F2A48440;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = 0;
  *(result + 216) = *a2;
  v2 = *(a2 + 16);
  v3 = v2;
  if (v2 == 1.79769313e308)
  {
    v3 = 3.4028e38;
  }

  *(result + 232) = v3;
  *(result + 236) = 256;
  *(result + 238) = 1;
  *(result + 240) = 0;
  *(result + 242) = v3 != 3.4028e38;
  *(result + 243) = -256;
  return result;
}

BOOL md::LabelImageKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 72);
  if (v11 - v10 != *(a2 + 80) - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    v13 = v11 - v10;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v15 = *v10++;
      v14 = v15;
      v16 = *v12++;
      if (v14 != v16)
      {
        return 0;
      }
    }

    while (--v13);
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 114) != *(a2 + 114) || *(a1 + 115) != *(a2 + 115) || *(a1 + 116) != *(a2 + 116) || *(a1 + 117) != *(a2 + 117))
  {
    return 0;
  }

  v17 = *(a1 + 143);
  if (v17 >= 0)
  {
    v18 = *(a1 + 143);
  }

  else
  {
    v18 = *(a1 + 128);
  }

  v19 = *(a2 + 143);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 128);
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v17 >= 0 ? (a1 + 120) : *(a1 + 120);
  v22 = v20 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v21, v22, v18) || *(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160) || *(a1 + 164) != *(a2 + 164) || *(a1 + 168) != *(a2 + 168) || *(a2 + 172) != *(a1 + 172) || *(a2 + 176) != *(a1 + 176))
  {
    return 0;
  }

  v23 = *(a1 + 184);
  v24 = *(a2 + 184);
  if (v23 == v24 && *(a1 + 184))
  {
    if (*(a1 + 180) == *(a2 + 180))
    {
      goto LABEL_54;
    }

    return 0;
  }

  if (v23 != v24)
  {
    return 0;
  }

LABEL_54:
  if (*(a1 + 188) != *(a2 + 188) || *(a1 + 192) != *(a2 + 192) || *(a1 + 196) != *(a2 + 196) || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  return *(a1 + 264) == *(a2 + 264);
}

void std::__shared_ptr_emplace<md::LabelImageKey>::__on_zero_shared(uint64_t a1)
{
  v2 = std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](a1 + 296);
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 167) < 0)
  {
    v3 = *(a1 + 144);
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  v5 = *(a1 + 96);
  if (v5 != *(a1 + 112))
  {
    free(v5);
  }

  if (*(a1 + 63) < 0)
  {
    v6 = *(a1 + 40);
    v7 = mdm::zone_mallocator::instance(v5);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }
}

void std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, __int128 *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
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
      v12 = mdm::zone_mallocator::instance(a1);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelIcon>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = *(a1 + 1) - *a1;
    v18 = &v14[-v17];
    v19 = memcpy(&v14[-v17], *a1, v17);
    v20 = *a1;
    *a1 = v18;
    *(a1 + 1) = v7;
    *(a1 + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelIcon>>(v21, v20);
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

  *(a1 + 1) = v7;
}

void md::PointLabelFeature::appendAlternateIcons(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4, BOOL *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = *(v5 + 145);
  *a5 = *(v5 + 145) != 0;
  v33 = v6;
  if (v6)
  {
    v8 = 0;
    v32 = a1 + 87;
    do
    {
      if (v8 >= *(v5 + 145))
      {
        v9 = 0;
      }

      else
      {
        if ((*(v5 + 457) & 1) == 0)
        {
          md::LabelStyle::prepareAlternateStyles(v5);
        }

        v9 = (v5 + 360 + 16 * v8);
      }

      if (*v9 != 1)
      {
        return;
      }

      v10 = v9[2];
      if (v10 > 4)
      {
        if (v10 == 5)
        {
          v19 = a3;
          if (a3)
          {
            goto LABEL_33;
          }

          v20 = *(v5 + 296);
          if (!v20)
          {
            v21 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v5, 0);
            v20 = *v21;
            *(v5 + 296) = *v21;
          }

          v22 = *v32;
          if (*v32)
          {
            v23 = *(v22 + 33);
            if (*(v22 + 33))
            {
              v24 = *(v20 + 64);
              v25 = *v22;
              if (*v25 == v24)
              {
                goto LABEL_40;
              }

              v26 = 0;
              v27 = v25 + 2;
              do
              {
                if (v23 - 1 == v26)
                {
                  goto LABEL_30;
                }

                v28 = *v27;
                v27 += 2;
                ++v26;
              }

              while (v28 != v24);
              if (v26 < v23)
              {
                if (!v20)
                {
                  v29 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v5, 0);
                  v20 = *v29;
                  *(v5 + 296) = *v29;
                }

LABEL_40:
                v19 = (v20 + 64);
LABEL_33:
                if (*v19)
                {
LABEL_27:
                  v18 = *(a2 + 16);
                  if (!*(v18 + 296))
                  {
                    *(v18 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
                  }

                  (*(*a1 + 696))(&v34, a1);
                  md::PointLabelFeature::customImageData(&__p, a1);
                  md::LabelStyle::createIcon();
                }
              }
            }
          }
        }

        else if (v10 == 7)
        {
          v14 = *(v5 + 272);
          if (!v14)
          {
            v15 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
            v14 = *v15;
            *(v5 + 272) = *v15;
          }

          v13 = v14 + 144;
LABEL_23:
          if ((*(v13 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v13 + 8))
            {
              goto LABEL_27;
            }
          }

          else if (*(v13 + 23))
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v10 == 3)
        {
          v16 = *(v5 + 272);
          if (!v16)
          {
            v17 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
            v16 = *v17;
            *(v5 + 272) = *v17;
          }

          v13 = v16 + 80;
          goto LABEL_23;
        }

        if (v10 == 4)
        {
          v11 = *(v5 + 272);
          if (!v11)
          {
            v12 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
            v11 = *v12;
            *(v5 + 272) = *v12;
          }

          v13 = v11 + 112;
          goto LABEL_23;
        }
      }

LABEL_30:
      ++v8;
    }

    while (v8 != v33);
  }
}

void sub_1B2BDDA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(exception_object);
}

double md::ImageLabelPart::ImageLabelPart(md::ImageLabelPart *this)
{
  v1 = (this + 572);
  md::LabelPart::LabelPart(this);
  *v2 = &unk_1F2A4BAF0;
  __asm { FMOV            V0.4S, #1.0 }

  *v1 = _Q0;
  *(v2 + 588) = 1065353216;
  *(v2 + 592) = 256;
  *(v2 + 594) = 0;
  *(v1 + 24) = _Q0;
  *(v2 + 612) = 1065353216;
  *(v2 + 616) = 256;
  *(v2 + 618) = 0;
  *(v2 + 620) = 0;
  *&result = 257;
  *(v2 + 628) = 257;
  *(v2 + 632) = 1;
  return result;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(v5, v4);
  }

  return v1;
}

uint64_t md::PointIconLabelPart::PointIconLabelPart(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, md::LabelStyle *a5, int a6)
{
  v11 = md::IconLabelPart::IconLabelPart(a1, a2, 1, a5);
  *v11 = &unk_1F2A596C8;
  *(v11 + 832) = a6;
  *(v11 + 840) = 0;
  v12 = *(a5 + 34);
  if (!v12)
  {
    v13 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a5);
    v12 = *v13;
    *(a5 + 34) = *v13;
  }

  v14 = md::LabelStyle::namedIcon(&v19, a5, a3, a4, v12 + 176);
  if (v19)
  {
    v15 = mdm::zone_mallocator::instance(v14);
    v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x340uLL);
    md::IconLabelPart::IconLabelPart(v16, &v19, 0, 0);
    v17 = *(a1 + 840);
    *(a1 + 840) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    (*(*v16 + 816))(v16, 0xFFFFFFFFLL);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  return a1;
}

void sub_1B2BDDC88(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  v14 = *(v10 + 105);
  *(v10 + 105) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  md::IconLabelPart::~IconLabelPart(v10);
  _Unwind_Resume(a1);
}

void std::vector<std::weak_ptr<md::LabelTrafficTile>,geo::allocator_adapter<std::weak_ptr<md::LabelTrafficTile>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, uint64_t a2)
{
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(a1);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 16 * v10, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v7];
    v16 = &v14[16 * v10];
    *v15 = *a2;
    v6 = v15 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v17 = *(a1 + 1) - *a1;
    v18 = &v15[-v17];
    v19 = memcpy(&v15[-v17], *a1, v17);
    v20 = *a1;
    *a1 = v18;
    *(a1 + 1) = v6;
    *(a1 + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<md::LabelTrafficTile>>(v21, v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 1) = v6;
}

double md::LabelIconStyleMonitor::initialize(uint64_t a1, int a2, md::LabelStyle *this)
{
  *(a1 + 51) = a2;
  if (a2)
  {
    if (this)
    {
      v5 = *(this + 34);
      if (!v5)
      {
        v6 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(this);
        v5 = *v6;
        *(this + 34) = *v6;
        a2 = *(a1 + 51);
      }

      *(a1 + 50) = *(v5 + 69);
      if (a2 == 2)
      {
        v7 = *(this + 33);
        if (!v7)
        {
          v8 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
          v7 = *v8;
          *(this + 33) = *v8;
        }

        v9 = (v7 + 72);
      }

      else
      {
        v9 = md::LabelStyle::monitorIconName(this);
      }

      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(a1, v9);
      v10 = *(this + 37);
      if (!v10)
      {
        v11 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(this, 0);
        v10 = *v11;
        *(this + 37) = *v11;
      }

      *(a1 + 49) = *(v10 + 88);
      *(a1 + 48) = *(v10 + 92);
      result = *(v10 + 64);
      *(a1 + 32) = result;
      *(a1 + 40) = *(v10 + 56);
      *(a1 + 52) = *(this + 145);
    }

    else
    {
      *(a1 + 51) = 0;
    }
  }

  return result;
}

uint64_t md::LabelIconStyleMonitor::LabelIconStyleMonitor(uint64_t a1, int a2, md::LabelStyle *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  *(a1 + 49) = 0;
  md::LabelIconStyleMonitor::initialize(a1, a2, a3);
  return a1;
}

void sub_1B2BDDF60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelStyle::monitorIconName(md::LabelStyle *this)
{
  v1 = *(this + 34);
  if (!v1)
  {
    v3 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(this);
    v1 = *v3;
    *(this + 34) = *v3;
  }

  v4 = *(v1 + 263);
  if (v4 < 0)
  {
    v4 = *(v1 + 248);
  }

  v5 = v4 == 0;
  v6 = 240;
  if (v5)
  {
    v6 = 80;
  }

  return v1 + v6;
}

void *md::LabelStyle::namedIcon(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a5 + 8);
  }

  if (v5)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1B2BDE160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelIcon>>(v6, v4);
  }
}

uint64_t md::ImageLabelPart::setContentType(uint64_t result, int a2)
{
  *(result + 562) = a2;
  *(result + 632) = (a2 - 1) < 4;
  return result;
}

uint64_t md::PointLabelFeature::mainTextIndex(void *a1, uint64_t *a2)
{
  if (!(*(*a1 + 64))(a1) || *(a1[60] + 236) != 1)
  {
    return *(a2[8] + 130);
  }

  v4 = *a2;

  return md::PointLabelFeature::externalFeatureTextIndex(a1, 1, v4);
}

uint64_t md::PointLabelFeature::newTextPart(md::LabelFeature *a1, uint64_t *a2, const md::LabelTextStyleGroup *a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 65);
  if (a3 >= ((*(a1 + 66) - v5) >> 6))
  {
    return 0;
  }

  if ((*(*a2 + 3025) & 1) == 0)
  {
    v10 = a2[2];
    v11 = *(v10 + 272);
    if (!v11)
    {
      v12 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
      v11 = *v12;
      *(v10 + 272) = *v12;
    }

    if (*(v11 + 72) != 1)
    {
      return 0;
    }

    v5 = *(a1 + 65);
  }

  v13 = v5 + (v4 << 6);
  if ((*(v13 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v13 + 8))
    {
      return 0;
    }
  }

  else if (!*(v13 + 23))
  {
    return 0;
  }

  v14 = *(a1 + 60);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = *(v14 + 88);
  if (v15 == 3)
  {
    return 0;
  }

  if (!v15)
  {
LABEL_14:
    if (*(a2[2] + 121) != 1)
    {
      return 0;
    }
  }

  if (*(*a2 + 3025))
  {
    goto LABEL_19;
  }

  v16 = a2[2];
  v17 = *(v16 + 272);
  if (!v17)
  {
    v18 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
    v17 = *v18;
    *(v16 + 272) = *v18;
  }

  if (*(v17 + 73) == 1)
  {
LABEL_19:
    v19 = md::LabelStyle::textStyleGroup(a2[2], a4);
    v20 = a2[2];
    v21 = *(v20 + 272);
    if (!v21)
    {
      v22 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
      v21 = *v22;
      *(v20 + 272) = *v22;
    }

    if (*(v21 + 70) == 1)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    if (*(v19 + 100) > 0.0)
    {
      md::LabelFeature::textDataForZoom(&v30, a1, a3, v19);
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v32, " … ", 0);
      v23 = md::PointLabelFeature::indexForTextEntry(a1, &v32);
      v24 = v23;
      if (v36 < 0)
      {
        v25 = v35;
        v26 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
      }

      if (SHIBYTE(v34) < 0)
      {
        v27 = v32;
        v28 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, v27);
      }

      md::LabelFeature::textDataForZoom(&v32, a1, v24, v19);
      if (v30)
      {
        std::allocate_shared[abi:nn200100]<md::LabelText,std::allocator<md::LabelText>,std::shared_ptr<md::TextDataString> &,std::shared_ptr<md::TextDataString> &,unsigned char const&,0>();
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v33);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }
    }
  }

  return 0;
}

void sub_1B2BDE758(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  v19 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v19, v17);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t md::LabelStyle::textStyleGroup(uint64_t a1, int a2)
{
  v2 = a2 == 1;
  v3 = a1 + 280;
  if (a2 == 1)
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8 * (a2 == 1));
  if (v5)
  {
    if (vabds_f32(v5[2], *(a1 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(a1, v5, v4);
      v5 = *(v3 + 8 * v2);
    }
  }

  else
  {
    v5 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(a1, v4);
    *(v3 + 8 * v2) = v5;
  }

  return *v5;
}

void md::LabelFeature::textDataForZoom(md::LabelFeature *this, md::LabelFeature *a2, const md::LabelTextStyleGroup *a3, uint64_t a4)
{
  v5 = a3;
  v8 = (*(*a2 + 496))(a2);
  v9 = *(a2 + 20);
  v10 = *(a2 + 21);
  if (v8 > 0x6DB6DB6DB6DB6DB7 * (v10 - v9))
  {
    md::LabelFeature::updateTextVector(a2);
    v9 = *(a2 + 20);
    v10 = *(a2 + 21);
  }

  md::TextDataStore::textDataForZoom(this, v9, v10, v5, a4 + 72);
}

void md::TextDataStore::textDataForZoom(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a2 == a3)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v7 = a2;
    while (*v7 != a4)
    {
      v7 += 7;
      if (v7 == a3)
      {
        goto LABEL_5;
      }
    }

    v8 = v7[3];
    v9 = v7[4];
    while (1)
    {
      if (v8 == v9)
      {
        v10 = 0;
        goto LABEL_12;
      }

      if (!md::FontOptions::needsGlyphUpdate(*(*v8 + 16), a5))
      {
        break;
      }

      v8 += 2;
    }

    v17 = *v8;
    v10 = v8[1];
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      *a1 = v17;
      return;
    }

LABEL_12:
    if (*(a5 + 28) != 0.0)
    {
      v11 = *(a5 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a5 + 8);
      }

      if (v11)
      {
        v12 = mdm::zone_mallocator::instance(v10);
        v13 = pthread_rwlock_rdlock((v12 + 32));
        if (v13)
        {
          geo::read_write_lock::logFailure(v13, "read lock", v14);
        }

        v15 = malloc_type_zone_malloc(*v12, 0xA8uLL, 0x1081040D79BF710uLL);
        atomic_fetch_add((v12 + 24), 1u);
        geo::read_write_lock::unlock((v12 + 32));
        v15[1] = 0;
        v15[2] = 0;
        *v15 = &unk_1F2A5B830;
        v16 = v7[2];
        v15[4] = v7[1];
        v15[5] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }

    *a1 = 0;
    a1[1] = 0;
    if (v10)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

void sub_1B2BDECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 2;
  v7 = v6 + 1;
  if ((v6 + 1) >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 1 > v7)
  {
    v7 = v8 >> 1;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v9 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(4 * v6) = *a2;
  if (v3 != v4)
  {
    v10 = v3;
    v11 = (4 * v6 + v3 - v4);
    do
    {
      v12 = *v10;
      v10 += 4;
      *v11++ = v12;
    }

    while (v10 != v4);
  }

  *a1 = 4 * v6 + v3 - v4;
  *(a1 + 8) = 4 * v6 + 4;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 4 * v6 + 4;
}

BOOL md::FontOptions::needsGlyphUpdate(void *a1, void *a2)
{
  if (*(a1 + 36) != *(a2 + 36) || *(a1 + 37) != *(a2 + 37) || *(a1 + 38) != *(a2 + 38) || *(a1 + 39) != *(a2 + 39) || *(a1 + 40) != *(a2 + 40))
  {
    return 1;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

_BYTE *md::PointLabelFeature::textColor(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  result = md::LabelStyle::textStyleGroup(*(a3 + 16), a4);
  v8 = result[64];
  if ((v8 - 5) > 1u)
  {
    *a1 = 0;
    a1[10] = 0;
  }

  else
  {

    return md::PointLabelFeature::iconPackColor(a1, a2, a3, v8);
  }

  return result;
}

_BYTE *md::PointLabelFeature::iconPackColor(_BYTE *result, void *a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 85) & 1) == 0)
  {
    *(a3 + 85) = 1;
    (*(*a2 + 736))(a2, a3);
    v6 = *(a3 + 16);
    if (!*(v6 + 296))
    {
      *(v6 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a3 + 16), 0);
    }

    (*(*a2 + 696))(&v11, a2);
    LOBYTE(v12) = 0;
    v13 = 0;
    md::PointLabelFeature::customImageData(&v14, a2);
    md::LabelStyle::pointIconImageKey();
  }

  if (a4 == 6)
  {
    if (*(a3 + 95) == 1)
    {
      v7 = *(a3 + 91);
      goto LABEL_11;
    }

LABEL_15:
    v10 = 0;
    *result = 0;
    goto LABEL_16;
  }

  if (a4 != 5 || *(a3 + 90) != 1)
  {
    goto LABEL_15;
  }

  v7 = *(a3 + 86);
LABEL_11:
  v8 = *(a3 + 100);
  v9 = *(a3 + 96);
  *result = 0;
  result[4] = 0;
  *result = v7;
  result[4] = 1;
  result[5] = 0;
  result[9] = 0;
  v10 = 1;
  if (v8)
  {
    *(result + 5) = v9;
    result[9] = 1;
  }

LABEL_16:
  result[10] = v10;
  return result;
}

void sub_1B2BDF4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelImageLoader::loadIconImage(void *a1, uint64_t a2, uint64_t *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v57[0] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v57[1] = _D0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = v68;
  v68[0] = 0;
  v68[2] = 0;
  v72 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v11 = *a3;
  if (*(*a3 + 112) == 6 && *(v11 + 184) == 1)
  {
    grl::IconModifiers::setTailDirection(v57, *(v11 + 180));
  }

  if (*(v11 + 197) == 1)
  {
    grl::IconModifiers::setUseBalloonShape(v57);
  }

  v12 = (v11 + 120);
  v13 = *(v11 + 143);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v11 + 128);
    if (!v13)
    {
      goto LABEL_22;
    }

    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

    v12 = *v12;
  }

  else if (!*(v11 + 143))
  {
    goto LABEL_22;
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memmove(&__dst, v12, v13);
  __dst.__r_.__value_.__s.__data_[v13] = 0;
  grl::IconModifiers::setText(v57, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  if (*(*a3 + 112) != 6)
  {
    grl::IconModifiers::setScale(v57, *(v11 + 188));
    grl::IconModifiers::setPathScale(v57, *(v11 + 200));
    grl::IconModifiers::setGlyphHidden(v57, 1);
    grl::IconModifiers::setClusterIcon(v57);
    v14 = *(v11 + 116);
    if (v14 == 2)
    {
      grl::IconModifiers::setLandmark(v57);
    }

    else if (v14 == 10)
    {
      grl::IconModifiers::setSelected(v57);
    }
  }

LABEL_22:
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&__dst, v11 + 272);
  v15 = v52;
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&__dst);
  if (v15)
  {
    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v56, *a3 + 272);
    grl::IconModifiers::setImageDataProvider(v57, v56);
    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v56);
  }

  v17 = *a3;
  v16.i32[0] = *(*a3 + 160);
  v54 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v16))), vdupq_n_s32(0x3B808081u));
  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v54);
  v18 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
  LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v18, 1), v18).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
  grl::IconModifiers::setTransitLineColor(v57, &__dst);
  grl::IconModifiers::setMirrored(v57, *(v17 + 196));
  grl::IconModifiers::setComponent(v57, *(v17 + 117));
  v20 = *(v17 + 72);
  v19 = *(v17 + 80);
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v21 = v19 - v20;
  if (v19 != v20)
  {
    if (!((v21 >> 1) >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21 >> 1);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v54.i32[0] = 1065353216;
  v54.i8[4] = 4;
  *(&v54.i32[1] + 2) = 0;
  v54.i16[5] = -1;
  v54.i8[12] = 0;
  memset(v55, 0, 24);
  v22 = *a3;
  grl::IconRequestOptions::setContentScale(v54.f32, *(*a3 + 56));
  grl::IconModifiers::setMirrored(&v54, *(v22 + 168));
  grl::IconRequestOptions::setVariant(&v54, *(v22 + 172));
  grl::IconRequestOptions::setDataVariant(&v54, *(v22 + 176));
  grl::IconRequestOptions::setCountryCode(&v54, *(v22 + 192));
  (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v46);
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (v46)
  {
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v43, *v46, v46[1], 0xAAAAAAAAAAAAAAABLL * ((v46[1] - *v46) >> 3));
    v23 = v43;
    v24 = v44;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  grl::IconRequestOptions::setResourceNames(&v54, v23, v24);
  v53 = 0u;
  v52 = 0u;
  *&__dst.__r_.__value_.__r.__words[1] = 0u;
  v25 = *a3;
  if (*(*a3 + 60))
  {
    grl::IconManager::imageForKeyValue(&__p, [*(*(a2 + 112) + 96) grlIconManager], *(*a3 + 60), *(*a3 + 64), v57, v54.f32, &__dst);
    v27 = __p;
    v26 = v39;
    v25 = *a3;
    if (__p)
    {
      *(v25 + 208) = __dst.__r_.__value_.__l.__data_;
      std::string::operator=((v25 + 216), &__dst.__r_.__value_.__r.__words[1]);
      std::string::operator=((v25 + 240), (&v52 + 8));
      v28 = 0;
      *(*a3 + 113) = 8;
      *a1 = v27;
      a1[1] = v26;
      goto LABEL_63;
    }
  }

  else
  {
    v26 = 0;
  }

  v29 = *(v25 + 39);
  if (v29 < 0)
  {
    v29 = *(v25 + 24);
  }

  v30 = *(a2 + 112);
  if (!v29)
  {
    v28 = v26;
    goto LABEL_55;
  }

  v31 = [*(v30 + 96) grlIconManager];
  v32 = *(v25 + 39);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v32 = *(v25 + 24);
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      v33 = *(v25 + 16);
      goto LABEL_42;
    }

LABEL_75:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v33 = (v25 + 16);
LABEL_42:
  if (v32 >= 0x17)
  {
    operator new();
  }

  v40 = v32;
  if (v32)
  {
    memmove(&__p, v33, v32);
  }

  *(&__p + v32) = 0;
  grl::IconManager::imageForName(&v41, v31, &__p, v57, v54.f32, &__dst);
  v34 = v41;
  v28 = v42;
  v41 = 0;
  v42 = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
    }
  }

  if (v40 < 0)
  {
    operator delete(__p);
    if (v34)
    {
      goto LABEL_52;
    }
  }

  else if (v34)
  {
LABEL_52:
    v35 = *a3;
    *(v35 + 208) = __dst.__r_.__value_.__l.__data_;
    std::string::operator=((v35 + 216), &__dst.__r_.__value_.__r.__words[1]);
    std::string::operator=((v35 + 240), (&v52 + 8));
    *(*a3 + 113) = 9;
    *a1 = v34;
    a1[1] = v28;
    v28 = 0;
    goto LABEL_63;
  }

  v30 = *(a2 + 112);
LABEL_55:
  if (*(v30 + 3702) == 1)
  {
    grl::IconManager::imageForKeyValue(&__p, [*(v30 + 96) grlIconManager], 0x10008u, 1u, v57, v54.f32, 0);
    v37 = __p;
    v36 = v39;
    __p = 0;
    v39 = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }
    }

    if (v37)
    {
      v28 = 0;
      *(*a3 + 113) = 10;
      *a1 = v37;
      a1[1] = v36;
      goto LABEL_63;
    }

    v28 = v36;
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_63:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(*(&v52 + 1));
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__size_);
  }

  __dst.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  __dst.__r_.__value_.__r.__words[0] = v55;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__dst);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  grl::IconModifiers::~IconModifiers(v57);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void sub_1B2BDFC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, char *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a24 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  a24 = v48;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  grl::IconModifiers::~IconModifiers(&a47);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  _Unwind_Resume(a1);
}

__int128 *md::LineLabelFeature::labelPoint(uint64_t a1, unsigned int *a2)
{
  md::LineLabelPlacer::positionForIdentifier(&v4, a1 + 192, *a2);
  if (v4)
  {
    v2 = (*(*v4 + 56))(v4);
  }

  else
  {
    md::LabelPoint::NullPoint(0);
    v2 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void sub_1B2BDFDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (*a2 >= 0.0031308)
  {
    v7 = (powf(v3, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v7 = v3 * 12.92;
  }

  if (v4 >= 0.0031308)
  {
    v8 = (powf(v4, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v8 = v4 * 12.92;
  }

  if (v5 >= 0.0031308)
  {
    v9 = (powf(v5, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v9 = v5 * 12.92;
  }

  *a1 = v7;
  *(a1 + 4) = v8;
  *(a1 + 8) = v9;
  *(a1 + 12) = v6;
  return a1;
}

void *md::LineLabelPlacer::positionForIdentifier(void *result, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 40);
  v3 = a2 + 40;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a3)
  {
    v11 = *(v6 + 40);
    v10 = *(v6 + 48);
    *result = v11;
    result[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t grl::IconModifiers::setTransitLineColor(uint64_t result, _DWORD *a2)
{
  if ((*(result + 25) & 1) == 0)
  {
    *(result + 25) = 1;
  }

  *(result + 26) = *a2;
  return result;
}

void *md::LabelPool::resourcesAtMercatorPoint(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  result[1] = 0;
  if (a2 == a3)
  {
    v8 = 0;
  }

  else
  {
    v6 = a2;
    v17 = result;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    do
    {
      v11 = *(*v6 + 160);
      v10 = *(*v6 + 168);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v12 = *(v11 + 48);
        if (v12 > v9)
        {
          v13 = 0;
          v14 = 1;
          while (1)
          {
            v15 = *(a4 + 8 * v13);
            if (v15 < *(v11 + 56 + 8 * v13) || v15 >= *(v11 + 72 + 8 * v13))
            {
              break;
            }

            v16 = v14;
            v14 = 0;
            v13 = 1;
            if ((v16 & 1) == 0)
            {
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v7)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v7);
              }

              v7 = v10;
              v8 = v11;
              v9 = v12;
              break;
            }
          }
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v6 += 16;
    }

    while (v6 != a3);
    result = v17;
    v17[1] = v7;
  }

  *result = v8;
  return result;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a1 + 48;
  v6 = *a2;
  v7 = 1;
  LODWORD(v22) = 1;
  v8 = (*(*v6 + 112))(v6, &v22);
  v9 = md::LabelPoint::mercatorPoint(v8);
  for (i = 0; ; i = 1)
  {
    v11 = *(v9 + 8 * i);
    if (v11 < *(v5 + 8 * i) || v11 > *(v4 + 64 + 8 * i))
    {
      break;
    }

    v12 = v7;
    v7 = 0;
    if ((v12 & 1) == 0)
    {
      v13 = *a2;
      if (!*(*a2 + 72))
      {
        *(v13 + 72) = atomic_fetch_add((*(**(a1 + 8) + 288) + 680), 1uLL) + 1;
        v13 = *a2;
      }

      md::TrafficIncidentLabelFeature::updateStyle(v13, **(a1 + 8));
      if (*(*(**a2 + 568))())
      {
        v14 = *(a1 + 16);
        v15 = **(a1 + 8);
        v16 = a2[1];
        v21[0] = *a2;
        v21[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = 1;
        md::LabelPool::labelForFeature(&v22, v14, v15, v21, &v20, 1);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v17 = v22;
        if (v22)
        {
          md::LabelMapTile::addLabel(v4, &v22);
          v18 = **(a1 + 8);
          v19 = a2[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::Label::update(v17, v18, v4);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          }
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }
      }

      else
      {
        ++*(v4 + 100);
      }

      return;
    }
  }
}