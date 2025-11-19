md::LabelPart *md::TransitNodeLabelFeature::newGraphicAnnotationPart(uint64_t a1, uint64_t *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    v56 = 0;
    v57 = 0;
    std::mutex::lock((a1 + 8));
    v9 = *(a1 + 152);
    if (!v9)
    {
      std::mutex::unlock((a1 + 8));
      v11 = 0;
      goto LABEL_82;
    }

    v10 = (*(*v9 + 16))(v9, &v56);
    std::mutex::unlock((a1 + 8));
    v11 = 0;
    if (v56 && v10)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v12 = md::TransitNodeLabelFeature::populateAnnotationInfos(v10, &v69);
      if (v69 == v70)
      {
        v11 = 0;
        goto LABEL_81;
      }

      v13 = *(a2[2] + 160);
      if (v13 >= 0)
      {
        v14 = *(a2[2] + 160);
      }

      else
      {
        v14 = -v13;
      }

      v15 = mdm::zone_mallocator::instance(v12);
      v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x2B8uLL);
      md::StackLabelPart::StackLabelPart(v11, 1, 0, 0, 0);
      (*(*v16 + 176))(v16, 7);
      *(v11 + 630) = 1;
      v68[2] = 0;
      v67 = v68;
      v68[0] = 0;
      v17 = v69;
      v18 = v70;
      if (v69 == v70)
      {
LABEL_78:
        (*(*v11 + 8))(v11);
        v11 = 0;
        goto LABEL_79;
      }

      v19 = 0;
      if (v13 <= 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v14;
      }

      v53 = v20;
      while (1)
      {
        v55 = 0uLL;
        v21 = *v17;
        if (*v17 == 1)
        {
          break;
        }

        if (v21 != 3)
        {
          if (v21 != 2)
          {
            goto LABEL_37;
          }

          v22 = v17[1];
          if (!v22)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

        v22 = v17[1];
        if (v22)
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v64, "");
          v23 = *(md::LabelStyle::textStyleGroup(a2[2], 0) + 8);
          v60 = v66;
          if (SHIBYTE(v65) < 0)
          {
            inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v64, *(&v64 + 1));
            v61 = v22;
            v62 = v23;
            v63 = 0;
            if (SHIBYTE(v65) < 0)
            {
              v29 = v64;
              v30 = mdm::zone_mallocator::instance(inited);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v30, v29);
            }
          }

          else
          {
            __dst = v64;
            v59 = v65;
            v61 = v22;
            v62 = v23;
            v63 = 0;
          }

          v31 = a2[2];
          if (!*(v31 + 296))
          {
            *(v31 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
          }

          md::LabelStyle::shieldIcon();
        }

LABEL_38:
        if (*(&v55 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v55 + 1));
        }

        v17 += 2;
        if (v17 == v18)
        {
          v32 = 1;
        }

        else
        {
          v32 = v22;
        }

        if (v32)
        {
          if (!v19)
          {
            goto LABEL_78;
          }

LABEL_79:
          std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(v68[0]);
LABEL_81:
          std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
          goto LABEL_82;
        }
      }

      v22 = geo::codec::VectorTile::transitLineForFeatureID(*(v56 + 1288), *(v56 + 1296), v17[1]);
      if (!v22)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (!geo::codec::featureGetNativeShieldCount(v22))
      {
        goto LABEL_37;
      }

      v54 = 0;
      v24 = atomic_load((*a2 + 3426));
      *&__dst = 0;
      geo::codec::featureGetNativeShield(v22, 0, &__dst, &v54, 0);
      v25 = localizedLabel(&v64, v22, __dst, v24 & 1, 0);
      v26 = v54;
      v27 = HIBYTE(v65);
      if (!v54)
      {
        goto LABEL_57;
      }

      v60 = v66;
      if (SHIBYTE(v65) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v64, *(&v64 + 1));
      }

      else
      {
        __dst = v64;
        v59 = v65;
      }

      v61 = v26;
      v62 = 0;
      v63 = 2;
      v33 = *(*(*a2 + 168) + 56);
      (*(*v33 + 24))(v33, v22, &v62, *(a1 + 916));
      v34 = v68[0];
      if (!v68[0])
      {
LABEL_51:
        std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelShieldEntry,md::LabelShieldEntry const&>(&v67, &__dst, &__dst);
        v35 = a2[2];
        if (!*(v35 + 296))
        {
          *(v35 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
        }

        md::LabelStyle::shieldIcon();
      }

      while (1)
      {
        if (!md::LabelShieldEntry::operator<(&__dst, (v34 + 32)))
        {
          v25 = md::LabelShieldEntry::operator<((v34 + 32), &__dst);
          if (!v25)
          {
            if (SHIBYTE(v59) < 0)
            {
              v36 = __dst;
              v37 = mdm::zone_mallocator::instance(v25);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
            }

            v27 = HIBYTE(v65);
LABEL_57:
            if (v27 < 0)
            {
              v38 = v64;
              v39 = mdm::zone_mallocator::instance(v25);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, v38);
            }

            if (v55)
            {
              if (v19 == v14)
              {
                LOBYTE(v22) = 1;
                v19 = v53;
              }

              else
              {
                v40 = mdm::zone_mallocator::instance(v25);
                v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v40, 0x340uLL);
                md::IconLabelPart::IconLabelPart(v22, &v55, 0, 0);
                ((*v22)[7].__shared_owners_)(v22, 10);
                md::CompositeLabelPart::addLabelPart(v11, v22);
                LOBYTE(v22) = 0;
                ++v19;
              }

              goto LABEL_38;
            }

LABEL_37:
            LOBYTE(v22) = 0;
            goto LABEL_38;
          }

          v34 += 8;
        }

        v34 = *v34;
        if (!v34)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_82:
    v45 = v57;
    if (v57)
    {
      goto LABEL_119;
    }

    return v11;
  }

  v4 = *(a1 + 480);
  v5 = *(v4 + 312);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  *&__dst = a1;
  *(&__dst + 1) = a2;
  v69 = 0;
  v70 = 0;
  v7 = a2[1];
  v8 = *(v7 + 1304);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_100;
      }

LABEL_66:
      v5 = *(a1 + 928);
      v6 = *(a1 + 936);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = v5;
      v70 = v6;
      v41 = 1;
LABEL_89:
      if (!v5)
      {
        goto LABEL_100;
      }

      goto LABEL_90;
    }

    v43 = *(a1 + 928);
    if (v43)
    {
      v5 = *(v43 + 32);
      v6 = *(v43 + 40);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = a2[1];
        v44 = *(v7 + 1304);
        v69 = v5;
        v70 = v6;
        if (v44 == 3)
        {
          v41 = 0;
          goto LABEL_89;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    v69 = v5;
    v70 = 0;
LABEL_88:
    v41 = 0;
    *(v7 + 1304) = 1;
    goto LABEL_89;
  }

  if (!*(v7 + 1304))
  {
    v6 = *(v4 + 320);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = a2[1];
      v42 = *(v7 + 1304);
      v69 = v5;
      v70 = v6;
      if (v42 == 3)
      {
        v41 = 0;
        goto LABEL_90;
      }
    }

    else
    {
      v69 = v5;
      v70 = 0;
    }

    v41 = 0;
    *(v7 + 1304) = 1;
LABEL_90:
    v46 = v6;
    while (1)
    {
      v11 = md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(&__dst, &v69);
      v47 = v11 ? 1 : v41;
      if (v47)
      {
        break;
      }

      v48 = v5[4];
      v6 = v5[5];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = v48;
      v70 = v6;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
      }

      v46 = v6;
      v5 = v48;
      if (!v48)
      {
        goto LABEL_100;
      }
    }

LABEL_108:
    if (!v46)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  if (v8 == 1)
  {
    goto LABEL_66;
  }

LABEL_100:
  v49 = a2[1];
  if (*(v49 + 1304) != 3)
  {
    *(v49 + 1304) = 3;
  }

  v5 = *(a1 + 944);
  if (v5)
  {
    v46 = *(a1 + 952);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v69 = v5;
    v70 = v46;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v11 = md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(&__dst, &v69);
    goto LABEL_108;
  }

  v11 = 0;
  v46 = v6;
  if (v6)
  {
LABEL_109:
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_110:
  *(a1 + 928) = v5;
  v50 = *(a1 + 936);
  *(a1 + 936) = v46;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  if (!*(a1 + 944))
  {
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a1 + 944) = v5;
    v51 = *(a1 + 952);
    *(a1 + 952) = v46;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }
  }

  if (v46)
  {
    v45 = v46;
LABEL_119:
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  return v11;
}

void sub_1B314D764(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    v34 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v34, a27);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(*(v32 - 152));
  std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v32 - 128));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::TransitNodeLabelFeature::populateAnnotationInfos(mdm::zone_mallocator *result, uint64_t a2)
{
  if (*(result + 274))
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 24;
    do
    {
      if (*(v3 + 275) == v4)
      {
        v6 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v6 >= v7)
        {
          v10 = (v6 - *a2) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            goto LABEL_33;
          }

          v12 = v7 - *a2;
          if (v12 >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          v43 = v5;
          if (v13)
          {
            v14 = mdm::zone_mallocator::instance(result);
            v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(v14, v13);
          }

          else
          {
            v15 = 0;
          }

          v16 = &v15[16 * v10];
          v17 = &v15[16 * v13];
          v18 = *(v3 + 296);
          *v16 = 3;
          *(v16 + 1) = v18;
          v9 = v16 + 16;
          v19 = *(a2 + 8) - *a2;
          v20 = &v16[-v19];
          memcpy(&v16[-v19], *a2, v19);
          v21 = *a2;
          *a2 = v20;
          *(a2 + 8) = v9;
          v22 = *(a2 + 16);
          *(a2 + 16) = v17;
          v41 = v21;
          v42 = v22;
          v39 = v21;
          v40 = v21;
          std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(&v39);
        }

        else
        {
          v8 = *(v3 + 296);
          *v6 = 3;
          *(v6 + 8) = v8;
          v9 = (v6 + 16);
        }

        *(a2 + 8) = v9;
      }

      result = geo::codec::vectorTransitLineForTransitNodeSubtitleIndex(v3, v4);
      if (result)
      {
        v23 = result;
        v25 = *(a2 + 8);
        v24 = *(a2 + 16);
        if (v25 >= v24)
        {
          v27 = (v25 - *a2) >> 4;
          v28 = v27 + 1;
          if ((v27 + 1) >> 60)
          {
LABEL_33:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v29 = v24 - *a2;
          if (v29 >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          v43 = v5;
          if (v30)
          {
            v31 = mdm::zone_mallocator::instance(result);
            v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(v31, v30);
          }

          else
          {
            v32 = 0;
          }

          v33 = &v32[16 * v27];
          v34 = &v32[16 * v30];
          *v33 = 2;
          *(v33 + 1) = v23;
          v26 = v33 + 16;
          v35 = *(a2 + 8) - *a2;
          v36 = &v33[-v35];
          memcpy(&v33[-v35], *a2, v35);
          v37 = *a2;
          *a2 = v36;
          *(a2 + 8) = v26;
          v38 = *(a2 + 16);
          *(a2 + 16) = v34;
          v41 = v37;
          v42 = v38;
          v39 = v37;
          v40 = v37;
          result = std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(&v39);
        }

        else
        {
          *v25 = 2;
          *(v25 + 8) = result;
          v26 = (v25 + 16);
        }

        *(a2 + 8) = v26;
      }

      ++v4;
    }

    while (*(v3 + 274) > v4);
  }

  return result;
}

void std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1022040661CCA83uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(v5, v4);
  }

  return a1;
}

md::CompositeLabelPart *md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(mdm::zone_mallocator *a1, unsigned __int8 ******a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = mdm::zone_mallocator::instance(a1);
  v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v3, 0x2C0uLL);
  v5 = *(*a2 + 24);
  md::StackLabelPart::StackLabelPart(v4, 1, 0, 0, 0);
  *v6 = &unk_1F2A05190;
  *(v6 + 694) = v5;
  *(v6 + 695) = 1;
  md::LabelPart::setContentType(v6, 7);
  v27 = v4;
  *(v4 + 630) = 1;
  v7 = **a2;
  v24 = (*a2)[1];
  if (v7 != v24)
  {
    while (1)
    {
      v8 = *v7;
      v9 = v7[1];
      v26 = v7;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        v25 = v9;
        v12 = *(a1 + 1);
        do
        {
          v13 = *v11;
          v14 = **v11;
          switch(v14)
          {
            case 3:
              v16 = *(v13 + 6);
              if (v16)
              {
                std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v28, "");
                v17 = *(md::LabelStyle::textStyleGroup(*(v12 + 16), 0) + 8);
                v33 = v30;
                if (SHIBYTE(v29) < 0)
                {
                  inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v28, *(&v28 + 1));
                  v34 = v16;
                  v35 = v17;
                  v36 = 0;
                  if (SHIBYTE(v29) < 0)
                  {
                    v19 = v28;
                    v20 = mdm::zone_mallocator::instance(inited);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, v19);
                  }
                }

                else
                {
                  __dst = v28;
                  v32 = v29;
                  v34 = v16;
                  v35 = v17;
                  v36 = 0;
                }

                v21 = *(v12 + 16);
                if (!*(v21 + 296))
                {
                  *(v21 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(v12 + 16), 0);
                }

                md::LabelStyle::shieldIcon();
              }

              break;
            case 2:
              *&v28 = *(v13 + 5);
              std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](&__dst, &v28, 1uLL);
              std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>> &,0>();
            case 1:
              md::LabelShieldEntry::LabelShieldEntry(&__dst, 2, (v13 + 8), *(v13 + 6), v13 + 14);
              v15 = *(v12 + 16);
              if (!*(v15 + 296))
              {
                *(v15 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(v12 + 16), 0);
              }

              md::LabelStyle::shieldIcon();
          }

          v11 += 2;
        }

        while (v11 != v10);
        v9 = v25;
      }

      if ((v8[1] - *v8) >> 4)
      {
        break;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v7 = v26 + 2;
      if (v26 + 2 == v24)
      {
        return v27;
      }
    }

    (*(*v27 + 8))(v27);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    return 0;
  }

  return v27;
}

