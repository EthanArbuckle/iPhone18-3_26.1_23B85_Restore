void md::RouteLineSupport::generateWaypointClusters(md::RouteLineSupport *this)
{
  v87[5] = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 11);
  v2 = *(this + 5);
  v3 = this + 48;
  if (v2 != this + 48)
  {
    v79 = this + 48;
    do
    {
      v4 = *(v2 + 5);
      if (*(v4 + 50) == 1)
      {
        if (*(this + 277))
        {
          v5 = 13.0;
        }

        else
        {
          v5 = 16.0;
        }

        v6 = *(v4 + 88);
        v7 = *(v4 + 96);
        while (v6 != v7)
        {
          v8 = v6[2];
          *(v8 + 80) = 0;
          *(v8 + 72) = 0;
          v9 = *(v8 + 88);
          *(v9 + 112) = 0;
          *(v9 + 80) = v5;
          v10 = v6[1];
          if (v10)
          {
            v11 = *(v10 + 88);
            *(v11 + 72) = v5;
            *(v11 + 112) = 0;
          }

          v12 = v6[3];
          if (v12)
          {
            *(*(v12 + 88) + 112) = 0;
          }

          v6 += 4;
        }

        v13 = *(v4 + 184);
        v14 = *(v4 + 192);
        if (v13 != v14)
        {
          do
          {
            v15 = *(*v13 + 88);
            v15[36] = 0;
            v15[37] = 0;
            v16 = v15[38];
            v15[38] = 0;
            if (v16)
            {
              std::__shared_weak_count::__release_weak(v16);
            }

            v13 += 8;
          }

          while (v13 != v14);
          v13 = *(v4 + 184);
        }

        *(v4 + 192) = v13;
        std::vector<std::unique_ptr<md::WaypointStoreClusterNode>,geo::allocator_adapter<std::unique_ptr<md::WaypointStoreClusterNode>,mdm::zone_mallocator>>::clear[abi:nn200100]((v4 + 120));
        memset(v87, 0, 24);
        v17 = std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::reserve(v87, (*(v4 + 96) - *(v4 + 88)) >> 5);
        v82 = v4;
        v18 = *(v4 + 88);
        v19 = *(v4 + 96);
        v20 = v18;
        if (v18 != v19)
        {
          do
          {
            v21 = *v18;
            if ([v21 when] != 3 && (objc_msgSend(v21, "isAtStart") & 1) == 0)
            {
              __str.__r_.__value_.__r.__words[0] = *(v18 + 16);
              std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](v87, &__str);
            }

            v18 += 32;
          }

          while (v18 != v19);
          v18 = *(v82 + 88);
          v20 = *(v82 + 96);
        }

        v22 = (v20 - v18) >> 5;
        v23 = v82;
        v24 = *(v82 + 120);
        if (v22 > (*(v82 + 136) - v24) >> 3)
        {
          if (v22 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v25 = *(v82 + 128);
          v85 = (v82 + 144);
          v26 = mdm::zone_mallocator::instance(v17);
          v27 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::WaypointStoreClusterNode>>(v26, v22);
          v28 = &v27[v25 - v24];
          v29 = &v27[8 * v22];
          v30 = *(v82 + 120);
          v31 = *(v82 + 128) - v30;
          v32 = &v28[-v31];
          memcpy(&v28[-v31], v30, v31);
          v33 = *(v82 + 120);
          *(v82 + 120) = v32;
          *(v82 + 128) = v28;
          v34 = *(v82 + 136);
          *(v82 + 136) = v29;
          __str.__r_.__value_.__r.__words[2] = v33;
          p_str = v34;
          __str.__r_.__value_.__r.__words[0] = v33;
          __str.__r_.__value_.__l.__size_ = v33;
          std::__split_buffer<std::unique_ptr<md::WaypointStoreClusterNode>,geo::allocator_adapter<std::unique_ptr<md::WaypointStoreClusterNode>,mdm::zone_mallocator> &>::~__split_buffer(&__str);
          v23 = v82;
        }

        v35 = fminf(*(*(*(*(v23 + 32) + 336) + 136) + 20 * *(*(*(v23 + 32) + 336) + 158) + 12), 2.0) * 30.0;
        *v86 = v5;
        *&v86[1] = v35;
        __str.__r_.__value_.__r.__words[0] = &unk_1F2A40410;
        __str.__r_.__value_.__l.__size_ = v23;
        p_str = &__str;
        md::LabelClusterBuilder::createClusters(v86, v87, &__str);
        std::__function::__value_func<md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::~__value_func[abi:nn200100](&__str);
        std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v87);
        *(v23 + 50) = 0;
        v36 = v23;
        v37 = *(v23 + 120);
        v38 = *(v36 + 128);
        if (v37 != v38)
        {
          v80 = v2;
          v81 = *(v36 + 128);
          do
          {
            if (*(*v37 + 80) == 1)
            {
              _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
            }

            v37 += 8;
          }

          while (v37 != v38);
        }

        *(v82 + 280) = 1132396544;
        *(v82 + 284) = 1132396544;
        v39 = *(v82 + 88);
        v40 = *(v82 + 96);
        while (v39 != v40)
        {
          v41 = *(v39 + 16);
          if (*(v41 + 80))
          {
            v42 = *(v41 + 88);
            v43 = *(v41 + 8);
            *(v42 + 112) = 1;
            *(v42 + 76) = v43;
            v44 = *(v41 + 72);
            if (v44)
            {
              if (((*(*v44 + 32))(v44) & 4) != 0)
              {
                v45 = *(v41 + 72);
                if (v45)
                {
                  while (1)
                  {
                    v46 = v45;
                    if (*(v45 + 80) == 1 && *(v45 + 136) == v41)
                    {
                      break;
                    }

                    v47 = *(v45 + 72);
                    if (!v47)
                    {
                      goto LABEL_48;
                    }

                    if (((*(*v47 + 32))(v47) & 4) == 0)
                    {
                      goto LABEL_48;
                    }

                    v48 = *(v46 + 72);
                    if (!v48)
                    {
                      goto LABEL_48;
                    }

                    v49 = (*(*v48 + 32))(v48);
                    v45 = 0;
                    v41 = v46;
                    if ((v49 & 4) != 0)
                    {
                      v45 = *(v46 + 72);
                      v41 = v46;
                    }
                  }

                  v50 = *(v39 + 24);
                  if (v50)
                  {
                    v51 = *(v50 + 88);
                    v52 = *(v46 + 12);
                    *(v51 + 112) = 1;
                    *(v51 + 76) = v52;
                  }
                }
              }
            }
          }

LABEL_48:
          if ([*v39 when] == 3)
          {
            v53 = *(v39 + 8);
            if (v53)
            {
              v54 = *(v53 + 88);
              *(v54 + 112) = 1;
              *(v54 + 76) = 1093664768;
            }
          }

          v39 += 32;
        }

        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2 + 11);
        v56 = *(v2 + 5);
        v57 = *(v56 + 184);
        v58 = *(v56 + 192);
        v59 = (v58 - v57) >> 3;
        v60 = *(v2 + 11);
        if (v59 > (*(v2 + 13) - v60) >> 4)
        {
          if (v59 >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v61 = *(v2 + 12) - v60;
          v85 = v2 + 112;
          v62 = mdm::zone_mallocator::instance(v55);
          v63 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v62, v59);
          v64 = &v63[v61];
          v65 = &v63[16 * v59];
          v66 = *(v2 + 11);
          v67 = *(v2 + 12) - v66;
          v68 = &v64[-v67];
          memcpy(&v64[-v67], v66, v67);
          v69 = *(v2 + 11);
          *(v2 + 11) = v68;
          *(v2 + 12) = v64;
          v70 = *(v2 + 13);
          *(v2 + 13) = v65;
          __str.__r_.__value_.__r.__words[2] = v69;
          p_str = v70;
          __str.__r_.__value_.__r.__words[0] = v69;
          __str.__r_.__value_.__l.__size_ = v69;
          std::__split_buffer<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&__str);
          v71 = *(v2 + 5);
          v57 = *(v71 + 184);
          v58 = *(v71 + 192);
        }

        if (v57 != v58)
        {
          v87[0] = (*(**v57 + 88))();
          v72 = *(v2 + 5);
          if (*(v72 + 48) == 1)
          {
            v73 = *(v72 + 49);
          }

          else
          {
            v73 = 0;
          }

          LOBYTE(v86[0]) = v73 & 1;
          std::allocate_shared[abi:nn200100]<md::RouteWaypointLabelFeature,std::allocator<md::RouteWaypointLabelFeature>,VKRouteWaypointInfo * {__strong},BOOL,md::WaypointFeatureType,std::shared_ptr<md::LabelExternalPointFeature> const&,md::LabelManager *&,0>();
        }

        v74 = *(v2 + 7);
        v75 = *(v2 + 8);
        while (v74 != v75)
        {
          (*(**v74 + 664))(*v74);
          v74 += 2;
        }

        v3 = v79;
      }

      std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>,std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>>((this + 88), *(this + 12), *(v2 + 11), *(v2 + 12), (*(v2 + 12) - *(v2 + 11)) >> 4);
      std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>,std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>>((this + 88), *(this + 12), *(v2 + 7), *(v2 + 8), (*(v2 + 8) - *(v2 + 7)) >> 4);
      v76 = *(v2 + 1);
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = *(v2 + 2);
          v78 = *v77 == v2;
          v2 = v77;
        }

        while (!v78);
      }

      v2 = v77;
    }

    while (v77 != v3);
  }
}

void sub_1B323562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a35);

  std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>,std::__wrap_iter<std::shared_ptr<md::RouteWaypointLabelFeature>*>>(mdm::zone_mallocator *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  if (a5 > (v10 - v9) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v9 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v10 - v11;
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

    v15 = (a2 - v11) >> 4;
    v37 = (a1 + 24);
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(a1);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v25 = &v17[16 * v15];
    v36 = &v17[16 * v14];
    v26 = &v25[16 * a5];
    v27 = v25;
    do
    {
      v28 = a3[1];
      *v27 = *a3;
      v27[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v27 += 2;
      a3 += 2;
    }

    while (v27 != v26);
    memcpy(v26, a2, *(a1 + 1) - a2);
    v29 = *a1;
    v30 = v26 + *(a1 + 1) - a2;
    *(a1 + 1) = a2;
    v31 = a2 - v29;
    v32 = &v25[-(a2 - v29)];
    memcpy(v32, v29, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 1) = v30;
    v34 = *(a1 + 2);
    *(a1 + 2) = v36;
    v35.__shared_weak_owners_ = v33;
    v36 = v34;
    v35.__vftable = v33;
    v35.__shared_owners_ = v33;
    std::__split_buffer<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v35);
    return;
  }

  v18 = (v9 - a2) >> 4;
  if (v18 >= a5)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(a1, a2, v9, &a2[16 * a5]);
    v24 = &a3[2 * a5];
    v23 = a3;
    goto LABEL_20;
  }

  v19 = (a3 + v9 - a2);
  v20 = *(a1 + 1);
  if (v19 != a4)
  {
    v21 = (a3 + v9 - a2);
    v20 = *(a1 + 1);
    do
    {
      v22 = v21[1];
      *v20 = *v21;
      v20[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 2;
      v20 += 2;
    }

    while (v21 != a4);
  }

  *(a1 + 1) = v20;
  if (v18 >= 1)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(a1, a2, v9, &a2[16 * a5]);
    v23 = a3;
    v24 = v19;
LABEL_20:

    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *>(v23, v24, a2);
  }
}

void sub_1B3235A00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
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

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v12, v11);
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
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

uint64_t **std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKRouteInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VKRouteInfo * const {__strong}&>,std::tuple<>>(uint64_t **a1, unint64_t a2, id **a3)
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

    v12 = malloc_type_zone_malloc(*v9, 0x78uLL, 0x10E004037022DABuLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    *(v12 + 4) = **a3;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v13 = **a1;
    v14 = v12;
    if (v13)
    {
      *a1 = v13;
      v14 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v14);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

void std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1);
    v2 = *a1;
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v4, v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__shared_ptr_emplace<md::WaypointStore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::StandardLabelMapTile::~StandardLabelMapTile(md::StandardLabelMapTile *this)
{
  md::StandardLabelMapTile::~StandardLabelMapTile(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A461A8;
  v2 = *(this + 71);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelMapTile::~LabelMapTile(this);
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A461D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A461D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0,std::allocator<md::StandardLabelMapTile::loadElevationData(std::shared_ptr<md::ElevationTileData> const&)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A461D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void md::DaVinciAssetResourceDecoder::decode(void *a1@<X2>, void *a2@<X8>)
{
  v19[68] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v4 = (*(**a1 + 32))(*a1);
    v5 = (*(**a1 + 24))();
    v17 = 0;
    v15[0] = v4;
    v15[1] = v5;
    v15[2] = 0;
    v16 = 0;
    *__p = 0u;
    *v13 = 0u;
    v14 = 1065353216;
    memset(v10, 0, sizeof(v10));
    v11 = 1065353216;
    geo::codec::AssetDecoder::decodeAsset(&v9, v15, &v17);
    if (v9)
    {
      v6 = *(v9 + 3);
      if (v6 != *(v9 + 4))
      {
        v18 = *v6;
        geo::codec::MaterialSheet::MaterialSheet(v19, (v6 + 1));
        md::DaVinciMaterialResourceDecoder::translateFromCodec(&v8, v19);
      }

      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
    std::unique_ptr<geo::codec::Asset>::~unique_ptr[abi:nn200100](&v9);
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v13[0]);
    v7 = __p[0];
    __p[0] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1B323618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, geo::codec::Asset *a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, void *a29)
{
  std::unique_ptr<geo::codec::Asset>::~unique_ptr[abi:nn200100](&a18);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a29);
  v30 = __p;
  __p = 0;
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

geo::codec::MaterialSheet *geo::codec::MaterialSheet::MaterialSheet(geo::codec::MaterialSheet *this, const geo::codec::MaterialSheet *a2)
{
  v4 = *a2;
  *(this + 1) = 0;
  *this = v4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (v6 != v5)
  {
    if (0x823EE08FB823EE09 * ((v6 - v5) >> 3) < 0x8FB823EE08FB83)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  geo::codec::MaterialSheet::Material::Material((this + 56), (a2 + 56));
  *(this + 66) = 0;
  *(this + 32) = 0u;
  *(this + 536) = *(a2 + 536);
  v9 = *(a2 + 64);
  v10 = *(a2 + 65);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= 0x666666666666667)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = malloc_type_malloc(v10 - v9, 0x1010040FC026F3AuLL);
    *(this + 64) = v12;
    *(this + 65) = v12;
    *(this + 66) = &v12[v11];
    do
    {
      v13 = std::vector<unsigned char,geo::allocator_adapter<unsigned char,geo::mallocator>>::vector[abi:nn200100](v12, v9);
      *(v13 + 32) = *(v9 + 32);
      v9 += 40;
      v12 = (v13 + 40);
    }

    while (v9 != v10);
    *(this + 65) = v12;
  }

  return this;
}

void sub_1B3236460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 464);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v2 + 376);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v2 + 336);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<geo::codec::MaterialSheet::Material>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

