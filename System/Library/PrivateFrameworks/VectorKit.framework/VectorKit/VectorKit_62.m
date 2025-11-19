void sub_1B2BE02A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

mdm::zone_mallocator *md::TrafficIncidentLabelFeature::updateStyleAttributes(md::TrafficIncidentLabelFeature *this, md::LabelManager *a2, int a3)
{
  v135[1] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 16))(a2);
  v6 = result;
  if (!*(this + 42) || (*(this + 352) == result ? (v7 = a3 == 0) : (v7 = 0), !v7))
  {
    *(this + 352) = result;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v131 = v135;
    v8 = mdm::zone_mallocator::instance(result);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v8, 1);
    *v9 = 0x300000005;
    memcpy(v9 - (v133 - v132), v132, v133 - v132);
    v10 = v132;
    v11 = v134;
    v132 = v9 - (v133 - v132);
    v133 = v9 + 1;
    v134 = (v9 + 1);
    v129 = v10;
    v130 = v11;
    v127 = v10;
    v128 = v10;
    v12 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    v133 = v9 + 1;
    if ((v9 + 1) >= v134)
    {
      v14 = ((v9 + 1) - v132) >> 3;
      if ((v14 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v15 = (v134 - v132) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v131 = v135;
      if (v16)
      {
        v17 = mdm::zone_mallocator::instance(v12);
        v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v17, v16);
      }

      else
      {
        v18 = 0;
      }

      v20 = &v18[8 * v16];
      v19 = &v18[8 * v14];
      *v19 = 0xDE00000006;
      v13 = (v19 + 8);
      v21 = &v19[-(v133 - v132)];
      memcpy(v21, v132, v133 - v132);
      v22 = v132;
      v23 = v134;
      v132 = v21;
      v133 = v13;
      v134 = v20;
      v129 = v22;
      v130 = v23;
      v127 = v22;
      v128 = v22;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      v9[1] = 0xDE00000006;
      v13 = v9 + 2;
    }

    v133 = v13;
    v24 = [*(this + 31) type];
    if (v24 >= 0xF)
    {
      v25 = v24;
    }

    else
    {
      v25 = dword_1B34180F8[v24];
    }

    v26 = v133;
    if (v133 >= v134)
    {
      v28 = (v133 - v132) >> 3;
      if ((v28 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v29 = (v134 - v132) >> 2;
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      v131 = v135;
      if (v30)
      {
        v31 = mdm::zone_mallocator::instance(v24);
        v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v31, v30);
      }

      else
      {
        v32 = 0;
      }

      v34 = &v32[8 * v30];
      v33 = &v32[8 * v28];
      *v33 = ((v25 << 32) | 0x10002) + 6;
      v27 = (v33 + 8);
      v35 = &v33[-(v133 - v132)];
      memcpy(v35, v132, v133 - v132);
      v36 = v132;
      v37 = v134;
      v132 = v35;
      v133 = v27;
      v134 = v34;
      v129 = v36;
      v130 = v37;
      v127 = v36;
      v128 = v36;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      *v133 = ((v25 << 32) | 0x10002) + 6;
      v27 = v26 + 1;
    }

    v133 = v27;
    v38 = [*(this + 31) significance];
    v39 = 0xD0000000ALL;
    if (v38 > 3)
    {
      if ((v38 - 4) >= 2)
      {
        if (v38 == 6)
        {
          v39 = 0xE0000000ALL;
        }
      }

      else
      {
        v39 = 0x20000000ALL;
      }
    }

    else
    {
      switch(v38)
      {
        case 0:
          goto LABEL_56;
        case 2:
          v39 = 10;
          break;
        case 3:
          v39 = 0x10000000ALL;
          break;
      }
    }

    v40 = v133;
    if (v133 >= v134)
    {
      v42 = (v133 - v132) >> 3;
      if ((v42 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v43 = (v134 - v132) >> 2;
      if (v43 <= v42 + 1)
      {
        v43 = v42 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      v131 = v135;
      if (v44)
      {
        v45 = mdm::zone_mallocator::instance(v38);
        v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v45, v44);
      }

      else
      {
        v46 = 0;
      }

      v48 = &v46[8 * v44];
      v47 = &v46[8 * v42];
      *v47 = v39;
      v41 = v47 + 1;
      v49 = v47 - (v133 - v132);
      memcpy(v49, v132, v133 - v132);
      v50 = v132;
      v51 = v134;
      v132 = v49;
      v133 = v41;
      v134 = v48;
      v129 = v50;
      v130 = v51;
      v127 = v50;
      v128 = v50;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      *v133 = v39;
      v41 = v40 + 1;
    }

    v133 = v41;
LABEL_56:
    v52 = [*(this + 31) dataSource];
    if ((v52 & 0x100) != 0)
    {
      v53 = v52;
      v54 = v133;
      if (v133 >= v134)
      {
        v56 = (v133 - v132) >> 3;
        if ((v56 + 1) >> 61)
        {
          goto LABEL_149;
        }

        v57 = (v134 - v132) >> 2;
        if (v57 <= v56 + 1)
        {
          v57 = v56 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v58 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v57;
        }

        v131 = v135;
        if (v58)
        {
          v59 = mdm::zone_mallocator::instance(v52);
          v60 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v59, v58);
        }

        else
        {
          v60 = 0;
        }

        v62 = &v60[8 * v58];
        v61 = &v60[8 * v56];
        *v61 = ((v53 << 32) | 0x10002) + 89;
        v55 = (v61 + 8);
        v63 = &v61[-(v133 - v132)];
        memcpy(v63, v132, v133 - v132);
        v64 = v132;
        v65 = v134;
        v132 = v63;
        v133 = v55;
        v134 = v62;
        v129 = v64;
        v130 = v65;
        v127 = v64;
        v128 = v64;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
      }

      else
      {
        *v133 = ((v52 << 32) | 0x10002) + 89;
        v55 = v54 + 1;
      }

      v133 = v55;
    }

    v66 = [*(this + 31) routeRelevance];
    v67 = [*(this + 31) isOnSelectedRoute];
    if ((v66 - 2) < 2)
    {
      v70 = v67;
      v71 = v133;
      if (v133 >= v134)
      {
        v72 = (v133 - v132) >> 3;
        if ((v72 + 1) >> 61)
        {
          goto LABEL_149;
        }

        v73 = (v134 - v132) >> 2;
        if (v73 <= v72 + 1)
        {
          v73 = v72 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v74 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73;
        }

        v131 = v135;
        if (v74)
        {
          v75 = mdm::zone_mallocator::instance(v67);
          v76 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v75, v74);
        }

        else
        {
          v76 = 0;
        }

        v83 = &v76[8 * v74];
        v82 = &v76[8 * v72];
        *v82 = 0x100010007;
        v68 = (v82 + 8);
        v84 = &v82[-(v133 - v132)];
        memcpy(v84, v132, v133 - v132);
        v85 = v132;
        v86 = v134;
        v132 = v84;
        v133 = v68;
        v134 = v83;
        v129 = v85;
        v130 = v86;
        v127 = v85;
        v128 = v85;
        v67 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
      }

      else
      {
        *v133 = 0x100010007;
        v68 = v71 + 1;
      }

      v133 = v68;
      if (v70)
      {
        v87 = 2 * (v66 != 3);
        if (v68 >= v134)
        {
          v88 = (v68 - v132) >> 3;
          if ((v88 + 1) >> 61)
          {
            goto LABEL_149;
          }

          v89 = (v134 - v132) >> 2;
          if (v89 <= v88 + 1)
          {
            v89 = v88 + 1;
          }

          if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
          {
            v90 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v89;
          }

          v131 = v135;
          if (v90)
          {
            v91 = mdm::zone_mallocator::instance(v67);
            v92 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v91, v90);
          }

          else
          {
            v92 = 0;
          }

          v102 = &v92[8 * v90];
          v101 = &v92[8 * v88];
          *v101 = ((v87 << 32) | 0x10002) + 7;
          v68 = (v101 + 8);
          v103 = &v101[-(v133 - v132)];
          memcpy(v103, v132, v133 - v132);
          v104 = v132;
          v105 = v134;
          v132 = v103;
          v133 = v68;
          v134 = v102;
          v129 = v104;
          v130 = v105;
          v127 = v104;
          v128 = v104;
          v67 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
        }

        else
        {
          *v68++ = ((v87 << 32) | 0x10002) + 7;
        }

        v133 = v68;
      }

      if (v68 < v134)
      {
        if (v70)
        {
          v69 = 0x100010002;
        }

        else
        {
          v69 = 65538;
        }

        goto LABEL_126;
      }

      v107 = (v68 - v132) >> 3;
      if (!((v107 + 1) >> 61))
      {
        v108 = (v134 - v132) >> 2;
        if (v108 <= v107 + 1)
        {
          v108 = v107 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v109 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v109 = v108;
        }

        v131 = v135;
        if (v109)
        {
          v110 = mdm::zone_mallocator::instance(v67);
          v111 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v110, v109);
        }

        else
        {
          v111 = 0;
        }

        v112 = &v111[8 * v107];
        v113 = &v111[8 * v109];
        if (v70)
        {
          v114 = 0x100010002;
        }

        else
        {
          v114 = 65538;
        }

        *v112 = v114;
        v106 = v112 + 1;
        v115 = v112 - (v133 - v132);
        memcpy(v115, v132, v133 - v132);
        v116 = v132;
        v117 = v134;
        v132 = v115;
        v133 = v106;
        v134 = v113;
        goto LABEL_143;
      }
    }

    else if (v66 == 1)
    {
      v68 = v133;
      if (v133 < v134)
      {
        v69 = 0x200010007;
        goto LABEL_126;
      }

      v77 = (v133 - v132) >> 3;
      if (!((v77 + 1) >> 61))
      {
        v78 = (v134 - v132) >> 2;
        if (v78 <= v77 + 1)
        {
          v78 = v77 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v79 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v78;
        }

        v131 = v135;
        if (v79)
        {
          v80 = mdm::zone_mallocator::instance(v67);
          v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v80, v79);
        }

        else
        {
          v81 = 0;
        }

        v98 = &v81[8 * v77];
        v99 = &v81[8 * v79];
        v100 = 0x200010007;
        goto LABEL_142;
      }
    }

    else
    {
      if (v66 || !v6)
      {
        goto LABEL_145;
      }

      v68 = v133;
      if (v133 < v134)
      {
        v69 = 65543;
LABEL_126:
        *v68 = v69;
        v106 = v68 + 1;
LABEL_144:
        v133 = v106;
LABEL_145:
        v119 = [*(this + 31) artwork];
        v120 = [v119 icon];
        v121 = [v120 styleAttributes];

        if (v121)
        {
          v122 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v121];
          v123 = v133;
          v124 = [v122 data];
          v125 = [v122 data];
          v126 = [v122 countAttrs];
          std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<GeoCodecsFeatureStylePair const*,GeoCodecsFeatureStylePair const*>(&v132, v123, v124, (v125 + 8 * v126), (v125 + 8 * v126 - v124) >> 3);
        }

        _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v93 = (v133 - v132) >> 3;
      if (!((v93 + 1) >> 61))
      {
        v94 = (v134 - v132) >> 2;
        if (v94 <= v93 + 1)
        {
          v94 = v93 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v95 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        v131 = v135;
        if (v95)
        {
          v96 = mdm::zone_mallocator::instance(v67);
          v97 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v96, v95);
        }

        else
        {
          v97 = 0;
        }

        v98 = &v97[8 * v93];
        v99 = &v97[8 * v95];
        v100 = 65543;
LABEL_142:
        *v98 = v100;
        v106 = v98 + 1;
        v118 = v98 - (v133 - v132);
        memcpy(v118, v132, v133 - v132);
        v116 = v132;
        v117 = v134;
        v132 = v118;
        v133 = v106;
        v134 = v99;
LABEL_143:
        v129 = v116;
        v130 = v117;
        v127 = v116;
        v128 = v116;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
        goto LABEL_144;
      }
    }

LABEL_149:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2BE0C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }

  return this;
}

void md::TrafficIncidentLabelFeature::updateStyle(id *this, md::LabelManager *a2)
{
  md::TrafficIncidentLabelFeature::updateStyleAttributes(this, *(*(a2 + 21) + 48), 0);
  md::LabelFeatureStyler::restyleFeature(*(a2 + 37), this);
  if (*(this + 80) == 0.0)
  {
    v4 = *(a2 + 42);
    v6 = *(v4 + 184);
    v5 = *(v4 + 192);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v10, *(v6 + 16));
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v7 = [this[31] type];
    v8 = v10;
    if (v10)
    {
      switch(v7)
      {
        case 0:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v9 = v10[12];
          goto LABEL_10;
        case 1:
          v9 = v10[13];
          goto LABEL_10;
        case 2:
          v9 = v10[14];
          goto LABEL_10;
        case 3:
          v9 = v10[15];
          goto LABEL_10;
        case 4:
          v9 = v10[16];
          goto LABEL_10;
        case 5:
          v9 = v10[17];
          goto LABEL_10;
        case 6:
          v9 = v10[18];
          goto LABEL_10;
        case 7:
          v9 = v10[19];
          goto LABEL_10;
        case 8:
          v9 = v10[20];
LABEL_10:
          v8 = v9;
          break;
        default:
          break;
      }
    }

    *(this + 80) = v8;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }
}

void sub_1B2BE0EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void grl::IconRequestOptions::setResourceNames(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__init_with_size[abi:nn200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v8, a2, a3, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3));
  if (*(a1 + 16))
  {
    std::vector<std::string>::clear[abi:nn200100]((a1 + 16));
    v4 = *(a1 + 16);
    v6 = grl::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v6, v4);
  }

  *(a1 + 16) = v8;
  v7 = &v8;
  memset(&v8, 0, sizeof(v8));
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  *(a1 + 12) = 1;
}

void grl::IconManager::imageForKeyValue(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, const grl::IconModifiers *a5, float *a6, _DWORD *a7)
{
  v42[8] = *MEMORY[0x1E69E9840];
  v13 = grl::IconManager::identifierForMapKeyValue(a2, a3, a4, ceilf(*a6));
  v14 = v13;
  if (a7)
  {
    *a7 = v13;
  }

  if (!v13)
  {
    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v28 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = a4;
      _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Failed to find Icon ID for key: %i - value: %i", buf, 0xEu);
    }

    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v15 = *(a5 + 17);
  v34 = *(a5 + 18);
  if (v15 == v34)
  {
    goto LABEL_47;
  }

  v29 = v13;
  v30 = a7;
  v31 = a1;
  v16 = 0;
  do
  {
    v17 = *v15;
    v18 = grl::IconManager::identifierForMapKeyValue(a2, a3, *v15, ceilf(*a6));
    if (v18)
    {
      v19 = v18;
      grl::IconModifiers::IconModifiers(buf, a5);
      buf[3] = 1;
      v39 = 0;
      v37 = v38;
      v38[0] = 0;
      grl::IconManager::imageForIconID(&v35, a2, v19, buf, a6, &v37, 0);
      std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v38[0]);
      v20 = v35 != 0;
      if (v35)
      {
        v14 = *(v35 + 153);
        if (v14 == 1)
        {
          v32 = *(v35 + 154);
        }
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v36);
      }

      grl::IconModifiers::~IconModifiers(buf);
      if (v14)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
      }

      v21 = GEOGetGeoResourceLibIconManagerLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = a3;
        LOWORD(v41[0]) = 1024;
        *(v41 + 2) = v17;
        _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "Failed to find Icon ID for key: %i - value: %i", buf, 0xEu);
        if (v14)
        {
          v20 = 0;
LABEL_31:
          if (((v16 >> 2) + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v16 >> 2 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v16 >> 2) + 1);
          }

          v24 = (4 * (v16 >> 2));
          *v24 = v32;
          v23 = v24 + 1;
          if (v16)
          {
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = *v25++;
              *v26++ = v27;
            }

            while (v25 != v16);
          }

          v16 = v23;
          if (v20)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        v20 = 0;
      }

      else
      {
        v20 = 0;
        if (v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v22 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = v17;
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_ERROR, "Failed to find clustercolor for key: %i - value: %i", buf, 0xEu);
      v23 = v16;
      if (!v20)
      {
        goto LABEL_27;
      }

LABEL_26:
      LOBYTE(v14) = 0;
      v16 = v23;
      goto LABEL_27;
    }

    v23 = v16;
    if (v20)
    {
      goto LABEL_26;
    }

LABEL_27:
    ++v15;
  }

  while (v15 != v34);
  if (v16)
  {
    grl::IconModifiers::IconModifiers(buf, a5);
    std::vector<geo::Color<unsigned char,4,(geo::ColorSpace)2>>::__assign_with_size[abi:nn200100]<geo::Color<unsigned char,4,(geo::ColorSpace)2>*,geo::Color<unsigned char,4,(geo::ColorSpace)2>*>(v42, 0, v16, v16 >> 2);
    v39 = 0;
    v37 = v38;
    v38[0] = 0;
    grl::IconManager::imageForIconID(v31, a2, v29, buf, a6, &v37, v30);
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v38[0]);
    grl::IconModifiers::~IconModifiers(buf);
    return;
  }

  a7 = v30;
  a1 = v31;
  v14 = v29;
LABEL_47:
  v41[2] = 0;
  *buf = v41;
  v41[0] = 0;
  grl::IconManager::imageForIconID(a1, a2, v14, a5, a6, buf, a7);
  std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v41[0]);
}

void sub_1B2BE166C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void md::LabelFeatureStyler::restyleFeature(md::LabelFeatureStyler *this, md::LabelFeature *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a2 + 584))(a2, &v8, *(*this + 336) + 184);
  memset(&v7, 0, sizeof(v7));
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::assign(&v7, (v9 - v8) >> 4, &v4);
  v5.__shared_owners_ = 0;
  v5.__shared_weak_owners_ = 0;
  v6 = 0;
  md::LabelStyleCache::requestStyles(*(*this + 336), &v8, &v5.__shared_owners_, &v7);
  (*(*a2 + 592))(a2);
  v5.__vftable = &v5.__shared_owners_;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7.__vftable = &v8;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void sub_1B2BE17F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = v16 - 72;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

