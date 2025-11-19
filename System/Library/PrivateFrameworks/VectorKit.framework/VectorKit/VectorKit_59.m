void sub_1B2BB7FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, char a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  if (a30 == 1)
  {
    (*(*a26 + 56))(a26);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a27);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v33 - 160));
  _Unwind_Resume(a1);
}

BOOL md::TrafficAccum::canAppend(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11)
{
  if (*(a1 + 96) != a3)
  {
    return 0;
  }

  if (*(a1 + 100) != a4)
  {
    return 0;
  }

  if (*(a1 + 224) != a8)
  {
    return 0;
  }

  if (*(a1 + 104) != a5)
  {
    return 0;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    if (*(a2 + 153) != *(v11 + 153))
    {
      return 0;
    }
  }

  if (*(a1 + 225) == 1 && *(a1 + 144) != a10 || *(a1 + 160) != a11 || *(a1 + 196) != a7)
  {
    return 0;
  }

  v12 = *(a1 + 8);
  if (*a1 == v12)
  {
    return 1;
  }

  if (v11 != a2 || *(a1 + 132) != a6)
  {
    return 0;
  }

  v13 = *(a1 + 136);
  v14 = 0;
  if (a5 < 0)
  {
    if (v13 < a9)
    {
      return v14;
    }

    v15 = v13 - a9;
  }

  else
  {
    if (v13 > a9)
    {
      return v14;
    }

    v15 = a9 - v13;
  }

  if (v15 <= 1.0)
  {
    v17 = ceilf(a9);
    v18 = floorf(a9);
    if (a5 <= 0)
    {
      v17 = v18;
    }

    v19 = *(a1 + 176);
    if (vabds_f32(v17, a9) <= 0.01)
    {
      v20 = *(v19 + 8 * v17);
    }

    else
    {
      v20 = vmla_n_f32(*(v19 + 8 * v18), vsub_f32(*(v19 + 8 * v18 + 8), *(v19 + 8 * v18)), a9 - v18);
    }

    v21 = vsub_f32(*(v12 - 8), v20);
    return vaddv_f32(vmul_f32(v21, v21)) < 0.0001;
  }

  return v14;
}

void std::vector<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>,geo::allocator_adapter<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
    v6 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>>(v6, v4);
  }
}

void md::TrafficAccum::flushToRibbonCollection(double *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v94 = a2;
  v99 = *MEMORY[0x1E69E9840];
  if (*(a1 + 15))
  {
    v5 = a1;
    v7 = *a1;
    v6 = *(a1 + 1);
    if (*a1 != v6)
    {
      v10 = v6 - v7;
      v11 = ((v6 - v7) >> 2) + ((v6 - v7) >> 3);
      v12 = 4 * v11;
      if ((4 * v11) > 0x2000)
      {
        v14 = malloc_type_malloc(4 * v11, 0x10000403E1C8BA9uLL);
        v13 = v14;
        if (!v14)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v13, v12);
      }

      v15 = v10 >> 3;
      v16 = (v10 >> 3) - 1;
      if ((v10 >> 3) <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v10 >> 3;
      }

      v18 = v13 + 1;
      v19 = v7;
      v20 = v17;
      do
      {
        v21 = *v19++;
        v18[-1] = v21;
        v18->i32[0] = 0;
        v18 = (v18 + 12);
        --v20;
      }

      while (v20);
      v23 = *(v5 + 3);
      v22 = *(v5 + 4);
      v95 = v13;
      v93 = v10;
      if (v22 != v23)
      {
        v89 = (v10 >> 3) - 1;
        v90 = v10 >> 3;
        v91 = v7;
        v92 = v12;
        v24 = 0;
        v25 = 0;
        v26 = (v7 + 4);
        v27 = 2;
        do
        {
          v28 = v5;
          v29 = *(v5 + 3);
          v30 = *(a3 + 16);
          v98[0] = *a3;
          v98[1] = v30;
          v31 = *a4;
          v32 = a4[1];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = md::drape(v98, v31, v32, v96, *(v26 - 1), *v26, *(v29 + 4 * v25), v5[27]);
          v34 = v95;
          v95->f32[v27] = v33;
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v32);
            v33 = v34->f32[v27];
          }

          v24 |= fabsf(v33) >= 3.40282337e38;
          ++v25;
          v27 += 3;
          v26 += 2;
          v5 = v28;
        }

        while (v17 != v25);
        v35 = v24 & (*(v96 + 1) > 0xDu);
        v12 = v92;
        v10 = v93;
        v13 = v95;
        v15 = v90;
        v7 = v91;
        v16 = v89;
        if (v35 & 1) != 0 && v90 >= 2 && (*(a3 + 24))
        {
          v36 = *v95;
          v37 = v95[1].f32[0];
          v38 = &v95[2] + 1;
          v39 = v89;
          v40 = 1.0 / v5[27];
          do
          {
            v41 = *v38;
            v42 = *v38 - v37;
            v43 = vcvtq_f64_f32(v36);
            v36 = *(v38 - 2);
            v44 = vsubq_f64(vcvtq_f64_f32(v36), v43);
            *v44.f64 = sqrt(vaddvq_f64(vmulq_f64(v44, v44)));
            v45 = v42 / *v44.f64;
            if (v45 > 0.0)
            {
              v46 = v40 * v42;
              v47 = v45 <= 0.7 || v46 <= 4.0;
              if (!v47)
              {
                *v38 = v37;
                v41 = v37;
              }
            }

            v38 += 3;
            v37 = v41;
            --v39;
          }

          while (v39);
          if (v15 >= 2)
          {
            v48 = (v13 + v12 - 12);
            v49 = v16;
            do
            {
              v50 = v48[1].f32[0];
              v51 = v48[-1].f32[1] - v50;
              v52 = vsubq_f64(vcvtq_f64_f32(*(v48 - 12)), vcvtq_f64_f32(*v48));
              *v52.f64 = sqrt(vaddvq_f64(vmulq_f64(v52, v52)));
              v53 = v51 / *v52.f64;
              if (v53 > 0.0)
              {
                v54 = v40 * v51;
                if (v53 > 0.7 && v54 > 4.0)
                {
                  v48[-1].f32[1] = v50;
                }
              }

              v48 = (v48 - 12);
              v47 = v49-- <= 1;
            }

            while (!v47);
          }
        }
      }

      if (v10 > 0x2000)
      {
        v57 = malloc_type_malloc(v10, 0x100004000313F17uLL);
        v56 = v57;
        if (!v57)
        {
LABEL_83:
          if (v12 > 0x2000)
          {
            free(v13);
          }

          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v14);
        v56 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v56, v10);
      }

      if (v15 > 2)
      {
        v97 = 1;
        *v56 = 0;
        v57 = geo::dpSimplifyViaIndexes<gm::Matrix<float,3,1>,unsigned long>(v13, 0, v16, v56, &v97);
        v60 = v97;
        v15 = ++v97;
        v56[v60] = v16;
        v59 = 12 * (v60 + 1);
      }

      else
      {
        v58 = vmovn_s64(vcgeq_u64(vdupq_n_s64(v16), xmmword_1B33B0560));
        if (v58.i8[0])
        {
          *v56 = 0;
        }

        if (v58.i8[4])
        {
          v56[1] = 1;
        }

        v97 = v15;
        v59 = v12;
      }

      if (v59 > 0x2000)
      {
        v62 = malloc_type_malloc(v59, 0x10000403E1C8BA9uLL);
        v61 = v62;
        if (!v62)
        {
LABEL_81:
          if (v10 > 0x2000)
          {
            free(v56);
          }

          goto LABEL_83;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v57);
        v61 = (&v84 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v61, v59);
      }

      v63 = *(v5 + 25) == 0;
      if (v15)
      {
        v64 = 0;
        v65 = v61;
        do
        {
          v66 = 0;
          v67 = v13 + 12 * v56[v64];
          do
          {
            *(v65 + v66) = *&v67[v66];
            v66 += 4;
          }

          while (v66 != 12);
          ++v64;
          v65 = (v65 + 12);
        }

        while (v64 != v15);
        if (v15 > 5)
        {
          goto LABEL_72;
        }

        v68 = 3.4028e38;
        v69 = -3.4028e38;
        v70 = v56;
        v71 = -3.4028e38;
        v72 = 3.4028e38;
        do
        {
          v73 = *v70++;
          v74 = (v7 + 8 * v73);
          v75 = v74[1];
          v68 = fminf(*v74, v68);
          v71 = fmaxf(v71, *v74);
          v72 = fminf(v75, v72);
          v69 = fmaxf(v69, v75);
          --v15;
        }

        while (v15);
      }

      else
      {
        v72 = 3.4028e38;
        v69 = -3.4028e38;
        v71 = -3.4028e38;
        v68 = 3.4028e38;
      }

      if (((v71 - (v68 + v72)) + v69) <= 0.0019531 && v68 != 0.0)
      {
        v76 = v72 == 0.0 || v71 == 1.0;
        if (!v76 && v69 != 1.0)
        {
          if (v59 > 0x2000)
          {
            free(v61);
          }

          goto LABEL_81;
        }
      }

LABEL_72:
      v78 = *(v5 + 21);
      v92 = *(v5 + 20);
      if (v78)
      {
        atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
      }

      v85 = v63;
      v88 = v78;
      v87 = v61;
      v84 = v59;
      v79 = *(v5 + 19);
      v96 = *(v5 + 18);
      if (v79)
      {
        atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
      }

      v86 = v79;
      v89 = *(v5 + 49);
      v90 = *(v5 + 96);
      v91 = *(v5 + 224);
      v80 = mdm::zone_mallocator::instance(v62);
      v81 = pthread_rwlock_rdlock((v80 + 32));
      if (v81)
      {
        geo::read_write_lock::logFailure(v81, "read lock", v82);
      }

      v83 = malloc_type_zone_malloc(*v80, 0x80uLL, 0x10A1040DF0859DDuLL);
      atomic_fetch_add((v80 + 24), 1u);
      geo::read_write_lock::unlock((v80 + 32));
      md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v83, v97);
      *v83 = &unk_1F29E6260;
      v83[12] = 0;
      v83[13] = 0;
      v83[14] = 0;
      operator new[]();
    }
  }
}

void sub_1B2BB9024(_Unwind_Exception *a1)
{
  *(v3 - 160) = v1;
  std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v3 - 160));
  v5 = v2[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v2[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  operator delete(v2);
  std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::~unique_ptr[abi:nn200100]((v3 - 184));
  if (*(v3 - 256))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v3 - 256));
  }

  if (*(v3 - 272))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v3 - 272));
  }

  _Unwind_Resume(a1);
}

void md::TrafficAccum::reset(uint64_t a1, uint64_t a2, int a3, char a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, int a10, char a11)
{
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 96) = a4;
  *(a1 + 100) = a5;
  *(a1 + 104) = a6;
  *(a1 + 108) = 0;
  if (a8)
  {
    atomic_fetch_add_explicit((a8 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 152);
  *(a1 + 144) = a7;
  *(a1 + 152) = a8;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v14 = *a9;
  v13 = a9[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 168);
  *(a1 + 160) = v14;
  *(a1 + 168) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  *(a1 + 196) = a10;
  *(a1 + 224) = a11;
}

void md::TrafficAccum::addPoints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, float *a6, float a7, float a8)
{
  v14 = ceilf(a7);
  v15 = floorf(a7);
  v16 = a7 < a8;
  if (a7 >= a8)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = vabds_f32(v17, a7);
  v19 = floorf(a8);
  v20 = ceilf(a8);
  if (v16)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = v19 - v14;
  v23 = v15 - v20;
  if (!v16)
  {
    v22 = v23;
  }

  v24 = vabds_f32(v21, a8);
  v25 = (v22 + 1.0);
  if (v18 <= 0.01)
  {
    v26 = (v22 + 1.0);
  }

  else
  {
    v26 = v25 + 1;
  }

  if (v24 <= 0.01)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  std::vector<gm::Matrix<float,2,1>>::reserve(a1, v27 + ((*(a1 + 8) - *a1) >> 3));
  v87 = *a1;
  v88 = *(a1 + 8);
  if (a3)
  {
    v28 = *(a1 + 24);
    v29 = v27 + ((*(a1 + 32) - v28) >> 2);
    if (v29 > (*(a1 + 40) - v28) >> 2)
    {
      if (!(v29 >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v29);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  if (a4)
  {
    v30 = *(a1 + 48);
    v31 = v27 + ((*(a1 + 56) - v30) >> 3);
    if (v31 > (*(a1 + 64) - v30) >> 3)
    {
      if (!(v31 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v31);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  v89 = a6;
  if (v18 > 0.01)
  {
    v32 = v15;
    v33 = a7 - v15;
    v34 = vmla_n_f32(*(a2 + 8 * v15), vsub_f32(*(a2 + 8 * v15 + 8), *(a2 + 8 * v15)), a7 - v15);
    v36 = *(a1 + 8);
    v35 = *(a1 + 16);
    if (v36 >= v35)
    {
      v38 = (v36 - *a1) >> 3;
      if ((v38 + 1) >> 61)
      {
        goto LABEL_95;
      }

      v39 = v35 - *a1;
      v40 = v39 >> 2;
      if (v39 >> 2 <= (v38 + 1))
      {
        v40 = v38 + 1;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        v41 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v40;
      }

      v95 = a1;
      v84 = v33;
      if (v41)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v41);
      }

      __p = 0;
      v92 = (8 * v38);
      *v92 = v34;
      v93 = 8 * v38 + 8;
      v94 = 0;
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, &__p);
      v37 = *(a1 + 8);
      if (__p)
      {
        operator delete(__p);
      }

      v33 = v84;
    }

    else
    {
      *v36 = v34;
      v37 = v36 + 1;
    }

    *(a1 + 8) = v37;
    if (a3)
    {
      *&__p = *(a3 + 4 * v32) + ((*(a3 + 4 * v32 + 4) - *(a3 + 4 * v32)) * v33);
      std::vector<float>::push_back[abi:nn200100](a1 + 24, &__p);
    }

    if (a4)
    {
      v42 = (a4 + 16 * v32);
      __p = __PAIR64__(v42[2] + ((v42[6] - v42[2]) * (a7 - v32)), *v42 + ((v42[4] - *v42) * (a7 - v32)));
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 48, &__p);
    }
  }

  if (v25)
  {
    v43 = 0;
    v44 = 0;
    v45 = v17;
    do
    {
      if (a7 >= a8)
      {
        v46 = v43;
      }

      else
      {
        v46 = v44;
      }

      v47 = v46 + v45;
      v48 = *(a2 + 8 * (v46 + v45));
      v50 = *(a1 + 8);
      v49 = *(a1 + 16);
      if (v50 >= v49)
      {
        v52 = (v50 - *a1) >> 3;
        if ((v52 + 1) >> 61)
        {
          goto LABEL_95;
        }

        v53 = v49 - *a1;
        v54 = v53 >> 2;
        if (v53 >> 2 <= (v52 + 1))
        {
          v54 = v52 + 1;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v55 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v54;
        }

        v95 = a1;
        if (v55)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v55);
        }

        __p = 0;
        v92 = (8 * v52);
        *v92 = v48;
        v93 = 8 * v52 + 8;
        v94 = 0;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, &__p);
        v51 = *(a1 + 8);
        if (__p)
        {
          operator delete(__p);
        }
      }

      else
      {
        *v50 = v48;
        v51 = v50 + 1;
      }

      *(a1 + 8) = v51;
      if (a3)
      {
        std::vector<float>::push_back[abi:nn200100](a1 + 24, (a3 + 4 * v47));
      }

      if (a4)
      {
        v56 = (a4 + 16 * v47);
        v57 = v56[2];
        LODWORD(__p) = *v56;
        HIDWORD(__p) = v57;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 48, &__p);
      }

      ++v44;
      --v43;
    }

    while (v25 != v44);
  }

  if (v24 > 0.01)
  {
    v58 = v19;
    v59 = a8 - v19;
    v60 = vmla_n_f32(*(a2 + 8 * v19), vsub_f32(*(a2 + 8 * v19 + 8), *(a2 + 8 * v19)), a8 - v19);
    v62 = *(a1 + 8);
    v61 = *(a1 + 16);
    if (v62 < v61)
    {
      *v62 = v60;
      v63 = v62 + 1;
LABEL_77:
      *(a1 + 8) = v63;
      if (a3)
      {
        *&__p = *(a3 + 4 * v58) + ((*(a3 + 4 * v58 + 4) - *(a3 + 4 * v58)) * v59);
        std::vector<float>::push_back[abi:nn200100](a1 + 24, &__p);
      }

      if (a4)
      {
        v68 = (a4 + 16 * v58);
        __p = __PAIR64__(v68[2] + ((v68[6] - v68[2]) * (a8 - v58)), *v68 + ((v68[4] - *v68) * (a8 - v58)));
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 48, &__p);
      }

      goto LABEL_81;
    }

    v64 = (v62 - *a1) >> 3;
    if (!((v64 + 1) >> 61))
    {
      v65 = v61 - *a1;
      v66 = v65 >> 2;
      if (v65 >> 2 <= (v64 + 1))
      {
        v66 = v64 + 1;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v67 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v66;
      }

      v95 = a1;
      v85 = v59;
      if (v67)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v67);
      }

      __p = 0;
      v92 = (8 * v64);
      *v92 = v60;
      v93 = 8 * v64 + 8;
      v94 = 0;
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, &__p);
      v63 = *(a1 + 8);
      if (__p)
      {
        operator delete(__p);
      }

      v59 = v85;
      goto LABEL_77;
    }

LABEL_95:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_81:
  if (v89)
  {
    v69 = (v88 - v87) >> 3;
    v70 = *a1;
    v71 = (*(a1 + 8) - *a1) >> 3;
    if (v69 >= v71 - 1)
    {
      *&__p = *v89;
    }

    else
    {
      v72 = *(v70 + v88 - v87);
      v73 = ~v69 + v71;
      v74 = (v70 + 8 * v69 + 8);
      v75 = 0.0;
      do
      {
        v76 = *v74++;
        v77 = vsub_f32(v72, v76);
        v75 = sqrtf(vaddv_f32(vmul_f32(v77, v77))) + v75;
        v72 = v76;
        --v73;
      }

      while (v73);
      v78 = *v89;
      v79 = 0.0;
      if (v75 > 0.000001)
      {
        v79 = (v89[1] - v78) / v75;
      }

      *&__p = *v89;
      do
      {
        std::vector<float>::push_back[abi:nn200100](a1 + 72, &__p);
        v80 = *a1;
        v81 = *(a1 + 8);
        v82 = vsub_f32(*(*a1 + 8 * v69), *(*a1 + 8 * v69 + 8));
        v78 = v78 + (sqrtf(vaddv_f32(vmul_f32(v82, v82))) * v79);
        *&__p = v78;
        ++v69;
      }

      while (v69 < ((v81 - v80) >> 3) - 1);
    }

    std::vector<float>::push_back[abi:nn200100](a1 + 72, &__p);
  }

  v83 = *(a1 + 108);
  if (!v83)
  {
    *(a1 + 112) = a7;
    *(a1 + 176) = a2;
    *(a1 + 184) = a3;
    *(a1 + 192) = a5;
  }

  *(a1 + 108) = v83 + 1;
}