geo::codec::Asset **std::unique_ptr<geo::codec::Asset>::~unique_ptr[abi:nn200100](geo::codec::Asset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    geo::codec::Asset::~Asset(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void geo::codec::Asset::~Asset(geo::codec::Asset *this)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 31));
  v2 = *(this + 26);
  if (v2)
  {
    v3 = *(this + 27);
    v4 = *(this + 26);
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        std::__destroy_at[abi:nn200100]<geo::codec::Mesh,0>(v3);
      }

      while (v3 != v2);
      v4 = *(this + 26);
    }

    *(this + 27) = v2;
    free(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = v5[3];
      if (v7)
      {
        v5[4] = v7;
        free(v7);
      }

      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  v8 = *(this + 19);
  *(this + 19) = 0;
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    v10 = *(this + 16);
    v11 = *(this + 15);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = *(this + 15);
    }

    *(this + 16) = v9;
    free(v11);
  }

  v13 = *(this + 11);
  if (v13)
  {
    *(this + 12) = v13;
    free(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    free(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    v16 = *(this + 4);
    v17 = *(this + 3);
    if (v16 != v15)
    {
      do
      {
        v18 = v16 - 552;
        geo::codec::MaterialSheet::~MaterialSheet((v16 - 544));
        v16 = v18;
      }

      while (v18 != v15);
      v17 = *(this + 3);
    }

    *(this + 4) = v15;
    free(v17);
  }

  v19 = this;
  std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&v19);
}

void std::__destroy_at[abi:nn200100]<geo::codec::Mesh,0>(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    free(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    free(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    free(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;

    free(v5);
  }
}

geo::codec::MaterialSheet::Material *geo::codec::MaterialSheet::Material::Material(geo::codec::MaterialSheet::Material *this, const geo::codec::MaterialSheet::Material *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = *(a2 + 8);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this, *(a2 + 1));
  v4 = *(a2 + 2);
  if (!v4)
  {
    goto LABEL_20;
  }

  do
  {
    v5 = *(v4 + 16);
    v6 = *(this + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(v4 + 16);
      if (*&v6 <= v5)
      {
        v8 = v5 % *(this + 1);
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*this + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 16) != v5)
    {
      goto LABEL_17;
    }

    v4 = *v4;
  }

  while (v4);
LABEL_20:
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = *(a2 + 18);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 40, *(a2 + 6));
  v12 = *(a2 + 7);
  if (!v12)
  {
    goto LABEL_39;
  }

  while (2)
  {
    v13 = *(v12 + 16);
    v14 = *(this + 48);
    if (!*&v14)
    {
      goto LABEL_37;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(v12 + 16);
      if (*&v14 <= v13)
      {
        v16 = v13 % *(this + 6);
      }
    }

    else
    {
      v16 = (v14.i32[0] - 1) & v13;
    }

    v17 = *(*(this + 5) + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_37:
      operator new();
    }

    while (2)
    {
      v19 = v18[1];
      if (v19 != v13)
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (*(v18 + 16) != v13)
      {
LABEL_36:
        v18 = *v18;
        if (!v18)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    v12 = *v12;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_39:
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = *(a2 + 28);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 80, *(a2 + 11));
  v20 = *(a2 + 12);
  if (v20)
  {
LABEL_40:
    v21 = *(v20 + 16);
    v22 = *(this + 88);
    if (!*&v22)
    {
      goto LABEL_56;
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = *(v20 + 16);
      if (*&v22 <= v21)
      {
        v24 = v21 % *(this + 11);
      }
    }

    else
    {
      v24 = (v22.i32[0] - 1) & v21;
    }

    v25 = *(*(this + 10) + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_56:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v21)
      {
        if (*(v26 + 16) == v21)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v22)
          {
            v27 %= *&v22;
          }
        }

        else
        {
          v27 &= *&v22 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_56;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_56;
      }
    }
  }

  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = *(a2 + 38);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 120, *(a2 + 16));
  v28 = *(a2 + 17);
  if (!v28)
  {
    goto LABEL_77;
  }

  while (2)
  {
    v29 = *(v28 + 16);
    v30 = *(this + 128);
    if (!*&v30)
    {
      goto LABEL_75;
    }

    v31 = vcnt_s8(v30);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > 1uLL)
    {
      v32 = *(v28 + 16);
      if (*&v30 <= v29)
      {
        v32 = v29 % *(this + 16);
      }
    }

    else
    {
      v32 = (v30.i32[0] - 1) & v29;
    }

    v33 = *(*(this + 15) + 8 * v32);
    if (!v33 || (v34 = *v33) == 0)
    {
LABEL_75:
      operator new();
    }

    while (2)
    {
      v35 = v34[1];
      if (v35 != v29)
      {
        if (v31.u32[0] > 1uLL)
        {
          if (v35 >= *&v30)
          {
            v35 %= *&v30;
          }
        }

        else
        {
          v35 &= *&v30 - 1;
        }

        if (v35 != v32)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      if (*(v34 + 16) != v29)
      {
LABEL_74:
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_75;
        }

        continue;
      }

      break;
    }

    v28 = *v28;
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_77:
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = *(a2 + 48);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 160, *(a2 + 21));
  v36 = *(a2 + 22);
  if (v36)
  {
LABEL_78:
    v37 = *(v36 + 16);
    v38 = *(this + 168);
    if (!*&v38)
    {
      goto LABEL_94;
    }

    v39 = vcnt_s8(v38);
    v39.i16[0] = vaddlv_u8(v39);
    if (v39.u32[0] > 1uLL)
    {
      v40 = *(v36 + 16);
      if (*&v38 <= v37)
      {
        v40 = v37 % *(this + 21);
      }
    }

    else
    {
      v40 = (v38.i32[0] - 1) & v37;
    }

    v41 = *(*(this + 20) + 8 * v40);
    if (!v41 || (v42 = *v41) == 0)
    {
LABEL_94:
      operator new();
    }

    while (1)
    {
      v43 = v42[1];
      if (v43 == v37)
      {
        if (*(v42 + 16) == v37)
        {
          v36 = *v36;
          if (!v36)
          {
            break;
          }

          goto LABEL_78;
        }
      }

      else
      {
        if (v39.u32[0] > 1uLL)
        {
          if (v43 >= *&v38)
          {
            v43 %= *&v38;
          }
        }

        else
        {
          v43 &= *&v38 - 1;
        }

        if (v43 != v40)
        {
          goto LABEL_94;
        }
      }

      v42 = *v42;
      if (!v42)
      {
        goto LABEL_94;
      }
    }
  }

  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = *(a2 + 58);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 200, *(a2 + 26));
  v44 = *(a2 + 27);
  if (!v44)
  {
    goto LABEL_115;
  }

  while (2)
  {
    v45 = *(v44 + 16);
    v46 = *(this + 208);
    if (!*&v46)
    {
      goto LABEL_113;
    }

    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v47.u32[0] > 1uLL)
    {
      v48 = *(v44 + 16);
      if (*&v46 <= v45)
      {
        v48 = v45 % *(this + 26);
      }
    }

    else
    {
      v48 = (v46.i32[0] - 1) & v45;
    }

    v49 = *(*(this + 25) + 8 * v48);
    if (!v49 || (v50 = *v49) == 0)
    {
LABEL_113:
      operator new();
    }

    while (2)
    {
      v51 = v50[1];
      if (v51 != v45)
      {
        if (v47.u32[0] > 1uLL)
        {
          if (v51 >= *&v46)
          {
            v51 %= *&v46;
          }
        }

        else
        {
          v51 &= *&v46 - 1;
        }

        if (v51 != v48)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if (*(v50 + 16) != v45)
      {
LABEL_112:
        v50 = *v50;
        if (!v50)
        {
          goto LABEL_113;
        }

        continue;
      }

      break;
    }

    v44 = *v44;
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_115:
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = *(a2 + 68);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 240, *(a2 + 31));
  v52 = *(a2 + 32);
  if (v52)
  {
LABEL_116:
    v53 = *(v52 + 16);
    v54 = *(this + 248);
    if (!*&v54)
    {
      goto LABEL_132;
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = *(v52 + 16);
      if (*&v54 <= v53)
      {
        v56 = v53 % *(this + 31);
      }
    }

    else
    {
      v56 = (v54.i32[0] - 1) & v53;
    }

    v57 = *(*(this + 30) + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_132:
      operator new();
    }

    while (1)
    {
      v59 = v58[1];
      if (v59 == v53)
      {
        if (*(v58 + 16) == v53)
        {
          v52 = *v52;
          if (!v52)
          {
            break;
          }

          goto LABEL_116;
        }
      }

      else
      {
        if (v55.u32[0] > 1uLL)
        {
          if (v59 >= *&v54)
          {
            v59 %= *&v54;
          }
        }

        else
        {
          v59 &= *&v54 - 1;
        }

        if (v59 != v56)
        {
          goto LABEL_132;
        }
      }

      v58 = *v58;
      if (!v58)
      {
        goto LABEL_132;
      }
    }
  }

  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = *(a2 + 78);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 280, *(a2 + 36));
  v60 = *(a2 + 37);
  if (!v60)
  {
    goto LABEL_153;
  }

  while (2)
  {
    v61 = *(v60 + 16);
    v62 = *(this + 288);
    if (!*&v62)
    {
      goto LABEL_151;
    }

    v63 = vcnt_s8(v62);
    v63.i16[0] = vaddlv_u8(v63);
    if (v63.u32[0] > 1uLL)
    {
      v64 = *(v60 + 16);
      if (*&v62 <= v61)
      {
        v64 = v61 % *(this + 36);
      }
    }

    else
    {
      v64 = (v62.i32[0] - 1) & v61;
    }

    v65 = *(*(this + 35) + 8 * v64);
    if (!v65 || (v66 = *v65) == 0)
    {
LABEL_151:
      operator new();
    }

    while (2)
    {
      v67 = v66[1];
      if (v67 != v61)
      {
        if (v63.u32[0] > 1uLL)
        {
          if (v67 >= *&v62)
          {
            v67 %= *&v62;
          }
        }

        else
        {
          v67 &= *&v62 - 1;
        }

        if (v67 != v64)
        {
          goto LABEL_151;
        }

        goto LABEL_150;
      }

      if (*(v66 + 16) != v61)
      {
LABEL_150:
        v66 = *v66;
        if (!v66)
        {
          goto LABEL_151;
        }

        continue;
      }

      break;
    }

    v60 = *v60;
    if (v60)
    {
      continue;
    }

    break;
  }

LABEL_153:
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = *(a2 + 88);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 320, *(a2 + 41));
  v68 = *(a2 + 42);
  if (v68)
  {
LABEL_154:
    v69 = *(v68 + 16);
    v70 = *(this + 328);
    if (!*&v70)
    {
      goto LABEL_170;
    }

    v71 = vcnt_s8(v70);
    v71.i16[0] = vaddlv_u8(v71);
    if (v71.u32[0] > 1uLL)
    {
      v72 = *(v68 + 16);
      if (*&v70 <= v69)
      {
        v72 = v69 % *(this + 41);
      }
    }

    else
    {
      v72 = (v70.i32[0] - 1) & v69;
    }

    v73 = *(*(this + 40) + 8 * v72);
    if (!v73 || (v74 = *v73) == 0)
    {
LABEL_170:
      operator new();
    }

    while (1)
    {
      v75 = v74[1];
      if (v75 == v69)
      {
        if (*(v74 + 16) == v69)
        {
          v68 = *v68;
          if (!v68)
          {
            break;
          }

          goto LABEL_154;
        }
      }

      else
      {
        if (v71.u32[0] > 1uLL)
        {
          if (v75 >= *&v70)
          {
            v75 %= *&v70;
          }
        }

        else
        {
          v75 &= *&v70 - 1;
        }

        if (v75 != v72)
        {
          goto LABEL_170;
        }
      }

      v74 = *v74;
      if (!v74)
      {
        goto LABEL_170;
      }
    }
  }

  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = *(a2 + 98);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 360, *(a2 + 46));
  v76 = *(a2 + 47);
  if (!v76)
  {
    goto LABEL_191;
  }

  while (2)
  {
    v77 = *(v76 + 16);
    v78 = *(this + 368);
    if (!*&v78)
    {
      goto LABEL_189;
    }

    v79 = vcnt_s8(v78);
    v79.i16[0] = vaddlv_u8(v79);
    if (v79.u32[0] > 1uLL)
    {
      v80 = *(v76 + 16);
      if (*&v78 <= v77)
      {
        v80 = v77 % *(this + 46);
      }
    }

    else
    {
      v80 = (v78.i32[0] - 1) & v77;
    }

    v81 = *(*(this + 45) + 8 * v80);
    if (!v81 || (v82 = *v81) == 0)
    {
LABEL_189:
      operator new();
    }

    while (2)
    {
      v83 = v82[1];
      if (v83 != v77)
      {
        if (v79.u32[0] > 1uLL)
        {
          if (v83 >= *&v78)
          {
            v83 %= *&v78;
          }
        }

        else
        {
          v83 &= *&v78 - 1;
        }

        if (v83 != v80)
        {
          goto LABEL_189;
        }

        goto LABEL_188;
      }

      if (*(v82 + 16) != v77)
      {
LABEL_188:
        v82 = *v82;
        if (!v82)
        {
          goto LABEL_189;
        }

        continue;
      }

      break;
    }

    v76 = *v76;
    if (v76)
    {
      continue;
    }

    break;
  }

LABEL_191:
  *(this + 50) = *(a2 + 50);
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = *(a2 + 110);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(this + 408, *(a2 + 52));
  v84 = *(a2 + 53);
  if (v84)
  {
LABEL_192:
    v85 = *(v84 + 16);
    v86 = *(this + 416);
    if (!*&v86)
    {
      goto LABEL_208;
    }

    v87 = vcnt_s8(v86);
    v87.i16[0] = vaddlv_u8(v87);
    if (v87.u32[0] > 1uLL)
    {
      v88 = *(v84 + 16);
      if (*&v86 <= v85)
      {
        v88 = v85 % *(this + 52);
      }
    }

    else
    {
      v88 = (v86.i32[0] - 1) & v85;
    }

    v89 = *(*(this + 51) + 8 * v88);
    if (!v89 || (v90 = *v89) == 0)
    {
LABEL_208:
      operator new();
    }

    while (1)
    {
      v91 = v90[1];
      if (v91 == v85)
      {
        if (*(v90 + 16) == v85)
        {
          v84 = *v84;
          if (!v84)
          {
            break;
          }

          goto LABEL_192;
        }
      }

      else
      {
        if (v87.u32[0] > 1uLL)
        {
          if (v91 >= *&v86)
          {
            v91 %= *&v86;
          }
        }

        else
        {
          v91 &= *&v86 - 1;
        }

        if (v91 != v88)
        {
          goto LABEL_208;
        }
      }

      v90 = *v90;
      if (!v90)
      {
        goto LABEL_208;
      }
    }
  }

  *(this + 224) = *(a2 + 224);
  return this;
}

void sub_1B3238260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(a19 + 320);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(a15);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::DaVinciAssetResource>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(a1 + 184);
  std::unique_ptr<geo::codec::Asset>::~unique_ptr[abi:nn200100]((a1 + 176));
  v2 = *(a1 + 32);
  if (v2 != *(a1 + 48))
  {

    free(v2);
  }
}

