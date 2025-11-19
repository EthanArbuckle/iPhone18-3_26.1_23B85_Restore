@interface VKTrafficFeature
+ (id)newTrafficFeatureForEnrouteNotice:(id)a3 onRoute:(id)a4;
+ (id)stringForFeatureType:(int64_t)a3;
+ (id)stringForNavState:(int64_t)a3;
- ($1AB5FA073B851C12C2339EC22442E995)position;
- (BOOL)isEqual:(id)a3;
- (GEOFeatureStyleAttributes)styleAttributes;
- (Mercator3<double>)mercatorPoint;
- (VKTrafficFeature)initWithEnrouteNotice:(id)a3 onRoute:(id)a4;
- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 direction:(double)a6 routeOffset:(PolylineCoordinate)a7 routeOffsetInMeters:(double)a8;
- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 onRoute:(id)a6;
- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (vector<GeoCodecsFeatureStylePair,)attributes;
- (void)populateDebugNode:(void *)a3;
- (void)updateNavigationStateForRouteUserOffset:(const PolylineCoordinate *)a3;
@end

@implementation VKTrafficFeature

- (Mercator3<double>)mercatorPoint
{
  x = self->_worldPoint.x;
  y = self->_worldPoint.y;
  z = self->_worldPoint.z;
  result._e[2] = z;
  result._e[1] = y;
  result._e[0] = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 12) = 0xBF80000000000000;
  *(self + 13) = 0xBF80000000000000;
  *(self + 153) = 0;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)position
{
  latitude = self->_position.latitude;
  longitude = self->_position.longitude;
  altitude = self->_position.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)populateDebugNode:(void *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v17, "Identifer");
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v6 = [(NSString *)uniqueIdentifier UTF8String];
  }

  else
  {
    v6 = "";
  }

  gdc::DebugTreeValue::DebugTreeValue(v14, v6);
  gdc::DebugTreeNode::addProperty(a3, &v17, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::string::basic_string[abi:nn200100]<0>(&v17, "Type");
  v7 = [VKTrafficFeature stringForFeatureType:self->_trafficFeatureType];
  v8 = v7;
  gdc::DebugTreeValue::DebugTreeValue(v11, [v7 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v17, v11);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::string::basic_string[abi:nn200100]<0>(&v10, "RouteOffset");
  gdc::DebugTreeValue::DebugTreeValue(&v17, self->_routeOffset.index);
  gdc::DebugTreeValue::DebugTreeValue(&v19, self->_routeOffset.offset);
  memset(v9, 0, sizeof(v9));
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v9, &v17, &v20, 2uLL);
}

- (void)updateNavigationStateForRouteUserOffset:(const PolylineCoordinate *)a3
{
  v5 = [(VKTrafficFeature *)self routeOffset];
  index = a3->index;
  if (a3->index < v5.index || (index == v5.index ? (v7 = a3->offset <= v5.offset) : (v7 = 0), v7))
  {
    v9 = self->_approachingRouteOffset.index;
    if ((v9 != *MEMORY[0x1E69A1918] || vabds_f32(self->_approachingRouteOffset.offset, *(MEMORY[0x1E69A1918] + 4)) >= 0.00000011921) && (index > v9 || index == v9 && a3->offset > self->_approachingRouteOffset.offset))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 4;
  }

  self->_state = v8;
}