void sub_1B314E0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v43 = *(v41 - 144);
  if (v43)
  {
    *(v41 - 136) = v43;
    free(v43);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitNodeLabelFeature::annotationTextIndex(uint64_t a1, void *a2, int a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    if ((*(a1 + 917) & 1) == 0)
    {
      *(a1 + 917) = -255;
      v55 = 0;
      v56 = 0;
      std::mutex::lock((a1 + 8));
      v7 = *(a1 + 152);
      if (v7)
      {
        v8 = (*(*v7 + 16))(v7, &v55);
        std::mutex::unlock((a1 + 8));
        if (v55 && v8)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          md::TransitNodeLabelFeature::populateAnnotationInfos(v8, &v69);
          if (v69 != v70)
          {
            v53 = 0;
            __s = 0;
            v51 = 0;
            v52 = 0;
            v9 = atomic_load((*a2 + 3426));
            if (v9)
            {
              geo::codec::transitNodeFeatureGetLocalizedParentheticalLabels(v8, &__s, &v53, &v52, &v51);
            }

            if (__s && (v10 = v53) != 0 && v52)
            {
              v11 = 1;
              v12 = 1;
            }

            else
            {
              geo::codec::transitNodeFeatureGetNativeParentheticalLabels(v8, &__s, &v53, &v52, &v51);
              v10 = v53;
              v12 = __s != 0;
              v11 = v52 != 0;
            }

            if (v12 && v10 && v11)
            {
              v13 = *(a2[2] + 160);
              v50 = v13 < 1;
              if (v13 >= 0)
              {
                v14 = *(a2[2] + 160);
              }

              else
              {
                v14 = -v13;
              }

              std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v67, v10);
              v66 = 0;
              v64 = &v65;
              v65 = 0;
              v15 = v69;
              v16 = v70;
              if (v69 != v70)
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                while (!v19)
                {
                  if (*v15 != 2 || (v20 = *(v15 + 8)) == 0)
                  {
                    v19 = 0;
                    goto LABEL_61;
                  }

                  v21 = atomic_load((*a2 + 3426));
                  v57[0] = 0;
                  geo::codec::transitLineGetSubtitleNativeLabel(v20, v57);
                  v22 = localizedLabel(&__dst, v20, v57[0], v21 & 1, 0);
                  v23 = HIBYTE(v60);
                  v24 = HIBYTE(v60);
                  if (v60 < 0)
                  {
                    v23 = *(&__dst + 1);
                  }

                  if (v23)
                  {
                    for (i = v65; i; i = *i)
                    {
                      v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, i + 4);
                      if ((v22 & 0x80) == 0)
                      {
                        v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(i + 4, &__dst);
                        if ((v22 & 0x80) == 0)
                        {
                          goto LABEL_40;
                        }

                        ++i;
                      }
                    }

                    if (v18 == v14)
                    {
                      v26 = 0;
                      v19 = v50;
                      v18 = v14;
                      goto LABEL_58;
                    }

                    v27 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(&v64, v57, &__dst);
                    if (!*v27)
                    {
                      v28 = v27;
                      v29 = mdm::zone_mallocator::instance(v27);
                      v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(v29);
                      v31 = v30;
                      *(v30 + 56) = v61;
                      if (SHIBYTE(v60) < 0)
                      {
                        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((v30 + 4), __dst, *(&__dst + 1));
                      }

                      else
                      {
                        *(v30 + 2) = __dst;
                        v30[6] = v60;
                      }

                      v32 = v57[0];
                      *v31 = 0;
                      v31[1] = 0;
                      v31[2] = v32;
                      *v28 = v31;
                      if (*v64)
                      {
                        v64 = *v64;
                        v31 = *v28;
                      }

                      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v65, v31);
                      ++v66;
                    }

                    if (v17)
                    {
                      v33 = strlen(__s);
                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, __s, v33);
                    }

                    if (v60 >= 0)
                    {
                      p_dst = &__dst;
                    }

                    else
                    {
                      p_dst = __dst;
                    }

                    if (v60 >= 0)
                    {
                      v35 = HIBYTE(v60);
                    }

                    else
                    {
                      v35 = *(&__dst + 1);
                    }

                    v22 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, p_dst, v35);
                    v19 = 0;
                    ++v18;
                    v17 = 1;
                    v24 = HIBYTE(v60);
                  }

                  else
                  {
LABEL_40:
                    v19 = 0;
                  }

                  v26 = 1;
LABEL_58:
                  if (v24 < 0)
                  {
                    v36 = __dst;
                    v37 = mdm::zone_mallocator::instance(v22);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
                  }

                  if ((v26 & 1) == 0)
                  {
LABEL_62:
                    if ((v17 & 1) != 0 && !v19)
                    {
                      v38 = strlen(v52);
                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, v52, v38);
                      if (v51)
                      {
                        v39 = v51;
                      }

                      else
                      {
                        v39 = "";
                      }

                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v57, v39);
                      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&__dst, &v67, v57);
                      v40 = md::PointLabelFeature::indexForTextEntry(a1, &__dst);
                      *(a1 + 918) = v40;
                      if (v63 < 0)
                      {
                        v41 = v62;
                        v42 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v42, v41);
                      }

                      if (SHIBYTE(v60) < 0)
                      {
                        v43 = __dst;
                        v44 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, v43);
                      }

                      if (v58 < 0)
                      {
                        v45 = v57[0];
                        v46 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v46, v45);
                      }
                    }

                    break;
                  }

LABEL_61:
                  v15 += 16;
                  if (v15 == v16)
                  {
                    goto LABEL_62;
                  }
                }
              }

              std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(v65);
              if (v68 < 0)
              {
                v48 = v67;
                v49 = mdm::zone_mallocator::instance(v47);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v49, v48);
              }
            }
          }

          std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
        }
      }

      else
      {
        std::mutex::unlock((a1 + 8));
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v56);
      }
    }

    return *(a1 + 918);
  }

  return md::PointLabelFeature::annotationTextIndex(a1, a2, a3);
}

void sub_1B314E6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33)
{
  std::__tree_node_destructor<geo::allocator_adapter<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](0, v33);
  if (a26 < 0)
  {
    v37 = mdm::zone_mallocator::instance(v36);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, a21);
  }

  std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(a33);
  if (*(v34 - 137) < 0)
  {
    v39 = *(v34 - 160);
    v40 = mdm::zone_mallocator::instance(v38);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, v39);
  }

  std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v34 - 128));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void **std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(void **a1, void *__src, size_t __len)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v8 = a1[1];
    v7 = (a1[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
    v8 = *(a1 + 23);
  }

  if (v7 - v8 >= __len)
  {
    if (__len)
    {
      v9 = a1;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = *a1;
      }

      memmove(&v9[v8], __src, __len);
      v10 = v8 + __len;
      if (*(a1 + 23) < 0)
      {
        a1[1] = v10;
      }

      else
      {
        *(a1 + 23) = v10 & 0x7F;
      }

      v9[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(a1, v7, __len - v7 + v8, v8, v8, 0, __len, __src);
  }

  return a1;
}

uint64_t md::TransitNodeLabelFeature::iconColor@<X0>(md::TransitNodeLabelFeature *this@<X0>, const md::LabelIconStyleGroup *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(*this + 64))(this);
  v7 = *(a2 + 89);
  if (!result || (v7 != 3 ? (v8 = v7 == 0) : (v8 = 1), !v8 || ((*a3 = *(this + 228), a3[4] = 1, v7) ? (v9 = v7 == 3) : (v9 = 1), !v9)))
  {
    if ((v7 & 0xFFFFFFFD) != 0)
    {
      v10 = 0;
      *a3 = 0;
    }

    else
    {
      *a3 = *(a2 + 18);
      v10 = 1;
    }

    a3[4] = v10;
  }

  return result;
}

mdm::zone_mallocator *md::TransitNodeLabelFeature::newMultiPoiIconPart(mdm::zone_mallocator *a1, uint64_t *a2)
{
  v2 = a1;
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = a2[2];
  v4 = *(v3 + 296);
  if (!v4)
  {
    a1 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v4 = *a1;
    *(v3 + 296) = *a1;
  }

  v5 = *(v4 + 68);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  __dst = 0;
  v26 = 0;
  if (v5 == 37)
  {
    if (&v24 == (v2 + 840))
    {
      v10 = 0;
    }

    else
    {
      v8 = *(v2 + 105);
      v9 = *(v2 + 106);
      v10 = v9 - v8;
      if (v9 != v8)
      {
        if ((v10 >> 2) >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v24, v10 >> 2);
        v11 = __dst;
        a1 = memmove(__dst, v8, v10);
        v10 += v11;
      }

      __dst = v10;
    }
  }

  else
  {
    if (v5 == 49)
    {
      v22 = 0;
    }

    else
    {
      if (v5 != 50)
      {
LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }

      v22 = 1;
    }

    v32[2] = 0;
    v31 = v32;
    v32[0] = 0;
    v6 = *(v2 + 93);
    v21 = *(v2 + 94);
    if (v6 == v21)
    {
      v7 = 0;
    }

    else
    {
      do
      {
        if (v22 && *(v6 + 6))
        {
          _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        if (*v6)
        {
          _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        if (*(v6 + 9))
        {
          std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v24, __dst, (*(v2 + 97) + 4 * *(v6 + 8)), (*(v2 + 97) + 4 * (*(v6 + 8) + *(v6 + 9))), *(v6 + 9));
        }

        v6 += 12;
      }

      while (v6 != v21);
      v7 = v32[0];
    }

    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(v7);
    v10 = __dst;
  }

  if (v24 != v10)
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v27 == v28)
  {
    goto LABEL_30;
  }

  v12 = v28 - v27;
  v13 = mdm::zone_mallocator::instance(a1);
  if (v12 == 16)
  {
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x350uLL);
    md::PointIconLabelPart::PointIconLabelPart(v14, v27, *a2, a2[1], a2[2], v5);
  }

  else
  {
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x2F8uLL);
    v16 = md::MultipleIconLabelPart::MultipleIconLabelPart(v14, a2[2], v5);
    *(v14 + 630) = 1;
    v17 = v27;
    v18 = v28;
    while (v17 != v18)
    {
      v19 = mdm::zone_mallocator::instance(v16);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v19, 0x340uLL);
      md::IconLabelPart::IconLabelPart(v20, v17, 0, 0);
      (*(*v20 + 176))(v20, 4);
      v16 = md::CompositeLabelPart::addLabelPart(v14, v20);
      v17 += 16;
    }
  }

LABEL_31:
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v24);
  v30.__vftable = &v27;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v30);
  return v14;
}

void sub_1B314F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a34);
  *(v47 - 128) = &a38;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v47 - 128));
  _Unwind_Resume(a1);
}

int *std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = v7;
          v7 = *v6;
          if (v8 != *v6)
          {
            v5[1] = v7;
            ++v5;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

mdm::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(mdm::zone_mallocator *result, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v6 = __src;
  v8 = result;
  v10 = *(result + 1);
  v9 = *(result + 2);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *result;
    v12 = a5 + (&v10[-*result] >> 2);
    if (v12 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = &__dst[-v11] >> 2;
    v45[4] = result + 24;
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(result);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v15];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v6++;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v14];
    memcpy(&v34[4 * a5], __dst, *(v8 + 1) - __dst);
    v39 = *v8;
    v40 = &v34[4 * a5 + *(v8 + 1) - __dst];
    *(v8 + 1) = __dst;
    v41 = (__dst - v39);
    v42 = &v34[-(__dst - v39)];
    memcpy(v42, v39, v41);
    v43 = *v8;
    *v8 = v42;
    *(v8 + 1) = v40;
    v44 = *(v8 + 2);
    *(v8 + 2) = v38;
    v45[2] = v43;
    v45[3] = v44;
    v45[0] = v43;
    v45[1] = v43;
    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(v45);
  }

  v18 = v10 - __dst;
  v19 = (v10 - __dst) >> 2;
  if (v19 >= a5)
  {
    v30 = &__dst[4 * a5];
    v31 = &v10[-4 * a5];
    v32 = *(result + 1);
    while (v31 < v10)
    {
      v33 = *v31;
      v31 += 4;
      *v32++ = v33;
    }

    *(result + 1) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v30);
    }

    v29 = 4 * a5;
    v27 = __dst;
    v28 = v6;
    goto LABEL_29;
  }

  v21 = a4 - &__src[v18];
  if (a4 != &__src[v18])
  {
    result = memmove(*(result + 1), &__src[v18], a4 - &__src[v18]);
  }

  v22 = &v10[v21];
  *(v8 + 1) = &v10[v21];
  if (v19 >= 1)
  {
    v23 = &__dst[4 * a5];
    v24 = &v10[v21];
    if (&v22[-4 * a5] < v10)
    {
      v25 = &__dst[a4];
      v26 = &__dst[a4 + -4 * a5];
      do
      {
        *(v25 - v6) = *(v26 - v6);
        v26 += 4;
        v25 += 4;
      }

      while (v26 - v6 < v10);
      v24 = (v25 - v6);
    }

    *(v8 + 1) = v24;
    if (v22 != v23)
    {
      result = memmove(&__dst[4 * a5], __dst, v22 - v23);
    }

    if (v10 != __dst)
    {
      v27 = __dst;
      v28 = v6;
      v29 = v10 - __dst;
LABEL_29:

      return memmove(v27, v28, v29);
    }
  }

  return result;
}