void std::__shared_ptr_emplace<md::DaVinciAssetResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciAssetOcclusionMeshResourceDecoder::decode(void *a1@<X2>, void *a2@<X8>)
{
  if (*a1)
  {
    v4 = (*(**a1 + 32))(*a1);
    v5 = (*(**a1 + 24))();
    v10 = 0;
    v8[0] = v4;
    v8[1] = v5;
    v8[2] = 0;
    v9 = 0;
    v6 = 0uLL;
    v7 = 0;
    if (geo::codec::AssetDecoder::decodeAssetOcclusionMeshes(v8, &v10, &v6))
    {
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
    v11 = &v6;
    std::vector<geo::codec::Mesh>::__destroy_vector::operator()[abi:nn200100](&v11);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1B3238784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 40) = &a9;
  std::vector<geo::codec::Mesh>::__destroy_vector::operator()[abi:nn200100]((v9 - 40));
  _Unwind_Resume(a1);
}

void std::vector<geo::codec::Mesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 152;
        std::__destroy_at[abi:nn200100]<geo::codec::Mesh,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::DaVinciAssetOcclusionMeshResource>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 168);
  std::vector<geo::codec::Mesh>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 32);
  if (v2 != *(a1 + 48))
  {

    free(v2);
  }
}

void std::__shared_ptr_emplace<md::DaVinciAssetOcclusionMeshResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A462A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void generateRotationMatrixMeshPositioningMode(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a7 > 4)
  {
    if (a7 > 6)
    {
      if (a7 != 7)
      {
        if (a7 == 50)
        {
          v40 = 0;
          v41 = *(a2 + 8);
          if (!*(a2 + 12))
          {
            v41 = 0.0;
          }

          *&v154 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(a2 + 12)), 0x1FuLL)), *a2, 1065353216);
          *(&v154 + 2) = v41;
          do
          {
            *(&v147 + v40) = *(&v154 + v40);
            ++v40;
          }

          while (v40 != 3);
          if (*(a3 + 8))
          {
            v42 = 0.0;
            v43 = 1.0;
            v44 = 0.0;
          }

          else
          {
            v44 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
            v42 = v132;
            v43 = v133;
          }

          for (i = 0; i != 24; i += 8)
          {
            *(&v154 + i) = *(a3 + 136 + i) - *(a4 + i);
          }

          *&v149 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
          *(&v149 + 1) = v135;
          *&v150 = v136;
          v137 = -(*(&v147 + 1) * v43 - v148 * v42);
          v138 = -(v148 * v44 - *&v147 * v43);
          v139 = -(*&v147 * v42 - *(&v147 + 1) * v44);
          v167 = v137;
          v168 = v138;
          v169 = v139;
          v140 = -(v138 * v148 - v139 * *(&v147 + 1));
          v141 = -(v139 * *&v147 - v137 * v148);
          v142 = -(v137 * *(&v147 + 1) - v138 * *&v147);
          v162 = v140;
          v163 = v141;
          v164 = v142;
          if (a6)
          {
            v143 = 0;
            v144 = 0.0;
            do
            {
              v144 = v144 + *(&v162 + v143) * *(&v149 + v143);
              v143 += 8;
            }

            while (v143 != 24);
            if (v144 < 0.0)
            {
              for (j = 0; j != 24; j += 8)
              {
                *(&v154 + j) = -*(&v162 + j);
              }

              v146 = 0;
              v141 = *(&v154 + 1);
              v140 = *&v154;
              v142 = v155;
              do
              {
                *(&v154 + v146) = -*(&v167 + v146);
                v146 += 8;
              }

              while (v146 != 24);
              v138 = *(&v154 + 1);
              v137 = *&v154;
              v139 = v155;
            }
          }

          *a1 = v147;
          a1[2] = v148;
          a1[3] = v137;
          a1[4] = v138;
          a1[5] = v139;
          a1[6] = v140;
          a1[7] = v141;
          a1[8] = v142;
          return;
        }

        goto LABEL_67;
      }

      v58 = 0;
      v59 = *(a3 + 424);
      do
      {
        *(&v154 + v58) = *(a3 + 136 + v58) - *(a4 + v58);
        v58 += 8;
      }

      while (v58 != 24);
      v167 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
      v168 = v60;
      v169 = v61;
      v62 = 0;
      if (v59 >= 45.0)
      {
        do
        {
          *(&v154 + v62) = -*(a3 + 160 + v62);
          v62 += 8;
        }

        while (v62 != 24);
      }

      else
      {
        do
        {
          *(&v154 + v62) = -*(a3 + 208 + v62);
          v62 += 8;
        }

        while (v62 != 24);
      }

      v74 = v154;
      v75 = v155;
      v76 = 0.0;
      v77 = 1.0;
      v78 = 0.0;
      v79 = 0.0;
      if ((*(a3 + 8) & 1) == 0)
      {
        v79 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
        v78 = v80;
        v77 = v81;
      }

      *&v154 = -(v77 * *(&v74 + 1) - v78 * v75);
      *(&v154 + 1) = -(v79 * v75 - v77 * *&v74);
      v155 = -(v78 * *&v74 - v79 * *(&v74 + 1));
      v82 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
      v85 = 0;
      v162 = -(v84 * v78 - v83 * v77);
      v163 = -(v82 * v77 - v84 * v79);
      v164 = -(v83 * v79 - v82 * v78);
      do
      {
        v76 = v76 + *(&v167 + v85) * *(&v162 + v85);
        v85 += 8;
      }

      while (v85 != 24);
      if (v76 <= 0.5)
      {
        goto LABEL_67;
      }

      *a1 = v82;
      a1[1] = v83;
      a1[2] = v84;
      a1[3] = v79;
      a1[4] = v78;
      a1[5] = v77;
      a1[6] = -(v84 * v78 - v83 * v77);
      a1[7] = -(v82 * v77 - v84 * v79);
      a1[8] = -(v83 * v79 - v82 * v78);
      if (v76 >= 0.642780006)
      {
        return;
      }

      gm::quaternionFromRotationMatrix<double>(&v154, a1);
      gm::quaternionFromRotationMatrix<double>(&v149, (a3 + 992));
      v33 = v76 * -7.00378175 + 4.50189088;
    }

    else
    {
      if (a7 == 5)
      {
        v46 = 0;
        v47 = &v163;
        v48 = &v164;
        v49 = *(a2 + 8);
        if (!*(a2 + 12))
        {
          v49 = 0.0;
        }

        *&v154 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(a2 + 12)), 0x1FuLL)), *a2, 1065353216);
        *(&v154 + 2) = v49;
        do
        {
          *(&v149 + v46) = *(&v154 + v46);
          ++v46;
        }

        while (v46 != 3);
        for (k = 0; k != 24; k += 8)
        {
          *(&v154 + k) = *(a3 + 136 + k) - *(a4 + k);
        }

        v167 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
        v168 = v51;
        v169 = v52;
        if (*(a3 + 8))
        {
          v53 = 1.0;
          v54 = 0.0;
          v55 = 0.0;
        }

        else
        {
          v54 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
        }

        if (a5 == 6)
        {
          v63 = -(*(&v149 + 1) * v53 - *&v150 * v55);
          *(&v165 + 1) = -(*&v150 * v54 - *&v149 * v53);
          v166 = -(*&v149 * v55 - *(&v149 + 1) * v54);
          v64 = -(v166 * v55 - *(&v165 + 1) * v53);
          v65 = -(v63 * v53 - v166 * v54);
          v66 = -(*(&v165 + 1) * v54 - v63 * v55);
          v67 = v66;
          v68 = v65;
        }

        else
        {
          v64 = -(*&v150 * v55 - *(&v149 + 1) * v53);
          v68 = -(*&v149 * v53 - *&v150 * v54);
          v67 = -(*(&v149 + 1) * v54 - *&v149 * v55);
          v163 = v68;
          v164 = v67;
          v63 = -(v68 * v53 - v67 * v55);
          v65 = -(v67 * v54 - v64 * v53);
          v66 = -(v64 * v55 - v68 * v54);
          v47 = &v165 + 1;
          v48 = &v166;
        }

        *&v165 = v63;
        v162 = v64;
        *v47 = v65;
        *v48 = v66;
        if (a6)
        {
          v108 = 0;
          v109 = 0.0;
          do
          {
            v109 = v109 + *(&v162 + v108) * *(&v167 + v108);
            v108 += 8;
          }

          while (v108 != 24);
          if (v109 < 0.0)
          {
            for (m = 0; m != 24; m += 8)
            {
              *(&v154 + m) = -*(&v162 + m);
            }

            v111 = 0;
            v68 = *(&v154 + 1);
            v64 = *&v154;
            v67 = v155;
            do
            {
              *(&v154 + v111) = -*(&v165 + v111);
              v111 += 8;
            }

            while (v111 != 24);
            v165 = v154;
            v166 = v155;
          }
        }

        *a1 = v165;
        a1[2] = v166;
        a1[3] = v54;
        a1[4] = v55;
        a1[5] = v53;
        a1[6] = v64;
        a1[7] = v68;
        a1[8] = v67;
        return;
      }

      v20 = 0;
      v21 = *(a2 + 8);
      if (!*(a2 + 12))
      {
        v21 = 0.0;
      }

      *&v154 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(a2 + 12)), 0x1FuLL)), *a2, 1065353216);
      *(&v154 + 2) = v21;
      do
      {
        *(&v167 + v20) = *(&v154 + v20);
        ++v20;
      }

      while (v20 != 3);
      for (n = 0; n != 24; n += 8)
      {
        *(&v154 + n) = *(a3 + 136 + n) - *(a4 + n);
      }

      v162 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
      v163 = v23;
      v164 = v24;
      v25 = 0.0;
      v26 = 1.0;
      v27 = 0.0;
      v28 = 0.0;
      if ((*(a3 + 8) & 1) == 0)
      {
        v28 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
      }

      for (ii = 0; ii != 24; ii += 8)
      {
        v25 = v25 + *(&v162 + ii) * *(&v167 + ii);
      }

      if (v25 <= 0.5)
      {
        goto LABEL_67;
      }

      v30 = -(v168 * v26 - v169 * v27);
      v31 = -(v169 * v28 - v167 * v26);
      v32 = -(v167 * v27 - v168 * v28);
      *a1 = v30;
      a1[1] = v31;
      a1[2] = v32;
      a1[3] = v28;
      a1[4] = v27;
      a1[5] = v26;
      a1[6] = -(v32 * v27 - v31 * v26);
      a1[7] = -(v30 * v26 - v32 * v28);
      a1[8] = -(v31 * v28 - v30 * v27);
      if (v25 >= 0.642780006)
      {
        return;
      }

      gm::quaternionFromRotationMatrix<double>(&v154, a1);
      gm::quaternionFromRotationMatrix<double>(&v149, (a3 + 992));
      v33 = v25 * -7.00378175 + 4.50189088;
    }

    v86 = v33;
    gm::Quaternion<double>::slerp(&v154, &v149, v86);
    v87 = *&v154;
    v88 = v155;
    v89 = (*(&v154 + 1) + *(&v154 + 1)) * *(&v154 + 1);
    v90 = (v88 + v88) * v88;
    v91 = 1.0 - (v89 + v90);
    v92 = v87 + v87;
    v93 = (v87 + v87) * *(&v154 + 1);
    v94 = (v88 + v88) * v156;
    v95 = v93 - v94;
    v96 = v155 * (v87 + v87);
    v97 = v156 * (*(&v154 + 1) + *(&v154 + 1)) + v96;
    v98 = v94 + v93;
    v99 = 1.0 - (v87 + v87) * v87;
    v100 = v99 - v90;
    v101 = (*(&v154 + 1) + *(&v154 + 1)) * v155 - v156 * v92;
    v102 = v96 - v156 * (*(&v154 + 1) + *(&v154 + 1));
    v103 = v156 * v92 + (*(&v154 + 1) + *(&v154 + 1)) * v155;
    *a1 = v91;
    a1[1] = v98;
    a1[2] = v102;
    a1[3] = v95;
    a1[4] = v100;
    a1[5] = v103;
    v104 = v99 - v89;
    a1[6] = v97;
LABEL_91:
    a1[7] = v101;
    a1[8] = v104;
    return;
  }

  if (a7 <= 2)
  {
    if (a7 == 2)
    {
      v10 = *(a3 + 424);
      v11 = 160;
      if (v10 < 45.0)
      {
        v11 = 208;
      }

      v12 = (a3 + v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      if (*(a3 + 8))
      {
        v16 = 1.0;
        v17 = 0.0;
        v18 = 0.0;
      }

      else
      {
        v17 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
        v18 = v119;
        v16 = v120;
      }

      *&v154 = -(v18 * v15 - v16 * v14);
      *(&v154 + 1) = -(v16 * v13 - v17 * v15);
      v155 = -(v17 * v14 - v18 * v13);
      v121 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
      *a1 = v121;
      a1[1] = v122;
      a1[2] = v123;
      a1[3] = -(v122 * v16 - v123 * v18);
      a1[4] = -(v123 * v17 - v121 * v16);
      a1[5] = -(v121 * v18 - v122 * v17);
      a1[6] = v17;
      a1[7] = v18;
      a1[8] = v16;
      if (*(a3 + 1192) == 1)
      {
        v124 = *(a3 + 1188);
        if (v10 > v124)
        {
          v118 = v10 - v124;
          goto LABEL_88;
        }
      }

      return;
    }

LABEL_67:
    v105 = *(a3 + 1008);
    v106 = *(a3 + 1040);
    *(a1 + 2) = *(a3 + 1024);
    *(a1 + 3) = v106;
    a1[8] = *(a3 + 1056);
    v107 = *(a3 + 992);
LABEL_68:
    *a1 = v107;
    *(a1 + 1) = v105;
    return;
  }

  if (a7 != 3)
  {
    for (jj = 0; jj != 24; jj += 8)
    {
      *(&v154 + jj) = *(a3 + 136 + jj) - *(a4 + jj);
    }

    v35 = v154;
    v36 = v155;
    if (*(a3 + 8))
    {
      v37 = 1.0;
      v38 = 0.0;
      v39 = 0.0;
    }

    else
    {
      v38 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
      v39 = v127;
      v37 = v128;
    }

    *&v154 = -(v37 * *(&v35 + 1) - v39 * v36);
    *(&v154 + 1) = -(v38 * v36 - v37 * *&v35);
    v155 = -(v39 * *&v35 - v38 * *(&v35 + 1));
    v129 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
    v101 = -(v129 * v37 - v130 * v38);
    *a1 = v129;
    a1[1] = v131;
    a1[2] = v130;
    a1[3] = v38;
    v104 = -(v131 * v38 - v129 * v39);
    a1[4] = v39;
    a1[5] = v37;
    a1[6] = -(v130 * v39 - v131 * v37);
    goto LABEL_91;
  }

  v56 = *(a3 + 424);
  v57 = 0;
  if (v56 >= 45.0)
  {
    do
    {
      *(&v154 + v57) = -*(a3 + 160 + v57);
      v57 += 8;
    }

    while (v57 != 24);
  }

  else
  {
    do
    {
      *(&v154 + v57) = -*(a3 + 208 + v57);
      v57 += 8;
    }

    while (v57 != 24);
  }

  v69 = v154;
  v70 = v155;
  if (*(a3 + 8))
  {
    v71 = 1.0;
    v72 = 0.0;
    v73 = 0.0;
  }

  else
  {
    v72 = gm::Matrix<double,3,1>::normalized<int,void>(a4);
    v73 = v112;
    v71 = v113;
  }

  *&v154 = -(v71 * *(&v69 + 1) - v73 * v70);
  *(&v154 + 1) = -(v72 * v70 - v71 * *&v69);
  v155 = -(v73 * *&v69 - v72 * *(&v69 + 1));
  v114 = gm::Matrix<double,3,1>::normalized<int,void>(&v154);
  *a1 = v114;
  a1[1] = v115;
  a1[2] = v116;
  a1[3] = v72;
  a1[4] = v73;
  a1[5] = v71;
  a1[6] = -(v116 * v73 - v115 * v71);
  a1[7] = -(v114 * v71 - v116 * v72);
  a1[8] = -(v115 * v72 - v114 * v73);
  if (*(a3 + 1192) == 1)
  {
    v117 = *(a3 + 1188);
    if ((90.0 - v56) > v117)
    {
      v118 = v117 - (90.0 - v56);
LABEL_88:
      v125 = __sincosf_stret(v118 * 0.017453);
      v154 = 0x3FF0000000000000uLL;
      v155 = 0.0;
      v156 = 0.0;
      cosval = v125.__cosval;
      sinval = v125.__sinval;
      v159 = 0;
      v160 = -v125.__sinval;
      v161 = v125.__cosval;
      gm::operator*<double,3,3,3>(&v149, a1, &v154);
      v126 = v152;
      *(a1 + 2) = v151;
      *(a1 + 3) = v126;
      *(a1 + 8) = v153;
      v105 = v150;
      v107 = v149;
      goto LABEL_68;
    }
  }
}