void std::vector<float>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t geo::dpSimplifyViaIndexes<gm::Matrix<float,3,1>,unsigned long>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = result;
  v9 = result + 12 * a3;
  v10 = result + 12;
  while (1)
  {
    v11 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = v8 + 12 * a2;
    v15 = v10 + 12 * a2;
    v16 = 0.0;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(&v31 + i) = *(v9 + i) - *(v14 + i);
      }

      v18 = 0;
      v29 = v31;
      v30 = v32;
      v19 = 0.0;
      do
      {
        v19 = v19 + (*(&v29 + v18) * *(&v29 + v18));
        v18 += 4;
      }

      while (v18 != 12);
      v20 = 0.0;
      if (v19 > 1.0e-15)
      {
        for (j = 0; j != 12; j += 4)
        {
          *(&v31 + j) = *(v14 + v12 + j + 12) - *(v14 + j);
        }

        v22 = 0;
        v23 = 0.0;
        do
        {
          v23 = v23 + (*(&v29 + v22) * *(&v31 + v22));
          v22 += 4;
        }

        while (v22 != 12);
        v20 = fminf(fmaxf(v23 / v19, 0.0), 1.0);
      }

      v24 = 0;
      v31 = *v14;
      v32 = *(v14 + 8);
      do
      {
        *(&v31 + v24) = *(&v31 + v24) + ((*(v9 + v24) - *(&v31 + v24)) * v20);
        v24 += 4;
      }

      while (v24 != 12);
      v25 = 0;
      v29 = v31;
      v30 = v32;
      do
      {
        *(&v31 + v25) = *(v15 + v25) - *(&v29 + v25);
        v25 += 4;
      }

      while (v25 != 12);
      v26 = 0;
      v27 = 0.0;
      do
      {
        v27 = v27 + (*(&v31 + v26) * *(&v31 + v26));
        v26 += 4;
      }

      while (v26 != 12);
      if (v27 > v16)
      {
        v13 = v11;
      }

      v16 = fmaxf(v27, v16);
      ++v11;
      v12 += 12;
      v15 += 12;
    }

    while (v11 != a3);
    if (v16 <= 0.00000023842)
    {
      break;
    }

    result = geo::dpSimplifyViaIndexes<gm::Matrix<float,3,1>,unsigned long>(v8);
    v28 = (*a5)++;
    *(a4 + 8 * v28) = v13;
    a2 = v13;
  }

  return result;
}

uint64_t *md::Label::clearAnimation(md::Label *this)
{
  result = md::Label::clearAnimatingPart(this);
  atomic_store(0, this + 1332);
  if (*(this + 158))
  {
    result = std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](this + 158, 0);
    *(this + 1186) = *(this + 1188);
  }

  return result;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::Label>>(v5, v4);
  }

  return v1;
}

unint64_t std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(uint64_t a1)
{
  v2 = gss::FeatureAttributeSet::hash(*(a1 + 240), *(a1 + 248));
  v4 = *(a1 + 284);
  if (*(a1 + 284))
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 272);
    do
    {
      if (!((v9 >= v4) | v7 & 1))
      {
        v8 = (v10 + 4 * v9);
        v3 = (v10 + *(a1 + 280) + 2 * v9);
        v7 = 1;
      }

      v5 ^= (*v3 - 0x61C8864680B583EBLL + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) << 6) + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) >> 2)) ^ ((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8);
      v11 = v9 + 1;
      if (v7)
      {
        v7 = 0;
      }

      if (v11 < v4)
      {
        ++v9;
      }

      else
      {
        v9 = *(a1 + 284);
      }
    }

    while (v11 < v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v2;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(v5, v4);
  }

  return a1;
}

void *__copy_helper_block_ea8_80c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE96c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(void *result, void *a2)
{
  v2 = a2[11];
  result[10] = a2[10];
  result[11] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *md::DaVinciTrafficLayer::DaVinciTrafficLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6, int a7)
{
  v329 = *MEMORY[0x1E69E9840];
  __src = a6[32];
  if (__src == 1)
  {
    v275 = a6[1];
    v8 = *(a6 + 4);
    v281 = *a6;
    v277 = *(a6 + 2);
    v279 = a6[24];
  }

  else
  {
    v281 = 0;
  }

  if (a3)
  {
    v323 = 0;
    v322 = 0;
    *(&v325 + 1) = 0;
    *(&v324 + 1) = 0;
    *(&v324 + 1) = 0;
    LODWORD(v326) = 1065353216;
    v9 = *(a3 + 64);
    v296 = *(a3 + 72);
    if (v9 == v296)
    {
LABEL_102:
      operator new();
    }

    while (1)
    {
      v10 = *(*v9 + 88);
      v11 = *(*v9 + 72);
      if (a7)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v11 + 1;
          do
          {
            v14 = vcvts_n_u32_f32(*(v13 - 1), 2uLL);
            if (v14 >= 3)
            {
              LOBYTE(v14) = 3;
            }

            v15 = vcvts_n_u32_f32(*v13, 2uLL);
            if (v15 >= 3)
            {
              LOBYTE(v15) = 3;
            }

            v12 |= 1 << (v14 | (4 * v15));
            v13 += 3;
            v10 = (v10 - 1);
          }

          while (v10);
        }
      }

      else
      {
        v10 = ggl::CullingGrid::intersectedCellsForRibbon(v10, v11);
        v12 = v10;
      }

      v16 = v12;
      v17 = v323;
      if (v323)
      {
        v18 = vcnt_s8(v323);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v7 = v12;
          if (v323 <= v12)
          {
            v7 = v12 % v323;
          }
        }

        else
        {
          v7 = (v323 - 1) & v12;
        }

        v19 = *(v322 + v7);
        if (v19)
        {
          v20 = *v19;
          if (*v19)
          {
            do
            {
              v21 = v20[1];
              if (v21 == v12)
              {
                if (*(v20 + 4) == v12)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                if (v18.u32[0] > 1uLL)
                {
                  if (v21 >= v323)
                  {
                    v21 %= v323;
                  }
                }

                else
                {
                  v21 &= v323 - 1;
                }

                if (v21 != v7)
                {
                  break;
                }
              }

              v20 = *v20;
            }

            while (v20);
          }
        }
      }

      v22 = mdm::zone_mallocator::instance(v10);
      v23 = pthread_rwlock_rdlock((v22 + 32));
      if (v23)
      {
        geo::read_write_lock::logFailure(v23, "read lock", v24);
      }

      v20 = malloc_type_zone_malloc(*v22, 0x38uLL, 0x10200408A1E2E81uLL);
      atomic_fetch_add((v22 + 24), 1u);
      geo::read_write_lock::unlock((v22 + 32));
      *v20 = 0;
      v20[1] = v12;
      *(v20 + 4) = v12;
      v20[3] = 0;
      v20[4] = 0;
      v20[5] = 0;
      v26 = (*(&v325 + 1) + 1);
      if (!v17 || (*&v326 * v17) < v26)
      {
        break;
      }

LABEL_81:
      v47 = v322;
      v48 = *(v322 + v7);
      if (v48)
      {
        *v20 = *v48;
      }

      else
      {
        *v20 = *(&v324 + 1);
        *(&v324 + 1) = v20;
        v47[v7] = &v324 + 8;
        if (!*v20)
        {
          goto LABEL_90;
        }

        v49 = *(*v20 + 8);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v49 >= v17)
          {
            v49 %= v17;
          }
        }

        else
        {
          v49 &= v17 - 1;
        }

        v48 = v322 + 8 * v49;
      }

      *v48 = v20;
LABEL_90:
      ++*(&v325 + 1);
LABEL_91:
      std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v20 + 3), v9++);
      if (v9 == v296)
      {
        goto LABEL_102;
      }
    }

    v27 = (v17 & (v17 - 1)) != 0;
    if (v17 < 3)
    {
      v27 = 1;
    }

    v28 = v27 | (2 * v17);
    v29 = vcvtps_u32_f32(v26 / *&v326);
    if (v28 <= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v30 == 1)
    {
      v30 = 2;
    }

    else if ((v30 & (v30 - 1)) != 0)
    {
      prime = std::__next_prime(v30);
      v30 = prime;
    }

    v17 = v323;
    if (v30 > v323)
    {
      goto LABEL_46;
    }

    if (v30 < v323)
    {
      prime = vcvtps_u32_f32(*(&v325 + 1) / *&v326);
      if (v323 < 3 || (v42 = vcnt_s8(v323), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v43 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v43;
        }
      }

      if (v30 <= prime)
      {
        v30 = prime;
      }

      if (v30 >= v323)
      {
        v17 = v323;
      }

      else
      {
        if (v30)
        {
LABEL_46:
          v31 = mdm::zone_mallocator::instance(prime);
          v32 = pthread_rwlock_rdlock((v31 + 32));
          if (v32)
          {
            geo::read_write_lock::logFailure(v32, "read lock", v33);
          }

          v34 = malloc_type_zone_malloc(*v31, 8 * v30, 0x2004093837F09uLL);
          atomic_fetch_add((v31 + 24), 1u);
          geo::read_write_lock::unlock((v31 + 32));
          v36 = v322;
          v322 = v34;
          if (v36)
          {
            v37 = mdm::zone_mallocator::instance(v35);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v37, v36);
          }

          v38 = 0;
          v323 = v30;
          do
          {
            *(v322 + v38++) = 0;
          }

          while (v30 != v38);
          v39 = *(&v324 + 1);
          if (*(&v324 + 1))
          {
            v40 = *(*(&v324 + 1) + 8);
            v41 = vcnt_s8(v30);
            v41.i16[0] = vaddlv_u8(v41);
            if (v41.u32[0] > 1uLL)
            {
              if (v40 >= v30)
              {
                v40 %= v30;
              }
            }

            else
            {
              v40 &= v30 - 1;
            }

            *(v322 + v40) = &v324 + 8;
            for (i = *v39; i; v40 = v45)
            {
              v45 = i[1];
              if (v41.u32[0] > 1uLL)
              {
                if (v45 >= v30)
                {
                  v45 %= v30;
                }
              }

              else
              {
                v45 &= v30 - 1;
              }

              if (v45 != v40)
              {
                v46 = v322;
                if (!*(v322 + v45))
                {
                  *(v322 + v45) = v39;
                  goto LABEL_72;
                }

                *v39 = *i;
                *i = *v46[v45];
                *v46[v45] = i;
                i = v39;
              }

              v45 = v40;
LABEL_72:
              v39 = i;
              i = *i;
            }
          }

          v17 = v30;
          goto LABEL_76;
        }

        v50 = v322;
        v322 = 0;
        if (v50)
        {
          v51 = mdm::zone_mallocator::instance(prime);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v51, v50);
        }

        v17 = 0;
        v323 = 0;
      }
    }