char *md::TransitNodeLabelFeature::newIconPart(uint64_t *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(v4 + 296);
  if (!v5)
  {
    v6 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
    v5 = *v6;
    *(v4 + 296) = *v6;
  }

  if (*(v5 + 88) == 6)
  {
    if ((*(*a1 + 64))(a1))
    {
      return 0;
    }

    v10 = mdm::zone_mallocator::instance(0);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v10, 0x338uLL);
    v11 = **(a2 + 64);
    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    v14 = *a2;
    md::ImageLabelPart::ImageLabelPart(v7);
    *v15 = &unk_1F29ED9B8;
    *(v7 + 636) = xmmword_1B33B0720;
    *(v15 + 652) = 1065353216;
    *(v15 + 656) = 0;
    *(v15 + 658) = 0;
    *(v15 + 659) = -1;
    *(v15 + 663) = -1;
    *(v15 + 664) = 0;
    *(v15 + 676) = 256;
    *(v15 + 678) = 1;
    *(v7 + 680) = xmmword_1B33B0720;
    *(v15 + 696) = 1065353216;
    *(v15 + 700) = 0;
    *(v15 + 702) = 0;
    *(v15 + 703) = -1;
    *(v15 + 707) = -1;
    *(v15 + 708) = 0;
    *(v15 + 720) = 256;
    *(v15 + 722) = 1;
    *(v15 + 792) = 0;
    *(v7 + 744) = 0u;
    v16 = v7 + 744;
    *(v7 + 728) = 0u;
    v17 = (v15 + 760);
    *(v15 + 776) = 0;
    *(v7 + 760) = 0u;
    *(v15 + 812) = *(v14 + 176);
    *(v15 + 816) = 1;
    if ((*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64)))
    {
      v18 = *(v13 + 1320);
      if (!v18 || !*v18)
      {
        if (!*(v12 + 37))
        {
          *(v12 + 37) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
        }

        geo::GEOFeature_retain_ptr::GEOFeature_retain_ptr(&v30, v11);
        (*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64));
        operator new();
      }

      v19 = *((*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64)) + 32);
      if (v19)
      {
        (*(*v19 + 8))(&v30);
        v20 = v30;
      }

      else
      {
        v20 = 0uLL;
      }

      v30 = 0uLL;
      v21 = *(v7 + 94);
      *v16 = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v30 + 1));
        }

        if (!*v16)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v20)
      {
LABEL_34:
        v22 = (*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64));
        md::LabelExternalObjectsModerator::registerIconForAsynchModeUpdates(v22, v16);
        atomic_store(1u, v7 + 819);
      }
    }

LABEL_35:
    v23 = *(v12 + 37);
    if (!v23)
    {
      v24 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
      v23 = *v24;
      *(v12 + 37) = *v24;
    }

    *(v7 + 143) = *(v23 + 28);
    (*(*v7 + 152))(v7);
    v25 = md::LabelStyle::monitorIconName(v12);
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v17, v25);
    v26 = *(v12 + 37);
    if (!v26)
    {
      v27 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
      v26 = *v27;
      *(v12 + 37) = *v27;
    }

    v7[800] = *(v26 + 92);
    *(v7 + 99) = *(v26 + 56);
    return v7;
  }

  if (*(a1 + 141) == 1)
  {
    memset(v29, 0, sizeof(v29));
    v31 = 0;
    *(&v30 + 1) = 0;
    *&v30 = &v30 + 8;
    v8 = a1[93];
    for (i = a1[94]; v8 != i; v8 += 12)
    {
      if (*v8)
      {
        operator new();
      }

      if (*(v8 + 6))
      {
        operator new();
      }
    }

    if (a1[105] != a1[106])
    {
      operator new();
    }

    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(*(&v30 + 1));
    *&v30 = v29;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v30);
  }

  return md::PointLabelFeature::newIconPart(a1, a2);
}

void sub_1B314FF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, mdm::zone_mallocator *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  geo::read_write_lock::unlock((v28 + 32));
  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (v26[783] < 0)
  {
    v31 = *a12;
    v32 = mdm::zone_mallocator::instance(v30);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v32, v31);
  }

  v33 = *(v26 + 94);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(v26 + 92);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  *v26 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(v26 + 39);
  md::CollisionObject::~CollisionObject(v26 + 9);
  v36 = mdm::zone_mallocator::instance(v35);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v36, v26);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelAttributePairWithFallback>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A381D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::TransitNodeLabelFeature::populateTransitLinesFeatureIDs(void *result, void *a2)
{
  if (result + 109 != a2)
  {
    return std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(a2, result[109], result[110], (result[110] - result[109]) >> 3);
  }

  return result;
}

mdm::zone_mallocator *md::TransitNodeLabelFeature::populateStyleQueries(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v6 = (*(*a1 + 560))(a1, &v36);
  v7 = v37;
  if (*(a1 + 916) == 1)
  {
    if (v37 >= v38)
    {
      v8 = v37 - v36;
      if ((v8 + 1) >> 61)
      {
        goto LABEL_37;
      }

      v9 = (v38 - v36) >> 2;
      if (v9 <= v8 + 1)
      {
        v9 = v8 + 1;
      }

      if (v38 - v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v35 = v39;
      if (v10)
      {
        v11 = mdm::zone_mallocator::instance(v6);
        v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v11, v10);
      }

      else
      {
        v12 = 0;
      }

      v14 = &v12[8 * v10];
      v13 = &v12[8 * v8];
      *v13 = 0x100010002;
      v7 = (v13 + 8);
      v15 = &v13[-(v37 - v36)];
      memcpy(v15, v36, v37 - v36);
      v16 = v36;
      v17 = v38;
      v36 = v15;
      v37 = v7;
      v38 = v14;
      v33 = v16;
      v34 = v17;
      v31 = v16;
      v32 = v16;
      v6 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v31);
    }

    else
    {
      *v37 = 0x100010002;
      ++v7;
    }

    v37 = v7;
  }

  v18 = *(a1 + 921);
  if (v18 == 5)
  {
    goto LABEL_32;
  }

  if (v7 >= v38)
  {
    v19 = v7 - v36;
    if (!((v19 + 1) >> 61))
    {
      v20 = (v38 - v36) >> 2;
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      if (v38 - v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      v35 = v39;
      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(v6);
        v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v22, v21);
      }

      else
      {
        v23 = 0;
      }

      v25 = &v23[8 * v21];
      v24 = &v23[8 * v19];
      *v24 = (v18 << 32) | 0x1002B;
      v7 = v24 + 1;
      v26 = v24 - (v37 - v36);
      memcpy(v26, v36, v37 - v36);
      v27 = v36;
      v28 = v38;
      v36 = v26;
      v37 = v7;
      v38 = v25;
      v33 = v27;
      v34 = v28;
      v31 = v27;
      v32 = v27;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v31);
      goto LABEL_31;
    }

LABEL_37:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v7++ = (v18 << 32) | 0x1002B;
LABEL_31:
  v37 = v7;
LABEL_32:
  if (v36 != v7)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v31, a3, (a1 + 696), v30);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v31);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v36);
  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v30, 0);
}

void sub_1B3150658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::TransitNodeLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v74[1] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v59);
  md::PointLabelFeature::debugString(a1, a2, a3, a4, &v64);
  if (SHIBYTE(v66) >= 0)
  {
    v10 = &v64;
  }

  else
  {
    v10 = v64;
  }

  if (SHIBYTE(v66) >= 0)
  {
    v11 = HIBYTE(v66);
  }

  else
  {
    v11 = v65;
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, v10, v11);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v64);
  }

  v73 = 0;
  v72 = 0u;
  v70 = 0;
  v69 = 0u;
  v13 = *(a1 + 744);
  for (i = *(a1 + 752); v13 != i; v13 += 12)
  {
    v15 = *(&v72 + 1);
    if (*(&v72 + 1) >= v73)
    {
      v17 = v72;
      v18 = *(&v72 + 1) - v72;
      v19 = (*(&v72 + 1) - v72) >> 2;
      v20 = v19 + 1;
      if ((v19 + 1) >> 62)
      {
        goto LABEL_68;
      }

      v21 = &v73[-v72];
      if (&v73[-v72] >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      v68 = v74;
      if (v22)
      {
        v23 = mdm::zone_mallocator::instance(v12);
        v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v23, v22);
        v17 = v72;
        v18 = *(&v72 + 1) - v72;
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[4 * v19];
      v26 = &v24[4 * v22];
      v27 = &v25[-4 * ((*(&v72 + 1) - v72) >> 2)];
      *v25 = *v13;
      v16 = v25 + 4;
      memcpy(v27, v17, v18);
      v28 = v72;
      v29 = v73;
      *&v72 = v27;
      *(&v72 + 1) = v16;
      v73 = v26;
      v66 = v28;
      v67 = v29;
      v64 = v28;
      v65 = v28;
      v12 = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(&v64);
    }

    else
    {
      **(&v72 + 1) = *v13;
      v16 = (v15 + 4);
    }

    *(&v72 + 1) = v16;
    v30 = *(v13 + 6);
    if (*(v13 + 6))
    {
      v31 = (*(a1 + 808) + 4 * *(v13 + 4));
      v32 = 4 * v30;
      v33 = *(&v69 + 1);
      if (v30 <= &v70[-*(&v69 + 1)] >> 2)
      {
        do
        {
          v40 = *v31++;
          *v33++ = v40;
          v32 -= 4;
        }

        while (v32);
        *(&v69 + 1) = v33;
      }

      else
      {
        v34 = *(&v69 + 1) - v69;
        v35 = v30 + ((*(&v69 + 1) - v69) >> 2);
        if (v35 >> 62)
        {
LABEL_68:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v36 = &v70[-v69];
        if (&v70[-v69] >> 1 > v35)
        {
          v35 = v36 >> 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v37 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        v68 = &v71;
        if (v37)
        {
          v38 = mdm::zone_mallocator::instance(v12);
          v39 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v38, v37);
        }

        else
        {
          v39 = 0;
        }

        v41 = &v39[4 * (v34 >> 2)];
        v42 = &v41[4 * v30];
        v43 = v41;
        do
        {
          v44 = *v31++;
          *v43 = v44;
          v43 += 4;
          v32 -= 4;
        }

        while (v32);
        v45 = &v39[4 * v37];
        memcpy(v42, v33, *(&v69 + 1) - v33);
        v46 = &v42[*(&v69 + 1) - v33];
        *(&v69 + 1) = v33;
        v47 = v33 - v69;
        v48 = (v41 - (v33 - v69));
        memcpy(v48, v69, v47);
        v49 = v69;
        v50 = v70;
        *&v69 = v48;
        *(&v69 + 1) = v46;
        v70 = v45;
        v66 = v49;
        v67 = v50;
        v64 = v49;
        v65 = v49;
        v12 = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(&v64);
      }
    }
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v51 = std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(v69, *(&v69 + 1));
  if (v51 != *(&v69 + 1))
  {
    *(&v69 + 1) = v51;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, " SystemTypes:", 13);
  ArrayToCommaSeparatedString<unsigned int>(&v64, &v72);
  if (SHIBYTE(v66) >= 0)
  {
    v52 = &v64;
  }

  else
  {
    v52 = v64;
  }

  if (SHIBYTE(v66) >= 0)
  {
    v53 = HIBYTE(v66);
  }

  else
  {
    v53 = v65;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, v52, v53);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v64);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, " LineTypes:", 11);
  ArrayToCommaSeparatedString<unsigned int>(&v64, &v69);
  if (SHIBYTE(v66) >= 0)
  {
    v54 = &v64;
  }

  else
  {
    v54 = v64;
  }

  if (SHIBYTE(v66) >= 0)
  {
    v55 = HIBYTE(v66);
  }

  else
  {
    v55 = v65;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, v54, v55);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v64);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, " TransitTypes:", 14);
  ArrayToCommaSeparatedString<unsigned int>(&v64, (a1 + 840));
  if (SHIBYTE(v66) >= 0)
  {
    v56 = &v64;
  }

  else
  {
    v56 = v64;
  }

  if (SHIBYTE(v66) >= 0)
  {
    v57 = HIBYTE(v66);
  }

  else
  {
    v57 = v65;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, v56, v57);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v64);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v59, "\n", 1);
  std::ostringstream::str[abi:nn200100](a5, &v59);
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v72);
  v59 = *MEMORY[0x1E69E54E8];
  *(&v59 + *(v59 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v60 = MEMORY[0x1E69E5548] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v61);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v63);
}

void sub_1B3150C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v28 - 177) < 0)
  {
    operator delete(*(v28 - 200));
  }

  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v28 - 160));
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v28 - 128));
  a11 = *MEMORY[0x1E69E54E8];
  *(&a11 + *(a11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a12 = MEMORY[0x1E69E5548] + 16;
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a13);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a28);
  _Unwind_Resume(a1);
}

uint64_t ArrayToCommaSeparatedString<unsigned int>(_BYTE *a1, unsigned int **a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v8);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, ",", 1);
      }

      MEMORY[0x1B8C61C90](&v8, *v4);
      v6 = 0;
      ++v4;
    }

    while (v4 != v5);
  }

  std::ostringstream::str[abi:nn200100](a1, &v8);
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v12);
}

void sub_1B3150F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

BOOL md::TransitNodeLabelFeature::updateDynamicStyling(md::TransitNodeLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  if ((*(*this + 64))(this, a2, a3))
  {
    v5 = *(this + 60);
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v6 != *(this + 87))
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_13:
        *(this + 87) = v6;
        v12 = *(this + 88);
        *(this + 88) = v7;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = 1;
LABEL_17:
        v14 = *(*(this + 60) + 236);
        v15 = *(this + 920);
        v16 = v14 != v15;
        if (v14 != v15)
        {
          *(this + 920) = v14;
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          if (v13)
          {
            goto LABEL_34;
          }
        }

        else if (v13)
        {
          goto LABEL_34;
        }

        return v16;
      }
    }

    else if (v6 != *(this + 87))
    {
      goto LABEL_13;
    }

    v13 = 0;
    goto LABEL_17;
  }

  v8 = (*(**(*(a2 + 21) + 64) + 16))(*(*(a2 + 21) + 64));
  if (!v8)
  {
    return 0;
  }

  v9 = *(this + 113);
  v10 = *(v8 + 136);
  if (!v10)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v11 = v10[4];
    if (v11 <= v9)
    {
      break;
    }