- (vector<GeoCodecsFeatureStylePair,)attributes
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v177 = retstr + 1;
  v182 = retstr + 1;
  v5 = mdm::zone_mallocator::instance(self);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v5, 1);
  *v6 = 0x300000005;
  v7 = v6 + 1;
  v8 = retstr->var1 - retstr->var0;
  v9 = (v6 - v8);
  memcpy(v6 - v8, retstr->var0, v8);
  var0 = retstr->var0;
  retstr->var0 = v9;
  retstr->var1 = v7;
  var2 = retstr->var2;
  retstr->var2 = v7;
  v180 = var0;
  v181 = var2;
  v178 = var0;
  v179 = var0;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
  retstr->var1 = v7;
  v12 = self;
  if ([(VKTrafficFeature *)self navigationState])
  {
    v13 = self;
    v14 = [(VKTrafficFeature *)self navigationState];
    if (v14 > 4)
    {
      v15 = -4294901751;
    }

    else
    {
      v15 = qword_1B3418138[v14];
    }

    var1 = retstr->var1;
    v16 = retstr->var2;
    if (var1 >= v16)
    {
      v19 = var1 - retstr->var0;
      if ((v19 + 1) >> 61)
      {
        goto LABEL_176;
      }

      v20 = v16 - retstr->var0;
      v21 = v20 >> 2;
      if (v20 >> 2 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      v182 = v177;
      if (v22)
      {
        v23 = mdm::zone_mallocator::instance(v14);
        v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v23, v22);
      }

      else
      {
        v24 = 0;
      }

      v26 = &v24[8 * v22];
      v25 = &v24[8 * v19];
      *v25 = v15;
      v18 = (v25 + 1);
      v27 = retstr->var1 - retstr->var0;
      v9 = (v25 - v27);
      memcpy(v25 - v27, retstr->var0, v27);
      v28 = retstr->var0;
      retstr->var0 = v9;
      retstr->var1 = v18;
      v29 = retstr->var2;
      retstr->var2 = v26;
      v180 = v28;
      v181 = v29;
      v178 = v28;
      v179 = v28;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
    }

    else
    {
      *var1 = v15;
      v18 = var1 + 1;
    }

    v12 = v13;
    retstr->var1 = v18;
  }

  trafficFeatureType = v12->_trafficFeatureType;
  if (trafficFeatureType <= 2)
  {
    if (trafficFeatureType != 1)
    {
      if (trafficFeatureType != 2)
      {
        goto LABEL_160;
      }

      v176 = v12;
      v9 = v12;
      v31 = [(GeoCodecsFeatureStylePair *)v9 type];
      if (v31 >= 3)
      {
        v32 = -4294901682;
      }

      else
      {
        v32 = ((v31 << 32) | 0x10008) + 70;
      }

      v34 = retstr->var1;
      v33 = retstr->var2;
      if (v34 >= v33)
      {
        v75 = v34 - retstr->var0;
        if ((v75 + 1) >> 61)
        {
          goto LABEL_176;
        }

        v76 = v33 - retstr->var0;
        v77 = v76 >> 2;
        if (v76 >> 2 <= (v75 + 1))
        {
          v77 = v75 + 1;
        }

        if (v76 >= 0x7FFFFFFFFFFFFFF8)
        {
          v78 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v77;
        }

        v182 = v177;
        if (v78)
        {
          v79 = mdm::zone_mallocator::instance(v31);
          v80 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v79, v78);
        }

        else
        {
          v80 = 0;
        }

        v105 = &v80[8 * v78];
        v104 = &v80[8 * v75];
        *v104 = v32;
        v35 = (v104 + 1);
        v106 = retstr->var1 - retstr->var0;
        v107 = (v104 - v106);
        memcpy(v104 - v106, retstr->var0, v106);
        v108 = retstr->var0;
        retstr->var0 = v107;
        retstr->var1 = v35;
        v109 = retstr->var2;
        retstr->var2 = v105;
        v180 = v108;
        v181 = v109;
        v178 = v108;
        v179 = v108;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
      }

      else
      {
        *v34 = v32;
        v35 = v34 + 1;
      }

      retstr->var1 = v35;
      if (![(GeoCodecsFeatureStylePair *)v9 hasCountryCode])
      {
        goto LABEL_159;
      }

      v110 = [(GeoCodecsFeatureStylePair *)v9 countryCode];
      v111 = v110;
      v67 = retstr->var1;
      v112 = retstr->var2;
      if (v67 >= v112)
      {
        v113 = v67 - retstr->var0;
        if ((v113 + 1) >> 61)
        {
          goto LABEL_176;
        }

        v114 = v112 - retstr->var0;
        v115 = v114 >> 2;
        if (v114 >> 2 <= (v113 + 1))
        {
          v115 = v113 + 1;
        }

        if (v114 >= 0x7FFFFFFFFFFFFFF8)
        {
          v116 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v116 = v115;
        }

        v182 = v177;
        if (v116)
        {
LABEL_108:
          v117 = mdm::zone_mallocator::instance(v110);
          v118 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v117, v116);
LABEL_156:
          v132 = &v118[8 * v113];
          v133 = &v118[8 * v116];
          v134 = (v111 << 32) | 4;
LABEL_157:
          *v132 = v134;
          v151 = (v132 + 1);
          v154 = retstr->var1 - retstr->var0;
          v155 = (v132 - v154);
          memcpy(v132 - v154, retstr->var0, v154);
          v156 = retstr->var0;
          retstr->var0 = v155;
          retstr->var1 = v151;
          v157 = retstr->var2;
          retstr->var2 = v133;
          v180 = v156;
          v181 = v157;
          v178 = v156;
          v179 = v156;
          std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
          goto LABEL_158;
        }

LABEL_155:
        v118 = 0;
        goto LABEL_156;
      }