LABEL_76:
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v17 <= v16)
      {
        v7 = v16 % v17;
      }

      else
      {
        v7 = v16;
      }
    }

    else
    {
      v7 = (v17 - 1) & v16;
    }

    goto LABEL_81;
  }

  *a1 = &unk_1F29E9E08;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  if (__src)
  {
    *(a1 + 81) = v275;
    *(a1 + 84) = v8;
    *(a1 + 80) = v281;
    *(a1 + 96) = v277;
    *(a1 + 104) = v279;
    *(a1 + 112) = 1;
  }

  if (*(a1 + 8))
  {
    v52 = *(a1 + 8);
    v53 = 0;
    while (1)
    {
      v274 = v52;
      v54 = *v52;
      v54[1] = a1;
      v56 = v54[31];
      v55 = v54[32];
      v276 = v55;
      while (v56 != v55)
      {
        v278 = v53;
        v282 = v56;
        v57 = *v56;
        v57[1] = **v56;
        v57[3] = v57[2];
        v57[5] = v57[4];
        v323 = 0;
        v322 = 0;
        *&v324 = 0;
        __p[0] = 0;
        __p[1] = 0;
        *v312 = 0;
        v58 = v57[7];
        v59 = v57[8];
        if (v58 == v59)
        {
          goto LABEL_152;
        }

        v287 = v57;
        v286 = v57[8];
        do
        {
          v60 = *v58;
          v304[0] = 1;
          md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(v60, &v322, __p, v304);
          v61 = v304[0];
          if (v304[0] < 2)
          {
            goto LABEL_149;
          }

          v289 = v60;
          v62 = v322;
          v63 = 12;
          v64 = 1;
          while (1)
          {
            v65 = (v322 + 12 * v64);
            v67 = *v65;
            v66 = v65[1];
            v68 = 1;
            v69 = *v322;
            do
            {
              v70 = vabds_f32(v67, v69);
              if ((v68 & 1) == 0)
              {
                break;
              }

              v68 = 0;
              v69 = *(v322 + 1);
              v67 = v66;
            }

            while (v70 < 1.0e-10);
            if (v70 >= 1.0e-10)
            {
              break;
            }

            ++v64;
            v63 += 12;
            if (v64 == v304[0])
            {
              v71 = 0.0;
              v72 = 1.0;
              goto LABEL_122;
            }
          }

          for (j = 0; j != 12; j += 4)
          {
            *(v308 + j) = *&v62[v63] - *&v62[j];
            v63 += 4;
          }

          v74 = 1.0 / sqrtf((*v308 * *v308) + (*(v308 + 1) * *(v308 + 1)));
          v72 = v74 * *v308;
          v71 = v74 * *(v308 + 1);
LABEL_122:
          if ((v61 - 1) < 2)
          {
            v98 = 8;
            goto LABEL_147;
          }

          v75 = (v62 + 24);
          v76 = 2;
          v77 = 1;
          do
          {
            v78 = v72;
            v79 = v71;
            v80 = &v62[12 * v77];
            v305 = *v80;
            v306 = *(v80 + 2);
            if (++v77 < v61)
            {
              v81 = v75;
              v82 = v77;
              while (1)
              {
                v83 = &v62[12 * v82];
                v85 = *v83;
                v84 = v83[1];
                v86 = 1;
                v87 = *&v305;
                do
                {
                  v88 = vabds_f32(v85, v87);
                  if ((v86 & 1) == 0)
                  {
                    break;
                  }

                  v86 = 0;
                  v87 = *(&v305 + 1);
                  v85 = v84;
                }

                while (v88 < 1.0e-10);
                if (v88 >= 1.0e-10)
                {
                  break;
                }

                ++v82;
                v81 += 3;
                if (v82 == v61)
                {
                  goto LABEL_135;
                }
              }

              for (k = 0; k != 12; k += 4)
              {
                v90 = *v81++;
                *(v308 + k) = v90 - *(&v305 + k);
              }

              v91 = 1.0 / sqrtf((*v308 * *v308) + (*(v308 + 1) * *(v308 + 1)));
              v72 = v91 * *v308;
              v71 = v91 * *(v308 + 1);
            }

LABEL_135:
            v92 = atan2f(v71, v72);
            v93 = v92 - atan2f(v79, v78);
            v94 = v93;
            if (v93 <= 3.14159265)
            {
              if (v94 >= -3.14159265)
              {
                goto LABEL_140;
              }

              v95 = 6.28318531;
            }

            else
            {
              v95 = -6.28318531;
            }

            v93 = v94 + v95;
LABEL_140:
            v96 = fmaxf(ceilf(fabsf(v93) * 1.2732), 1.0);
            v97 = 2;
            if (v96 >= 2)
            {
              v97 = 2 * v96;
            }

            v76 += v97;
            v75 += 3;
          }

          while (v77 != v61 - 1);
          v98 = v76 + 6;
          v99 = (v76 + 6) >= 0x10000;
          v57 = v287;
          v59 = v286;
          if (v99)
          {
            v100 = v289;
            v289[2] = v289[1];
            v101 = v289[3];
          }

          else
          {
LABEL_147:
            v100 = v289;
            v102 = 3 * v98 + v289[3];
            v289[2] = v289[1] + v98;
            v101 = v102 - 6;
          }

          v100[4] = v101;
          v100[6] = v100[5];
LABEL_149:
          v103 = *v58++;
          v57[1] = v103[2] + v57[1] - v103[1];
          v57[3] = v103[4] + v57[3] - v103[3];
          v57[5] = v103[6] + v57[5] - v103[5];
        }

        while (v58 != v59);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

LABEL_152:
        if (v322)
        {
          operator delete(v322);
        }

        v104 = v278 >> 3;
        if (((v278 >> 3) + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v278 >> 3 != -1)
        {
          if (!(((v278 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        *(8 * v104) = *v282;
        v53 = 8 * v104 + 8;
        memcpy(0, 0, v278);
        v56 = (v282 + 1);
        v55 = v276;
      }

      v52 = v274 + 1;
      if (v274 == -8)
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          goto LABEL_164;
        }

LABEL_163:
        operator new();
      }
    }
  }

  v53 = 0;
  if (a7)
  {
    goto LABEL_163;
  }

LABEL_164:
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v308[0] = 0;
  v108 = v53 >> 3;
  do
  {
    if (v107 == v108 || (*(*(8 * v107) + 8) + v106 - **(8 * v107)) >= 0x10000)
    {
      v305 = "BatchType/IData";
      operator new();
    }

    if (v107 < v53 >> 3)
    {
      v109 = *(8 * v107);
      v106 += v109->i64[1] - v109->i64[0];
      v110 = vaddq_s64(v109[1], v109[2]);
      v105 += vsubq_s64(vdupq_laneq_s64(v110, 1), v110).u64[0];
      v308[0] = v105;
    }

    v108 = v53 >> 3;
    ++v107;
  }

  while (v107 <= v53 >> 3);
  v111 = a1;
  v112 = &xmmword_1B33B2000;
  *a1 = &unk_1F29E9DE8;
  *(a1 + 120) = *a4;
  v113 = a4[1];
  *(a1 + 128) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = *a5;
  v114 = a5[1];
  *(a1 + 144) = v114;
  if (v114)
  {
    atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = 0;
  v115 = *(a1 + 8);
  v258 = *(a1 + 16);
  if (v115 != v258)
  {
    v116 = 1.0;
    *(&v117 + 1) = 0x3F8000003F800000;
    *&v117 = 0x3DDB7CDFD9D7BDBBLL;
    v290 = v117;
    do
    {
      v119 = *(*v115 + 248);
      v118 = *(*v115 + 256);
      v259 = v115;
      v260 = v118;
      while (v119 != v118)
      {
        v261 = v119;
        v120 = *v119;
        v121 = **((*v119)[11] + 64);
        v122 = **v119;
        v123 = (*v119)[1];
        ggl::BufferMemory::BufferMemory(v308);
        ggl::ResourceAccessor::accessIndexData(&v322, a2, v121, v122, v123, 1, 1);
        ggl::BufferMemory::operator=(v308, &v322);
        ggl::BufferMemory::~BufferMemory(&v322);
        v124 = v120[2];
        v126 = v120[4];
        v125 = v120[5];
        if (v125 == v126)
        {
          v127 = v120[3];
        }

        else
        {
          if (v126 < v124)
          {
            v124 = v120[4];
          }

          if (v120[3] <= v125)
          {
            v127 = v120[5];
          }

          else
          {
            v127 = v120[3];
          }
        }

        v128 = v308[5];
        v129 = v120;
        v130 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v305, *(v120[11] + 96), v124, v127, 1, 1, a2);
        v131 = v120[2];
        v132 = v120[4];
        memset(v304, 0, sizeof(v304));
        memset(&v303, 0, sizeof(v303));
        v263 = v120;
        v133 = v120[7];
        v264 = (v129 + 7);
        v134 = v129[8];
        if (v133 != v134)
        {
          v135 = v307 + 2 * v132 - 2 * v124;
          v136 = v307 + 2 * v131 - 2 * v124;
          v137 = v128;
          v138 = v135;
          v266 = v134;
          do
          {
            v130 = *v133;
            v322 = v111;
            v323 = v130;
            v324 = xmmword_1B33B0570;
            v325 = xmmword_1B33B0580;
            v326 = xmmword_1B33B0590;
            v327[0] = xmmword_1B33B05A0;
            v327[1] = xmmword_1B33B05B0;
            v327[2] = xmmword_1B33B05C0;
            v319 = v137;
            v139 = v130[2];
            if (v139 == v130[1])
            {
              v140 = v130[2];
            }

            else
            {
              v318 = 1;
              v270 = v130;
              md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(v130, v304, &v303, &v318);
              v272 = v136;
              v142 = v318;
              v143 = v318 - 2;
              if (v318 >= 2)
              {
                v267 = v138;
                v144 = 0;
                v145 = v304[0];
                v146 = v304[0];
                __srca = v303.__begin_;
                v328 = v137;
                v147 = 0.0;
                v148 = v304[0];
                do
                {
                  for (m = 0; m != 12; m += 4)
                  {
                    *(__p + m) = *&v148[m + 12] - *&v148[m];
                  }

                  v147 = sqrtf(vaddv_f32(vmul_f32(__p[0], __p[0]))) + v147;
                  v148 += 12;
                }

                while (v144++ != v143);
                v151 = 0;
                v152 = v147;
                do
                {
                  *(__p + v151 * 4) = *&v145[v151 * 4 + 12] - *&v145[v151 * 4];
                  ++v151;
                }

                while (v151 != 3);
                v153 = v116 / v147;
                v154 = v152 <= 1.0e-10;
                HIDWORD(v152) = 0;
                if (v154)
                {
                  v153 = 0.0;
                }

                v283 = v153;
                v155 = sqrtf((*__p * *__p) + (*(__p + 1) * *(__p + 1)));
                v156 = 1;
                while (1)
                {
                  v157 = &v145[12 * v156];
                  v159 = *v157;
                  v158 = v157[1];
                  v160 = 1;
                  v161 = *v146;
                  do
                  {
                    v162 = vabds_f32(v159, v161);
                    if ((v160 & 1) == 0)
                    {
                      break;
                    }

                    v160 = 0;
                    v161 = v146[1];
                    v159 = v158;
                  }

                  while (v162 < 1.0e-10);
                  if (v162 >= 1.0e-10)
                  {
                    break;
                  }

                  ++v156;
                  v151 += 3;
                  if (v156 == v142)
                  {
                    v152 = 0.0;
                    LODWORD(v141) = 1.0;
                    goto LABEL_212;
                  }
                }

                for (n = 0; n != 3; ++n)
                {
                  *(__p + n * 4) = v146[v151++] - v146[n];
                }

                v164 = v116 / sqrtf((*__p * *__p) + (*(__p + 1) * *(__p + 1)));
                *&v141 = v164 * *__p;
                *&v152 = v164 * *(__p + 1);
LABEL_212:
                v268 = v137;
                __p[0] = *__srca;
                for (ii = 2; ii != 5; ++ii)
                {
                  v166 = *v146++;
                  *(__p + ii) = v166;
                }

                v269 = v133;
                v167 = v141;
                DWORD1(v167) = LODWORD(v152);
                v293 = v167;
                v168 = -*&v152;
                v313.f32[0] = -*&v152;
                v313.i32[1] = v141;
                v317 = 1;
                v169 = v152;
                v297 = *&v141;
                v300 = v152;
                *&v312[4] = -*&v152 - *&v141;
                *&v312[8] = *&v141 - *&v152;
                *&v167 = *&v152 - *&v141;
                *&v152 = -(*&v152 + *&v141);
                *&v312[12] = v167;
                *&v312[16] = LODWORD(v152);
                v314 = xmmword_1B33B0570;
                v316 = 0.0;
                v315 = 0.0;
                md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, -0.00781250185, v152, v169, *&v141);
                LOBYTE(v317) = 0;
                *&v312[4] = v168;
                *&v312[8] = v297;
                *&v312[12] = LODWORD(v300);
                *&v312[16] = -v297;
                v314 = xmmword_1B33B0590;
                md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, -0.0078125, v300, v170, v171);
                v280 = v142 - 1;
                if (v142 - 1 < 2)
                {
                  v224 = v290;
                  v225 = v293;
                }

                else
                {
                  v178 = (v145 + 24);
                  v179 = v145 + 12;
                  v180 = 1;
                  v181 = v293;
                  do
                  {
                    v182 = 0;
                    __p[0] = __srca[v180];
                    v183 = &v145[12 * v180];
                    v309 = *v183;
                    v310 = *(v183 + 2);
                    ++v180;
                    do
                    {
                      *(&v320 + v182 * 4) = v178[v182] - *(&v309 + v182 * 4);
                      ++v182;
                    }

                    while (v182 != 3);
                    *&v174 = v320;
                    v184 = v321;
                    if (v180 >= v142)
                    {
LABEL_225:
                      v176 = v181;
                      v193 = *(&v181 + 1);
                      v194 = *(&v181 + 1);
                      v195 = *&v181;
                    }

                    else
                    {
                      v185 = v178;
                      v186 = v180;
                      while (1)
                      {
                        v187 = &v145[12 * v186];
                        v189 = *v187;
                        v188 = v187[1];
                        v190 = 1;
                        v191 = *&v309;
                        do
                        {
                          v192 = vabds_f32(v189, v191);
                          if ((v190 & 1) == 0)
                          {
                            break;
                          }

                          v190 = 0;
                          v191 = *(&v309 + 1);
                          v189 = v188;
                        }

                        while (v192 < 1.0e-10);
                        if (v192 >= 1.0e-10)
                        {
                          break;
                        }

                        ++v186;
                        v185 += 3;
                        if (v186 == v142)
                        {
                          goto LABEL_225;
                        }
                      }

                      for (jj = 0; jj != 12; jj += 4)
                      {
                        v197 = *v185++;
                        *(&v320 + jj) = v197 - *(&v309 + jj);
                      }

                      v198 = v116 / sqrtf((v320 * v320) + (v321 * v321));
                      v195 = v198 * v320;
                      v194 = v198 * v321;
                      v193 = *(&v181 + 1);
                      *&v176 = v198 * v320;
                    }

                    v199 = v195 + *&v181;
                    v200 = v194 + v193;
                    v201 = (v199 * v199) + (v200 * v200);
                    if (v201 <= 0.0)
                    {
                      LODWORD(v177) = DWORD1(v181);
                      LODWORD(v203) = v181;
                      v301 = v181;
                      v193 = *(&v181 + 1);
                    }

                    else
                    {
                      v202 = v116 / sqrtf(v201);
                      v203 = -(v200 * v202);
                      *&v177 = v202 * v199;
                      v301 = __PAIR64__(LODWORD(v177), LODWORD(v203));
                    }

                    v204 = 0;
                    v205 = sqrtf((*&v174 * *&v174) + (v184 * v184));
                    *(&v176 + 1) = v194;
                    v291 = v176;
                    v294 = *&v181;
                    v288 = v177;
                    v206 = sqrtf(fmaxf(-((((v195 * v203) + (v194 * *&v177)) * ((v195 * v203) + (v194 * *&v177))) + -1.0), 0.1));
                    *&v174 = v203 / v206;
                    v298 = v174;
                    do
                    {
                      *(&__p[1] + v204) = *&v179[v204];
                      v204 += 4;
                    }

                    while (v204 != 12);
                    v316 = v155 * v283;
                    v314 = xmmword_1B33B0590;
                    v315 = v155;
                    v313.f32[0] = v203;
                    HIBYTE(v317) = 1;
                    v207 = atan2f(v194, v195);
                    v209 = v207 - atan2f(v193, v294);
                    v210 = v209;
                    if (v209 <= 3.14159265)
                    {
                      HIDWORD(v211) = -1073143301;
                      v212 = v288;
                      if (v210 < -3.14159265)
                      {
                        HIDWORD(v211) = 1075388923;
                        v209 = v210 + 6.28318531;
                      }
                    }

                    else
                    {
                      HIDWORD(v211) = -1072094725;
                      v209 = v210 + -6.28318531;
                      v212 = v288;
                    }

                    *&v211 = *&v212 / v206;
                    v213 = fabsf(v209);
                    v214 = fmaxf(ceilf(v213 * *(v112 + 384)), v116);
                    if (v214 < 2)
                    {
                      v313.i32[1] = LODWORD(v212);
                      HIDWORD(v223) = HIDWORD(v298);
                      *&v312[4] = LODWORD(v298);
                      *&v312[8] = *&v212 / v206;
                      *&v223 = -*&v298;
                      *&v211 = -*&v211;
                      *&v312[12] = -*&v298;
                      *&v312[16] = LODWORD(v211);
                      md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, v223, v211, v212, v208);
                    }

                    else
                    {
                      v215 = 0;
                      v216.i32[0] = LODWORD(v298);
                      v295 = v211;
                      v216.f32[1] = *&v212 / v206;
                      v217 = vneg_f32(v216);
                      do
                      {
                        v218 = __sincosf_stret(((v215 * (1.0 / (v214 + -1.0))) + -0.5) * v209);
                        v219 = vrev64_s32(vmul_n_f32(v301, v218.__sinval));
                        v220 = vmul_n_f32(v301, v218.__cosval);
                        v221.i32[0] = vsub_f32(v220, v219).u32[0];
                        v222 = COERCE_DOUBLE(vadd_f32(v220, v219));
                        v221.i32[1] = HIDWORD(v222);
                        v313 = v221;
                        LODWORD(v222) = 1070141403;
                        if (v213 >= 1.5708)
                        {
                          *&v312[4] = v221;
                          *&v312[12] = vneg_f32(v221);
                          md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, *&v312[12], v222, *&v219, v301);
                          HIBYTE(v317) = 0;
                        }

                        else
                        {
                          if (v209 >= 0.0)
                          {
                            v222 = v295;
                            v219 = *&v298;
                            *&v312[4] = LODWORD(v298);
                            *&v312[8] = LODWORD(v295);
                            v221 = vneg_f32(v221);
                            *&v312[12] = v221;
                          }

                          else
                          {
                            *&v312[4] = v221;
                            *&v312[12] = v217;
                          }

                          md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, *&v221, v222, *&v219, v301);
                        }

                        ++v215;
                      }

                      while (v214 != v215);
                    }

                    v178 += 3;
                    v155 = v205 + v155;
                    v179 += 12;
                    v224 = v291;
                    v225 = v291;
                    *&v181 = v291;
                    v112 = &xmmword_1B33B2000;
                    v116 = 1.0;
                  }

                  while (v180 != v280);
                }

                v226 = &v145[12 * v280];
                v227 = &v145[12 * v142];
                v228 = *v226;
                v175.i32[0] = *(v227 - 6);
                v229 = 1;
                v111 = a1;
                do
                {
                  v230 = vabds_f32(v228, *v175.i32);
                  if ((v229 & 1) == 0)
                  {
                    break;
                  }

                  v229 = 0;
                  v175.i32[0] = *(v227 - 5);
                  v228 = v226[1];
                }

                while (v230 < 1.0e-10);
                v137 = v268;
                v133 = v269;
                v134 = v266;
                v138 = v267;
                if (v230 >= 1.0e-10)
                {
                  for (kk = 0; kk != 12; kk += 4)
                  {
                    *(&v320 + kk) = *&v227[kk - 12] - *&v227[kk - 24];
                  }

                  v232 = v116 / sqrtf((v320 * v320) + (v321 * v321));
                  *&v225 = v232 * v320;
                  *&v174 = v232 * v321;
                  HIDWORD(v225) = LODWORD(v174);
                }

                else
                {
                  LODWORD(v174) = HIDWORD(v225);
                }

                v290 = v224;
                *&v312[4] = -*&v174;
                *&v312[8] = v225;
                v302 = LODWORD(v174);
                *&v312[12] = LODWORD(v174);
                *&v312[16] = -*&v225;
                HIBYTE(v317) = 0;
                __p[0] = __srca[v142 - 1];
                for (mm = 2; mm != 5; ++mm)
                {
                  v234 = *v226++;
                  LODWORD(v173) = v234;
                  *(__p + mm) = v234;
                }

                v313.f32[0] = -*&v174;
                v313.i32[1] = v225;
                *&v172 = v155 * v283;
                v315 = v155;
                v316 = v155 * v283;
                v299 = v225;
                md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, v172, v173, v174, v175);
                v235.i64[0] = v299;
                v235.i64[1] = v299;
                v236 = vdupq_lane_s64(__SPAIR64__(v299, v302), 0);
                v237 = vsubq_f32(v235, v236);
                v238 = vaddq_f32(v235, v236);
                v238.i32[0] = v237.i32[0];
                LOBYTE(v317) = 1;
                v238.i32[3] = v237.i32[3];
                *&v312[4] = v238;
                v314 = *(v327 + 8);
                md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(&v322, &v319, __p, *(v327 + 1), *v236.i64, *v237.i64, v239);
                v136 = v272;
                v240 = v270[1];
                v241 = v270[2] - v240;
                v242 = v241 >> 1;
                if (v241 >= 4)
                {
                  v243 = 2;
                  if (v242 > 2)
                  {
                    v243 = v242;
                  }

                  v244 = v243 - 1;
                  v245 = v270[1];
                  v246 = v272;
                  do
                  {
                    *v246 = v245;
                    v247 = v245 + 1;
                    v246[1] = v245 + 1;
                    v248 = v245 + 3;
                    LODWORD(v245) = v245 + 2;
                    v246[2] = v245;
                    v246[3] = v247;
                    v246[4] = v248;
                    v246[5] = v245;
                    v246 += 6;
                    --v244;
                  }

                  while (v244);
                }

                if (v270[6] != v270[5] && v242 - 1 >= 3)
                {
                  v249 = v242 - 3;
                  v250 = v240 + 4;
                  v251 = v240 + 65538;
                  v252 = v267;
                  do
                  {
                    *v252 = v251;
                    v252[1] = v250;
                    v250 += 2;
                    v251 += 2;
                    v252 += 2;
                    --v249;
                  }

                  while (v249);
                }
              }

              else
              {
                v136 = v272;
              }

              v130 = *v133;
              v139 = *(*v133 + 8);
              v140 = *(*v133 + 16);
            }

            v137 += 32 * (v140 - v139);
            v136 += 2 * (v130[4] - v130[3]);
            v138 += 2 * (v130[6] - v130[5]);
            v133 += 8;
          }

          while (v133 != v134);
          v133 = *v264;
        }

        v253 = v263;
        if (v133)
        {
          v254 = v263[8];
          v255 = v133;
          if (v254 != v133)
          {
            do
            {
              v254 -= 8;
              std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::reset[abi:nn200100](v254);
            }

            while (v254 != v133);
            v253 = v263;
            v255 = *v264;
          }

          v253[8] = v133;
          v256 = mdm::zone_mallocator::instance(v130);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(v256, v255);
          *v264 = 0;
          v264[1] = 0;
          v264[2] = 0;
        }

        *v264 = 0;
        v264[1] = 0;
        v264[2] = 0;
        *&v324 = 0;
        v322 = 0;
        v323 = 0;
        __p[0] = &v322;
        std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](__p);
        if (v303.__begin_)
        {
          operator delete(v303.__begin_);
        }

        if (v304[0])
        {
          operator delete(v304[0]);
        }

        ggl::BufferMemory::~BufferMemory(&v305);
        ggl::BufferMemory::~BufferMemory(v308);
        v118 = v260;
        v119 = v261 + 1;
      }

      v115 = v259 + 8;
    }

    while (v259 + 8 != v258);
  }

  *v111 = &unk_1F29E9DC8;
  v111[20] = 0;
  *(v111 + 168) = 0;
  return v111;
}

uint64_t ggl::CullingGrid::intersectedCellsForRibbon(unint64_t a1, void *a2)
{
  v3 = 0;
  result = 0;
  v5 = 1;
  do
  {
    while (1)
    {
      v6 = v5;
      if (a1 != 1)
      {
        break;
      }

      v5 = 0;
      v3 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v7 = 0;
    v8 = v3 ^ 1;
    do
    {
      v9 = a2 + 12 * v7++;
      v10 = a2 + 12 * (v7 % a1);
      v11 = *&v10[4 * v3];
      v12 = *&v9[4 * v3];
      v13 = v11 - v12;
      if ((v11 - v12) != 0.0)
      {
        v14 = v11 * 4.0;
        v15 = vcvtps_s32_f32(fminf(v14, v12 * 4.0));
        v16 = vcvtms_s32_f32(fmaxf(v12 * 4.0, v14));
        if (v16 >= 3)
        {
          v16 = 3;
        }

        if (v16 >= v15)
        {
          v17 = *&v9[4 * v8];
          v18 = *&v10[4 * v8] - v17;
          v19 = 1.0 / v13;
          do
          {
            v20 = vcvtms_s32_f32((v17 + (-((v12 + (v15 * -0.25)) * v18) * v19)) * 4.0);
            if (v20 <= 3)
            {
              if (v6)
              {
                result = (1 << ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v15 & 1 | (2 * (v20 & 1))] << (4 * LOBYTE(ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v20 & 2 | (v15 >> 1) & 1]))) | result;
                if (v15)
                {
                  v21 = 2 * (v20 & 1);
                  v22 = v20 & 2 | ((v15 - 1) >> 1) & 1;
                  v23 = v21 | (v15 - 1) & 1;
LABEL_17:
                  result = (1 << ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v23] << (4 * LOBYTE(ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v22]))) | result;
                }
              }

              else
              {
                v24 = v20 & 1;
                result = (1 << ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v24 | (2 * (v15 & 1))] << (4 * LOBYTE(ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v15 & 2 | ((v20 & 0xFE) >> 1)]))) | result;
                if (v15)
                {
                  v22 = (v20 >> 1) | (v15 - 1) & 2;
                  v23 = v24 & 0xFFFFFFFD | (2 * ((v15 - 1) & 1));
                  goto LABEL_17;
                }
              }
            }
          }

          while (v16 > v15++);
        }
      }
    }

    while (v7 != a1 - 1);
    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  if (a1)
  {
LABEL_22:
    __asm { FMOV            V0.2S, #4.0 }

    do
    {
      v31 = *a2;
      a2 = (a2 + 12);
      v32 = vmin_s32(vmax_s32(vcvt_s32_f32(vrndm_f32(vmul_f32(v31, _D0))), 0), 0x300000003);
      result = (1 << ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v32.i8[0] & 1 | (2 * (v32.i8[4] & 1))] << (4 * LOBYTE(ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v32.i8[4] & 2 | (v32.i32[0] >> 1)]))) | result;
      --a1;
    }

    while (a1);
  }

  return result;
}

double std::deque<ggl::PendingQuery>::__move_assign(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = a1 + 5;
    v14 = a1[1];
  }

  else
  {
    v6 = a1 + 5;
    v7 = a1[4];
    v8 = &v5[v7 >> 7];
    v9 = *v8;
    v10 = *v8 + 32 * (v7 & 0x7F);
    v11 = *(v5 + (((a1[5] + v7) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v7) & 0x7F);
    if (v10 != v11)
    {
      do
      {
        v12 = *(v10 + 24);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          v9 = *v8;
        }

        v10 += 32;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v5 = a1[1];
      v4 = a1[2];
    }

    v14 = v4;
  }

  *v6 = 0;
  v15 = (v14 - v5) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = a1[2];
      v5 = (a1[1] + 8);
      a1[1] = v5;
      v15 = (v4 - v5) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 64;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_18;
    }

    v16 = 128;
  }

  a1[4] = v16;