LABEL_10:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (v11 < v9)
  {
    ++v10;
    goto LABEL_10;
  }

  LODWORD(v10) = 1;
LABEL_26:
  v17 = *(this + 916);
  v18 = v17 != v10;
  if (v17 != v10)
  {
    *(this + 916) = v10;
  }

  md::LabelExternalObjectsModerator::externalTransitNode(&v22, v8, v9);
  if (v22)
  {
    v19 = atomic_load((v22 + 25));
    if (v19 != *(this + 921))
    {
      v20 = atomic_load((v22 + 25));
      *(this + 921) = v20;
      v18 = 1;
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v16 = 0;
  if (v18)
  {
LABEL_34:
    (*(*this + 552))(this, a2);
  }

  return v16;
}

void md::TransitNodeLabelFeature::~TransitNodeLabelFeature(md::TransitNodeLabelFeature *this)
{
  md::TransitNodeLabelFeature::~TransitNodeLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37E98;
  v2 = *(this + 119);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 117);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 872));
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 840));
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 808));
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 776));
  std::vector<md::TransitNodeLabelFeature::TransitNodeSystemInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::TransitNodeSystemInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 744));
  std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 712));

  md::PointLabelFeature::~PointLabelFeature(this);
}

void std::vector<md::TransitNodeLabelFeature::TransitNodeSystemInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::TransitNodeSystemInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::TransitNodeSystemInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::TransitNodeSystemInfo>(uint64_t a1, void *a2)
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

mdm::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, int *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v21[4] = result + 24;
    if (v12)
    {
      v13 = mdm::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v13, v12);
      v7 = *v3;
      v8 = *(v3 + 1) - *v3;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[4 * v9];
    v16 = &v14[4 * v12];
    v17 = *a2;
    v18 = &v15[-4 * (v8 >> 2)];
    *v15 = v17;
    v6 = v15 + 4;
    memcpy(v18, v7, v8);
    v19 = *v3;
    *v3 = v18;
    *(v3 + 1) = v6;
    v20 = *(v3 + 2);
    *(v3 + 2) = v16;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::mun::MuninRoadNetworkLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::mun::MuninRoadNetworkLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v3[27] = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(v3, 14, *a3, a3[1]);
  operator new();
}

void sub_1B3151B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, md::MapTileData *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__function::__value_func<void ()(GeoCodecsRoadFeature const*)>::~__value_func[abi:nn200100](&a31);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a19);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&__p);
  shared_weak_owners = v31[35].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v31[36].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v34 = v31[34].__shared_weak_owners_;
  if (v34)
  {
    v31[35].__vftable = v34;
    operator delete(v34);
  }

  p_shared_weak_owners = &v31[32].__shared_weak_owners_;
  v36 = v31[33].__shared_weak_owners_;
  if (v36)
  {
    v31[34].__vftable = v36;
    operator delete(v36);
  }

  v37 = *p_shared_weak_owners;
  if (*p_shared_weak_owners)
  {
    v31[33].__vftable = v37;
    operator delete(v37);
  }

  shared_owners = v31[32].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }

  std::unique_ptr<geo::Pool<md::MuninRoadEdge>>::reset[abi:nn200100](&v31[31].__shared_weak_owners_, 0);
  std::unique_ptr<geo::Pool<md::MuninJunction>>::reset[abi:nn200100](&v31[31].__shared_owners_, 0);
  md::MapTileData::~MapTileData(a11);
  std::__shared_weak_count::~__shared_weak_count(v31);
  operator delete(v39);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::MuninRoadNetworkData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A382B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninRoadNetworkLayerDataSource::~MuninRoadNetworkLayerDataSource(md::mun::MuninRoadNetworkLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateShadowConstants::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A382F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_1,std::allocator<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_1>,void ()(md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A38380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_0>,void ()(md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A38338;
  a2[1] = v2;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelNavJunctionInfo>(uint64_t a1, void *a2)
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

void sub_1B3152594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  a14 = &a21;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v195 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = (a2 - 32);
  v187 = (a2 - 96);
  v188 = (a2 - 64);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 5;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3uLL:
        v125 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1);
        v126 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), (a1 + 32));
        if (v125 < 0)
        {
          if (v126 < 0)
          {
            goto LABEL_178;
          }

          v181 = *a1;
          v193 = *(a1 + 16);
          v192 = v181;
          *a1 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 48);
          *(a1 + 32) = v192;
          *(a1 + 48) = v193;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), (a1 + 32)) & 0x80) == 0)
          {
            return;
          }

          v182 = *(a1 + 32);
          v192 = v182;
          v183 = *(a1 + 48);
          v193 = v183;
          v184 = *(a2 - 16);
          *(a1 + 32) = *v8;
          *(a1 + 48) = v184;
LABEL_179:
          *(a2 - 16) = v183;
          *v8 = v182;
          return;
        }

        if ((v126 & 0x80000000) == 0)
        {
          return;
        }

        v192 = *(a1 + 32);
        v127 = v192;
        v193 = *(a1 + 48);
        v128 = v193;
        v129 = *(a2 - 16);
        *(a1 + 32) = *v8;
        *(a1 + 48) = v129;
        *(a2 - 16) = v128;
        *v8 = v127;
LABEL_112:
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1) & 0x80) != 0)
        {
          v130 = *a1;
          v193 = *(a1 + 16);
          v192 = v130;
          *a1 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 48);
          *(a1 + 32) = v192;
          *(a1 + 48) = v193;
        }

        return;
      case 4uLL:

        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32));
        return;
      case 5uLL:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), (a1 + 96)) & 0x80) == 0)
        {
          return;
        }

        v192 = *(a1 + 96);
        v117 = v192;
        v193 = *(a1 + 112);
        v118 = v193;
        v119 = *(a2 - 16);
        *(a1 + 96) = *v8;
        *(a1 + 112) = v119;
        *(a2 - 16) = v118;
        *v8 = v117;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 96), (a1 + 64)) & 0x80) == 0)
        {
          return;
        }

        v120 = *(a1 + 80);
        v121 = *(a1 + 64);
        *(a1 + 64) = *(a1 + 96);
        *(a1 + 80) = *(a1 + 112);
        *(a1 + 96) = v121;
        *(a1 + 112) = v120;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 64), (a1 + 32)) & 0x80) == 0)
        {
          return;
        }

        v122 = *(a1 + 48);
        v123 = *(a1 + 32);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 48) = *(a1 + 80);
        *(a1 + 64) = v123;
        *(a1 + 80) = v122;
        goto LABEL_112;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v131 = (a1 + 32);
          if (a1 + 32 != a2)
          {
            v132 = 0;
            v133 = a1;
            do
            {
              v134 = v131;
              if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v131, v133) & 0x80) != 0)
              {
                v135 = *v134;
                v193 = v134[2];
                v192 = v135;
                v194 = *(v133 + 56);
                *v134 = 0;
                v134[1] = 0;
                v134[2] = 0;
                v136 = v132;
                while (1)
                {
                  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a1 + v136 + 32, (a1 + v136));
                  if (!v136)
                  {
                    break;
                  }

                  v136 -= 32;
                  if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, (v136 + a1)) & 0x80) == 0)
                  {
                    v137 = a1 + v136 + 32;
                    goto LABEL_127;
                  }
                }

                v137 = a1;
LABEL_127:
                v138 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v137, &v192);
                if (SHIBYTE(v193) < 0)
                {
                  v139 = v192;
                  v140 = mdm::zone_mallocator::instance(v138);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v140, v139);
                }
              }

              v131 = v134 + 4;
              v132 += 32;
              v133 = v134;
            }

            while (v134 + 4 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v174 = (a1 + 32);
        while (v174 != a2)
        {
          v175 = v174;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v174, a1) & 0x80) != 0)
          {
            v176 = *v175;
            v193 = v175[2];
            v192 = v176;
            v194 = *(a1 + 56);
            *v175 = 0;
            v175[1] = 0;
            v175[2] = 0;
            do
            {
              v177 = a1;
              std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a1 + 32, a1);
              a1 -= 32;
            }

            while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, a1) & 0x80) != 0);
            v178 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v177, &v192);
            if (SHIBYTE(v193) < 0)
            {
              v179 = v192;
              v180 = mdm::zone_mallocator::instance(v178);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v180, v179);
            }
          }

          v174 = v175 + 4;
          a1 = v175;
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v141 = v11 >> 1;
        v142 = v11 >> 1;
        do
        {
          v143 = v142;
          if (v141 >= v142)
          {
            v144 = (2 * v142) | 1;
            v145 = a1 + 32 * v144;
            if (2 * v142 + 2 < v10 && (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * v144), (v145 + 32)) & 0x80u) != 0)
            {
              v145 += 32;
              v144 = 2 * v143 + 2;
            }

            v146 = a1 + 32 * v143;
            if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v145, v146) & 0x80) == 0)
            {
              v147 = *v146;
              v193 = *(v146 + 16);
              v192 = v147;
              v194 = *(v146 + 24);
              *v146 = 0;
              *(v146 + 8) = 0;
              *(v146 + 16) = 0;
              do
              {
                v148 = v145;
                std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v146, v145);
                if (v141 < v144)
                {
                  break;
                }

                v149 = (2 * v144) | 1;
                v145 = a1 + 32 * v149;
                v150 = 2 * v144 + 2;
                if (v150 < v10 && (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * v149), (v145 + 32)) & 0x80u) != 0)
                {
                  v145 += 32;
                  v149 = v150;
                }

                v146 = v148;
                v144 = v149;
              }

              while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v145, &v192) & 0x80) == 0);
              v151 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v148, &v192);
              if (SHIBYTE(v193) < 0)
              {
                v152 = v192;
                v153 = mdm::zone_mallocator::instance(v151);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v153, v152);
              }
            }
          }

          v142 = v143 - 1;
        }

        while (v143);
        do
        {
          if (v10 >= 2)
          {
            v154 = 0;
            v155 = *a1;
            v190 = *(a1 + 16);
            v189 = v155;
            v191 = *(a1 + 24);
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            v156 = a1;
            do
            {
              v157 = v156 + 32 * v154;
              v158 = v157 + 32;
              v159 = (2 * v154) | 1;
              v160 = 2 * v154 + 2;
              if (v160 < v10)
              {
                v161 = v157 + 64;
                if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v157 + 32), (v157 + 64)) & 0x80u) != 0)
                {
                  v158 = v161;
                  v159 = v160;
                }
              }

              std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v156, v158);
              v156 = v158;
              v154 = v159;
            }

            while (v159 <= ((v10 - 2) >> 1));
            if (v158 == a2 - 32)
            {
              v162 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v158, &v189);
            }

            else
            {
              std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v158, (a2 - 32));
              v162 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a2 - 32, &v189);
              v163 = (v158 - a1 + 32) >> 5;
              v164 = v163 < 2;
              v165 = v163 - 2;
              if (!v164)
              {
                v166 = v165 >> 1;
                v167 = (a1 + 32 * (v165 >> 1));
                v162 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v167, v158);
                if ((v162 & 0x80) != 0)
                {
                  v168 = *v158;
                  v193 = *(v158 + 16);
                  v192 = v168;
                  v194 = *(v158 + 24);
                  *v158 = 0;
                  *(v158 + 8) = 0;
                  *(v158 + 16) = 0;
                  do
                  {
                    v169 = v167;
                    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v158, v167);
                    if (!v166)
                    {
                      break;
                    }

                    v166 = (v166 - 1) >> 1;
                    v167 = (a1 + 32 * v166);
                    v158 = v169;
                  }

                  while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v167, &v192) & 0x80) != 0);
                  v162 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v169, &v192);
                  if (SHIBYTE(v193) < 0)
                  {
                    v170 = v192;
                    v171 = mdm::zone_mallocator::instance(v162);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v171, v170);
                  }
                }
              }
            }

            if (SHIBYTE(v190) < 0)
            {
              v172 = v189;
              v173 = mdm::zone_mallocator::instance(v162);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v173, v172);
            }
          }

          a2 -= 32;
          v164 = v10-- > 2;
        }

        while (v164);
      }

      return;
    }

    v12 = (a1 + 32 * (v10 >> 1));
    if (v10 >= 0x81)
    {
      v13 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * (v10 >> 1)), a1);
      v14 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), (a1 + 32 * (v10 >> 1)));
      if (v13 < 0)
      {
        if (v14 < 0)
        {
          v39 = *a1;
          v193 = *(a1 + 16);
          v192 = v39;
          v40 = *v8;
          *(a1 + 16) = *(a2 - 16);
          *a1 = v40;
        }

        else
        {
          v29 = *a1;
          v193 = *(a1 + 16);
          v192 = v29;
          v30 = *v12;
          *(a1 + 16) = v12[2];
          *a1 = v30;
          v31 = v192;
          v12[2] = v193;
          *v12 = v31;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), (a1 + 32 * (v10 >> 1))) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v32 = *v12;
          v193 = v12[2];
          v192 = v32;
          v33 = *v8;
          v12[2] = *(a2 - 16);
          *v12 = v33;
        }

        v41 = v192;
        *(a2 - 16) = v193;
        *v8 = v41;
      }

      else if (v14 < 0)
      {
        v15 = *v12;
        v193 = v12[2];
        v192 = v15;
        v16 = *v8;
        v12[2] = *(a2 - 16);
        *v12 = v16;
        v17 = v192;
        *(a2 - 16) = v193;
        *v8 = v17;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32 * (v10 >> 1)), a1) & 0x80) != 0)
        {
          v18 = *a1;
          v193 = *(a1 + 16);
          v192 = v18;
          v19 = *v12;
          *(a1 + 16) = v12[2];
          *a1 = v19;
          v20 = v192;
          v12[2] = v193;
          *v12 = v20;
        }
      }