LABEL_146:
      v68 = (v111 << 32) | 4;
      goto LABEL_147;
    }

    v176 = v12;
    v38 = v12;
    v9 = v38;
    v40 = retstr->var1;
    v39 = retstr->var2;
    if (v40 >= v39)
    {
      v69 = v40 - retstr->var0;
      if ((v69 + 1) >> 61)
      {
        goto LABEL_176;
      }

      v70 = v39 - retstr->var0;
      v71 = v70 >> 2;
      if (v70 >> 2 <= (v69 + 1))
      {
        v71 = v69 + 1;
      }

      if (v70 >= 0x7FFFFFFFFFFFFFF8)
      {
        v72 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = v71;
      }

      v182 = v177;
      if (v72)
      {
        v73 = mdm::zone_mallocator::instance(v38);
        v74 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v73, v72);
      }

      else
      {
        v74 = 0;
      }

      v96 = &v74[8 * v72];
      v95 = &v74[8 * v69];
      *v95 = 0xF800000006;
      v41 = v95 + 1;
      v97 = retstr->var1 - retstr->var0;
      v98 = (v95 - v97);
      memcpy(v95 - v97, retstr->var0, v97);
      v99 = retstr->var0;
      retstr->var0 = v98;
      retstr->var1 = v41;
      v100 = retstr->var2;
      retstr->var2 = v96;
      v180 = v99;
      v181 = v100;
      v178 = v99;
      v179 = v99;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
    }

    else
    {
      *v40 = 0xF800000006;
      v41 = v40 + 1;
    }

    retstr->var1 = v41;
    v101 = [(GeoCodecsFeatureStylePair *)v9 type];
    v102 = [(GeoCodecsFeatureStylePair *)v9 isAboveSpeedThreshold];
    if (v101 <= 2)
    {
      switch(v101)
      {
        case 0:
          v103 = 65602;
          goto LABEL_132;
        case 1:
          if (v102)
          {
            v103 = 0x100010042;
          }

          else
          {
            v103 = 0x200010042;
          }

LABEL_132:
          v136 = retstr->var1;
          v135 = retstr->var2;
          if (v136 >= v135)
          {
            v138 = v136 - retstr->var0;
            if ((v138 + 1) >> 61)
            {
              goto LABEL_176;
            }

            v139 = v135 - retstr->var0;
            v140 = v139 >> 2;
            if (v139 >> 2 <= (v138 + 1))
            {
              v140 = v138 + 1;
            }

            if (v139 >= 0x7FFFFFFFFFFFFFF8)
            {
              v141 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v141 = v140;
            }

            v182 = v177;
            if (v141)
            {
              v142 = mdm::zone_mallocator::instance(v102);
              v143 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v142, v141);
            }

            else
            {
              v143 = 0;
            }

            v145 = &v143[8 * v141];
            v144 = &v143[8 * v138];
            *v144 = v103;
            v137 = (v144 + 1);
            v146 = retstr->var1 - retstr->var0;
            v147 = (v144 - v146);
            memcpy(v144 - v146, retstr->var0, v146);
            v148 = retstr->var0;
            retstr->var0 = v147;
            retstr->var1 = v137;
            v149 = retstr->var2;
            retstr->var2 = v145;
            v180 = v148;
            v181 = v149;
            v178 = v148;
            v179 = v148;
            std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
          }

          else
          {
            *v136 = v103;
            v137 = v136 + 1;
          }

          retstr->var1 = v137;
          if (![(GeoCodecsFeatureStylePair *)v9 hasCountryCode])
          {
            goto LABEL_159;
          }

          v110 = [(GeoCodecsFeatureStylePair *)v9 countryCode];
          v111 = v110;
          v67 = retstr->var1;
          v150 = retstr->var2;
          if (v67 >= v150)
          {
            v113 = v67 - retstr->var0;
            if ((v113 + 1) >> 61)
            {
              goto LABEL_176;
            }

            v152 = v150 - retstr->var0;
            v153 = v152 >> 2;
            if (v152 >> 2 <= (v113 + 1))
            {
              v153 = v113 + 1;
            }

            if (v152 >= 0x7FFFFFFFFFFFFFF8)
            {
              v116 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v116 = v153;
            }

            v182 = v177;
            if (v116)
            {
              goto LABEL_108;
            }

            goto LABEL_155;
          }

          goto LABEL_146;
        case 2:
          v103 = 0x300010042;
          goto LABEL_132;
      }
    }

    else
    {
      if (v101 <= 4)
      {
        if (v101 == 3)
        {
          v103 = 0x400010042;
        }

        else
        {
          v103 = 0x500010042;
        }

        goto LABEL_132;
      }

      if (v101 == 5)
      {
        v103 = 0x600010042;
        goto LABEL_132;
      }

      if (v101 == 6)
      {
        v103 = 0x700010042;
        goto LABEL_132;
      }
    }

    v103 = -4294901694;
    goto LABEL_132;
  }

  if (trafficFeatureType == 3)
  {
    v176 = v12;
    v9 = v12;
    for (i = 0; ; ++i)
    {
      v43 = [(GeoCodecsFeatureStylePair *)v9 _originalStyleAttributes];
      v44 = [v43 attributesCount];

      if (i >= v44)
      {
        break;
      }

      v46 = [(GeoCodecsFeatureStylePair *)v9 _originalStyleAttributes];
      v47 = [v46 attributeAtIndex:i];

      v48 = [v47 key];
      v49 = [v47 value];
      v50 = v49;
      v52 = retstr->var1;
      v51 = retstr->var2;
      if (v52 >= v51)
      {
        v54 = v52 - retstr->var0;
        if ((v54 + 1) >> 61)
        {
          goto LABEL_176;
        }

        v55 = v51 - retstr->var0;
        v56 = v55 >> 2;
        if (v55 >> 2 <= (v54 + 1))
        {
          v56 = v54 + 1;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFF8)
        {
          v57 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v56;
        }

        v182 = v177;
        if (v57)
        {
          v58 = mdm::zone_mallocator::instance(v49);
          v59 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v58, v57);
        }

        else
        {
          v59 = 0;
        }

        v60 = &v59[8 * v54];
        v61 = &v59[8 * v57];
        *v60 = (v48 | (v50 << 32));
        v53 = v60 + 1;
        v62 = retstr->var1 - retstr->var0;
        v63 = (v60 - v62);
        memcpy(v60 - v62, retstr->var0, v62);
        v64 = retstr->var0;
        retstr->var0 = v63;
        retstr->var1 = v53;
        v65 = retstr->var2;
        retstr->var2 = v61;
        v180 = v64;
        v181 = v65;
        v178 = v64;
        v179 = v64;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
      }

      else
      {
        *v52 = (v48 | (v49 << 32));
        v53 = v52 + 1;
      }

      retstr->var1 = v53;
    }

    v67 = retstr->var1;
    v66 = retstr->var2;
    if (v67 >= v66)
    {
      v89 = v67 - retstr->var0;
      if ((v89 + 1) >> 61)
      {
        goto LABEL_176;
      }

      v90 = v66 - retstr->var0;
      v91 = v90 >> 2;
      if (v90 >> 2 <= (v89 + 1))
      {
        v91 = v89 + 1;
      }

      if (v90 >= 0x7FFFFFFFFFFFFFF8)
      {
        v92 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v92 = v91;
      }

      v182 = v177;
      if (v92)
      {
        v93 = mdm::zone_mallocator::instance(v45);
        v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v93, v92);
      }

      else
      {
        v94 = 0;
      }

      v132 = &v94[8 * v89];
      v133 = &v94[8 * v92];
      v134 = 0x19C00000006;
      goto LABEL_157;
    }

    v68 = 0x19C00000006;
  }

  else
  {
    if (trafficFeatureType != 4)
    {
      goto LABEL_160;
    }

    v176 = v12;
    v9 = v12;
    v36 = [(GeoCodecsFeatureStylePair *)v9 type];
    if (v36 >= 0xF)
    {
      v37 = v36;
    }

    else
    {
      v37 = dword_1B34180F8[v36];
    }

    v82 = retstr->var1;
    v81 = retstr->var2;
    if (v82 >= v81)
    {
      v83 = v82 - retstr->var0;
      if ((v83 + 1) >> 61)
      {
        goto LABEL_176;
      }

      v84 = v81 - retstr->var0;
      v85 = v84 >> 2;
      if (v84 >> 2 <= (v83 + 1))
      {
        v85 = v83 + 1;
      }

      if (v84 >= 0x7FFFFFFFFFFFFFF8)
      {
        v86 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v86 = v85;
      }

      v182 = v177;
      if (v86)
      {
        v87 = mdm::zone_mallocator::instance(v36);
        v88 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v87, v86);
      }

      else
      {
        v88 = 0;
      }

      v120 = &v88[8 * v86];
      v119 = &v88[8 * v83];
      *v119 = (v37 << 32) | 0x10008;
      v67 = (v119 + 1);
      v121 = retstr->var1 - retstr->var0;
      v122 = (v119 - v121);
      memcpy(v119 - v121, retstr->var0, v121);
      v123 = retstr->var0;
      retstr->var0 = v122;
      retstr->var1 = v67;
      v124 = retstr->var2;
      retstr->var2 = v120;
      v180 = v123;
      v181 = v124;
      v178 = v123;
      v179 = v123;
      v36 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
    }

    else
    {
      *v82 = ((v37 << 32) | 0x10008);
      v67 = v82 + 1;
    }

    retstr->var1 = v67;
    v125 = retstr->var2;
    if (v67 >= v125)
    {
      v126 = v67 - retstr->var0;
      if ((v126 + 1) >> 61)
      {
        goto LABEL_176;
      }

      v127 = v125 - retstr->var0;
      v128 = v127 >> 2;
      if (v127 >> 2 <= (v126 + 1))
      {
        v128 = v126 + 1;
      }

      if (v127 >= 0x7FFFFFFFFFFFFFF8)
      {
        v129 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v129 = v128;
      }

      v182 = v177;
      if (v129)
      {
        v130 = mdm::zone_mallocator::instance(v36);
        v131 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v130, v129);
      }

      else
      {
        v131 = 0;
      }

      v132 = &v131[8 * v126];
      v133 = &v131[8 * v129];
      v134 = 0x30001005BLL;
      goto LABEL_157;
    }

    v68 = 0x30001005BLL;
  }