grl::zone_mallocator *std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(grl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 2) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 2);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = grl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v6, v5);
  }

  return a1;
}

void md::TrafficIncidentLabelFeature::populateStyleQueries(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  (*(*a1 + 600))(&v5);
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v7, a3, &v5, 0);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2BE1938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::TrafficIncidentLabelFeature::styleAttributes(void *a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 560))(a1, &v5);
  if (v5 != v6)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  v4 = a1[43];
  *a2 = a1[42];
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
}

void sub_1B2BE1A4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::assign(char *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate(result);
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = *(v5 + 2) - *v5;
    v8 = v7 >> 2;
    if (v7 >> 2 <= a2)
    {
      v8 = a2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    result = std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v5, v9);
    v10 = 0;
    v11 = *(v5 + 1);
    v12 = *a3;
    v13 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v10), xmmword_1B33B0560)));
      if (v15.i8[0])
      {
        *(v11 + 8 * v10) = v12;
      }

      if (v15.i8[4])
      {
        *(v11 + 8 * v10 + 8) = v12;
      }

      v10 += 2;
    }

    while (v13 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v10);
    goto LABEL_34;
  }

  v16 = *(result + 1);
  v17 = v16 - v6;
  v18 = (v16 - v6) >> 3;
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = (v16 - v6) >> 3;
  }

  if (v19)
  {
    v20 = 0;
    v21 = *a3;
    v22 = vdupq_n_s64(v19 - 1);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1B33B0560)));
      if (v23.i8[0])
      {
        *(v6 + 8 * v20) = v21;
      }

      if (v23.i8[4])
      {
        *(v6 + 8 * v20 + 8) = v21;
      }

      v20 += 2;
    }

    while (((v19 + 1) & 0xFFFFFFFFFFFFFFFELL) != v20);
  }

  v24 = a2 - v18;
  if (a2 <= v18)
  {
    v11 = *result;
LABEL_34:
    v31 = v11 + 8 * a2;
    goto LABEL_35;
  }

  v25 = 0;
  v26 = *(result + 1);
  v27 = *a3;
  v28 = (8 * a2 - v17 - 8) >> 3;
  v29 = vdupq_n_s64(v28);
  do
  {
    v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_1B33B0560)));
    if (v30.i8[0])
    {
      *(v26 + 8 * v25) = v27;
    }

    if (v30.i8[4])
    {
      *(v26 + 8 * v25 + 8) = v27;
    }

    v25 += 2;
  }

  while (((v28 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
  v31 = v26 + 8 * v24;
LABEL_35:
  *(v5 + 1) = v31;
  return result;
}

void std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(v3, v1);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

char *std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void md::GeoResourceProvider::resourceNames(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v36 = a2;
  std::mutex::lock((a1 + 112));
  v6 = *(a1 + 328);
  v7 = geo::linear_map<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>,std::equal_to<std::bitset<2ul>>,std::allocator<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>,std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>>::find(*(a1 + 320), v6, &v36);
  if (v6 != v7)
  {
    v8 = *(v7 + 2);
    *a3 = *(v7 + 1);
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_41;
  }

  v44 = 0uLL;
  v45 = 0;
  if ((v3 & 1) == 0)
  {
LABEL_20:
    if ((v3 & 2) != 0)
    {
      v18 = [MEMORY[0x1E69A2478] modernManager];
      v19 = [v18 allRegionalResourceNames];

      if (v19 && [v19 count])
      {
        std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(&v44, [v19 count] - 0x5555555555555555 * ((*(&v44 + 1) - v44) >> 3));
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v21)
        {
          v22 = *v29;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = [*(*(&v28 + 1) + 8 * i) UTF8String];
              *buf = v24;
              if (v24)
              {
                v25 = *(&v44 + 1);
                if (*(&v44 + 1) >= v45)
                {
                  v26 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(&v44, buf);
                }

                else
                {
                  std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(*(&v44 + 1), v24);
                  v26 = (v25 + 24);
                }

                *(&v44 + 1) = v26;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v21);
        }
      }
    }

    operator new();
  }

  v9 = [MEMORY[0x1E69A2468] sharedManager];
  v10 = [v9 allResourceNames];

  if (v10 && [v10 count])
  {
    std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(&v44, [v10 count]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v32 + 1) + 8 * j) UTF8String];
          *buf = v15;
          if (v15)
          {
            v16 = *(&v44 + 1);
            if (*(&v44 + 1) >= v45)
            {
              v17 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(&v44, buf);
            }

            else
            {
              std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(*(&v44 + 1), v15);
              v17 = (v16 + 24);
            }

            *(&v44 + 1) = v17;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v12);
    }

    goto LABEL_20;
  }

  v27 = GEOGetVectorKitVKGeoResourceProviderLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "false";
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/GeoResourceProvider.mm";
    v42 = 1024;
    v43 = 125;
    _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "A non-empty set of resource name of global resources is expected: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

  *a3 = 0;
  a3[1] = 0;

  *buf = &v44;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_41:
  std::mutex::unlock((a1 + 112));
}

void sub_1B2BE2240(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  *(v3 - 176) = v3 - 144;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v3 - 176));
  std::mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

_DWORD *geo::linear_map<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>,std::equal_to<std::bitset<2ul>>,std::allocator<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>,std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>>::find(_DWORD *a1, _DWORD *a2, void *a3)
{
  if (a1 != a2)
  {
    while (((*a3 ^ *a1) & 3) != 0)
    {
      a1 += 6;
      if (a1 == a2)
      {
        return a2;
      }
    }

    return a1;
  }

  return a2;
}

grl::zone_mallocator *std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(grl::zone_mallocator *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 2) - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = grl::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[24 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

int64_t grl::ResourceTypeFromPackExtension(_BYTE *a1, int64_t a2)
{
  v3 = 0;
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

  v7 = v5 + v6;
  while (1)
  {
    v8 = off_1E7B584C8[v3];
    result = strlen(v8);
    if (!result)
    {
      break;
    }

    v10 = result;
    if (v6 >= result)
    {
      v11 = *v8;
      v12 = v6;
      result = v5;
      do
      {
        v13 = v12 - v10;
        if (v13 == -1)
        {
          break;
        }

        result = memchr(result, v11, v13 + 1);
        if (!result)
        {
          break;
        }

        v14 = result;
        result = memcmp(result, v8, v10);
        if (!result)
        {
          if (v14 == v7 || v14 - v5 == -1)
          {
            break;
          }

          goto LABEL_20;
        }

        result = v14 + 1;
        v12 = v7 - (v14 + 1);
      }

      while (v12 >= v10);
    }

    if (++v3 == 4)
    {
      *a1 = 0;
      return result;
    }
  }

LABEL_20:
  *a1 = 1;
  a1[1] = v3;
  return result;
}

grl::zone_mallocator *std::back_insert_iterator<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::operator=[abi:nn200100](grl::zone_mallocator *a1, __int128 *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v23[4] = v4 + 24;
    if (v11)
    {
      v12 = grl::zone_mallocator::instance(a1);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[24 * v8];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      v15->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v15->__r_.__value_.__l.__data_ = v16;
    }

    v17 = &v13[24 * v11];
    v14 = v15 + 1;
    v18 = *(v4 + 8) - *v4;
    v19 = v15 - v18;
    memcpy(v15 - v18, *v4, v18);
    v20 = *v4;
    *v4 = v19;
    v23[0] = v20;
    v23[1] = v20;
    *(v4 + 8) = v15 + 1;
    v23[2] = v20;
    v21 = *(v4 + 16);
    *(v4 + 16) = v17;
    v23[3] = v21;
    std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(v23);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(*a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 2);
      *v6 = v7;
    }

    v14 = (v6 + 24);
  }

  *(v4 + 8) = v14;
  return a1;
}

unsigned __int8 *std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::__emplace_unique_key_args<grl::ResourceProvider::ResourceCacheKey,grl::ResourceProvider::ResourceCacheKey&,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>(uint64_t a1, unsigned __int8 *a2)
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
      if (!std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](a2, v2 + 32))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](v4 + 32, a2))
    {
      return v4;
    }

    v2 = *(v4 + 1);
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

grl::zone_mallocator *std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](grl::zone_mallocator *a1, char *a2, size_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3)
  {
    v4 = a3;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__vallocate[abi:nn200100](a1, a3);
    v6 = *(a1 + 1);
    do
    {
      v7 = *a2++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
    *(a1 + 1) = v6;
  }

  return a1;
}

grl::codec::PathLayerData *grl::codec::PathLayerData::PathLayerData(grl::codec::PathLayerData *this, const grl::codec::PathLayerData *a2, unsigned int a3, const grl::IconModifiers *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  LOWORD(__src) = 515;
  BYTE2(__src) = 1;
  v8 = std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](this, &__src, 3uLL);
  *(v8 + 10) = 0;
  v9 = (v8 + 40);
  *(v8 + 16) = 0;
  *(v8 + 34) = -1;
  v10 = (v8 + 44);
  *(v8 + 43) = 0;
  *(v8 + 47) = 255;
  *(v8 + 52) = 0;
  *(v8 + 60) = 0;
  *(v8 + 16) = 1119092736;
  *(v8 + 17) = -16777216;
  *(v8 + 18) = 1065353216;
  *(v8 + 76) = 4278190080;
  *(v8 + 21) = 1;
  *(v8 + 88) = -1;
  *(v8 + 23) = 0;
  *(v8 + 96) = 0;
  *(v8 + 25) = 1065353216;
  *(v8 + 26) = -16777216;
  *(v8 + 31) = 0;
  *(v8 + 113) = 0;
  *(v8 + 108) = 0;
  *(v8 + 128) = 1;
  if (a2)
  {
    *(this + 32) = *(a2 + 32);
    v11 = *(a2 + 33);
    *(this + 33) = v11;
    for (i = 34; i != 38; ++i)
    {
      *(this + i) = *(a2 + i);
    }

    *v9 = *(a2 + 10);
    for (j = 44; j != 48; ++j)
    {
      *(this + j) = *(a2 + j);
    }

    v14 = *(a2 + 48);
    *(this + 48) = v14;
    *(this + 13) = *(a2 + 13);
    *(this + 14) = *(a2 + 14);
    *(this + 60) = *(a2 + 60);
    *(this + 16) = *(a2 + 16);
    for (k = 68; k != 72; ++k)
    {
      *(this + k) = *(a2 + k);
    }

    *(this + 18) = *(a2 + 18);
    for (m = 76; m != 80; ++m)
    {
      *(this + m) = *(a2 + m);
    }

    *(this + 20) = *(a2 + 20);
    *(this + 84) = *(a2 + 84);
    for (n = 85; n != 89; ++n)
    {
      *(this + n) = *(a2 + n);
    }

    *(this + 23) = *(a2 + 23);
    *(this + 96) = *(a2 + 96);
    *(this + 25) = *(a2 + 25);
    for (ii = 104; ii != 108; ++ii)
    {
      *(this + ii) = *(a2 + ii);
    }

    *(this + 27) = *(a2 + 27);
    *(this + 28) = *(a2 + 28);
    *(this + 29) = *(a2 + 29);
    *(this + 120) = *(a2 + 120);
    *(this + 31) = *(a2 + 31);
    *(this + 128) = *(a2 + 128);
    if (v14 == 1 && *(a4 + 25) == 1)
    {
      *v10 = *(a4 + 26);
      if ((v11 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
      goto LABEL_20;
    }

    LOWORD(__src) = 770;
    BYTE2(__src) = 1;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(this, &__src, &__src + 3, 3uLL);
  }

LABEL_20:
  if (*(a4 + 60) == 1)
  {
    *(this + 31) = *(a4 + 16);
  }

  v19 = (v9 + 45);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&__src, a4 + 184);
  v20 = v55;
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&__src);
  if (v20)
  {
    *v10 = *v19;
  }

  v22 = *(a4 + 24);
  if (v22 > 4)
  {
    if (v22 == 5)
    {
      LOBYTE(__src) = 3;
      v23 = &__src + 1;
      v24 = this;
      v25 = 1;
      goto LABEL_32;
    }

    if (v22 != 6)
    {
      goto LABEL_27;
    }

LABEL_30:
    LOWORD(__src) = 515;
    BYTE2(__src) = 1;
    v23 = &__src + 3;
    v24 = this;
    v25 = 3;
    goto LABEL_32;
  }

  if (!*(a4 + 24))
  {
    goto LABEL_33;
  }

  if (v22 == 3)
  {
    goto LABEL_30;
  }

LABEL_27:
  LOWORD(__src) = 258;
  v23 = &__src + 2;
  v24 = this;
  v25 = 2;
LABEL_32:
  std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(v24, &__src, v23, v25);
  *(this + 96) = 1;
LABEL_33:
  if (*(a4 + 40) == 1)
  {
    for (jj = 0; jj != 4; ++jj)
    {
      *(v10 + jj) = *(a4 + jj + 41);
    }

    *(this + 32) = 17;
  }

  if (*(a4 + 45) == 1)
  {
    for (kk = 0; kk != 4; ++kk)
    {
      *(v19 + kk) = *(a4 + kk + 46);
    }
  }

  if (*(a4 + 16) == 1)
  {
    *(this + 25) = *(a4 + 5);
  }

  if (*(a4 + 7) == 1)
  {
    *(this + 120) = 4;
    *(this + 31) = 1083623604;
    *(this + 85) = *(this + 11);
  }

  v28 = *(a4 + 20);
  v29 = *(a4 + 21);
  if (v28 != v29 && *(a4 + 24) <= 1u)
  {
    v31 = (a3 - 1);
    if (v31 < (v29 - v28) >> 2)
    {
      v32 = 0;
      v33 = v28 + 4 * v31;
      do
      {
        *(v10 + v32) = *(v33 + v32);
        ++v32;
      }

      while (v32 != 4);
      *(this + 60) = 1;
      *(this + 96) = 0;
      *(this + 25) = exp2f(a3 * -0.074001);
    }

    LOWORD(__src) = 258;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(this, &__src, &__src + 2, 2uLL);
  }

  if (*(a4 + 35) == 1)
  {
    v21.i32[0] = *(a4 + 9);
    v34 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v21))), vdupq_n_s32(0x3B808081u));
    v35 = v34.f32[1];
    v47 = v34.i64[1];
    if (v34.f32[0] >= 0.04045)
    {
      v37 = powf((v34.f32[0] * 0.94787) + 0.052133, 2.4);
      v34.i64[1] = v47;
      v36 = v37;
    }

    else
    {
      v36 = v34.f32[0] * 0.077399;
    }

    v38 = v34.f32[2];
    if (v35 >= 0.04045)
    {
      v40 = powf((v35 * 0.94787) + 0.052133, 2.4);
      v34.i32[3] = HIDWORD(v47);
      v39 = v40;
    }

    else
    {
      v39 = v35 * 0.077399;
    }

    v41 = v34.i32[3];
    if (v38 >= 0.04045)
    {
      v42 = powf((v38 * 0.94787) + 0.052133, 2.4);
    }

    else
    {
      v42 = v38 * 0.077399;
    }

    __src = v36;
    v52 = v39;
    v53 = v42;
    v54 = *&v41;
    __src = geo::fromLinear<float,4,(geo::ColorSpace)5,int,void>::operator()(gm::Matrix<float,4,1> const&)const::{lambda(gm::Matrix<float,4,1> const&)#1}::operator()(&__src);
    v52 = v43;
    v50[0] = __src;
    v50[1] = v43;
    v53 = fminf(fmaxf(v44, 0.0), 90.0) + 10.0;
    v54 = v45;
    v50[2] = fminf(fmaxf(v44, 10.0), 100.0) + -10.0;
    v50[3] = v45;
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)5,int,void>(&v48, &__src);
    geo::_byteColor<float,4,(geo::ColorSpace)2>(&v49, v48);
    *(this + 19) = v49;
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)5,int,void>(&v48, v50);
    geo::_byteColor<float,4,(geo::ColorSpace)2>(&v49, v48);
    *(this + 17) = v49;
  }

  return this;
}

uint64_t md::TrafficIncidentLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 384);
  *a2 = *(this + 376);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::TrafficIncidentLabelFeature::labelPointWithElevationUpdate(uint64_t a1, int a2, unsigned int a3, md::PointLabelFeatureBase *this)
{
  if (*(a1 + 328) <= a3)
  {
    v5 = 272;
  }

  else
  {
    if (this && (*(a1 + 242) & 1) == 0)
    {
      md::PointLabelFeatureBase::updatePointElevation(this, (a1 + 243), (a1 + 192), this);
    }

    v5 = 192;
  }

  return a1 + v5;
}

void std::__function::__func<gdc::ResourceManager::cleanupResourceRequests(void)::$_0,std::allocator<gdc::ResourceManager::cleanupResourceRequests(void)::$_0>,void ()(std::pair<gdc::ResourceKey,gdc::ResourceStatus> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v4 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(**(v3 + 448) + 16))(*(v3 + 448));
    gdc::ResourceKey::keysInt32Str(&__p, a2);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v7 = *(a2 + 80);
    *buf = 136315650;
    v26 = v5;
    v27 = 2080;
    v28 = v6;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "%s ResourceManager cancelling resource: %s, rid: %llu", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v3 + 96), a2);
  if (v8)
  {
    v9 = v8;
    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = (*(**(v3 + 448) + 16))(*(v3 + 448));
      gdc::ResourceKey::keysInt32Str(&__p, a2);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v13 = v9[14];
      *buf = 136315650;
      v26 = v11;
      v27 = 2080;
      v28 = v12;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "%s * ResourceManager cancelling resource: %s, rid: %llu", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = *(a2 + 96);
    if (v14 <= 1)
    {
      v15 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v3 + 312) + 8), a2);
      if (v15)
      {
        *(v15 + 28) = 4;
      }

      if (v14 == 1)
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v16 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = (*(**(v3 + 448) + 16))(*(v3 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, a2);
          v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v19 = v9[14];
          *buf = 136315650;
          v26 = v17;
          v27 = 2080;
          v28 = v18;
          v29 = 2048;
          v30 = v19;
          _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_DEBUG, "%s Adding cancelled resource: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v20 = *(a2 + 2);
        v21 = *(v3 + 32);
        if (*v21 != v20)
        {
          v22 = v21 + 8;
          do
          {
            v23 = *v22;
            v22 += 8;
          }

          while (v23 != v20);
          v21 = v22 - 8;
        }

        (*(**(v21 + 1) + 32))(*(v21 + 1), a2);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v3 + 176), v9[14]);
      }
    }

    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase((v3 + 96), v9);
  }
}