LABEL_29:
      v42 = (v12 - 4);
      v43 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 - 4, (a1 + 32));
      v44 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v188, v12 - 4);
      if (v43 < 0)
      {
        if (v44 < 0)
        {
          v192 = *(a1 + 32);
          v60 = v192;
          v193 = *(a1 + 48);
          v61 = v193;
          v62 = *(a2 - 48);
          *(a1 + 32) = *v188;
          *(a1 + 48) = v62;
          *(a2 - 48) = v61;
          *v188 = v60;
        }

        else
        {
          v192 = *(a1 + 32);
          v51 = v192;
          v193 = *(a1 + 48);
          v52 = v193;
          v53 = *(v12 - 2);
          *(a1 + 32) = *v42;
          *(a1 + 48) = v53;
          *(v12 - 2) = v52;
          *v42 = v51;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v188, v12 - 4) & 0x80) != 0)
          {
            v54 = *v42;
            v193 = *(v12 - 2);
            v192 = v54;
            v55 = *v188;
            *(v12 - 2) = *(a2 - 48);
            *v42 = v55;
            v56 = v192;
            *(a2 - 48) = v193;
            *v188 = v56;
          }
        }
      }

      else if (v44 < 0)
      {
        v45 = *v42;
        v193 = *(v12 - 2);
        v192 = v45;
        v46 = *v188;
        *(v12 - 2) = *(a2 - 48);
        *v42 = v46;
        v47 = v192;
        *(a2 - 48) = v193;
        *v188 = v47;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 - 4, (a1 + 32)) & 0x80) != 0)
        {
          v192 = *(a1 + 32);
          v48 = v192;
          v193 = *(a1 + 48);
          v49 = v193;
          v50 = *(v12 - 2);
          *(a1 + 32) = *v42;
          *(a1 + 48) = v50;
          *(v12 - 2) = v49;
          *v42 = v48;
        }
      }

      v63 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, (a1 + 64));
      v64 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v187, v12 + 4);
      if (v63 < 0)
      {
        if (v64 < 0)
        {
          v192 = *(a1 + 64);
          v77 = v192;
          v193 = *(a1 + 80);
          v78 = v193;
          v79 = *(a2 - 80);
          *(a1 + 64) = *v187;
          *(a1 + 80) = v79;
          *(a2 - 80) = v78;
          *v187 = v77;
        }

        else
        {
          v192 = *(a1 + 64);
          v71 = v192;
          v193 = *(a1 + 80);
          v72 = v193;
          v73 = v12[6];
          *(a1 + 64) = *(v12 + 2);
          *(a1 + 80) = v73;
          v12[6] = v72;
          *(v12 + 2) = v71;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v187, v12 + 4) & 0x80) != 0)
          {
            v74 = *(v12 + 2);
            v193 = v12[6];
            v192 = v74;
            v75 = *v187;
            v12[6] = *(a2 - 80);
            *(v12 + 2) = v75;
            v76 = v192;
            *(a2 - 80) = v193;
            *v187 = v76;
          }
        }
      }

      else if (v64 < 0)
      {
        v65 = *(v12 + 2);
        v193 = v12[6];
        v192 = v65;
        v66 = *v187;
        v12[6] = *(a2 - 80);
        *(v12 + 2) = v66;
        v67 = v192;
        *(a2 - 80) = v193;
        *v187 = v67;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, (a1 + 64)) & 0x80) != 0)
        {
          v192 = *(a1 + 64);
          v68 = v192;
          v193 = *(a1 + 80);
          v69 = v193;
          v70 = v12[6];
          *(a1 + 64) = *(v12 + 2);
          *(a1 + 80) = v70;
          v12[6] = v69;
          *(v12 + 2) = v68;
        }
      }

      v80 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v12 - 4);
      v81 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, v12);
      if ((v80 & 0x80) == 0)
      {
        if (v81 < 0)
        {
          v82 = *v12;
          v193 = v12[2];
          v192 = v82;
          *v12 = *(v12 + 2);
          v12[2] = v12[6];
          v83 = v192;
          v12[6] = v193;
          *(v12 + 2) = v83;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v12 - 4) & 0x80) != 0)
          {
            v84 = *v42;
            v193 = *(v12 - 2);
            v192 = v84;
            *v42 = *v12;
            *(v12 - 2) = v12[2];
            v85 = v192;
            v12[2] = v193;
            *v12 = v85;
          }
        }

        goto LABEL_56;
      }

      if (v81 < 0)
      {
        v89 = *v42;
        v193 = *(v12 - 2);
        v192 = v89;
        *v42 = *(v12 + 2);
        *(v12 - 2) = v12[6];
LABEL_55:
        v90 = v192;
        v12[6] = v193;
        *(v12 + 2) = v90;
      }

      else
      {
        v86 = *v42;
        v193 = *(v12 - 2);
        v192 = v86;
        *v42 = *v12;
        *(v12 - 2) = v12[2];
        v87 = v192;
        v12[2] = v193;
        *v12 = v87;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, v12) & 0x80) != 0)
        {
          v88 = *v12;
          v193 = v12[2];
          v192 = v88;
          *v12 = *(v12 + 2);
          v12[2] = v12[6];
          goto LABEL_55;
        }
      }

LABEL_56:
      v91 = *a1;
      v193 = *(a1 + 16);
      v192 = v91;
      v92 = *v12;
      *(a1 + 16) = v12[2];
      *a1 = v92;
      v93 = v192;
      v12[2] = v193;
      *v12 = v93;
      goto LABEL_57;
    }

    v21 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 32 * (v10 >> 1)));
    v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), a1);
    if ((v21 & 0x80) == 0)
    {
      if (v22 < 0)
      {
        v23 = *a1;
        v193 = *(a1 + 16);
        v192 = v23;
        v24 = *v8;
        *(a1 + 16) = *(a2 - 16);
        *a1 = v24;
        v25 = v192;
        *(a2 - 16) = v193;
        *v8 = v25;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 32 * (v10 >> 1))) & 0x80) != 0)
        {
          v26 = *v12;
          v193 = v12[2];
          v192 = v26;
          v27 = *a1;
          v12[2] = *(a1 + 16);
          *v12 = v27;
          v28 = v192;
          *(a1 + 16) = v193;
          *a1 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v22 < 0)
    {
      v57 = *v12;
      v193 = v12[2];
      v192 = v57;
      v58 = *v8;
      v12[2] = *(a2 - 16);
      *v12 = v58;
    }

    else
    {
      v34 = *v12;
      v193 = v12[2];
      v192 = v34;
      v35 = *a1;
      v12[2] = *(a1 + 16);
      *v12 = v35;
      v36 = v192;
      *(a1 + 16) = v193;
      *a1 = v36;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), a1) & 0x80) == 0)
      {
        goto LABEL_57;
      }

      v37 = *a1;
      v193 = *(a1 + 16);
      v192 = v37;
      v38 = *v8;
      *(a1 + 16) = *(a2 - 16);
      *a1 = v38;
    }

    v59 = v192;
    *(a2 - 16) = v193;
    *v8 = v59;
LABEL_57:
    --a3;
    if ((a4 & 1) != 0 || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 - 32), a1) & 0x80) != 0)
    {
      v94 = *a1;
      v193 = *(a1 + 16);
      v192 = v94;
      v194 = *(a1 + 24);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v95 = a1;
      do
      {
        v96 = v95;
        v95 += 2;
      }

      while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v95, &v192) & 0x80) != 0);
      v97 = a2;
      if (v96 == a1)
      {
        v97 = a2;
        do
        {
          if (v95 >= v97)
          {
            break;
          }

          v97 -= 2;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v97, &v192) & 0x80) == 0);
      }

      else
      {
        do
        {
          v97 -= 2;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v97, &v192) & 0x80) == 0);
      }

      if (v95 < v97)
      {
        v98 = v95;
        v99 = v97;
        do
        {
          v189 = *v98;
          v100 = v189;
          v190 = *(v98 + 2);
          v101 = v190;
          v102 = *(v99 + 2);
          *v98 = *v99;
          *(v98 + 2) = v102;
          *(v99 + 2) = v101;
          *v99 = v100;
          do
          {
            v96 = v98;
            v98 += 2;
          }

          while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v98, &v192) & 0x80) != 0);
          do
          {
            v99 -= 2;
          }

          while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v99, &v192) & 0x80) == 0);
        }

        while (v98 < v99);
      }

      if (v96 != a1)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a1, v96);
      }

      v103 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v96, &v192);
      if (SHIBYTE(v193) < 0)
      {
        v104 = v192;
        v105 = mdm::zone_mallocator::instance(v103);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v105, v104);
      }

      if (v95 < v97)
      {
        goto LABEL_80;
      }

      v106 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *>(a1, v96);
      v9 = v96 + 2;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *>((v96 + 2), a2))
      {
        a2 = v96;
        if (!v106)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v106)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,false>(a1, v96, a3, a4 & 1);
        a4 = 0;
        v9 = v96 + 2;
      }
    }

    else
    {
      v107 = *a1;
      v193 = *(a1 + 16);
      v192 = v107;
      v194 = *(a1 + 24);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, (a2 - 32)) & 0x80) != 0)
      {
        v9 = a1;
        do
        {
          v9 += 2;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, v9) & 0x80) == 0);
      }

      else
      {
        v108 = (a1 + 32);
        do
        {
          v9 = v108;
          if (v108 >= a2)
          {
            break;
          }

          v109 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, v108);
          v108 = (v9 + 2);
        }

        while ((v109 & 0x80) == 0);
      }

      v110 = a2;
      if (v9 < a2)
      {
        v110 = a2;
        do
        {
          v110 -= 32;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, v110) & 0x80) != 0);
      }

      while (v9 < v110)
      {
        v111 = *v9;
        v190 = *(v9 + 2);
        v189 = v111;
        v112 = *v110;
        *(v9 + 2) = *(v110 + 16);
        *v9 = v112;
        v113 = v189;
        *(v110 + 16) = v190;
        *v110 = v113;
        do
        {
          v9 += 2;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, v9) & 0x80) == 0);
        do
        {
          v110 -= 32;
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v192, v110) & 0x80) != 0);
      }

      if (v9 - 2 != a1)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a1, v9 - 2);
      }

      v114 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100]((v9 - 2), &v192);
      if (SHIBYTE(v193) < 0)
      {
        v115 = v192;
        v116 = mdm::zone_mallocator::instance(v114);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v116, v115);
      }

      a4 = 0;
    }
  }

  if (v10 < 2)
  {
    return;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  v124 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), a1);
  if (v124 < 0)
  {
LABEL_178:
    v185 = *a1;
    v193 = *(a1 + 16);
    v192 = v185;
    v186 = *v8;
    *(a1 + 16) = *(a2 - 16);
    *a1 = v186;
    v182 = v192;
    v183 = v193;
    goto LABEL_179;
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,0>(void **a1, void **a2, void **a3, void *a4)
{
  v8 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1);
  v9 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *>(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = (a2 - 32);
        v14 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1);
        v15 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 32));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 48);
          *(a1 + 32) = v29;
          *(a1 + 48) = v28;
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 32)) & 0x80) != 0)
          {
            v30 = *(a1 + 48);
            v31 = *(a1 + 32);
            v32 = v5[2];
            *(a1 + 32) = *v5;
            *(a1 + 48) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        v18 = v5[2];
        *(a1 + 32) = *v5;
        *(a1 + 48) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32));
        return 1;
      case 5:
        v6 = (a2 - 32);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v6, (a1 + 96)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 112);
        v8 = *(a1 + 96);
        v9 = v6[2];
        *(a1 + 96) = *v6;
        *(a1 + 112) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 96), (a1 + 64)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 80);
        v11 = *(a1 + 64);
        *(a1 + 64) = *(a1 + 96);
        *(a1 + 80) = *(a1 + 112);
        *(a1 + 96) = v11;
        *(a1 + 112) = v10;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 64), (a1 + 32)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 48);
        v13 = *(a1 + 32);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 48) = *(a1 + 80);
        *(a1 + 64) = v13;
        *(a1 + 80) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 48);
      *(a1 + 32) = v20;
      *(a1 + 48) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 32);
    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 - 32), a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 64);
  v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1);
  v23 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 64), (a1 + 32));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 80);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 48);
      *(a1 + 32) = v35;
      *(a1 + 48) = v34;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 64), (a1 + 32)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 48);
      v37 = *(a1 + 32);
      *(a1 + 32) = *v21;
      *(a1 + 48) = *(a1 + 80);
    }

    *v21 = v37;
    *(a1 + 80) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 48);
    v25 = *(a1 + 32);
    *(a1 + 32) = *v21;
    *(a1 + 48) = *(a1 + 80);
    *v21 = v25;
    *(a1 + 80) = v24;
    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 32), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 48);
      *(a1 + 32) = v27;
      *(a1 + 48) = v26;
    }
  }