LABEL_18:
  if (a1[5])
  {
    std::deque<ggl::PendingQuery>::__maybe_remove_front_spare[abi:nn200100](a1, 0);
    std::deque<ggl::PendingQuery>::__maybe_remove_back_spare[abi:nn200100](a1, 0);
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = a1[1];
      v4 = a1[2] - 8;
      a1[2] = v4;
    }

    a1[4] = 0;
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  v18 = a1[1];
  v17 = a1[2];
  if (v17 != v18)
  {
    a1[2] = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(void **a1)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3] - *a1;
  if (v5 > (v2 - v4))
  {
    if (v2 != v4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v2 - v4) >> 3);
    }

    v7 = 0;
    if (v5 >> 3)
    {
      v8 = a1[1];
      v9 = a1[2] - v8;
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *v8++;
          *v10++ = v11;
          v9 -= 8;
        }

        while (v9);
        v8 = a1[1];
        v12 = a1[2];
        v3 = *a1;
      }

      else
      {
        v12 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v12 - v8);
      a1[3] = 0;
      v7 = v3;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
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
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(v14, v13);
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
    result = std::__split_buffer<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
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

void ggl::DaVinciTraffic::BasePipelineSetup::typedReflection(ggl::DaVinciTraffic::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::typedReflection();
    ggl::DaVinciTraffic::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::typedReflection(void)::r;
    unk_1EB82E2C0 = &ggl::DaVinciTraffic::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1EB82E2C8 = 0;
    {
      ggl::DaVinciTraffic::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB82E298 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB82E2A0 = ggl::Tile::Clipping::reflection(void)::reflection;
      unk_1EB82E2A8 = ggl::DaVinciTraffic::Style::reflection(void)::reflection;
    }

    qword_1EB82E2D0 = &ggl::DaVinciTraffic::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1EB82E2D8 = xmmword_1B33B0C40;
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
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
                          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
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
                        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
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
            std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
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

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(v6, v4);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *a3, uint64_t *a4)
{
  *a4 = 1;
  std::vector<gm::Matrix<float,3,1>>::resize(a2, *(a1 + 88));
  std::vector<unsigned int>::resize(a3, *(a1 + 88));
  v8 = 0;
  v9 = *a2;
  begin = a3->__begin_;
  v11 = *(a1 + 72);
  do
  {
    *(v9 + v8) = *(v11 + v8);
    v8 += 4;
  }

  while (v8 != 12);
  *begin = 0;
  v12 = *(a1 + 88);
  if (v12 >= 2)
  {
    v13 = *a4;
    v14 = v11 + 12;
    for (i = 1; i < v12; ++i)
    {
      v16 = (v11 + 12 * i);
      v17 = v9 + 12 * v13;
      v18 = *v16;
      v19 = *(v16 + 2);
      if (v18 != *(v17 - 12) || v19 != *(v17 - 4))
      {
        v21 = 0;
        begin[v13++] = i;
        *a4 = v13;
        do
        {
          *(v17 + v21) = *(v14 + v21);
          v21 += 4;
        }

        while (v21 != 12);
        v12 = *(a1 + 88);
      }

      v14 += 12;
    }
  }
}

void std::vector<gm::Matrix<float,3,1>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    *(a1 + 8) = &v4[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
    v8 = v7 + a2;
    if (v7 + a2 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v10);
    }

    v11 = 4 * (v6 >> 2) - v6;
    if (v5 != v4)
    {
      v12 = v11;
      do
      {
        v13 = *v5;
        *(v12 + 8) = *(v5 + 2);
        *v12 = v13;
        v12 += 12;
        v5 += 12;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v11;
    *(a1 + 8) = 12 * v7 + 12 * (12 * a2 / 0xC);
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<gm::Matrix<float,3,1>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<gm::Matrix<float,3,1>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::attributesReflection(void)::r = &ggl::DaVinciTraffic::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::attributesReflection(void)::r;
    unk_1EB82DE90 = 1;
  }
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 5 >= v12 >> 5)
      {
        v13 = v12 >> 5;
      }

      else
      {
        v13 = (v11 - a2) >> 5;
      }

      if (v13)
      {
        v14 = (v11 - 16);
        v15 = -32 * v13;
        do
        {
          *(a5 - 32) = *(v14 - 1);
          v16 = *v14;
          *v14 = 0;
          *(v14 + 1) = 0;
          v17 = *(a5 - 8);
          *(a5 - 16) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }

          a5 -= 32;
          v14 -= 2;
          v15 += 32;
        }

        while (v15);
      }

      v11 -= 32 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = v18 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = a5;
}

void *std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 5);
    if (v3 < 1)
    {
      result -= (127 - v3) >> 7;
    }

    else
    {
      result += v3 >> 7;
    }
  }

  return result;
}

uint64_t md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::writeVertex(uint64_t result, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6, int32x2_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = *a2;
  v10 = vdup_n_s32(0x45FFFF00u);
  v11 = vdup_n_s32(0xC5FFFF00);
  v12 = 1;
  a7.i32[0] = 1;
  do
  {
    v13 = 0;
    v14 = v12;
    do
    {
      *(v9 + v13) = *(a3 + v13 + 8);
      v13 += 4;
    }

    while (v13 != 12);
    _Q4.i64[0] = *(&a3[v7 + 2] + 4);
    _Q4.i64[1] = *(&a3[v7 + 5] + 4);
    v16.i64[0] = 0xBF000000BF000000;
    v16.i64[1] = 0xBF000000BF000000;
    _Q5 = vmlaq_f32(v16, xmmword_1B33B0C70, _Q4);
    *_Q4.f32 = vmovn_s32(vcvtq_s32_f32(_Q5));
    v18 = *(result + 8);
    v19 = *(v18 + 112);
    _Q5.i32[0] = *(*(v18 + 104) + 4 * v8);
    *(v9 + 16) = _Q4.i64[0];
    __asm { FCVT            H4, S5 }

    _Q5.i32[0] = *(v18 + 124);
    *(v9 + 28) = _Q4.i16[0];
    v24 = vmla_f32(0xBF000000BF000000, vbsl_s8(vdup_lane_s32(vceq_s32(*_Q5.f32, a7), 0), v11, v10), *(a3 + 36));
    *(v9 + 24) = v24.f32[0];
    *(v9 + 26) = v24.f32[1];
    if (v19)
    {
      _S4 = *(v19 + 4 * v8);
      __asm { FCVT            H4, S4 }

      *(v9 + 30) = _S4;
    }

    v12 = 0;
    v9 += 32;
    *a2 = v9;
    v7 = 1;
  }

  while ((v14 & 1) != 0);
  return result;
}

void md::DaVinciTrafficRibbon::~DaVinciTrafficRibbon(md::DaVinciTrafficRibbon *this)
{
  *this = &unk_1F29E6260;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x1B8C62170](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x1B8C62170](v3, 0x1000C8052888210);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x1B8C62170](v4, 0x1000C8052888210);
  }

  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);
}

{
  md::DaVinciTrafficRibbon::~DaVinciTrafficRibbon(this);

  JUMPOUT(0x1B8C62190);
}

void md::OcclusionQuery::reset(mdm::zone_mallocator *a1, void *a2, char a3)
{
  v3 = *a1;
  v32 = *(a1 + 1);
  if (*a1 != v32)
  {
    v30 = a3;
    v31 = a1;
    v33 = a2 + 19;
    do
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      while (v5 != v6)
      {
        v7 = *v5;
        if (*v5 != -1)
        {
          *v5 = -1;
          v8 = (a2[12] + 24 * v7);
          if (v8[2])
          {
            v9 = *v8;
            *(v9 + 136) = 1;
            v10 = *(v9 + 120);
            if (v10)
            {
              a1 = *(v10 + 24);
              *(v10 + 16) = 0;
              *(v10 + 24) = 0;
              if (a1)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](a1);
              }

              *(v9 + 120) = 0;
            }
          }

          v12 = a2[17];
          v11 = a2[18];
          if (v12 >= v11)
          {
            v14 = a2[16];
            v15 = v12 - v14;
            v16 = (v12 - v14) >> 2;
            v17 = v16 + 1;
            if ((v16 + 1) >> 62)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v18 = v11 - v14;
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

            v34[4] = v33;
            if (v19)
            {
              v20 = mdm::zone_mallocator::instance(a1);
              v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v20, v19);
              v14 = a2[16];
              v15 = a2[17] - v14;
              v22 = v15 >> 2;
            }

            else
            {
              v21 = 0;
              v22 = v16;
            }

            v23 = &v21[4 * v16];
            v24 = &v21[4 * v19];
            v25 = &v23[-4 * v22];
            *v23 = v7;
            v13 = v23 + 4;
            memcpy(v25, v14, v15);
            v26 = a2[16];
            a2[16] = v25;
            a2[17] = v13;
            v27 = a2[18];
            a2[18] = v24;
            v34[2] = v26;
            v34[3] = v27;
            v34[0] = v26;
            v34[1] = v26;
            a1 = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(v34);
          }

          else
          {
            *v12 = v7;
            v13 = v12 + 4;
          }

          a2[17] = v13;
        }

        v5 += 2;
      }

      v3 += 248;
    }

    while (v3 != v32);
    a1 = v31;
    v28 = *v31;
    v29 = *(v31 + 1);
    a3 = v30;
    if (*v31 != v29)
    {
      do
      {
        *(v28 + 16) = *(v28 + 8);
        v28 += 248;
      }

      while (v28 != v29);
    }
  }

  if (a3)
  {
    *(a1 + 281) = *(a1 + 280);
    *(a1 + 280) = 0;
  }

  *(a1 + 282) = 0;
  atomic_store(1u, a1 + 286);
}

uint64_t std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = mdm::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v6, 0xAAAAAAAAAAAAAAABLL * (v5 >> 3));
    *a1 = v7;
    *(a1 + 8) = v7;
    *(a1 + 16) = v7 + v5;
    do
    {
      v8 = geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, v3);
      v3 += 24;
      v7 = v8 + 3;
    }

    while (v3 != v4);
    *(a1 + 8) = v7;
  }

  return a1;
}

void __Block_byref_object_dispose__13(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;

    operator delete(v7);
  }
}

uint64_t *std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const*>,std::__wrap_iter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const*>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v23 = 3 * a5;
        std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__move_range(result, a2, result[1], a2 + 24 * a5);
        v24 = v6 + 8 * v23;
        do
        {
          result = geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v7, *(v6 + 8));
          v6 += 24;
          v7 += 3;
        }

        while (v6 != v24);
      }

      else
      {
        v20 = v18 + a3;
        result = result[1];
        if (v18 + a3 != a4)
        {
          v21 = v18 + a3;
          result = v10;
          do
          {
            v22 = geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(result, v21);
            v21 += 24;
            result = v22 + 3;
          }

          while (v21 != a4);
        }

        v8[1] = result;
        if (v18 >= 1)
        {
          std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__move_range(v8, v7, v10, &v7[3 * a5]);
          do
          {
            result = geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v7, *(v6 + 8));
            v6 += 24;
            v7 += 3;
          }

          while (v6 != v20);
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 - 0x5555555555555555 * ((v10 - *result) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
      v37 = result + 3;
      if (v14)
      {
        v16 = mdm::zone_mallocator::instance(result);
        v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v16, v14);
      }

      else
      {
        v17 = 0;
      }

      v25 = &v17[24 * v15];
      v34 = v17;
      v35 = v25;
      *(&v36 + 1) = &v17[24 * v14];
      v26 = 3 * a5;
      v27 = &v25[24 * a5];
      v28 = 8 * v26;
      do
      {
        v25 = (geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v25, v6) + 3);
        v6 += 24;
        v28 -= 24;
      }

      while (v28);
      *&v36 = v27;
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(v7, v8[1], v27);
      v29 = *v8;
      v30 = v35;
      *&v36 = v27 + v8[1] - v7;
      v8[1] = v7;
      v31 = v30 + v29 - v7;
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(v29, v7, v31);
      v32 = *v8;
      *v8 = v31;
      v33 = v8[2];
      *(v8 + 1) = v36;
      *&v36 = v32;
      *(&v36 + 1) = v33;
      v34 = v32;
      v35 = v32;
      return std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(&v34);
    }
  }

  return result;
}

void sub_1B2BBE33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void({block_pointer} {__strong})(ggl::ResourceAccessor *),std::allocator<void({block_pointer} {__strong})(ggl::ResourceAccessor *)>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

void __destroy_helper_block_ea8_80c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE96c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v8 = v2 + 8;
      std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v5 = v2[3];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t md::NavLabel::updateNavDisplayState(md::NavLabel *this)
{
  *(this + 94) = *(this + 78);
  *(this + 48) = *(this + 40);
  *(this + 380) = *(this + 316);
  if (*(this + 284) == 1)
  {
    atomic_store(*(this + 70), this + 72);
    *(this + 284) = 0;
  }

  v1 = COERCE_FLOAT(atomic_load(this + 72));
  *(this + 292) = *(this + 69) != v1;
  result = *(this + 38);
  if (result)
  {
    return (*(*result + 976))();
  }

  return result;
}

uint64_t md::NavLabelPart::updateNavForDisplay(uint64_t this)
{
  v1 = *(this + 832);
  if (*(this + 872) != v1)
  {
    v2 = this;
    *(this + 872) = v1;
    *(this + 565) = v1 != 0;
    if (v1)
    {
      operator new();
    }

    this = *(this + 880);
    *(v2 + 880) = 0;
    if (this)
    {
      this = MEMORY[0x1B8C62190](this, 0x1000C40AE2C30F4);
    }

    *(v2 + 721) = 1;
  }

  return this;
}

void std::vector<std::shared_ptr<ggl::Texture2D>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::shared_ptr<gdc::Resource>>::__init_with_size[abi:nn200100]<std::shared_ptr<gdc::Resource>*,std::shared_ptr<gdc::Resource>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)>::operator()(uint64_t result, uint64_t a2, unint64_t **a3, unint64_t **a4, unint64_t **a5, unint64_t **a6, unint64_t **a7, unint64_t **a8, unint64_t **a9, unint64_t **a10)
{
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  v15 = *a9;
  v16 = *a10;
  v17 = *(result + 8);
  if (*a3)
  {
    result = md::MaterialResourceStore::disconnect<geo::handle<md::MaterialIDStorage>>(*(result + 8), **a3);
  }

  if (v10)
  {
    result = md::MaterialResourceStore::disconnect<geo::handle<md::MaterialIDStorage>>(v17, *v10);
  }

  if (v11)
  {
    result = md::MaterialResourceStore::disconnect<geo::handle<md::ls::ColorData>>(v17, *v11);
  }

  if (v12)
  {
    result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 56, *v12);
    if (result != v17[61])
    {
      v18 = (*(v17[63] + ((((result - v17[60]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - v17[60]) >> 3) & 0x3F));
      v19 = v18[1];
      if (!v19 || (v20 = v19 - 1, (v18[1] = v20) == 0))
      {
        *v18 = 0;
      }
    }
  }

  if (v13)
  {
    result = ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::find(v30, v17 + 110, *v13);
    if (v30[0] != (v17[115] - v17[114]) >> 3)
    {
      v21 = (*(*v30[1] + ((v30[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v30[0] & 0x3F));
      v22 = v21[1];
      if (!v22 || (v23 = v22 - 1, (v21[1] = v23) == 0))
      {
        *v21 = 0;
      }
    }
  }

  if (v14)
  {
    result = md::MaterialResourceStore::disconnect<geo::handle<md::ls::ColorData>>(v17, *v14);
  }

  if (v15)
  {
    result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 218, *v15);
    if (result != v17[223])
    {
      v24 = (*(v17[225] + ((((result - v17[222]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - v17[222]) >> 3) & 0x3F));
      v25 = v24[1];
      if (!v25 || (v26 = v25 - 1, (v24[1] = v26) == 0))
      {
        *v24 = 0;
      }
    }
  }

  if (v16)
  {
    result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 326, *v16);
    if (result != v17[331])
    {
      v27 = (*(v17[333] + ((((result - v17[330]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - v17[330]) >> 3) & 0x3F));
      v28 = v27[1];
      if (!v28 || (v29 = v28 - 1, (v27[1] = v29) == 0))
      {
        *v27 = 0;
      }
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMaterialData>();
    *algn_1EB83CAF8 = 0xB6C12FBB402E8E70;
    qword_1EB83CB00 = "md::ls::RenderableMaterialData]";
    qword_1EB83CB08 = 30;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueGradientMaskDataHandle>();
    *algn_1EB83BE38 = 0xC8B3692EC3F5F854;
    qword_1EB83BE40 = "md::ls::UniqueGradientMaskDataHandle]";
    qword_1EB83BE48 = 36;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PositionScaleInfoConstantDataHandle>();
    unk_1EB83BAB0 = 0x6C7EE74910D42096;
    qword_1EB83BAB8 = "md::ls::PositionScaleInfoConstantDataHandle]";
    qword_1EB83BAC0 = 43;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LandCoverSettingsConstantDataHandle>();
    unk_1EB83BAD0 = 0xDC98991DB7473274;
    qword_1EB83BAD8 = "md::ls::LandCoverSettingsConstantDataHandle]";
    qword_1EB83BAE0 = 43;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleGroundOcclusionConstantDataHandle>();
    *algn_1EB83B9D8 = 0xD5AD9B8C3FE62EE8;
    qword_1EB83B9E0 = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    qword_1EB83B9E8 = 46;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NormalsHandle>();
    *algn_1EB83D968 = 0x3218EFD67197A145;
    qword_1EB83D970 = "md::ls::NormalsHandle]";
    qword_1EB83D978 = 21;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *algn_1EB83BB18 = 0xEBDB618C34E97A19;
    qword_1EB83BB20 = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    qword_1EB83BB28 = 40;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleSSAODataKeyHandle>();
    *algn_1EB83CAB8 = 0x3AC919C8A5243F9;
    qword_1EB83CAC0 = "md::ls::StyleSSAODataKeyHandle]";
    qword_1EB83CAC8 = 30;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceTransformHandle>();
    unk_1EB83CA70 = 0xAF179EFD8A4C83D4;
    qword_1EB83CA78 = "md::ls::InstanceTransformHandle]";
    qword_1EB83CA80 = 31;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UVsHandle>();
    *algn_1EB83B888 = 0xCBB77B1CBD05D7C5;
    qword_1EB83B890 = "md::ls::UVsHandle]";
    qword_1EB83B898 = 17;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevationHandle>();
    unk_1EB83D730 = 0xD443D3DCBB78491ALL;
    qword_1EB83D738 = "md::ls::ElevationHandle]";
    qword_1EB83D740 = 23;
  }
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, const TextureHandle ***a4, const TextureHandle ***a5, const TextureHandle ***a6, const TextureHandle ***a7, const TextureHandle ***a8)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v13 = *(result + 8);
  if (*a3)
  {
    result = mre::GGLResourceStore::disconnect(*(result + 8), *(*a3 + 16));
  }

  if (v8)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v8);
  }

  if (v9)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v9);
  }

  if (v10)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v10);
  }

  if (v11)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v11);
  }

  if (v12)
  {
    v14 = *v12;

    return mre::GGLResourceStore::disconnect(v13, v14);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableAlbedoTexture>();
    *algn_1EB83C9E8 = 0x28D6AB85FDB5A2BLL;
    qword_1EB83C9F0 = "md::ls::RenderableAlbedoTexture]";
    qword_1EB83C9F8 = 31;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::NightTexture>>();
    *algn_1EB83CDA8 = 0xD49B968135FE1A73;
    qword_1EB83CDB0 = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    qword_1EB83CDB8 = 51;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialDiffuseTexture>();
    *algn_1EB83BE18 = 0xCF2EB3C843EAD89ALL;
    qword_1EB83BE20 = "md::ls::UniqueMaterialDiffuseTexture]";
    qword_1EB83BE28 = 36;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
    unk_1EB83CD80 = 0xBAA35DF429A7267FLL;
    qword_1EB83CD88 = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    qword_1EB83CD90 = 53;
  }
}