LABEL_147:
  *v67 = v68;
  v151 = v67 + 1;
LABEL_158:
  retstr->var1 = v151;
LABEL_159:

  v12 = v176;
LABEL_160:
  result = [(VKTrafficFeature *)v12 routeLegWhen];
  if ((result & 0x100) == 0)
  {
    return result;
  }

  result = [(VKTrafficFeature *)v12 routeLegWhen];
  if ((result & 0x100) == 0)
  {
    v175 = std::__throw_bad_optional_access[abi:nn200100]();

    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](retstr);
    _Unwind_Resume(v175);
  }

  v159 = result;
  v161 = retstr->var1;
  v160 = retstr->var2;
  if (v161 >= v160)
  {
    v163 = v161 - retstr->var0;
    if (!((v163 + 1) >> 61))
    {
      v164 = v160 - retstr->var0;
      v165 = v164 >> 2;
      if (v164 >> 2 <= (v163 + 1))
      {
        v165 = v163 + 1;
      }

      if (v164 >= 0x7FFFFFFFFFFFFFF8)
      {
        v166 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v166 = v165;
      }

      v182 = v177;
      if (v166)
      {
        v167 = mdm::zone_mallocator::instance(result);
        v168 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v167, v166);
      }

      else
      {
        v168 = 0;
      }

      v170 = &v168[8 * v166];
      v169 = &v168[8 * v163];
      *v169 = (((v159 << 32) | 0x10008) + 76);
      v162 = v169 + 1;
      v171 = retstr->var1 - retstr->var0;
      v172 = (v169 - v171);
      memcpy(v169 - v171, retstr->var0, v171);
      v173 = retstr->var0;
      retstr->var0 = v172;
      retstr->var1 = v162;
      v174 = retstr->var2;
      retstr->var2 = v170;
      v180 = v173;
      v181 = v174;
      v178 = v173;
      v179 = v173;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v178);
      goto LABEL_174;
    }