void md::LabelStyle::updateZoomInvariantStyles(md::LabelStyle *this)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 125) & 1) == 0)
  {
    *(this + 125) = 1;
    v2 = *this;
    if (*this)
    {
      v3 = *(this + 1);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v18, v2, v3);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      if (v21 == 1)
      {
        v29[0] = &unk_1F29EF5B0;
        v29[1] = &v18;
        v29[3] = v29;
        v28[0] = &unk_1F29EF5F8;
        v28[1] = &v18;
        v28[3] = v28;
        v27[0] = &unk_1F29EF640;
        v27[1] = &v18;
        v27[3] = v27;
        v26[0] = &unk_1F29EF688;
        v26[1] = &v18;
        v26[3] = v26;
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v25, v29);
        *(this + 56) = md::LabelStyle::getZoomRange(v25);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v25);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v24, v28);
        *(this + 57) = md::LabelStyle::getZoomRange(v24);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v24);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v23, v26);
        *(this + 58) = md::LabelStyle::getZoomRange(v23);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v23);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v22, v27);
        *(this + 59) = md::LabelStyle::getZoomRange(v22);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v22);
        v4 = 0;
        do
        {
          v5 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v18[3], 123, v4, 1, 0);
          if (v4 > 0x16u)
          {
            break;
          }

          ++v4;
        }

        while (!v5);
        *(this + 121) = v5 != 0;
        v6 = *(this + 56);
        if (v6 >> 8 >= 0x18)
        {
          v7 = 24;
        }

        else
        {
          v7 = v6 >> 8;
        }

        while (v7 > v6)
        {
          if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v18[3], 91, v6, 1u, 0) && (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v18[3], 129, v6, 1u, 0) & 1) != 0)
          {
            goto LABEL_20;
          }

          LOBYTE(v6) = v6 + 1;
        }

        LOBYTE(v6) = -4;
LABEL_20:
        *(this + 120) = v6;
        *(this + 122) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(125, 1, v18[3]);
        *(this + 123) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(344, 1, v18[3]);
        *(this + 124) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(454, 1, v18[3]);
        v8 = *this;
        v9 = *(*this + 16);
        if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
        {
          v11 = v10;
          v12 = *(v8 + 8);
          v13 = 1.0;
          if (v12 && *(this + 94) == 1)
          {
            v14 = *(v12 + 16);
            v15 = atomic_load((v14 + 2784));
            if ((v15 & 1) == 0)
            {
              std::__assoc_sub_state::wait(*(v14 + 2808));
            }

            v17 = *(v14 + 120);
            v16 = *(v14 + 128);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v17)
            {
              v13 = *(v17 + 88);
            }

            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }
          }

          *(this + 27) = v13;
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        else
        {
          *(this + 27) = 1065353216;
        }

        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v26);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v27);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v28);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v29);
        if (v21)
        {
          (*(*v18 + 56))(v18);
        }
      }

      else
      {
        *(this + 56) = 0;
        *(this + 60) = 0;
        *(this + 122) = 0;
        *(this + 27) = 1065353216;
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }
  }
}

void sub_1B2BE3924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](&a30);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v31 - 152);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v31 - 120);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v31 - 88);
  if (a13)
  {
    (*(*a9 + 56))(a9);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
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
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  v7 = a2[7];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = mdm::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,void *>>(v8, a2);
  return v4;
}

uint64_t md::TextLabelPart::TextLabelPart(uint64_t a1, void *a2, char a3)
{
  v6 = (a1 + 628);
  md::LabelPart::LabelPart(a1);
  *v7 = &unk_1F2A4DDE0;
  *(v7 + 576) = 0u;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 624) = 0;
  *v6 = xmmword_1B33B22A0;
  *(v7 + 644) = 0;
  __asm { FMOV            V2.2S, #1.0 }

  *(v7 + 648) = _D2;
  *(v7 + 656) = 0u;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 704) = 0;
  *(v6 + 78) = xmmword_1B33B22B0;
  *(v7 + 722) = 0;
  *(v7 + 726) = 0;
  *(v7 + 728) = 0u;
  *(v7 + 744) = 0;
  *(v6 + 120) = xmmword_1B33B22A0;
  *(v7 + 764) = 0;
  *(v7 + 768) = _D2;
  *(v7 + 824) = 0;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 776) = 0u;
  *(v6 + 198) = xmmword_1B33B22B0;
  *(v7 + 842) = 0;
  *(v7 + 846) = 0;
  *(v7 + 876) = 0;
  *(v7 + 864) = 0;
  *(v7 + 848) = 0u;
  *(v7 + 872) = 0;
  *(v7 + 880) = a3;
  *(v7 + 881) = 0;
  *(v7 + 884) = 0;
  *(v7 + 888) = 1;
  *(v7 + 896) = 0u;
  *(v7 + 912) = 0u;
  *(v7 + 928) = 1065353216;
  *(v7 + 936) = 0;
  *(v7 + 940) = 0;
  *(v7 + 944) = 1;
  *(v7 + 968) = 0;
  *(v7 + 952) = 0u;
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 584);
    *(a1 + 576) = v14;
    *(a1 + 584) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }

  else
  {
    *(a1 + 576) = v14;
    *(a1 + 584) = 0;
  }

  v16 = **(*a2 + 16);
  if (v16[131] & 1) != 0 || (v16[132])
  {
    v17 = 1;
  }

  else
  {
    v17 = v16[133];
  }

  *(a1 + 888) = v17 & 1;
  return a1;
}

void md::LabelTrafficTile::~LabelTrafficTile(md::LabelTrafficTile *this)
{
  *this = &unk_1F2A05810;
  v2 = (this + 176);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 18));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 120));
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 88));
}

{
  *this = &unk_1F2A05810;
  v2 = (this + 176);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 18));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 120));
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 88));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::HorizontalTextLabelPart::HorizontalTextLabelPart(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = (a1 + 1077);
  result = md::TextLabelPart::TextLabelPart(a1, a2, a4);
  *result = &unk_1F2A4DA38;
  *(result + 976) = 0;
  *(result + 992) = 0;
  *(result + 984) = 0;
  *(result + 1008) = 0x3F80000000000000;
  *(result + 1016) = 0u;
  *(result + 1032) = 0u;
  *(result + 1048) = 0u;
  *(result + 1061) = 0u;
  *v5 = 1;
  *(result + 1088) = 0;
  *(result + 1104) = 0;
  *(result + 1096) = 0;
  *(result + 1120) = 0x3F80000000000000;
  *(result + 1128) = 0u;
  *(result + 1144) = 0u;
  *(result + 1160) = 0u;
  *(result + 1173) = 0u;
  v5[28] = 1;
  *(result + 1200) = 1;
  *(result + 1204) = 10;
  *(result + 1206) = 16842752;
  *(result + 1210) = 0;
  *(result + 1216) = 0;
  *(result + 1224) = 0;
  *(result + 1232) = 0;
  *(result + 1236) = 258;
  *(result + 1238) = 0;
  *(result + 1245) = 0;
  *(result + 1270) = 0;
  *(result + 1260) = 0;
  *(result + 1252) = 0;
  if (*(a3 + 10) == 1)
  {
    *(result + 1264) = 0;
    if (*(a3 + 4) == 1)
    {
      *(result + 1260) = *a3;
      *(result + 1264) = 1;
    }

    *(result + 1265) = 0;
    *(result + 1269) = 0;
    if (*(a3 + 9) == 1)
    {
      v5[47] = *(a3 + 5);
      *(result + 1269) = 1;
    }

    *(result + 1270) = 1;
  }

  *(result + 557) = 2;
  *(result + 1248) = *(**(*(result + 576) + 16) + 130);
  *(result + 1204) = 0;
  *(result + 1200) = 2;
  return result;
}

void md::TrafficIncidentLabelFeature::~TrafficIncidentLabelFeature(md::TrafficIncidentLabelFeature *this)
{
  *this = &unk_1F2A4E2C8;
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelFeature::~LabelFeature(this);
}

{
  *this = &unk_1F2A4E2C8;
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PointLabelFeature::resolveAnnotationLayout(char a1, uint64_t a2)
{
  if ((a1 & 8) != 0)
  {
    v5 = *(a2 + 312);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2);
      v5 = *v6;
      *(a2 + 312) = *v6;
    }

    result = *(v5 + 46);
    if (!*(v5 + 46))
    {
      if (*(v5 + 47) == 8)
      {
        return 6;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      v2 = 4;
    }

    else
    {
      v2 = 1;
    }

    if ((a1 & 0x10) != 0)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

md::LabelPart *md::PointLabelFeature::createAnnotationPart(mdm::zone_mallocator *this, uint64_t *a2, int a3, int a4)
{
  v7 = 0;
  if (a4 <= 3)
  {
    if (a4 == 2)
    {
      goto LABEL_11;
    }

    if (a4 != 3)
    {
      return v7;
    }

    return md::PointLabelFeature::createGraphicAnnotationPart(this, a2, a3, 1);
  }

  else
  {
    if (a4 != 4)
    {
      if (a4 == 5)
      {
        v14 = mdm::zone_mallocator::instance(this);
        v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v14, 0x2B8uLL);
        md::StackLabelPart::StackLabelPart(v7, 1, 0, 0, 0);
        (*(*v15 + 176))(v15, 9);
        v16 = 0;
        v17 = 0;
        *(v7 + 630) = 1;
        do
        {
          while (1)
          {
            GraphicAnnotationPart = md::PointLabelFeature::createGraphicAnnotationPart(this, a2, a3, 1);
            v19 = GraphicAnnotationPart;
            if (!GraphicAnnotationPart)
            {
              break;
            }

            (*(*GraphicAnnotationPart + 176))(GraphicAnnotationPart, 10);
            md::CompositeLabelPart::addLabelPart(v7, v19);
            ++v16;
            v17 = 1;
            if (v16 == 3)
            {
              return v7;
            }
          }

          ++v16;
        }

        while (v16 != 3);
        if ((v17 & 1) == 0)
        {
          (*(*v7 + 8))(v7);
          return 0;
        }

        return v7;
      }

      if (a4 != 6)
      {
        return v7;
      }

LABEL_11:
      v9 = a2[2];
      v10 = *(v9 + 312);
      if (a3 == 1)
      {
        if (!v10)
        {
          v11 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2[2]);
          v10 = *v11;
          *(v9 + 312) = *v11;
        }

        v12 = (v10 + 47);
      }

      else
      {
        if (!v10)
        {
          v20 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2[2]);
          v10 = *v20;
          *(v9 + 312) = *v20;
        }

        v12 = (v10 + 52);
      }

      v21 = (*(*this + 728))(this, a2, *v12);
      v22 = md::PointLabelFeature::newTextPart(this, a2, v21, 1);
      v7 = v22;
      if (v22)
      {
        (*(*v22 + 176))(v22, 11);
      }

      return v7;
    }

    v13 = *(*this + 752);

    return v13();
  }
}

void md::LabelFeature::~LabelFeature(md::LabelFeature *this)
{
  *this = &unk_1F2A468F0;
  v3.__vftable = (this + 160);
  std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3.__vftable = (this + 96);
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex((this + 8));
}

void std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 -= 56;
        std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataEntry>(v6, v4);
  }
}

uint64_t *md::AnnotationMonitorProperties::init(uint64_t *this, md::LabelStyle *a2)
{
  v3 = this;
  v4 = *(a2 + 39);
  if (!v4)
  {
    this = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2);
    v4 = *this;
    *(a2 + 39) = *this;
  }

  *v3 = *(v4 + 46);
  v5 = *(a2 + 37);
  if (!v5)
  {
    this = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2, 0);
    v5 = *this;
    *(a2 + 37) = *this;
  }

  *(v3 + 8) = *(v5 + 93);
  return this;
}

void std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v2, v1);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t md::CaptionedIconLabelPart::populatePlacement(uint64_t result, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v6 = result;
  v7 = *a3;
  if (!*a3)
  {
    v7 = *(result + 842);
    if (v7 <= 1)
    {
      v7 = 1;
    }
  }

  *a2 = v7;
  if (a3[3] == 9)
  {
    if (*(result + 845) == 9)
    {
      if (*(result + 925))
      {
        LOWORD(v8) = 6;
      }

      else
      {
        LOWORD(v8) = 8;
      }

      if (*(result + 925))
      {
        LOWORD(v9) = -64;
      }

      else
      {
        LOWORD(v9) = 0;
      }
    }

    else
    {
      v8 = *(result + 845);
      v9 = v8 >> 8;
    }
  }

  else
  {
    v8 = *(a3 + 3);
    v9 = v8 >> 8;
    if (!a4)
    {
      goto LABEL_24;
    }
  }

  if ((*(result + 930) & 1) != 0 && v7 == 1 && (v9 & 0x1F) == 0)
  {
    result = v8;
    if (v8 <= 9u)
    {
      result = gss::LabelPositionToMask(v8);
      if ((result & 0x83) != 0)
      {
        LOWORD(v8) = mirroredHorizontalPositions[v8];
      }
    }

    if ((v8 & 0xF8) != 0)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = 32 * v8;
    }
  }

LABEL_24:
  *(a2 + 3) = v8 | (v9 << 8);
  if (v8 == 8)
  {
    if (*(v6 + 925) == 1)
    {
      *(a2 + 3) = -16378;
    }

    else
    {
      *a2 = 1;
    }
  }

  v10 = a3[1];
  if (!v10)
  {
    v10 = *(v6 + 843);
    if (!v10)
    {
      v10 = 1;
    }
  }

  *(a2 + 1) = v10;
  return result;
}

void std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

BOOL md::CurvedTextLabelPart::checkForTraffic(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  if (*(a2 + 3022) == 1 && (*(a2 + 3024) & 1) == 0)
  {
    v5 = *(this + 2);
    v3 = *(v5 + 64);
    v6 = *(v5 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      if (((*(**(this + 136) + 72))(*(this + 136), v3 + 120, 0.0) & 1) == 0 && ((*(**(this + 138) + 72))(*(this + 138), v3 + 120, 0.0) & 1) == 0)
      {
        LODWORD(v3) = (*(**(this + 140) + 72))(*(this + 140), v3 + 120, 0.0);
        if (!v6)
        {
          return v3 != *(this + 1480);
        }

        goto LABEL_12;
      }

      LODWORD(v3) = 1;
    }

    if (!v6)
    {
      return v3 != *(this + 1480);
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    return v3 != *(this + 1480);
  }

  LODWORD(v3) = 0;
  return v3 != *(this + 1480);
}

void sub_1B2BE4740(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

mdm::zone_mallocator *md::CaptionedIconLabelPart::initAlternatePlacements(mdm::zone_mallocator *this)
{
  v1 = *(this + 100);
  *(this + 101) = v1;
  if (*(this + 921) == 1)
  {
    v2 = this;
    if (*(this + 832) == 1)
    {
      v3 = *(this + 840);
      if (v3 != 10)
      {
        v4 = gss::LabelPositionToMask(*(this + 840));
        v5 = v4;
        v6 = *(v2 + 850);
        if (v6 == 0x8000)
        {
          v6 = 170;
          if ((v4 & 0xAA) == 0)
          {
            if ((*(v2 + 925) & 1) != 0 || *(v2 + 920) == 1)
            {
              v6 = 255;
            }

            else
            {
              v6 = 0;
            }
          }
        }

        v7 = (v2 + 800);
        v8 = *(v2 + 837);
        if (v8 == 2)
        {
          v9 = v6;
        }

        else
        {
          v9 = v6;
        }

        if (v8 == 1)
        {
          v10 = *(v2 + 833);
          v11 = *(v2 + 838);
          if (v10 == v11)
          {
            v11 = *(v2 + 833);
            if (*(v2 + 835) == v3)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v11 = *(v2 + 838);
        }

        if (v11 > 7)
        {
          if (v11 == 8)
          {
            v12 = &diagonalDownLabelAnchors;
            goto LABEL_34;
          }

          if (v11 != 16)
          {
            goto LABEL_39;
          }
        }

        else if (v11 != 1)
        {
          if (v11 != 4)
          {
            goto LABEL_39;
          }

          v12 = &diagonalUpLabelAnchors;
LABEL_34:
          v19 = &v12[2 * v3];
          v20 = *v19;
          v21 = v19[1];
          if (v20)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            goto LABEL_24;
          }

LABEL_39:
          v10 = v11;
LABEL_40:
          v23 = 0;
          v24 = v9 & ~v5;
          v25 = &horizontalPositionsInPreferredOrder;
          if (v10 == 4)
          {
            v25 = &diagonalUpPositionsInPreferredOrder;
          }

          if (v10 == 8)
          {
            v26 = &diagonalDownPositionsInPreferredOrder;
          }

          else
          {
            v26 = v25;
          }

          while (1)
          {
            v27 = v26[v23];
            if (*(v2 + 930) == 1 && v27 <= 9)
            {
              LODWORD(v27) = mirroredHorizontalPositions[v27];
            }

            v29 = gss::LabelPositionToMask(v27);
            if ((v24 & v29) == 0 || v27 == *(v2 + 847))
            {
              goto LABEL_77;
            }

            v30 = *(v2 + 838);
            if (v30 > 7)
            {
              if (v30 != 8)
              {
                if (v30 == 16)
                {
                  goto LABEL_64;
                }

                goto LABEL_77;
              }

              v31 = &diagonalDownLabelAnchors;
            }

            else
            {
              if (v30 == 1)
              {
                goto LABEL_64;
              }

              if (v30 != 4)
              {
                goto LABEL_77;
              }

              v31 = &diagonalUpLabelAnchors;
            }

            v32 = &v31[2 * v27];
            v33 = *v32;
            v34 = v32[1];
            if (v33)
            {
              v35 = v34 == 0;
            }

            else
            {
              v35 = 1;
            }

            if (!v35)
            {
LABEL_64:
              v36 = *(v2 + 816);
              if (v1 >= v36)
              {
                v37 = 0xCCCCCCCCCCCCCCCDLL * (v1 - *v7);
                v38 = v37 + 1;
                if (v37 + 1 >= 0x3333333333333334)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v39 = 0xCCCCCCCCCCCCCCCDLL * (v36 - *v7);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0x1999999999999999)
                {
                  v40 = 0x3333333333333333;
                }

                else
                {
                  v40 = v38;
                }

                v48 = v2 + 824;
                if (v40)
                {
                  v41 = mdm::zone_mallocator::instance(v29);
                  v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v41, v40);
                  LOBYTE(v30) = *(v2 + 838);
                }

                else
                {
                  v42 = 0;
                }

                v43 = &v42[5 * v37];
                v44 = v42;
                v45 = v43;
                v47 = &v42[5 * v40];
                *v43 = *(v2 + 837);
                v43[1] = v30;
                v43[2] = 0;
                *(v43 + 3) = v27;
                v46 = v43 + 5;
                std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v2 + 800, &v44);
                v1 = *(v2 + 808);
                std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v44);
              }

              else
              {
                *v1 = *(v2 + 837);
                *(v1 + 1) = v30;
                *(v1 + 2) = 0;
                *(v1 + 3) = v27;
                v1 += 5;
              }

              *(v2 + 808) = v1;
            }

LABEL_77:
            if (++v23 == 9)
            {
              return std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit((v2 + 800));
            }
          }
        }

LABEL_24:
        v13 = *(v2 + 816);
        if (v1 >= v13)
        {
          v14 = 0x999999999999999ALL * (v13 - v1);
          if (v14 <= 1)
          {
            v14 = 1;
          }

          if (0xCCCCCCCCCCCCCCCDLL * (v13 - v1) >= 0x1999999999999999)
          {
            v15 = 0x3333333333333333;
          }

          else
          {
            v15 = v14;
          }

          v48 = v2 + 824;
          v16 = mdm::zone_mallocator::instance(v4);
          v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v16, v15);
          v18 = *(v2 + 837);
          v44 = v17;
          v45 = v17;
          v47 = &v17[5 * v15];
          *v17 = v18;
          v17[2] = 0;
          *(v17 + 3) = *(v2 + 840);
          v46 = v17 + 5;
          std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v2 + 800, &v44);
          v1 = *(v2 + 808);
          std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v44);
        }

        else
        {
          *v1 = v8;
          *(v1 + 1) = v11;
          *(v1 + 2) = 0;
          *(v1 + 3) = *(v2 + 840);
          v1 += 5;
        }

        *(v2 + 808) = v1;
        v10 = *(v2 + 838);
        goto LABEL_40;
      }
    }
  }

  return this;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 5) % 5uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPlacement>(v4, v3);
  }

  return a1;
}