uint64_t gm::operator*<double,3,3,3>(uint64_t result, double *a2, uint64_t a3)
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

      while (v6 != 24);
      *(result + 8 * (3 * v4++ + i)) = v7;
      v5 += 24;
    }

    while (v4 != 3);
    ++a2;
  }

  return result;
}

void md::LabelPart::generateModelMatrixForMeshPositioningMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, double a8, double a9)
{
  generateRotationMatrixMeshPositioningMode(v47, a2, a3, a4, a5, a6, a7);
  v14 = 0;
  v15 = *(a3 + 320);
  v38[2] = v47[2];
  v38[3] = v47[3];
  v39 = v48;
  v16 = v40;
  v17 = v38;
  v38[0] = v47[0];
  v38[1] = v47[1];
  do
  {
    v18 = 0;
    v19 = v16;
    do
    {
      *v19 = *(v17 + v18);
      v19 += 4;
      v18 += 24;
    }

    while (v18 != 72);
    ++v14;
    v16 += 8;
    v17 = (v17 + 8);
  }

  while (v14 != 3);
  v20 = 0;
  v44 = *a4;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v45 = *(a4 + 16);
  v46 = 0x3FF0000000000000;
  v33 = 0;
  v36 = 0u;
  v35 = 0u;
  v32 = 0u;
  v30 = 0u;
  v29 = 0u;
  v37 = 0x3FF0000000000000;
  v28 = a9 * a8 * v15;
  v31 = *&v28;
  v34 = v28;
  v21 = v40;
  do
  {
    v22 = 0;
    v23 = &v28;
    do
    {
      v24 = 0;
      v25 = 0.0;
      v26 = v21;
      do
      {
        v27 = *v26;
        v26 += 4;
        v25 = v25 + v23[v24++] * v27;
      }

      while (v24 != 4);
      *(a1 + 8 * (4 * v22++ + v20)) = v25;
      v23 += 4;
    }

    while (v22 != 4);
    ++v20;
    ++v21;
  }

  while (v20 != 4);
}

void md::FlyoverCommon::encodeFlyoverKey(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  v8 = ((v7 & 0x100000000uLL) >> 1) | a2[32];
  v28 = vrev64_s32(*(a2 + 4));
  v9 = *a2;
  v29 = a2[1];
  v30 = v9;
  if ((v7 & 0x100000000) == 0)
  {
    LODWORD(v7) = 0;
  }

  v10 = *(a2 + 11);
  v31 = v7;
  v32 = v10;
  v33 = v8;
  gdc::GenericKey::GenericKey(&v24, &v28, 7);
  if ((a4 & 0x100000000) != 0)
  {
    v20[0] = v23;
    v20[1] = v23;
    v21 = v23;
    v22 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(v20, v24, v25);
    v23[4] = v27;
    gdc::LayerDataRequestKey::LayerDataRequestKey(a1, a3, 0x4Bu, v20, a4);
    v11 = v20[0];
    v12 = v21;
  }

  else
  {
    v13[0] = v16;
    v13[1] = v16;
    v14 = v16;
    v15 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(v13, v24, v25);
    v16[4] = v27;
    gdc::LayerDataKey::LayerDataKey(&v17, 0x4Bu, v13);
    gdc::LayerDataRequestKey::LayerDataRequestKey(a1, a3, &v17);
    if (v18 != v19)
    {
      free(v18);
    }

    v11 = v13[0];
    v12 = v14;
  }

  if (v11 != v12)
  {
    free(v11);
  }

  if (v24 != v26)
  {
    free(v24);
  }
}

void sub_1B32397F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3 != *(v1 - 128))
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::FlyoverCommon::decodeFlyoverKey(md::FlyoverCommon *this, int32x2_t **a2)
{
  gdc::LayerDataRequestKey::keyData(v13, a2);
  v4 = v13[0];
  Int32 = gdc::ResourceKey::getInt32(v13[0], 6u);
  gdc::Tiled::tileFromLayerDataKey(v9, a2[2]);
  if (Int32 < 0)
  {
    v7 = gdc::ResourceKey::getInt32(v4, 4u);
    v6 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = gdc::ResourceKey::getInt32(v4, 5u);
  *(this + 4) = v10;
  *this = v9[0];
  *(this + 2) = v11;
  *(this + 24) = v12;
  *(this + 32) = Int32;
  *(this + 36) = v6 | v7;
  *(this + 11) = v8;
  if (v4 != v13[2])
  {
    free(v4);
  }
}

void md::FlyoverCommon::computeGeocentricBoundsFromOctile(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v7 = *(a1 + 4);
  if (*(a1 + 1))
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
    if (!(v7 | v8))
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = 0x3FF0000000000000;
      *a3 = vdupq_n_s64(0xC158CBA800000000);
      *(a3 + 16) = xmmword_1B33B2250;
      *(a3 + 32) = vdupq_n_s64(0x4158CBA800000000uLL);
      return;
    }
  }

  v9 = (a4 + ((a5 - a4) * 0.5));
  v10 = 1 << *(a1 + 1);
  v11 = 1.0 / v10;
  v97 = v8;
  v98 = (v10 + ~v7);
  v94 = v11;
  v12 = (v8 + 0.5) * 6.28318531 * v11;
  v13 = exp((v98 + 0.5) * v11 * 6.28318531 + -3.14159265);
  v14 = atan(v13) * 2.0 + -1.57079633;
  v15 = fmod(v12, 6.28318531);
  v16 = fmod(v15 + 6.28318531, 6.28318531) + -3.14159265;
  v17 = __sincos_stret(v14);
  v18 = 6378137.0 / sqrt(v17.__sinval * v17.__sinval * -0.00669437999 + 1.0);
  v19 = (v18 + v9) * v17.__cosval;
  v20 = __sincos_stret(v16);
  *a2 = v19 * v20.__cosval;
  *(a2 + 8) = v19 * v20.__sinval;
  *(a2 + 16) = (v18 * 0.99330562 + v9) * v17.__sinval;
  v115 = xmmword_1B33B05E0;
  v116 = 0;
  v21 = sin(v14 * 0.5);
  for (i = 0; i != 24; i += 8)
  {
    *(&v104 + i) = *(&v115 + i) * v21;
  }

  v92 = v104;
  v23 = v105;
  v24 = cos(v14 * 0.5);
  v25 = 0;
  v112 = v92;
  v113 = v23;
  v114 = v24;
  do
  {
    *(&v104 + v25) = -*(&v112 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  *&v106 = v24;
  v109 = 0uLL;
  v110 = 0x3FF0000000000000;
  *&v115 = gm::Quaternion<double>::operator*(&v104, &v109);
  *(&v115 + 1) = v26;
  v116 = v27;
  *&v115 = gm::Matrix<double,3,1>::normalized<int,void>(&v115);
  *(&v115 + 1) = v28;
  v116 = v29;
  v30 = sin(v16 * 0.5);
  for (j = 0; j != 24; j += 8)
  {
    *(&v104 + j) = *(&v115 + j) * v30;
  }

  v93 = v104;
  v32 = v105;
  v33 = cos(v16 * 0.5);
  v109 = v93;
  v110 = v32;
  v111 = v33;
  gm::Quaternion<double>::operator*(&v104, &v112, &v109);
  *(a2 + 24) = v104;
  *(a2 + 40) = v105;
  *(a2 + 48) = v106;
  geo::RigidTransform<double,double>::inverse(&v104, a2);
  *a3 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a3 + 16) = xmmword_1B33B0520;
  *(a3 + 32) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v34 = (v18 + a5) * v17.__cosval;
  v101 = v34 * v20.__cosval;
  v102 = v34 * v20.__sinval;
  v96 = a5;
  v103 = (v18 * 0.99330562 + a5) * v17.__sinval;
  v115 = v106;
  v116 = v107;
  v100 = v108;
  v117 = v108;
  v35 = gm::Quaternion<double>::operator*(&v115, &v101);
  v36 = 0;
  v118 = v35;
  v119 = v37;
  v120 = v38;
  do
  {
    *(&v121 + v36) = *(&v118 + v36) + *(&v104 + v36);
    v36 += 8;
  }

  while (v36 != 24);
  v39 = 0;
  v115 = v121;
  v116 = v122;
  do
  {
    v40 = (a3 + v39);
    v41 = *(&v115 + v39);
    *v40 = fmin(v41, *(a3 + v39));
    v40[3] = fmax(*(a3 + v39 + 24), v41);
    v39 += 8;
  }

  while (v39 != 24);
  v42 = v94 * 6.28318531;
  v43 = exp(v94 * 6.28318531 * v98 + -3.14159265);
  v44 = atan(v43);
  v45 = __sincos_stret(v44 * 2.0 + -1.57079633);
  v46 = 6378137.0 / sqrt(v45.__sinval * v45.__sinval * -0.00669437999 + 1.0);
  v47 = (v46 + v9) * v45.__cosval;
  v101 = v47 * v20.__cosval;
  v102 = v47 * v20.__sinval;
  v103 = (v9 + v46 * 0.99330562) * v45.__sinval;
  v115 = v106;
  v116 = v107;
  v117 = v100;
  v48 = gm::Quaternion<double>::operator*(&v115, &v101);
  v49 = 0;
  v118 = v48;
  v119 = v50;
  v120 = v51;
  do
  {
    *(&v121 + v49) = *(&v118 + v49) + *(&v104 + v49);
    v49 += 8;
  }

  while (v49 != 24);
  v52 = 0;
  v115 = v121;
  v116 = v122;
  do
  {
    v53 = (a3 + v52);
    v54 = *(&v115 + v52);
    *v53 = fmin(v54, *(a3 + v52));
    v53[3] = fmax(*(a3 + v52 + 24), v54);
    v52 += 8;
  }

  while (v52 != 24);
  v55 = exp(v42 * (v98 + 1.0) + -3.14159265);
  v56 = atan(v55);
  v57 = __sincos_stret(v56 * 2.0 + -1.57079633);
  v58 = 6378137.0 / sqrt(v57.__sinval * v57.__sinval * -0.00669437999 + 1.0);
  v59 = (v58 + v9) * v57.__cosval;
  v101 = v59 * v20.__cosval;
  v102 = v59 * v20.__sinval;
  v103 = (v9 + v58 * 0.99330562) * v57.__sinval;
  v115 = v106;
  v116 = v107;
  v117 = v100;
  v60 = gm::Quaternion<double>::operator*(&v115, &v101);
  v61 = 0;
  v118 = v60;
  v119 = v62;
  v120 = v63;
  do
  {
    *(&v121 + v61) = *(&v118 + v61) + *(&v104 + v61);
    v61 += 8;
  }

  while (v61 != 24);
  v64 = 0;
  v115 = v121;
  v116 = v122;
  do
  {
    v65 = (a3 + v64);
    v66 = *(&v115 + v64);
    *v65 = fmin(v66, *(a3 + v64));
    v65[3] = fmax(*(a3 + v64 + 24), v66);
    v64 += 8;
  }

  while (v64 != 24);
  v67 = 0;
  v68 = a4;
  do
  {
    v69 = exp(((v67 & 1) + v98) * v42 + -3.14159265);
    v70 = atan(v69) * 2.0 + -1.57079633;
    v71 = fmod(((v67 >> 1) + v97) * v42, 6.28318531);
    v72 = fmod(v71 + 6.28318531, 6.28318531) + -3.14159265;
    v73 = __sincos_stret(v70);
    v74 = 6378137.0 / sqrt(v73.__sinval * v73.__sinval * -0.00669437999 + 1.0);
    v75 = (v74 + v68) * v73.__cosval;
    v76 = __sincos_stret(v72);
    v101 = v75 * v76.__cosval;
    v102 = v75 * v76.__sinval;
    v103 = (v74 * 0.99330562 + v68) * v73.__sinval;
    v115 = v106;
    v116 = v107;
    v117 = v100;
    v77 = gm::Quaternion<double>::operator*(&v115, &v101);
    v78 = 0;
    v118 = v77;
    v119 = v79;
    v120 = v80;
    do
    {
      *(&v121 + v78) = *(&v118 + v78) + *(&v104 + v78);
      v78 += 8;
    }

    while (v78 != 24);
    v81 = 0;
    v115 = v121;
    v116 = v122;
    do
    {
      v82 = (a3 + v81);
      v83 = *(&v115 + v81);
      *v82 = fmin(v83, *(a3 + v81));
      v82[3] = fmax(*(a3 + v81 + 24), v83);
      v81 += 8;
    }

    while (v81 != 24);
    v84 = (v74 + v96) * v73.__cosval;
    v101 = v84 * v76.__cosval;
    v102 = v84 * v76.__sinval;
    v103 = (v74 * 0.99330562 + v96) * v73.__sinval;
    v115 = v106;
    v116 = v107;
    v117 = v100;
    v85 = gm::Quaternion<double>::operator*(&v115, &v101);
    v86 = 0;
    v118 = v85;
    v119 = v87;
    v120 = v88;
    do
    {
      *(&v121 + v86) = *(&v118 + v86) + *(&v104 + v86);
      v86 += 8;
    }

    while (v86 != 24);
    v89 = 0;
    v115 = v121;
    v116 = v122;
    do
    {
      v90 = (a3 + v89);
      v91 = *(&v115 + v89);
      *v90 = fmin(v91, *(a3 + v89));
      v90[3] = fmax(*(a3 + v89 + 24), v91);
      v89 += 8;
    }

    while (v89 != 24);
    ++v67;
  }

  while (v67 != 4);
}

uint64_t md::FlyoverCommon::selectChildren(uint64_t result, uint64_t a2, void *a3, _OWORD *a4)
{
  v75 = result;
  if (!result)
  {
    return result;
  }

  v4 = a3;
  a3[1] = *a3;
  memset(v85, 0, sizeof(v85));
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = v85;
  }

  v77 = 0uLL;
  v78[0] = 0uLL;
  v76 = 0uLL;
  v8 = *(v6 + 1);
  v7 = *(v6 + 2);
  *(v6 + 5) = 0;
  v9 = (v7 - v8) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v8);
      v7 = *(v6 + 2);
      v8 = (*(v6 + 1) + 8);
      *(v6 + 1) = v8;
      v9 = (v7 - v8) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v10 = 42;
    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = 85;