uint64_t mre::GGLResourceStore::releaseTexture(mre::GGLResourceStore *this, TextureHandle a2)
{
  isInternal = a2.isInternal;
  value = a2.var0.value;
  std::__shared_mutex_base::lock((this + 104));
  util::id_pool<mre::TextureHandle>::push(this + 648, value);
  if (isInternal)
  {
    v5 = (this + 800);
    v6 = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 100, value);
    if (v6 != *(this + 105))
    {
      v7 = *(*(*(this + 107) + ((((v6 - *(this + 104)) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (((v6 - *(this + 104)) >> 4) & 0x3F));
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = (this + 696);
    if (ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 87, value) != *(this + 92))
    {
LABEL_7:
      v9 = *(*(v5[1] + 8 * (value >> 6)) + 16 * (value & 0x3F) + 8);
      v10 = ((v5[5] - v5[4]) >> 4) - 1;
      v11 = v10 & 0x3F;
      v12 = v5[7];
      v13 = *(v12 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v14 = *(v12 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v9 & 0x3F);
      v15 = *(v14 + 32);
      v16 = v13 + 40 * v11;
      v17 = *v14;
      v18 = *(v14 + 16);
      LOBYTE(v11) = *(v16 + 32);
      v19 = *(v16 + 16);
      *v14 = *v16;
      *(v14 + 16) = v19;
      *(v14 + 32) = v11;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(v16 + 32) = v15;
      ecs2::sparse_set<mre::TextureHandle,64ul>::erase(v5, value);
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  std::__shared_mutex_base::unlock((this + 104));
  return v8;
}

void util::id_pool<mre::TextureHandle>::push(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  if (a2 < ((*(a1 + 32) - v4) >> 4))
  {
    v5 = (v4 + 16 * a2);
    v6 = *v5;
    if (!((*v5 ^ a2) >> 32))
    {
      v7[1] = v2;
      v7[2] = v3;
      v7[0] = a2;
      *v5 = v6 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100](a1, v7);
    }
  }
}

void *ecs2::sparse_set<mre::TextureHandle,64ul>::erase(void *result, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = result[1];
  if (v2 < (result[2] - v3) >> 3)
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      if (*(v4 + 16 * (a2 & 0x3F)) == HIDWORD(a2))
      {
        return ecs2::sparse_set<mre::TextureHandle,64ul>::erase(result, (result[4] + 16 * *(v4 + 16 * (a2 & 0x3F) + 8)));
      }
    }
  }

  return result;
}

uint64_t ecs2::sparse_set<mre::TextureHandle,64ul>::erase(void *a1, void *a2)
{
  v2 = *(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL);
  v3 = a1[5];
  v4 = a1[4] + 16 * *(v2 + 8);
  v5 = *(v3 - 16);
  *(v4 + 8) = *(v3 - 8);
  *v4 = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(*(a1[1] + 8 * (*(v7 - 16) >> 6)) + 16 * (*(v7 - 16) & 0x3FLL) + 8) = *(v2 + 8);
  a1[5] = v7 - 16;
  *v2 = xmmword_1B33B06D0;
  return v6;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0>,void ()(md::ls::PendingDeletion const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15PendingDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata) = *(v3 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TexturesToDisconnectEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v16 = v18;
        *(v16 + 16) = v19;
        if (v18)
        {
          *(v16 + 8) = v18;
          operator delete(v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v3 + 4096);
}

mdm::zone_mallocator *md::FontGlyphCache::updateQuads(mdm::zone_mallocator *result, void *a2, float a3, float a4, double a5, float a6)
{
  v6 = *(result + 1);
  if (*result == v6)
  {
    return result;
  }

  v12 = result;
  v13 = *a2;
  if (*(*a2 + 133) != 1)
  {
    v45 = *(v13 + 131);
    v46 = *(v13 + 132);
    v47 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    v49 = *(result + 4);
    v48 = *(result + 5);
    v50 = v48 - v49;
    v51 = (v48 - v49) >> 6;
    if (v47 <= v51)
    {
      if (v47 < v51)
      {
        *(result + 5) = v49 + (v47 << 6);
      }
    }

    else
    {
      v52 = v47 - v51;
      v53 = *(result + 6);
      if (v52 <= (v53 - v48) >> 6)
      {
        v69 = v48 + (v52 << 6);
        do
        {
          *(v48 + 32) = 0uLL;
          *(v48 + 48) = 0uLL;
          *v48 = 0uLL;
          *(v48 + 16) = 0uLL;
          *(v48 + 40) = 1065353216;
          *(v48 + 56) = 1065353216;
          v48 += 64;
        }

        while (v48 != v69);
        *(result + 5) = v69;
      }

      else
      {
        if (v47 >> 58)
        {
          goto LABEL_61;
        }

        v54 = v53 - v49;
        v55 = (v53 - v49) >> 5;
        if (v55 <= v47)
        {
          v55 = v47;
        }

        if (v54 >= 0x7FFFFFFFFFFFFFC0)
        {
          v56 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v55;
        }

        *(&v85 + 1) = result + 56;
        v57 = mdm::zone_mallocator::instance(result);
        v58 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(v57, v56);
        v59 = &v58[64 * v47];
        v60 = &v58[v50];
        do
        {
          *(v60 + 2) = 0uLL;
          *(v60 + 3) = 0uLL;
          *v60 = 0uLL;
          *(v60 + 1) = 0uLL;
          *(v60 + 10) = 1065353216;
          *(v60 + 14) = 1065353216;
          v60 += 64;
        }

        while (v60 != v59);
        v61 = *(v12 + 4);
        v62 = *(v12 + 5);
        v63 = &v58[v50 + v61 - v62];
        if (v62 != v61)
        {
          v64 = &v58[v50 + v61 - v62];
          do
          {
            v65 = *v61;
            v66 = *(v61 + 1);
            v67 = *(v61 + 3);
            *(v64 + 2) = *(v61 + 2);
            *(v64 + 3) = v67;
            *v64 = v65;
            *(v64 + 1) = v66;
            v64 += 64;
            v61 += 64;
          }

          while (v61 != v62);
          v61 = *(v12 + 4);
        }

        *(v12 + 4) = v63;
        *(v12 + 5) = v59;
        v68 = *(v12 + 6);
        *(v12 + 6) = &v58[64 * v56];
        *(&v84 + 1) = v61;
        *&v85 = v68;
        v83 = v61;
        *&v84 = v61;
        result = std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(&v83);
      }
    }

    v70 = *v12;
    v71 = *(v12 + 1);
    v72 = v71 - *v12;
    if (v71 == *v12)
    {
      return result;
    }

    v73 = 0;
    v74 = 0;
    v75 = 0xCCCCCCCCCCCCCCCDLL * (v72 >> 3);
    if (v75 <= 1)
    {
      v75 = 1;
    }

    v76 = (a2[11] + 8);
    v77 = (*(v12 + 4) + 56);
    v78 = 29;
    while (1)
    {
      v79 = v70 + v78;
      *(v79 + 7) = v73;
      *(v79 + 3) = a3;
      *v77 = 1065353216;
      *(v77 - 7) = v70 + v78 - 29;
      if (v45)
      {
        if (!v73)
        {
          goto LABEL_59;
        }
      }

      else if (!v46 || !v73 || (*(a2[7] + v78) & 1) == 0)
      {
        goto LABEL_59;
      }

      ++v74;
LABEL_59:
      v80 = (v74 * a4) + *(v76 - 1) * a5;
      v81 = *v76 * a6;
      ++v73;
      *(v77 - 3) = v80;
      *(v77 - 2) = v81;
      v78 += 40;
      v76 += 2;
      v77 += 16;
      if (v75 == v73)
      {
        return result;
      }
    }
  }

  v15 = a2[11];
  v14 = a2[12];
  v84 = 0u;
  v85 = 0u;
  v86 = 1065353216;
  v89 = 0;
  v16 = *(result + 4);
  *(result + 5) = v16;
  v17 = 0xCCCCCCCCCCCCCCCDLL * ((a2[8] - a2[7]) >> 3);
  if (v17 > (*(result + 6) - v16) >> 6)
  {
    if (!(v17 >> 58))
    {
      v91[4] = result + 56;
      v18 = mdm::zone_mallocator::instance(result);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(v18, v17);
      v20 = *(v12 + 4);
      v21 = *(v12 + 5);
      v22 = &v19[v20 - v21];
      if (v20 != v21)
      {
        v23 = &v19[v20 - v21];
        do
        {
          v24 = *v20;
          v25 = *(v20 + 1);
          v26 = *(v20 + 3);
          *(v23 + 2) = *(v20 + 2);
          *(v23 + 3) = v26;
          *v23 = v24;
          *(v23 + 1) = v25;
          v23 += 64;
          v20 += 64;
        }

        while (v20 != v21);
        v20 = *(v12 + 4);
      }

      *(v12 + 4) = v22;
      *(v12 + 5) = v19;
      v27 = *(v12 + 6);
      *(v12 + 6) = &v19[64 * v17];
      v91[2] = v20;
      v91[3] = v27;
      v91[0] = v20;
      v91[1] = v20;
      result = std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(v91);
      goto LABEL_10;
    }

LABEL_61:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_10:
  if (v14 != v15)
  {
    v28 = 0;
    v29 = a6;
    v82 = a4;
    if (((v14 - v15) >> 4) <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v14 - v15) >> 4;
    }

    v31 = 0.0;
    do
    {
      v32 = a2[7] + 40 * v28;
      v33 = *v12 + 40 * v28;
      *(v33 + 36) = (*(v12 + 10) - *(v12 + 8)) >> 6;
      *(v33 + 32) = a3;
      v83 = v33;
      v34 = (a2[11] + 16 * v28);
      v35 = v31;
      v36 = v31 + *v34 * a5;
      v37 = v34[1] * v29;
      v87 = v36;
      v88 = v37;
      if (*(v32 + 30) == 1)
      {
        v38 = v82 * *(v32 + 20) * (1.0 / a5);
        if (v38 <= 0.0)
        {
          *(v33 + 38) = 0;
        }

        else
        {
          v39 = *(v32 + 16);
          v40 = vcvtps_u32_f32(v38 / (v39 * 1.2));
          if (v40 >= 0xFF)
          {
            v41 = 255;
          }

          else
          {
            v41 = v40;
          }

          v42 = v38 / v41;
          v90 = v42 / v39;
          if (v40)
          {
            v43 = v42 * a5;
            v44 = v41;
            do
            {
              result = std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::push_back[abi:nn200100]((v12 + 32), &v83);
              v36 = v43 + v36;
              v87 = v36;
              --v44;
            }

            while (v44);
          }

          v31 = v35 + v38 * a5;
          *(v33 + 38) = v41;
        }
      }

      else
      {
        v90 = 1.0;
        result = std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::push_back[abi:nn200100]((v12 + 32), &v83);
      }

      ++v28;
    }

    while (v28 != v30);
  }

  return result;
}

void md::HorizontalTextLabelPart::placeLines(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v193[1] = *MEMORY[0x1E69E9840];
  v168 = a1;
  v6 = *(*a1 + 16);
  v166 = *(v6 + 126);
  if (*(a2 + 101) == 1)
  {
    *(a2 + 101) = 0;
    *(a2 + 8) = *a2;
    v7 = atomic_load((v6 + 130));
    if ((v7 & 1) == 0 || *(v6 + 56) == *(v6 + 64))
    {
      *(a2 + 88) = 0;
      *(a2 + 102) = 0;
      *(a2 + 104) = (*(a2 + 8) - *a2) >> 5;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a2 + 48);
      v11 = *(*a1 + 16);
      v12 = *(v11 + 56);
      v13 = *(v11 + 64);
      v14 = v11 + 56;
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 3);
      v16 = *(v14 + 70);
      v17 = v15 - 1;
      if (v10 && v15 > v10)
      {
        if (v15 - v10 < 3)
        {
          v9 = 0;
          v8 = 0;
        }

        else
        {
          if (*(v14 + 70))
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - v10;
          }

          if (*(v14 + 70))
          {
            v8 = v15 - v10;
          }

          else
          {
            v8 = 0;
          }

          v17 -= v18;
          v9 = 1;
          v15 = *(a2 + 48);
        }
      }

      *(a2 + 88) = v8 | ((v8 + v15) << 16);
      if (v15)
      {
        LODWORD(v15) = *(*(*a1 + 32) + 40 * v8 + 36) | ((*(*(*a1 + 32) + 40 * (v8 + v15) - 4) + *(*(*a1 + 32) + 40 * (v8 + v15) - 2)) << 16);
      }

      *(a2 + 92) = v15;
      if (v9)
      {
        LOBYTE(v9) = *(*a1 + 208);
      }

      v131 = 0;
      *(a2 + 102) = v9 & 1;
      v191 = 0uLL;
      v192 = 0;
      if (v8 <= v17)
      {
        v131 = 0;
        v132 = 40 * v8 + 32;
        v133 = v8;
        do
        {
          if ((*(*v14 + v132) & 0x10) != 0)
          {
            v134 = v8 - v133;
            v186.i8[8] = 0;
            v186.i64[0] = 0;
            if (v131 >= v192)
            {
              v135 = &v131[-v191] >> 5;
              if ((v135 + 1) >> 59)
              {
                goto LABEL_160;
              }

              v136 = &v192[-v191] >> 4;
              if (v136 <= v135 + 1)
              {
                v136 = v135 + 1;
              }

              if (&v192[-v191] >= 0x7FFFFFFFFFFFFFE0)
              {
                v137 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = v136;
              }

              v190 = v193;
              if (v137)
              {
                v138 = mdm::zone_mallocator::instance(a1);
                v139 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v138, v137);
              }

              else
              {
                v139 = 0;
              }

              v140 = &v139[32 * v135];
              v141 = &v139[32 * v137];
              *v140 = v133;
              *(v140 + 1) = v134;
              *(v140 + 2) = 0;
              v140[24] = 0;
              v131 = v140 + 32;
              v142 = &v140[-(*(&v191 + 1) - v191)];
              memcpy(v142, v191, *(&v191 + 1) - v191);
              v143 = v191;
              v144 = v192;
              *&v191 = v142;
              *(&v191 + 1) = v131;
              v192 = v141;
              v188 = v143;
              v189 = v144;
              *&v187 = v143;
              *(&v187 + 1) = v143;
              a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(&v187);
            }

            else
            {
              *v131 = v133;
              *(v131 + 1) = v134;
              *(v131 + 2) = v186.i64[0];
              v131[24] = v186.i8[8];
              v131 += 32;
            }

            *(&v191 + 1) = v131;
            v133 = v8;
          }

          ++v8;
          v132 += 40;
        }

        while (v8 <= v17);
        v59 = v8 > v133;
        v145 = v8 - v133;
        if (v59)
        {
          v186.i8[8] = 0;
          v186.i64[0] = 0;
          if (v131 >= v192)
          {
            v146 = &v131[-v191] >> 5;
            if ((v146 + 1) >> 59)
            {
LABEL_160:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v147 = &v192[-v191] >> 4;
            if (v147 <= v146 + 1)
            {
              v147 = v146 + 1;
            }

            if (&v192[-v191] >= 0x7FFFFFFFFFFFFFE0)
            {
              v148 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v147;
            }

            v190 = v193;
            if (v148)
            {
              v149 = mdm::zone_mallocator::instance(a1);
              v150 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v149, v148);
            }

            else
            {
              v150 = 0;
            }

            v151 = &v150[32 * v146];
            v152 = &v150[32 * v148];
            *v151 = v133;
            *(v151 + 1) = v145;
            *(v151 + 2) = 0;
            v151[24] = 0;
            v131 = v151 + 32;
            v153 = &v151[-(*(&v191 + 1) - v191)];
            memcpy(v153, v191, *(&v191 + 1) - v191);
            v154 = v191;
            v155 = v192;
            *&v191 = v153;
            *(&v191 + 1) = v131;
            v192 = v152;
            v188 = v154;
            v189 = v155;
            *&v187 = v154;
            *(&v187 + 1) = v154;
            std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(&v187);
          }

          else
          {
            *v131 = v133;
            *(v131 + 1) = v145;
            *(v131 + 2) = v186.i64[0];
            v131[24] = v186.i8[8];
            v131 += 32;
          }

          *(&v191 + 1) = v131;
        }
      }

      v156 = *(a2 + 44);
      v157 = v191;
      if (v156)
      {
        v4 = a3;
        if (v191 != v131)
        {
          do
          {
            md::HorizontalTextLabelPart::breakLine(v16, v156, v14, *v157, *(v157 + 8), a2);
            v157 += 32;
          }

          while (v157 != v131);
        }
      }

      else
      {
        v158 = *a2;
        *a2 = v191;
        *(a2 + 8) = v131;
        v191 = v158;
        v159 = *(a2 + 16);
        *(a2 + 16) = v192;
        v192 = v159;
        v4 = a3;
      }

      std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v191);
      v5 = a2;
      v160 = *(a2 + 102);
      *(a2 + 104) = (*(a2 + 8) - *a2) >> 5;
      if (v160)
      {
        v162 = (*v168 + 128);
        v161 = *v162;
        LOBYTE(v189) = 1;
        v163 = 0xCCCCCCCCCCCCCCCDLL * ((v162[1] - v161) >> 3);
        *&v187 = 0;
        *(&v187 + 1) = v163;
        v188 = 0;
        std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v187);
        v5 = a2;
        *(a2 + 96) = -13107 * ((*(v162 + 2) - *v162) >> 3);
        v4 = a3;
        goto LABEL_16;
      }
    }

    *(v5 + 96) = 0;
  }