mdm::zone_mallocator *std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit(mdm::zone_mallocator *result)
{
  v1 = *(result + 1);
  v2 = *result;
  v3 = *(result + 2) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v8[4] = result + 24;
    if (v1 == v2)
    {
      v7 = 0;
    }

    else
    {
      v6 = mdm::zone_mallocator::instance(result);
      v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v6, 0xCCCCCCCCCCCCCCCDLL * v4);
      v3 = *(v5 + 2) - *v5;
    }

    v8[0] = v7;
    v8[1] = &v7[v4];
    v8[2] = &v7[v4];
    v8[3] = &v7[v4];
    if (v4 < v3)
    {
      std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v5, v8);
    }

    return std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(v8);
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(uint64_t this)
{
  v1 = *(this + 800);
  v3 = v1 != *(this + 808) && *(this + 837) == *v1 && *(this + 838) == v1[1] && (v2 = *(this + 840), v2 == v1[3]) && (v2 != 10 || *(this + 841) == v1[4]);
  *(this + 956) = v3;
  return this;
}

uint64_t md::CaptionedIconLabelPart::placement@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 832);
  *(a2 + 2) = 0;
  *(a2 + 3) = *(this + 835);
  return this;
}

float32_t md::IconLabelPart::collisionBounds(md::IconLabelPart *this, float32x2_t *a2)
{
  v2 = *(this + 562);
  v3 = atomic_load(&a2[18]);
  if (v2 == 1)
  {
    if (v3)
    {
      return a2[8].f32[0];
    }

    else
    {
      return 3.4028e38;
    }
  }

  else if (v3)
  {
    *v5.f32 = vsub_f32(a2[9], a2[8]);
    v5.i64[1] = v5.i64[0];
    LODWORD(result) = vbslq_s8(vcltzq_f32(v5), xmmword_1B33B2280, vmulq_f32(v5, xmmword_1B33B0930)).u32[0];
  }

  else
  {
    return 3.4028e38;
  }

  return result;
}

void md::IconLabelPart::prepareCollisionObject(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v5 = 612;
  if (!a2)
  {
    v5 = 588;
  }

  v6 = *(a1 + v5);
  (*(*a1 + 944))(a1, *a3);
  if (v6 == 1.0)
  {
    v11 = v9;
  }

  else
  {
    v7 = v7 * v6;
    v8 = v8 * v6;
    v11 = v9 * v6;
  }

  if (v6 == 1.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 * v6;
  }

  *v22 = v7;
  *&v22[1] = v8;
  *&v22[2] = v11;
  *&v22[3] = v12;
  v13 = v12 - v8;
  v14 = v11 - v7;
  if (vabds_f32(v13, v11 - v7) <= 5.0)
  {
    v15 = v7 + (v14 * 0.5);
    v16 = v8 + (v13 * 0.5);
    v17 = fmaxf(v14, v13) * 0.5;
    v21[0] = v15;
    v21[1] = v16;
    v21[2] = v17;
    md::CollisionObject::resetWithCircles(a4, 1u);
    v18 = *(a4 + 168);
    v19 = *(a4 + 176);
    *(a4 + 176) = v19 + 1;
    v20 = (v18 + 12 * v19);
    *v20 = v15;
    v20[1] = v16;
    v20[2] = v17;
    gm::Box<float,2>::enclose(a4, v21);
  }

  else
  {
    md::CollisionObject::resetWithRects(a4, 1u);
    md::CollisionObject::addRect(a4, v22);
  }
}

double md::CollisionObject::resetWithCircles(void **this, unsigned int a2)
{
  md::CollisionObject::resetShapes(this, a2);
  v4 = this[20];
  if (v4)
  {
    free(v4);
    v5 = 0;
    this[20] = 0;
    *(this + 45) = 0;
  }

  else
  {
    v5 = *(this + 45);
  }

  if (v5 < a2)
  {
    free(this[21]);
    v6 = malloc_type_malloc(12 * a2, 0x10000403E1C8BA9uLL);
    this[21] = v6;
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    *(this + 45) = v7;
  }

  *(this + 44) = 0;
  result = 1.40444743e306;
  *this = xmmword_1B33B0730;
  return result;
}

float gm::Box<float,2>::enclose(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result != 0.0)
  {
    v3 = 0;
    v4 = a1 + 8;
    v5 = 1;
    do
    {
      *(a1 + 4 * v3) = fminf(*(a2 + 4 * v3) - *(a2 + 8), *(a1 + 4 * v3));
      v6 = v5;
      result = fmaxf(*(v4 + 4 * v3), *(a2 + 8) + *(a2 + 4 * v3));
      *(v4 + 4 * v3) = result;
      v3 = 1;
      v5 = 0;
    }

    while ((v6 & 1) != 0);
  }

  return result;
}

float *std::__hash_table<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::__unordered_map_hasher<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::hash<GlyphCacheKey>,std::equal_to<GlyphCacheKey>,true>,std::__unordered_map_equal<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::equal_to<GlyphCacheKey>,std::hash<GlyphCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,mdm::zone_mallocator>>::find<GlyphCacheKey>(void *a1, uint64_t a2)
{
  v4 = std::hash<GlyphCacheKey>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = *(i + 1);
      if (v9 == v4)
      {
        if (*(i + 2) == *a2 && i[6] == *(a2 + 8) && *(i + 14) == *(a2 + 12))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t std::hash<GlyphCacheKey>::operator()(uint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (*a1 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = *(a1 + 8);
  v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
  if (v4 == 0.0)
  {
    v5 = 0x9E3779B97F4A7C15;
  }

  v6 = (v5 + 0x77FA823ACE0B5A40 * v3 + ((0x9DDFEA08EB382D69 * v3) >> 2)) ^ (0x9DDFEA08EB382D69 * v3);
  return (*(a1 + 12) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
}

mdm::zone_mallocator *std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 63) & 0xFFFFFFFFFFFFFFC0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextQuad>(v5, v4);
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::HorizontalTextLabelPart::LineInfo>(v5, v4);
  }

  return a1;
}

void md::HorizontalTextLabelPart::breakLine(mdm::zone_mallocator *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v116 = *MEMORY[0x1E69E9840];
  v111 = 0uLL;
  v112 = 0;
  v9 = a5 + a4;
  v107 = 0;
  v106 = a4;
  v108 = 0;
  if (a5 + a4 > a4)
  {
    v10 = a4;
    v11 = 0;
    do
    {
      while ((*(*a3 + 40 * v10 + 32) & 0x28) == 8)
      {
        a1 = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v111, &v106);
        v11 = 0;
        v106 = ++v10;
        if (v10 == v9)
        {
          goto LABEL_9;
        }
      }

      *(&v106 + 1) = ++v11;
      ++v10;
    }

    while (v10 != v9);
    if (v11)
    {
      a1 = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v111, &v106);
    }
  }

LABEL_9:
  v101 = a6;
  v13 = *(&v111 + 1);
  v12 = v111;
  if (!v8)
  {
    if (v111 == *(&v111 + 1))
    {
      v109 = v111;
      v111 = 0uLL;
      v110 = v112;
      v112 = 0;
      goto LABEL_84;
    }

    goto LABEL_22;
  }

  v14 = (*(&v111 + 1) - 32);
  v15 = v111 != *(&v111 + 1) && v14 > v111;
  if (v15)
  {
    v16 = v111 + 32;
    do
    {
      *v114 = *(v16 - 32);
      v17 = *v114;
      *&v114[16] = *(v16 - 16);
      v18 = *(v14 + 9);
      *(v16 - 32) = *v14;
      *(v16 - 23) = v18;
      *v14 = v17;
      *(v14 + 9) = *&v114[9];
      v14 -= 2;
      v19 = v16 >= v14;
      v16 += 32;
    }

    while (!v19);
    v13 = *(&v111 + 1);
    v12 = v111;
  }

  if (v12 != v13)
  {
LABEL_22:
    v20 = *a3 + 32;
    v21 = *a3 - 8;
    v22 = v12;
    do
    {
      v23 = *(v22 + 1);
      if (v23)
      {
        v24 = *v22;
        v25 = 40 * *v22;
        v26 = (v20 + v25);
        v27 = v23 - 1;
        v28 = *(v22 + 1);
        while (1)
        {
          v29 = *v26;
          v26 += 40;
          a1 = v29;
          if ((v29 & 8) == 0)
          {
            break;
          }

          ++v24;
          --v27;
          --v28;
          *v22 = v24;
          *(v22 + 1) = v28;
          if (!v28)
          {
            goto LABEL_31;
          }
        }

        v30 = (v21 + v25 + 40 * v23);
        do
        {
          v31 = *v30;
          v30 -= 40;
          if ((v31 & 8) == 0)
          {
            break;
          }

          *(v22 + 1) = v27--;
        }

        while (v27 != -1);
      }

LABEL_31:
      v22 += 32;
    }

    while (v22 != v13);
    if (v8)
    {
      goto LABEL_85;
    }

    v32 = 0;
    v33 = (v13 - v12) >> 5;
    v34 = *a3;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v35 = v12 + 8;
    do
    {
      if (v32)
      {
        v36 = *(v35 - 1);
        if ((*(v34 + 40 * v36 + 32) & 2) == 0)
        {
          *(v35 - 4) = *v35 + v36 - *(v35 - 5);
          *v35 = 0;
        }
      }

      ++v32;
      v35 += 4;
    }

    while (v33 != v32);
    v37 = 0;
    *&v109 = v12;
    *(&v109 + 1) = v13;
    v111 = 0uLL;
    v110 = v112;
    v112 = 0;
    v104 = v8;
    v103 = v13;
LABEL_41:
    v38 = *(v12 + 1);
    if (!v38)
    {
      goto LABEL_81;
    }

    v39 = *v12;
    v40 = *v12 + 1;
    v105 = *v12 + v38;
    if (v40 >= v105)
    {
      goto LABEL_66;
    }

    v41 = v38 - 1;
    v42 = 40 * v39;
    while (1)
    {
      v43 = *a3 + v42;
      v44 = *(v43 + 32);
      v45 = *(v43 + 72);
      if ((v44 & 0x20) == 0 || (v45 & 0x20) == 0)
      {
        if ((~v45 & 6) != 0)
        {
          if ((v44 & 2) == 0)
          {
            goto LABEL_51;
          }
        }

        else if (v44 & 2) == 0 || (v44)
        {
LABEL_51:
          v46 = v40 - v39;
          if (v37 >= v112)
          {
            v47 = &v37[-v111] >> 5;
            if ((v47 + 1) >> 59)
            {
              goto LABEL_111;
            }

            v48 = &v112[-v111] >> 4;
            if (v48 <= v47 + 1)
            {
              v48 = v47 + 1;
            }

            if (&v112[-v111] >= 0x7FFFFFFFFFFFFFE0)
            {
              v49 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            v115 = &v113;
            if (v49)
            {
              v50 = mdm::zone_mallocator::instance(a1);
              v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v50, v49);
            }

            else
            {
              v51 = 0;
            }

            v52 = &v51[32 * v47];
            v53 = &v51[32 * v49];
            *v52 = v39;
            *(v52 + 1) = v46;
            *(v52 + 2) = 0;
            v52[24] = 0;
            v37 = v52 + 32;
            v54 = &v52[-(*(&v111 + 1) - v111)];
            memcpy(v54, v111, *(&v111 + 1) - v111);
            v55 = v111;
            v56 = v112;
            *&v111 = v54;
            *(&v111 + 1) = v37;
            v112 = v53;
            *&v114[16] = v55;
            *&v114[24] = v56;
            *v114 = v55;
            *&v114[8] = v55;
            a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
          }

          else
          {
            *v37 = v39;
            *(v37 + 1) = v46;
            *(v37 + 2) = 0;
            v37[24] = 0;
            v37 += 32;
          }

          *(&v111 + 1) = v37;
          v39 = v40;
        }
      }

      ++v40;
      v42 += 40;
      if (!--v41)
      {
        v40 = v105;
        v8 = v104;
        v13 = v103;
LABEL_66:
        v15 = v40 > v39;
        v57 = v40 - v39;
        if (v15)
        {
          if (v37 < v112)
          {
            *v37 = v39;
            *(v37 + 1) = v57;
            *(v37 + 2) = 0;
            v37[24] = 0;
            v37 += 32;
LABEL_80:
            *(&v111 + 1) = v37;
            goto LABEL_81;
          }

          v58 = &v37[-v111] >> 5;
          if (!((v58 + 1) >> 59))
          {
            v59 = &v112[-v111] >> 4;
            if (v59 <= v58 + 1)
            {
              v59 = v58 + 1;
            }

            if (&v112[-v111] >= 0x7FFFFFFFFFFFFFE0)
            {
              v60 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = v59;
            }

            v115 = &v113;
            if (v60)
            {
              v61 = mdm::zone_mallocator::instance(a1);
              v62 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v61, v60);
            }

            else
            {
              v62 = 0;
            }

            v63 = &v62[32 * v58];
            v64 = &v62[32 * v60];
            *v63 = v39;
            *(v63 + 1) = v57;
            *(v63 + 2) = 0;
            v63[24] = 0;
            v37 = v63 + 32;
            v65 = &v63[-(*(&v111 + 1) - v111)];
            memcpy(v65, v111, *(&v111 + 1) - v111);
            v66 = v111;
            v67 = v112;
            *&v111 = v65;
            *(&v111 + 1) = v37;
            v112 = v64;
            *&v114[16] = v66;
            *&v114[24] = v67;
            *v114 = v66;
            *&v114[8] = v66;
            a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
            goto LABEL_80;
          }

LABEL_111:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

LABEL_81:
        v12 += 32;
        if (v12 == v13)
        {
LABEL_84:
          std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v109);
          break;
        }

        goto LABEL_41;
      }
    }
  }

LABEL_85:
  v109 = 0uLL;
  v110 = 0;
  v68 = md::HorizontalTextLabelPart::mergeWordsToLines(&v111, &v109, v8, a2);
  v69 = *(&v109 + 1);
  v70 = v109;
  v71 = *(&v109 + 1) - v109;
  if (*(&v109 + 1) - v109 >= 0x21uLL)
  {
    memset(v114, 0, 24);
    v72 = a2 - 1;
    if (a2 - 1 >= 3)
    {
      v73 = 0;
      v74 = 3;
      do
      {
        v75 = (v72 + v74) >> 1;
        *&v114[8] = v73;
        md::HorizontalTextLabelPart::mergeWordsToLines(&v111, v114, v8, v75);
        v73 = *v114;
        v76 = v109;
        if (*&v114[8] - *v114 <= *(&v109 + 1) - v109)
        {
          v109 = *v114;
          *v114 = v76;
          v77 = v110;
          v110 = *&v114[16];
          *&v114[16] = v77;
          v72 = v75 - 1;
          v73 = v76;
        }

        else
        {
          v74 = v75 + 1;
        }
      }

      while (v74 <= v72);
    }

    std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v114);
    v69 = *(&v109 + 1);
    v70 = v109;
    v71 = *(&v109 + 1) - v109;
  }

  if (v71 >> 5 >= 1)
  {
    v79 = *(v101 + 8);
    v78 = *(v101 + 16);
    if (v78 - v79 >= v71)
    {
      v88 = v69 - v70;
      if (v69 != v70)
      {
        memmove(*(v101 + 8), v70, v88 - 7);
      }

      *(v101 + 8) = &v79[v88];
    }

    else
    {
      v80 = *v101;
      v81 = &v79[-*v101];
      v82 = (v71 >> 5) + (v81 >> 5);
      if (v82 >> 59)
      {
        goto LABEL_111;
      }

      v83 = v78 - v80;
      v84 = (v78 - v80) >> 4;
      if (v84 > v82)
      {
        v82 = v84;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFE0)
      {
        v85 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v85 = v82;
      }

      v115 = (v101 + 24);
      if (v85)
      {
        v86 = mdm::zone_mallocator::instance(v68);
        v87 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v86, v85);
      }

      else
      {
        v87 = 0;
      }

      v89 = &v87[32 * (v81 >> 5)];
      v90 = &v89[v71];
      v91 = v89;
      do
      {
        v92 = *v70;
        v93 = *(v70 + 1);
        v70 += 32;
        *v91 = v92;
        *(v91 + 1) = v93;
        v91 += 32;
        v71 -= 32;
      }

      while (v71);
      v94 = &v87[32 * v85];
      memcpy(v90, v79, *(v101 + 8) - v79);
      v95 = *v101;
      v96 = &v90[*(v101 + 8) - v79];
      *(v101 + 8) = v79;
      v97 = v79 - v95;
      v98 = &v89[-(v79 - v95)];
      memcpy(v98, v95, v97);
      v99 = *v101;
      *v101 = v98;
      *(v101 + 8) = v96;
      v100 = *(v101 + 16);
      *(v101 + 16) = v94;
      *&v114[16] = v99;
      *&v114[24] = v100;
      *v114 = v99;
      *&v114[8] = v99;
      std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
    }
  }

  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v109);
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v111);
}