LABEL_33:
  v38 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v21) & 0x80) != 0)
    {
      v48 = *v38;
      v49 = *(v38 + 16);
      v50 = *(v38 + 24);
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](a1 + v41 + 96, (a1 + v41 + 64));
        if (v41 == -64)
        {
          break;
        }

        v42 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v48, (a1 + v41 + 32));
        v41 -= 32;
        if ((v42 & 0x80) == 0)
        {
          v43 = a1 + v41 + 96;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      v44 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v43, &v48);
      if (SHIBYTE(v49) < 0)
      {
        v45 = v48;
        v46 = mdm::zone_mallocator::instance(v44);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v46, v45);
      }

      if (++v40 == 8)
      {
        return v38 + 32 == a2;
      }
    }

    v21 = v38;
    v39 += 32;
    v38 += 32;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void sub_1B3153E00(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v20 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, a12);
  }

  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v21[4] = result + 24;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[32 * v8];
    v15 = &v13[32 * v11];
    v16 = *a2;
    *(v14 + 2) = *(a2 + 2);
    *v14 = v16;
    v14[24] = *(a2 + 24);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v7 = v14 + 32;
    v17 = *(v3 + 1) - *v3;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], *v3, v17);
    v19 = *v3;
    *v3 = v18;
    *(v3 + 1) = v7;
    v20 = *(v3 + 2);
    *(v3 + 2) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(v4 + 24) = *(a2 + 24);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v7 = (v4 + 32);
  }

  *(v3 + 1) = v7;
  return result;
}

void sub_1B31543D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<LabelNavJunctionInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 32 * a2, 0x1020040B07D1DCCuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<LabelNavJunctionInfo,geo::allocator_adapter<LabelNavJunctionInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 31) & 0xFFFFFFFFFFFFFFE0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelNavJunctionInfo>(v5, v4);
  }

  return a1;
}

void sub_1B3154730(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(GeoCodecsRoadFeature const*)>::~__value_func[abi:nn200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  _Unwind_Resume(a1);
}

void sub_1B315482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(GeoCodecsRoadEdge *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteSegment>(uint64_t a1, void *a2)
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

void sub_1B3156388(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    v75 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v75, a68);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a73);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<NavRoadSegment,geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    v29 = a1 + 3;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(a1);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 56 * v11, 0x10A0040F777AD81uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[56 * v8];
    v26 = v15;
    v27 = v16;
    *&v28 = v16;
    *(&v28 + 1) = &v15[56 * v11];
    std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](v16, a2);
    *(v16 + 32) = *(a2 + 32);
    *(v16 + 40) = *(a2 + 40);
    *(v16 + 48) = *(a2 + 48);
    *&v28 = v28 + 56;
    v17 = *a1;
    v18 = a1[1];
    v19 = v27 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = *a1;
      v21 = v27 + *a1 - v18;
      do
      {
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = *(v20 + 24);
        *v21 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v20 = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        v22 = *(v20 + 32);
        *(v20 + 32) = 0;
        *(v20 + 40) = 0;
        *(v21 + 32) = v22;
        *(v21 + 48) = *(v20 + 48);
        v20 += 56;
        v21 += 56;
      }

      while (v20 != v18);
      do
      {
        std::allocator_traits<geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::destroy[abi:nn200100]<NavRoadSegment,void,0>(v17);
        v17 += 7;
      }

      while (v17 != v18);
    }

    v23 = *a1;
    *a1 = v19;
    v24 = a1[2];
    v25 = v28;
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    result = std::__split_buffer<NavRoadSegment,geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator> &>::~__split_buffer(&v26);
    v7 = v25;
  }

  else
  {
    std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](a1[1], a2);
    *(v5 + 32) = *(a2 + 32);
    result = *(a2 + 40);
    *(v5 + 40) = result;
    *(v5 + 48) = *(a2 + 48);
    v7 = v5 + 56;
    a1[1] = v5 + 56;
  }

  a1[1] = v7;
  return result;
}

void sub_1B3156780(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<NavRoadFeature>::operator()[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>&&>,std::tuple<>>(float *a1, uint64_t a2, _OWORD **a3)
{
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
  v11 = v10;
  v12 = *(a1 + 1);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v12)
      {
        v3 = v10 % v12;
      }
    }

    else
    {
      v3 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v3);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        do
        {
          v17 = v16[1];
          if (v17 == v11)
          {
            v10 = std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2);
            if (v10)
            {
              return v16;
            }
          }

          else
          {
            if (v14 > 1)
            {
              if (v17 >= v12)
              {
                v17 %= v12;
              }
            }

            else
            {
              v17 &= v12 - 1;
            }

            if (v17 != v3)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v18 = mdm::zone_mallocator::instance(v10);
  v19 = pthread_rwlock_rdlock((v18 + 32));
  if (v19)
  {
    geo::read_write_lock::logFailure(v19, "read lock", v20);
  }

  v16 = malloc_type_zone_malloc(*v18, 0x40uLL, 0x1032040FED236A9uLL);
  atomic_fetch_add((v18 + 24), 1u);
  geo::read_write_lock::unlock((v18 + 32));
  *v16 = 0;
  v16[1] = v11;
  v22 = *a3;
  v23 = *(*a3 + 2);
  *(v16 + 1) = **a3;
  v16[4] = v23;
  *(v16 + 40) = *(v22 + 24);
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  v16[6] = 0;
  v16[7] = 0;
  v24 = (*(a1 + 5) + 1);
  v25 = a1[12];
  if (!v12 || (v25 * v12) < v24)
  {
    v26 = 1;
    if (v12 >= 3)
    {
      v26 = (v12 & (v12 - 1)) != 0;
    }

    v27 = v26 | (2 * v12);
    v28 = vcvtps_u32_f32(v24 / v25);
    if (v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (v29 == 1)
    {
      v29 = 2;
    }

    else if ((v29 & (v29 - 1)) != 0)
    {
      prime = std::__next_prime(v29);
      v29 = prime;
    }

    v12 = *(a1 + 1);
    if (v29 > v12)
    {
      goto LABEL_38;
    }

    if (v29 < v12)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v12 < 3 || (v38 = vcnt_s8(v12), v38.i16[0] = vaddlv_u8(v38), v38.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v39 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v39;
        }
      }

      if (v29 <= prime)
      {
        v29 = prime;
      }

      if (v29 >= v12)
      {
        v12 = *(a1 + 1);
      }

      else
      {
        if (v29)
        {
LABEL_38:
          v30 = mdm::zone_mallocator::instance(prime);
          v31 = pthread_rwlock_rdlock((v30 + 32));
          if (v31)
          {
            geo::read_write_lock::logFailure(v31, "read lock", v32);
          }

          v33 = malloc_type_zone_malloc(*v30, 8 * v29, 0x2004093837F09uLL);
          atomic_fetch_add((v30 + 24), 1u);
          geo::read_write_lock::unlock((v30 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> **,0>(a1, v33);
          v34 = 0;
          *(a1 + 1) = v29;
          do
          {
            *(*a1 + 8 * v34++) = 0;
          }

          while (v29 != v34);
          v35 = *(a1 + 3);
          if (v35)
          {
            v36 = v35[1];
            v37 = vcnt_s8(v29);
            v37.i16[0] = vaddlv_u8(v37);
            if (v37.u32[0] > 1uLL)
            {
              if (v36 >= v29)
              {
                v36 %= v29;
              }
            }

            else
            {
              v36 &= v29 - 1;
            }

            *(*a1 + 8 * v36) = a1 + 6;
            v40 = *v35;
            if (*v35)
            {
              do
              {
                v41 = v40[1];
                if (v37.u32[0] > 1uLL)
                {
                  if (v41 >= v29)
                  {
                    v41 %= v29;
                  }
                }

                else
                {
                  v41 &= v29 - 1;
                }

                if (v41 != v36)
                {
                  v42 = *a1;
                  if (!*(*a1 + 8 * v41))
                  {
                    *(v42 + 8 * v41) = v35;
                    goto LABEL_62;
                  }

                  *v35 = *v40;
                  *v40 = **(v42 + 8 * v41);
                  **(v42 + 8 * v41) = v40;
                  v40 = v35;
                }

                v41 = v36;
LABEL_62:
                v35 = v40;
                v40 = *v40;
                v36 = v41;
              }

              while (v40);
            }
          }

          v12 = v29;
          goto LABEL_66;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> **,0>(a1, 0);
        v12 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_66:
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v3 = v11 % v12;
      }

      else
      {
        v3 = v11;
      }
    }

    else
    {
      v3 = (v12 - 1) & v11;
    }
  }

  v43 = *a1;
  v44 = *(*a1 + 8 * v3);
  if (v44)
  {
    *v16 = *v44;
LABEL_79:
    *v44 = v16;
    goto LABEL_80;
  }

  *v16 = *(a1 + 3);
  *(a1 + 3) = v16;
  *(v43 + 8 * v3) = a1 + 6;
  if (*v16)
  {
    v45 = *(*v16 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v45 >= v12)
      {
        v45 %= v12;
      }
    }

    else
    {
      v45 &= v12 - 1;
    }

    v44 = (*a1 + 8 * v45);
    goto LABEL_79;
  }

LABEL_80:
  ++*(a1 + 5);
  return v16;
}

void sub_1B3156C34(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (*(v1 + 39) < 0)
  {
    v5 = *(v1 + 16);
    v6 = mdm::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v6, v5);
  }

  v7 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *>>(v7, v1);
  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *> *> *>(v3, v2);
  }
}

mdm::zone_mallocator *std::default_delete<NavRoadFeature>::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(result + 9);
      v4 = *(result + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 7;
          std::allocator_traits<geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::destroy[abi:nn200100]<NavRoadSegment,void,0>(v3);
        }

        while (v3 != v2);
        v4 = *(v1 + 8);
      }

      *(v1 + 9) = v2;
      v5 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<NavRoadSegment>(v5, v4);
    }

    if (*(v1 + 55) < 0)
    {
      v6 = *(v1 + 4);
      v7 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }

    if (*(v1 + 23) < 0)
    {
      v8 = *v1;
      v9 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::allocator_traits<geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::destroy[abi:nn200100]<NavRoadSegment,void,0>(id *a1)
{

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<NavRoadSegment>(uint64_t a1, void *a2)
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

void std::__shared_ptr_pointer<NavRoadFeature *,std::shared_ptr<NavRoadFeature>::__shared_ptr_default_delete<NavRoadFeature,NavRoadFeature>,std::allocator<NavRoadFeature>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
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
    if ((v5 >> 4) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = mdm::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(v6, v5 >> 4);
    *a1 = v7;
    *(a1 + 8) = v7;
    *(a1 + 16) = v7 + v5;
    do
    {
      v8 = *v3++;
      *v7++ = v8;
    }

    while (v3 != v4);
    *(a1 + 8) = v7;
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<NavRoadSegment,geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 56;
    std::allocator_traits<geo::allocator_adapter<NavRoadSegment,mdm::zone_mallocator>>::destroy[abi:nn200100]<NavRoadSegment,void,0>((i - 56));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<NavRoadSegment>(v5, v4);
  }

  return a1;
}

BOOL lineSegmentIntersectsRectangle(float *a1, float a2, float a3, float a4, float a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (*a1 >= a2)
  {
    v7 = 1;
  }

  else if (a1[2] <= a2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[3];
  if (v8 <= a3)
  {
    v7 |= 2u;
  }

  else if (a1[1] >= a3)
  {
    v7 |= 8u;
  }

  if (v6 >= a4)
  {
    v9 = 1;
  }

  else if (a1[2] <= a4)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (v8 <= a5)
  {
    v9 |= 2u;
  }

  else if (a1[1] >= a5)
  {
    v9 |= 8u;
  }

  if ((v9 & v7) != 0)
  {
    return 0;
  }

  else if (v9 | v7)
  {
    v12 = 0;
    v14 = a1[1];
    v13 = *(a1 + 2);
    v15 = v31;
    v30 = *a1;
    *v31 = v8;
    v31[1] = v13;
    *&v31[2] = v8;
    v31[3] = v13;
    *&v31[4] = v14;
    v16 = a4 - a2;
    v17 = a5 - a3;
    v10 = 1;
    __asm { FMOV            V7.4S, #1.0 }

    *&v31[5] = v6;
    *&v31[6] = v14;
    do
    {
      v23 = *(v15 - 1);
      v24 = *v15;
      v25 = *v15 - v14;
      *v5.i32 = -(((v23 - v6) * v17) - (v25 * v16));
      if (fabsf(*v5.i32) >= 0.00000011921)
      {
        v26.f32[0] = *v15 - v14;
        v26.f32[1] = v17;
        v26.i64[1] = __PAIR64__(LODWORD(v17), LODWORD(v25));
        v27.f32[0] = v23 - v6;
        v27.f32[1] = v16;
        v27.i64[1] = __PAIR64__(LODWORD(v16), v23 - v6);
        v28 = vmulq_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v27, v14 - a3)), v26, v6 - a2), vdivq_f32(_Q7, vdupq_lane_s32(v5, 0)));
        v29.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v28)).u32[0];
        v29.i32[1] = vmovn_s32(vcgeq_f32(v28, xmmword_1B33B09C0)).i32[1];
        if (vminv_u16(vcltz_s16(vshl_n_s16(v29, 0xFuLL))))
        {
          break;
        }
      }

      v10 = v12 < 3;
      v15 += 2;
      v14 = v24;
      v6 = v23;
      ++v12;
    }

    while (v12 != 4);
  }

  else
  {
    return 1;
  }

  return v10;
}

void sub_1B3157E18(_Unwind_Exception *a1)
{
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 - 168));
  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_1B3158804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  a30 = v31 - 160;
  std::vector<OffRouteJunctionInfo,geo::allocator_adapter<OffRouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a30);

  _Unwind_Resume(a1);
}