LABEL_11:
    *(v6 + 4) = v10;
  }

  if (*(v6 + 5))
  {
    std::deque<md::FlyoverOctile>::__maybe_remove_front_spare[abi:nn200100](v6, 0);
    v12 = *(v6 + 1);
    v11 = *(v6 + 2);
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 85 * ((v11 - v12) >> 3) - 1;
    }

    if ((v13 - (*(v6 + 5) + *(v6 + 4))) >= 0x55)
    {
      operator delete(*(v11 - 8));
      *(v6 + 2) -= 8;
    }
  }

  else
  {
    while (v7 != v8)
    {
      operator delete(*(v7 - 8));
      v8 = *(v6 + 1);
      v7 = *(v6 + 2) - 8;
      *(v6 + 2) = v7;
    }

    *(v6 + 4) = 0;
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(v6);
  v15 = *(v6 + 1);
  v14 = *(v6 + 2);
  if (v14 != v15)
  {
    *(v6 + 2) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(v6);
  v16 = v77;
  *v6 = v76;
  v6[1] = v16;
  v76 = 0u;
  v77 = 0u;
  v17 = *(&v78[0] + 1);
  *(v6 + 4) = *&v78[0];
  *(v6 + 5) = v17;
  v78[0] = 0uLL;
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](&v76);
  std::deque<md::FlyoverOctile>::push_back(v6, a2);
  v18 = *(v6 + 5);
  if (v18)
  {
    v67 = v4;
    v66 = a2;
    do
    {
      v19 = *(v6 + 4);
      v20 = *(*(v6 + 1) + 8 * (v19 / 0x55)) - 4080 * (v19 / 0x55) + 48 * v19;
      v80[1] = *(v20 + 1);
      v21 = v80[1];
      v22 = *(v20 + 4);
      v81 = v22;
      v23 = *v20;
      v80[0] = *v20;
      v24 = *(v20 + 16);
      v82 = v24;
      v25 = *(v20 + 24);
      v83 = v25;
      v84 = *(v20 + 32);
      *(v6 + 4) = v19 + 1;
      *(v6 + 5) = v18 - 1;
      std::deque<md::FlyoverOctile>::__maybe_remove_front_spare[abi:nn200100](v6, 1);
      v26 = *(a2 + 1);
      v27 = v21 - v26;
      if ((v21 - v26) <= 1)
      {
        if (v21 - 1 == v26)
        {
          v28 = *(v4 + 8);
          if (v28 >= *(v4 + 16))
          {
            v29 = std::vector<md::FlyoverOctile>::__emplace_back_slow_path<md::FlyoverOctile const&>(v4, v80);
          }

          else
          {
            *(v28 + 1) = v21;
            *(v28 + 4) = v22;
            *v28 = v23;
            *(v28 + 16) = v24;
            *(v28 + 24) = v25;
            *(v28 + 32) = v84;
            v29 = v28 + 48;
          }

          *(v4 + 8) = v29;
          v27 = v21 - *(a2 + 1);
        }

        if (!v27)
        {
          v112 = v116;
          v113 = v116;
          v114 = v116;
          v115 = 8;
          md::FlyoverMetaData::tileCacheLookup(v109, v75, v80, HIDWORD(v84), 0);
          if (v111)
          {
            if ((v110 & 0x100000000) != 0)
            {
              md::FlyoverRegionManager::getArea(&v90, **v75, v110);
              if (v90)
              {
                v30 = HIDWORD(v84);
                v31 = v80[1];
                v32 = ~(-1 << v80[1]);
                v33 = HIDWORD(v81);
                *&v87 = v80[1] | ((v32 - v81) << 32);
                *(&v87 + 1) = HIDWORD(v81) | (HIDWORD(v84) << 32);
                v100 = 0uLL;
                LODWORD(v101) = 1;
                WORD2(v101) = 0;
                if (geo::c3mm::C3mmArea::getEntry(v90, &v87, &v100) == -1)
                {
                  v34 = v30;
                  v35 = 0;
                  v36 = v31 + 1;
                  v37 = 2 * v33;
                  v38 = 2 * (v32 - v81);
                  v73 = v36;
                  v71 = v36;
                  v69 = ~(-1 << v36);
                  v70 = 2 * v33;
                  v39 = 2 * v34;
                  v40 = v101;
                  v72 = WORD2(v101);
                  v68 = v110;
                  while (1)
                  {
                    v41 = v37 | v35 & 1;
                    v42 = v38 | (v35 >> 1) & 1;
                    v43 = v39 + (v35 >> 2);
                    if (v40 == 1)
                    {
                      if (v35 <= 3)
                      {
                        v44 = 2;
LABEL_47:
                        v47 = v113;
                        v48 = 1 - 0x5555555555555555 * ((v113 - v112) >> 4);
                        if (v115 < v48)
                        {
                          geo::small_vector_base<md::FlyoverOctile>::grow(&v112, v48);
                          v47 = v113;
                        }

                        LODWORD(v49) = v69 - v42;
                        HIDWORD(v49) = v41;
                        v47[1] = v71;
                        *(v47 + 4) = v49;
                        *v47 = -1;
                        *(v47 + 2) = 0;
                        v47[24] = 1;
                        v47[32] = v44;
                        *(v47 + 36) = v68;
                        *(v47 + 11) = v43;
                        v113 = v47 + 48;
                        v37 = v70;
                      }
                    }

                    else
                    {
                      v86[0] = v73 | (v42 << 32);
                      v86[1] = v41 | (v43 << 32);
                      v45 = geo::c3mm::C3mmEntry::childMeshType(v72, v86);
                      if (v45 != 3)
                      {
                        if (v45 == 1)
                        {
                          v46 = 2;
                        }

                        else
                        {
                          v46 = 1;
                        }

                        if (v45 == 2)
                        {
                          v44 = 3;
                        }

                        else
                        {
                          v44 = v46;
                        }

                        goto LABEL_47;
                      }
                    }

                    if (++v35 == 8)
                    {
                      geo::small_vector_base<md::FlyoverOctile>::small_vector_base(&v76, &v112, v78);
                      v50 = 1;
                      a2 = v66;
                      v4 = v67;
                      goto LABEL_65;
                    }
                  }
                }

                v50 = 0;
                LOBYTE(v76) = 0;
LABEL_65:
                v79 = v50;
              }

              else
              {
                LOBYTE(v76) = 0;
                v79 = 0;
              }

              if (*(&v90 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v90 + 1));
              }
            }

            else
            {
              v51 = v80[1];
              v52 = v81;
              v53 = v80[0];
              v54 = v83;
              *(&v100 + 4) = v81;
              LOWORD(v100) = *v80;
              v74 = v82;
              v101 = v82;
              v102 = v83;
              v103 = 1;
              v104 = 0;
              v107 = 0;
              v105 = *v80 + 256;
              v106 = vadd_s32(*(&v100 + 4), *(&v100 + 4));
              while (1)
              {
                v108 = 1;
                BYTE1(v90) = v51;
                *(&v90 + 4) = v52;
                LOBYTE(v90) = v53;
                v91 = v74;
                v92 = v54;
                v93 = 1;
                v94 = 4;
                v95 = 255;
                v97 = 0;
                v96 = 0;
                v98 = 0;
                v99 = 1;
                if (!geo::QuadTileIterator::operator!=(&v100, &v90))
                {
                  geo::small_vector_base<md::FlyoverOctile>::small_vector_base(&v76, &v112, v78);
                  v79 = 1;
                  a2 = v66;
                  v4 = v67;
                  goto LABEL_68;
                }

                v55 = HIBYTE(v105);
                v56 = v106;
                *(&v87 + 4) = v106;
                v57 = v105;
                LOWORD(v87) = v105;
                v58 = v107;
                v88 = v107;
                v59 = v108;
                v89 = v108;
                md::FlyoverMetaData::tileCacheLookup(&v90, v75, &v87, 0, 0);
                if ((v97 & 1) == 0)
                {
                  break;
                }

                v60 = v95;
                if (v95)
                {
                  v61 = v113;
                  v62 = 1 - 0x5555555555555555 * ((v113 - v112) >> 4);
                  if (v115 < v62)
                  {
                    geo::small_vector_base<md::FlyoverOctile>::grow(&v112, v62);
                    v61 = v113;
                  }

                  v63 = v94;
                  v61[1] = v55;
                  *(v61 + 4) = v56;
                  *v61 = v57;
                  *(v61 + 2) = v58;
                  v61[24] = v59;
                  v61[32] = v60;
                  *(v61 + 36) = v63;
                  *(v61 + 11) = 0;
                  v113 = v61 + 48;
                }

                ++v104;
                LOBYTE(v105) = v100;
                HIBYTE(v105) = BYTE1(v100) + v103;
                v106.i32[0] = (DWORD1(v100) << v103) + v104 / (1 << v103);
                v106.i32[1] = (DWORD2(v100) << v103) + v104 % (1 << v103);
                v107 = 0;
              }

              LOBYTE(v76) = 0;
              v79 = 0;
              a2 = v66;
              v4 = v67;
            }
          }

          else
          {
            LOBYTE(v76) = 0;
            v79 = 0;
          }

LABEL_68:
          if (v112 != v114)
          {
            free(v112);
          }

          if (v79 == 1)
          {
            v64 = *(&v76 + 1);
            v65 = v76;
            if (v76 != *(&v76 + 1))
            {
              do
              {
                std::deque<md::FlyoverOctile>::push_back(v6, v65);
                v65 += 48;
              }

              while (v65 != v64);
              if ((v79 & 1) == 0)
              {
                goto LABEL_77;
              }

              v65 = v76;
            }

            if (v65 != v77)
            {
              free(v65);
            }
          }
        }
      }

LABEL_77:
      v18 = *(v6 + 5);
    }

    while (v18);
  }

  return std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](v85);
}

void sub_1B323A8E0(_Unwind_Exception *a1)
{
  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x298]);
  }

  if (STACK[0x370] != STACK[0x380])
  {
    free(STACK[0x370]);
  }

  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](&STACK[0x230]);
  _Unwind_Resume(a1);
}

__n128 std::deque<md::FlyoverOctile>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 85 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x55)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[4] = v7 - 85;
    v15 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1, &v15);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v8 / 0x55)] - 4080 * (v8 / 0x55) + 48 * v8;
  *(v13 + 24) = 0;
  *(v13 + 4) = *(a2 + 4);
  *v13 = *a2;
  *(v13 + 16) = *(a2 + 16);
  *(v13 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(v13 + 32) = result;
  ++a1[5];
  return result;
}

void sub_1B323AE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::deque<md::FlyoverOctile>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x55)
  {
    a2 = 1;
  }

  if (v3 > 0xA9 || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 85;
  }
}

void sub_1B323B77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 4096; ; i = v12 + 4096)
    {
      std::__copy_impl::operator()[abi:nn200100]<std::function<void ()(VKCameraDelegateMediator *)> const*,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>,0>(v14, a2, i, v7, v8);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__copy_impl::operator()[abi:nn200100]<std::function<void ()(VKCameraDelegateMediator *)> const*,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>,0>(v14, a2, a4, v7, v8);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<std::function<void ()(VKCameraDelegateMediator *)> const*,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>,0>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  v22[3] = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v15 = a2;
    goto LABEL_24;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = (a3 - v7) >> 5 >= v11 >> 5 ? v11 >> 5 : (a3 - v7) >> 5;
    if (v12)
    {
      break;
    }

LABEL_20:
    v18 = v6[1];
    ++v6;
    v10 = v18;
    a5 = v18;
  }

  v13 = 32 * v12;
  v14 = a5;
  v15 = v7 + 32 * v12;
  do
  {
    std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::__value_func[abi:nn200100](v20, v7);
    if (a5 != v20)
    {
      v16 = v21;
      v17 = *(a5 + 24);
      if (v21 == v20)
      {
        if (a5 == v17)
        {
          (*(*v21 + 24))();
          (*(*v21 + 32))(v21);
          v21 = 0;
          (*(**(a5 + 24) + 24))(*(a5 + 24), v20);
          (*(**(a5 + 24) + 32))(*(a5 + 24));
          *(a5 + 24) = 0;
          v21 = v20;
          (*(v22[0] + 24))(v22, a5);
          (*(v22[0] + 32))(v22);
        }

        else
        {
          (*(*v21 + 24))();
          (*(*v21 + 32))(v21);
          v21 = *(a5 + 24);
        }

        *(a5 + 24) = a5;
      }

      else if (a5 == v17)
      {
        (*(*v17 + 24))(*(a5 + 24), v20);
        (*(**(a5 + 24) + 32))(*(a5 + 24));
        *(a5 + 24) = v21;
        v21 = v20;
      }

      else
      {
        v21 = *(a5 + 24);
        *(a5 + 24) = v16;
      }
    }

    result = std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](v20);
    v7 += 32;
    a5 += 32;
    v14 += 32;
    v13 -= 32;
  }

  while (v13);
  if (v15 != a3)
  {
    v7 = v15;
    goto LABEL_20;
  }

  if (*v6 + 4096 == a5)
  {
    v19 = v6[1];
    ++v6;
    a5 = v19;
  }

LABEL_24:
  *v8 = v15;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void sub_1B323BD28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(va);
  _Unwind_Resume(a1);
}

void sub_1B323BF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v18 + 48);
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v18 + 16);
  if (*v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v19);
  }

  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](&a14);
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B323C050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B323C3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B323C8C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323CA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323CC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323CE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323CFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323D1A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323D364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323D550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323D738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323D91C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323DB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323DE8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B323E048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<unsigned long>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::VKCameraRegionChange>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A462E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeature::debugPopulateStyleAttributes(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A46BA8;
  v3[1] = a2;
  v3[3] = v3;
  md::LabelFeature::enumerateGEOFeatures(a1, v3);
  return std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](v3);
}

void sub_1B323F4E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelFeature::debugPopulateStyleAttributes(std::unordered_set<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>> &,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateStyleAttributes(std::unordered_set<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>> &,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  md::createFeatureAttributeSet(v3, (*a2 + 24));
  std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__emplace_unique_key_args<gss::FeatureAttributeSet,gss::FeatureAttributeSet>(v2, v3[0], v3[1], v3);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v3);
}

void sub_1B323F570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelFeature::debugPopulateStyleAttributes(std::unordered_set<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>> &,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateStyleAttributes(std::unordered_set<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>> &,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A46BA8;
  a2[1] = v2;
  return result;
}

uint64_t md::LabelFeature::debugPopulateAttributeStrings(md::LabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2A46BF0;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = v7;
  md::LabelFeature::enumerateGEOFeatures(this, v7);
  return std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](v7);
}

void sub_1B323F6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = MEMORY[0x1E696AEC0];
  v10 = md::HighlightHelper::debugAttributesToString(*a2 + 24);
  v6 = [v5 stringWithFormat:@"{%@}", v10];
  [v4 addObject:v6];

  v7 = md::LabelFeature::debugClientAttributesToString((v3 + 24), *(*(a1 + 16) + 336));
  if (v7)
  {
    v8 = *(a1 + 8);
    v11 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v7];
    [v8 addObject:v9];

    v7 = v11;
  }
}

id md::LabelFeature::debugClientAttributesToString(uint64_t *a1, uint64_t a2)
{
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v4, (a2 + 184), a1, 0);
  v2 = md::HighlightHelper::debugClientAttributesToString(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void sub_1B323F850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A46BF0;
  result = *(a1 + 8);
  v5 = *(a1 + 16);
  a2[1] = result;
  a2[2] = v5;
  return result;
}