void sub_1B2BE58DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, _OWORD *a2)
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
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[32 * v8];
    v15 = &v13[32 * v11];
    v16 = a2[1];
    *v14 = *a2;
    *(v14 + 1) = v16;
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
    result = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = v4 + 2;
  }

  *(v3 + 1) = v7;
  return result;
}

mdm::zone_mallocator *md::HorizontalTextLabelPart::mergeWordsToLines(mdm::zone_mallocator *result, mdm::zone_mallocator *a2, int a3, unint64_t a4)
{
  v6 = *result;
  v7 = *(result + 1);
  v8 = v7 - *result;
  if (v7 != *result)
  {
    v30 = v4;
    v31 = v5;
    v12 = result;
    v13 = 0;
    v14 = v8 >> 5;
    do
    {
      v15 = (v6 + 32 * v13);
      if (v14 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = (v6 + 32 * v13);
      v18 = v13;
      while (1)
      {
        v19 = v17 + 1;
        if (a3)
        {
          v19 = v15 + 1;
          v20 = (v6 + 32 * v13);
        }

        else
        {
          v20 = v17;
        }

        v21 = a3 ? v17 : (v6 + 32 * v13);
        if (*v19 + *v20 - *v21 > a4)
        {
          break;
        }

        ++v18;
        v17 += 4;
        if (v16 == v18)
        {
          v18 = v16;
          break;
        }
      }

      if (v13 <= (v18 - 1))
      {
        v22 = v18 - 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = (v6 + 32 * v22);
      v29 = 0;
      *(&v27 + 1) = 0;
      v28 = 0;
      if (a3)
      {
        v24 = v23;
      }

      else
      {
        v24 = v15;
      }

      if (a3)
      {
        v23 = v15;
      }

      v25 = *v24;
      v26 = v23[1] + *v23 - v25;
      *&v27 = v25;
      *(&v27 + 1) = v26;
      result = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v27);
      v13 = v22 + 1;
      v6 = *v12;
      v14 = (*(v12 + 1) - *v12) >> 5;
    }

    while (v22 + 1 < v14);
  }

  return result;
}

double grl::codec::ImageLayerData::ImageLayerData(grl::codec::ImageLayerData *this)
{
  v3 = 515;
  v4 = 1;
  v1 = std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](this, &v3, 3uLL);
  *(v1 + 8) = 0;
  *(v1 + 18) = -256;
  *(v1 + 38) = 0;
  *(v1 + 5) = 0;
  *(v1 + 48) = 0;
  *(v1 + 13) = 1119092736;
  result = -5.48612928e303;
  *(v1 + 14) = -16777216;
  *(v1 + 15) = 1065353216;
  *(v1 + 8) = 4278190080;
  *(v1 + 18) = 1;
  *(v1 + 76) = -1;
  *(v1 + 13) = 0;
  *(v1 + 10) = 0;
  *(v1 + 11) = 0;
  *(v1 + 93) = 0;
  *(v1 + 112) = 2;
  *(v1 + 29) = 1065353216;
  *(v1 + 30) = -16777216;
  *(v1 + 140) = 0;
  *(v1 + 129) = 0;
  *(v1 + 124) = 0;
  *(v1 + 74) = 1;
  return result;
}

uint64_t md::RouteAnnotationLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = [**(a1 + 296) groupItemVerticalDisplayOrder];
  v6 = *(a1 + 296);
  if (*(a1 + 304) != v6)
  {
    v7 = v5;
    v8 = 0;
    do
    {
      v20[0] = 0;
      v20[1] = 0;
      v21 = 0;
      if ([*(v6 + 8 * v8) isCamera])
      {
        v9 = *(*(a1 + 296) + 8 * v8);
        if ([v9 isSpeedLimitCamera])
        {
          v10 = [v9 speedLimitText];
          v11 = v10;
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(v20, [v10 UTF8String]);
        }
      }

      v12 = [*(*(a1 + 296) + 8 * v8) groupItemVerticalDisplayOrder];
      if (v12 != v7)
      {
        v12 = [*(*(a1 + 296) + 8 * v8) groupItemVerticalDisplayOrder];
        v7 = v12;
      }

      if (*(*(a1 + 96) + 16 * v8))
      {
        md::LabelPoint::mercatorPoint((a1 + 192));
        v13 = *(*(a1 + 328) + 16 * v8);
        if (*(&v13 + 1))
        {
          atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      if (SHIBYTE(v21) < 0)
      {
        v14 = v20[0];
        v15 = mdm::zone_mallocator::instance(v12);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
      }

      ++v8;
      v6 = *(a1 + 296);
    }

    while (v8 < (*(a1 + 304) - v6) >> 3);
  }

  if (v17 != v18)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3)) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v22[0] = &v17;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](v22);
  return 0;
}

void sub_1B2BE6550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    operator delete(v37);
  }

  a32 = &a18;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a32);
  _Unwind_Resume(a1);
}

void std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(void **a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5, uint64_t a6, size_t a7, const void *a8)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v15 = a1;
  if (*(a1 + 23) < 0)
  {
    v15 = *a1;
  }

  v16 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v16 = 2 * a2;
  }

  if ((v16 | 7) == 0x17)
  {
    v17 = 25;
  }

  else
  {
    v17 = (v16 | 7) + 1;
  }

  v18 = v16 >= 0x17;
  v19 = 23;
  if (v18)
  {
    v19 = v17;
  }

  if (a2 > 0x3FFFFFFFFFFFFFF2)
  {
    v20 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v20 = v19;
  }

  v21 = mdm::zone_mallocator::instance(a1);
  v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v21, v20);
  v23 = v22;
  if (a5)
  {
    v22 = memmove(v22, v15, a5);
  }

  if (a7)
  {
    v22 = memmove(&v23[a5], a8, a7);
  }

  v24 = a4 - (a6 + a5);
  if (v24)
  {
    v22 = memmove(&v23[a5 + a7], &v15[a5 + a6], v24);
  }

  if (a2 != 22)
  {
    v25 = mdm::zone_mallocator::instance(v22);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v15);
  }

  v26 = a7 + a5 + v24;
  *a1 = v23;
  a1[1] = v26;
  a1[2] = (v20 | 0x8000000000000000);
  v23[v26] = 0;
}

void **std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<true>(void **__dst, void *__src, size_t __len)
{
  v5 = __len > 0x16;
  v6 = __len - 22;
  if (v5)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(__dst, 0x16uLL, v6, *(__dst + 23) & 0x7F, 0, *(__dst + 23) & 0x7F, __len, __src);
  }

  else
  {
    *(__dst + 23) = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    *(__dst + __len) = 0;
  }

  return __dst;
}

md::LabelPart *md::WorldSpaceLabelPart::WorldSpaceLabelPart(md::LabelPart *a1, md::LabelPart *a2, uint64_t a3, char a4, char a5)
{
  md::LabelPart::LabelPart(a1);
  *(v10 + 592) = 0;
  *(v10 + 576) = 0u;
  *(v10 + 608) = 0;
  *(v10 + 612) = 0;
  *(v10 + 616) = 0;
  *(v10 + 624) = 0;
  *v10 = &unk_1F29E8E38;
  *(v10 + 628) = 1;
  *(v10 + 632) = a4;
  *(v10 + 633) = 9;
  *(v10 + 634) = a5;
  *(v10 + 640) = 0;
  md::CompositeLabelPart::addLabelPart(v10, a2);
  v11 = *(a1 + 632);
  if (v11 == 6)
  {
    if (*(a3 + 164) == 1)
    {
      *(a1 + 565) = 1;
      goto LABEL_5;
    }

    *(a1 + 632) = 0;
    *(a1 + 565) = 0;
  }

  else
  {
    *(a1 + 565) = v11 != 0;
    if (v11)
    {
LABEL_5:
      operator new();
    }
  }

  return a1;
}

void sub_1B2BE69B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(v1);
  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabelPart::setRenderPass(uint64_t result, uint64_t a2)
{
  v2 = *(result + 576);
  for (i = *(result + 584); v2 != i; result = (*(*v5 + 824))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

double md::LabelPart::placement@<D0>(uint64_t a1@<X8>)
{
  result = 2.48104034e-265;
  *a1 = 150994944;
  *(a1 + 4) = 0;
  return result;
}

uint64_t md::Label::defaultCollisionOverlayGroup(md::Label *this)
{
  v2 = *(this + 1291);
  if (v2 <= 0x17)
  {
    if (((1 << v2) & 0xF17000) != 0)
    {
      return 4;
    }

    if (((1 << v2) & 0x300) != 0)
    {
      return 3;
    }

    if (v2 == 2 && (*(**(this + 1) + 280))(*(this + 1)) == 1)
    {
      return 4;
    }
  }

  if (*(this + 1290) == 1)
  {
    v4 = *(this + 1);
    v5 = *(this + 12);
    v6 = atomic_load(this + 1328);
    v7 = (*(*v4 + 568))(v4, v5, 0, v6 & 1, 0);
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v8 + 296);
      if (!v9)
      {
        v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v7, 0);
        v9 = *v10;
        *(v8 + 296) = *v10;
      }

      if (*(v9 + 88) == 2)
      {
        return 4;
      }
    }
  }

  return 2;
}

void *gms::Material<ggl::Texture2D>::~Material(void *a1)
{
  *a1 = &unk_1F2A48E88;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t gdc::Registry::storage<md::components::ClientState>(uint64_t a1)
{
  v3 = 0xA4F4C87C991FC6E0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA4F4C87C991FC6E0);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::MaterialLogic::_updateMaterialForComponent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v15 = a3;
  md::MaterialLogic::_resolveMaterial(&v13, a1, *a4, a5);
  v8 = a4[1];
  v7 = a4[2];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v13;
  v9 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a4[2];
  a4[1] = v10;
  a4[2] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v8 && v10)
  {
    if (*(v8 + 8) == *(v10 + 8) && *(v8 + 48) == *(v10 + 48) && *(v8 + 16) == *(v10 + 16) && *(v8 + 32) == *(v10 + 32))
    {
      goto LABEL_17;
    }
  }

  else if (!(v8 | v10))
  {
    goto LABEL_17;
  }

  for (i = *(gdc::Registry::storage<md::components::Material>(a2) + 128); i; i = *i)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], a2, &v15, 1);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2BE7020(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::MaterialLogic::_resolveMaterial(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 && (v5 = *(a4 + 12), *(a4 + 12)))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 120);
    v12 = a3;
    v13 = 0;
    do
    {
      if (!((v9 >= v5) | v7 & 1))
      {
        v8 = (*a4 + 4 * v9);
        v4 = (*a4 + *(a4 + 8) + 2 * v9);
        v7 = 1;
      }

      v6 ^= (*v4 - 0x61C8864680B583EBLL + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8) ^ v6) << 6) + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8) ^ v6) >> 2)) ^ ((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8);
      v11 = v9 + 1;
      if (v7)
      {
        v7 = 0;
      }

      if (v11 < v5)
      {
        ++v9;
      }

      else
      {
        v9 = v5;
      }
    }

    while (v11 < v5);
    v13 = v6;
  }

  else
  {
    v10 = *(a2 + 120);
    v12 = a3;
    v13 = 0;
    a4 = 0;
  }

  gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(a1, v10, &v12, a4);
}

uint64_t *geo::FrameCache<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::shared_ptr<gms::_Material<ggl::Texture2D>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 88);
  v3 = a2[1];
  v4 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL + (((*a2 >> 34) + *a2 + (HIDWORD(*a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a2))) ^ v3;
  v5 = v2[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL + (((*a2 >> 34) + *a2 + (HIDWORD(*a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a2))) ^ v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*v2 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  if ((v9[6] & 1) == 0)
  {
    v12 = std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 80), *a2, a2[1]);
    if (v12)
    {
      if (*(v12 + 48) == 1)
      {
        v13 = v12[5];
        v9[4] = v12[4];
        v9[5] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        *(v9 + 48) = 1;
      }
    }
  }

  return v9 + 4;
}

void *std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
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

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == a2 && result[3] == a3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void gms::MaterialManager<ggl::Texture2D>::rawMaterialForIDAndAttributes(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((a2 + 16), a3);
  if (!v9)
  {
    v10 = 0;
LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_20;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 256;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v18, a5);
    v12 = *(a4 + 12);
    if (*(a4 + 12))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(a4 + 12);
      do
      {
        if (v15 < v16 && (v13 & 1) == 0)
        {
          v14 = (*a4 + 4 * v15);
          v5 = (*a4 + *(a4 + 8) + 2 * v15);
          v13 = 1;
        }

        v17 = *v5;
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v18, *v14) = v17;
        v16 = *(a4 + 12);
        if (v15 + 1 < v16)
        {
          ++v15;
        }

        else
        {
          v15 = *(a4 + 12);
        }

        if (v13)
        {
          v13 = 0;
        }
      }

      while (v15 != v12);
    }

    gms::MaterialSheet<ggl::Texture2D>::matchAttributes(a1, v11, v18);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v18);
  }

  else
  {
    gms::MaterialSheet<ggl::Texture2D>::matchAttributes(a1, v11, a5);
  }

LABEL_20:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void sub_1B2BE77FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::LinearResolver::matchAttributes(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v25 = *(a1 + 16);
  if (v25 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2;
  v22 = 0;
  v7 = 0;
  v8 = *(a2 + 12);
  v28 = *a2 + *(a2 + 8);
  v9 = 0xFFFFFFFFLL;
  v10 = *(a1 + 8);
  v23 = v10;
  do
  {
    result = (v10 - v5) >> 5;
    v4 &= 0xFFFFFFFFFFFFFF00;
    v12 = *(v10 + 12);
    if (*(v10 + 12))
    {
      v26 = v9;
      v27 = v7;
      v24 = (v10 - v5) >> 5;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (v15 < v12 && (v14 & 1) == 0)
        {
          v4 = *v10 + 4 * v15;
          v2 = (*v10 + *(v10 + 8) + 2 * v15);
          v14 = 1;
        }

        v16 = v6;
        v17 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, *v4);
        if (v17 == v8)
        {
          goto LABEL_20;
        }

        if (v17 < v8)
        {
          v3 = (v28 + 2 * v17);
        }

        if (*v3 != *v2)
        {
LABEL_20:
          result = v26;
          v13 = v27;
          v6 = v16;
          v5 = v23;
          goto LABEL_31;
        }

        v13 = (v13 + 1);
        v18 = v15 + 1;
        if (v14)
        {
          v14 = 0;
        }

        if (v18 < v12)
        {
          ++v15;
        }

        else
        {
          v15 = v12;
        }

        v6 = v16;
      }

      while (v18 < v12);
      v7 = v27;
      if (v13 > v27)
      {
        v22 = *(v10 + 24);
        v5 = v23;
        result = v24;
        goto LABEL_31;
      }

      v5 = v23;
      LODWORD(result) = v24;
      v9 = v26;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    if (v13 == v7)
    {
      v19 = *(v10 + 24);
      v20 = v22;
      v21 = v19 > v22;
      if (v19 > v22)
      {
        v20 = *(v10 + 24);
      }

      v22 = v20;
      if (v21)
      {
        result = result;
      }

      else
      {
        result = v9;
      }

      v13 = v7;
    }

    else
    {
      v13 = v7;
      result = v9;
    }

LABEL_31:
    v10 += 32;
    v9 = result;
    v7 = v13;
  }

  while (v10 != v25);
  return result;
}