LABEL_176:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v161 = (((result << 32) | 0x10008) + 76);
  v162 = v161 + 1;
LABEL_174:
  retstr->var1 = v162;
  return result;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = v2;
  if (v2)
  {
    [(VKTrafficFeature *)v2 attributes];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
  [v4 replaceAttributes:? count:?];
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      uniqueIdentifier = self->_uniqueIdentifier;
      v9 = [(VKTrafficFeature *)v7 uniqueIdentifier];
      LOBYTE(uniqueIdentifier) = [(NSString *)uniqueIdentifier isEqualToString:v9];

      v6 = 0;
      if (uniqueIdentifier)
      {
        groupIdentifier = self->_groupIdentifier;
        if (groupIdentifier == [(VKTrafficFeature *)v7 groupIdentifier])
        {
          groupItemVerticalDisplayOrder = self->_groupItemVerticalDisplayOrder;
          if (groupItemVerticalDisplayOrder == [(VKTrafficFeature *)v7 groupItemVerticalDisplayOrder])
          {
            groupItemHorizontalDisplayOrder = self->_groupItemHorizontalDisplayOrder;
            if (groupItemHorizontalDisplayOrder == [(VKTrafficFeature *)v7 groupItemHorizontalDisplayOrder])
            {
              v13 = [(VKTrafficFeature *)v7 routeOffset];
              if (self->_routeOffset.index == v13 && vabds_f32(self->_routeOffset.offset, *(&v13 + 1)) < 0.00000011921)
              {
                v14 = [(VKTrafficFeature *)v7 approachingRouteOffset];
                if (self->_approachingRouteOffset.index == v14 && fabsf(self->_approachingRouteOffset.offset - *(&v14 + 1)) < 0.00000011921)
                {
                  v6 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    v6 = *&self->_worldPoint.x;
    *(v4 + 4) = *&self->_worldPoint.z;
    *(v4 + 1) = v6;
    v7 = *&self->_position.latitude;
    *(v4 + 11) = *&self->_position.altitude;
    *(v4 + 72) = v7;
    *(v4 + 2) = LODWORD(self->_minZoom);
    *(v4 + 3) = LODWORD(self->_maxZoom);
    *(v4 + 13) = self->_routeOffset;
    *(v4 + 18) = self->_trafficFeatureType;
    *(v4 + 15) = self->_state;
    *(v4 + 12) = self->_approachingRouteOffset;
    *(v4 + 14) = *&self->_approachingDistanceInMeters;
    *(v4 + 7) = *&self->_routeOffsetInMeters;
    objc_storeStrong(v4 + 16, self->_uniqueIdentifier);
    v5[10] = self->_groupIdentifier;
    v5[12] = self->_groupItemHorizontalDisplayOrder;
    v5[11] = self->_groupItemVerticalDisplayOrder;
    *(v5 + 152) = self->_shouldUpdateStyle;
  }

  return v5;
}

- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 direction:(double)a6 routeOffset:(PolylineCoordinate)a7 routeOffsetInMeters:(double)a8
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v16 = a4;
  v30.receiver = self;
  v30.super_class = VKTrafficFeature;
  v17 = [(VKTrafficFeature *)&v30 init];
  v18 = v17;
  if (v17)
  {
    v17->_shouldUpdateStyle = 0;
    v17->_trafficFeatureType = a3;
    *&v17->_minZoom = 0x42C8000000000000;
    objc_storeStrong(&v17->_uniqueIdentifier, a4);
    v18[6].index = 0;
    LOBYTE(v18[17].index) = 0;
    v18[14] = 0;
    v18[12] = *MEMORY[0x1E69A1918];
    v18[13] = a7;
    *&v18[7] = a8;
    v18[5].index = -1;
    v18[5].offset = 0.0;
    *&v18[9] = var0;
    *&v18[10] = var1;
    *&v18[11] = var2;
    v19 = tan(var0 * 0.00872664626 + 0.785398163);
    v20 = log(v19);
    v21.f64[0] = var1;
    v21.f64[1] = v20;
    __asm { FMOV            V1.2D, #0.5 }

    *&v18[2].index = vmlaq_f64(_Q1, xmmword_1B33B0700, v21);
    *&v18[4] = var2;
    *&v18[8] = a6;
    v27 = v18;
  }

  return v18;
}

- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6
{
  v24 = a5;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    [v11 pointWithAltitudeCorrectionAtRouteCoordinate:a5];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v12 distanceFromPoint:0 toPoint:a5];
    v20 = v19;
    v21 = VKTrafficFeatureDirection(&v24, v12);
  }

  else
  {
    v20 = 0.0;
    v21 = -1.0;
    v16 = -180.0;
    v18 = 1.79769313e308;
    v14 = -180.0;
  }

  v22 = [(VKTrafficFeature *)self initWithFeatureType:a3 uniqueIdentifier:v10 position:a5 direction:v14 routeOffset:v16 routeOffsetInMeters:v18, v21, v20];

  return v22;
}

- (VKTrafficFeature)initWithFeatureType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 onRoute:(id)a6
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 closestPointOnRoute:{var0, var1}];
    v22 = v15;
    [v14 distanceFromPoint:0 toPoint:v15];
    v17 = v16;
    v18 = VKTrafficFeatureDirection(&v22, v14);
    if (var2 == 1.79769313e308)
    {
      [v14 pointWithAltitudeCorrectionAtRouteCoordinate:v15];
      var2 = v19;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E69A1918];
    v17 = 0.0;
    v18 = -1.0;
  }

  v20 = [(VKTrafficFeature *)self initWithFeatureType:a3 uniqueIdentifier:v12 position:v15 direction:var0 routeOffset:var1 routeOffsetInMeters:var2, v18, v17];

  return v20;
}