void std::vector<OffRouteJunctionInfo,geo::allocator_adapter<OffRouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *(v3 - 2);
        v3 -= 16;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<OffRouteJunctionInfo>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<OffRouteJunctionInfo>(uint64_t a1, void *a2)
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

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(void **a1, void **a2)
{
  v4 = *a1;
  v5 = a1[1];
  *a1 = 0;
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;

  a1[1] = a2[1];
  v8 = *a2;
  *a2 = v4;

  a2[1] = v5;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  v9 = v6 == v7;
  v10 = v6 < v7;
  if (v9)
  {
    v10 = v8 < *(a1 + 12);
  }

  v11 = *(a3 + 8);
  v9 = v11 == v6;
  v12 = v11 < v6;
  if (v9)
  {
    v12 = *(a3 + 12) < v8;
  }

  if (v10)
  {
    if (v12)
    {
LABEL_11:
      v16 = a3;
LABEL_17:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a1, v16);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a1, a2);
    v13 = *(a3 + 8);
    v14 = *(a2 + 8);
    v9 = v13 == v14;
    v15 = v13 < v14;
    if (v9)
    {
      v15 = *(a3 + 12) < *(a2 + 12);
    }

    if (v15)
    {
      a1 = a2;
      goto LABEL_11;
    }
  }

  else if (v12)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a2, a3);
    v17 = *(a2 + 8);
    v18 = *(v5 + 8);
    v9 = v17 == v18;
    v19 = v17 < v18;
    if (v9)
    {
      v19 = *(a2 + 12) < *(v5 + 12);
    }

    if (v19)
    {
      a1 = v5;
      v16 = a2;
      goto LABEL_17;
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(a1, a2, a3);
  v10 = *(a4 + 8);
  v11 = *(a3 + 8);
  v12 = v10 == v11;
  v13 = v10 < v11;
  if (v12)
  {
    v13 = *(a4 + 12) < *(a3 + 12);
  }

  if (v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a3, a4);
    v14 = *(a3 + 8);
    v15 = *(a2 + 8);
    v12 = v14 == v15;
    v16 = v14 < v15;
    if (v12)
    {
      v16 = *(a3 + 12) < *(a2 + 12);
    }

    if (v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a2, a3);
      v17 = *(a2 + 8);
      v18 = *(a1 + 8);
      v12 = v17 == v18;
      v19 = v17 < v18;
      if (v12)
      {
        v19 = *(a2 + 12) < *(a1 + 12);
      }

      if (v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a1, a2);
      }
    }
  }

  v20 = *(a5 + 8);
  v21 = *(a4 + 8);
  v12 = v20 == v21;
  v22 = v20 < v21;
  if (v12)
  {
    v22 = *(a5 + 12) < *(a4 + 12);
  }

  if (v22)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a4, a5);
    v23 = *(a4 + 8);
    v24 = *(a3 + 8);
    v12 = v23 == v24;
    v25 = v23 < v24;
    if (v12)
    {
      v25 = *(a4 + 12) < *(a3 + 12);
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a3, a4);
      v26 = *(a3 + 8);
      v27 = *(a2 + 8);
      v12 = v26 == v27;
      v28 = v26 < v27;
      if (v12)
      {
        v28 = *(a3 + 12) < *(a2 + 12);
      }

      if (v28)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a2, a3);
        v29 = *(a2 + 8);
        v30 = *(a1 + 8);
        v12 = v29 == v30;
        v31 = v29 < v30;
        if (v12)
        {
          v31 = *(a2 + 12) < *(a1 + 12);
        }

        if (v31)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(a1, a1 + 16, a1 + 32);
        v28 = *(a2 - 8);
        v29 = *(a1 + 40);
        v7 = v28 == v29;
        v30 = v28 < v29;
        if (v7)
        {
          v30 = *(a2 - 4) < *(a1 + 44);
        }

        if (!v30)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>((a1 + 32), (a2 - 16));
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        v7 = v31 == v32;
        v33 = v31 < v32;
        if (v7)
        {
          v33 = *(a1 + 44) < *(a1 + 28);
        }

        if (!v33)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>((a1 + 16), (a1 + 32));
        v34 = *(a1 + 24);
        v35 = *(a1 + 8);
        v7 = v34 == v35;
        v36 = v34 < v35;
        if (v7)
        {
          v36 = *(a1 + 28) < *(a1 + 12);
        }

        if (!v36)
        {
          return 1;
        }

        v9 = (a1 + 16);
LABEL_8:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(a1, v9);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
      v5 = *(a2 - 8);
      v6 = *(a1 + 8);
      v7 = v5 == v6;
      v8 = v5 < v6;
      if (v7)
      {
        v8 = *(a2 - 4) < *(a1 + 12);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = (a2 - 16);
      goto LABEL_8;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 8);
    v15 = *(v10 + 8);
    v16 = *(v11 + 12);
    v7 = v14 == v15;
    v17 = v14 < v15;
    if (v7)
    {
      v17 = v16 < *(v10 + 12);
    }

    if (v17)
    {
      v18 = *v11;
      *v11 = 0;
      v19 = *(v11 + 8);
      v20 = v12;
      while (1)
      {
        v21 = a1 + v20;
        v22 = *(a1 + v20 + 32);
        *(v21 + 32) = 0;
        v23 = *(a1 + v20 + 48);
        *(v21 + 48) = v22;

        *(v21 + 56) = *(v21 + 40);
        if (v20 == -32)
        {
          break;
        }

        v24 = *(v21 + 24);
        v7 = v24 == v19;
        v25 = v24 > v19;
        if (v7)
        {
          v25 = *(v21 + 28) > v16;
        }

        v20 -= 16;
        if (!v25)
        {
          v26 = a1 + v20 + 48;
          goto LABEL_26;
        }
      }

      v26 = a1;
LABEL_26:
      v27 = *v26;
      *v26 = v18;

      *(v26 + 8) = v19;
      *(v26 + 12) = v16;
      if (++v13 == 8)
      {
        return v11 + 16 == a2;
      }
    }

    v10 = v11;
    v12 += 16;
    v11 += 16;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_1B315AED8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void std::__list_imp<md::FontGlyphCache::CachedItem,geo::allocator_adapter<md::FontGlyphCache::CachedItem,mdm::zone_mallocator>>::__delete_node[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::FontGlyphCache::CachedItem,void *>>(v3, a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::FontGlyphCache::CachedItem,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *>>(uint64_t a1, void *a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *>(v3, v2);
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::FontGlyph,geo::allocator_adapter<md::FontGlyph,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void md::FontGlyph::~FontGlyph(md::FontGlyph *this)
{
  *this = &unk_1F2A38590;
  *(this + 1) = &unk_1F2A5F758;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38590;
  *(this + 1) = &unk_1F2A5F758;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_ptr_emplace<md::FontGlyph,geo::allocator_adapter<md::FontGlyph,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::FontGlyph,geo::allocator_adapter<md::FontGlyph,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<md::FontGlyph,geo::allocator_adapter<md::FontGlyph,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A385B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::AtlasFontGlyph,geo::allocator_adapter<md::AtlasFontGlyph,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void md::AtlasFontGlyph::~AtlasFontGlyph(md::AtlasFontGlyph *this)
{
  *this = &unk_1F2A38570;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A38590;
  *(this + 1) = &unk_1F2A5F758;
  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38570;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A38590;
  *(this + 1) = &unk_1F2A5F758;
  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

void std::__shared_ptr_emplace<md::AtlasFontGlyph,geo::allocator_adapter<md::AtlasFontGlyph,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::AtlasFontGlyph,geo::allocator_adapter<md::AtlasFontGlyph,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<md::AtlasFontGlyph,geo::allocator_adapter<md::AtlasFontGlyph,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A38538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v10 = (v4 - *result) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v5 - *result;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v28[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(v14, v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[64 * v10];
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[3];
    *(v16 + 2) = a2[2];
    *(v16 + 3) = v19;
    *v16 = v17;
    *(v16 + 1) = v18;
    v20 = *v3;
    v21 = *(v3 + 1);
    v22 = &v16[*v3 - v21];
    if (*v3 != v21)
    {
      v23 = &v16[*v3 - v21];
      do
      {
        v24 = *v20;
        v25 = v20[1];
        v26 = v20[3];
        *(v23 + 2) = v20[2];
        *(v23 + 3) = v26;
        *v23 = v24;
        *(v23 + 1) = v25;
        v23 += 64;
        v20 += 4;
      }

      while (v20 != v21);
      v20 = *v3;
    }

    v9 = v16 + 64;
    *v3 = v22;
    *(v3 + 1) = v16 + 64;
    v27 = *(v3 + 2);
    *(v3 + 2) = &v15[64 * v13];
    v28[2] = v20;
    v28[3] = v27;
    v28[0] = v20;
    v28[1] = v20;
    result = std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(v28);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = v4 + 4;
  }

  *(v3 + 1) = v9;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2 << 6, 0x102004052059E4BuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::FontGlyphCache::eraseGlyph(int8x8_t *a1, uint64_t *a2)
{
  v4 = a2[4];
  *(v4 + 62) = 0;
  v5 = std::__hash_table<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::__unordered_map_hasher<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::hash<GlyphCacheKey>,std::equal_to<GlyphCacheKey>,true>,std::__unordered_map_equal<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::equal_to<GlyphCacheKey>,std::hash<GlyphCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,mdm::zone_mallocator>>::find<GlyphCacheKey>(&a1[4], (a2 + 2));
  if (v5)
  {
    v6 = v5;
    v7 = a1[5];
    v8 = *(v5 + 1);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v7)
      {
        v8 %= *&v7;
      }
    }

    else
    {
      v8 &= *&v7 - 1;
    }

    v10 = a1[4];
    v11 = *(*&v10 + 8 * v8);
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11 != v5);
    if (v12 == &a1[7])
    {
      goto LABEL_19;
    }

    v13 = *(v12 + 1);
    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v8)
    {
LABEL_19:
      if (!*v5)
      {
        goto LABEL_20;
      }

      v14 = *(*v5 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v8)
      {
LABEL_20:
        *(*&v10 + 8 * v8) = 0;
      }
    }

    v15 = *v5;
    if (*v5)
    {
      v16 = *(v15 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }
      }

      else
      {
        v16 &= *&v7 - 1;
      }

      if (v16 != v8)
      {
        *(*&a1[4] + 8 * v16) = v12;
        v15 = *v5;
      }
    }

    *v12 = v15;
    *v5 = 0;
    --*&a1[9];
    v17 = mdm::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *>>(v17, v6);
    v4 = a2[4];
  }

  v18 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(&a1[11], v4);
  if (v18)
  {
    v19 = v18;
    v20 = a1[12];
    v21 = *(v18 + 1);
    v22 = vcnt_s8(v20);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      if (v21 >= *&v20)
      {
        v21 %= *&v20;
      }
    }

    else
    {
      v21 &= *&v20 - 1;
    }

    v23 = a1[11];
    v24 = *(*&v23 + 8 * v21);
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24 != v18);
    if (v25 == &a1[14])
    {
      goto LABEL_47;
    }

    v26 = *(v25 + 1);
    if (v22.u32[0] > 1uLL)
    {
      if (v26 >= *&v20)
      {
        v26 %= *&v20;
      }
    }

    else
    {
      v26 &= *&v20 - 1;
    }

    if (v26 != v21)
    {
LABEL_47:
      if (!*v18)
      {
        goto LABEL_48;
      }

      v27 = *(*v18 + 8);
      if (v22.u32[0] > 1uLL)
      {
        if (v27 >= *&v20)
        {
          v27 %= *&v20;
        }
      }

      else
      {
        v27 &= *&v20 - 1;
      }

      if (v27 != v21)
      {
LABEL_48:
        *(*&v23 + 8 * v21) = 0;
      }
    }

    v28 = *v18;
    if (*v18)
    {
      v29 = *(v28 + 8);
      if (v22.u32[0] > 1uLL)
      {
        if (v29 >= *&v20)
        {
          v29 %= *&v20;
        }
      }

      else
      {
        v29 &= *&v20 - 1;
      }

      if (v29 != v21)
      {
        *(*&a1[11] + 8 * v29) = v25;
        v28 = *v18;
      }
    }

    *v25 = v28;
    *v18 = 0;
    --*&a1[16];
    v30 = mdm::zone_mallocator::instance(v18);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<md::FontGlyph *,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,void *>>(v30, v19);
  }

  v32 = *a2;
  v31 = a2[1];
  *(v32 + 8) = v31;
  *v31 = v32;
  --*&a1[2];
  std::__list_imp<md::FontGlyphCache::CachedItem,geo::allocator_adapter<md::FontGlyphCache::CachedItem,mdm::zone_mallocator>>::__delete_node[abi:nn200100](a2);
  --a1[19].i32[0];
}