uint64_t gms::MaterialSheet<ggl::Texture2D>::matchAttributes(void *a1, uint64_t a2, uint64_t a3)
{
  result = (***(a2 + 16))(*(a2 + 16), a3);
  if (result == -1)
  {
    v7 = *(a2 + 80);
    *a1 = *(a2 + 72);
    a1[1] = v7;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v6 = *(*(a2 + 40) + 16 * result);
    *a1 = v6;
    v7 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return result;
    }
  }

  atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  return result;
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  memset(&v52, 0, sizeof(v52));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v2[13];
  v5 = v2[14];
  if (v4 != v5)
  {
    while (*v4 != v3)
    {
      if (++v4 == v5)
      {
        goto LABEL_57;
      }
    }
  }

  if (v4 == v5 || (v47 = v2 + 10, v2[9] == v2 + 10))
  {
LABEL_57:
    shared_weak_owners = 0;
    shared_owners = 0;
    v45 = 0;
  }

  else
  {
    v6 = v2[9];
    do
    {
      v7 = std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>((v6 + 13), *(a1 + 16) + 8);
      v50 = v6;
      if (v6 + 14 != v7)
      {
        if ((*(v7 + 184) & 1) == 0)
        {
          v49 = v7;
          if (v6[35])
          {
            v51 = v6[34];
            if ((*(v51 + 128) & 1) == 0)
            {
              md::LabelClusterProvider::initializeSourceAnnotations(v51);
              operator new();
            }

            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v12 = *(v51 + 10);
            v13 = [v12 countByEnumeratingWithState:&v56 objects:v54 count:16];
            if (v13)
            {
              v14 = *v57;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v57 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v56 + 1) + 8 * i);
                  v17 = [v16 feature];
                  v19 = [v17 pointFeature] + 192;
                  v18 = *v19;
                  if (*(v19 + 8) == *v19)
                  {
                    md::LabelPoint::NullPoint(v18);
                    v18 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
                  }

                  v20 = md::LabelPoint::mercatorPoint(v18);
                  v21 = 0;
                  v22 = 1;
                  while (1)
                  {
                    v23 = *(v20 + 8 * v21);
                    if (v23 < *(v49 + 96 + 8 * v21) || v23 >= *(v49 + 112 + 8 * v21))
                    {
                      break;
                    }

                    v24 = v22;
                    v22 = 0;
                    v21 = 1;
                    if ((v24 & 1) == 0)
                    {

                      [(NSArray *)v11 addObject:v16];
                      goto LABEL_27;
                    }
                  }

LABEL_27:
                  ;
                }

                v13 = [v12 countByEnumeratingWithState:&v56 objects:v54 count:16];
              }

              while (v13);
            }
          }

          else
          {
            v8 = v6[5];
            v9 = v50[11];
            v10 = [v9 annotationsInMapRect:{*(v49 + 64), *(v49 + 72), *(v49 + 80), *(v49 + 88)}];
            v11 = md::LabelCustomFeatureSupport::filterAnnotations(v8, v10);
          }

          md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap((v50 + 5), v11, 0);
          md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v50 + 5, *(v49 + 168), 0);
          v25 = [(NSArray *)v11 copy];
          geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v49 + 160, v25);

          *(v49 + 184) = 1;
          v7 = v49;
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v26 = *(v7 + 168);
        v27 = [v26 countByEnumeratingWithState:&v56 objects:v54 count:16];
        if (v27)
        {
          v28 = *v57;
          v29 = v50 + 31;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v57 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v56 + 1) + 8 * j);
              v32 = v31;
              v33 = *v29;
              if (*v29)
              {
                v34 = v50 + 31;
                do
                {
                  v35 = v33[4];
                  v36 = v35 >= v31;
                  v37 = v35 < v31;
                  if (v36)
                  {
                    v34 = v33;
                  }

                  v33 = v33[v37];
                }

                while (v33);
                if (v34 != v29 && v31 >= v34[4])
                {
                  v39 = v34[5];
                  v38 = (v34 + 5);
                  if (v39)
                  {
                    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v52, v38);
                    if (!*(*v38 + 128))
                    {
                      memset(&v61, 0, sizeof(v61));
                      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v61, v38);
                      md::LabelFeatureStyler::styleExternalFeatures(*(v50[6] + 296), &v61);
                      v60 = &v61;
                      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v60);
                    }
                  }
                }
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v56 objects:v54 count:16];
          }

          while (v27);
        }
      }

      v40 = v50;
      v41 = v50[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v40[2];
          v43 = *v42 == v40;
          v40 = v42;
        }

        while (!v43);
      }

      v6 = v42;
    }

    while (v42 != v47);
    v3 = *(a1 + 16);
    v1 = v53;
    v45 = v52.__vftable;
    shared_owners = v52.__shared_owners_;
    shared_weak_owners = v52.__shared_weak_owners_;
  }

  LOBYTE(v55) = v1;
  v54[0] = v3;
  v54[1] = v45;
  v54[2] = shared_owners;
  v54[3] = shared_weak_owners;
  memset(&v52, 0, sizeof(v52));
  *(&v57 + 1) = 0;
  operator new();
}

void sub_1B2BE89C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  v52 = *(v50 - 168);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](&a49);
  *(v50 - 208) = v49;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v50 - 208));
  a26 = &a29;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a26);
  _Unwind_Resume(a1);
}

void md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap(md::LabelCustomFeatureProvider *this, NSArray *a2, char a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a2;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v3)
  {
    v32 = *v36;
    v4 = (this + 208);
    do
    {
      v33 = v3;
      for (i = 0; i != v33; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v7 = v6;
        v8 = *v4;
        if (*v4)
        {
          v9 = (this + 208);
          do
          {
            v10 = *(v8 + 4);
            v11 = v10 >= v6;
            v12 = v10 < v6;
            if (v11)
            {
              v9 = v8;
            }

            v8 = *&v8[8 * v12];
          }

          while (v8);
          if (v9 != v4 && v6 >= v9[4])
          {
            v22 = v9 + 5;
            ++*(v9 + 14);
            if ((a3 & 1) == 0)
            {
              *(*v22 + 145) = 1;
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }

        v13 = [v6 feature];
        v14 = v13;
        if (v13 && (v13 = [(mdm::zone_mallocator *)v13 feature], *v13))
        {
          v15 = *(this + 6);
          [(mdm::zone_mallocator *)v14 setDataSource:v15];

          v16 = *[(mdm::zone_mallocator *)v14 feature];
          v17 = *(this + 19);
          v18 = *(this + 20);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = *(v16 + 104);
          *(v16 + 96) = v17;
          *(v16 + 104) = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
          }

          if ([(mdm::zone_mallocator *)v14 isPointFeature])
          {
            v20 = [(mdm::zone_mallocator *)v14 feature];
            v21 = *(v20 + 8);
            v39[0] = *v20;
            v39[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          if (([(mdm::zone_mallocator *)v14 isLineFeature]& 1) != 0)
          {
            v23 = *([(mdm::zone_mallocator *)v14 feature]+ 8);
            if (v23)
            {
              atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        else
        {
          v24 = *v4;
          v25 = (this + 208);
          v26 = (this + 208);
          if (*v4)
          {
            while (1)
            {
              while (1)
              {
                v26 = v24;
                v27 = v24[4];
                if (v7 >= v27)
                {
                  break;
                }

                v24 = *v26;
                v25 = v26;
                if (!*v26)
                {
                  goto LABEL_40;
                }
              }

              if (v27 >= v7)
              {
                break;
              }

              v24 = v26[1];
              if (!v24)
              {
                v25 = v26 + 1;
                goto LABEL_40;
              }
            }

            v29 = v26;
          }

          else
          {
LABEL_40:
            v28 = mdm::zone_mallocator::instance(v13);
            v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(v28);
            *(v29 + 4) = v7;
            *(v29 + 40) = 0uLL;
            *(v29 + 7) = 1;
            std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(this + 25, v26, v25, v29);
          }

          if (a3)
          {
            v22 = v29 + 40;
LABEL_44:
            ++v22[5];
          }
        }

LABEL_45:
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v3);
  }

  if (v41 != v42 && (a3 & 1) == 0)
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(*(this + 1) + 296), &v41);
  }

  v39[0] = &v41;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v39);
}

void sub_1B2BE931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = (v29 - 144);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a29);

  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 2;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  operator delete(a1);
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 64);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void md::MercatorAnchor::~MercatorAnchor(md::MercatorAnchor *this)
{
  md::Anchor::~Anchor(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorAnchor>,std::allocator<md::MercatorAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (v1 + 352);
  if (v1 + 352 != a1 + 16)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = v3 - v4;
    v6 = *(v1 + 368);
    v7 = *(v1 + 352);
    if (v6 - v7 < (v3 - v4))
    {
      v8 = v5 >> 4;
      if (v7)
      {
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v1 + 352));
        v9 = *v2;
        v11 = mdm::zone_mallocator::instance(v10);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(v11, v9);
        v6 = 0;
        *v2 = 0;
        *(v1 + 360) = 0;
        *(v1 + 368) = 0;
      }

      if (v8 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v6 >> 3;
      if (v6 >> 3 <= v8)
      {
        v12 = v8;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v1 + 352), v13);
      for (i = *(v1 + 360); v4 != v3; i += 2)
      {
        v15 = *(v4 + 1);
        *i = *v4;
        i[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v4 += 16;
      }

LABEL_21:
      *(v1 + 360) = i;
      goto LABEL_27;
    }

    v16 = *(v1 + 360) - v7;
    if (v16 < v5)
    {
      v17 = &v4[v16];
      std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a1 + 16), &v4[v16], v7);
      for (i = *(v1 + 360); v17 != v3; i += 2)
      {
        v18 = v17[1];
        *i = *v17;
        i[1] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v17 += 2;
      }

      goto LABEL_21;
    }

    v19 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a1 + 16), v3, v7);
    for (j = *(v1 + 360); j != v19; j -= 2)
    {
      v21 = *(j - 1);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    *(v1 + 360) = v19;
  }

LABEL_27:
  *(v1 + 136) = 1;
}

void *std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 48) % 0x30uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(v4, v3);
  }

  return a1;
}

void sub_1B2BE99A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  a9.super_class = VKImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ta2::TextureAtlasRegion::free(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = 1;
    v3 = *(a1 + 8);
    std::mutex::lock(v3);
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    if (v4 >= v5)
    {
      v8 = *(v3 + 64);
      v9 = (v4 - v8) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = 16 * v9;
      v14 = *a2;
      *(16 * v9) = *a2;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v7 = (v13 + 16);
      v15 = *(v3 + 64);
      v16 = *(v3 + 72) - v15;
      v17 = v13 - v16;
      memcpy((v13 - v16), v15, v16);
      *(v3 + 64) = v17;
      *(v3 + 72) = v7;
      *(v3 + 80) = 0;
      if (v15)
      {
        operator delete(v15);
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

    *(v3 + 72) = v7;

    std::mutex::unlock(v3);
  }
}

void ta2::TextureAtlasRegion::deactivate(ta2::TextureAtlasRegion *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = v2[45];
    v3 = v2[46];
    if (v4 != v3)
    {
      while (*v4 != this)
      {
        v4 += 16;
        if (v4 == v3)
        {
          goto LABEL_17;
        }
      }
    }

    if (v4 != v3)
    {
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100]((v2[49] - 24), v4);
      v5 = v2[46];
      if (v4 + 16 != v5)
      {
        do
        {
          v6 = *(v4 + 16);
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          v7 = *(v4 + 8);
          *v4 = v6;
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          v8 = v4 + 16;
          v9 = v4 + 32;
          v4 += 16;
        }

        while (v9 != v5);
        v5 = v2[46];
        v4 = v8;
      }

      while (v5 != v4)
      {
        v10 = *(v5 - 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        v5 -= 16;
      }

      v2[46] = v4;
    }
  }

LABEL_17:
  *(this + 64) = 1026;
  *(this + 4) = 0;
}

uint64_t std::construct_at[abi:nn200100]<md::RouteFeatureAnchorWithPixelBounds,std::shared_ptr<md::Anchor> &,gm::Box<float,2> const&,BOOL const&,md::RouteFeatureAnchorWithPixelBounds*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, char *a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a5;
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = *a4;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    v7 = *a5;
    *a1 = a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = *a4;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v7;
  }

  return a1;
}

void ta2::TextureAtlasRegion::~TextureAtlasRegion(ta2::TextureAtlasRegion *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A16D78;
  if (*(this + 128) != 2)
  {
    if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
    }

    v2 = GEOGetVectorKitTextureAtlasLog(void)::log;
    if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_state == State::Inactive";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/TextureAtlas2.cpp";
      v9 = 1024;
      v10 = 789;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "TextureAtlasRegion: Texture atlas region should be inactive before deleting: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
    }
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  ta2::TextureAtlasRegion::~TextureAtlasRegion(this);

  JUMPOUT(0x1B8C62190);
}

void *esl::toFontWeight@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*(result + 23) < 0)
  {
    if (result[1] == 10 && **result == 0x67696C6172746C75 && *(*result + 8) == 29800)
    {
      goto LABEL_45;
    }

    if (result[1] == 5 && **result == 1751607660 && *(*result + 4) == 116)
    {
      goto LABEL_59;
    }

    if (result[1] == 4 && **result == 1852401780)
    {
LABEL_47:
      v11 = 513;
      goto LABEL_70;
    }

    if (result[1] != 7 || (**result == 1969710450 ? (v8 = *(*result + 3) == 1918987381) : (v8 = 0), !v8))
    {
      v9 = result[1];
      if (v9 != 8)
      {
        if (v9 == 6 && **result == 1768187245 && *(*result + 4) == 28021)
        {
          goto LABEL_36;
        }

        goto LABEL_62;
      }

      v12 = *result;
      goto LABEL_61;
    }

LABEL_53:
    v11 = 769;
    goto LABEL_70;
  }

  v4 = *(result + 23);
  if (v4 > 6)
  {
    if (v4 != 7)
    {
      v12 = result;
      if (v4 != 8)
      {
        if (v4 != 10)
        {
          goto LABEL_62;
        }

        if (*result != 0x67696C6172746C75 || *(result + 4) != 29800)
        {
          goto LABEL_62;
        }

LABEL_45:
        v11 = 1;
        goto LABEL_70;
      }

LABEL_61:
      if (*v12 == 0x646C6F62696D6573)
      {
        v11 = 1281;
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    if (*result != 1969710450 || *(result + 3) != 1918987381)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  if (v4 == 4)
  {
    if (*result != 1852401780)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  if (v4 != 5)
  {
    if (v4 != 6)
    {
      goto LABEL_62;
    }

    if (*result != 1768187245 || *(result + 2) != 28021)
    {
      goto LABEL_62;
    }

LABEL_36:
    v11 = 1025;
    goto LABEL_70;
  }

  if (*result == 1751607660 && *(result + 4) == 116)
  {
LABEL_59:
    v11 = 257;
    goto LABEL_70;
  }

LABEL_62:
  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("bold", result);
  if (result)
  {
    v11 = 1537;
  }

  else
  {
    result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("heavy", v2);
    if (result)
    {
      v11 = 1793;
    }

    else
    {
      result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("black", v2);
      if (!result)
      {
        *a2 = 0;
        return result;
      }

      v11 = 2049;
    }
  }

LABEL_70:
  *a2 = v11;
  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const char *a1, void *a2)
{
  v4 = strlen(a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a2, a1, v4) == 0;
  }

  if (v4 == a2[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a2 = *a2;
    return memcmp(a2, a1, v4) == 0;
  }

  return 0;
}

uint64_t esl::toFontWeightAxisValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      *a2 = 1;
      if (result == 2)
      {
        v2 = 1120403456;
      }

      else
      {
        v2 = 1137180672;
      }

      goto LABEL_20;
    }

    if (!result)
    {
      *a2 = 1;
      v2 = 1128792064;
      goto LABEL_20;
    }

    if (result == 1)
    {
      *a2 = 1;
      v2 = 1133903872;
      goto LABEL_20;
    }
  }

  else
  {
    if (result <= 5)
    {
      *a2 = 1;
      if (result == 4)
      {
        v2 = 1140457472;
      }

      else
      {
        v2 = 1142292480;
      }

      goto LABEL_20;
    }

    switch(result)
    {
      case 6:
        *a2 = 1;
        v2 = 1143930880;
        goto LABEL_20;
      case 7:
        *a2 = 1;
        v2 = 1145569280;
        goto LABEL_20;
      case 8:
        *a2 = 1;
        v2 = 1147207680;
LABEL_20:
        *(a2 + 4) = v2;
        return result;
    }
  }

  *a2 = 0;
  return result;
}

uint64_t esl::toCGWeight@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v2 = MEMORY[0x1E6965968];
      }

      else
      {
        v2 = MEMORY[0x1E6965958];
      }

      goto LABEL_20;
    }

    if (!result)
    {
      v2 = MEMORY[0x1E6965978];
      goto LABEL_20;
    }

    if (result == 1)
    {
      v2 = MEMORY[0x1E6965948];
      goto LABEL_20;
    }
  }

  else
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v2 = MEMORY[0x1E6965950];
      }

      else
      {
        v2 = MEMORY[0x1E6965960];
      }

      goto LABEL_20;
    }

    switch(result)
    {
      case 6:
        v2 = MEMORY[0x1E6965938];
        goto LABEL_20;
      case 7:
        v2 = MEMORY[0x1E6965940];
        goto LABEL_20;
      case 8:
        v2 = MEMORY[0x1E6965930];
LABEL_20:
        v3 = *v2;
        *a2 = 1;
        *(a2 + 4) = v3;
        return result;
    }
  }

  *a2 = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7B2F550, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7B2F558, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

esl::QuartzImage *esl::QuartzImage::QuartzImage(esl::QuartzImage *this, const unsigned __int8 *a2, CFIndex a3)
{
  *(this + 2) = 0;
  v4 = (this + 16);
  *this = &unk_1F29E1060;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v5 = CFDataCreate(0, a2, a3);
  v6 = CGDataProviderCreateWithCFData(v5);
  *v4 = CGImageCreateWithPNGDataProvider(v6, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return this;
}

void esl::QuartzImage::asPNG(CGImageRef *this@<X0>, void *a2@<X8>)
{
  if (((*(*this + 5))(this) & 1) != 0 && (DataProvider = CGImageGetDataProvider(this[2]), (v5 = CGDataProviderCopyData(DataProvider)) != 0))
  {
    v6 = v5;
    Length = CFDataGetLength(v5);
    v8 = malloc_type_malloc(Length, 0x100004077774924uLL);
    v9 = CFDataGetLength(v6);
    v11.location = 0;
    v11.length = v9;
    CFDataGetBytes(v6, v11, v8);
    CFRelease(v6);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v9;
    if (v9)
    {
      memmove(a2, v8, v9);
    }

    *(a2 + v9) = 0;

    free(v8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

BOOL esl::QuartzImage::writeAsPNG(CGImageRef *this, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, a2, 0x600u);
  v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v6 = CGImageDestinationCreateWithURL(v5, @"public.png", 1uLL, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!v6)
  {
    v9 = GEOGetEaselImageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a2;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v11, 0xCu);
    }

    return 0;
  }

  CGImageDestinationAddImage(v6, this[2], 0);
  v7 = CGImageDestinationFinalize(v6);
  if (!v7)
  {
    v8 = GEOGetEaselImageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a2;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v11, 0xCu);
    }
  }

  CFRelease(v6);
  return v7;
}