LABEL_16:
  v19 = *(v5 + 104);
  if (*(v5 + 104))
  {
    v165 = v4;
    v20 = 0;
    v21 = 0;
    v22 = v19 - 1;
    v171 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v173 = v19 - 1;
    v169 = *(v5 + 104);
    do
    {
      v172 = v23;
      v29 = *v5 + 32 * v20;
      v30 = 32;
      if (*(v29 + 24))
      {
        v30 = 128;
      }

      if (*(v29 + 8))
      {
        v31 = 0;
        v32 = (*v168 + v30);
        v33 = -3.4028e38;
        v34 = 3.4028e38;
        v35 = 3.4028e38;
        v36 = -3.4028e38;
        v175 = v32;
        do
        {
          v37 = *v32 + 40 * *v29 + 40 * v31;
          v38 = *v37;
          if (*v37 && *(v38 + 62) == 1)
          {
            v180 = v27;
            v181 = v28;
            v182 = v26;
            v185 = v21;
            v178 = *(v38 + 48);
            v179 = *(v37 + 32);
            CapHeight = CGFontGetCapHeight(*(v38 + 16));
            v40 = *v37;
            UnitsPerEm = CGFontGetUnitsPerEm(*(*v37 + 16));
            v42 = *(*v37 + 36);
            v176 = *(v40 + 48);
            v177 = *(*v37 + 44);
            Ascent = CGFontGetAscent(*(*v37 + 16));
            v44 = *v37;
            v45 = CGFontGetUnitsPerEm(*(*v37 + 16));
            v46 = *(v44 + 48);
            Descent = CGFontGetDescent(*(*v37 + 16));
            v48 = *v37;
            v49 = CGFontGetUnitsPerEm(*(*v37 + 16));
            v50 = v179 / v178;
            v51.f32[0] = (v176 * CapHeight) / UnitsPerEm;
            v51.i32[1] = fmaxf(v177 - v51.f32[0], 0.0);
            v21 = vmaxnm_f32(v185, vmul_n_f32(v51, v179 / v178));
            v26 = fmaxf(v182, fmaxf(-v42, 0.0) * (v179 / v178));
            v27 = fmaxf(v180, (((v179 / v178) * Ascent) * v46) / v45);
            v28 = fmaxf(v181, (((v179 / v178) * Descent) * *(v48 + 48)) / v49);
            v52 = *(v37 + 38);
            if (*(v37 + 38))
            {
              v22 = v173;
              v32 = v175;
              v53 = *(*v37 + 36) * v50;
              v54 = *(*v37 + 44) * v50;
              v55 = (v175[4] + (*(v37 + 36) << 6) + 56);
              do
              {
                v56 = *v55 * v50;
                v57 = *(v55 - 3);
                v58 = *(v55 - 2);
                v34 = fminf(v57 + (*(*v37 + 32) * v56), v34);
                v33 = fmaxf(v33, v57 + (*(*v37 + 40) * v56));
                v35 = fminf(v53 + v58, v35);
                v36 = fmaxf(v36, v54 + v58);
                if (v20 == 0 && v24 < (v54 + v58))
                {
                  v24 = v54 + v58;
                }

                if (v20 == v173 && (v53 + v58) < v25)
                {
                  v25 = v53 + v58;
                }

                v55 += 16;
                --v52;
              }

              while (v52);
            }

            else
            {
              v22 = v173;
              v32 = v175;
            }
          }

          ++v31;
        }

        while (v31 < *(v29 + 8));
      }

      else
      {
        v35 = 3.4028e38;
        v36 = -3.4028e38;
        v33 = -3.4028e38;
        v34 = 3.4028e38;
      }

      v5 = a2;
      if (v20 == v22 && (*(a2 + 102) == 1 ? (v59 = v34 <= v33) : (v59 = 0), v59))
      {
        v60 = *(*v168 + 160);
        v61 = *(*v168 + 168);
        if (v60 == v61)
        {
          goto LABEL_53;
        }

        v62 = -3.4028e38;
        v63 = 3.4028e38;
        do
        {
          v64 = **v60;
          if (v64 && *(v64 + 62) == 1)
          {
            v65 = v60[12];
            v66 = *(*v60 + 32) / *(v64 + 48);
            if (!v20)
            {
              v24 = fmaxf(v24, v65 + (*(v64 + 44) * v66));
            }

            v67 = v66 * v60[14];
            v68 = v60[11];
            v63 = fminf(v68 + (*(v64 + 32) * v67), v63);
            v62 = fmaxf(v62, v68 + (*(v64 + 40) * v67));
            v25 = fminf(v65 + (*(v64 + 36) * v66), v25);
          }

          v60 += 16;
        }

        while (v60 != v61);
        if (v63 > v62)
        {
LABEL_53:
          v19 = v169;
          *(v29 + 16) = v34;
          *(v29 + 20) = v33;
        }

        else
        {
          v69 = v33 - v34;
          v70 = v62 - v63;
          v71 = *(a2 + 8);
          if (v166)
          {
            *(v29 + 16) = v34 - v70;
            *(v29 + 20) = v33;
            v62 = v62 + v69;
          }

          else
          {
            *(v29 + 16) = v34;
            *(v29 + 20) = v70 + v33;
            v63 = v63 - v69;
          }

          *(v71 - 16) = v63;
          *(v71 - 12) = v62;
          v19 = v169;
        }

        v171 = fmaxf(v171, *(v29 + 20) - *(v29 + 16));
      }

      else
      {
        if (v34 <= v33)
        {
          *(v29 + 16) = v34;
          *(v29 + 20) = v33;
          v171 = fmaxf(v171, v33 - v34);
        }

        v19 = v169;
      }

      v23 = fmaxf(v172, v36 - v35);
      ++v20;
    }

    while (v20 != v19);
    v72 = v23;
    v73 = v26;
    v74 = v21;
    v4 = v165;
  }

  else
  {
    v74 = 0;
    v173 = -1;
    v25 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v73 = 0.0;
    v24 = 0.0;
    v72 = 0.0;
    v171 = 0.0;
  }

  v75 = *(v4 + 176);
  v76 = *(v5 + 32);
  *(v5 + 80) = fmaxf(v27 - fmaxf(v24, 0.0), 0.0);
  *(v5 + 84) = fmaxf(fminf(v25, 0.0) + v28, 0.0);
  v187 = xmmword_1B33B0730;
  md::CollisionObject::resetWithRects(a4, v19);
  v77 = *a2;
  v78 = *(a2 + 8);
  if (v78 == *a2)
  {
    v84 = 0.0;
    v88 = 0.0;
    goto LABEL_111;
  }

  v79 = 0;
  v80 = 0;
  v81 = fmaxf(v75 + v72, v76);
  v82 = v173;
  v83 = -(v25 + (((v24 + (v81 * v173)) - v25) * 0.5));
  v84 = 0.0;
  v85 = -0.5;
  v86 = 0.5;
  v87 = xmmword_1B33B0870;
  v88 = 0.0;
  while (2)
  {
    v89 = (v78 - v77) >> 5;
    v90 = v77 + 32 * v80;
    while (1)
    {
      v91 = *(v90 + 16);
      v92 = *(v90 + 20);
      if (v91 != v92)
      {
        break;
      }

      ++v80;
      v90 += 32;
      if (v80 >= v89)
      {
        if ((v79 & 1) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_109;
      }
    }

    v93 = v92 - v91;
    v94.f32[0] = (v92 + v91) * v85;
    if (v82 >= v80)
    {
      v95 = v82 - v80;
    }

    else
    {
      v95 = 0;
    }

    v96 = *(a2 + 100);
    v174 = v82;
    v183 = v78;
    if (v96 == 2)
    {
      v97 = v171 - v93;
      goto LABEL_75;
    }

    if (v96 == 1)
    {
      v97 = v93 - v171;
LABEL_75:
      v94.f32[0] = v94.f32[0] + (v97 * v86);
    }

    v191 = xmmword_1B33B0730;
    v98 = *(v90 + 8);
    if (v98)
    {
      v99 = 0;
      v100 = v83 + (v81 * v95);
      v101 = *(v90 + 24);
      v102 = 128;
      if (!*(v90 + 24))
      {
        v102 = 32;
      }

      v103 = (*v168 + v102);
      v104 = *v103 + 40 * *v90;
      v94.f32[1] = v100;
      do
      {
        v105 = v104 + 40 * v99;
        v106 = *v105;
        if (*v105)
        {
          if (v106[3].i8[14] == 1)
          {
            v107 = *(v105 + 38);
            if (*(v105 + 38))
            {
              v108 = 0;
              v109 = v103[4] + (*(v105 + 36) << 6);
              do
              {
                v110 = 0;
                v111 = v108 << 6;
                v112 = v109 + (v108 << 6);
                *v113.f32 = vadd_f32(*(v112 + 44), v94);
                *(v109 + 20 + v111) = v87;
                *(v109 + 36 + v111) = 1065353216;
                *(v112 + 8) = v113.i64[0];
                v113.i64[1] = v113.i64[0];
                v114 = vmlaq_n_f32(v113, v106[2], *(v105 + 32) / v106[3].f32[0]);
                v186 = v114;
                v115 = &v191;
                v116 = &v186;
                v117 = 1;
                do
                {
                  v118 = v117;
                  v119 = *v116;
                  v120 = *v115;
                  *(&v191 + v110 + 2) = fmaxf(*(&v191 + v110 + 2), v186.f32[v110 + 2]);
                  *v115 = fminf(v119, v120);
                  v116 = &v186.f32[1];
                  v115 = &v191 + 1;
                  v110 = 1;
                  v117 = 0;
                }

                while ((v118 & 1) != 0);
                if (v99 == v98 - 1)
                {
                  v121 = v114.f32[3];
                }

                else
                {
                  v121 = v88;
                }

                if (!v99)
                {
                  v121 = v88;
                }

                if (!v80)
                {
                  v88 = v121;
                }

                if (!(v80 | v99))
                {
                  v84 = v114.f32[3];
                }

                ++v108;
              }

              while (v108 != v107);
            }
          }
        }

        ++v99;
      }

      while (v99 != v98);
    }

    else
    {
      v101 = *(v90 + 24);
    }

    if ((v79 & v101) == 1)
    {
      v122 = 0;
      v123 = &v187;
      v124 = &v191;
      v125 = 1;
      do
      {
        v126 = v125;
        v127 = *v124;
        v128 = *v123;
        *(&v187 + v122 + 2) = fmaxf(*(&v187 + v122 + 2), *(&v191 + v122 + 2));
        *v123 = fminf(v127, v128);
        v124 = &v191 + 1;
        v123 = &v187 + 1;
        v122 = 1;
        v125 = 0;
      }

      while ((v126 & 1) != 0);
      v78 = v183;
    }

    else
    {
      v78 = v183;
      if (v79)
      {
        v184 = v87;
        md::CollisionObject::addRect(a4, &v187);
        v87 = v184;
        v86 = 0.5;
        v85 = -0.5;
        v77 = *a2;
        v78 = *(a2 + 8);
      }

      v187 = v191;
      v89 = (v78 - v77) >> 5;
    }

    v82 = v174;
    ++v80;
    v79 = 1;
    if (v80 < v89)
    {
      continue;
    }

    break;
  }

LABEL_109:
  md::CollisionObject::addRect(a4, &v187);
LABEL_111:
  *(a2 + 68) = v74;
  *(a2 + 76) = v73;
  *(a2 + 64) = v171;
  v129 = *(a4 + 12) - v84;
  if (v84 == 0.0)
  {
    v129 = v84;
  }

  *(a2 + 52) = v129;
  v130 = *(a4 + 12) - v88;
  if (v88 == 0.0)
  {
    v130 = v88;
  }

  *(a2 + 56) = v130;
  *(a2 + 60) = -v25;
}

void md::OcclusionTest::generateAntennaeTest(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  v9 = 3 * v8;
  md::OcclusionQueryResource::initialize(*(a3 + 96) + 24 * v8);
  v10 = 0;
  v11 = (*(a3 + 96) + 8 * v9);
  *(*v11 + 24) = *(a3 + 48);
  v12 = *(a1 + 80);
  do
  {
    *(&v42 + v10) = *(v12 + v10) - *(a4 + 136 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  for (i = 0; i != 3; ++i)
  {
    v14 = *(&v42 + i);
    *(&v51 + i) = v14;
  }

  v15 = 1.0;
  if (a2[284] != 4)
  {
    v16 = a2[283];
    if ((v16 - 7) >= 3)
    {
      if (v16 == 1)
      {
        v15 = 2.0;
        if ((*(a1 + 236) & 1) == 0)
        {
          if (*(a3 + 29))
          {
            v15 = 10.0;
          }

          else
          {
            v15 = 20.0;
          }
        }
      }

      else if (v16 == 14)
      {
        v15 = 2.0;
      }

      else
      {
        v15 = 5.0;
      }
    }
  }

  v17 = 0.0;
  if (a2[281] == 2)
  {
    v17 = *(a1 + 232);
  }

  v18 = v17 + v15;
  if (v15 < 5.0)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v51 + v19) * *(&v51 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20) * 0.00025 / *(a3 + 8);
    v22 = fmaxf(fminf(v21, 4.0), 1.0);
    v15 = v22 * v15;
    v18 = v22 * v18;
  }

  if (*(a3 + 28) == 1)
  {
    v23 = gm::Matrix<double,3,1>::normalized<int,void>(v12);
    v24 = 0;
    v48 = v23;
    v49 = v25;
    v50 = v26;
    do
    {
      *(&v42 + v24) = *(&v48 + v24) * v15;
      v24 += 8;
    }

    while (v24 != 24);
    for (j = 0; j != 3; ++j)
    {
      v28 = *(&v42 + j);
      *(&v46 + j) = v28;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v42 + k) = *(&v48 + k) * v18;
    }

    for (m = 0; m != 3; ++m)
    {
      v31 = *(&v42 + m);
      *(&v44 + m) = v31;
    }
  }

  else
  {
    v32 = *(a3 + 8);
    v33 = v32 * v15;
    v46 = 0;
    v47 = v33;
    v34 = v32 * v18;
    v44 = 0;
    v45 = v34;
  }

  if (v15 == v18)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  ggl::BufferData::resize(**(v11[2] + 64), v35);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v42, **(v11[2] + 64), 0, v35);
  v36 = 0;
  v37 = v52;
  v38 = v43;
  *v43 = v51;
  *(v38 + 2) = v37;
  *(v38 + 3) = 1065353216;
  do
  {
    *(&v48 + v36) = *(&v46 + v36) + *(&v51 + v36);
    v36 += 4;
  }

  while (v36 != 12);
  v39 = v49;
  *(v38 + 2) = v48;
  *(v38 + 6) = v39;
  *(v38 + 7) = 1065353216;
  if (v15 != v18)
  {
    for (n = 0; n != 12; n += 4)
    {
      *(&v48 + n) = *(&v44 + n) + *(&v51 + n);
    }

    v41 = v49;
    *(v38 + 4) = v48;
    *(v38 + 10) = v41;
    *(v38 + 11) = 1065353216;
  }

  ggl::BufferMemory::~BufferMemory(&v42);
}

uint64_t md::OcclusionQueryResource::initialize(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

void std::__shared_ptr_emplace<ggl::Buffer,geo::allocator_adapter<ggl::Buffer,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v2, a1);
}

void ggl::MetalResourceManager::deleteResource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 9);
  if (v4 <= 3)
  {
    if (*(a2 + 9) <= 1u)
    {
      if (*(a2 + 9))
      {
        v5 = *(a2 + 32);
        for (i = *(a2 + 40); i != v5; i -= 8)
        {
          v7 = *(i - 8);
        }

        *(a2 + 40) = v5;
      }

      else
      {
        v11 = *(a2 + 32);
        *(a2 + 32) = 0;

        atomic_fetch_add((a1 + 312), 0xFFFFFFFF);
      }

      goto LABEL_18;
    }

    if (v4 != 2 && v4 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + 9) <= 5u)
  {
    if (v4 != 4 && v4 != 5)
    {
      goto LABEL_19;
    }
  }

  else if (v4 != 6 && v4 != 7 && v4 != 9)
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 32);
  *(a2 + 32) = 0;

LABEL_18:
  v4 = *(a2 + 9);
LABEL_19:
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v9 = "PipelineState";
        v10 = 0x28DAD03E0000000DLL;
      }

      else
      {
        v9 = "ComputePipelineState";
        v10 = 0xCB8C155300000014;
      }
    }

    else
    {
      switch(v4)
      {
        case 7:
          v9 = "DepthStencilState";
          v10 = 0x38AB5BF400000011;
          break;
        case 8:
          v9 = "Drawable";
          v10 = 0x7010C0800000008;
          break;
        case 9:
          v9 = "RasterizationRateMap";
          v10 = 0x62578FE100000014;
          break;
        default:
          v9 = "Uknown";
          v10 = 0x5165D1F800000006;
          break;
      }
    }
  }

  else if (v4 <= 1)
  {
    if (v4)
    {
      v9 = "Texture";
      v10 = 0x4DDB34EE00000007;
    }

    else
    {
      v9 = "Buffer";
      v10 = 0x36F6F5C400000006;
    }
  }

  else if (v4 == 2)
  {
    v9 = "SamplerState";
    v10 = 0xC9803BE00000000CLL;
  }

  else if (v4 == 3)
  {
    v9 = "Library";
    v10 = 0x6E3DA12000000007;
  }

  else
  {
    v9 = "Function";
    v10 = 0x33D8746B00000008;
  }

  v12 = *(a2 + 24);
  v18[0] = v9;
  v18[1] = v10;
  std::mutex::lock((a1 + 192));
  v13 = std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::find<geo::StringLiteral>((a1 + 152), v18);
  if (v13)
  {
    --v13[4];
    if (v12)
    {
      v13[5] -= v12;
    }
  }

  std::mutex::unlock((a1 + 192));
  if (*(a2 + 9) == 1)
  {
    for (j = 112; j != 64; j -= 16)
    {
      v16 = *(a2 + j);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    v18[0] = a2 + 32;
    std::vector<NSObject  {objcproto10MTLTexture}* {__strong},geo::allocator_adapter<NSObject  {objcproto10MTLTexture}* {__strong},ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v18);
  }

  v17 = ggl::zone_mallocator::instance(v14);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v17, a2);
}

