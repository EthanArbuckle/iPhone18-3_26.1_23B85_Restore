@interface PFTimeZoneLookup
- (BOOL)loadOrCreateIndex;
- (CLLocationCoordinate2D)anyCoordinateForTimeZoneName:(id)name;
- (char)magic;
- (id)timeZoneNameForCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation PFTimeZoneLookup

- (BOOL)loadOrCreateIndex
{
  v4.receiver = self;
  v4.super_class = PFTimeZoneLookup;
  [(PFCachingArchiveIndex *)&v4 loadOrCreateIndex];
  return self->_rtree != 0;
}

- (char)magic
{
  if (!self)
  {
    return 0;
  }

  v1 = [PFTimeZoneLookup magic]::buffer;
  snprintf(-[PFTimeZoneLookup magic]::buffer, 0x50uLL, "%s%s%02x%08x", "PFTimeZone", "01", 4, [self architectureHash]);
  return v1;
}

- (CLLocationCoordinate2D)anyCoordinateForTimeZoneName:(id)name
{
  v69 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (![(PFTimeZoneLookup *)self loadOrCreateIndex])
  {
    v61 = *MEMORY[0x1E6985CC0];
    goto LABEL_82;
  }

  if (([(__CFString *)nameCopy isEqualToString:@"US/Pacific"]& 1) != 0)
  {
    v5 = @"America/Los_Angeles";
  }

  else
  {
    if (![(__CFString *)nameCopy isEqualToString:@"GMT"])
    {
      goto LABEL_10;
    }

    v5 = @"Europe/London";
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Overriding input timeZone %@ with %@", buf, 0x16u);
  }

  nameCopy = v5;
LABEL_10:
  v6 = nameCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](nameCopy, "UTF8String"));
  timezones = self->_timezones;
  v10 = timezones[1];
  v9 = (timezones + 1);
  v8 = v10;
  v11 = v9 - buf;
  if (v10 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + v8;
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = buf - &v65;
  }

  v14 = v13 + v12;
  if (v12 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = buf - &v66;
  }

  v16 = v15 + v12;
  v65 = v14;
  v66 = v16;
  v17 = *(v9 + 1);
  if (v17)
  {
    v18 = v16 == 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
LABEL_67:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  while (1)
  {
    v19 = v16 + 32 * v17;
    v20 = &v65 + v14;
    if (v14 == 1)
    {
      v20 = 0;
    }

    if (v19 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = &buf[v19 - 8];
    }

    if (v20 == v21)
    {
      goto LABEL_79;
    }

    if (v14 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v65 - &v62;
    }

    v23 = v22 + v14;
    v62 = v23;
    if (v23 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = &__p[-1] + v23;
    }

    if (v24[8])
    {
      v27 = v24 - &v66 + 9;
    }

    else
    {
      v25 = *(v24 + 3);
      v26 = v24 + 24 - &v66;
      if (v25 == 1)
      {
        v26 = 0;
      }

      v27 = v26 + v25;
    }

    if (v27 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = &buf[v27 - 8];
    }

    std::string::basic_string[abi:ne200100]<0>(buf, v28);
    if ((v64 & 0x80u) == 0)
    {
      v29 = v64;
    }

    else
    {
      v29 = __p[1];
    }

    v30 = buf[23];
    v31 = buf[23];
    if ((buf[23] & 0x80u) != 0)
    {
      v30 = *&buf[8];
    }

    if (v29 != v30)
    {
      v34 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_57:
      operator delete(*buf);
      goto LABEL_58;
    }

    if ((v64 & 0x80u) == 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if ((buf[23] & 0x80u) == 0)
    {
      v33 = buf;
    }

    else
    {
      v33 = *buf;
    }

    v34 = memcmp(v32, v33, v29) == 0;
    if (v31 < 0)
    {
      goto LABEL_57;
    }

LABEL_58:
    if (v34)
    {
      break;
    }

    if (v65 == 1)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    v14 = v65 + 32;
    v35 = self->_timezones;
    v38 = v35[1];
    v37 = (v35 + 1);
    v36 = v38;
    v39 = v37 - buf;
    if (v38 == 1)
    {
      v39 = 0;
    }

    v40 = v39 + v36;
    if (v40 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = buf - &v66;
    }

    v16 = v41 + v40;
    v65 += 32;
    v66 = v16;
    v17 = *(v37 + 1);
    if (v17 && v16 == 1)
    {
      goto LABEL_67;
    }
  }

  v42 = self->_timezones;
  v43 = v42[1];
  v44 = (v42 + 1) - buf;
  if (v43 == 1)
  {
    v44 = 0;
  }

  v45 = v44 + v43;
  v46 = buf - &v66;
  if (v45 == 1)
  {
    v46 = 0;
  }

  v47 = v46 + v45;
  if (v65 == 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = &v65 + v65;
  }

  if (v47 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = &buf[v47 - 8];
  }

  v50 = v48 - v49;
  if (v48 - v49 == -32)
  {
LABEL_79:
    v61 = *MEMORY[0x1E6985CC0];
    goto LABEL_80;
  }

  v61 = *MEMORY[0x1E6985CC0];
  rtree = self->_rtree;
  v56 = rtree[3];
  v54 = (rtree + 3);
  v55 = v56;
  if (v56 == 1)
  {
    v68 = 0;
    memset(buf, 0, sizeof(buf));
  }

  else
  {
    v57 = v54 - &v65 + v55;
    v65 = v57;
    memset(buf, 0, sizeof(buf));
    v68 = 0;
    v58 = &v65 - &v66;
    if (v57 == 1)
    {
      v58 = 0;
    }

    v59 = v58 + v57;
    v66 = v59;
    if (v59 == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = &buf[v59 - 8];
    }

    boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>( v60,  buf);
    boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::search_value(buf);
  }

  while (*&buf[24])
  {
    if (v50 >> 5 == v68[1].u16[0])
    {
      v61 = vcvtq_f64_f32(*v68);
      break;
    }

    v68 = (v68 + 12);
    boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::search_value(buf);
  }

  if (*buf)
  {
    operator delete(*buf);
  }

LABEL_80:
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_82:

  v52 = v61.f64[1];
  v51 = v61.f64[0];
  result.longitude = v52;
  result.latitude = v51;
  return result;
}

- (id)timeZoneNameForCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v144 = *MEMORY[0x1E69E9840];
  if (![(PFTimeZoneLookup *)self loadOrCreateIndex])
  {
    goto LABEL_8;
  }

  v146.latitude = latitude;
  v146.longitude = longitude;
  if (!CLLocationCoordinate2DIsValid(v146))
  {
    goto LABEL_8;
  }

  v6 = 0;
  v7 = latitude != 0.0;
  if (longitude != 0.0)
  {
    v7 = 1;
  }

  if (v7)
  {
    if (latitude == 40.0 && longitude == -100.0)
    {
LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }

    rtree = self->_rtree;
    v10 = latitude;
    v11 = longitude;
    *v130 = v10;
    *&v130[1] = v11;
    v131 = 1;
    v12 = rtree[3];
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      *buf = rtree;
      v137 = v130;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      __p = 0;
      v142 = 0;
      v143 = 0;
      if (rtree[1])
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*>>>(1uLL);
      }

      selfCopy = self;
      v14 = (rtree + 3) - &v132 + v12;
      v132 = v14;
      v15 = 0;
      v16 = rtree[2];
      while (1)
      {
        v17 = v14 == 1 ? 0 : &v132 + v14;
        if (v16)
        {
          v18 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v17);
          if (!v18)
          {
            *&v134 = &unk_1F2A89F30;
            boost::throw_exception<boost::bad_get>();
          }

          if (*v18)
          {
            v21 = &v18[3 * *v18 + 1];
            v22 = v18 + 1;
            v23 = v16 - 1;
            do
            {
              v25 = *v137;
              v24 = v137[1];
              v27 = *(v22 + 2);
              v26 = *(v22 + 3);
              v29 = *v22;
              v28 = *(v22 + 1);
              v30 = (v28 - v24) * (v28 - v24) + 0.0;
              if (v24 >= v28)
              {
                v30 = 0.0;
              }

              if (v24 <= v26)
              {
                v20 = v30;
              }

              else
              {
                v20 = v30 + (v24 - v26) * (v24 - v26);
              }

              if (v25 < v29)
              {
                v20 = v20 + (v29 - v25) * (v29 - v25);
              }

              if (v25 > v27)
              {
                v20 = v20 + (v25 - v27) * (v25 - v27);
              }

              if (*(v137 + 1) != (v142 - __p) >> 4 || *__p > v20)
              {
                v31 = v22[2];
                v32 = (v22 + 2) - &v133;
                if (v31 == 1)
                {
                  v32 = 0;
                }

                v33 = v32 + v31;
                *&v134 = v20;
                v34 = &v133 - v135;
                if (v33 == 1)
                {
                  v34 = 0;
                }

                v35 = v34 + v33;
                *(&v134 + 1) = v23;
                v135[0] = v35;
                if (v15 >= v140)
                {
                  v38 = v138;
                  v39 = v15 - v138;
                  v40 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v138) >> 3) + 1;
                  if (v40 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v140 - v138) >> 3) > v40)
                  {
                    v40 = 0x5555555555555556 * ((v140 - v138) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v140 - v138) >> 3) >= 0x555555555555555)
                  {
                    v41 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  if (v41)
                  {
                    if (v41 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v42 = 8 * ((v15 - v138) >> 3);
                  *v42 = v134;
                  v43 = &v135[v42 / 0xFFFFFFFFFFFFFFF8 - 2];
                  if (v35 == 1)
                  {
                    v43 = 0;
                  }

                  *(v42 + 16) = v43 + v35;
                  v37 = (v42 - v39);
                  if (v38 != v15)
                  {
                    v44 = v38 - v37;
                    v45 = v37;
                    do
                    {
                      *v45 = *v38;
                      v46 = *(v38 + 2);
                      if (v46 == 1)
                      {
                        v47 = 0;
                      }

                      else
                      {
                        v47 = v44;
                      }

                      *(v45 + 2) = v47 + v46;
                      v38 += 24;
                      v45 += 24;
                    }

                    while (v38 != v15);
                    v38 = v138;
                  }

                  v138 = v37;
                  v139 = v38;
                  v140 = 0;
                  if (v38)
                  {
                    operator delete(v38);
                  }

                  v15 = v42;
                }

                else
                {
                  *v15 = v134;
                  v36 = (v135 - (v15 + 16));
                  if (v135[0] == 1)
                  {
                    v36 = 0;
                  }

                  *(v15 + 2) = &v36[v135[0]];
                  v37 = v138;
                }

                v15 += 24;
                v139 = v15;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::branch_data_comp &,std::__wrap_iter<boost::geometry::index::detail::rtree::visitors::distance_query<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder,boost::geometry::index::detail::predicates::nearest<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>>::branch_data *>>(v37, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v37) >> 3));
              }

              v22 += 3;
            }

            while (v22 != v21);
          }
        }

        else
        {
          v48 = boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::detail::variant::get_visitor<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(v17);
          if (!v48)
          {
            *&v134 = &unk_1F2A89F30;
            boost::throw_exception<boost::bad_get>();
          }

          if (*v48)
          {
            v49 = v48 + 12 * *v48 + 8;
            v50 = (v48 + 1);
            v51 = __p;
            v52 = v142;
            v53 = v137;
            v54 = v142;
            do
            {
              v20 = v53[1] - v50[1];
              v55 = (*v53 - *v50) * (*v53 - *v50) + 0.0 + v20 * v20;
              v56 = (v54 - v51) >> 4;
              if (v56 >= *(v53 + 1))
              {
                v20 = *v51;
                if (*v51 > v55)
                {
                  if (v56 >= 2)
                  {
                    v57 = 0;
                    v58 = *(v51 + 1);
                    v59 = v51;
                    do
                    {
                      v60 = v59;
                      v59 += 2 * v57 + 2;
                      v61 = 2 * v57;
                      v57 = (2 * v57) | 1;
                      v62 = v61 + 2;
                      if (v62 < v56 && *v59 < v59[2])
                      {
                        v59 += 2;
                        v57 = v62;
                      }

                      *v60 = *v59;
                      v60[1] = v59[1];
                    }

                    while (v57 <= ((v56 - 2) >> 1));
                    if ((v54 - 16) == v59)
                    {
                      *v59 = v20;
                      *(v59 + 1) = v58;
                    }

                    else
                    {
                      *v59 = *(v54 - 16);
                      v59[1] = *(v54 - 8);
                      *(v54 - 16) = v20;
                      *(v54 - 8) = v58;
                      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::pair_first_less &,std::__wrap_iter<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*> *>>(v51, (v59 + 2), ((v59 + 2) - v51) >> 4);
                    }
                  }

                  *(v52 - 16) = v55;
                  *(v52 - 8) = v50;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::pair_first_less &,std::__wrap_iter<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*> *>>(v51, v52, (v52 - v51) >> 4);
                  v54 = v52;
                }
              }

              else
              {
                if (v54 >= v143)
                {
                  v63 = v56 + 1;
                  if ((v56 + 1) >> 60)
                  {
                    std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
                  }

                  v64 = v143 - v51;
                  if ((v143 - v51) >> 3 > v63)
                  {
                    v63 = v64 >> 3;
                  }

                  if (v64 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v65 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v65 = v63;
                  }

                  if (v65)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*>>>(v65);
                  }

                  v66 = 16 * v56;
                  *v66 = v55;
                  *(v66 + 8) = v50;
                  v54 = 16 * v56 + 16;
                  v67 = v52 - v51;
                  v68 = (16 * v56 - (v52 - v51));
                  memcpy(v68, v51, v67);
                  __p = v68;
                  v142 = v54;
                  v143 = 0;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  *v54 = v55;
                  *(v54 + 8) = v50;
                  v54 += 16;
                }

                v142 = v54;
                v51 = __p;
                v53 = v137;
                v69 = (v54 - __p) >> 4;
                if (v69 == *(v137 + 1) && v69 >= 2)
                {
                  v71 = (v69 - 2) >> 1;
                  v72 = v71;
                  do
                  {
                    v73 = v72;
                    if (v71 >= v72)
                    {
                      v74 = (2 * v72) | 1;
                      v75 = &v51[2 * v74];
                      if (2 * v73 + 2 < v69 && *v75 < v75[2])
                      {
                        v75 += 2;
                        v74 = 2 * v73 + 2;
                      }

                      v76 = &v51[2 * v73];
                      v77 = *v75;
                      v20 = *v76;
                      if (*v75 >= *v76)
                      {
                        v78 = *(v76 + 1);
                        do
                        {
                          v79 = v76;
                          v76 = v75;
                          *v79 = v77;
                          v79[1] = v75[1];
                          if (v71 < v74)
                          {
                            break;
                          }

                          v80 = 2 * v74;
                          v74 = (2 * v74) | 1;
                          v75 = &v51[2 * v74];
                          v81 = v80 + 2;
                          if (v81 < v69 && *v75 < v75[2])
                          {
                            v75 += 2;
                            v74 = v81;
                          }

                          v77 = *v75;
                        }

                        while (*v75 >= v20);
                        *v76 = v20;
                        *(v76 + 1) = v78;
                      }
                    }

                    v72 = v73 - 1;
                  }

                  while (v73);
                }

                v52 = v54;
              }

              v50 += 3;
            }

            while (v50 != v49);
            v15 = v139;
          }
        }

        v82 = v138;
        v84 = __p;
        v83 = v142;
        if (v138 == v15)
        {
          break;
        }

        if (*(v137 + 1) == (v142 - __p) >> 4)
        {
          v20 = *__p;
          if (*__p <= *v138)
          {
            break;
          }
        }

        v85 = *(v138 + 2);
        v86 = v138 + 16 - &v132;
        if (v85 == 1)
        {
          v86 = 0;
        }

        v14 = v86 + v85;
        v132 = v14;
        v16 = *(v138 + 1);
        if (v15 - v138 >= 25)
        {
          v87 = 0;
          v88 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v138) >> 3);
          v89 = *v138;
          v90 = v138 + 16 - v135;
          if (v85 == 1)
          {
            v90 = 0;
          }

          v135[0] = v90 + v85;
          v134 = v89;
          v91 = v138;
          do
          {
            v92 = v91;
            v91 += 3 * v87 + 3;
            v93 = 2 * v87;
            v87 = (2 * v87) | 1;
            v94 = v93 + 2;
            if (v94 < v88)
            {
              v95 = v91[3];
              if (*v91 > v95 || *v91 == v95 && *(v91 + 1) > *(v91 + 4))
              {
                v91 += 3;
                v87 = v94;
              }
            }

            *v92 = *v91;
            v96 = (v91 + 2);
            v97 = *(v91 + 2);
            v98 = (v91 - v92);
            if (v97 == 1)
            {
              v98 = 0;
            }

            *(v92 + 2) = &v98[v97];
          }

          while (v87 <= (((v88 - 2) & ((v88 - 2) >> 63)) + (((v88 - 2) ^ ((v88 - 2) >> 63)) >> 1)));
          v99 = v15 - 24;
          if (v15 - 24 == v91)
          {
            *v91 = v134;
            v106 = (v135 - v96);
            if (v135[0] == 1)
            {
              v106 = 0;
            }

            *(v91 + 2) = &v106[v135[0]];
          }

          else
          {
            *v91 = *v99;
            v102 = *(v15 - 1);
            v101 = v15 - 8;
            v100 = v102;
            v103 = (v101 - v96);
            if (v102 == 1)
            {
              v103 = 0;
            }

            *(v91 + 2) = &v103[v100];
            v104 = (v91 + 3);
            *v99 = v134;
            v105 = (v135 - v101);
            if (v135[0] == 1)
            {
              v105 = 0;
            }

            *v101 = &v105[v135[0]];
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::branch_data_comp &,std::__wrap_iter<boost::geometry::index::detail::rtree::visitors::distance_query<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder,boost::geometry::index::detail::predicates::nearest<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>>::branch_data *>>(v82, v104, 0xAAAAAAAAAAAAAAABLL * ((v104 - v82) >> 3));
            v14 = v132;
          }

          v15 = v139;
        }

        v15 -= 24;
        v139 = v15;
      }

      if (__p == v142)
      {
        v107 = 0;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v107 = 0;
        do
        {
          v108 = v84[1];
          v109 = v107 - v13;
          v110 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v13) >> 2);
          v111 = v110 + 1;
          if (v110 + 1 > 0x1555555555555555)
          {
            std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-v13 >> 2) > v111)
          {
            v111 = 0x5555555555555556 * (-v13 >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v13 >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v112 = 0x1555555555555555;
          }

          else
          {
            v112 = v111;
          }

          if (v112)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>(v112);
          }

          v113 = 12 * v110;
          v114 = *v108;
          *(v113 + 8) = *(v108 + 2);
          *v113 = v114;
          v107 = 12 * v110 + 12;
          v115 = (v113 + 12 * (v109 / -12));
          memcpy(v115, v13, v109);
          if (v13)
          {
            operator delete(v13);
          }

          v13 = v115;
          v84 += 2;
        }

        while (v84 != v83);
        v84 = __p;
      }

      if (v84)
      {
        v142 = v84;
        operator delete(v84);
      }

      v116 = v138;
      if (v138)
      {
        operator delete(v138);
      }

      if (v107 != v13)
      {
        v117 = *(v13 + 8);
        timezones = selfCopy->_timezones;
        v119 = timezones[2];
        if (v119 >= v117)
        {
          if (v119 <= v117)
          {
            boost::container::throw_out_of_range(v116, v19);
          }

          v122 = timezones[1];
          v123 = timezones + v122 + 8;
          if (v122 == 1)
          {
            v123 = 0;
          }

          v124 = &v123[32 * v117];
          if (v124[8])
          {
            v127 = v124 - buf + 9;
          }

          else
          {
            v125 = *(v124 + 3);
            v126 = v124 + 24 - buf;
            if (v125 == 1)
            {
              v126 = 0;
            }

            v127 = v126 + v125;
          }

          if (v127 == 1)
          {
            v128 = 0;
          }

          else
          {
            v128 = &buf[v127];
          }

          v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v128, v20}];
          goto LABEL_182;
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"timezone index out of bounds: %ld", v20, *(v13 + 8)}];
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.8f, %.8f}", *&latitude, *&longitude];
      *buf = 138477827;
      *&buf[4] = v120;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Timezone name for %{private}@ not found.", buf, 0xCu);
    }

    v121 = 0;
    v6 = 0;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_182:
    operator delete(v13);
    v6 = v121;
  }

LABEL_9:

  return v6;
}

@end