const __CFData *esl::QuartzImage::byteData(CGImageRef *this)
{
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(this[2]);
  result = CGDataProviderCopyData(DataProvider);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    this[4] = Length;
    v6 = this[3];
    if (v6)
    {
      v7 = malloc_type_realloc(v6, Length, 0x100004077774924uLL);
    }

    else
    {
      v7 = malloc_type_malloc(Length, 0x100004077774924uLL);
    }

    this[3] = v7;
    v8.length = this[4];
    v8.location = 0;
    CFDataGetBytes(v4, v8, v7);
    CFRelease(v4);
    return this[3];
  }

  return result;
}

CGImageRef esl::QuartzImage::byteLength(CGImageRef *this)
{
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(this[2]);
  v3 = CGDataProviderCopyData(DataProvider);
  this[4] = CFDataGetLength(v3);
  CFRelease(v3);
  return this[4];
}

size_t esl::QuartzImage::bytesPerRow(CGImage **this)
{
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  v2 = this[2];

  return CGImageGetBytesPerRow(v2);
}

void geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<esl::QuartzContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<esl::QuartzImage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E11B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1200;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1260;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__shared_ptr_emplace<esl::QuartzImage>::__shared_ptr_emplace[abi:ne200100]<CGImage *,std::allocator<esl::QuartzImage>,0>(void *a1, CGImageRef *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F29E11B0;
  esl::QuartzImage::QuartzImage((a1 + 3), *a2);
  return a1;
}

void esl::QuartzContext::translate(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextTranslateCTM(v6, a2, a3);
  }
}

void esl::QuartzContext::scale(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextScaleCTM(v6, a2, a3);
  }
}

void esl::QuartzContext::rotate(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);

    CGContextRotateCTM(v4, a2);
  }
}

void esl::QuartzContext::concat(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (a2)
  {
    if (v4)
    {
      v5 = a1[1];
      v6 = *(a2 + 24);
      *&v7.a = *(a2 + 8);
      *&v7.c = v6;
      *&v7.tx = *(a2 + 40);
      CGContextConcatCTM(v5, &v7);
    }
  }
}

size_t esl::QuartzContext::bytesPerRow(CGContext **this)
{
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  v2 = this[1];

  return CGBitmapContextGetBytesPerRow(v2);
}

BOOL esl::QuartzContext::writeToPNG(CGContextRef *this, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, a2, 0x600u);
  v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v6 = CGImageDestinationCreateWithURL(v5, @"public.png", 1uLL, 0);
  CFRelease(v5);
  CFRelease(v4);
  if (!v6)
  {
    v10 = GEOGetEaselContextLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = a2;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v12, 0xCu);
    }

    return 0;
  }

  Image = CGBitmapContextCreateImage(this[1]);
  CGImageDestinationAddImage(v6, Image, 0);
  v8 = CGImageDestinationFinalize(v6);
  if (!v8)
  {
    v9 = GEOGetEaselContextLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = a2;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v12, 0xCu);
    }
  }

  CFRelease(Image);
  CFRelease(v6);
  return v8;
}

uint64_t esl::QuartzContext::write(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v5 = GEOGetEaselContextLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "ImageFormat::PNG == format";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
      v12 = 1024;
      v13 = 2157;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Only PNG is supported for writing thus far: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v14 = 0;
    *v15 = 0xE00000001;
    v16 = 1;
    v17 = getpid();
    v7 = 648;
    if (!sysctl(v15, 4u, buf, &v7, 0, 0) && (v14 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return (*(*a1 + 472))(a1, a2);
}

void esl::QuartzContext::flip(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);
    v5.b = 0.0;
    v5.c = 0.0;
    v5.a = 1.0;
    *&v5.d = xmmword_1B33ADD90;
    v5.ty = a2;
    CGContextConcatCTM(v4, &v5);
  }
}

uint64_t esl::QuartzContext::fillWithColor(CGContextRef *this, const esl::QuartzColor *a2)
{
  result = (*(*this + 3))(this);
  if (result)
  {
    result = (*(*this + 29))(this, a2);
    if (result)
    {
      v5 = (*(*this + 14))(this);
      v6.size.height = (*(*this + 15))(this);
      v6.origin.x = 0.0;
      v6.origin.y = 0.0;
      v6.size.width = v5;
      CGContextFillRect(this[1], v6);
      return 1;
    }
  }

  return result;
}

uint64_t esl::QuartzContext::setStrokeColor(CGContext **this, const esl::QuartzColor *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*(*this + 3))(this);
    if (result)
    {
      v5 = this[1];
      esl::QuartzColor::color(a2, v6);
      CGContextSetStrokeColorWithColor(v5, v6[1]);
      geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v6);
      return 1;
    }
  }

  return result;
}

void esl::QuartzContext::setLineWidth(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);

    CGContextSetLineWidth(v4, a2);
  }
}

void esl::QuartzContext::setLineCapStyle(void *a1, CGLineCap a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a2 > kCGLineCapSquare;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1[1];

    CGContextSetLineCap(v5, a2);
  }
}

void esl::QuartzContext::setLineJoinStyle(void *a1, CGLineJoin a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a2 > kCGLineJoinBevel;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1[1];

    CGContextSetLineJoin(v5, a2);
  }
}

void esl::QuartzContext::strokeEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextStrokeEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::fillEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextFillEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::addEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextAddEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::addArc(esl::QuartzContext *this, float a2, float a3, float a4, float a5, float a6, int a7)
{
  if ((*(*this + 24))(this))
  {
    v14 = *(this + 1);

    CGContextAddArc(v14, a2, a3, a4, a5, a6, a7);
  }
}

void esl::QuartzContext::replacePathWithStrokedPath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextReplacePathWithStrokedPath(v2);
  }
}

void esl::QuartzContext::clearRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextClearRect(v4, *&v6);
  }
}

void esl::QuartzContext::clip(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextClip(v2);
  }
}

void esl::QuartzContext::evenOddClip(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextEOClip(v2);
  }
}

uint64_t esl::QuartzContext::addPath(CGContextRef *a1, uint64_t a2)
{
  result = (*(*a1 + 3))(a1);
  if (result)
  {
    if (*a2 && (v5 = *(*a2 + 8)) != 0)
    {
      CGContextAddPath(a1[1], v5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void esl::QuartzContext::beginPath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextBeginPath(v2);
  }
}

void esl::QuartzContext::strokePath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextStrokePath(v2);
  }
}

void esl::QuartzContext::closePath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextClosePath(v2);
  }
}

void esl::QuartzContext::moveTo(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextMoveToPoint(v6, a2, a3);
  }
}

uint64_t esl::QuartzContext::setShadowWithColor(void *a1, float *a2, const void *a3, float a4)
{
  v22 = *MEMORY[0x1E69E9840];
  result = (*(*a3 + 48))(a3);
  if (result)
  {
    result = (*(*a1 + 24))(a1);
    if (result)
    {
      if (a4 < 0.0)
      {
        v9 = GEOGetEaselContextLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *color = "0 <= radius";
          *&color[8] = 2080;
          *&color[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
          v16 = 1024;
          v17 = 2529;
          _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Can not set shadow with negative blur radius: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        v18 = 0;
        *v19 = 0xE00000001;
        v20 = 1;
        v21 = getpid();
        v13 = 648;
        if (!sysctl(v19, 4u, buf, &v13, 0, 0) && (v18 & 0x800) != 0)
        {
          __debugbreak();
        }
      }

      v10 = a1[1];
      v11 = *a2;
      v12 = a2[1];
      esl::QuartzColor::color(a3, buf);
      v23.width = v11;
      v23.height = v12;
      CGContextSetShadowWithColor(v10, v23, a4, *&color[4]);
      geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(buf);
      return 1;
    }
  }

  return result;
}

void sub_1B2BEDE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t esl::QuartzContext::drawLinearGradient(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*(*a4 + 48))(a4);
    if (result)
    {
      result = (*(*a1 + 24))(a1);
      if (result)
      {
        __p = &unk_1F29E15F0;
        v17 = &unk_1F29E1130;
        v11 = a2[2];
        if (v11)
        {
          CFRetain(v11);
        }

        v18 = v11;
        v19 = &unk_1F29E15F0;
        v20[0] = &unk_1F29E1130;
        v12 = a4[2];
        if (v12)
        {
          CFRetain(v12);
        }

        v20[1] = v12;
        memset(v14, 0, sizeof(v14));
        std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(v14, &__p, &v21, 2uLL);
        for (i = 0; i != -8; i -= 4)
        {
          v20[i - 1] = &unk_1F29E15F0;
          geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v20[i]);
        }

        v15 = 0x3F80000000000000;
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v15, &__p, 2uLL);
        (*(*a1 + 360))(a1, v14, &__p, a3, a5);
        if (__p)
        {
          v17 = __p;
          operator delete(__p);
        }

        __p = v14;
        std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&__p);
        return 1;
      }
    }
  }

  return result;
}

BOOL esl::QuartzContext::drawLinearGradient(CGContextRef *a1, void **a2, float **a3, float *a4, float *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = a3[1];
    if (*a3 != v8 && (v6 - v5) >> 5 == v8 - *a3)
    {
      v13 = *a2;
      while (((*(*v13 + 48))(v13) & 1) != 0)
      {
        v13 += 32;
        v5 += 32;
        if (v13 == v6)
        {
          if (!(*(*a1 + 3))(a1))
          {
            return 0;
          }

          __src = 0;
          v36 = 0;
          v37 = 0;
          std::vector<double>::reserve(&__src, a3[1] - *a3);
          v14 = *a3;
          v15 = a3[1];
          if (*a3 != v15)
          {
            v16 = v36;
            do
            {
              v17 = *v14;
              if (v16 >= v37)
              {
                v18 = __src;
                v19 = v16 - __src;
                v20 = (v16 - __src) >> 3;
                v21 = v20 + 1;
                if ((v20 + 1) >> 61)
                {
                  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
                }

                v22 = v37 - __src;
                if ((v37 - __src) >> 2 > v21)
                {
                  v21 = v22 >> 2;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v23 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v23);
                }

                v24 = (v16 - __src) >> 3;
                v25 = (8 * v20);
                v26 = (8 * v20 - 8 * v24);
                *v25 = v17;
                v16 = v25 + 1;
                memcpy(v26, v18, v19);
                v27 = __src;
                __src = v26;
                v36 = v16;
                v37 = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v16++ = v17;
              }

              v36 = v16;
              ++v14;
            }

            while (v14 != v15);
          }

          Mutable = CFArrayCreateMutable(0, (a2[1] - *a2) >> 5, 0);
          v41 = &unk_1F29E14A8;
          colors = Mutable;
          if (Mutable)
          {
            v29 = *a2;
            v30 = a2[1];
            if (*a2 != v30)
            {
              do
              {
                v31 = colors;
                esl::QuartzColor::color(v29, &v39);
                CFArrayAppendValue(v31, value);
                geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v39);
                v29 += 32;
              }

              while (v29 != v30);
              v29 = *a2;
            }

            esl::QuartzColor::cgColorSpace(v29, &v39);
            if (value)
            {
              v32 = CGGradientCreateWithColors(value, colors, __src);
              v38[0] = &unk_1F29E14D8;
              v38[1] = v32;
              v33 = v32 != 0;
              if (v32)
              {
                v44.x = *a4;
                v44.y = a4[1];
                v45.x = *a5;
                v45.y = a5[1];
                CGContextDrawLinearGradient(a1[1], v32, v44, v45, 3u);
              }

              geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v38);
            }

            else
            {
              v33 = 0;
            }

            geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v39);
          }

          else
          {
            v33 = 0;
          }

          geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v41);
          if (__src)
          {
            v36 = __src;
            operator delete(__src);
          }

          return v33;
        }
      }
    }
  }

  return 0;
}

void sub_1B2BEE4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a13);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a16);
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL esl::QuartzContext::drawRadialGradient(CGContextRef *a1, void *a2, float *a3, void *a4, float *a5, float a6, float a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!(*(*a2 + 48))(a2) || !(*(*a4 + 48))(a4) || !(*(*a1 + 3))(a1))
  {
    return 0;
  }

  __p = &unk_1F29E15F0;
  v50 = &unk_1F29E1130;
  v14 = a2[2];
  if (v14)
  {
    CFRetain(v14);
  }

  v51 = v14;
  v52 = &unk_1F29E15F0;
  v53[0] = &unk_1F29E1130;
  v15 = a4[2];
  if (v15)
  {
    CFRetain(v15);
  }

  v53[1] = v15;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(&v38, &__p, &v54, 2uLL);
  for (i = 0; i != -8; i -= 4)
  {
    v53[i - 1] = &unk_1F29E15F0;
    geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v53[i]);
  }

  __src = 0x3F80000000000000;
  v50 = 0;
  v51 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &__src, &v47, 2uLL);
  __src = 0;
  v47 = 0;
  v48 = 0;
  std::vector<double>::reserve(&__src, (v50 - __p) >> 2);
  v17 = __p;
  v18 = v50;
  if (__p != v50)
  {
    v19 = v47;
    do
    {
      v20 = *v17;
      if (v19 >= v48)
      {
        v21 = __src;
        v22 = v19 - __src;
        v23 = (v19 - __src) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v48 - __src;
        if ((v48 - __src) >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v26);
        }

        v27 = (v19 - __src) >> 3;
        v28 = (8 * v23);
        v29 = (8 * v23 - 8 * v27);
        *v28 = v20;
        v19 = v28 + 1;
        memcpy(v29, v21, v22);
        v30 = __src;
        __src = v29;
        v47 = v19;
        v48 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v19++ = v20;
      }

      v47 = v19;
      ++v17;
    }

    while (v17 != v18);
  }

  Mutable = CFArrayCreateMutable(0, (v39 - v38) >> 5, 0);
  v44 = &unk_1F29E14A8;
  colors = Mutable;
  if (Mutable)
  {
    v32 = v38;
    v33 = v39;
    if (v38 != v39)
    {
      do
      {
        v34 = colors;
        esl::QuartzColor::color(v32, &v42);
        CFArrayAppendValue(v34, value);
        geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v42);
        v32 += 32;
      }

      while (v32 != v33);
      v32 = v38;
    }

    esl::QuartzColor::cgColorSpace(v32, &v42);
    if (value)
    {
      v35 = CGGradientCreateWithColors(value, colors, __src);
      v41[0] = &unk_1F29E14D8;
      v41[1] = v35;
      v36 = v35 != 0;
      if (v35)
      {
        v55.x = *a3;
        v55.y = a3[1];
        v56.x = *a5;
        v56.y = a5[1];
        CGContextDrawRadialGradient(a1[1], v35, v55, a6, v56, a7, 3u);
      }

      geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v41);
    }

    else
    {
      v36 = 0;
    }

    geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v42);
  }

  else
  {
    v36 = 0;
  }

  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v44);
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  __p = &v38;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&__p);
  return v36;
}