void std::__function::__func<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0,std::allocator<md::LabelFeature::debugPopulateAttributeStrings(NSMutableSet *,md::LabelManager const*,md::LabelIdentifier const&)::$_0>,void ()(GeoCodecsFeature const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelFeature::styleAttributes(md::LabelIdentifier)::$_0,std::allocator<md::LabelFeature::styleAttributes(md::LabelIdentifier)::$_0>,void ()(GeoCodecsFeature const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A46C38;
  a2[1] = v2;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextDataEntry>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 56 * a2, 0x1060040631C36C9uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::LabelFeature::populateDebugNode(md::LabelFeature *this, gdc::DebugTreeNode *a2, const md::LabelManager *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v51, "Public Name");
  if ((*(*this + 480))(this, 0))
  {
    v5 = (*(*this + 480))(this, 0);
    v6 = v5;
    v7 = *(v5 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(v5 + 8);
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_64;
      }

      v6 = *v5;
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__dst, "No Public Name");
  }

  gdc::DebugTreeValue::DebugTreeValue(v46, &__dst);
  gdc::DebugTreeNode::addProperty(a2, &v51, v46);
  if (v48 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  std::string::basic_string[abi:nn200100]<0>(&v51, "Public Locale");
  if (!(*(*this + 488))(this, 0))
  {
    std::string::basic_string[abi:nn200100]<0>(&__dst, "No Public Locale");
    goto LABEL_29;
  }

  v8 = (*(*this + 488))(this, 0);
  v9 = v8;
  v10 = *(v8 + 23);
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_22:
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
    }

    __dst.__r_.__value_.__s.__data_[v10] = 0;
LABEL_29:
    gdc::DebugTreeValue::DebugTreeValue(v43, &__dst);
    gdc::DebugTreeNode::addProperty(a2, &v51, v43);
    if (v45 < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Feature ID");
    v11 = (*(*this + 160))(this);
    gdc::DebugTreeValue::DebugTreeValue(v40, v11);
    gdc::DebugTreeNode::addProperty(a2, &v51, v40);
    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Venue ID");
    v12 = (*(*this + 376))(this);
    gdc::DebugTreeValue::DebugTreeValue(v37, v12);
    gdc::DebugTreeNode::addProperty(a2, &v51, v37);
    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Venue Building ID");
    v13 = (*(*this + 384))(this);
    gdc::DebugTreeValue::DebugTreeValue(v34, v13);
    gdc::DebugTreeNode::addProperty(a2, &v51, v34);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Venue Level ID");
    v14 = (*(*this + 392))(this);
    gdc::DebugTreeValue::DebugTreeValue(v31, v14);
    gdc::DebugTreeNode::addProperty(a2, &v51, v31);
    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Venue Comoponent ID");
    v15 = (*(*this + 400))(this);
    gdc::DebugTreeValue::DebugTreeValue(v28, v15);
    gdc::DebugTreeNode::addProperty(a2, &v51, v28);
    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Venue Floor Ordinal");
    v16 = (*(*this + 408))(this);
    gdc::DebugTreeValue::DebugTreeValue(v25, v16);
    gdc::DebugTreeNode::addProperty(a2, &v51, v25);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&v51, "Business ID");
    v17 = (*(*this + 176))(this);
    gdc::DebugTreeValue::DebugTreeValue(v22, v17);
    gdc::DebugTreeNode::addProperty(a2, &v51, v22);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::string::basic_string[abi:nn200100]<0>(&__dst, "Feature Zoom Range");
    LODWORD(v20) = 1;
    v18 = (*(*this + 240))(this, &v20);
    gdc::DebugTreeValue::DebugTreeValue(&v51, v18);
    LODWORD(v49) = 1;
    v19 = (*(*this + 248))(this, &v49);
    gdc::DebugTreeValue::DebugTreeValue(&v53, v19);
    memset(&v21, 0, sizeof(v21));
    std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(&v21, &v51, &v54, 2uLL);
  }

  v10 = *(v8 + 8);
  if (v10 <= 0x7FFFFFFFFFFFFFF7)
  {
    v9 = *v8;
    goto LABEL_22;
  }

LABEL_64:
  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B32406D8(_Unwind_Exception *a1)
{
  std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__deallocate_node(STACK[0x380]);
  v3 = STACK[0x368];
  STACK[0x368] = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *>(v4, v3);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 + 2));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::LabelFeature::debugString@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v74);
  if (!*(a1 + 9))
  {
    goto LABEL_120;
  }

  v9 = (*(*a1 + 568))(a1, *a3, 0, 0, a2);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = v10;
  if (v11 && (*(v11 + 125) & 1) == 0)
  {
    md::LabelStyle::updateZoomInvariantStyles(v11);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "Feature ", 8);
  v12 = MEMORY[0x1B8C61CF0](&v74, *(a1 + 9));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if ((*(*a1 + 496))(a1) && (*(*a1 + 480))(a1, 0))
  {
    v13 = (*(*a1 + 480))(a1, 0);
    if ((*(v13 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v13 + 8))
      {
        goto LABEL_32;
      }
    }

    else if (!*(v13 + 23))
    {
      goto LABEL_32;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  ", 2);
    v14 = (*(*a1 + 480))(a1, 0);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, v16, v17);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, " (", 2);
    if ((*(*a1 + 488))(a1, 0))
    {
      v18 = (*(*a1 + 488))(a1, 0);
      LOBYTE(v82) = *(v18 + 24);
      if (*(v18 + 23) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, *v18, *(v18 + 8));
      }

      else
      {
        v19 = *v18;
        v81 = *(v18 + 16);
        __dst = v19;
      }
    }

    else
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__dst, "");
    }

    if (v81 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v81 >= 0)
    {
      v21 = HIBYTE(v81);
    }

    else
    {
      v21 = *(&__dst + 1);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, p_dst, v21);
    v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, ")\n", 2);
    if (SHIBYTE(v81) < 0)
    {
      v23 = __dst;
      v24 = mdm::zone_mallocator::instance(v22);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
    }
  }

LABEL_32:
  if ((*(*a1 + 160))(a1))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  FeatureID=", 12);
    v25 = (*(*a1 + 160))(a1);
    v26 = MEMORY[0x1B8C61CF0](&v74, v25);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "\n", 1);
  }

  if ((*(*a1 + 168))(a1))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  ClientFeatureID=", 18);
    v27 = (*(*a1 + 168))(a1);
    v28 = MEMORY[0x1B8C61CF0](&v74, v27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "\n", 1);
  }

  if ((*(*a1 + 176))(a1))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  BusinessID=", 13);
    v29 = (*(*a1 + 176))(a1);
    v30 = MEMORY[0x1B8C61CF0](&v74, v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n", 1);
  }

  LODWORD(__dst) = 1;
  v31 = (*(*a1 + 240))(a1, &__dst);
  LODWORD(__dst) = 1;
  v32 = (*(*a1 + 248))(a1, &__dst);
  if (v31 < 252.0 || v32 < 252.0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  FeatureZoom: Min=", 19);
    v33 = v74;
    *(&v74 + *(v74 - 24) + 8) = *(&v74 + *(v74 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v76[0].__locale_ + *(v33 - 24)) = 2;
    v34 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " Max=", 5);
    v35 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, "\n", 1);
  }

  if ((*(*a1 + 64))(a1))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  External: hasAnnotation=", 26);
    v36 = (*(*a1 + 216))(a1);
    v37 = MEMORY[0x1B8C61C80](&v74, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "\n", 1);
  }

  if (!v11)
  {
    goto LABEL_94;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  Style:", 8);
  md::LabelStyle::styleName(&__dst, v11);
  if (v81 >= 0)
  {
    v38 = &__dst;
  }

  else
  {
    v38 = __dst;
  }

  if (v81 >= 0)
  {
    v39 = HIBYTE(v81);
  }

  else
  {
    v39 = *(&__dst + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, v38, v39);
  v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "\n", 1);
  if (SHIBYTE(v81) < 0)
  {
    v41 = __dst;
    v42 = mdm::zone_mallocator::instance(v40);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v42, v41);
    if (a4)
    {
      goto LABEL_55;
    }
  }

  else if (a4)
  {
LABEL_55:
    v43 = *v11;
    v44 = *(v11 + 8);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__dst, v43, v44);
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v44);
    }

    if (v83 == 1)
    {
      v45 = *(__dst + 24);
      v47 = *(v45 + 16);
      v46 = *(v45 + 24);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v47)
        {
          v48 = (v47 + 56);
        }

        else
        {
          v48 = 0;
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
        if ((v83 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (v47)
      {
        v48 = (v47 + 56);
      }

      else
      {
        v48 = 0;
      }

      (*(*__dst + 56))(__dst);
    }

    else
    {
      v48 = 0;
    }

LABEL_71:
    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v82);
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&__dst + 1));
    }

    if (v48)
    {
      v49 = *(v48 + 4);
      if (*(v48 + 4))
      {
        v50 = *v48;
        v51 = 16 * v49;
        do
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "      (", 7);
          if (*v50)
          {
            (*(**v50 + 16))(&__dst);
          }

          else
          {
            std::string::basic_string[abi:nn200100]<0>(&__dst, "");
          }

          if (v81 >= 0)
          {
            v52 = &__dst;
          }

          else
          {
            v52 = __dst;
          }

          if (v81 >= 0)
          {
            v53 = HIBYTE(v81);
          }

          else
          {
            v53 = *(&__dst + 1);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, v52, v53);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, ")\n", 2);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(__dst);
          }

          v50 += 16;
          v51 -= 16;
        }

        while (v51);
      }
    }

    goto LABEL_90;
  }

  if (*(a2 + 3682) == 1)
  {
    goto LABEL_55;
  }

LABEL_90:
  if (!*v11)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "      Default\n", 14);
  }

  if (a1[138])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "      Dedupable\n", 16);
  }

LABEL_94:
  v67 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  (*(*a1 + 632))(a1);
  if ([v67 count])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  Attrs:\n", 9);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v54 = [v67 allObjects];
    obj = [v54 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v55 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v55)
    {
      v69 = *v71;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v71 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v57 = [*(*(&v70 + 1) + 8 * i) UTF8String];
          v58 = strlen(v57);
          v59 = 0;
          do
          {
            if (v58 <= v59 + 60)
            {
              v61 = -1;
            }

            else
            {
              v60 = memchr(&v57[v59 + 60], 44, v58 - (v59 + 60));
              if (v60)
              {
                v61 = v60 - v57;
              }

              else
              {
                v61 = -1;
              }
            }

            if (v61 == -1)
            {
              v62 = -1;
            }

            else
            {
              v62 = v61 - v59 + 1;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "    ", 4);
            if (v58 < v59)
            {
              abort();
            }

            if (v58 - v59 >= v62)
            {
              v63 = v62;
            }

            else
            {
              v63 = v58 - v59;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, &v57[v59], v63);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "\n", 1);
            v59 += v62;
          }

          while (v61 != -1);
        }

        v55 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v55);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v74, "  No attrs\n", 11);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

LABEL_120:
  std::ostringstream::str[abi:nn200100](a5, &v74);
  v74 = *MEMORY[0x1E69E54E8];
  *(&v74 + *(v74 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v75 = MEMORY[0x1E69E5548] + 16;
  if (v77 < 0)
  {
    operator delete(v76[7].__locale_);
  }

  v75 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v76);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v78);
}

void sub_1B3241480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = *(v41 - 136);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  v44 = *(v41 - 152);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  a24 = *MEMORY[0x1E69E54E8];
  *(&a24 + *(a24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a25 = MEMORY[0x1E69E5548] + 16;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  a25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a26);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a41);
  _Unwind_Resume(a1);
}