- (VKTrafficFeature)initWithEnrouteNotice:(id)a3 onRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = VKTrafficFeature;
  v8 = [(VKTrafficFeature *)&v42 init];
  if (v8)
  {
    v9 = [v6 trafficSignal];
    if (v9 || ([v6 trafficCamera], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v12 = [v6 routeAnnotation];

      if (!v12)
      {
        goto LABEL_37;
      }
    }

    v8->_shouldUpdateStyle = 0;
    v10 = [v6 trafficSignal];

    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v13 = [v6 trafficCamera];

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v11 = 3;
      }
    }

    v8->_trafficFeatureType = v11;
    *&v8->_minZoom = 0x42C8000000000000;
    v8->_state = 0;
    v14 = [v6 identifier];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v14;

    if ([v6 hasGroupIdentifier])
    {
      v16 = [v6 groupIdentifier];
    }

    else
    {
      v16 = -1;
    }

    v8->_groupIdentifier = v16;
    v17 = [v6 hasGroupItemVerticalDisplayOrder];
    if (v17)
    {
      v17 = [v6 groupItemVerticalDisplayOrder];
    }

    v8->_groupItemVerticalDisplayOrder = v17;
    v18 = [v6 hasGroupItemHorizontalDisplayOrder];
    if (v18)
    {
      v18 = [v6 groupItemHorizontalDisplayOrder];
    }

    v8->_groupItemHorizontalDisplayOrder = v18;
    v19 = [v6 hasHighlightDistance];
    if (v19)
    {
      v19 = [v6 highlightDistance];
    }

    v8->_approachingDistanceInMeters = v19;
    v8->_approachingRouteOffset = *MEMORY[0x1E69A1918];
    if (v7 && v19)
    {
      v8->_approachingRouteOffset = [v7 routeCoordinateAtDistance:objc_msgSend(v6 beforeRouteCoordinate:{"routeCoordinate"), v19}];
    }

    if ([v6 hasPriority])
    {
      v20 = [v6 priority];
      if (v20 >= 0xFF)
      {
        v21 = -1;
      }

      else
      {
        v21 = v20;
      }
    }

    else
    {
      v21 = 0;
    }

    v8->_collisionPriority = v21;
    v22 = [v6 routeCoordinate];
    v8->_routeOffset = v22;
    if (v7)
    {
      [v7 pointWithAltitudeCorrectionAtRouteCoordinate:v22];
      v24 = v23;
    }

    else
    {
      v24 = 0x7FEFFFFFFFFFFFFFLL;
    }

    v25 = [v6 position];
    [v25 lat];
    v27 = v26;
    v28 = [v6 position];
    [v28 lng];
    v8->_position.latitude = v27;
    v8->_position.longitude = v29;
    *&v8->_position.altitude = v24;

    longitude = v8->_position.longitude;
    v30 = tan(v8->_position.latitude * 0.00872664626 + 0.785398163);
    v31 = log(v30);
    v32.f64[0] = longitude;
    v32.f64[1] = v31;
    __asm { FMOV            V1.2D, #0.5 }

    *&v8->_worldPoint.x = vmlaq_f64(_Q1, xmmword_1B33B0700, v32);
    *&v8->_worldPoint.z = v24;
    if (v7)
    {
      [v7 distanceFromPoint:0 toPoint:*&v8->_routeOffset];
      v8->_routeOffsetInMeters = v38;
      v39 = VKTrafficFeatureDirection(&v8->_routeOffset, v7);
    }

    else
    {
      v8->_routeOffsetInMeters = 0.0;
      v39 = -1.0;
    }

    v8->_facingAzimuth = v39;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_37:

  return v12;
}

+ (id)stringForNavState:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7B3D520[a3];
  }
}

+ (id)stringForFeatureType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7B3D4F8[a3];
  }
}

+ (id)newTrafficFeatureForEnrouteNotice:(id)a3 onRoute:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 trafficCamera];

  if (v7)
  {
    v8 = [VKTrafficCameraFeature alloc];
    v9 = [v5 trafficCamera];
    v10 = [(VKTrafficCameraFeature *)v8 initWithTrafficCamera:v9 onRoute:v6];
  }

  else
  {
    v11 = [v5 trafficSignal];

    if (v11)
    {
      v12 = [VKTrafficSignalFeature alloc];
      v9 = [v5 trafficSignal];
      v10 = [(VKTrafficSignalFeature *)v12 initWithTrafficSignal:v9 onRoute:v6];
    }

    else
    {
      v13 = [v5 routeAnnotation];

      if (!v13)
      {
        v15 = 0;
        goto LABEL_8;
      }

      v14 = [VKRouteAnnotation alloc];
      v9 = [v5 routeAnnotation];
      v10 = [(VKRouteAnnotation *)v14 initWithRouteAnnotation:v9 onRoute:v6];
    }
  }

  v15 = v10;

LABEL_8:
  return v15;
}

@end