void sub_1B2BEEA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char *a25, char *a26)
{
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a13);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a16);
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a19);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  a25 = &a10;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void esl::QuartzContext::imageInRect(uint64_t a1@<X0>, float *a2@<X1>, void *a3@<X8>)
{
  if ((*(*a1 + 24))(a1))
  {
    (*(*a1 + 392))(&image, a1);
    v7 = image;
    v6 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    if (v7)
    {
      v8 = a2[1];
      v10 = v8;
      v11 = a2[3] - v8;
      if ((a2[2] - *a2) >= 0.0)
      {
        v12 = a2[2] - *a2;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = v12;
      if (v11 >= 0.0)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = v14;
      v9 = *a2;
      image = CGImageCreateWithImageInRect(*(v7 + 2), *(&v10 - 1));
      std::allocate_shared[abi:ne200100]<esl::QuartzImage,std::allocator<esl::QuartzImage>,CGImage *&,0>();
    }

    *a3 = 0;
    a3[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2BEEC94(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *esl::QuartzContext::byteData(CGContext **this)
{
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  v2 = this[1];

  return CGBitmapContextGetData(v2);
}

size_t esl::QuartzContext::byteLength(CGContextRef *this)
{
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(this[1]);
  return CGBitmapContextGetHeight(this[1]) * BytesPerRow;
}

uint64_t esl::QuartzContext::bitmapData(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = (*(*a1 + 128))(a1);
    *a2 = (*(*a1 + 432))(a1);
    *(a2 + 8) = v5;
    *(a2 + 12) = v5 >> 16;
    *(a2 + 16) = (*(*a1 + 96))(a1);
  }

  return v4;
}

uint64_t esl::QuartzContext::pngData()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = GEOGetEaselContextLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v4 = "false";
    v5 = 2080;
    v6 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
    v7 = 1024;
    v8 = 2749;
    _os_log_impl(&dword_1B2754000, v0, OS_LOG_TYPE_ERROR, "Need to implement QuartzContext::pngData before using.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

  v9 = 0;
  *v10 = 0xE00000001;
  v11 = 1;
  v12 = getpid();
  v2 = 648;
  if (!sysctl(v10, 4u, buf, &v2, 0, 0) && (v9 & 0x800) != 0)
  {
    __debugbreak();
  }

  return 0;
}

CGContext *esl::QuartzContext::width(esl::QuartzContext *this)
{
  result = *(this + 1);
  if (result)
  {
    return CGBitmapContextGetWidth(result);
  }

  return result;
}

CGContext *esl::QuartzContext::height(esl::QuartzContext *this)
{
  result = *(this + 1);
  if (result)
  {
    return CGBitmapContextGetHeight(result);
  }

  return result;
}

uint64_t esl::QuartzContext::dimensions(esl::QuartzContext *this)
{
  if (!(*(*this + 24))(this))
  {
    return 0;
  }

  v2 = (*(*this + 112))(this);
  return v2 | ((*(*this + 120))(this) << 16);
}

uint64_t std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<esl::QuartzColor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B2BEF11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<esl::QuartzColor>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<esl::QuartzColor>>(a1, a2);
  }

  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<esl::QuartzColor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      *v8 = &unk_1F29E15F0;
      v8[1] = &unk_1F29E1130;
      v9 = *(a2 + v7 + 16);
      if (v9)
      {
        CFRetain(*(a2 + v7 + 16));
      }

      v8[2] = v9;
      v7 += 32;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B2BEF2A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B2BEF31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E14A8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E14D8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

double esl::AffineTransformMake@<D0>(float a1@<S0>, float a2@<S1>, float a3@<S2>, float a4@<S3>, float a5@<S4>, float a6@<S5>, uint64_t a7@<X8>)
{
  *a7 = &unk_1F29E1508;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  result = a6;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

__n128 esl::QuartzAffineTransform::QuartzAffineTransform(esl::QuartzAffineTransform *this)
{
  *this = &unk_1F29E1508;
  result = *MEMORY[0x1E695EFD0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *(this + 40) = *(MEMORY[0x1E695EFD0] + 32);
  *(this + 24) = v2;
  *(this + 8) = result;
  return result;
}

CGFloat esl::QuartzAffineTransform::scale(esl::QuartzAffineTransform *this, float a2, float a3)
{
  v4 = *(this + 24);
  *&v7.a = *(this + 8);
  *&v7.c = v4;
  *&v7.tx = *(this + 40);
  CGAffineTransformScale(&v8, &v7, a2, a3);
  v5 = *&v8.c;
  *(this + 8) = *&v8.a;
  *(this + 24) = v5;
  result = v8.tx;
  *(this + 40) = *&v8.tx;
  return result;
}

CGFloat esl::AffineTransformMakeTranslation@<D0>(float a1@<S0>, float a2@<S1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1E695EFD0];
  *a3 = &unk_1F29E1508;
  v6 = *v5;
  v7 = v5[1];
  *(a3 + 8) = *v5;
  *(a3 + 24) = v7;
  v8 = v5[2];
  *(a3 + 40) = v8;
  *&v11.a = v6;
  *&v11.c = v7;
  *&v11.tx = v8;
  CGAffineTransformTranslate(&v12, &v11, a1, a2);
  v9 = *&v12.c;
  *(a3 + 8) = *&v12.a;
  *(a3 + 24) = v9;
  result = v12.tx;
  *(a3 + 40) = *&v12.tx;
  return result;
}

CGFloat esl::QuartzAffineTransform::translate(esl::QuartzAffineTransform *this, float a2, float a3)
{
  v4 = *(this + 24);
  *&v7.a = *(this + 8);
  *&v7.c = v4;
  *&v7.tx = *(this + 40);
  CGAffineTransformTranslate(&v8, &v7, a2, a3);
  v5 = *&v8.c;
  *(this + 8) = *&v8.a;
  *(this + 24) = v5;
  result = v8.tx;
  *(this + 40) = *&v8.tx;
  return result;
}

CGFloat esl::QuartzAffineTransform::rotate(esl::QuartzAffineTransform *this, float a2)
{
  v3 = *(this + 24);
  *&v6.a = *(this + 8);
  *&v6.c = v3;
  *&v6.tx = *(this + 40);
  CGAffineTransformRotate(&v7, &v6, a2);
  v4 = *&v7.c;
  *(this + 8) = *&v7.a;
  *(this + 24) = v4;
  result = v7.tx;
  *(this + 40) = *&v7.tx;
  return result;
}

double esl::AffineTransformConcat@<D0>(esl *this@<X0>, const esl::QuartzAffineTransform *a2@<X1>, const esl::QuartzAffineTransform *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (*(*this + 80))(this, a2, a3);
  v8 = (*(*a2 + 80))(a2);
  v9 = (*(*this + 88))(this);
  v10 = v9 * (*(*a2 + 96))(a2) + v7 * v8;
  v11 = (*(*this + 80))(this);
  v12 = (*(*a2 + 88))(a2);
  v13 = (*(*this + 88))(this);
  v14 = v13 * (*(*a2 + 104))(a2) + v11 * v12;
  v15 = (*(*this + 96))(this);
  v16 = (*(*a2 + 80))(a2);
  v17 = (*(*this + 104))(this);
  v18 = v17 * (*(*a2 + 96))(a2) + v15 * v16;
  v19 = (*(*this + 96))(this);
  v20 = (*(*a2 + 88))(a2);
  v21 = (*(*this + 104))(this);
  v34 = v21 * (*(*a2 + 104))(a2) + v19 * v20;
  v22 = (*(*this + 112))(this);
  v23 = (*(*a2 + 80))(a2);
  v24 = (*(*this + 120))(this);
  v25 = v24 * (*(*a2 + 96))(a2) + v22 * v23;
  v33 = v25 + (*(*a2 + 112))(a2);
  v26 = (*(*this + 112))(this);
  v27 = (*(*a2 + 88))(a2);
  v28 = (*(*this + 120))(this);
  v29 = v28 * (*(*a2 + 104))(a2) + v26 * v27;
  v30 = v29 + (*(*a2 + 120))(a2);
  *a4 = &unk_1F29E1508;
  result = v30;
  *(a4 + 8) = v10;
  *(a4 + 16) = v14;
  *(a4 + 24) = v18;
  v32.f64[0] = v34;
  v32.f64[1] = v33;
  *(a4 + 32) = vcvtq_f64_f32(vcvt_f32_f64(v32));
  *(a4 + 48) = result;
  return result;
}

uint64_t esl::QuartzAffineTransform::invert(esl::QuartzAffineTransform *this)
{
  v2 = *(this + 24);
  *&v5.a = *(this + 8);
  *&v5.c = v2;
  *&v5.tx = *(this + 40);
  CGAffineTransformInvert(&v6, &v5);
  v3 = *&v6.c;
  *(this + 8) = *&v6.a;
  *(this + 24) = v3;
  *(this + 40) = *&v6.tx;
  return 1;
}

BOOL esl::QuartzAffineTransform::equalToTransform(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = *(a1 + 24);
  *&t1.a = *(a1 + 8);
  *&t1.c = v4;
  *&t1.tx = *(a1 + 40);
  v5 = *(v3 + 8);
  v6 = *(v3 + 40);
  *&v8.c = *(v3 + 24);
  *&v8.tx = v6;
  *&v8.a = v5;
  return CGAffineTransformEqualToTransform(&t1, &v8);
}

BOOL esl::QuartzAffineTransform::isIdentity(esl::QuartzAffineTransform *this)
{
  v1 = *(this + 24);
  *&t1.a = *(this + 8);
  *&t1.c = v1;
  *&t1.tx = *(this + 40);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  return CGAffineTransformEqualToTransform(&t1, &v4);
}

float esl::QuartzAffineTransform::applyToRect(uint64_t a1, float *a2)
{
  v2 = a2[1];
  v3 = 0.0;
  if ((a2[2] - *a2) >= 0.0)
  {
    v4 = a2[2] - *a2;
  }

  else
  {
    v4 = 0.0;
  }

  if ((a2[3] - v2) >= 0.0)
  {
    v3 = a2[3] - v2;
  }

  v8.origin.x = *a2;
  v8.origin.y = v2;
  v8.size.width = v4;
  v8.size.height = v3;
  v5 = *(a1 + 24);
  *&v7.a = *(a1 + 8);
  *&v7.c = v5;
  *&v7.tx = *(a1 + 40);
  return COERCE_DOUBLE(CGRectApplyAffineTransform(v8, &v7));
}

void esl::FontKey::tokenize(std::string *__str@<X0>, void *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  std::string::basic_string(&v3, __str, 1uLL, 1uLL, &__p);
  operator new();
}

void sub_1B2BF028C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::string>::clear(v20);
  _Unwind_Resume(a1);
}

void std::list<std::string>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *v1;
  v3 = *(v1 + 8);
  v4[1] = v3;
  *v3 = v4;
  *(a1 + 16) = v2 - 1;
  std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

uint64_t std::string::rfind[abi:ne200100](unsigned __int8 *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = a1[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
  }

  v7 = strlen(__s);
  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 - v8;
  v10 = v8 + v7;
  if (v9 <= v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v5[v11];
  if (v7 && v11)
  {
    v15 = *__s;
    v14 = __s + 1;
    v13 = v15;
    v16 = v5;
    v17 = &v5[v11];
    do
    {
      v18 = v16 + 1;
      while (*v16 != v13)
      {
        ++v16;
        ++v18;
        if (v16 == v12)
        {
          goto LABEL_25;
        }
      }

      v19 = v7 - 1;
      v20 = v14;
      while (v19)
      {
        if (v18 == v12)
        {
          goto LABEL_25;
        }

        v22 = *v18++;
        v21 = v22;
        v23 = *v20++;
        --v19;
        if (v21 != v23)
        {
          goto LABEL_22;
        }
      }

      v17 = v16;
LABEL_22:
      ++v16;
    }

    while (v16 != v12);
  }

  else
  {
    v17 = &v5[v11];
  }

LABEL_25:
  if (v17 != v12 || v7 == 0)
  {
    return v17 - v5;
  }

  else
  {
    return -1;
  }
}

void esl::FontKey::parseStylisticAlternates(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v28 = a2;
  v29 = a3;
  do
  {
    v5 = std::string_view::find_first_of[abi:ne200100](&v28, "+-", v4 + 1);
    if (v29 < v4)
    {
      std::__throw_out_of_range[abi:ne200100]("string_view::substr");
    }

    v6 = v5;
    v7 = v5 - v4;
    if (v5 == -1)
    {
      v7 = -1;
    }

    if (v29 - v4 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v29 - v4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v27 = v8;
    if (v8)
    {
      memmove(__dst, (v28 + v4), v8);
    }

    *(__dst + v8) = 0;
    if (v27 < 0)
    {
      if (!__dst[1])
      {
        goto LABEL_33;
      }

      v25 = 0;
      v9 = __dst[0];
    }

    else
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      v25 = 0;
      v9 = __dst;
    }

    v10 = strtol(v9, &v25, 10);
    if (!*v25)
    {
      v12 = a1[13];
      v11 = a1[14];
      if (v12 >= v11)
      {
        v14 = a1[12];
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
        v20 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((a1 + 12), v20);
        }

        v21 = v16;
        v22 = (4 * v16);
        v23 = &v22[-v21];
        *v22 = v10;
        v13 = v22 + 1;
        memcpy(v23, v14, v15);
        v24 = a1[12];
        a1[12] = v23;
        a1[13] = v13;
        a1[14] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v12 = v10;
        v13 = v12 + 4;
      }

      a1[13] = v13;
    }

    if (v27 < 0)
    {
LABEL_33:
      operator delete(__dst[0]);
    }

LABEL_34:
    v4 = v6;
  }

  while (v6 != -1);
}

void sub_1B2BF0790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *geo::optional<esl::FontWeight>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    v6 = 1;
    v7 = 0x10000000ELL;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(&v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 1;
}

_BYTE *geo::optional<int>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    v6 = 1;
    v7 = 0x10000000ELL;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(&v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 4;
}

uint64_t geo::optional<float>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*a1)
    {
      v3 = *geo::optional<float>::value(a2);
      *geo::optional<float>::value(a1) = v3;
    }

    else
    {
      *(a1 + 4) = *geo::optional<float>::value(a2);
      *a1 = 1;
    }
  }

  else if (*a1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

unint64_t esl::FontKey::hash(esl::FontKey *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = ((*(this + 9) | ((*(this + 8) - 0x61C8864680B583EBLL) << 6)) - 0x3A3AA7D820E2E4E6) ^ (*(this + 8) - 0x61C8864680B583EBLL);
  v5 = ((*(this + 10) | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = ((*(this + 11) | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = ((*(this + 12) | (v6 << 6)) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = ((*(this + 13) | (v7 << 6)) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
  v9 = LODWORD(v2) - 0x61C8864680B583EBLL;
  if (v2 == 0.0)
  {
    v9 = 0x9E3779B97F4A7C15;
  }

  v10 = (v9 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v11 = LODWORD(v3) - 0x61C8864680B583EBLL;
  if (v3 == 0.0)
  {
    v11 = 0x9E3779B97F4A7C15;
  }

  v12 = (v11 + (v10 << 6) + (v10 >> 2)) ^ v10;
  v13 = (*(this + 40) + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
  v14 = (std::__string_hash<char>::operator()[abi:ne200100](&v16, this + 48) + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583EBLL) ^ v13;
  return (std::__string_hash<char>::operator()[abi:ne200100](&v17, this + 72) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1B2BF0C98(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C620C0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1B8C61BC0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1B2BF0E24(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B2BF0DE4);
  }

  __cxa_rethrow();
}

char *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

int isspace(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x1E69E9830] + 4 * _c + 60) & 0x4000;
  }

  else
  {
    v1 = __maskrune(_c, 0x4000uLL);
  }

  return v1 != 0;
}

uint64_t std::string_view::find_first_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  if (v6 <= a3 || v7 == 0)
  {
    return -1;
  }

  v10 = (v5 + v6);
  v11 = (v5 + a3);
LABEL_7:
  v12 = v7;
  v13 = __s;
  while (*v11 != *v13)
  {
    ++v13;
    if (!--v12)
    {
      if (++v11 != v10)
      {
        goto LABEL_7;
      }

      v11 = (v5 + v6);
      break;
    }
  }

  if (v11 == v10)
  {
    return -1;
  }

  else
  {
    return &v11[-v5];
  }
}

BOOL esl::FontKey::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  if (*(a2 + 9) != *(a1 + 9) || *(a2 + 10) != *(a1 + 10) || *(a2 + 11) != *(a1 + 11) || *(a2 + 12) != *(a1 + 12) || *(a2 + 13) != *(a1 + 13) || *(a2 + 16) != *(a1 + 16) || *(a2 + 40) != *(a1 + 40) || *(a2 + 20) != *(a1 + 20) || std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 48), (a1 + 48)))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<int,std::allocator<int>>(a2 + 96, a1 + 96);
  if (result)
  {
    return !std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 72), (a1 + 72));
  }

  return result;
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
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

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

_BYTE *geo::optional<float>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

_BYTE *geo::optional<float>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 4;
}

_BYTE *geo::optional<int>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<int>::value(a1);
    *a1 = 0;
  }

  return a1;
}

_BYTE *geo::optional<esl::FontWeight>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<esl::FontWeight>::value(a1);
    *a1 = 0;
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C61F50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_1B2BF1A7C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<int,std::allocator<int>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t esl::QuartzColor::colorSpace@<X0>(CGColorRef *this@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(*this + 6))(this);
  if ((result & 1) == 0)
  {
    *a2 = 0;
    return result;
  }

  ColorSpace = CGColorGetColorSpace(this[2]);
  v12 = &unk_1F29E1230;
  if (ColorSpace)
  {
    v6 = ColorSpace;
    CFRetain(ColorSpace);
    v13 = v6;
    Name = CGColorSpaceGetName(v6);
    v8 = Name;
    v10 = &unk_1F29E1668;
    if (Name)
    {
      CFRetain(Name);
      cf1 = v8;
      if (CFEqual(v8, *MEMORY[0x1E695F1C0]))
      {
        v9 = 513;
LABEL_18:
        *a2 = v9;
        goto LABEL_19;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F1B0]))
      {
        v9 = 1;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F138]))
      {
        v9 = 257;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F0B8]))
      {
        v9 = 769;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F0B0]))
      {
        v9 = 1025;
        goto LABEL_18;
      }
    }

    else
    {
      cf1 = 0;
    }

    *a2 = 0;
LABEL_19:
    geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v10);
    return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v12);
  }

  v13 = 0;
  *a2 = 0;
  return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v12);
}

void sub_1B2BF1D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va1);
  _Unwind_Resume(a1);
}

const CGFloat *esl::QuartzColor::sRGBComponents@<X0>(CGColorRef *this@<X0>, uint64_t a2@<X8>)
{
  result = CGColorGetComponents(this[2]);
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  v5 = result;
  v6 = 1.0;
  if ((*(*this + 5))(this) == 4)
  {
    v6 = v5[1].f64[1];
  }

  (*(*this + 2))(v44, this);
  v7 = v44[0];
  *a2 = 0;
  if (v7 == 1)
  {
    v8 = *geo::optional<geo::ColorSpace>::value(v44);
    if (v8 <= 1)
    {
      if (v8)
      {
        v20 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v20;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDisplayRGBGammaCorrection, &v41);
        v45.i32[1] = v21;
        v46 = v22;
        v47 = v23;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v24;
        v17 = v25;
        v19 = v26;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v35 = v5[1].f64[0];
        v45 = vcvt_f32_f64(*v5);
        v46 = v35;
        v47 = v6;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v41, &v45);
        v15 = v36;
        v17 = v37;
        v19 = v38;
        if (*a2 == 1)
        {
LABEL_20:
          geo::optional<float>::value(a2);
LABEL_22:
          *(a2 + 4) = v13;
          *(a2 + 8) = v15;
          *(a2 + 12) = v17;
          *(a2 + 16) = v19;
          return geo::optional<geo::ColorSpace>::~optional(v44);
        }
      }

LABEL_21:
      *a2 = 1;
      goto LABEL_22;
    }

    switch(v8)
    {
      case 2u:
        v40 = *v5;
        v27 = v5[1].f64[0];
        if (*a2 == 1)
        {
          geo::optional<float>::value(a2);
        }

        else
        {
          *a2 = 1;
        }

        *(a2 + 4) = vcvt_f32_f64(v40);
        v39 = v27;
        *(a2 + 12) = v39;
        *(a2 + 16) = v6;
        return geo::optional<geo::ColorSpace>::~optional(v44);
      case 3u:
        v28 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v28;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDisplayP3GammaCorrection, &v41);
        v45.i32[1] = v29;
        v46 = v30;
        v47 = v31;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v32;
        v17 = v33;
        v19 = v34;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      case 4u:
        v9 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v9;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDCI_P3GammaCorrection, &v41);
        v45.i32[1] = v10;
        v46 = v11;
        v47 = v12;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v14;
        v17 = v16;
        v19 = v18;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
    }
  }

  return geo::optional<geo::ColorSpace>::~optional(v44);
}

void sub_1B2BF206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15)
{
  geo::optional<geo::Color<float,4,(geo::ColorSpace)2>>::~optional(v15);
  geo::optional<geo::ColorSpace>::~optional(&a15);
  _Unwind_Resume(a1);
}

_BYTE *geo::optional<geo::ColorSpace>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 1;
}

size_t esl::QuartzColor::numberOfComponents(CGColorRef *this)
{
  NumberOfComponents = CGColorGetNumberOfComponents(this[2]);
  if (NumberOfComponents)
  {
    return NumberOfComponents - 1;
  }

  else
  {
    return 0;
  }
}