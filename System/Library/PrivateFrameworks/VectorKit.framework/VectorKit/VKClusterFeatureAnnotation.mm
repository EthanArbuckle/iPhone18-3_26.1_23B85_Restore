@interface VKClusterFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (VKClusterFeatureAnnotation)initWithClusterNode:(void *)node clusterTree:(const void *)tree baseStyle:(const void *)style imageText:(id)text annotationText:(id)annotationText annotationLocale:(id)locale;
@end

@implementation VKClusterFeatureAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (VKClusterFeatureAnnotation)initWithClusterNode:(void *)node clusterTree:(const void *)tree baseStyle:(const void *)style imageText:(id)text annotationText:(id)annotationText annotationLocale:(id)locale
{
  v185[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  annotationTextCopy = annotationText;
  localeCopy = locale;
  v181.receiver = self;
  v181.super_class = VKClusterFeatureAnnotation;
  v169 = localeCopy;
  v17 = [(VKClusterFeatureAnnotation *)&v181 init];

  if (!v17)
  {
    goto LABEL_177;
  }

  md::LabelPoint::coordinate(&v179, node + 16);
  v18 = v179;
  v17->_coordinate = v179;
  v168 = textCopy;
  v180 = [[VKCustomFeature alloc] _initInternalFeatureWithCoordinate:*&v18, v180];
  customFeature = v17->_customFeature;
  v17->_customFeature = v180;

  pointFeature = [(VKCustomFeature *)v17->_customFeature pointFeature];
  v22 = pointFeature;
  v23 = *tree;
  v24 = *(tree + 1);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(pointFeature + 288) = node;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *(pointFeature + 288) = node;
  }

  v25 = *(pointFeature + 304);
  *(v22 + 296) = v23;
  *(v22 + 304) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  if (*(node + 68) == 1)
  {
    *(v22 + 216) = *(node + 16);
    *(v22 + 220) = 1;
  }

  v26 = *(node + 20);
  v27 = *style;
  v28 = *(style + 1);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = geo::codec::copyFeatureStyleAttributes(&v177, v27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v182 = 0;
  v183 = 0;
  v184 = 0;
  v172[1] = v185;
  v30 = mdm::zone_mallocator::instance(v29);
  v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v30, 1);
  *v31 = 0x300000005;
  v32 = v31 + 1;
  v33 = v31 - (v183 - v182);
  memcpy(v33, v182, v183 - v182);
  v34 = v182;
  v35 = v184;
  v182 = v33;
  v183 = v31 + 1;
  v184 = v31 + 1;
  v171[1] = v34;
  v172[0] = v35;
  v170 = v34;
  v171[0] = v34;
  v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
  v183 = v31 + 1;
  if (v26)
  {
    v37 = v26[21];
    if (v37 != -1)
    {
      if (v32 >= v184)
      {
        v38 = (v32 - v182) >> 3;
        if ((v38 + 1) >> 61)
        {
          goto LABEL_178;
        }

        v39 = (v184 - v182) >> 2;
        if (v39 <= v38 + 1)
        {
          v39 = v38 + 1;
        }

        if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        v172[1] = v185;
        if (v40)
        {
          v41 = mdm::zone_mallocator::instance(v36);
          v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v41, v40);
        }

        else
        {
          v42 = 0;
        }

        v43 = &v42[8 * v38];
        v44 = &v42[8 * v40];
        *v43 = (v37 << 32) | 6;
        v32 = v43 + 1;
        v45 = v43 - (v183 - v182);
        memcpy(v45, v182, v183 - v182);
        v46 = v182;
        v47 = v184;
        v182 = v45;
        v183 = v32;
        v184 = v44;
        v171[1] = v46;
        v172[0] = v47;
        v170 = v46;
        v171[0] = v46;
        v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
      }

      else
      {
        v31[1] = (v37 << 32) | 6;
        v32 = v31 + 2;
      }

      v183 = v32;
    }

    v48 = v26[23];
    if (v48 != -1)
    {
      if (v32 >= v184)
      {
        v49 = (v32 - v182) >> 3;
        if ((v49 + 1) >> 61)
        {
          goto LABEL_178;
        }

        v50 = (v184 - v182) >> 2;
        if (v50 <= v49 + 1)
        {
          v50 = v49 + 1;
        }

        if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
        {
          v51 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        v172[1] = v185;
        if (v51)
        {
          v52 = mdm::zone_mallocator::instance(v36);
          v53 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v52, v51);
        }

        else
        {
          v53 = 0;
        }

        v54 = &v53[8 * v49];
        v55 = &v53[8 * v51];
        *v54 = (v48 << 32) | 0x52;
        v32 = v54 + 1;
        v56 = v54 - (v183 - v182);
        memcpy(v56, v182, v183 - v182);
        v57 = v182;
        v58 = v184;
        v182 = v56;
        v183 = v32;
        v184 = v55;
        v171[1] = v57;
        v172[0] = v58;
        v170 = v57;
        v171[0] = v57;
        v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
      }

      else
      {
        *v32++ = (v48 << 32) | 0x52;
      }

      v183 = v32;
    }

    v59 = v26[22];
    if (v59 != -1)
    {
      if (v32 >= v184)
      {
        v60 = (v32 - v182) >> 3;
        if ((v60 + 1) >> 61)
        {
          goto LABEL_178;
        }

        v61 = (v184 - v182) >> 2;
        if (v61 <= v60 + 1)
        {
          v61 = v60 + 1;
        }

        if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v61;
        }

        v172[1] = v185;
        if (v62)
        {
          v63 = mdm::zone_mallocator::instance(v36);
          v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v63, v62);
        }

        else
        {
          v64 = 0;
        }

        v65 = &v64[8 * v60];
        v66 = &v64[8 * v62];
        *v65 = (v59 << 32) | 4;
        v32 = v65 + 1;
        v67 = v65 - (v183 - v182);
        memcpy(v67, v182, v183 - v182);
        v68 = v182;
        v69 = v184;
        v182 = v67;
        v183 = v32;
        v184 = v66;
        v171[1] = v68;
        v172[0] = v69;
        v170 = v68;
        v171[0] = v68;
        v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
      }

      else
      {
        *v32++ = (v59 << 32) | 4;
      }

      v183 = v32;
    }
  }

  if (v32 >= v184)
  {
    v71 = (v32 - v182) >> 3;
    if ((v71 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v72 = (v184 - v182) >> 2;
    if (v72 <= v71 + 1)
    {
      v72 = v71 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v73 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v73 = v72;
    }

    v172[1] = v185;
    if (v73)
    {
      v74 = mdm::zone_mallocator::instance(v36);
      v75 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v74, v73);
    }

    else
    {
      v75 = 0;
    }

    v76 = &v75[8 * v71];
    v77 = &v75[8 * v73];
    *v76 = 0x100010024;
    v70 = (v76 + 8);
    v78 = &v76[-(v183 - v182)];
    memcpy(v78, v182, v183 - v182);
    v79 = v182;
    v80 = v184;
    v182 = v78;
    v183 = v70;
    v184 = v77;
    v171[1] = v79;
    v172[0] = v80;
    v170 = v79;
    v171[0] = v79;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
  }

  else
  {
    *v32 = 0x100010024;
    v70 = v32 + 1;
  }

  v183 = v70;
  if (v70 >= v184)
  {
    v82 = (v70 - v182) >> 3;
    if ((v82 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v83 = (v184 - v182) >> 2;
    if (v83 <= v82 + 1)
    {
      v83 = v82 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v84 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v83;
    }

    v172[1] = v185;
    if (v84)
    {
      v85 = mdm::zone_mallocator::instance(v36);
      v86 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v85, v84);
    }

    else
    {
      v86 = 0;
    }

    v87 = &v86[8 * v82];
    v88 = &v86[8 * v84];
    *v87 = 0x10001001FLL;
    v81 = (v87 + 8);
    v89 = &v87[-(v183 - v182)];
    memcpy(v89, v182, v183 - v182);
    v90 = v182;
    v91 = v184;
    v182 = v89;
    v183 = v81;
    v184 = v88;
    v171[1] = v90;
    v172[0] = v91;
    v170 = v90;
    v171[0] = v90;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
  }

  else
  {
    *v70 = 0x10001001FLL;
    v81 = v70 + 1;
  }

  v183 = v81;
  if (v81 >= v184)
  {
    v93 = (v81 - v182) >> 3;
    if ((v93 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v94 = (v184 - v182) >> 2;
    if (v94 <= v93 + 1)
    {
      v94 = v93 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v95 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v95 = v94;
    }

    v172[1] = v185;
    if (v95)
    {
      v96 = mdm::zone_mallocator::instance(v36);
      v97 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v96, v95);
    }

    else
    {
      v97 = 0;
    }

    v98 = &v97[8 * v93];
    v99 = &v97[8 * v95];
    *v98 = 0x10001002DLL;
    v92 = (v98 + 8);
    v100 = &v98[-(v183 - v182)];
    memcpy(v100, v182, v183 - v182);
    v101 = v182;
    v102 = v184;
    v182 = v100;
    v183 = v92;
    v184 = v99;
    v171[1] = v101;
    v172[0] = v102;
    v170 = v101;
    v171[0] = v101;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
  }

  else
  {
    *v81 = 0x10001002DLL;
    v92 = v81 + 1;
  }

  v183 = v92;
  v103 = *(node + 44);
  if (v103 >= 6)
  {
    v104 = 6;
  }

  else
  {
    v104 = 0x50403020000uLL >> (8 * v103);
  }

  if (v92 >= v184)
  {
    v106 = (v92 - v182) >> 3;
    if ((v106 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v107 = (v184 - v182) >> 2;
    if (v107 <= v106 + 1)
    {
      v107 = v106 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v108 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v108 = v107;
    }

    v172[1] = v185;
    if (v108)
    {
      v109 = mdm::zone_mallocator::instance(v36);
      v110 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v109, v108);
      v111 = annotationTextCopy;
    }

    else
    {
      v111 = annotationTextCopy;
      v110 = 0;
    }

    v113 = &v110[8 * v108];
    v112 = &v110[8 * v106];
    *v112 = ((v104 << 32) | 0x1002E) + 46;
    v105 = (v112 + 8);
    v114 = &v112[-(v183 - v182)];
    memcpy(v114, v182, v183 - v182);
    v115 = v182;
    v116 = v184;
    v182 = v114;
    v183 = v105;
    v184 = v113;
    v171[1] = v115;
    v172[0] = v116;
    v170 = v115;
    v171[0] = v115;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
    annotationTextCopy = v111;
  }

  else
  {
    *v92 = ((v104 << 32) | 0x1002E) + 46;
    v105 = v92 + 1;
  }

  v183 = v105;
  v117 = *(node + 181);
  if (v105 >= v184)
  {
    v119 = (v105 - v182) >> 3;
    if ((v119 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v120 = (v184 - v182) >> 2;
    if (v120 <= v119 + 1)
    {
      v120 = v119 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v121 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v121 = v120;
    }

    v172[1] = v185;
    if (v121)
    {
      v122 = mdm::zone_mallocator::instance(v36);
      v123 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v122, v121);
      v124 = annotationTextCopy;
    }

    else
    {
      v124 = annotationTextCopy;
      v123 = 0;
    }

    v126 = &v123[8 * v121];
    v125 = &v123[8 * v119];
    *v125 = (v117 << 32) | 0x1002E;
    v118 = v125 + 1;
    v127 = v125 - (v183 - v182);
    memcpy(v127, v182, v183 - v182);
    v128 = v182;
    v129 = v184;
    v182 = v127;
    v183 = v118;
    v184 = v126;
    v171[1] = v128;
    v172[0] = v129;
    v170 = v128;
    v171[0] = v128;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
    annotationTextCopy = v124;
  }

  else
  {
    *v105 = (v117 << 32) | 0x1002E;
    v118 = v105 + 1;
  }

  v183 = v118;
  if (v118 >= v184)
  {
    v131 = (v118 - v182) >> 3;
    if ((v131 + 1) >> 61)
    {
      goto LABEL_178;
    }

    v132 = (v184 - v182) >> 2;
    if (v132 <= v131 + 1)
    {
      v132 = v131 + 1;
    }

    if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
    {
      v133 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v133 = v132;
    }

    v172[1] = v185;
    if (v133)
    {
      v134 = mdm::zone_mallocator::instance(v36);
      v135 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v134, v133);
    }

    else
    {
      v135 = 0;
    }

    v136 = &v135[8 * v131];
    v137 = &v135[8 * v133];
    *v136 = 65583;
    v130 = v136 + 8;
    v138 = &v136[-(v183 - v182)];
    memcpy(v138, v182, v183 - v182);
    v139 = v182;
    v140 = v184;
    v182 = v138;
    v183 = v130;
    v184 = v137;
    v171[1] = v139;
    v172[0] = v140;
    v170 = v139;
    v171[0] = v139;
    v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
  }

  else
  {
    *v118 = 65583;
    v130 = (v118 + 1);
  }

  v183 = v130;
  if (v130 >= v184)
  {
    v142 = (v130 - v182) >> 3;
    if (!((v142 + 1) >> 61))
    {
      v143 = (v184 - v182) >> 2;
      if (v143 <= v142 + 1)
      {
        v143 = v142 + 1;
      }

      if ((v184 - v182) >= 0x7FFFFFFFFFFFFFF8)
      {
        v144 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v144 = v143;
      }

      v172[1] = v185;
      if (v144)
      {
        v145 = mdm::zone_mallocator::instance(v36);
        textCopy = v168;
        v146 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v145, v144);
      }

      else
      {
        v146 = 0;
        textCopy = v168;
      }

      v147 = &v146[8 * v142];
      v148 = &v146[8 * v144];
      *v147 = 65584;
      v141 = (v147 + 8);
      v149 = &v147[-(v183 - v182)];
      memcpy(v149, v182, v183 - v182);
      v150 = v182;
      v151 = v184;
      v182 = v149;
      v183 = v141;
      v184 = v148;
      v171[1] = v150;
      v172[0] = v151;
      v170 = v150;
      v171[0] = v150;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v170);
      goto LABEL_145;
    }

LABEL_178:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v130 = 65584;
  v141 = (v130 + 8);
  textCopy = v168;
LABEL_145:
  v183 = v141;
  v152 = v177;
  FeatureStyleAttributes::replaceAttributes(v177, v182, (v141 - v182) >> 3);
  v153 = v178;
  if (v178)
  {
    atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v154 = *(v22 + 40);
  *(v22 + 32) = v152;
  *(v22 + 40) = v153;
  if (v154)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v154);
  }

  if (v153)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v153);
  }

  *(v22 + 72) = *(node + 2);
  *(v22 + 80) = *(node + 3);
  if (*(node + 112) == 1)
  {
    *(v22 + 237) = 1;
    *(v22 + 256) = *(node + 13);
  }

  v155 = textCopy;
  localeCopy = v169;
  md::LabelExternalFeature::addTextForZoom(v22, 0, 3, [textCopy UTF8String], 0);
  if (v26)
  {
    *(v22 + 84) = v26[24];
    v156 = (*(*v26 + 88))(v26);
    feature = [v156 feature];
    pointFeature2 = [feature pointFeature];

    if (pointFeature2)
    {
      LOWORD(v170) = 0;
      v176 = 0u;
      *__p = 0u;
      *v174 = 0u;
      v173 = 0u;
      *v171 = 0u;
      *v172 = 0u;
      v160 = *(pointFeature2 + 48);
      v159 = *(pointFeature2 + 56);
      if (v160 != v159)
      {
        while (*(v160 + 1))
        {
          v160 += 104;
          if (v160 == v159)
          {
            goto LABEL_167;
          }
        }

        LOWORD(v170) = *v160;
        std::string::operator=(v171, (v160 + 8));
        std::string::operator=(&v172[1], (v160 + 32));
        std::string::operator=(v174, (v160 + 56));
        std::string::operator=(&__p[1], (v160 + 80));
        if (SHIBYTE(v172[0]) >= 0)
        {
          v161 = v171;
        }

        else
        {
          v161 = v171[0];
        }

        if (v173 >= 0)
        {
          v162 = &v172[1];
        }

        else
        {
          v162 = v172[1];
        }

        md::LabelExternalFeature::addTextForZoom(v22, 0, 0, v161, v162);
        if (SHIBYTE(v176) < 0)
        {
          operator delete(__p[1]);
        }
      }

LABEL_167:
      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v174[0]);
      }

      if (SHIBYTE(v173) < 0)
      {
        operator delete(v172[1]);
      }

      if (SHIBYTE(v172[0]) < 0)
      {
        operator delete(v171[0]);
      }
    }
  }

  if ([annotationTextCopy length])
  {
    v163 = annotationTextCopy;
    uTF8String = [annotationTextCopy UTF8String];
    v165 = v169;
    md::LabelExternalFeature::addTextForZoom(v22, 0, 2, uTF8String, [v169 UTF8String]);
  }

  v166 = v17;
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v182);
  if (v178)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v178);
  }

LABEL_177:

  return v17;
}

@end