void md::VKMRenderResourceStoreSerializer::serializeWith(void *a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_associationItemStorage");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 13768) - *(a2 + 13760)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 13920) - *(a2 + 13912)) >> 3) - ((*(a2 + 13896) - *(a2 + 13888)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_baseMapTileRenderableStorage");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 13560) - *(a2 + 13552)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 13712) - *(a2 + 13704)) >> 3) - ((*(a2 + 13688) - *(a2 + 13680)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_clippingConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7264) - *(a2 + 7256)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 7416) - *(a2 + 7408)) >> 3) - ((*(a2 + 7392) - *(a2 + 7384)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_colorRampData");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 13144) - *(a2 + 13136)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 13296) - *(a2 + 13288)) >> 3) - ((*(a2 + 13272) - *(a2 + 13264)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_deviceDataStorage");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 14024) - *(a2 + 14016)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 14176) - *(a2 + 14168)) >> 3) - ((*(a2 + 14152) - *(a2 + 14144)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_elevatedStroke");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 10544) - *(a2 + 10536)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 10744) - *(a2 + 10736)) >> 3) - ((*(a2 + 10720) - *(a2 + 10712)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 10784));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 10808) - *(a2 + 10800)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 10880));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 10920));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverClipConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7968) - *(a2 + 7960)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 8168) - *(a2 + 8160)) >> 3) - ((*(a2 + 8144) - *(a2 + 8136)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7968) - *(a2 + 7960)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverMaterialConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9120) - *(a2 + 9112)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 9320) - *(a2 + 9312)) >> 3) - ((*(a2 + 9296) - *(a2 + 9288)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9120) - *(a2 + 9112)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverS2TransformConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8544) - *(a2 + 8536)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 8744) - *(a2 + 8736)) >> 3) - ((*(a2 + 8720) - *(a2 + 8712)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8544) - *(a2 + 8536)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverSharedConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7680) - *(a2 + 7672)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 7880) - *(a2 + 7872)) >> 3) - ((*(a2 + 7856) - *(a2 + 7848)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7680) - *(a2 + 7672)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverTexcoordsConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8832) - *(a2 + 8824)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 9032) - *(a2 + 9024)) >> 3) - ((*(a2 + 9008) - *(a2 + 9000)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8832) - *(a2 + 8824)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_flyoverTransformConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8256) - *(a2 + 8248)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 8456) - *(a2 + 8448)) >> 3) - ((*(a2 + 8432) - *(a2 + 8424)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 8256) - *(a2 + 8248)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_globeMatrices");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 12520) - *(a2 + 12512)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 12672) - *(a2 + 12664)) >> 3) - ((*(a2 + 12648) - *(a2 + 12640)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_gradientParameters");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 11616) - *(a2 + 11608)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 11816) - *(a2 + 11808)) >> 3) - ((*(a2 + 11792) - *(a2 + 11784)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 11856));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 11880) - *(a2 + 11872)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 11952));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 11992));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_landCoverSettings");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 6208) - *(a2 + 6200)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 6408) - *(a2 + 6400)) >> 3) - ((*(a2 + 6384) - *(a2 + 6376)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 6448));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 6472) - *(a2 + 6464)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 6544));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 6584));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_linearDepthConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7056) - *(a2 + 7048)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 7208) - *(a2 + 7200)) >> 3) - ((*(a2 + 7184) - *(a2 + 7176)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_materialStyle");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 12048) - *(a2 + 12040)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 12248) - *(a2 + 12240)) >> 3) - ((*(a2 + 12224) - *(a2 + 12216)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 12288));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 12312) - *(a2 + 12304)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 12384));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 12424));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_pipelineItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 320) - *(a2 + 312)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 520) - *(a2 + 512)) >> 3) - ((*(a2 + 496) - *(a2 + 488)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 320) - *(a2 + 312)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_pipelineStateItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 608) - *(a2 + 600)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 760) - *(a2 + 752)) >> 3) - ((*(a2 + 736) - *(a2 + 728)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_planarParametersDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 4480) - *(a2 + 4472)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 4680) - *(a2 + 4672)) >> 3) - ((*(a2 + 4656) - *(a2 + 4648)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 4720));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 4744) - *(a2 + 4736)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 4816));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 4856));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_planarParametersDataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 4912) - *(a2 + 4904)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 5112) - *(a2 + 5104)) >> 3) - ((*(a2 + 5088) - *(a2 + 5080)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 5152));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 5176) - *(a2 + 5168)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 5248));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 5288));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_positionScaleInfo");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9616) - *(a2 + 9608)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 9816) - *(a2 + 9808)) >> 3) - ((*(a2 + 9792) - *(a2 + 9784)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9616) - *(a2 + 9608)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_rasterOverlay");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 10976) - *(a2 + 10968)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 11128) - *(a2 + 11120)) >> 3) - ((*(a2 + 11104) - *(a2 + 11096)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_renderableDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 12936) - *(a2 + 12928)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 13088) - *(a2 + 13080)) >> 3) - ((*(a2 + 13064) - *(a2 + 13056)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_renderableRegistryItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 13352) - *(a2 + 13344)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 13504) - *(a2 + 13496)) >> 3) - ((*(a2 + 13480) - *(a2 + 13472)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_renderItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 216));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_renderStateItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 816) - *(a2 + 808)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 968) - *(a2 + 960)) >> 3) - ((*(a2 + 944) - *(a2 + 936)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_shadowConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 7472) - *(a2 + 7464)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 7624) - *(a2 + 7616)) >> 3) - ((*(a2 + 7600) - *(a2 + 7592)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_sRGBBlendStyle");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9904) - *(a2 + 9896)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 10056) - *(a2 + 10048)) >> 3) - ((*(a2 + 10032) - *(a2 + 10024)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleCameraLighting");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 9408) - *(a2 + 9400)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 9560) - *(a2 + 9552)) >> 3) - ((*(a2 + 9536) - *(a2 + 9528)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleColor");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 10112) - *(a2 + 10104)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 10312) - *(a2 + 10304)) >> 3) - ((*(a2 + 10288) - *(a2 + 10280)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 10352));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 10376) - *(a2 + 10368)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 10448));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 10488));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 1024) - *(a2 + 1016)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 1224) - *(a2 + 1216)) >> 3) - ((*(a2 + 1200) - *(a2 + 1192)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 1264));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 1288) - *(a2 + 1280)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 1360));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 1400));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleDataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 1456) - *(a2 + 1448)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 1656) - *(a2 + 1648)) >> 3) - ((*(a2 + 1632) - *(a2 + 1624)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 1696));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 1720) - *(a2 + 1712)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 1792));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 1832));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleSSAODataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 1888) - *(a2 + 1880)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 2088) - *(a2 + 2080)) >> 3) - ((*(a2 + 2064) - *(a2 + 2056)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 2128));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 2152) - *(a2 + 2144)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 2224));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 2264));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleSSAODataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 2320) - *(a2 + 2312)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 2520) - *(a2 + 2512)) >> 3) - ((*(a2 + 2496) - *(a2 + 2488)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 2560));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 2584) - *(a2 + 2576)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 2656));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 2696));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleEmissiveColorDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 3616) - *(a2 + 3608)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 3816) - *(a2 + 3808)) >> 3) - ((*(a2 + 3792) - *(a2 + 3784)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 3856));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 3880) - *(a2 + 3872)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 3952));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 3992));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleEmissiveColorDataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 4048) - *(a2 + 4040)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 4248) - *(a2 + 4240)) >> 3) - ((*(a2 + 4224) - *(a2 + 4216)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 4288));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 4312) - *(a2 + 4304)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 4384));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 4424));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleGroundOcclusion");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 11184) - *(a2 + 11176)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 11384) - *(a2 + 11376)) >> 3) - ((*(a2 + 11360) - *(a2 + 11352)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 11424));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 11448) - *(a2 + 11440)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 11520));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 11560));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleRouteLineMaskDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 2752) - *(a2 + 2744)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 2952) - *(a2 + 2944)) >> 3) - ((*(a2 + 2928) - *(a2 + 2920)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 2992));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 3016) - *(a2 + 3008)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 3088));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 3128));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_styleRouteLineMaskDataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 3184) - *(a2 + 3176)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 3384) - *(a2 + 3376)) >> 3) - ((*(a2 + 3360) - *(a2 + 3352)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 3424));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 3448) - *(a2 + 3440)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 3520));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 3560));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_colorCorrectionFactorDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 5344) - *(a2 + 5336)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 5544) - *(a2 + 5536)) >> 3) - ((*(a2 + 5520) - *(a2 + 5512)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 5584));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 5608) - *(a2 + 5600)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 5680));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 5720));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_colorCorrectionFactorDataKeys");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 5776) - *(a2 + 5768)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 5976) - *(a2 + 5968)) >> 3) - ((*(a2 + 5952) - *(a2 + 5944)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "pool_inUse");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 6016));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "pool_freeList");
  gdc::DebugTreeValue::DebugTreeValue(__p, (*(a2 + 6040) - *(a2 + 6032)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "keyToHandle");
  gdc::DebugTreeValue::DebugTreeValue(&__str, *(a2 + 6112));
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handleToKey");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(a2 + 6152));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_tileMatrices");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 12728) - *(a2 + 12720)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 12880) - *(a2 + 12872)) >> 3) - ((*(a2 + 12856) - *(a2 + 12848)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_transformConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 6640) - *(a2 + 6632)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 6792) - *(a2 + 6784)) >> 3) - ((*(a2 + 6768) - *(a2 + 6760)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  std::string::basic_string[abi:nn200100]<0>(&__str, "_viewConstantDataItems");
  std::string::operator=(v4, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "items");
  gdc::DebugTreeValue::DebugTreeValue(&__str, (*(a2 + 6848) - *(a2 + 6840)) >> 3);
  gdc::DebugTreeNode::addProperty(v4, __p, &__str);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "handles");
  gdc::DebugTreeValue::DebugTreeValue(__p, ((*(a2 + 7000) - *(a2 + 6992)) >> 3) - ((*(a2 + 6976) - *(a2 + 6968)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  gdc::DebugTreeNode::addChildNode(a1, v4);
  __str.__r_.__value_.__r.__words[0] = &v8 + 8;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v7;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1B31610B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  a27 = &a24;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a27);
  a27 = &a21;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t md::DaVinciCenterLineRoadsTileData::estimatedCost(md::DaVinciCenterLineRoadsTileData *this)
{
  if (atomic_load_explicit(&md::DaVinciCenterLineRoadsTileData::estimatedCost(void)const::flag, memory_order_acquire) != -1)
  {
    v25 = &v23;
    v24 = &v25;
    std::__call_once(&md::DaVinciCenterLineRoadsTileData::estimatedCost(void)const::flag, &v24, std::__call_once_proxy[abi:nn200100]<std::tuple<md::DaVinciCenterLineRoadsTileData::estimatedCost(void)::$_0 &&>>);
  }

  v2 = *(this + 94);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    if (v3 == v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      do
      {
        v5 = *v3++;
        v2 = *(**(v5 + 64) + 48) + v2 + *(*(v5 + 96) + 48) - (*(**(v5 + 64) + 40) + *(*(v5 + 96) + 40));
      }

      while (v3 != v4);
    }
  }

  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    while (v7 != v8)
    {
      v9 = *v7++;
      v2 = *(**(v9 + 64) + 48) + v2 + *(*(v9 + 96) + 48) - (*(**(v9 + 64) + 40) + *(*(v9 + 96) + 40));
    }
  }

  v10 = *(this + 91);
  if (v10)
  {
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    while (v11 != v12)
    {
      v13 = *v11++;
      v2 = *(**(v13 + 64) + 48) + v2 + *(*(v13 + 96) + 48) - (*(**(v13 + 64) + 40) + *(*(v13 + 96) + 40));
    }
  }

  v14 = *(this + 93);
  if (v14)
  {
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    while (v15 != v16)
    {
      v17 = *v15++;
      v2 = *(**(v17 + 64) + 48) + v2 + *(*(v17 + 96) + 48) - (*(**(v17 + 64) + 40) + *(*(v17 + 96) + 40));
    }
  }

  v18 = *(this + 103);
  if (v18)
  {
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    while (v19 != v20)
    {
      v21 = *v19++;
      v2 = *(**(v21 + 64) + 48) + v2 + *(*(v21 + 96) + 48) - (*(**(v21 + 64) + 40) + *(*(v21 + 96) + 40));
    }
  }

  return ((((10 * *(this + 95)) * 30720.0) / md::DaVinciCenterLineRoadsTileData::estimatedCost(void)const::metalBufferCacheCountMaximum) + v2);
}

uint64_t std::__call_once_proxy[abi:nn200100]<std::tuple<md::DaVinciCenterLineRoadsTileData::estimatedCost(void)::$_0 &&>>()
{
  result = GEOConfigGetUInteger();
  md::DaVinciCenterLineRoadsTileData::estimatedCost(void)const::metalBufferCacheCountMaximum = result;
  return result;
}

void md::DaVinciCenterLineRoadsTileData::~DaVinciCenterLineRoadsTileData(md::DaVinciCenterLineRoadsTileData *this)
{
  md::DaVinciCenterLineRoadsTileData::~DaVinciCenterLineRoadsTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38678;
  *(this + 80) = &unk_1F2A386B8;
  v2 = *(this + 107);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 103);
  *(this + 103) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 99));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 768));
  v5 = *(this + 94);
  *(this + 94) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 93);
  *(this + 93) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 92);
  *(this + 92) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 91);
  *(this + 91) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  md::MapTileData::~MapTileData(this);
}

void anonymous namespace::addContourLinesToBatches(mdm::zone_mallocator *a1, mdm::zone_mallocator *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v24 = a3[1];
  if (*a3 != v24)
  {
    v9 = a3[4];
    v23 = *(v9 + 32) + 8;
    v10 = *(v9 + 8);
    do
    {
      v11 = *a4;
      md::createFeatureAttributeSet(&v42, (v6 + 32));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v40, v11, &v42);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v42);
      v12 = v40;
      v13 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v42, v12, v13);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      if (v45 == 1)
      {
        v14 = (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v42[3], 0x12Cu, 2u) & 1) != 0 || (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v42[3], 0x12Du, 2u) & 1) != 0 || gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(150, 2, v42[3]) == 1;
      }

      else
      {
        v14 = 0;
      }

      if (*(v6 + 20))
      {
        v15 = 0;
        v16 = (v23 + 16 * *(v6 + 16));
        do
        {
          v17 = *(v16 - 1);
          v18 = v10 + 8 * v17;
          v19 = *(a3[4] + 24) + 4 * v17;
          if (v14)
          {
            v20 = v41;
            v39[0] = v40;
            v39[1] = v41;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = *v16;
            LOBYTE(v37) = 0;
            v38 = 0;
            v36[0] = 0;
            v36[1] = 0;
            v31[0] = 255;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 1;
          }

          else
          {
            v20 = v41;
            v30[0] = v40;
            v30[1] = v41;
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v22 = *v16;
            v29[0] = 0;
            v29[8] = 0;
            v28[0] = 0;
            v28[8] = 0;
            LOBYTE(v37) = 0;
            v38 = 0;
            v27[0] = 0;
            v27[1] = 0;
            v31[0] = 255;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 1;
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          ++v15;
          v16 += 2;
        }

        while (v15 < *(v6 + 20));
      }

      if (v45 == 1)
      {
        (*(*v42 + 56))(v42);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }

      v6 += 56;
    }

    while (v6 != v24);
  }
}