void md::RouteRenderLayer::setElevatedRoutelineMatrix(md::LayoutContext *a1, uint64_t *a2)
{
  v4 = md::LayoutContext::cameraType(a1);
  v5 = gdc::ToCoordinateSystem(v4);
  v6 = *(*a2 + 160);
  if (v6)
  {
    [v6 bounds];
  }

  else
  {
    memset(v33, 0, sizeof(v33));
    v32 = 0u;
  }

  v7 = v33[0].f64[0];
  if (v5)
  {
    v8 = v33[1].f64[1];
  }

  else
  {
    v7 = v33[0].f64[0] * 0.0000000249532021;
    v8 = v33[1].f64[1] * 0.0000000249532021;
    v33[0].f64[0] = v33[0].f64[0] * 0.0000000249532021;
    v33[1].f64[1] = v33[1].f64[1] * 0.0000000249532021;
  }

  v9 = *(a1 + 1);
  v10 = md::LayoutContext::get<md::ElevationContext>(v9);
  v11 = (v10[4] * v10[5]);
  v12 = v7 * v11;
  v13 = v8 * v11;
  v33[0].f64[0] = v12;
  v33[1].f64[1] = v13;
  v31[0] = v32;
  v31[1] = *(v33 + 8);
  if (v5)
  {
    v35[0] = v32;
    v35[1] = *(v33 + 8);
    gdc::GlobeTileUtils::boundsFromMercatorRect(v34, v35, v12, v13);
    geo::OrientedBox<double,3u,double,double>::toMatrix(v21, v34);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v24 = 0u;
    v22 = 0u;
    *&v21[1] = 0u;
    v30 = 0x3FF0000000000000;
    v14 = vsubq_f64(*(v33 + 8), v32);
    v21[0] = *&v14.f64[0];
    v23 = *&v14.f64[1];
    v26 = v13 - v12;
    v28 = v32;
    v29 = v12;
  }

  v15 = 0;
  v16 = *a2;
  do
  {
    *(v16 + v15 * 8 + 8) = *&v21[v15];
    v15 += 2;
  }

  while (v15 != 16);
  v17 = md::LayoutContext::get<md::NavigationContext>(v9);
  if (v17)
  {
    v18 = v17[22];
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(v16 + 232);
  if (!v19)
  {
    md::GeometryLogic::createUnitTransformConstantData(v21);
  }

  v20 = *(v16 + 240);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::GeometryLogic::setTransformConstantDataWithMercatorRect(v19, v31, v5, v33[0].f64[0], v33[1].f64[1], v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

void sub_1B2BC137C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::GeometryLogic::setTransformConstantDataWithMercatorRect(uint64_t a1, double *a2, char a3, double a4, double a5, float a6)
{
  if (a3)
  {
    gdc::GlobeTileUtils::createSplinePatchFromMercatorRect(v79, a2, a4, a5);
    ggl::ConstantDataTyped<ggl::Grid::Style>::write(v77, a1);
    v11 = 0;
    v12 = &v78[5] + 1;
    do
    {
      v13 = *(&v79[1] + v11);
      *(v12 - 3) = *(v79 + v11);
      *(v12 - 1) = v13;
      *v12 = 1065353216;
      v12 += 4;
      v11 += 12;
    }

    while (v11 != 192);
    v14 = a2[1];
    v15 = a2[3];
    v16 = exp(v14 * 6.28318531 + -3.14159265);
    v17 = atan(v16);
    v18 = v17 + v17;
    v19 = v17 + v17 + -1.57079633;
    v20 = exp(v15 * 6.28318531 + -3.14159265);
    v21 = atan(v20);
    v22 = 0;
    v23 = v21 + v21;
    v24 = v23 + -1.57079633;
    v25 = v14;
    v26 = v15 - v14;
    v27 = 1.0 / (v23 - v18);
    do
    {
      v28 = v22 * 0.142857143;
      v75[v22] = v28;
      v29 = 0.0;
      if (v19 != v24)
      {
        v30 = v28;
        v31 = exp((v25 + v26 * v30) * 6.28318531 + -3.14159265);
        v32 = (fmin(v24, fmax(v19, atan(v31) * 2.0 + -1.57079633)) - v19) * v27;
        v29 = v32;
      }

      *&v81[v22++] = v29;
    }

    while (v22 != 8);
    gm::_polyFit<double>(v75, v81, v85);
    v33 = vcvt_f32_f64(*&v85[8]);
    v34 = 1.0 - vaddvq_f64(*&v85[8]);
    v35 = v78;
    v78->i32[0] = 0;
    *(v35 + 4) = v33;
    v35[1].f32[1] = v34;
    v36 = +[VKDebugSettings sharedSettings];
    if ([v36 daVinciGlobeScalingCorrection])
    {
      v37 = 0;
      v38 = a2[1];
      v39 = a2[3] - v38;
      do
      {
        v40 = v37 * 0.14286;
        *(v75 + v37) = v40;
        v41 = cosh((v38 + v39 * v40) * 6.28318531 + -3.14159265);
        *(v81 + v37++) = v41;
      }

      while (v37 != 8);
      gm::_polyFit<float>(v75, v81, v85);
      v42 = a6;
      v44 = a5;
      v43 = a4;
      v45 = *v85;
      v46 = *&v85[8];
    }

    else
    {
      v45 = 1065353216;
      v46 = 0;
      v42 = a6;
      v44 = a5;
      v43 = a4;
    }

    v56 = v78;
    v78[2] = v45;
    v56[3].i32[0] = v46;

    gdc::GlobeTileUtils::boundsFromMercatorRect(v75, a2, v43, v44);
    v57 = 1.0 / (v76[5] - v76[2]);
    v58 = v78;
    __asm { FMOV            V2.2S, #1.0 }

    v60.f64[0] = v42 + v43;
    v60.f64[1] = v44 - v43;
    v78[42] = vcvt_f32_f64(vmulq_n_f64(v60, v57));
    v58[43] = _D2;
    geo::RigidTransform<double,double>::inverse(v81, v75);
    memset(v74, 0, sizeof(v74));
    *v85 = v82;
    *&v85[16] = v83;
    v86 = v84;
    v61 = gm::Quaternion<double>::operator*(v85, v74);
    v62 = 0;
    *v87 = v61;
    v87[1] = v63;
    v87[2] = v64;
    do
    {
      *(&v88 + v62 * 8) = *&v87[v62] + *&v81[v62];
      ++v62;
    }

    while (v62 != 3);
    *v85 = v88;
    *&v85[16] = v89;
    v65 = gm::Box<double,3>::invLerped(v76, v85);
    v66 = 0;
    *v81 = v65;
    v81[1] = v67;
    v81[2] = v68;
    do
    {
      v69 = *&v81[v66];
      *(&v88 + v66++) = v69;
    }

    while (v66 != 3);
    v70 = DWORD2(v88);
    v58[36] = v88;
    v58[37].i32[0] = v70;
    v58[37].i32[1] = 1065353216;
    v55 = v77;
  }

  else
  {
    ggl::ConstantDataTyped<ggl::Grid::Style>::write(v79, a1);
    v47 = a5 - a4;
    if (a5 - a4 == 0.0)
    {
      v47 = 1.0;
    }

    v48 = v80;
    v49 = a6 * 0.0000000249532021 / v47;
    *(v80 + 336) = v49;
    *(v48 + 340) = 1065353216;
    __asm { FMOV            V0.2S, #1.0 }

    *(v48 + 344) = _D0;
    v55 = v79;
  }

  ggl::BufferMemory::~BufferMemory(v55);
}

void md::release_data_for_handle(void *a1, unint64_t *a2)
{
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = v25 - v27;
                v29 = (v25 - v27) >> 3;
                v30 = v29 + 1;
                if ((v29 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v31 = v24 - v27;
                if (v31 >> 2 > v30)
                {
                  v30 = v31 >> 2;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v32 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v32 = v30;
                }

                if (v32)
                {
                  if (!(v32 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v33 = (v25 - v27) >> 3;
                v34 = (8 * v29);
                v35 = (8 * v29 - 8 * v33);
                *v34 = v6;
                v26 = v34 + 1;
                memcpy(v35, v27, v28);
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v25 = v6;
                v26 = v25 + 8;
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(a1, a2);
  v36 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 26), v36);
}

{
  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::erase(a1, a2);
  v4 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 20), v4);
}

{
  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(a1, a2);
  v4 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 20), v4);
}

{
  v4 = a1[7];
  v5 = (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = 3 * (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL);
  v7 = *(v4 + v5) + 24 * (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL);
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = *(v13 + v5) + 8 * v6;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = *(v14 + 16);
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v16;
  v19 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v20 = *(v14 + 16);
  *(v14 + 8) = v19;
  if (v20)
  {
    v28 = v17;
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v17 = v28;
  }

  *v16 = v17;
  v21 = *(v16 + 16);
  *(v16 + 16) = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v18 = *(v16 + 16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v22 = *a2;
  v23 = *a2 >> 6;
  v24 = a1[1];
  if (v23 < (a1[2] - v24) >> 3)
  {
    v25 = *(v24 + 8 * v23);
    if (v25)
    {
      if (*(v25 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v25 + 16 * (*a2 & 0x3F) + 8)));
        v22 = *a2;
      }
    }
  }

  v26 = a1[23];
  if (v22 < ((a1[24] - v26) >> 3))
  {
    v27 = *(v26 + 8 * v22);
    if (!((v27 ^ v22) >> 32))
    {
      v29 = v22;
      *(v26 + 8 * v22) = v27 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), &v29);
    }
  }
}

{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v6 = a1[7];
  v7 = *(v6 + 8 * v4) + 24 * v5;
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = *(v13 + 8 * v4) + 24 * v5;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = *(v14 + 16);
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v16;
  v19 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v20 = *(v14 + 16);
  *(v14 + 8) = v19;
  if (v20)
  {
    v33 = v17;
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v17 = v33;
  }

  *v16 = v17;
  v21 = *(v16 + 16);
  *(v16 + 16) = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v18 = *(v16 + 16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v22 = a1[19];
  v23 = *(v22 + 8 * v4);
  v24 = ((a1[5] - a1[4]) >> 3) - 1;
  v25 = *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v26 = *(v23 + 8 * v5);
  *(v23 + 8 * v5) = *(v25 + 8 * (v24 & 0x3F));
  *(v25 + 8 * (v24 & 0x3F)) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *a2;
  v28 = *a2 >> 6;
  v29 = a1[1];
  if (v28 < (a1[2] - v29) >> 3)
  {
    v30 = *(v29 + 8 * v28);
    if (v30)
    {
      if (*(v30 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v30 + 16 * (*a2 & 0x3F) + 8)));
        v27 = *a2;
      }
    }
  }

  v31 = a1[29];
  if (v27 < ((a1[30] - v31) >> 3))
  {
    v32 = *(v31 + 8 * v27);
    if (!((v32 ^ v27) >> 32))
    {
      v34 = v27;
      *(v31 + 8 * v27) = v32 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v34);
    }
  }
}

{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
  v5 = v4 & 0x3F;
  v6 = a1[7];
  v7 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v8 = *(v6 + v7) + 24 * v5;
  v9 = ((a1[5] - a1[4]) >> 3) - 1;
  v10 = *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v9 & 0x3F);
  v11 = *v8;
  v12 = *(v8 + 16);
  LOWORD(v9) = *(v10 + 16);
  *v8 = *v10;
  *(v8 + 16) = v9;
  *(v10 + 16) = v12;
  *v10 = v11;
  v13 = a1[13];
  v14 = *(v13 + v7) + 292 * v5;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 292 * (v15 & 0x3F);
  memcpy(__dst, v14, sizeof(__dst));
  v17 = 0;
  v18 = v16;
  v19 = v14;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      *(v19 + i) = *(v18 + i);
    }

    *(v14 + 16 * v17 + 12) = *(v16 + 16 * v17 + 12);
    ++v17;
    v19 += 16;
    v18 += 16;
  }

  while (v17 != 6);
  v21 = 0;
  v22 = v14 + 96;
  v23 = v16 + 96;
  do
  {
    for (j = 0; j != 12; j += 4)
    {
      *(v22 + j) = *(v23 + j);
    }

    ++v21;
    v22 += 12;
    v23 += 12;
  }

  while (v21 != 8);
  v25 = 0;
  v26 = (v16 + 192);
  do
  {
    *(v14 + 192 + v25) = *(v26 + v25);
    v25 += 4;
  }

  while (v25 != 64);
  v27 = 0;
  v28 = (v16 + 256);
  do
  {
    *(v14 + 256 + v27) = *(v28 + v27);
    v27 += 4;
  }

  while (v27 != 12);
  v29 = 0;
  v30 = (v16 + 268);
  do
  {
    *(v14 + 268 + v29) = *(v30 + v29);
    v29 += 4;
  }

  while (v29 != 12);
  v31 = 0;
  v32 = *(v16 + 280);
  *(v14 + 288) = *(v16 + 288);
  *(v14 + 280) = v32;
  do
  {
    v33 = v16 + v31;
    *v33 = *&__dst[v31];
    *(v33 + 8) = *&__dst[v31 + 8];
    *(v33 + 12) = *&__dst[v31 + 12];
    v31 += 16;
  }

  while (v31 != 96);
  v34 = *&__dst[144];
  v35 = *&__dst[160];
  v36 = *&__dst[112];
  *(v16 + 128) = *&__dst[128];
  *(v16 + 144) = v34;
  v37 = *&__dst[176];
  v38 = *&__dst[192];
  *(v16 + 160) = v35;
  *(v16 + 176) = v37;
  *(v16 + 96) = *&__dst[96];
  *(v16 + 112) = v36;
  v39 = *&__dst[240];
  v40 = *&__dst[208];
  *(v16 + 224) = *&__dst[224];
  *(v16 + 240) = v39;
  *v26 = v38;
  *(v16 + 208) = v40;
  *(v16 + 264) = *&__dst[264];
  *v28 = *&__dst[256];
  *(v16 + 276) = *&__dst[276];
  *v30 = *&__dst[268];
  *(v16 + 288) = __dst[288];
  *(v16 + 280) = *&__dst[280];
  v41 = *a2;
  v42 = *a2 >> 6;
  v43 = a1[1];
  if (v42 < (a1[2] - v43) >> 3)
  {
    v44 = *(v43 + 8 * v42);
    if (v44)
    {
      if (*(v44 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v44 + 16 * (*a2 & 0x3F) + 8)));
        v41 = *a2;
      }
    }
  }

  v45 = a1[23];
  if (v41 < ((a1[24] - v45) >> 3))
  {
    v46 = *(v45 + 8 * v41);
    if (!((v46 ^ v41) >> 32))
    {
      *__dst = v41;
      *(v45 + 8 * v41) = v46 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), __dst);
    }
  }
}

{
  v3 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v4 = a1[7];
  v5 = (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(v4 + v5) + 24 * v3;
  v7 = ((a1[5] - a1[4]) >> 3) - 1;
  v8 = *(v4 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v7 & 0x3F);
  v9 = *v6;
  v10 = *(v6 + 16);
  LOWORD(v7) = *(v8 + 16);
  *v6 = *v8;
  *(v6 + 16) = v7;
  *(v8 + 16) = v10;
  *v8 = v9;
  v11 = a1[13];
  v12 = *(v11 + v5);
  v13 = ((a1[5] - a1[4]) >> 3) - 1;
  v14 = v13 & 0x3F;
  v15 = *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v16 = *(v12 + 8 * v3);
  *(v12 + 8 * v3) = *(v15 + 8 * v14);
  *(v15 + 8 * v14) = v16;
  v17 = *a2;
  v18 = *a2 >> 6;
  v19 = a1[1];
  if (v18 < (a1[2] - v19) >> 3)
  {
    v20 = *(v19 + 8 * v18);
    if (v20)
    {
      if (*(v20 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v20 + 16 * (*a2 & 0x3F) + 8)));
        v17 = *a2;
      }
    }
  }

  v22 = a1[23];
  if (v17 < ((a1[24] - v22) >> 3))
  {
    v23 = *(v22 + 8 * v17);
    if (!((v23 ^ v17) >> 32))
    {
      v24 = v17;
      *(v22 + 8 * v17) = v23 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), &v24);
    }
  }
}

{
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = v25 - v27;
                v29 = (v25 - v27) >> 3;
                v30 = v29 + 1;
                if ((v29 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v31 = v24 - v27;
                if (v31 >> 2 > v30)
                {
                  v30 = v31 >> 2;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v32 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v32 = v30;
                }

                if (v32)
                {
                  if (!(v32 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v33 = (v25 - v27) >> 3;
                v34 = (8 * v29);
                v35 = (8 * v29 - 8 * v33);
                *v34 = v6;
                v26 = v34 + 1;
                memcpy(v35, v27, v28);
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v25 = v6;
                v26 = v25 + 8;
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v36 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v37 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v38 = a1[7];
  v39 = *(v38 + 8 * v36) + 24 * v37;
  v40 = ((a1[5] - a1[4]) >> 3) - 1;
  v41 = *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v40 & 0x3F);
  v42 = *v39;
  v43 = *(v39 + 16);
  v44 = *(v41 + 16);
  *v39 = *v41;
  *(v39 + 16) = v44;
  *(v41 + 16) = v43;
  *v41 = v42;
  v45 = a1[13];
  v46 = *(v45 + 8 * v36) + 24 * v37;
  v47 = ((a1[5] - a1[4]) >> 3) - 1;
  v48 = *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v47 & 0x3F);
  v49 = *v46;
  v50 = *(v46 + 16);
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *v46 = *v48;
  v51 = *(v48 + 8);
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v52 = *(v46 + 16);
  *(v46 + 8) = v51;
  if (v52)
  {
    v66 = v49;
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
    v49 = v66;
  }

  *v48 = v49;
  v53 = *(v48 + 16);
  *(v48 + 16) = v50;
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    v50 = *(v48 + 16);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  v54 = a1[19];
  v55 = *(v54 + 8 * v36);
  v56 = ((a1[5] - a1[4]) >> 3) - 1;
  v57 = v56 & 0x3F;
  v58 = *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v59 = *(v55 + 8 * v37);
  *(v55 + 8 * v37) = *(v58 + 8 * v57);
  *(v58 + 8 * v57) = v59;
  v60 = *a2;
  v61 = *a2 >> 6;
  v62 = a1[1];
  if (v61 < (a1[2] - v62) >> 3)
  {
    v63 = *(v62 + 8 * v61);
    if (v63)
    {
      if (*(v63 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v63 + 16 * (*a2 & 0x3F) + 8)));
        v60 = *a2;
      }
    }
  }

  v64 = a1[29];
  if (v60 < ((a1[30] - v64) >> 3))
  {
    v65 = *(v64 + 8 * v60);
    if (!((v65 ^ v60) >> 32))
    {
      v67 = v60;
      *(v64 + 8 * v60) = v65 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v67);
    }
  }
}

{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v40 = a1[7];
  v41 = ((a1[5] - a1[4]) >> 3) - 1;
  v42 = *(v40 + 8 * v38) + 24 * v39;
  v43 = *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v41 & 0x3F);
  v44 = *v42;
  v45 = *(v42 + 16);
  v46 = *(v43 + 16);
  *v42 = *v43;
  *(v42 + 16) = v46;
  *(v43 + 16) = v45;
  *v43 = v44;
  v47 = a1[13];
  v48 = (*(v47 + 8 * v38) + 16 * v39);
  v49 = ((a1[5] - a1[4]) >> 3) - 1;
  v50 = v49 >> 6;
  v51 = v49 & 0x3F;
  v52 = (*(v47 + 8 * v50) + 16 * v51);
  v63 = *v48;
  do
  {
    *(v48 + v37) = *(v52 + v37);
    v37 += 4;
  }

  while (v37 != 16);
  *v52 = v63;
  v53 = a1[19];
  v54 = *(v53 + 8 * v38);
  v55 = *(v53 + 8 * v50);
  v56 = *(v54 + 8 * v39);
  *(v54 + 8 * v39) = *(v55 + 8 * v51);
  *(v55 + 8 * v51) = v56;
  v57 = *a2;
  v58 = *a2 >> 6;
  v59 = a1[1];
  if (v58 < (a1[2] - v59) >> 3)
  {
    v60 = *(v59 + 8 * v58);
    if (v60)
    {
      if (*(v60 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v60 + 16 * (*a2 & 0x3F) + 8)));
        v57 = *a2;
      }
    }
  }

  v61 = a1[29];
  if (v57 < ((a1[30] - v61) >> 3))
  {
    v62 = *(v61 + 8 * v57);
    if (!((v62 ^ v57) >> 32))
    {
      *&v63 = v57;
      *(v61 + 8 * v57) = v62 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v63);
    }
  }
}

{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v40 = a1[7];
  v41 = *(v40 + 8 * v38) + 24 * v39;
  v42 = ((a1[5] - a1[4]) >> 3) - 1;
  v43 = *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v42 & 0x3F);
  v44 = *v41;
  v45 = *(v41 + 16);
  LOWORD(v42) = *(v43 + 16);
  *v41 = *v43;
  *(v41 + 16) = v42;
  *(v43 + 16) = v45;
  *v43 = v44;
  v46 = a1[13];
  v47 = *(v46 + 8 * v38) + 32 * v39;
  v48 = ((a1[5] - a1[4]) >> 3) - 1;
  v49 = v48 >> 6;
  v50 = v48 & 0x3F;
  v51 = *(v46 + 8 * v49) + 32 * v50;
  v66 = *v47;
  v67 = *(v47 + 4);
  v52 = *(v47 + 8);
  *&v68[2] = *(v47 + 12);
  v69 = *(v47 + 20);
  v53 = *(v47 + 24);
  do
  {
    *(v47 + v37) = *(v51 + v37);
    v37 += 2;
  }

  while (v37 != 6);
  v54 = 0;
  *(v47 + 8) = *(v51 + 8);
  v55 = (v51 + 12);
  do
  {
    *(v47 + 12 + v54) = *(v55 + v54);
    v54 += 4;
  }

  while (v54 != 12);
  *(v47 + 24) = *(v51 + 24);
  *v51 = v66;
  *(v51 + 4) = v67;
  *(v51 + 8) = v52;
  *v55 = *&v68[2];
  *(v51 + 20) = v69;
  *(v51 + 24) = v53;
  v56 = a1[19];
  v57 = *(v56 + 8 * v38);
  v58 = *(v56 + 8 * v49);
  v59 = *(v57 + 8 * v39);
  *(v57 + 8 * v39) = *(v58 + 8 * v50);
  *(v58 + 8 * v50) = v59;
  v60 = *a2;
  v61 = *a2 >> 6;
  v62 = a1[1];
  if (v61 < (a1[2] - v62) >> 3)
  {
    v63 = *(v62 + 8 * v61);
    if (v63)
    {
      if (*(v63 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v63 + 16 * (*a2 & 0x3F) + 8)));
        v60 = *a2;
      }
    }
  }

  v64 = a1[29];
  if (v60 < ((a1[30] - v64) >> 3))
  {
    v65 = *(v64 + 8 * v60);
    if (!((v65 ^ v60) >> 32))
    {
      *v68 = v60;
      *(v64 + 8 * v60) = v65 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), v68);
    }
  }
}