void md::LabelFeature::tileAnnotationText(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v9 = *a2;
  v10 = *(*a2 + 536) + 16 * a3;
  v11 = a4;
  do
  {
    if (*(v10 + 4) == a5)
    {
      v8 = v10;
    }

    v10 += 16;
    --v11;
  }

  while (v11);
  if (!v8 || ((v12 = *v8, v70.__r_.__value_.__r.__words[0] = 0, v74 = 0, geo::codec::tileGetLocalizedLabel(v9, v12, &v70, &v74), (v13 = v70.__r_.__value_.__r.__words[0]) == 0) || !*v70.__r_.__value_.__l.__data_) && ((geo::codec::tileGetNativeLabel(*a2, v12, &v70, &v74), (v13 = v70.__r_.__value_.__r.__words[0]) == 0) || !*v70.__r_.__value_.__l.__data_))
  {
LABEL_13:
    *a1 = 0;
    *(a1 + 64) = 0;
    return;
  }

  md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&__src, v13, v74);
  v83 = 1;
  v14 = v80;
  if ((v80 & 0x8000000000000000) != 0)
  {
    v14 = v79;
    if (v79 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_83;
    }

    p_src = __src;
  }

  else
  {
    p_src = &__src;
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v69 = v14;
  if (v14)
  {
    memmove(&__dst, p_src, v14);
  }

  *(&__dst + v14) = 0;
  if (*(v8 + 12))
  {
    v16 = *(*a2 + 568);
    v17 = v8[2];
    md::LabelValueFormatter::LabelValueFormatter(&v74);
    if (*(v8 + 12))
    {
      v18 = a6 == 3;
      if (a6 == 4)
      {
        v18 = 2;
      }

      v54 = v18;
      v19 = (v16 + 16 * v17 + 8);
      __p[0] = 0;
      __p[1] = 0;
      v67 = 0;
      v20 = *(v16 + 16 * v17);
      if (v20 > 3)
      {
        if (*(v16 + 16 * v17) > 5u)
        {
          if (v20 == 6)
          {
            md::LabelValueFormatter::formatDateTime(&v70, &v74, a6, a6, *v19);
            goto LABEL_57;
          }

          if (v20 == 7)
          {
            v33 = *v19;
            v34 = remainder(*v19, 0.1);
            v35 = 2;
            if (fabs(v34) <= 0.005)
            {
              v35 = 1;
            }

            md::LabelValueFormatter::formatElevation(&v70, &v74, a6, v58 & 0xFFFFFF0000000000 | 0x100000001, v57 & 0xFFFFFF0000000000 | v35 | 0x100000000, v33);
            goto LABEL_57;
          }
        }

        else
        {
          if (v20 == 4)
          {
            md::LabelValueFormatter::formatDateTime(&v70, &v74, 1u, a6, *v19);
            goto LABEL_57;
          }

          if (v20 == 5)
          {
            md::LabelValueFormatter::formatDateTime(&v70, &v74, a6, 1u, *v19);
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (*(v16 + 16 * v17) <= 1u)
        {
          if (*(v16 + 16 * v17))
          {
            v21 = *v19;
            v63.__r_.__value_.__r.__words[0] = v16 & 0xFFFFFF00FFFFFF00;
            v63.__r_.__value_.__l.__size_ = v59 & 0xFFFFFF0000000000 | 0x100000000;
            v22 = objc_alloc(MEMORY[0x1E696AD28]);
            v23 = [MEMORY[0x1E696B058] kilometers];
            v24 = [v22 initWithDoubleValue:v23 unit:v21 * 0.001];
            v70.__r_.__value_.__r.__words[0] = &unk_1F29E92C0;
            v70.__r_.__value_.__l.__size_ = v24;

            LOBYTE(v23) = v74;
            v25 = v70.__r_.__value_.__l.__size_;
            if ((v23 & 1) == 0)
            {
              v26 = [MEMORY[0x1E696B058] miles];
              v27 = [v25 measurementByConvertingToUnit:v26];

              v25 = v27;
            }

            LODWORD(v63.__r_.__value_.__r.__words[1]) = 1;
            [v25 doubleValue];
            if (v28 >= 0.1)
            {
              md::LabelValueFormatter::FormatMeasurement(v64, &v74, v25, a6, 1, &v63);
            }

            else
            {
              v64[0] = 0;
              v64[1] = 0;
              v65 = 0;
            }

            v70.__r_.__value_.__r.__words[0] = &unk_1F29E92C0;
            goto LABEL_52;
          }

          v36 = *v19;
          v37 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          [v37 setGeneratesDecimalNumbers:1];
          [v37 setMaximumFractionDigits:v54];
          v38 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
          v39 = [v37 stringFromNumber:v38];

          if (v39)
          {
            v40 = v39;
            v41 = [v39 UTF8String];
          }

          else
          {
            v41 = "";
          }

          std::string::basic_string[abi:nn200100]<0>(&v70, v41);

LABEL_57:
          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *&v70.__r_.__value_.__l.__data_;
          v42 = v70.__r_.__value_.__r.__words[2];
LABEL_60:
          v67 = v42;
          std::to_string(&v63, 0);
          v43 = std::string::insert(&v63, 0, "\\{", 2uLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v70.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v70.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v70, "\\}", 2uLL);
          v46 = v45->__r_.__value_.__r.__words[2];
          *v64 = *&v45->__r_.__value_.__l.__data_;
          v65 = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          std::regex_traits<char>::regex_traits(&v70);
          v73 = 0;
          v72 = 0u;
          v71 = 0u;
          std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
        }

        if (v20 == 2)
        {
          md::LabelValueFormatter::formatElevation(&v70, &v74, a6, v56 & 0xFFFFFF0000000000 | 0x100000000, v55 & 0xFFFFFF0000000000 | 0x100000000, *v19);
          goto LABEL_57;
        }

        if (v20 == 3)
        {
          v29 = *v19;
          v63.__r_.__value_.__r.__words[0] = v61 & 0xFFFFFF00FFFFFF00;
          v63.__r_.__value_.__l.__size_ = v60 & 0xFFFFFF0000000000 | 0x100000000;
          v30 = objc_alloc(MEMORY[0x1E696AD28]);
          v31 = [MEMORY[0x1E696B080] celsius];
          v32 = [v30 initWithDoubleValue:v31 unit:v29];
          v70.__r_.__value_.__r.__words[0] = &unk_1F29E92C0;
          v70.__r_.__value_.__l.__size_ = v32;

          md::LabelValueFormatter::FormatMeasurement(v64, &v74, v70.__r_.__value_.__l.__size_, a6, 0, &v63);
          v70.__r_.__value_.__r.__words[0] = &unk_1F29E92C0;

LABEL_52:
          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *v64;
          v42 = v65;
          goto LABEL_60;
        }
      }

      *a1 = 0;
      *(a1 + 64) = 0;

      v75 = &unk_1F2A46B88;
      goto LABEL_74;
    }

    v75 = &unk_1F2A46B88;
  }

  if ((v83 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_83:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v82 >= 0)
  {
    v48 = &v81;
  }

  else
  {
    v48 = v81;
  }

  v49 = md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(a1, p_dst, v48);
  *(v49 + 64) = 1;
LABEL_74:
  if (v69 < 0)
  {
    operator delete(__dst);
  }

  if (v83)
  {
    if (v82 < 0)
    {
      v50 = v81;
      v51 = mdm::zone_mallocator::instance(v49);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v51, v50);
    }

    if (v80 < 0)
    {
      v52 = __src;
      v53 = mdm::zone_mallocator::instance(v49);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v53, v52);
    }
  }
}

void sub_1B3241EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, std::locale a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (*(v51 - 136) == 1)
  {
    if (*(v51 - 145) < 0)
    {
      v53 = *(v51 - 168);
      v54 = mdm::zone_mallocator::instance(exception_object);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v54, v53);
    }

    if (*(v51 - 177) < 0)
    {
      v55 = *(v51 - 200);
      v56 = mdm::zone_mallocator::instance(exception_object);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v56, v55);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1B3242394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 == v4)
  {
    return v4;
  }

  do
  {
    v6 = v3;
    v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
  }

  while (v6 != v3);
  if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    ++v6;
  }

  if (v6 == v4)
  {
    return v4;
  }

  v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(v8);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_7:
    v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::__node<char>::__exec_split(v11, v12, v13);
  }

  else
  {
    v8 = v7;
    while (v8 != a3)
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
      if (v8 + 1 == v10)
      {
        goto LABEL_7;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }
  }
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1B8C62190);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C62190);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(v8, v9, v10);
  }

  else
  {
    do
    {
      v7 = v6;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
    }

    while (v7 != v6);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v18 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v18 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    v8 = v19;
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          v20 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(v20);
          return;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 != a2)
  {
    v17 = (*(a1 + 28) + 1);

    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 <= 0x3E)
  {
    if (v13 == 42)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        goto LABEL_25;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_35;
    }

    v6 = a2;
    if (v13 == 43)
    {
      v6 = a2 + 1;
      if (!v12 && v6 != a3 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 1;
LABEL_25:
        v18 = -1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 1;
      goto LABEL_35;
    }

    return v6;
  }

  if (v13 == 63)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v20 = 1;
    }

    else
    {
      v20 = v6 == a3;
    }

    if (!v20 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    v18 = 1;
    goto LABEL_44;
  }

  v6 = a2;
  if (v13 != 123)
  {
    return v6;
  }

  v15 = a2 + 1;
  v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
  if (v15 == v16)
  {
    goto LABEL_57;
  }

  if (v16 != a3)
  {
    v17 = *v16;
    if (v17 != 44)
    {
      if (v17 == 125)
      {
        v6 = v16 + 1;
        if (!v12 && v6 != a3 && *v6 == 63)
        {
          v6 = v16 + 2;
          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
          v18 = __max;
LABEL_32:
          v21 = __s;
          v22 = 0;
LABEL_45:
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
          return v6;
        }

        v14 = __max;
        a5 = v8;
        a6 = v7;
        a1 = v11;
        v18 = __max;
LABEL_44:
        v21 = __s;
        v22 = 1;
        goto LABEL_45;
      }

      goto LABEL_57;
    }

    v23 = v16 + 1;
    if (v16 + 1 == a3)
    {
LABEL_57:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
      goto LABEL_58;
    }

    if (*v23 == 125)
    {
      v6 = v16 + 2;
      if (!v12 && v6 != a3 && *v6 == 63)
      {
        v6 = v16 + 3;
        v14 = __max;
        a5 = v8;
        a6 = v7;
        a1 = v11;
        goto LABEL_25;
      }

      v14 = __max;
      a5 = v8;
      a6 = v7;
      a1 = v11;
LABEL_35:
      v18 = -1;
      goto LABEL_44;
    }

    v30 = -1;
    v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v30);
    if (v23 != v25 && v25 != a3 && *v25 == 125)
    {
      v18 = v30;
      v14 = __max;
      if (v30 >= __max)
      {
        v6 = v25 + 1;
        v22 = 1;
        if (!v12 && v6 != a3)
        {
          v26 = v25[1];
          v22 = v26 != 63;
          if (v26 == 63)
          {
            v6 = v25 + 2;
          }
        }

        a5 = v8;
        a6 = v7;
        a1 = v11;
        v21 = __s;
        goto LABEL_45;
      }

      goto LABEL_57;
    }
  }

LABEL_58:
  v27 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v27, v28, v29);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            v6 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            return std::__repeat_one_loop<char>::__exec(v6, v7);
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:nn200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:nn200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:nn200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_144;
    }

    v5 = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_144;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_144:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_145:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_146:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_147:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (v7 + 136);
    while (1)
    {
      v8 = v5;
      v11 = v5;
      if (v5 == a3)
      {
        goto LABEL_131;
      }

      v12 = *v5;
      v11 = v5;
      if (v12 == 93)
      {
        goto LABEL_131;
      }

      v13 = 0;
      v14 = (v5 + 1);
      v56[0] = 0;
      v56[1] = 0;
      v57 = 0;
      v15 = 0;
      v11 = v8;
      if (v8 + 1 == a3 || v12 != 91)
      {
        goto LABEL_47;
      }

      v16 = *v14;
      switch(v16)
      {
        case '.':
          v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, v56);
          v15 = HIBYTE(v57);
          v13 = v56[1];
          goto LABEL_47;
        case ':':
          LOWORD(__src[0]) = 23866;
          v21 = std::__search_impl[abi:nn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v21 == a3)
          {
            goto LABEL_144;
          }

          v18 = v21;
          v22 = *(a1 + 24);
          std::string::__init_with_size[abi:nn200100]<char *,char *>(&__p, v8 + 2, v21, v21 - (v8 + 2));
          end_high = HIBYTE(__p.__end_);
          if (SHIBYTE(__p.__end_) >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__first_;
          }

          if (SHIBYTE(__p.__end_) < 0)
          {
            end_high = __p.__begin_;
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), p_p, end_high + p_p);
          if (SHIBYTE(__p.__end_) >= 0)
          {
            first = &__p;
          }

          else
          {
            first = __p.__first_;
          }

          classname = std::__get_classname(first, v22 & 1);
          if (SHIBYTE(__p.__end_) < 0)
          {
            operator delete(__p.__first_);
          }

          if (!classname)
          {
            goto LABEL_146;
          }

          v27 = 0;
          *(v7 + 160) |= classname;
          break;
        case '=':
          v62 = 23869;
          v17 = std::__search_impl[abi:nn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &v62, &__p);
          if (v17 == a3)
          {
            goto LABEL_144;
          }

          v18 = v17;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__src, a1, v8 + 2, v17);
          v19 = SHIBYTE(v61);
          if ((SHIBYTE(v61) & 0x8000000000000000) != 0)
          {
            v19 = __src[1];
            if (!__src[1])
            {
              goto LABEL_145;
            }

            v20 = __src[0];
          }

          else
          {
            if (!HIBYTE(v61))
            {
              goto LABEL_145;
            }

            v20 = __src;
          }

          std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__s, a1, v20, v19 + v20);
          v31 = HIBYTE(v59);
          if (SHIBYTE(v59) < 0)
          {
            v31 = __s[1];
          }

          if (v31)
          {
            v33 = *(v7 + 144);
            v32 = *(v7 + 152);
            if (v33 >= v32)
            {
              v37 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v10) >> 3);
              v38 = v37 + 1;
              if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_147;
              }

              v39 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *v10) >> 3);
              if (2 * v39 > v38)
              {
                v38 = 2 * v39;
              }

              if (v39 >= 0x555555555555555)
              {
                v40 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v40 = v38;
              }

              __p.__end_cap_.__value_ = (v7 + 136);
              if (v40)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v40);
              }

              begin = (24 * v37);
              __p.__first_ = 0;
              __p.__begin_ = (24 * v37);
              value = 0;
              __p.__end_ = (24 * v37);
              __p.__end_cap_.__value_ = 0;
              if ((HIBYTE(v59) & 0x80) != 0)
              {
                std::string::__init_copy_ctor_external(begin, __s[0], __s[1]);
                begin = __p.__begin_;
                end = __p.__end_;
                value = __p.__end_cap_.__value_;
              }

              else
              {
                v49 = *__s;
                *(24 * v37 + 0x10) = v59;
                *&begin->__r_.__value_.__l.__data_ = v49;
                end = (24 * v37);
              }

              v46 = end + 1;
              v51 = *(v7 + 136);
              v52 = *(v7 + 144) - v51;
              v53 = begin - v52;
              memcpy(begin - v52, v51, v52);
              v54 = *(v7 + 136);
              *(v7 + 136) = v53;
              *(v7 + 144) = v46;
              v55 = *(v7 + 152);
              *(v7 + 152) = value;
              __p.__end_ = v54;
              __p.__end_cap_.__value_ = v55;
              __p.__first_ = v54;
              __p.__begin_ = v54;
              std::__split_buffer<std::string>::~__split_buffer(&__p);
            }

            else
            {
              if (SHIBYTE(v59) < 0)
              {
                std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
              }

              else
              {
                v34 = *__s;
                *(v33 + 16) = v59;
                *v33 = v34;
              }

              v46 = (v33 + 24);
              *(v7 + 144) = v33 + 24;
            }

            *(v7 + 144) = v46;
          }

          else
          {
            v35 = HIBYTE(v61);
            if (v61 < 0)
            {
              v35 = __src[1];
            }

            if (v35 == 2)
            {
              if (v61 >= 0)
              {
                v45 = __src;
              }

              else
              {
                v45 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, *v45, *(v45 + 1));
            }

            else
            {
              if (v35 != 1)
              {
                goto LABEL_145;
              }

              if (v61 >= 0)
              {
                v36 = __src;
              }

              else
              {
                v36 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, *v36);
            }
          }

          if (SHIBYTE(v59) < 0)
          {
            operator delete(__s[0]);
          }

          if (SHIBYTE(v61) < 0)
          {
            operator delete(__src[0]);
          }

          v27 = 0;
          break;
        default:
          v13 = 0;
          v15 = 0;
          v11 = v8;
LABEL_47:
          v5 = *(a1 + 24) & 0x1F0;
          if (v15 >= 0)
          {
            v13 = v15;
          }

          if (!v13)
          {
            if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
            {
              v28 = *v11;
              if (v28 == 92)
              {
                if ((*(a1 + 24) & 0x1F0) != 0)
                {
                  std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v11 + 1, a3, v56);
                }

                else
                {
                  v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v11 + 1, a3, v56, v7);
                }

                v11 = v29;
                goto LABEL_85;
              }
            }

            else
            {
              LOBYTE(v28) = *v11;
            }

            if (v15 < 0)
            {
              v30 = v56[0];
              v56[1] = 1;
            }

            else
            {
              HIBYTE(v57) = 1;
              v30 = v56;
            }

            *v30 = v28;
            *(v30 + 1) = 0;
            ++v11;
          }

LABEL_85:
          if (v11 != a3)
          {
            v41 = *v11;
            if (v41 != 93)
            {
              v43 = v11 + 1;
              if (v11 + 1 != a3 && v41 == 45 && *v43 != 93)
              {
                memset(&__p, 0, 24);
                v11 += 2;
                if (v43 + 1 != a3 && *v43 == 91 && *v11 == 46)
                {
                  v44 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v43 + 2, a3, &__p);
                  goto LABEL_137;
                }

                if ((v5 | 0x40) == 0x40)
                {
                  LODWORD(v43) = *v43;
                  if (v43 == 92)
                  {
                    if (v5)
                    {
                      std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v11, a3, &__p);
                    }

                    else
                    {
                      v44 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v11, a3, &__p, v7);
                    }

LABEL_137:
                    v11 = v44;
LABEL_138:
                    *__src = *v56;
                    v61 = v57;
                    v56[1] = 0;
                    v57 = 0;
                    v56[0] = 0;
                    *__s = *&__p.__first_;
                    v59 = __p.__end_;
                    memset(&__p, 0, 24);
                    std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:nn200100](v7, __src, __s);
                    if (SHIBYTE(v59) < 0)
                    {
                      operator delete(__s[0]);
                    }

                    if (SHIBYTE(v61) < 0)
                    {
                      operator delete(__src[0]);
                    }

                    if (SHIBYTE(__p.__end_) < 0)
                    {
                      operator delete(__p.__first_);
                    }

LABEL_104:
                    v27 = 1;
                    goto LABEL_129;
                  }
                }

                else
                {
                  LOBYTE(v43) = *v43;
                }

                HIBYTE(__p.__end_) = 1;
                LOBYTE(__p.__first_) = v43;
                goto LABEL_138;
              }
            }
          }

          if (SHIBYTE(v57) < 0)
          {
            if (!v56[1])
            {
              operator delete(v56[0]);
LABEL_131:
              v5 = v11;
              goto LABEL_132;
            }

            if (v56[1] != 1)
            {
              v42 = v56[0];
LABEL_103:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, *v42, *(v42 + 1));
              goto LABEL_104;
            }

            v42 = v56[0];
          }

          else
          {
            if (!HIBYTE(v57))
            {
              goto LABEL_131;
            }

            v42 = v56;
            if (HIBYTE(v57) != 1)
            {
              goto LABEL_103;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, *v42);
          goto LABEL_104;
      }

      v5 = (v18 + 2);
      v11 = v8;