{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = a1[7];
  v40 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v41 = *(v39 + 8 * v38) + 24 * v40;
  v42 = ((a1[5] - a1[4]) >> 3) - 1;
  v43 = *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v42 & 0x3F);
  v44 = *v41;
  v45 = *(v41 + 16);
  v46 = *(v43 + 16);
  *v41 = *v43;
  *(v41 + 16) = v46;
  *(v43 + 16) = v45;
  *v43 = v44;
  v47 = a1[13];
  v48 = *(v47 + 8 * v38) + 24 * v40;
  v49 = ((a1[5] - a1[4]) >> 3) - 1;
  v50 = v49 >> 6;
  v51 = v49 & 0x3F;
  v52 = *(v47 + 8 * v50) + 24 * v51;
  v53 = *v48;
  v54 = *(v48 + 16);
  v55 = (v52 + 8);
  *v48 = *v52;
  v57 = *(v48 + 8);
  v56 = v48 + 8;
  v68 = v57;
  v69 = v54;
  do
  {
    *(v56 + v37) = *(v55 + v37);
    v37 += 4;
  }

  while (v37 != 12);
  *v52 = v53;
  *v55 = v68;
  *(v52 + 16) = v69;
  v58 = a1[19];
  v59 = *(v58 + 8 * v38);
  v60 = *(v58 + 8 * v50);
  v61 = *(v59 + 8 * v40);
  *(v59 + 8 * v40) = *(v60 + 8 * v51);
  *(v60 + 8 * v51) = v61;
  v62 = *a2;
  v63 = *a2 >> 6;
  v64 = a1[1];
  if (v63 < (a1[2] - v64) >> 3)
  {
    v65 = *(v64 + 8 * v63);
    if (v65)
    {
      if (*(v65 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v65 + 16 * (*a2 & 0x3F) + 8)));
        v62 = *a2;
      }
    }
  }

  v66 = a1[29];
  if (v62 < ((a1[30] - v66) >> 3))
  {
    v67 = *(v66 + 8 * v62);
    if (!((v67 ^ v62) >> 32))
    {
      v68 = v62;
      *(v66 + 8 * v62) = v67 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v68);
    }
  }
}

void ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(void *a1, void *a2)
{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) >> 6;
  v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) & 0x3FLL;
  v6 = a1[7];
  v7 = *(v6 + 8 * v4) + 24 * v5;
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = (*(v13 + 8 * v4) + 24 * v5);
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  v14[1] = 0;
  v14[2] = 0;
  *v14 = *v16;
  v20 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v21 = v14[2];
  *(v14 + 1) = v20;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  *v16 = v17;
  *(v16 + 8) = v18;
  v22 = *(v16 + 16);
  *(v16 + 16) = v19;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    v19 = *(v16 + 16);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v23 = a1[19];
  v24 = *(v23 + 8 * v4);
  v25 = ((a1[5] - a1[4]) >> 3) - 1;
  v26 = v25 & 0x3F;
  v27 = *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v28 = *(v24 + 8 * v5);
  *(v24 + 8 * v5) = *(v27 + 8 * v26);
  *(v27 + 8 * v26) = v28;
  v29 = *a2 >> 6;
  v30 = a1[1];
  if (v29 < (a1[2] - v30) >> 3)
  {
    v31 = *(v30 + 8 * v29);
    if (v31)
    {
      v32 = *a2 & 0x3FLL;
      if (*(v31 + 16 * v32) == HIDWORD(*a2))
      {
        v33 = (a1[4] + 8 * *(v31 + 16 * v32 + 8));

        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v33);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::__erase_unique<md::MaterialKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 = (v5 % *&v4);
      }
    }

    else
    {
      v5 = ((*&v4 - 1) & v5);
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
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

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

uint64_t geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::Label::setupOccludedHideAnimation(uint64_t this, md::LabelManager *a2)
{
  v3 = this;
  if (*(this + 296))
  {
    if (*(this + 1161))
    {
      return this;
    }

    this = md::Label::clearAnimatingPart(this);
  }

  *(v3 + 1161) = 1;
  v4 = mdm::zone_mallocator::instance(this);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v4, 0x240uLL);
  bzero(v5, 0x240uLL);
  v6 = md::LabelPart::LabelPart(v5);
  *v5 = &unk_1F2A47848;
  v7 = *(v3 + 280);
  *(v3 + 280) = v5;
  if (v7)
  {
    v7 = (*(*v7 + 8))(v7, v6);
  }

  v8 = mdm::zone_mallocator::instance(v7);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, 0x2E8uLL);
  md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v9, a2, v3, 8, *(v3 + 272), *(v3 + 280), 0);
  this = *(v3 + 296);
  *(v3 + 296) = v9;
  if (this)
  {
    v10 = *(*this + 8);

    return v10();
  }

  return this;
}

void sub_1B2BC213C(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

double md::LabelPart::LabelPart(md::LabelPart *this)
{
  *this = &unk_1F2A5B190;
  *(this + 2) = 1065353216;
  *(this + 2) = 0;
  *(this + 3) = this;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 72) = xmmword_1B33B0730;
  *(this + 11) = 1065353216;
  *(this + 24) = 1065353216;
  *(this + 100) = 0u;
  *(this + 29) = 0;
  *(this + 120) = xmmword_1B33B0730;
  *(this + 136) = xmmword_1B33B0730;
  *(this + 152) = xmmword_1B33B0730;
  *(this + 168) = xmmword_1B33B0720;
  *(this + 224) = 0;
  *(this + 200) = 0;
  *(this + 184) = 0u;
  *(this + 248) = 0u;
  *(this + 41) = 1065353216;
  *(this + 84) = 1065353216;
  *(this + 89) = 0;
  *(this + 464) = 0;
  *(this + 440) = 0;
  *(this + 134) = 1065353216;
  *(this + 278) = 512;
  *(this + 562) = 0;
  *(this + 232) = 0u;
  *(this + 257) = 0u;
  *(this + 340) = 0u;
  *(this + 424) = 0u;
  *(this + 497) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 280) = xmmword_1B33B0AD0;
  *(this + 296) = xmmword_1B33B0870;
  *(this + 312) = xmmword_1B33B0730;
  *(this + 360) = xmmword_1B33B0730;
  *(this + 376) = xmmword_1B33B0730;
  *(this + 392) = xmmword_1B33B0730;
  *(this + 408) = xmmword_1B33B0720;
  *(this + 520) = xmmword_1B33B0AD0;
  *(this + 540) = 0u;
  *(this + 558) = 0;
  *(this + 563) = -1;
  *(this + 565) = 0;
  return result;
}

md::CrossFadeLabelPart *md::CrossFadeLabelPart::CrossFadeLabelPart(md::CrossFadeLabelPart *this, md::LabelPart *a2, md::LabelPart *a3, char a4)
{
  md::LabelPart::LabelPart(this);
  *(v8 + 592) = 0;
  *(v8 + 576) = 0u;
  *(v8 + 608) = 0;
  *(v8 + 612) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *(v8 + 629) = 0;
  *v8 = &unk_1F2A3B218;
  *(v8 + 632) = 0;
  *(v8 + 636) = 8224;
  *(v8 + 628) = a4;
  md::CompositeLabelPart::addLabelPart(v8, a2);
  md::CompositeLabelPart::addLabelPart(this, a3);
  return this;
}

uint64_t md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(uint64_t a1, uint64_t a2, md::Label *a3, int a4, md::LabelPart *a5, md::LabelPart *a6, char a7)
{
  v13 = md::CrossFadeLabelPart::CrossFadeLabelPart(a1, a5, a6, a7);
  *v13 = &unk_1F2A0D4C0;
  *(v13 + 80) = a2;
  *(v13 + 81) = a3;
  *(v13 + 87) = 0;
  *(v13 + 89) = 0;
  *(v13 + 88) = 0;
  *(v13 + 364) = 0;
  *(v13 + 730) = 0;
  *(v13 + 41) = 0u;
  *(v13 + 42) = 0u;
  *(v13 + 736) = a4;
  *(v13 + 737) = 1;
  md::CompositeLabelPart::setLabel(v13, a3);
  (*(*a5 + 184))(a5);
  (*(*a6 + 184))(a6);
  md::LabelPartContent::LabelPartContent(buf, a5);
  md::LabelPartContent::LabelPartContent(&v38, a6);
  v15 = a1 + 640;
  if (a4 > 5)
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
        LODWORD(v50) = 0;
        v22 = buf[0];
        if ((buf[0] & 2) != 0)
        {
          v23 = v46;
          v24 = v47;
          v25 = md::LabelAnimator::resolveParams((a1 + 640), 0, 0xFu, 1, 1);
          if (v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v24;
          }

          md::LabelAnimator::createFadeAnimation(a1 + 640, v26, 0.0, 0, v25, &v50);
          v22 = buf[0];
        }

        if (v22)
        {
          v49 = 0;
          v27 = md::LabelAnimator::resolveParams((a1 + 640), 0, 0x10u, 1, 0);
          md::LabelAnimator::createFadeAnimation(a1 + 640, v45, *&v50, 0, v27, &v49);
        }
      }

      else if (a4 == 9)
      {
        if (v40 && v41 && (*(*v40 + 232))() == 8)
        {
          v17 = *(v40[72] + 8);
          std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((a1 + 664), 0x8E38E38E38E38E39 * ((*(a1 + 672) - *(a1 + 664)) >> 4) + 1);
          *(v17 + 563) = 57 * ((*(a1 + 672) - *(a1 + 664)) >> 4) - 1;
          md::LabelAnimator::createTrack((a1 + 640));
        }

        *(a1 + 730) = 1;
      }
    }

    else if (a4 == 6)
    {
      if (*buf)
      {
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v45, v38, v40, 0);
        md::LabelAnimator::setupTextMorphAnimation((a1 + 640), v47, v41, 0, 0, 0);
        v18 = (*buf >> 2) & 7;
        v19 = (v38 >> 2) & 7;
        if (v18 == 2 && v19 == 3)
        {
          LODWORD(v50) = 0;
          v20 = md::LabelAnimator::resolveParams((a1 + 640), 0, 6u, 1, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v48, 0, v20);
          v21 = md::LabelAnimator::resolveParams((a1 + 640), 1, 6u, 1, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v42, 1, v21);
        }

        else if (v18 == 3 && v19 == 2)
        {
          LODWORD(v50) = 0;
          v32 = md::LabelAnimator::resolveParams((a1 + 640), 0, 7u, 0, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v48, 0, v32);
          v33 = md::LabelAnimator::resolveParams((a1 + 640), 1, 7u, 0, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v42, 1, v33);
        }

        else if (v18 == 3 && v19 == 4)
        {
          LODWORD(v50) = 0;
          md::LabelAnimator::resolveParams((a1 + 640), 0, 8u, 1, 2);
          md::LabelAnimator::createIconRowShiftAnimation((a1 + 640), v48, 0);
          md::LabelAnimator::resolveParams((a1 + 640), 1, 9u, 1, 2);
          md::LabelAnimator::createImageListFeatherAnimation((a1 + 640), v42, 1);
        }

        else if (v18 == 4 && v19 == 3)
        {
          LODWORD(v50) = 0;
          md::LabelAnimator::resolveParams((a1 + 640), 0, 9u, 0, 2);
          md::LabelAnimator::createImageListFeatherAnimation((a1 + 640), v48, 0);
          md::LabelAnimator::resolveParams((a1 + 640), 1, 8u, 0, 2);
          md::LabelAnimator::createIconRowShiftAnimation((a1 + 640), v42, 1);
        }
      }

      else
      {
        LODWORD(v50) = 0;
        v30 = md::LabelAnimator::resolveParams((a1 + 640), 1, 1u, 1, 0);
        if (v40)
        {
          md::LabelAnimator::createFadeAnimation(a1 + 640, v40, 0.0, 1, v30, &v50);
          v31 = *(v30 + 3);
        }

        else
        {
          v31 = 0.0;
        }

        if (v41)
        {
          md::LabelAnimator::createFadeAnimation(a1 + 640, v41, v31, 1, v30, &v50);
          v31 = *(v30 + 3) + v31;
        }

        if (v42)
        {
          md::LabelAnimator::createFadeAnimation(a1 + 640, v42, v31, 1, v30, &v50);
          if (v43)
          {
            md::LabelAnimator::createFadeAnimation(a1 + 640, v43, v31, 1, v30, &v50);
          }
        }
      }
    }

    else
    {
      if (!v38)
      {
        md::LabelAnimator::setupLocationChangedFadeAnimation(a1 + 640, 0, buf);
      }

      if (!*buf)
      {
        md::LabelAnimator::setupLocationChangedFadeAnimation(a1 + 640, 1, &v38);
      }
    }
  }

  else
  {
    if (a4 <= 3)
    {
      if ((a4 - 1) < 2)
      {
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v45, v38, v40, 0x13E4CCCCDLL);
        v16 = 1045220557;
LABEL_51:
        *(a1 + 656) = v16;
        goto LABEL_52;
      }

      if (a4 != 3)
      {
        goto LABEL_52;
      }

      if (*(*(a1 + 648) + 1333) == 1)
      {
        if (*(*(*v15 + 424) + 12) == 1)
        {
          md::LabelAnimator::setupBalloonAnimation(a1 + 640, 1, buf, &v38);
LABEL_50:
          v16 = 1056964608;
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v28 = 1;
      goto LABEL_41;
    }

    if (a4 == 4)
    {
      if (*(*(a1 + 648) + 1333) == 1)
      {
        if (*(*(*v15 + 424) + 12) == 1)
        {
          md::LabelAnimator::setupBalloonAnimation(a1 + 640, 0, buf, &v38);
          goto LABEL_50;
        }

LABEL_49:
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v45, v38, v40, 0x13E4CCCCDLL);
        goto LABEL_50;
      }

      v28 = 0;
LABEL_41:
      md::LabelAnimator::setupMKBalloonPickAnimations((a1 + 640), v28, buf, &v38);
      goto LABEL_52;
    }

    if (*buf)
    {
      md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v45, v38, v40, 0x13E4CCCCDLL);
      md::LabelAnimator::setupTextMorphAnimation((a1 + 640), v47, v41, 0, 0, 0x13E4CCCCDLL);
    }

    else if (v39)
    {
      LODWORD(v50) = 0;
      v29 = md::LabelAnimator::resolveParams((a1 + 640), 1, 1u, 1, 0);
      md::LabelAnimator::createFadeAnimation(a1 + 640, v39, 0.0, 1, v29, &v50);
      *(a1 + 729) = 1;
    }
  }

LABEL_52:
  v14.n128_u64[0] = 0;
  md::LabelAnimator::runAnimations((a1 + 640), v14);
  if (*(a1 + 736) - 3 <= 1)
  {
    *(a1 + 738) = 1;
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v34 = GEOGetVectorKitPerformanceLog_log;
    v35 = v34;
    v36 = *(a1 + 736);
    if (*(a1 + 736) && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v36, "LabelsPickAnimation", &unk_1B3514CAA, buf, 2u);
    }
  }

  return a1;
}

void sub_1B2BC2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  a9 = v9 + 83;
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  md::CompositeLabelPart::~CompositeLabelPart(v9);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::CompositeLabelPart::addLabelPart(mdm::zone_mallocator *this, md::LabelPart *a2)
{
  v3 = this;
  v4 = *(this + 73);
  v5 = *(this + 74);
  if (v4 >= v5)
  {
    v7 = *(this + 72);
    v8 = (v4 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v5 - v7;
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

    v21[4] = this + 600;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v8];
    v15 = &v13[8 * v11];
    *v14 = a2;
    v6 = v14 + 8;
    v16 = *(v3 + 72);
    v17 = *(v3 + 73) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(v3 + 72);
    *(v3 + 72) = v18;
    *(v3 + 73) = v6;
    v20 = *(v3 + 74);
    *(v3 + 74) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    this = std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 1;
  }

  *(v3 + 73) = v6;
  *(v3 + 629) = 1;
  return this;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPart *>(v5, v4);
  }

  return a1;
}

uint64_t md::CompositeLabelPart::setLabel(md::CompositeLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  v5 = *(this + 72);
  v6 = *(this + 73);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 16))(v7, a2);
  }

  return result;
}

void *md::CompositeLabelPart::setLabelLayoutState(void *result, uint64_t a2)
{
  result[4] = a2;
  v2 = result[72];
  for (i = result[73]; v2 != i; result = (*(*v5 + 24))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::ImageLabelPart::setLabel(md::ImageLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  *(this + 630) = *(*(this + 2) + 1302);
  return result;
}

uint64_t md::IconLabelPart::setLabel(md::IconLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  *(this + 630) = *(*(this + 2) + 1302);
  if (*(*(this + 4) + 77) == 1)
  {
    *(this + 720) = 0;
  }

  return result;
}

uint64_t md::CompositeLabelPart::clearAnimationIDs(uint64_t this)
{
  *(this + 563) = -1;
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 184))(v3);
  }

  return this;
}

md::LabelPartContent *md::LabelPartContent::LabelPartContent(md::LabelPartContent *this, md::LabelPart *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  if (*(a2 + 562))
  {
    v4 = mdm::zone_mallocator::instance(this);
    v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v4, 1);
    v7[0] = v5;
    *v5 = a2;
    v7[1] = v5 + 1;
    v7[2] = v5 + 1;
  }

  else
  {
    (*(*a2 + 200))(v7, a2);
  }

  md::LabelPartContent::parsePartContent(this, v7);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
  return this;
}

void sub_1B2BC32CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

_BYTE *md::CompositeLabelPart::children@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = this[600];
  v3 = *(this + 72);
  v4 = *(this + 73);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a2, v5 >> 3);
    v6 = *(a2 + 8);
    this = memmove(v6, v3, v5);
    *(a2 + 8) = &v6[v5];
  }

  return this;
}

void std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPart *>(v2, v1);
  }
}

void md::LabelPartContent::parsePartContent(uint64_t a1, uint64_t **a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 562);
      if (v6 <= 6)
      {
        if (v6 == 1)
        {
          *(a1 + 16) = v5;
          v10 = *a1 | 1;
        }

        else
        {
          if (v6 != 5)
          {
            if (v6 == 6)
            {
              *(a1 + 24) = v5;
              (*(*v5 + 200))(v11);
              md::LabelPartContent::parsePartContent(a1, v11);
              std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v11);
            }

            goto LABEL_17;
          }

          *(a1 + 32) = v5;
          v10 = *a1 | 2;
        }
      }

      else
      {
        if (v6 - 7 >= 3 && v6 != 11)
        {
          goto LABEL_17;
        }

        v8 = (v6 - 7);
        if (*(a1 + 40))
        {
          *(a1 + 48) = v5;
          v9 = dword_1B33B3134[v8];
        }

        else
        {
          *(a1 + 40) = v5;
          v9 = dword_1B33B3120[v8];
        }

        v10 = *a1 | v9;
      }

      *a1 = v10;
LABEL_17:
      ++v2;
    }

    while (v2 != v3);
  }
}