LABEL_129:
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56[0]);
        if ((v27 & 1) == 0)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }

      if (v27)
      {
        goto LABEL_131;
      }

LABEL_132:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}

void sub_1B3244560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v16 = 23854;
  v8 = std::__search_impl[abi:nn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v16, &v17);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  }

  else
  {
    v9 = v8;
    std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v14, a1, a2, v8);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v14;
    v10 = v15;
    *(a4 + 16) = v15;
    v11 = HIBYTE(v10);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a4 + 8);
    }

    if (v11 - 1 < 2)
    {
      return (v9 + 2);
    }
  }

  v13 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x61)
    {
      if (*a2 <= 0x52u)
      {
        if (!*a2)
        {
          if (*(a4 + 23) < 0)
          {
            *(a4 + 8) = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        }

        if (v6 == 68)
        {
          v7 = *(a5 + 164) | 0x400;
LABEL_22:
          *(a5 + 164) = v7;
          return a2 + 1;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      if (v6 == 83)
      {
        v7 = *(a5 + 164) | 0x4000;
        goto LABEL_22;
      }

      if (v6 != 87)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      *(a5 + 164) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:nn200100](a5);
      return a2 + 1;
    }

    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(v10);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_76;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }
  }

  else if (v5 != 92)
  {
    if (v5 == 97)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return;
    }

    if (v5 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 8;
LABEL_73:
        *a4 = v11;
        return;
      }

      v5 = 8;
      goto LABEL_57;
    }

LABEL_39:
    if ((v5 & 0xFFFFFFF8) == 0x30)
    {
      v6 = v5 - 48;
      if (a2 + 1 != a3)
      {
        v7 = a2[1];
        if ((v7 & 0xF8) == 0x30)
        {
          v6 = v7 + 8 * v6 - 48;
          if (a2 + 2 != a3)
          {
            v8 = a2[2];
            v9 = v8 & 0xF8;
            v10 = v8 + 8 * v6 - 48;
            if (v9 == 48)
            {
              v6 = v10;
            }
          }
        }
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v6;
        *(a4 + 1) = 0;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      }

      return;
    }

LABEL_76:
    v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:nn200100](v12, v13, v14);
    return;
  }

  if (!a4)
  {
    goto LABEL_57;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v5;
  *(a4 + 1) = 0;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:nn200100](uint64_t a1, void *__src, char *a3)
{
  v3 = a3;
  v4 = __src;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        if ((v7 & 0x8000000000000000) != 0)
        {
          if (i >= v4[1])
          {
LABEL_20:
            for (j = 0; ; ++j)
            {
              v16 = v3[23];
              if ((v16 & 0x8000000000000000) != 0)
              {
                if (j >= *(v3 + 1))
                {
                  goto LABEL_35;
                }

                v17 = *v3;
              }

              else
              {
                v17 = v3;
                if (j >= v16)
                {
                  goto LABEL_35;
                }
              }

              v18 = (*(**(a1 + 24) + 40))(*(a1 + 24), v17[j]);
              v19 = v3;
              if (v3[23] < 0)
              {
                v19 = *v3;
              }

              v19[j] = v18;
            }
          }

          v8 = *v4;
        }

        else
        {
          v8 = v4;
          if (i >= v7)
          {
            goto LABEL_20;
          }
        }

        v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), *(v8 + i));
        v10 = v4;
        if (*(v4 + 23) < 0)
        {
          v10 = *v4;
        }

        *(v10 + i) = v9;
      }
    }

    v13 = 0;
    v14 = *(__src + 23);
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    while (v13 < v14)
    {
      while (1)
      {
        ++v13;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

LABEL_17:
        if (v13 >= __src[1])
        {
          goto LABEL_29;
        }
      }
    }

LABEL_29:
    v20 = 0;
    v21 = a3[23];
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_32;
    }

    while (v20 < v21)
    {
      while (1)
      {
        ++v20;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

LABEL_32:
        if (v20 >= *(a3 + 1))
        {
          goto LABEL_35;
        }
      }
    }

LABEL_35:
    v22 = *(v4 + 23);
    if (v22 < 0)
    {
      v23 = v4;
      v4 = *v4;
      v22 = v23[1];
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&v37, a1 + 16, v4, v4 + v22);
    v24 = v3[23];
    if (v24 < 0)
    {
      v25 = v3;
      v3 = *v3;
      v24 = *(v25 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v35, a1 + 16, v3, &v3[v24]);
    *v39 = v37;
    v40 = v38;
    v38 = 0;
    *__p = *v35;
    v42 = v36;
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v37 = 0uLL;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((a1 + 88), v39);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      v26 = v37;
LABEL_66:
      operator delete(v26);
    }
  }

  else
  {
    v11 = *(__src + 23);
    if (v11 < 0)
    {
      v12 = __src[1];
    }

    else
    {
      v12 = *(__src + 23);
    }

    if (v12 != 1)
    {
      goto LABEL_68;
    }

    v27 = a3[23];
    if (v27 < 0)
    {
      v27 = *(a3 + 1);
    }

    if (v27 != 1)
    {
LABEL_68:
      v34 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      _Unwind_Resume(v34);
    }

    if (*(a1 + 169) == 1)
    {
      v28 = __src;
      if ((v11 & 0x80000000) != 0)
      {
        v28 = *__src;
      }

      v29 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v28);
      v30 = v4;
      if (*(v4 + 23) < 0)
      {
        v30 = *v4;
      }

      *v30 = v29;
      v31 = v3;
      if (v3[23] < 0)
      {
        v31 = *v3;
      }

      v32 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v31);
      v33 = v3;
      if (v3[23] < 0)
      {
        v33 = *v3;
      }

      *v33 = v32;
    }

    *v39 = *v4;
    v40 = v4[2];
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *__p = *v3;
    v42 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((a1 + 88), v39);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      v26 = v39[0];
      goto LABEL_66;
    }
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:nn200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B32451A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C530;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C530;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C500;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C500;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:nn200100](uint64_t a1)
{
  v6 = 95;
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), 95);
    v2 = a1 + 64;
    v3 = &v5;
LABEL_5:
    std::vector<char>::push_back[abi:nn200100](v2, v3);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v4 = 95;
    v2 = a1 + 64;
    v3 = &v4;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:nn200100](a1 + 64, &v6);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_93;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_93;
        }

        v4 = (a2 + 2);
        if (a2 + 2 == a3)
        {
          goto LABEL_93;
        }

        v9 = *v4;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_93;
        }

LABEL_43:
        if (v4 + 1 != a3)
        {
          v10 = v4[1];
          v11 = -48;
          if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
          {
            v10 |= 0x20u;
            if ((v10 - 97) >= 6u)
            {
              goto LABEL_93;
            }

            v11 = -87;
          }

          if (v4 + 2 != a3)
          {
            v12 = v4[2];
            v13 = -48;
            if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
            {
              v12 |= 0x20u;
              if ((v12 - 97) >= 6u)
              {
                goto LABEL_93;
              }

              v13 = -87;
            }

            v14 = v13 + v12 + 16 * (v11 + v10);
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v14;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
            }

            v4 += 3;
            return v4;
          }
        }

        goto LABEL_93;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_70;
        }

        goto LABEL_43;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 11;
LABEL_90:
        *a4 = v15;
        return ++v4;
      }

      v7 = 11;
      goto LABEL_75;
    }

    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 13;
        goto LABEL_90;
      }

      v7 = 13;
      goto LABEL_75;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 9;
        goto LABEL_90;
      }

      v7 = 9;
LABEL_75:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
      return ++v4;
    }

LABEL_70:
    v7 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
LABEL_72:
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v7;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_75;
    }

    goto LABEL_93;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 12;
        goto LABEL_90;
      }

      v7 = 12;
      goto LABEL_75;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 10;
        goto LABEL_90;
      }

      v7 = 10;
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v7 = 0;
    goto LABEL_75;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_93;
    }

    goto LABEL_70;
  }

  v4 = (a2 + 1);
  if (a2 + 1 != a3 && *v4 >= 65)
  {
    v6 = *v4;
    if (v6 < 0x5B || (v6 - 97) <= 0x19u)
    {
      v7 = v6 & 0x1F;
      goto LABEL_72;
    }
  }

LABEL_93:
  v17 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::__search_impl[abi:nn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v17, v18, v19, v20);
}

unsigned __int8 *std::__search_impl[abi:nn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1B3245D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B3245E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, &v16->second.__r_.__value_.__l.__data_) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, &v37->second.__r_.__value_.__l.__data_) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_1B3246680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B3246758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B3246874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:nn200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    v3 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(v3, v4);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
    return 1;
  }

  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__back_ref<char>::__exec(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::__back_ref<char>::~__back_ref(v10);
  }

  else
  {
    v5 = v3 + 24 * (v2 - 1);
    if (*(v5 + 16) == 1 && (v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && !memcmp(*v5, *(a2 + 16), v7))
    {
      *a2 = -994;
      *(a2 + 16) = v8 + v7;
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 0;
      *a2 = -993;
    }

    *(a2 + 80) = v9;
  }
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C5C0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C5C0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C590;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C62190);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F2A4C590;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_77;
  }

LABEL_41:
  if (v11 == v3)
  {
    return v3;
  }

  if (v11 == v4)
  {
    return v4;
  }

  v19 = a1->__marked_count_ + 1;
  v20 = *v11;
  if (v20 == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
    return v11 + 1;
  }

  if (v11 + 1 == v4 || v20 != 92)
  {
    return v11;
  }

  if (v11[1] == 123)
  {
    v21 = v11 + 2;
  }

  else
  {
    v21 = v11;
  }

  v3 = v11;
  if (v11 == v21)
  {
    return v3;
  }

  v33 = 0;
  v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v33);
  if (v22 == v21)
  {
    goto LABEL_78;
  }

  if (v22 == v4)
  {
    goto LABEL_77;
  }

  v23 = *v22;
  if (v23 != 44)
  {
    if (v22 + 1 != v4 && v23 == 92)
    {
      v4 = v22[1] == 125 ? v22 + 2 : v22;
      if (v22 != v4)
      {
        v25 = v33;
        v27 = a1;
        v26 = v33;
        goto LABEL_75;
      }
    }

    goto LABEL_77;
  }

  v32 = -1;
  v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v32);
  if (v24 != v4)
  {
    if (v24 + 1 == v4 || *v24 != 92)
    {
      goto LABEL_77;
    }

    if (v24[1] == 125)
    {
      v4 = v24 + 2;
    }

    else
    {
      v4 = v24;
    }
  }

  if (v4 == v24)
  {
LABEL_77:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_78;
  }

  v26 = v32;
  v25 = v33;
  if (v32 == -1)
  {
    v27 = a1;
    v26 = -1;
    goto LABEL_75;
  }

  if (v32 >= v33)
  {
    v27 = a1;
LABEL_75:
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
    return v4;
  }

LABEL_78:
  v29 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(v29, v30, v31);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_26;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_27;
      }

LABEL_26:
      v9 = a2;
      goto LABEL_27;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_27;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_21:
    v9 = a2 + 1;
    goto LABEL_27;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_21;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_27;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_26;
  }

  v13 = a2[2];
  if (v13 != 33)
  {
    if (v13 == 61)
    {
      std::regex_traits<char>::regex_traits(&v40.__traits_);
      memset(&v40.__flags_, 0, 40);
      v40.__flags_ = a1->__flags_;
      v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
      v15 = v40.__marked_count_;
      std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
      goto LABEL_56;
    }

    goto LABEL_26;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
LABEL_56:
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
LABEL_102:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_103;
  }

  v9 = v14 + 1;
  if (v40.__start_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40.__start_.__cntrl_);
  }

  std::locale::~locale(&v40.__traits_.__loc_);
LABEL_27:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 > 0x28u)
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
        goto LABEL_103;
      }

LABEL_75:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
      v8 = a2 + 1;
      goto LABEL_4;
    }

    if (v18 == 36)
    {
      goto LABEL_4;
    }

    if (v18 != 40)
    {
      goto LABEL_75;
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        ++a1->__open_count_;
        v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
        if (v23 != a3 && *v23 == 41)
        {
          --a1->__open_count_;
          v8 = v23 + 1;
          goto LABEL_4;
        }
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v24 = a1->__marked_count_;
        ++a1->__open_count_;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
        if (v25 != a3)
        {
          v26 = v25;
          if (*v25 == 41)
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
            --a1->__open_count_;
            v8 = v26 + 1;
            goto LABEL_4;
          }
        }
      }
    }

    goto LABEL_102;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_72:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 != 63)
    {
      goto LABEL_75;
    }

LABEL_103:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_104;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_103;
    }

    goto LABEL_72;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    goto LABEL_105;
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2 + 1;
    if ((v21 - 49) <= 8)
    {
      v8 = a2 + 2;
      if (a2 + 2 == a3)
      {
        v8 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v8;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v22 >= 0x19999999)
          {
            goto LABEL_104;
          }

          ++v8;
          v22 = v27 + 10 * v22 - 48;
          if (v8 == a3)
          {
            v8 = a3;
            break;
          }
        }

        if (!v22)
        {
          goto LABEL_104;
        }
      }

      if (v22 > marked_count)
      {
LABEL_104:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_105:
        v39 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        if (v40.__start_.__cntrl_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v40.__start_.__cntrl_);
        }

        std::locale::~locale(&v40.__traits_.__loc_);
        _Unwind_Resume(v39);
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
    }
  }

  if (v20 == v8)
  {
    v28 = *v20;
    if (v28 > 0x63)
    {
      if (v28 == 119)
      {
        v29 = a1;
        v30 = 0;
LABEL_92:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        started->__mask_ |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](started, 95);
LABEL_97:
        v8 = a2 + 2;
LABEL_98:
        if (v20 == v8)
        {
          v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
          if (v38 == v20)
          {
            v8 = a2;
          }

          else
          {
            v8 = v38;
          }
        }

        goto LABEL_4;
      }

      if (v28 == 115)
      {
        v36 = a1;
        v37 = 0;
LABEL_95:
        v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v36, v37);
        v34 = v33->__mask_ | 0x4000;
        goto LABEL_96;
      }

      v8 = a2 + 1;
      if (v28 != 100)
      {
        goto LABEL_98;
      }

      v31 = a1;
      v32 = 0;
    }

    else
    {
      if (v28 != 68)
      {
        if (v28 != 83)
        {
          v8 = a2 + 1;
          if (v28 != 87)
          {
            goto LABEL_98;
          }

          v29 = a1;
          v30 = 1;
          goto LABEL_92;
        }

        v36 = a1;
        v37 = 1;
        goto LABEL_95;
      }

      v31 = a1;
      v32 = 1;
    }

    v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v31, v32);
    v34 = v33->__mask_ | 0x400;
LABEL_96:
    v33->__mask_ = v34;
    goto LABEL_97;
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}