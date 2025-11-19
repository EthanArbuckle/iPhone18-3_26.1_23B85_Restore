void sub_1B3675BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  boost::geometry::index::detail::rtree::subtree_destroyer<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder>::~subtree_destroyer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(uint64_t *result, uint64_t *a2)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (!a2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<1ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v5 = *a1;
  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = *(v3 + 4);
  v9 = *a3;
  if (v8 < *(v5 + 4))
  {
    if (!v9)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*(v9 + 4) < v8)
    {
      goto LABEL_14;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v5, v3);
    v9 = *a3;
    if (!*a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v5 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

LABEL_13:
    if (*(v9 + 4) >= *(v5 + 4))
    {
      return 1;
    }

LABEL_14:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v5, v9);
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*(v9 + 4) < v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v3, v9);
    v9 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v5 = *a1;
    if (!*a1)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::pack_utils::point_entries_comparer<0ul> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false>,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3)
{
  v3 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v5 = *a1;
  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = *v3;
  v9 = *a3;
  if (*v3 < *v5)
  {
    if (!v9)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v9 < v8)
    {
      goto LABEL_14;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v5, v3);
    v9 = *a3;
    if (!*a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v5 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

LABEL_13:
    if (*v9 >= *v5)
    {
      return 1;
    }

LABEL_14:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v5, v9);
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v9 < v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &,boost::container::vec_iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,std::__wrap_iter<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> *>> *,false> &>(v3, v9);
    v9 = *a2;
    if (!*a2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v5 = *a1;
    if (!*a1)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t boost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<std::runtime_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2A89EE8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1B8C64390);
}

{
  *a1 = &unk_1F2A89EE8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void non-virtual thunk toboost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1B8C64390);
}

{
  *(a1 + 16) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void boost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2A89EE8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1B8C64390);
}

void boost::wrapexcept<std::runtime_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::runtime_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::runtime_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A89F58;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F2A89EE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F2A8A2D8;
  *(a1 + 8) = &unk_1F2A8A308;
  *(a1 + 24) = &unk_1F2A8A330;
  return a1;
}

void sub_1B367660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

BOOL pf::TimezoneArchiveLineParser::parseLine(pf::TimezoneArchiveLineParser *this, char *__s)
{
  v4 = strrchr(__s, 44);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v25 = 0;
  v6 = sscanf(__s, "%f,%f", &v25 + 4, &v25);
  v7 = v6 == 2;
  if (v6 == 2)
  {
    v8 = pf::TimezoneArchiveLineParser::timeZoneNameIndex(this, v5 + 1);
    v9 = v8;
    v10 = v25;
    v12 = *(this + 12);
    v11 = *(this + 13);
    if (v12 >= v11)
    {
      v14 = *(this + 11);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 2);
      v16 = v15 + 1;
      if (v15 + 1 > 0x1555555555555555)
      {
        std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 2);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0xAAAAAAAAAAAAAAALL)
      {
        v18 = 0x1555555555555555;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>(v18);
      }

      v19 = 12 * v15;
      *v19 = HIDWORD(v25);
      *(v19 + 4) = v10;
      *(v19 + 8) = v9;
      v13 = 12 * v15 + 12;
      v20 = *(this + 11);
      v21 = *(this + 12) - v20;
      v22 = v19 - v21;
      memcpy((v19 - v21), v20, v21);
      v23 = *(this + 11);
      *(this + 11) = v22;
      *(this + 12) = v13;
      *(this + 13) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v12 = HIDWORD(v25);
      *(v12 + 4) = v10;
      v13 = v12 + 12;
      *(v12 + 8) = v8;
    }

    *(this + 12) = v13;
  }

  return v7;
}

uint64_t pf::TimezoneArchiveLineParser::timeZoneNameIndex(pf::TimezoneArchiveLineParser *this, char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v31, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__string_hash<char>::operator()[abi:ne200100](__p);
  v5 = *(this + 120);
  if (!*&v5)
  {
    goto LABEL_18;
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

  v10 = *(*(this + 14) + 8 * v9);
  if (v10)
  {
    for (i = *v10; i; i = *i)
    {
      v12 = i[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](i + 2, __p))
        {
          break;
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
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
LABEL_18:
    i = 0;
  }

  if (v35 < 0)
  {
    operator delete(__p[0]);
    if (i)
    {
      goto LABEL_21;
    }
  }

  else if (i)
  {
LABEL_21:
    v13 = *(i + 20);
    goto LABEL_53;
  }

  v14 = *(this + 10);
  v13 = *(v14 + 16);
  v15 = std::__string_hash<char>::operator()[abi:ne200100](v31);
  v16 = v15;
  v17 = *(this + 120);
  if (!*&v17)
  {
    goto LABEL_40;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v15;
    if (v15 >= *&v17)
    {
      v20 = v15 % *&v17;
    }
  }

  else
  {
    v20 = (*&v17 - 1) & v15;
  }

  v21 = *(*(this + 14) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v16)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_40;
    }

LABEL_39:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_40;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, v31))
  {
    goto LABEL_39;
  }

  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(__p, a2, this + 19);
  v24 = *(v14 + 8);
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24 + v14 + 8;
  }

  v26 = *(v14 + 16);
  v27 = v25 + 32 * v26;
  if (v26 == *(v14 + 24))
  {
    boost::container::vector<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>*,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(&v33, v14, v27, __p);
    boost::container::vec_iterator<boost::interprocess::offset_ptr<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,long,unsigned long,0ul>,false>::operator*(v33);
  }

  else
  {
    if (v25)
    {
      v28 = v27 - &v33;
    }

    else
    {
      v28 = 1;
    }

    v33 = v28;
    if (v28 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = &__p[-1] + v28;
    }

    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v29, __p);
    ++*(v14 + 16);
  }

  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(__p);
LABEL_53:
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  return v13;
}

void sub_1B3676DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t boost::container::vector<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>*,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (v6 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a2 + a2;
  }

  v9 = *(v8 + 48) >> 5;
  if (v9 == v6)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  if (v6 >> 61 > 4)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v6;
  }

  if (v6 >> 61)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8 * v6 / 5;
  }

  v15 = v6 + 1;
  if (v14 < v9)
  {
    v9 = v14;
  }

  if (v15 > v9)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v4 - &v130;
  if (v5 == 1)
  {
    v17 = 0;
  }

  v130 = v17 + v5;
  v131 = v16;
  boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v129, a2, v15, &v131, &v130);
  if (v130 == 1)
  {
    v124 = v5;
    v126 = a4;
    if (v129 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = &v129 + v129;
    }

    v19 = v18 - &v133;
    if (!v18)
    {
      v19 = 1;
    }

    v20 = v18 - v136;
    if (v18)
    {
      v21 = v18 - v136;
    }

    else
    {
      v21 = 1;
    }

    v22 = v18 - &v134;
    v23 = *(a2 + 8);
    v24 = *(a2 + 16);
    if (!v18)
    {
      v22 = 1;
    }

    if (v23 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = &v4[v23];
    }

    v26 = &v134 - v132;
    if (v22 == 1)
    {
      v26 = 0;
    }

    v132[0] = v26 + v22;
    v132[1] = a2;
    v117 = v131;
    v119 = v25;
    v132[2] = v131;
    v27 = v25 + 32 * v24;
    v28 = v136 - &v134;
    if (v21 == 1)
    {
      v28 = 0;
    }

    v29 = v28 + v21;
    v30 = &v133 - &v134.u64[1];
    if (v19 == 1)
    {
      v30 = 0;
    }

    v134.i64[0] = v29;
    v134.i64[1] = v30 + v19;
    v135 = a2;
    for (i = v18; v25 != a3; v20 += 32)
    {
      if (i)
      {
        v32 = v20;
      }

      else
      {
        v32 = 1;
      }

      v136[0] = v32;
      if (v32 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = v136 + v32;
      }

      boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v33, v25);
      v25 += 32;
      i += 32;
    }

    v34 = i - v136;
    if (!i)
    {
      v34 = 1;
    }

    if (v34 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = v136 - &v134.u64[1];
    }

    v134.i64[1] = v35 + v34;
    v136[0] = v34;
    if (v34 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = v136 + v34;
    }

    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v36, v126);
    if (i - v136 == -31)
    {
      v37 = 0;
    }

    else
    {
      v37 = v136 - &v134.u64[1];
    }

    v134.i64[1] = v37 + i - v136 + 32;
    v5 = v124;
    if (v27 != a3)
    {
      v38 = i + 32;
      v39 = 96 - &vars0;
      v40 = a3;
      do
      {
        v136[0] = &v38[v39];
        if (&v38[v39] == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38;
        }

        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v41, v40);
        v40 += 32;
        v38 += 32;
      }

      while (v40 != v27);
    }

    v134 = vdupq_n_s64(1uLL);
    boost::container::dtl::scoped_destructor_range<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_range(v134.i64);
    v132[0] = 1;
    if (v119)
    {
      v42 = v4 - &v134;
      if (*v4 == 1)
      {
        v42 = 0;
      }

      v134.i64[0] = v42 + *v4;
      v43 = &v134.i8[v134.i64[0]];
      if (v134.i64[0] != 1 && v43 != 0)
      {
        if (*a2 == 1)
        {
          v45 = 0;
        }

        else
        {
          v45 = (*a2 + a2);
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v45, v43);
      }
    }

    v46 = v18 - &v134;
    if (!v18)
    {
      v46 = 1;
    }

    v47 = (&v134 - v4);
    if (v46 == 1)
    {
      v47 = 0;
    }

    v48 = &v47[v46];
    v49 = *(a2 + 16) + 1;
    *(a2 + 8) = v48;
    *(a2 + 16) = v49;
    *(a2 + 24) = v117;
    result = boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v132);
  }

  else
  {
    if (*v4 == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = &v4[*v4];
    }

    if (v129 == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = &v129 + v129;
    }

    v53 = v51 - v52;
    if (v51 == v52)
    {
      v54 = v131;
      *(a2 + 24) = v131;
      v55 = *(a2 + 16);
      if (v55 == v54)
      {
        __assert_rtn("priv_insert_forward_range_expand_forward", "vector.hpp", 2966, "this->room_enough()");
      }

      v56 = v51 + 32 * v55;
      if (v56 == a3)
      {
        v81 = a3 - &v134;
        if (!v51)
        {
          v81 = 1;
        }

        v134.i64[0] = v81;
        if (v81 == 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = &v134.i8[v81];
        }

        result = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v82, a4);
        ++*(a2 + 16);
      }

      else
      {
        v57 = v56 - 32;
        v58 = v56 - &v134;
        if (!v51)
        {
          v58 = 1;
        }

        v134.i64[0] = v58;
        if (v58 == 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = &v134.i8[v58];
        }

        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v59, v57);
        ++*(a2 + 16);
        for (; v57 != a3; v57 -= 32)
        {
          boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v57, v57 - 32);
        }

        result = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(a3, a4);
      }
    }

    else
    {
      v60 = v131;
      v61 = *(a2 + 16);
      v118 = v51 + 32 * v61;
      v62 = v52 - &v134;
      if (!v52)
      {
        v62 = 1;
      }

      v63 = (&v134 - v4);
      if (v62 == 1)
      {
        v63 = 0;
      }

      *(a2 + 16) = 0;
      *(a2 + 24) = v60;
      *(a2 + 8) = &v63[v62];
      v64 = (a3 - v51) >> 5;
      v65 = v53 >> 5;
      v66 = v51 - v132;
      if (!v51)
      {
        v66 = 1;
      }

      v67 = v132 - &v134;
      if (v66 == 1)
      {
        v67 = 0;
      }

      v134.i64[0] = v67 + v66;
      v134.i64[1] = a2;
      v135 = v61;
      v125 = v5;
      v127 = a4;
      v116 = v53 >> 5;
      v120 = v61;
      if (v65 >= v64 + 1)
      {
        v123 = (a3 - v51) >> 5;
        v115 = v64 + 1;
        if (v51 == a3)
        {
          v78 = v52;
        }

        else
        {
          v76 = v52 - v132;
          v77 = v51;
          v78 = v52;
          do
          {
            if (v78)
            {
              v79 = v76;
            }

            else
            {
              v79 = 1;
            }

            v132[0] = v79;
            if (v79 == 1)
            {
              v80 = 0;
            }

            else
            {
              v80 = v132 + v79;
            }

            boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v80, v77);
            v77 += 32;
            v78 += 32;
            v76 += 32;
          }

          while (v77 != a3);
        }

        *(a2 + 16) = v123;
        v83 = v78 - v132;
        if (!v78)
        {
          v83 = 1;
        }

        v132[0] = v83;
        if (v83 == 1)
        {
          v84 = 0;
        }

        else
        {
          v84 = v132 + v83;
        }

        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v84, v127);
        *(a2 + 16) = v115;
        v85 = v120 + 1;
        if (v120 + 1 <= v116)
        {
          if (v123 != v120)
          {
            if (v118 != a3)
            {
              v94 = &v52[32 * v115];
              v95 = &v52[32 * v123] - v132 + 32;
              v96 = a3;
              do
              {
                if (v94)
                {
                  v97 = v95;
                }

                else
                {
                  v97 = 1;
                }

                v132[0] = v97;
                if (v97 == 1)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = v132 + v97;
                }

                boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v98, v96);
                v96 += 32;
                v94 += 32;
                v95 += 32;
              }

              while (v96 != v118);
            }

            *(a2 + 16) = v120 + 1;
          }
        }

        else
        {
          v121 = v120 + 1 - v116;
          v128 = v85;
          if (v116 != v115)
          {
            v86 = &v52[32 * v115];
            v87 = v123 - v116 + 1;
            v88 = &v52[32 * v123] - v132 + 32;
            v89 = a3;
            do
            {
              if (v86)
              {
                v90 = v88;
              }

              else
              {
                v90 = 1;
              }

              v132[0] = v90;
              if (v90 == 1)
              {
                v91 = 0;
              }

              else
              {
                v91 = v132 + v90;
              }

              boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v91, v89);
              v89 += 32;
              v86 += 32;
              v88 += 32;
            }

            while (!__CFADD__(v87++, 1));
          }

          v135 -= v121;
          v134.i64[0] += 32 * v121;
          v5 = v125;
          *(a2 + 16) = v128;
          v93 = a3 + 32 * (v116 - v115);
          if (v93 != v51)
          {
            while (v93 != v118)
            {
              boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v51, v93);
              v93 += 32;
              v51 += 32;
            }
          }
        }

        v134.i64[0] = 1;
        v135 = 0;
      }

      else
      {
        v122 = a1;
        v68 = v65 - v64;
        if (v65 > v64)
        {
          v109 = (a3 - v51) >> 5;
          if (v51 != a3)
          {
            v110 = v52 - v132;
            do
            {
              if (v52)
              {
                v111 = v110;
              }

              else
              {
                v111 = 1;
              }

              v132[0] = v111;
              if (v111 == 1)
              {
                v112 = 0;
              }

              else
              {
                v112 = v132 + v111;
              }

              boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v112, v51);
              v51 += 32;
              v52 += 32;
              v110 += 32;
            }

            while (v51 != a3);
          }

          *(a2 + 16) = v109;
          if (v68 == 1)
          {
            v113 = v52 - v132;
            if (!v52)
            {
              v113 = 1;
            }

            v132[0] = v113;
            if (v113 == 1)
            {
              v114 = 0;
            }

            else
            {
              v114 = v132 + v113;
            }

            boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v114, a4);
            *(a2 + 16) = (v53 >> 5) + v120;
            v134.i64[0] = 1;
            v135 = 0;
            __assert_rtn("copy_n_and_update", "advanced_insert_int.hpp", 215, "n == 1");
          }

          __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
        }

        v69 = v52 - v132;
        v70 = v53 >> 5;
        v71 = v51;
        do
        {
          --v70;
          if (v52)
          {
            v72 = v69;
          }

          else
          {
            v72 = 1;
          }

          v132[0] = v72;
          if (v72 == 1)
          {
            v73 = 0;
          }

          else
          {
            v73 = v132 + v72;
          }

          boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v73, v71);
          v71 += 32;
          v52 += 32;
          v69 += 32;
        }

        while (v70);
        v134.i64[0] = 1;
        v135 = 0;
        *(a2 + 16) = v120 + 1;
        if (v51 + v53 == a3)
        {
          a1 = v122;
          v74 = v127;
          v75 = v118;
        }

        else
        {
          a1 = v122;
          v74 = v127;
          v75 = v118;
          do
          {
            boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v51, v51 + v53);
            v51 += 32;
          }

          while (v51 + v53 != a3);
        }

        boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v51, v74);
        if (v116 >= 2 && v75 != a3)
        {
          v99 = v51 + 32;
          v100 = a3;
          do
          {
            v101 = boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v99, v100);
            v100 += 32;
            v99 = v101 + 32;
          }

          while (v100 != v75);
        }
      }

      result = boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(&v134);
    }
  }

  v102 = &v4[v5];
  if (v5 == 1)
  {
    v102 = 0;
  }

  v103 = a3 - v102;
  v104 = v4 - v132;
  if (*v4 == 1)
  {
    v104 = 0;
  }

  v105 = *v4 + v103 + v104;
  v106 = v132 - &v134;
  if (v105 == 1)
  {
    v106 = 0;
  }

  v107 = v106 + v105;
  v108 = (&v134 - a1);
  if (v107 == 1)
  {
    v108 = 0;
  }

  *a1 = &v108[v107];
  return result;
}

void sub_1B3677830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::vec_iterator<boost::interprocess::offset_ptr<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,long,unsigned long,0ul>,false>::operator*(uint64_t result)
{
  if (result == 1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

char *boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(char *a1, void *a2, unint64_t a3, unint64_t *a4, uint64_t *a5)
{
  if (*a5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5 + *a5;
  }

  if (*a2 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2 + *a2;
  }

  v18 = v6;
  v8 = *a4;
  v9 = *(v7 + 48) >> 5;
  if (v9 < a3 || v8 > v9)
  {
    goto LABEL_18;
  }

  v19 = 32 * v8;
  result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v7, 23, 32 * a3, &v19, &v18, 0x20uLL);
  *a4 = v19 >> 5;
  if ((result & 7) != 0)
  {
    __assert_rtn("allocation_command", "rbtree_best_fit.hpp", 698, "0 == ((std::size_t)ret % ::boost::container::dtl::alignment_of<T>::value)");
  }

  if (!result)
  {
LABEL_18:
    exception = __cxa_allocate_exception(0x28uLL);
    v17 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v17 = &unk_1F2A8A288;
  }

  v14 = v18;
  *a1 = result - a1;
  if (v14)
  {
    v15 = v14 - a5;
  }

  else
  {
    v15 = 1;
  }

  *a5 = v15;
  return result;
}

void *boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(void *a1)
{
  v2 = a1 + *a1;
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1[1];
    v5 = *v4;
    v6 = v4 + *v4;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v7, v2);
  }

  return a1;
}

uint64_t *boost::container::dtl::scoped_destructor_range<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_range(uint64_t *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (*a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + *a1;
  }

  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 + v2;
  }

  if (v4 != v5)
  {
    do
    {
      if (v4)
      {
        v6 = v4 - &v11;
      }

      else
      {
        v6 = 1;
      }

      v11 = v6;
      boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v11);
      v7 = a1[1];
      v8 = *a1 + 32;
      *a1 = v8;
      if (v8 == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = a1 + v8;
      }

      if (v7 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3 + v7;
      }
    }

    while (v4 != v9);
  }

  return a1;
}

uint64_t boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1 + *a1;
  if (v2 == 1 || v3 == 0)
  {
    __assert_rtn("destroy", "allocator.hpp", 269, "ptr != 0");
  }

  return boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v3);
}

uint64_t boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *a1 + a1;
    }

    if (*a2 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = *a2 + a2;
    }

    if (v3 == v4)
    {
      if (*(a1 + 8))
      {
        v19 = (a1 + 9);
        if (a1 + 9 - v24 == 1)
        {
          v19 = 0;
        }

        *v19 = 0;
        *(a1 + 8) &= 1u;
      }

      else
      {
        v5 = *(a1 + 24);
        v6 = a1 - &v21;
        if (v5 == 1)
        {
          v6 = 0;
        }

        v7 = v6 + v5;
        if (v7 == 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = &v24[v7];
        }

        *v8 = 0;
        *(a1 + 8) &= 1uLL;
      }

      boost::container::dtl::basic_string_base<boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::swap_data(a1, a2);
    }

    else
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        v16 = a2 + 9 - &v23;
        v17 = a2 + 9 - v24 + (v9 >> 1);
        v18 = v24 - &v22;
      }

      else
      {
        v12 = *(a2 + 24);
        v10 = a2 + 24;
        v11 = v12;
        v13 = v10 - &v23;
        v14 = v10 - v24;
        v15 = v12 == 1;
        if (v12 == 1)
        {
          v13 = 0;
        }

        v16 = v13 + v11;
        if (v15)
        {
          v14 = 0;
        }

        v17 = v14 + v11 + (*(v10 - 16) >> 1);
        v18 = v24 - &v22;
      }

      if (v17 == 1)
      {
        v18 = 0;
      }

      v22 = v18 + v17;
      v23 = v16;
      boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::assign<boost::interprocess::offset_ptr<char,long,unsigned long,0ul>>(a1, &v23, &v22);
    }
  }

  return a1;
}

void *boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    if (*a1 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1 + *a1;
    }

    v4 = v3 - &v7;
    do
    {
      a1[2] = v2 - 1;
      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 1;
      }

      v7 = v5;
      boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v7);
      v3 += 32;
      v2 = a1[2];
      v4 += 32;
    }

    while (v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void pf::TimezoneArchiveLineParser::~TimezoneArchiveLineParser(pf::TimezoneArchiveLineParser *this)
{
  *this = &unk_1F2A8A3C8;
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(this + 112);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(this + 40);

  JUMPOUT(0x1B8C64390);
}

{
  *this = &unk_1F2A8A3C8;
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(this + 112);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(this + 40);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1B36788B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  std::unique_ptr<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::~unique_ptr[abi:ne200100](&buf);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = (*(*v15 + 16))(v15);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error reading timezone index: %s.", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B367864CLL);
  }

  _Unwind_Resume(a1);
}

void boost::interprocess::ipcdetail::placement_destroy<boost::container::vector<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>>::destroy_n(uint64_t a1, void *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    do
    {
      v7 = (a2 + 1);
      v8 = a2[2];
      if (v8)
      {
        if (*v7 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = &v7[*v7];
        }

        v10 = v9 - &v17;
        do
        {
          if (v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = 1;
          }

          v17 = v11;
          boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v17);
          v9 += 32;
          v10 += 32;
          --v8;
        }

        while (v8);
      }

      if (a2[3])
      {
        v12 = v7 - &v17;
        if (*v7 == 1)
        {
          v12 = 0;
        }

        v17 = v12 + *v7;
        v13 = &v17 + v17;
        if (v17 != 1 && v13 != 0)
        {
          if (*a2 == 1)
          {
            v15 = 0;
          }

          else
          {
            v15 = a2 + *a2;
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v15, v13);
        }
      }

      a2 += 4;
      v16 = *a4 + 1;
      *a4 = v16;
    }

    while (v16 < a3);
  }
}

pf::TimezoneArchiveLineParser *pf::TimezoneArchiveLineParser::TimezoneArchiveLineParser(pf::TimezoneArchiveLineParser *this, const char *a2, const char *a3, size_t a4)
{
  *this = &unk_1F2A8A3C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *v78 = 420;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_mapped_file(this + 40, a2, 0xA00000uLL, v78);
  *(this + 88) = 0u;
  *(this + 17) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 36) = 1065353216;
  v7 = *(this + 5);
  v8 = v7 - (this + 152);
  if (!v7)
  {
    v8 = 1;
  }

  *(this + 19) = v8;
  v9 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v7, a4 + 8);
  *(this + 2) = v9;
  *(this + 4) = v9 + a4;
  memcpy(v9, a3, a4);
  if ((0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 11)) >> 2)) >> 5 <= 0x36A)
  {
    operator new();
  }

  v10 = *(this + 5);
  if (v10)
  {
    v11 = v10 - &v77;
  }

  else
  {
    v11 = 1;
  }

  *&v78[8] = xmmword_1B36A1D60;
  v79 = 0x80000001B36A31EBLL & 0x7FFFFFFFFFFFFFFFLL;
  v80 = &v77;
  v77 = v11;
  *v78 = &unk_1F2A8A078;
  v12 = boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v10, "timezones", v78);
  v13 = v12;
  *(this + 10) = v12;
  if (*(v12 + 3) <= 0x16BuLL)
  {
    v15 = v12 + 8;
    v14 = *(v12 + 1);
    v16 = v12 + 8 - &v82;
    if (v14 == 1)
    {
      v16 = 0;
    }

    v82 = v16 + v14;
    v83 = 364;
    boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v81, v12, 0x16CuLL, &v83, &v82);
    v17 = *v15;
    if (v82 == 1)
    {
      if (v81 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = &v81 + v81;
      }

      v19 = v18 - &v85;
      if (!v18)
      {
        v19 = 1;
      }

      v20 = v18 - v86;
      if (v18)
      {
        v21 = v18 - v86;
      }

      else
      {
        v21 = 1;
      }

      v22 = v18 - v78;
      if (!v18)
      {
        v22 = 1;
      }

      if (v17 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = &v15[v17];
      }

      v24 = v13[2];
      v25 = v83;
      v26 = v78 - v84;
      if (v22 == 1)
      {
        v26 = 0;
      }

      v84[0] = v26 + v22;
      v84[1] = v13;
      v84[2] = v83;
      v27 = v86 - v78;
      if (v21 == 1)
      {
        v27 = 0;
      }

      v28 = v27 + v21;
      v29 = &v85 - &v78[8];
      if (v19 == 1)
      {
        v29 = 0;
      }

      *v78 = v28;
      *&v78[8] = v29 + v19;
      *&v78[16] = v13;
      v75 = v23;
      if (v24)
      {
        v73 = v83;
        v30 = v13;
        v31 = 32 * v24;
        v32 = v18;
        do
        {
          if (v32)
          {
            v33 = v20;
          }

          else
          {
            v33 = 1;
          }

          v86[0] = v33;
          if (v33 == 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = v86 + v33;
          }

          boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v34, v23);
          v23 += 32;
          v32 += 32;
          v20 += 32;
          v31 -= 32;
        }

        while (v31);
        v13 = v30;
        v25 = v73;
      }

      *v78 = vdupq_n_s64(1uLL);
      boost::container::dtl::scoped_destructor_range<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_range(v78);
      v84[0] = 1;
      if (v75)
      {
        v64 = v15 - v78;
        if (*v15 == 1)
        {
          v64 = 0;
        }

        v65 = v64 + *v15;
        *v78 = v65;
        if (v65 != 1 && &v78[v65])
        {
          if (*v13 == 1)
          {
            v66 = 0;
          }

          else
          {
            v66 = v13 + *v13;
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v66, &v78[v65]);
        }
      }

      v67 = v18 - v78;
      if (!v18)
      {
        v67 = 1;
      }

      v68 = (v78 - v15);
      if (v67 == 1)
      {
        v68 = 0;
      }

      v13[1] = &v68[v67];
      v13[3] = v25;
      boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v84);
    }

    else
    {
      if (v17 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = &v15[v17];
      }

      if (v81 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = &v81 + v81;
      }

      v37 = v35 - v36;
      if (v35 == v36)
      {
        v13[3] = v83;
      }

      else
      {
        v38 = v13[2];
        v39 = 32 * v38;
        v40 = v83;
        v41 = v36 - v78;
        if (!v36)
        {
          v41 = 1;
        }

        v42 = (v78 - v15);
        if (v41 == 1)
        {
          v42 = 0;
        }

        v13[2] = 0;
        v13[3] = v40;
        v13[1] = &v42[v41];
        v43 = v37 >> 5;
        v44 = v35 - v84;
        if (!v35)
        {
          v44 = 1;
        }

        v45 = v84 - v78;
        if (v44 == 1)
        {
          v45 = 0;
        }

        *v78 = v45 + v44;
        *&v78[8] = v13;
        v74 = v13;
        *&v78[16] = v38;
        v76 = v38;
        if (v43 >= v39 >> 5)
        {
          v72 = (32 * v38) >> 5;
          if (v38)
          {
            v50 = v36 - v84;
            v51 = 32 * v38;
            v52 = v35;
            v53 = v36;
            do
            {
              if (v53)
              {
                v54 = v50;
              }

              else
              {
                v54 = 1;
              }

              v84[0] = v54;
              if (v54 == 1)
              {
                v55 = 0;
              }

              else
              {
                v55 = v84 + v54;
              }

              boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v55, v52);
              v52 += 32;
              v53 += 32;
              v50 += 32;
              v51 -= 32;
            }

            while (v51);
          }

          v74[2] = v72;
          if (v76 <= v43)
          {
            if (v72 != v76)
            {
              v74[2] = v76;
            }
          }

          else
          {
            v70 = v76 - v43;
            v71 = v43 - v72;
            if (v43 != v72)
            {
              v56 = &v36[v39];
              v57 = v35 + 32 * v76;
              v58 = v72 - v43;
              v59 = &v36[v39] - v84;
              do
              {
                if (v56)
                {
                  v60 = v59;
                }

                else
                {
                  v60 = 1;
                }

                v84[0] = v60;
                if (v60 == 1)
                {
                  v61 = 0;
                }

                else
                {
                  v61 = v84 + v60;
                }

                boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v61, v57);
                v57 += 32;
                v56 += 32;
                v59 += 32;
              }

              while (!__CFADD__(v58++, 1));
            }

            *&v78[16] -= v70;
            *v78 += 32 * v70;
            v74[2] = v76;
            if (v35 + 32 * v76 + 32 * v71 != v35 && v71)
            {
              v63 = 32 * v72 - 32 * v43;
              do
              {
                boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v35, v35 + v39 + 32 * v43 - 32 * v72);
                v35 += 32;
                v63 -= 32;
              }

              while (v63);
            }
          }

          *v78 = 1;
          *&v78[16] = 0;
        }

        else
        {
          v46 = v36 - v84;
          v47 = v35;
          do
          {
            --v43;
            if (v36)
            {
              v48 = v46;
            }

            else
            {
              v48 = 1;
            }

            v84[0] = v48;
            if (v48 == 1)
            {
              v49 = 0;
            }

            else
            {
              v49 = v84 + v48;
            }

            boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v49, v47);
            v47 += 32;
            v36 += 32;
            v46 += 32;
          }

          while (v43);
          *v78 = 1;
          *&v78[16] = 0;
          v74[2] = v76;
          while (v37 != v39)
          {
            boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::operator=(v35, v35 + v37);
            v35 += 32;
            v39 -= 32;
          }
        }

        boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(v78);
      }
    }
  }

  return this;
}

void sub_1B3679298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(va);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table((a7 + 3));
  v19 = *a7;
  if (*a7)
  {
    *(v17 + 96) = v19;
    operator delete(v19);
  }

  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(v17 + 40);
  _Unwind_Resume(a1);
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::container::vector<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,false,boost::interprocess::allocator<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>&>::construct_n(uint64_t result, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = -a2;
    do
    {
      v5 = *(result + 32);
      v6 = *v5;
      v7 = v5 + *v5;
      if (v6 == 1)
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = &v7[v4];
      }

      else
      {
        v8 = 1;
      }

      *a2 = v8;
      a2[1] = 1;
      a2[2] = 0;
      a2[3] = 0;
      v9 = *a4 + 1;
      *a4 = v9;
      v4 -= 32;
      a2 += 4;
    }

    while (v9 < a3);
  }

  return result;
}

void sub_1B3679810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::search_value(void *a1)
{
  while (1)
  {
    while (1)
    {
      v2 = a1[3];
      if (!v2)
      {
        break;
      }

      if (a1[4] != (v2 + 12 * *v2 + 8))
      {
        return;
      }

      a1[3] = 0;
    }

    v3 = a1[1];
    if (*a1 == v3)
    {
      break;
    }

    v5 = *(v3 - 16);
    v6 = *(v3 - 8);
    v4 = (v3 - 16);
    if (v5 == v6)
    {
      a1[1] = v4;
    }

    else
    {
      *v4 = v5 + 24;
      v7 = *(v5 + 16);
      v8 = (v7 + v5 + 16);
      if (v7 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>( v9,  a1);
    }
  }
}

void boost::variant<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::variant_internal_node<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag>>::apply_visitor<boost::geometry::index::detail::rtree::visitors::iterator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::detail::rtree::options<boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::detail::rtree::insert_default_tag,boost::geometry::index::detail::rtree::choose_by_content_diff_tag,boost::geometry::index::detail::rtree::split_default_tag,boost::geometry::index::detail::rtree::quadratic_tag,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::translator<boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>>>(_DWORD *a1, uint64_t a2)
{
  v3 = a1 + 2;
  v2 = *a1;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      if (v2 < 0)
      {
        v3 = *v3;
      }

      *(a2 + 24) = v3;
      *(a2 + 32) = v3 + 1;
      break;
    case 1:
      if (v2 < 0)
      {
        v3 = *v3;
      }

      v6 = *v3;
      v5 = v3 + 1;
      v7 = &v5[3 * v6];
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = v12 >> 4;
        v14 = (v12 >> 4) + 1;
        if (v14 >> 60)
        {
          std::vector<pf::SceneTaxonomyNode const*>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (!(v16 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v17 = (16 * v13);
        *v17 = v5;
        v17[1] = v7;
        v10 = 16 * v13 + 16;
        memcpy(0, v11, v12);
        *a2 = 0;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v9 = v5;
        v9[1] = v7;
        v10 = (v9 + 2);
      }

      *(a2 + 8) = v10;
      break;
    default:
      boost::detail::variant::forced_return<boost::geometry::index::detail::rtree::variant_leaf<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::allocators<boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::model::box<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>,boost::geometry::index::detail::rtree::node_variant_static_tag>,boost::geometry::index::detail::rtree::node_variant_static_tag> *>();
  }
}

void boost::container::throw_out_of_range(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F2A89F08;
  exception[1] = "vector::at out of range";
}

void *boost::geometry::index::detail::rtree::visitors::distance_query<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder,boost::geometry::index::detail::predicates::nearest<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>>::~distance_query(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::branch_data_comp &,std::__wrap_iter<boost::geometry::index::detail::rtree::visitors::distance_query<boost::geometry::index::rtree<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::geometry::index::quadratic<32ul,8ul>,boost::geometry::index::indexable<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::geometry::index::equal_to<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>>,boost::interprocess::allocator<std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::members_holder,boost::geometry::index::detail::predicates::nearest<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>>>::branch_data *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = result + 24 * (v3 >> 1);
    v6 = (a2 - 24);
    v7 = *(a2 - 24);
    if (*v5 > v7 || *v5 == v7 && *(v5 + 8) > *(a2 - 16))
    {
      v20 = *v6;
      v10 = *(a2 - 8);
      v8 = (a2 - 8);
      v9 = v10;
      v11 = v8 - v21;
      if (v10 == 1)
      {
        v11 = 0;
      }

      v21[0] = v11 + v9;
      *v6 = *v5;
      v12 = (v5 + 16);
      v13 = *(v5 + 16);
      v14 = v5 + 16 - v8;
      if (v13 == 1)
      {
        v14 = 0;
      }

      *v8 = v14 + v13;
      if (v3 >= 2)
      {
        v15 = result + 24 * (v3 >> 1);
        while (1)
        {
          v16 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = result + 24 * v4;
          if (*v5 <= *&v20 && (*v5 != *&v20 || *(v5 + 8) <= *(&v20 + 1)))
          {
            break;
          }

          *v15 = *v5;
          v12 = (v5 + 16);
          v17 = *(v5 + 16);
          v18 = v5 - v15;
          if (v17 == 1)
          {
            v18 = 0;
          }

          *(v15 + 16) = v18 + v17;
          v15 = result + 24 * v4;
          if (v16 <= 1)
          {
            goto LABEL_19;
          }
        }

        v5 = v15;
      }

LABEL_19:
      *v5 = v20;
      v19 = (v21 - v12);
      if (v21[0] == 1)
      {
        v19 = 0;
      }

      *v12 = &v19[v21[0]];
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::geometry::index::detail::rtree::visitors::pair_first_less &,std::__wrap_iter<std::pair<double,std::pair<boost::geometry::model::point<float,2ul,boost::geometry::cs::cartesian>,unsigned short> const*> *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 16 * (v3 >> 1));
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v6;
        v6 = v5;
        *v10 = v8;
        v10[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
      }

      while (*v5 < v7);
      *v6 = v7;
      *(v6 + 1) = v9;
    }
  }

  return result;
}

void pf::SceneGeographyLineParser::finalize(pf::SceneGeographyLineParser *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  v3 = *(v2 + 3);
  if (v3)
  {
    if (*(v2 + 2))
    {
      *buf = *(v2 + 2);
      v4 = *(v2 + 1);
      v5 = v2 - &v23;
      if (v4 == 1)
      {
        v5 = 0;
      }

      v24 = v5 + v4;
      boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v23, v2, 24, v3, buf, &v24);
      if (v23 != 1)
      {
        *(v2 + 3) = *buf;
      }
    }

    else
    {
      v6 = v2 + 8;
      v7 = *(v2 + 1);
      if (v7 != 1)
      {
        *buf = v7 + v6 - buf;
        v8 = &v6[v7];
        if (*buf != 1 && v8 != 0)
        {
          if (*v2 == 1)
          {
            v10 = 0;
          }

          else
          {
            v10 = &v2[*v2];
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v10, v8);
        }
      }

      *(v2 + 1) = 1;
      *(v2 + 3) = 0;
    }
  }

  v11 = *(this + 15);
  v12 = *(v11 + 3);
  if (v12)
  {
    if (*(v11 + 2))
    {
      *buf = *(v11 + 2);
      v13 = *(v11 + 1);
      v14 = v11 - &v23;
      if (v13 == 1)
      {
        v14 = 0;
      }

      v24 = v14 + v13;
      boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v23, v11, 24, v12, buf, &v24);
      if (v23 != 1)
      {
        *(v11 + 3) = *buf;
      }
    }

    else
    {
      v15 = v11 + 8;
      v16 = *(v11 + 1);
      if (v16 != 1)
      {
        *buf = v16 + v15 - buf;
        v17 = &v15[v16];
        if (*buf != 1 && v17 != 0)
        {
          if (*v11 == 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = &v11[*v11];
          }

          boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v19, v17);
        }
      }

      *(v11 + 1) = 1;
      *(v11 + 3) = 0;
    }
  }

  v20 = *(this + 6);
  v21 = *(MEMORY[0x1E69E5478] + 8) & 0x7FFFFFFFFFFFFFFFLL;
  *&buf[8] = vdupq_n_s64(4uLL);
  *buf = &unk_1F2A89F88;
  v26 = v21;
  v27 = &PF_SCENE_GEOGRAPHY_VERSION;
  boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v20, "version", buf);
  boost::interprocess::ipcdetail::basic_managed_memory_impl<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index,8ul>::shrink_to_fit<boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>,char>(*(this + 1));
  v22 = PFChecksumArchiveData((*(this + 6) - 8), *(*(this + 6) + 48) + 8, *(this + 2), *(this + 3));
  **(this + 4) = v22;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSceneGeography checksum %016llx", buf, 0xCu);
  }
}

void sub_1B367B260(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(uint64_t *a1, void *a2, char a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = 0;
  result = 0;
  v11 = a6 + *a6;
  if (*a6 == 1)
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 + *a2;
  }

  v21 = v11;
  v13 = *a5;
  v14 = *(v12 + 48) >> 5;
  if (v14 >= a4 && v13 <= v14)
  {
    v22 = 32 * v13;
    result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v12, a3 | 0x10u, 32 * a4, &v22, &v21, 0x20uLL);
    v9 = v21;
    *a5 = v22 >> 5;
  }

  if ((result & 7) != 0)
  {
    __assert_rtn("allocation_command", "rbtree_best_fit.hpp", 698, "0 == ((std::size_t)ret % ::boost::container::dtl::alignment_of<T>::value)");
  }

  if ((a3 & 0x10) == 0 && !result)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v20 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v20 = &unk_1F2A8A288;
  }

  v17 = result - a1;
  if (!result)
  {
    v17 = 1;
  }

  *a1 = v17;
  v18 = v9 - a6;
  if (!v9)
  {
    v18 = 1;
  }

  *a6 = v18;
  return result;
}

char *boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(uint64_t *a1, void *a2, char a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = 0;
  result = 0;
  v11 = a6 + *a6;
  if (*a6 == 1)
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 + *a2;
  }

  v21 = v11;
  v13 = *a5;
  v14 = *(v12 + 48) >> 3;
  if (v14 >= a4 && v13 <= v14)
  {
    v22 = 8 * v13;
    result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v12, a3 | 0x10u, 8 * a4, &v22, &v21, 8uLL);
    v9 = v21;
    *a5 = v22 >> 3;
  }

  if ((result & 7) != 0)
  {
    __assert_rtn("allocation_command", "rbtree_best_fit.hpp", 698, "0 == ((std::size_t)ret % ::boost::container::dtl::alignment_of<T>::value)");
  }

  if ((a3 & 0x10) == 0 && !result)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v20 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v20 = &unk_1F2A8A288;
  }

  v17 = result - a1;
  if (!result)
  {
    v17 = 1;
  }

  *a1 = v17;
  v18 = v9 - a6;
  if (!v9)
  {
    v18 = 1;
  }

  *a6 = v18;
  return result;
}

uint64_t pf::SceneGeographyLineParser::parseLine(pf::SceneGeographyLineParser *this, char *__str, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    v7 = __str[1];
    if (v7 == 58)
    {
      v11 = *__str;
      v9 = __str + 2;
      v10 = v11;
      if (v11 <= 111)
      {
        if (v10 == 99)
        {
          return 1;
        }

        if (v10 == 102)
        {

          return pf::SceneGeographyLineParser::parseFloatMap(this, v9);
        }
      }

      else
      {
        switch(v10)
        {
          case 'p':

            return pf::SceneGeographyLineParser::parsePOI(this, v9);
          case 's':

            return pf::SceneGeographyLineParser::parseScenes(this, v9);
          case 'v':
            v12 = strtol(v9, 0, 10);
            result = 1;
            if (v12 >= 2)
            {
              *(this + 41) = 1;
            }

            return result;
        }
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v13 = 67109120;
      v14 = v10;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "unexpected line type, first character: %c";
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v13 = 67109120;
      v14 = v7;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "unexpected second character: %c (expected ':')";
    }

    v6 = 8;
    goto LABEL_29;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(v13) = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "short line: expected 2 characters or longer";
    v6 = 2;
LABEL_29:
    _os_log_error_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_ERROR, v5, &v13, v6);
    return 0;
  }

  return result;
}

BOOL pf::SceneGeographyLineParser::parseFloatMap(pf::SceneGeographyLineParser *this, char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 40) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "all floatmap entries lines must come before any POI entries", buf, 2u);
    }

    return 0;
  }

  else
  {
    v15 = 0;
    v5 = strtod(a2, &v15);
    v14 = v5;
    v2 = v15 != a2;
    if (v15 == a2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to read floatmap - failed to parse double: %s", buf, 0xCu);
      }
    }

    else
    {
      v6 = *(this + 14);
      v7 = v6[1];
      if (v7 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 + v7 + 8;
      }

      v9 = v6[2];
      v10 = &v8[8 * v9];
      if (v9 == v6[3])
      {
        boost::container::vector<double,boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,double *,double &>>(buf, v6, v10, &v14);
        boost::container::vec_iterator<boost::interprocess::offset_ptr<double,long,unsigned long,0ul>,false>::operator*(*buf);
      }

      else
      {
        if (v8)
        {
          v11 = v10 - buf;
        }

        else
        {
          v11 = 1;
        }

        if (v11 == 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = &buf[v11];
        }

        *v12 = v5;
        v6[2] = v9 + 1;
      }
    }
  }

  return v2;
}

uint64_t pf::SceneGeographyLineParser::parseScenes(pf::SceneGeographyLineParser *this, char *__str)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 40) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "all scene entries lines must come before any POI entries", buf, 2u);
    }

    return 0;
  }

  v4 = *(this + 12);
  v5 = this + v4 + 96;
  if (v4 == 1)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5 - buf;
  }

  else
  {
    v6 = 1;
  }

  *buf = v6;
  v28 = 1;
  v29 = 0;
  v30 = 0;
  __lasts = 0;
  v7 = strtok_r(__str, ",", &__lasts);
  if (!v7)
  {
LABEL_29:
    if (v30)
    {
      if (v29)
      {
        *v33 = v29;
        v16 = &v28 - &__endptr;
        if (v28 == 1)
        {
          v16 = 0;
        }

        __endptr = (v16 + v28);
        boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v31, buf, 24, v30, v33, &__endptr);
        if (v31 != 1)
        {
          v30 = *v33;
        }
      }

      else
      {
        if (v28 != 1)
        {
          *v33 = v28 + &v28 - v33;
          if (*v33 != 1)
          {
            if ((&v28 + v28))
            {
              if (*buf == 1)
              {
                v17 = 0;
              }

              else
              {
                v17 = &buf[*buf];
              }

              boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v17, &v28 + v28);
            }
          }
        }

        v28 = 1;
        v30 = 0;
      }
    }

    v18 = *(this + 15);
    v19 = v18[1];
    v20 = v18 + v19 + 8;
    if (v19 == 1)
    {
      v20 = 0;
    }

    v21 = v18[2];
    v22 = &v20[32 * v21];
    if (v21 == v18[3])
    {
      boost::container::vector<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>*,boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>&>>(v33, v18, v22, buf);
      boost::container::vec_iterator<boost::interprocess::offset_ptr<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,long,unsigned long,0ul>,false>::operator*(*v33);
    }

    else
    {
      if (v20)
      {
        v23 = v22 - v33;
      }

      else
      {
        v23 = 1;
      }

      *v33 = v23;
      if (v23 == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = &v33[v23];
      }

      boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(v24, buf);
      ++v18[2];
    }

    v2 = 1;
    goto LABEL_57;
  }

  v8 = v7;
  v9 = 1;
  while ((v9 & 1) != 0)
  {
LABEL_26:
    v8 = strtok_r(0, ",", &__lasts);
    v9 = 0;
    if (!v8)
    {
      goto LABEL_29;
    }
  }

  __endptr = 0;
  v10 = strtol(v8, &__endptr, 10);
  if (v10 <= 4294967294 && v8 != __endptr)
  {
    LODWORD(v31) = v10;
    v11 = v29;
    if (v28 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = &v28 + v28;
    }

    v13 = &v12[4 * v29];
    if (v29 == v30)
    {
      boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned int *,unsigned int>>(v33, buf, v13, &v31);
      boost::container::vec_iterator<boost::interprocess::offset_ptr<unsigned int,long,unsigned long,0ul>,false>::operator*(*v33);
    }

    else
    {
      if (v12)
      {
        v14 = v13 - v33;
      }

      else
      {
        v14 = 1;
      }

      if (v14 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = &v33[v14];
      }

      *v15 = v10;
      v29 = v11 + 1;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v33 = 136315138;
    *&v33[4] = v8;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "invalid scene ID: %s", v33, 0xCu);
  }

  v2 = 0;
LABEL_57:
  boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::~vector(buf);
  return v2;
}

void sub_1B367BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::~vector(va);
  _Unwind_Resume(a1);
}

uint64_t pf::SceneGeographyLineParser::parsePOI(pf::SceneGeographyLineParser *this, char *__s)
{
  v2 = __s;
  v196 = *MEMORY[0x1E69E9840];
  if ((*(this + 40) & 1) == 0)
  {
    *(this + 40) = 1;
  }

  v4 = strchr(__s, 44);
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v11 = MEMORY[0x1E69E9C10];
LABEL_245:
    _os_log_error_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_ERROR, "error parsing POI line: %s", buf, 0xCu);
    return 0;
  }

  *v4 = 0;
  v5 = v4 + 1;
  v6 = strchr(v4 + 1, 44);
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_245;
  }

  v7 = v6;
  if (*(this + 41) == 1)
  {
    *v6 = 0;
    v8 = v6 + 1;
    v9 = strchr(v6 + 1, 44);
    if (v9)
    {
      v10 = v8;
      v7 = v9;
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v2;
      v11 = MEMORY[0x1E69E9C10];
      goto LABEL_245;
    }

    return 0;
  }

  v10 = v5;
LABEL_13:
  *v7 = 0;
  v12 = v7 + 1;
  *buf = strtod(v5, 0);
  *&buf[8] = strtod(v10, 0);
  v13 = &v192;
  v14 = *(this + 13);
  if (v14 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = this + v14 + 104;
  }

  if (v15)
  {
    v16 = v15 - &v192;
  }

  else
  {
    v16 = 1;
  }

  v192 = v16;
  v193 = 1;
  v194 = 0;
  v195 = 0;
  v17 = *(this + 16);
  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v188, v2, this + 11);
  v18 = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(v188);
  boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::find_node_impl<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>(&v179, v17, v18, v188);
  v175 = &v193;
  if (v179 == 1)
  {
    v173 = v2;
    v174 = v18;
    __endptr = (v17 + 16);
    v182 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&__endptr);
    if (v182 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v183[v182 - 8];
    }

    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::basic_string(v19, v188);
    *(v19 + 2) = *buf;
    v20 = v19 + 48;
    v21 = v194;
    if (v192 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v192 + v192;
    }

    if (v22)
    {
      v23 = v22 - v20;
    }

    else
    {
      v23 = 1;
    }

    *(v19 + 6) = v23;
    *(v19 + 7) = 1;
    v24 = v19 + 56;
    *(v19 + 8) = v21;
    *(v19 + 9) = 0;
    if (v21)
    {
      __lasts = v21;
      v187 = 1;
      boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v185, v20, 1, v21, &__lasts, &v187);
      v25 = __lasts;
      v26 = (&v185 - v24);
      if (v185 == 1)
      {
        v26 = 0;
      }

      v27 = &v26[v185];
      *(v19 + 7) = v27;
      *(v19 + 9) = v25;
      v13 = &v192;
      if (v194)
      {
        if (v27 == 1)
        {
          v28 = 0;
        }

        else
        {
          v28 = &v24[v27];
        }

        if (v193 == 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = v175 + v193;
        }

        memmove(v28, v29, 2 * v194);
      }
    }

    v30 = v174;
    if (v182 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v31 = &v182 - &v178 + v182;
    v178 = v31;
    v32 = &v178 - &v187;
    if (v31 == 1)
    {
      v32 = 0;
    }

    v33 = v32 + v31;
    v34 = &v182;
    v35 = &v187 - &v182;
    if (v33 == 1)
    {
      v35 = 0;
    }

    __endptr = (v17 + 16);
    v182 = v35 + v33;
    v36 = *(v17 + 32);
    v37 = v36 + 1;
    if (*(v17 + 56) == 1)
    {
      v38 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v37, *(v17 + 40));
      v2 = v173;
      if (*(v17 + 24) <= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = *(v17 + 24);
      }

      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(v17, v39);
    }

    else
    {
      v2 = v173;
      if (*(v17 + 48) < v37)
      {
        v44 = v36 + (v36 >> 1);
        if (v44 > v37)
        {
          v37 = v44;
        }

        v45 = boost::unordered::detail::table<boost::unordered::detail::set<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,pf::SceneTaxonomyNodeFunctor,pf::SceneTaxonomyNodeFunctor>>::min_buckets_for_size(v37, *(v17 + 40));
        if (v45 != *(v17 + 24))
        {
          if (*(v17 + 56) == 1)
          {
            __assert_rtn("rehash_impl", "implementation.hpp", 4578, "this->buckets_");
          }

          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(v17, v45);
          boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v187, v17, *(v17 + 24));
          v168 = &v182;
          v169 = &v192;
          if (v187 == 1)
          {
            v46 = 0;
          }

          else
          {
            v46 = &v188[v187 - 8];
          }

          v47 = *v46;
          v48 = v46 - &__lasts;
          if (v47 == 1)
          {
            v48 = 0;
          }

          v49 = (v48 + v47);
          __lasts = v49;
          v50 = v49 == 1;
          v51 = &__lasts + v49;
          if (v49 == 1)
          {
            v51 = 0;
          }

          if (*(v51 + 10) != 1)
          {
            v172 = &__lasts - &v185;
            v170 = &v187 - &__lasts;
            v171 = &v187 - v183;
            do
            {
              v58 = !v50;
              v52 = v172;
              if (!v58)
              {
                v52 = 0;
              }

              v53 = &v49[v52];
              if (v53 == 1)
              {
                v54 = 0;
              }

              else
              {
                v54 = &v185 + v53;
              }

              v55 = *(v54 + 10);
              v56 = v54 + 80 - &v187;
              if (v55 == 1)
              {
                v56 = 0;
              }

              v57 = v56 + v55;
              v187 = v56 + v55;
              v58 = v56 + v55 == 1;
              v59 = v171;
              if (v58)
              {
                v59 = 0;
              }

              v60 = v59 + v57;
              if (v58)
              {
                v61 = 0;
              }

              else
              {
                v61 = &v188[v57 - 8];
              }

              if (v58)
              {
                v62 = 0;
              }

              else
              {
                v62 = &v187 - &v184;
              }

              if (v60 == 1)
              {
                v63 = 0;
              }

              else
              {
                v63 = &v183[v60];
              }

              v64 = (*(v17 + 24) - 1) & boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneTaxonomyNode>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneTaxonomyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::hash(v63);
              *(v61 + 11) = v64 & 0x7FFFFFFFFFFFFFFFLL;
              if (v62 + v57 == 1)
              {
                v65 = 0;
              }

              else
              {
                v65 = &v184 + v62 + v57;
              }

              v66 = *(v65 + 10);
              v67 = v65 + 80 - &v185;
              if (v66 == 1)
              {
                v67 = 0;
              }

              for (i = v67 + v66; i != 1; i = v75 + v74)
              {
                v69 = &v185 + i;
                if ((*(&v185 + i + 88) & 0x8000000000000000) == 0)
                {
                  break;
                }

                v70 = i + &v185 - &v187;
                if (v70 == 1)
                {
                  v69 = 0;
                }

                *(v69 + 11) = v64 | 0x8000000000000000;
                if (v70 == 1)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = &v187 - &v184;
                }

                v72 = v71 + v70;
                if (v72 == 1)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = &v184 + v72;
                }

                v74 = *(v73 + 10);
                v187 = v70;
                v75 = v73 + 80 - &v185;
                if (v74 == 1)
                {
                  v75 = 0;
                }
              }

              boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v185, v17, v64);
              v76 = &v185 + v185;
              if (v185 == 1)
              {
                v76 = 0;
              }

              if (*v76 == 1)
              {
                v77 = &__lasts - v76;
                if (__lasts == 1)
                {
                  v77 = 0;
                }

                *v76 = &__lasts[v77];
                v78 = v170;
                if (v187 == 1)
                {
                  v78 = 0;
                }

                v49 = (v78 + v187);
                __lasts = (v78 + v187);
                v79 = &__lasts + v78 + v187;
              }

              else
              {
                if (v187 == 1)
                {
                  v80 = 0;
                }

                else
                {
                  v80 = &v188[v187 - 8];
                }

                v83 = *(v80 + 10);
                v81 = v80 + 80;
                v82 = v83;
                v84 = v81 - &v184;
                if (v83 == 1)
                {
                  v84 = 0;
                }

                v85 = v84 + v82;
                v184 = v85;
                if (*v76 == 1)
                {
                  v86 = 0;
                }

                else
                {
                  v86 = &v76[*v76];
                }

                v87 = *(v86 + 10);
                v88 = v86 + 80 - v81;
                if (v87 == 1)
                {
                  v88 = 0;
                }

                *v81 = v88 + v87;
                v49 = __lasts;
                v79 = &__lasts + __lasts;
                if (__lasts == 1)
                {
                  v89 = 0;
                }

                else
                {
                  v89 = &__lasts + __lasts;
                }

                v90 = *v76;
                v91 = &v76[*v76];
                if (v90 == 1)
                {
                  v91 = 0;
                }

                v94 = *(v89 + 10);
                v92 = v89 + 80;
                v93 = v94;
                v95 = (v92 - (v91 + 80));
                if (v94 == 1)
                {
                  v95 = 0;
                }

                *(v91 + 10) = &v95[v93];
                v96 = (&v184 - v92);
                if (v85 == 1)
                {
                  v96 = 0;
                }

                *v92 = &v96[v85];
              }

              v50 = v49 == 1;
              if (v49 == 1)
              {
                v79 = 0;
              }
            }

            while (*(v79 + 10) != 1);
          }

          v34 = v168;
          v13 = v169;
          v2 = v173;
          v30 = v174;
        }
      }
    }

    v97 = v34 - &v180;
    if (v182 == 1)
    {
      v97 = 0;
    }

    v180 = v97 + v182;
    v182 = 1;
    v98 = (*(v17 + 24) - 1) & v30;
    boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&__lasts, v17, v98);
    v99 = v180;
    v100 = &v180 + v180;
    if (v180 == 1)
    {
      v100 = 0;
    }

    *(v100 + 11) = v98 & 0x7FFFFFFFFFFFFFFFLL;
    if (__lasts == 1)
    {
      v101 = 0;
    }

    else
    {
      v101 = (&__lasts + __lasts);
    }

    if (*v101 == 1)
    {
      boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v187, v17, *(v17 + 24));
      if (v187 == 1)
      {
        v102 = 0;
      }

      else
      {
        v102 = &v188[v187 - 8];
      }

      v103 = *v102;
      v104 = v102 - &v185;
      if (v103 == 1)
      {
        v104 = 0;
      }

      v105 = v104 + v103;
      v185 = v105;
      v106 = &v185 + v105;
      if (v105 == 1)
      {
        v106 = 0;
      }

      if (*(v106 + 10) != 1)
      {
        v107 = &v185 - &v184;
        if (v105 == 1)
        {
          v107 = 0;
        }

        v108 = v107 + v105;
        if (v108 == 1)
        {
          v109 = 0;
        }

        else
        {
          v109 = &v184 + v108;
        }

        v110 = *(v109 + 10);
        v111 = v109 + 80 - &v187;
        if (v110 == 1)
        {
          v111 = 0;
        }

        v112 = v111 + v110;
        if (v112 == 1)
        {
          v113 = 0;
        }

        else
        {
          v113 = &v188[v112 - 8];
        }

        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::get_bucket_pointer(&v187, v17, *(v113 + 11) & 0x7FFFFFFFFFFFFFFFLL);
        if (v187 == 1)
        {
          v114 = 0;
        }

        else
        {
          v114 = &v188[v187 - 8];
        }

        v115 = (&v180 - v114);
        if (v180 == 1)
        {
          v115 = 0;
        }

        *v114 = &v115[v180];
        v105 = v185;
      }

      if (__lasts == 1)
      {
        v116 = 0;
      }

      else
      {
        v116 = &__lasts + __lasts;
      }

      v117 = (&v185 - v116);
      if (v105 == 1)
      {
        v117 = 0;
      }

      *v116 = &v117[v105];
      v118 = &v185 + v185;
      if (v185 == 1)
      {
        v118 = 0;
      }

      v99 = v180;
      v119 = &v180 + v180;
      v122 = *(v118 + 10);
      v120 = v118 + 80;
      v121 = v122;
      v123 = (&v180 - v120);
      if (v180 == 1)
      {
        v119 = 0;
        v123 = 0;
      }

      v124 = v120 - (v119 + 80);
      if (v121 == 1)
      {
        v124 = 0;
      }

      *(v119 + 10) = v124 + v121;
      *v120 = &v123[v99];
    }

    else
    {
      v125 = v101 + *v101;
      v126 = *(v125 + 10);
      v127 = v125 - v100;
      if (v126 == 1)
      {
        v127 = 0;
      }

      *(v100 + 10) = v127 + v126;
      v128 = *v101;
      v129 = v101 + *v101;
      if (v128 == 1)
      {
        v130 = 0;
      }

      else
      {
        v130 = v129;
      }

      v131 = (&v180 - (v130 + 80));
      if (v99 == 1)
      {
        v131 = 0;
      }

      *(v130 + 10) = &v131[v99];
    }

    ++*(v17 + 32);
    v132 = &v180 - &v187;
    if (v99 == 1)
    {
      v132 = 0;
    }

    v187 = v132 + v99;
    boost::unordered::detail::node_tmp<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_tmp(&__endptr);
    v133 = &v187 - &__endptr;
    if (v187 == 1)
    {
      v133 = 0;
    }

    v134 = v133 + v187;
    v135 = &__endptr - &v176;
    if (v134 == 1)
    {
      v135 = 0;
    }

    v176 = v135 + v134;
    v177 = 1;
  }

  else
  {
    v40 = v179 + &v179 - &v187;
    v41 = &v187 - &__endptr;
    if (v40 == 1)
    {
      v41 = 0;
    }

    v42 = v41 + v40;
    v43 = &__endptr - &v176;
    if (v42 == 1)
    {
      v43 = 0;
    }

    v176 = v43 + v42;
    v177 = 0;
  }

  boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v188);
  if ((v177 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_224:
      v151 = 0;
      goto LABEL_225;
    }

    *v188 = 136446210;
    *&v188[4] = v2;
    v161 = MEMORY[0x1E69E9C10];
    v162 = "POI hash already in the index: %{public}s";
LABEL_266:
    v163 = 12;
LABEL_267:
    _os_log_error_impl(&dword_1B35C1000, v161, OS_LOG_TYPE_ERROR, v162, v188, v163);
    goto LABEL_224;
  }

  if (v176 == 1)
  {
    v136 = 0;
  }

  else
  {
    v136 = (&v176 + v176);
  }

  __lasts = 0;
  v137 = strtok_r(v12, ",", &__lasts);
  if (v137)
  {
    v138 = v137;
    while (1)
    {
      __endptr = 0;
      v139 = strtol(v138, &__endptr, 10);
      v140 = strrchr(v138, 58);
      if (!v140 || v138 == __endptr)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_224;
        }

        *v188 = 136315138;
        *&v188[4] = v2;
        v161 = MEMORY[0x1E69E9C10];
        v162 = "malformed POI line: %s";
        goto LABEL_266;
      }

      *v140 = 0;
      v141 = v140 + 1;
      v142 = strtol(v140 + 1, &__endptr, 10);
      if (v141 == __endptr)
      {
        break;
      }

      if (v139 > 255 || v139 >= *(*(this + 15) + 16))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_224;
        }

        *v188 = 136315394;
        *&v188[4] = v2;
        v189 = 2048;
        v190 = v139;
        v161 = MEMORY[0x1E69E9C10];
        v162 = "malformed POI line: %s; scene ID out of range: %ld";
LABEL_256:
        v163 = 22;
        goto LABEL_267;
      }

      v143 = v142;
      if (v142 > 255 || v142 >= *(*(this + 14) + 16))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_224;
        }

        *v188 = 136315394;
        *&v188[4] = v2;
        v189 = 2048;
        v190 = v143;
        v161 = MEMORY[0x1E69E9C10];
        v162 = "malformed POI line: %s; tfIDF out of range: %ld";
        goto LABEL_256;
      }

      v144 = v139 | (v142 << 8);
      LOWORD(v187) = v144;
      v145 = v136[7];
      v146 = v136[8];
      if (v145 == 1)
      {
        v147 = 0;
      }

      else
      {
        v147 = v136 + v145 + 56;
      }

      v148 = &v147[2 * v146];
      if (v146 == v136[9])
      {
        boost::container::vector<std::pair<unsigned char,unsigned char>,boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned char,unsigned char>*,std::pair<unsigned char,unsigned char>>>(v188, (v136 + 6), v148, &v187);
        boost::container::vec_iterator<boost::interprocess::offset_ptr<std::pair<unsigned char,unsigned char>,long,unsigned long,0ul>,false>::operator*(*v188);
      }

      else
      {
        if (v147)
        {
          v149 = v148 - v188;
        }

        else
        {
          v149 = 1;
        }

        if (v149 == 1)
        {
          v150 = 0;
        }

        else
        {
          v150 = &v188[v149];
        }

        *v150 = v144;
        ++v136[8];
      }

      v138 = strtok_r(0, ",", &__lasts);
      if (!v138)
      {
        goto LABEL_236;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_224;
    }

    *v188 = 136315138;
    *&v188[4] = v2;
    v161 = MEMORY[0x1E69E9C10];
    v162 = "malformed POI line: %s";
    goto LABEL_266;
  }

LABEL_236:
  v156 = v136[9];
  if (v156)
  {
    v157 = v136 + 6;
    if (!v136[8])
    {
      v164 = (v136 + 7);
      v165 = v136[7];
      if (v165 != 1)
      {
        *v188 = v165 + v164 - v188;
        if (*v188 != 1)
        {
          v166 = &v164[v165];
          if (v166)
          {
            if (*v157 == 1)
            {
              v167 = 0;
            }

            else
            {
              v167 = v157 + *v157;
            }

            boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v167, v166);
          }
        }
      }

      v151 = 1;
      v136[7] = 1;
      v136[9] = 0;
      goto LABEL_225;
    }

    *v188 = v136[8];
    v158 = v136[7];
    v159 = (v136 + 7) - &__endptr;
    if (v158 == 1)
    {
      v159 = 0;
    }

    __endptr = (v159 + v158);
    boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v187, v157, 24, v156, v188, &__endptr);
    if (v187 != 1)
    {
      v136[9] = *v188;
    }
  }

  v151 = 1;
LABEL_225:
  if (v195)
  {
    v152 = v175 - v188;
    if (v193 == 1)
    {
      v152 = 0;
    }

    *v188 = v152 + v193;
    v153 = &v188[v152 + v193];
    if (v152 + v193 != 1 && v153 != 0)
    {
      if (v192 == 1)
      {
        v155 = 0;
      }

      else
      {
        v155 = v13 + v192;
      }

      boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v155, v153);
    }
  }

  return v151;
}

void sub_1B367CA98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v29 = &a27 - &a26;
    if (a27 == 1)
    {
      v29 = 0;
    }

    v30 = v29 + a27;
    if (a27 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = &a27 + a27;
    }

    if (v30 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = &a26 + v30;
    }

    v33 = *(v32 + 10);
    v34 = v32 + 80 - &a28;
    if (v33 == 1)
    {
      v34 = 0;
    }

    v35 = v34 + v33;
    a28 = v35;
    *(v31 + 10) = 1;
    if (v35 != 1)
    {
      v36 = &a28 - &a25;
      do
      {
        if (v35 + v36 == 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = &a28 + v35;
        }

        v38 = *(v37 + 10);
        v39 = v37 + 80 - &a26;
        if (v38 == 1)
        {
          v39 = 0;
        }

        a25 = v36 + v35;
        a26 = v39 + v38;
        boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_node(v28, &a25);
        --*(v28 + 32);
        if (a26 == 1)
        {
          v40 = 0;
        }

        else
        {
          v40 = &a26 - &a28;
        }

        v35 = v40 + a26;
        a28 = v40 + a26;
      }

      while (v40 + a26 != 1);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1B367CBD0);
}

void sub_1B367CB84(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B367CBD0);
}

void *boost::container::vector<std::pair<unsigned char,unsigned char>,boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<unsigned char,unsigned char>*,std::pair<unsigned char,unsigned char>>>(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (v6 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a2 + a2;
  }

  v9 = *(v8 + 48) >> 1;
  if (v9 == v6)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  if (v6 >> 61 > 4)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v6;
  }

  if (v6 >> 61)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8 * v6 / 5;
  }

  v15 = v6 + 1;
  if (v14 < v9)
  {
    v9 = v14;
  }

  if (v15 > v9)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v4 - &v90;
  if (v5 == 1)
  {
    v17 = 0;
  }

  v90 = v17 + v5;
  v91 = v16;
  result = boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v89, a2, 7, v15, &v91, &v90);
  if (v90 == 1)
  {
    v86 = v5;
    v88 = a1;
    v19 = a4;
    if (v89 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = &v89 + v89;
    }

    v21 = *(a2 + 8);
    v22 = *(a2 + 16);
    if (v21 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = &v4[v21];
    }

    v24 = v20 - &v93;
    if (!v20)
    {
      v24 = 1;
    }

    v25 = &v93 - v92;
    if (v24 == 1)
    {
      v25 = 0;
    }

    v26 = v91;
    v92[0] = v25 + v24;
    v92[1] = a2;
    v92[2] = v91;
    if (!v23 || v23 == a3)
    {
      v27 = v20;
    }

    else
    {
      v27 = v20;
      if (v20)
      {
        memmove(v20, v23, a3 - v23);
        v27 = &v20[a3 - v23];
      }
    }

    v28 = v27 - &v93;
    if (!v27)
    {
      v28 = 1;
    }

    if (v28 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = (&v93 + v28);
    }

    *v29 = *v19;
    if (a3)
    {
      v30 = &v23[2 * v22];
      if (v30 != a3)
      {
        memmove(v27 + 2, a3, v30 - a3);
      }
    }

    v92[0] = 1;
    v5 = v86;
    a1 = v88;
    if (v23)
    {
      v31 = v4 - &v93;
      if (*v4 == 1)
      {
        v31 = 0;
      }

      v32 = v31 + *v4;
      v93 = v32;
      if (v32 != 1 && (&v93 + v32))
      {
        if (*a2 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = (*a2 + a2);
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v33, &v93 + v32);
      }
    }

    v34 = v20 - &v93;
    if (!v20)
    {
      v34 = 1;
    }

    v35 = (&v93 - v4);
    if (v34 == 1)
    {
      v35 = 0;
    }

    v36 = &v35[v34];
    v37 = *(a2 + 16) + 1;
    *(a2 + 8) = v36;
    *(a2 + 16) = v37;
    *(a2 + 24) = v26;
    result = boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v92);
    goto LABEL_113;
  }

  if (*v4 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = &v4[*v4];
  }

  if (v89 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = &v89 + v89;
  }

  v40 = v38 - v39;
  if (v38 == v39)
  {
    v41 = v91;
    *(a2 + 24) = v91;
    v42 = *(a2 + 16);
    if (v42 == v41)
    {
      __assert_rtn("priv_insert_forward_range_expand_forward", "vector.hpp", 2966, "this->room_enough()");
    }

    v43 = &v38[2 * v42];
    if (v43 == a3)
    {
      v70 = a3 - v92;
      if (!v38)
      {
        v70 = 1;
      }

      v71 = (v92 + v70);
      if (v70 == 1)
      {
        v71 = 0;
      }

      *v71 = *a4;
      ++*(a2 + 16);
    }

    else
    {
      v44 = v43 - 2;
      v45 = *(v43 - 1);
      v46 = v43 - v92;
      if (!v38)
      {
        v46 = 1;
      }

      if (v46 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = (v92 + v46);
      }

      *v47 = v45;
      ++*(a2 + 16);
      if (v44 != a3)
      {
        v48 = v44;
        do
        {
          v49 = *(v48 - 1);
          v48 -= 2;
          *v44 = v49;
          v44 = v48;
        }

        while (v48 != a3);
      }

      *a3 = *a4;
      a3[1] = *(a4 + 1);
    }

    goto LABEL_113;
  }

  v87 = a4;
  v88 = a1;
  v50 = v91;
  v51 = *(a2 + 16);
  v52 = &v38[2 * v51];
  v53 = v39 - v92;
  if (!v39)
  {
    v53 = 1;
  }

  v54 = (v92 - v4);
  if (v53 == 1)
  {
    v54 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = v50;
  *(a2 + 8) = &v54[v53];
  v55 = a3 - v38;
  v56 = (a3 - v38) >> 1;
  v57 = v40 >> 1;
  v58 = v56 + 1;
  if (v40 >> 1 >= v56 + 1)
  {
    if (v38 == a3 || !v38)
    {
      v61 = v39;
    }

    else
    {
      v61 = v39;
      if (v39)
      {
        v62 = v38;
        v63 = a3 - v38;
        v64 = v40 >> 1;
        v65 = v51;
        v85 = v56;
        v66 = v56 + 1;
        result = memmove(v39, v62, v63);
        v58 = v66;
        v56 = v85;
        v51 = v65;
        v57 = v64;
        v61 = &v39[v55];
      }
    }

    *(a2 + 16) = v56;
    if (v61)
    {
      v67 = v61 - v92;
    }

    else
    {
      v67 = 1;
    }

    if (v67 == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = (v92 + v67);
    }

    *v68 = *v87;
    *(a2 + 16) = v58;
    if (v57 >= v51 + 1)
    {
      a1 = v88;
      if (v56 == v51)
      {
        goto LABEL_113;
      }

      v69 = v52 - a3;
      if (v52 == a3 || !a3 || !v39)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v69 = v52 - a3;
      a1 = v88;
      if (v52 == a3)
      {
        goto LABEL_107;
      }
    }

    result = memmove(&v39[2 * v58], a3, v69);
LABEL_107:
    *(a2 + 16) = v51 + 1;
    goto LABEL_113;
  }

  v84 = v40 >> 1;
  if (v57 > v56)
  {
    v81 = v57 - v56;
    if (v38 && v39 && v38 != a3)
    {
      memmove(v39, v38, a3 - v38);
      v39 += v55;
    }

    *(a2 + 16) = (a3 - v38) >> 1;
    if (v81 == 1)
    {
      v82 = v39 - v92;
      if (!v39)
      {
        v82 = 1;
      }

      v83 = (v92 + v82);
      if (v82 == 1)
      {
        v83 = 0;
      }

      *v83 = *v87;
      *(a2 + 16) = v84 + v51;
      __assert_rtn("copy_n_and_update", "advanced_insert_int.hpp", 215, "n == 1");
    }

    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
  }

  result = memmove(v39, v38, v38 - v39);
  *(a2 + 16) = v51 + 1;
  if (&v38[v40] == a3)
  {
    v59 = v87;
    a1 = v88;
    v60 = v40 >> 1;
  }

  else
  {
    v59 = v87;
    a1 = v88;
    v60 = v40 >> 1;
    do
    {
      *v38 = v38[v40];
      v38[1] = v38[v40 + 1];
      v38 += 2;
    }

    while (&v38[v40] != a3);
  }

  *v38 = *v59;
  v38[1] = v59[1];
  if (v60 >= 2 && v52 != a3)
  {
    v72 = v38 + 3;
    v73 = a3;
    do
    {
      *(v72 - 1) = *v73;
      *v72 = v73[1];
      v72 += 2;
      v73 += 2;
    }

    while (v73 != v52);
  }

LABEL_113:
  v74 = &v4[v5];
  if (v5 == 1)
  {
    v74 = 0;
  }

  v75 = (a3 - v74);
  v76 = v4 - &v93;
  if (*v4 == 1)
  {
    v76 = 0;
  }

  v77 = &v75[*v4 + v76];
  v78 = &v93 - v92;
  if (v77 == 1)
  {
    v78 = 0;
  }

  v79 = &v77[v78];
  v80 = (v92 - a1);
  if (v79 == 1)
  {
    v80 = 0;
  }

  *a1 = &v80[v79];
  return result;
}

void sub_1B367D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::vec_iterator<boost::interprocess::offset_ptr<std::pair<unsigned char,unsigned char>,long,unsigned long,0ul>,false>::operator*(uint64_t result)
{
  if (result == 1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void pf::SceneGeographyNode::~SceneGeographyNode(pf::SceneGeographyNode *this)
{
  if (*(this + 5))
  {
    v1 = *(this + 3);
    v2 = (this + 24) - &v7;
    if (v1 == 1)
    {
      v2 = 0;
    }

    v7 = v2 + v1;
    v3 = &v7 + v2 + v1;
    if (v2 + v1 != 1 && v3 != 0)
    {
      v5 = *(this + 2);
      if (v5 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = this + v5 + 16;
      }

      boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v6, v3);
    }
  }
}

char *boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(uint64_t *a1, void *a2, char a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = 0;
  result = 0;
  v11 = a6 + *a6;
  if (*a6 == 1)
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 + *a2;
  }

  v21 = v11;
  v13 = *a5;
  v14 = *(v12 + 48) >> 1;
  if (v14 >= a4 && v13 <= v14)
  {
    v22 = 2 * v13;
    result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v12, a3 | 0x10u, 2 * a4, &v22, &v21, 2uLL);
    v9 = v21;
    *a5 = v22 >> 1;
  }

  if ((a3 & 0x10) == 0 && !result)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v20 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v20 = &unk_1F2A8A288;
  }

  v17 = result - a1;
  if (!result)
  {
    v17 = 1;
  }

  *a1 = v17;
  v18 = v9 - a6;
  if (!v9)
  {
    v18 = 1;
  }

  *a6 = v18;
  return result;
}

void *boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<std::pair<unsigned char,unsigned char>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(void *a1)
{
  v2 = a1 + *a1;
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1[1];
    v5 = *v4;
    v6 = v4 + *v4;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v7, v2);
  }

  return a1;
}

double boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(uint64_t **a1)
{
  v1 = a1 + 1;
  if (a1[1] != 1)
  {
    __assert_rtn("create_node", "implementation.hpp", 1984, "!node_");
  }

  v3 = **a1;
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 + v3;
  }

  v5 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v4, 0x60uLL);
  v6 = (v10 - v1);
  if (v5 - v10 == 1)
  {
    v6 = 0;
  }

  v7 = &v6[v5 - v10];
  a1[1] = v7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v1 + v7);
  }

  result = 0.0;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  v8[4] = 0u;
  v8[5] = xmmword_1B36A1EF0;
  return result;
}

uint64_t boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_constructor(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (v3 != 1)
  {
    v4 = *a1;
    v6 = v2 - &v6 + v3;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v4, &v6);
  }

  return a1;
}

char *boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::create_buckets(uint64_t a1, unint64_t a2)
{
  v34 = 1;
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v31 = (a1 + 16);
    v32 = 1;
    boost::unordered::detail::node_constructor<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::create_node(&v31);
    result = boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v33, (a1 + 8), a2 + 1);
    v7 = &v33 - v5;
    if (v33 == 1)
    {
      v7 = 0;
    }

    v8 = &v33[v7];
    *v5 = &v33[v7];
    if (v32 == 1)
    {
      __assert_rtn("release", "implementation.hpp", 1955, "node_");
    }

    v9 = v32 + &v32 - &v33;
    v10 = &v33 - &v34;
    if (v9 == 1)
    {
      v10 = 0;
    }

    v34 = v10 + v9;
  }

  else
  {
    v11 = v4 + v5 - &v33 + 8 * *(a1 + 24);
    v12 = 16;
    if (v11 == 1)
    {
      v12 = 0;
    }

    v13 = (v12 + v11);
    v31 = v13;
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = &v31 + v13;
    }

    v15 = *v14;
    v16 = v14 - &v34;
    if (v15 == 1)
    {
      v16 = 0;
    }

    v34 = v16 + v15;
    boost::interprocess::allocator<boost::unordered::detail::bucket<boost::interprocess::offset_ptr<boost::unordered::detail::node<boost::interprocess::allocator<boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::interprocess::offset_ptr<pf::SceneTaxonomyNode,long,unsigned long,0ul>>,long,unsigned long,0ul>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocate(&v31, (a1 + 8), a2 + 1);
    result = boost::unordered::detail::table<boost::unordered::detail::map<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>>>::destroy_buckets(a1);
    v17 = (&v31 - v5);
    if (v31 == 1)
    {
      v17 = 0;
    }

    v8 = v31 + v17;
    *(a1 + 56) = v31 + v17;
  }

  *(a1 + 24) = a2;
  if (v8 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = a2 * *(a1 + 40);
    v18 = vcvtpd_u64_f64(v19);
    if (ceil(v19) >= 1.84467441e19)
    {
      v18 = -1;
    }
  }

  *(a1 + 48) = v18;
  v20 = v5 - &v33;
  v21 = 16;
  if (v8 == 1)
  {
    v20 = 0;
  }

  v22 = &v8[8 * a2 + v20];
  if (v22 == 1)
  {
    v21 = 0;
  }

  v23 = &v22[v21];
  v31 = v23;
  v24 = &v8[v20];
  v33 = v24;
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v33 + v24;
  }

  v26 = &v31 + v23;
  if (v23 == 1)
  {
    v26 = 0;
  }

  if (v25 != v26)
  {
    do
    {
      *v25 = 1;
      v27 = v33 + 8;
      v33 = v27;
      if (v27 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = &v33 + v27;
      }

      if (v31 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = &v31 + v31;
      }
    }

    while (v25 != v28);
  }

  v29 = &v34 - &v33;
  if (v34 == 1)
  {
    v29 = 0;
  }

  v30 = (&v33 - v25);
  if (v29 + v34 == 1)
  {
    v30 = 0;
  }

  *v25 = &v30[v29 + v34];
  return result;
}

uint64_t boost::unordered::detail::node_tmp<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~node_tmp(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2 != 1)
  {
    v4 = v2 + v3;
    if (*(v2 + v3 + 72))
    {
      v5 = *(v4 + 56);
      v6 = v4 + 56 - &v15;
      if (v5 == 1)
      {
        v6 = 0;
      }

      v15 = v6 + v5;
      v7 = &v15 + v6 + v5;
      if (v6 + v5 != 1 && v7 != 0)
      {
        v9 = *(v4 + 48);
        if (v9 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = (v9 + v4 + 48);
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v10, v7);
      }
    }

    boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~basic_string(v4);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = v3 - &v15;
    if (v12 == 1)
    {
      v13 = 0;
    }

    v15 = v13 + v12;
    std::allocator_traits<boost::interprocess::allocator<boost::unordered::detail::node<boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,std::pair<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>> const,pf::SceneGeographyNode>>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::deallocate[abi:ne200100](v11, &v15);
  }

  return a1;
}

void *boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,unsigned int *,unsigned int>>(char *a1, void *a2, char *a3, _DWORD *a4)
{
  v4 = (a2 + 1);
  v5 = a2[1];
  v6 = a2[3];
  if (v6 != a2[2])
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v7 = a2;
  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 + *a2;
  }

  v9 = *(v8 + 6) >> 2;
  if (v9 == v6)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  if (v6 >> 61 > 4)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v6;
  }

  if (v6 >> 61)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8 * v6 / 5;
  }

  v15 = v6 + 1;
  if (v14 < v9)
  {
    v9 = v14;
  }

  if (v15 > v9)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v4 - &v86;
  if (v5 == 1)
  {
    v17 = 0;
  }

  v86 = v17 + v5;
  v87 = v16;
  result = boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v85, a2, 7, v15, &v87, &v86);
  if (v86 == 1)
  {
    if (v85 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v85 + v85;
    }

    v20 = v7[1];
    v21 = v7[2];
    if (v20 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v4[v20];
    }

    v23 = v19 - &v89;
    if (!v19)
    {
      v23 = 1;
    }

    v24 = &v89 - v88;
    if (v23 == 1)
    {
      v24 = 0;
    }

    v25 = v87;
    v88[0] = v24 + v23;
    v88[1] = v7;
    v88[2] = v87;
    if (!v22 || v22 == a3)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19;
      if (v19)
      {
        v84 = v87;
        v27 = v4;
        v28 = v7;
        v29 = v21;
        memmove(v19, v22, a3 - v22);
        v21 = v29;
        v7 = v28;
        v4 = v27;
        v26 = &v19[a3 - v22];
        v25 = v84;
      }
    }

    v30 = v26 - &v89;
    if (!v26)
    {
      v30 = 1;
    }

    if (v30 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = (&v89 + v30);
    }

    *v31 = *a4;
    if (a3)
    {
      v32 = &v22[4 * v21];
      if (v32 != a3)
      {
        memmove(v26 + 4, a3, v32 - a3);
      }
    }

    v88[0] = 1;
    if (v22)
    {
      v33 = v4 - &v89;
      if (*v4 == 1)
      {
        v33 = 0;
      }

      v34 = v33 + *v4;
      v89 = v34;
      if (v34 != 1 && (&v89 + v34))
      {
        if (*v7 == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = v7 + *v7;
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v35, &v89 + v34);
      }
    }

    v36 = v19 - &v89;
    if (!v19)
    {
      v36 = 1;
    }

    v37 = (&v89 - v4);
    if (v36 == 1)
    {
      v37 = 0;
    }

    v38 = &v37[v36];
    v39 = v7[2] + 1;
    v7[1] = v38;
    v7[2] = v39;
    v7[3] = v25;
    result = boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v88);
    goto LABEL_109;
  }

  if (*v4 == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = &v4[*v4];
  }

  if (v85 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = &v85 + v85;
  }

  v42 = v40 - v41;
  if (v40 == v41)
  {
    v43 = v87;
    v7[3] = v87;
    v44 = v7[2];
    if (v44 == v43)
    {
      __assert_rtn("priv_insert_forward_range_expand_forward", "vector.hpp", 2966, "this->room_enough()");
    }

    v45 = &v40[4 * v44];
    if (v45 == a3)
    {
      v69 = a3 - v88;
      if (!v40)
      {
        v69 = 1;
      }

      v70 = (v88 + v69);
      if (v69 == 1)
      {
        v70 = 0;
      }

      *v70 = *a4;
      v7[2] = v44 + 1;
    }

    else
    {
      v46 = v45 - v88;
      if (!v40)
      {
        v46 = 1;
      }

      v47 = (v88 + v46);
      if (v46 == 1)
      {
        v47 = 0;
      }

      *v47 = *(v45 - 1);
      v7[2] = v44 + 1;
      if (v45 - 4 != a3)
      {
        result = memmove(a3 + 4, a3, v45 - 4 - a3);
      }

      *a3 = *a4;
    }

    goto LABEL_109;
  }

  v83 = a1;
  v84 = a4;
  v48 = v87;
  v49 = v7[2];
  v82 = &v40[4 * v49];
  v50 = v41 - v88;
  if (!v41)
  {
    v50 = 1;
  }

  v51 = (v88 - v4);
  if (v50 == 1)
  {
    v51 = 0;
  }

  v7[2] = 0;
  v7[3] = v48;
  v7[1] = &v51[v50];
  v52 = a3 - v40;
  v53 = (a3 - v40) >> 2;
  v54 = v42 >> 2;
  v55 = v53 + 1;
  if (v42 >> 2 >= v53 + 1)
  {
    if (v40 == a3 || !v40)
    {
      v60 = v41;
    }

    else
    {
      v60 = v41;
      if (v41)
      {
        v61 = v40;
        v62 = a3 - v40;
        v63 = v42 >> 2;
        v64 = v49;
        result = memmove(v41, v61, v62);
        v49 = v64;
        v54 = v63;
        v60 = &v41[v52];
      }
    }

    if (v60)
    {
      v65 = v60 - v88;
    }

    else
    {
      v65 = 1;
    }

    if (v65 == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = (v88 + v65);
    }

    *v66 = *v84;
    v7[2] = v55;
    v67 = v49 + 1;
    if (v54 >= v49 + 1)
    {
      a1 = v83;
      if (v53 == v49)
      {
        goto LABEL_109;
      }

      v68 = v82 - a3;
      if (v82 == a3 || !a3 || !v41)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a1 = v83;
      v68 = v82 - a3;
      if (v82 == a3)
      {
        goto LABEL_108;
      }
    }

    result = memmove(&v41[4 * v55], a3, v68);
LABEL_108:
    v7[2] = v67;
    goto LABEL_109;
  }

  v56 = v49;
  v81 = v42 >> 2;
  if (v54 > v53)
  {
    v78 = v54 - v53;
    if (v40 && v41 && v40 != a3)
    {
      memmove(v41, v40, a3 - v40);
      v41 += v52;
    }

    v7[2] = v53;
    if (v78 == 1)
    {
      v79 = v41 - v88;
      if (!v41)
      {
        v79 = 1;
      }

      v80 = (v88 + v79);
      if (v79 == 1)
      {
        v80 = 0;
      }

      *v80 = *v84;
      v7[2] = v81 + v56;
      __assert_rtn("copy_n_and_update", "advanced_insert_int.hpp", 215, "n == 1");
    }

    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
  }

  result = memmove(v41, v40, v40 - v41);
  v7[2] = v56 + 1;
  if (v40)
  {
    v57 = &v40[v42];
    a1 = v83;
    v58 = v84;
    if (&v40[v42] != a3)
    {
      v59 = a3 - v57;
      result = memmove(v40, v57, a3 - v57);
      v40 += v59;
    }
  }

  else
  {
    a1 = v83;
    v58 = v84;
  }

  *v40 = *v58;
  if (v81 >= 2 && a3 && v82 != a3)
  {
    result = memmove(v40 + 4, a3, v82 - a3);
  }

LABEL_109:
  v71 = &v4[v5];
  if (v5 == 1)
  {
    v71 = 0;
  }

  v72 = (a3 - v71);
  v73 = v4 - &v89;
  if (*v4 == 1)
  {
    v73 = 0;
  }

  v74 = &v72[*v4 + v73];
  v75 = &v89 - v88;
  if (v74 == 1)
  {
    v75 = 0;
  }

  v76 = &v74[v75];
  v77 = v88 - a1;
  if (v76 == 1)
  {
    v77 = 0;
  }

  *a1 = &v76[v77];
  return result;
}

void sub_1B367DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::vec_iterator<boost::interprocess::offset_ptr<unsigned int,long,unsigned long,0ul>,false>::operator*(uint64_t result)
{
  if (result == 1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t *boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(uint64_t *a1, void *a2)
{
  v4 = a2[2];
  if (*a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 + *a2;
  }

  if (v5)
  {
    v6 = v5 - a1;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
  v7 = 1;
  a1[1] = 1;
  v8 = (a1 + 1);
  a1[2] = v4;
  a1[3] = 0;
  if (v4)
  {
    v16 = v4;
    v17 = 1;
    boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v15, a1, 1, v4, &v16, &v17);
    v9 = (&v15 - v8);
    if (v15 == 1)
    {
      v9 = 0;
    }

    v7 = &v9[v15];
    a1[1] = &v9[v15];
    a1[3] = v16;
  }

  v10 = a2[2];
  if (v10)
  {
    if (v7 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v8[v7];
    }

    v12 = a2[1];
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2 + v12 + 8;
    }

    memmove(v11, v13, 4 * v10);
  }

  return a1;
}

char *boost::container::vector<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>*,boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>&>>(char *a1, uint64_t a2, char *a3, char *a4)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (v6 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a2 + a2;
  }

  v9 = *(v8 + 48) >> 5;
  if (v9 == v6)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  if (v6 >> 61 > 4)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v6;
  }

  if (v6 >> 61)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8 * v6 / 5;
  }

  v15 = v6 + 1;
  if (v14 < v9)
  {
    v9 = v14;
  }

  if (v15 > v9)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v4 - &v166;
  if (v5 == 1)
  {
    v17 = 0;
  }

  v166 = v17 + v5;
  v167 = v16;
  boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v165, a2, 7, v15, &v167, &v166);
  if (v166 == 1)
  {
    v164 = a1;
    if (v165 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = &v165 + v165;
    }

    v19 = *(a2 + 8);
    v20 = *(a2 + 16);
    if (v19 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = &v4[v19];
    }

    v22 = v18 - &v169;
    v23 = &v169 - v168;
    v24 = v18 - &v171;
    if (v18)
    {
      v25 = v18 - &v171;
    }

    else
    {
      v22 = 1;
      v25 = 1;
    }

    if (v22 == 1)
    {
      v23 = 0;
    }

    v26 = v167;
    v168[0] = v23 + v22;
    v168[1] = a2;
    v27 = &v171 - &v169;
    if (v25 == 1)
    {
      v27 = 0;
    }

    v168[2] = v167;
    v169.i64[0] = v27 + v25;
    v170 = a2;
    if (v21 == a3)
    {
      v30 = v18;
    }

    else
    {
      v28 = v21;
      v29 = v21;
      v30 = v18;
      do
      {
        if (v30)
        {
          v31 = v24;
        }

        else
        {
          v31 = 1;
        }

        if (v31 == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = &v171 + v31;
        }

        if (*v29 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = &v28[*v29];
        }

        if (v33)
        {
          v34 = v33 - v32;
        }

        else
        {
          v34 = 1;
        }

        *v32 = v34;
        v35 = *(v29 + 1);
        v36 = v28 - v32;
        if (v35 == 1)
        {
          v36 = 0;
        }

        *(v32 + 1) = v36 + v35;
        *(v32 + 1) = *(v29 + 1);
        *(v29 + 2) = 0;
        *(v29 + 3) = 0;
        *(v29 + 1) = 1;
        v29 += 32;
        v30 += 32;
        v28 += 32;
        v24 += 32;
      }

      while (v29 != a3);
    }

    v79 = v30 - &v171;
    v80 = &v171 - &v169.u64[1];
    if (!v30)
    {
      v79 = 1;
    }

    if (v79 == 1)
    {
      v80 = 0;
    }

    v169.i64[1] = v80 + v79;
    v171 = v79;
    if (v79 == 1)
    {
      v81 = 0;
    }

    else
    {
      v81 = (&v171 + v79);
    }

    boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(v81, a4);
    v82 = &v21[32 * v20];
    if (v82 != a3)
    {
      v83 = v30 + 32;
      v84 = a3;
      v85 = a3;
      do
      {
        if (&v83[119 - &vars0] == 32)
        {
          v86 = 0;
        }

        else
        {
          v86 = v83;
        }

        if (*v85 == 1)
        {
          v87 = 0;
        }

        else
        {
          v87 = &v84[*v85];
        }

        if (v87)
        {
          v88 = v87 - v86;
        }

        else
        {
          v88 = 1;
        }

        *v86 = v88;
        v89 = *(v85 + 1);
        v90 = (v84 - v86);
        if (v89 == 1)
        {
          v90 = 0;
        }

        *(v86 + 1) = &v90[v89];
        *(v86 + 1) = *(v85 + 1);
        *(v85 + 2) = 0;
        *(v85 + 3) = 0;
        *(v85 + 1) = 1;
        v85 += 32;
        v84 += 32;
        v83 += 32;
      }

      while (v85 != v82);
    }

    v169 = vdupq_n_s64(1uLL);
    boost::container::dtl::scoped_destructor_range<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_range(v169.i64);
    v168[0] = 1;
    if (v21)
    {
      v91 = v4 - &v169;
      if (*v4 == 1)
      {
        v91 = 0;
      }

      v92 = v91 + *v4;
      v169.i64[0] = v92;
      if (v92 != 1 && &v169.i8[v92])
      {
        if (*a2 == 1)
        {
          v93 = 0;
        }

        else
        {
          v93 = (*a2 + a2);
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v93, v169.i64 + v92);
      }
    }

    v94 = v18 - &v169;
    if (!v18)
    {
      v94 = 1;
    }

    v95 = (&v169 - v4);
    if (v94 == 1)
    {
      v95 = 0;
    }

    v96 = &v95[v94];
    v97 = *(a2 + 16) + 1;
    *(a2 + 8) = v96;
    *(a2 + 16) = v97;
    *(a2 + 24) = v26;
    result = boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v168);
LABEL_233:
    a1 = v164;
    goto LABEL_234;
  }

  if (*v4 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = &v4[*v4];
  }

  if (v165 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = &v165 + v165;
  }

  v39 = v37 - v38;
  if (v37 != v38)
  {
    v164 = a1;
    v58 = v167;
    v59 = *(a2 + 16);
    v60 = &v37[32 * v59];
    v61 = v38 - &v169;
    if (!v38)
    {
      v61 = 1;
    }

    v62 = (&v169 - v4);
    if (v61 == 1)
    {
      v62 = 0;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = v58;
    *(a2 + 8) = &v62[v61];
    v63 = (a3 - v37) >> 5;
    v64 = v39 >> 5;
    v65 = v63 + 1;
    v66 = v37 - v168;
    if (!v37)
    {
      v66 = 1;
    }

    v67 = v168 - &v169;
    if (v66 == 1)
    {
      v67 = 0;
    }

    v169.i64[0] = v67 + v66;
    v169.i64[1] = a2;
    v170 = v59;
    if (v64 >= v65)
    {
      v163 = v39 >> 5;
      v98 = v59;
      if (v37 == a3)
      {
        v102 = v38;
      }

      else
      {
        v99 = v38 - v168;
        v100 = v37;
        v101 = v37;
        v102 = v38;
        do
        {
          if (v102)
          {
            v103 = v99;
          }

          else
          {
            v103 = 1;
          }

          if (v103 == 1)
          {
            v104 = 0;
          }

          else
          {
            v104 = v168 + v103;
          }

          if (*v101 == 1)
          {
            v105 = 0;
          }

          else
          {
            v105 = &v100[*v101];
          }

          if (v105)
          {
            v106 = v105 - v104;
          }

          else
          {
            v106 = 1;
          }

          *v104 = v106;
          v107 = *(v101 + 1);
          v108 = v100 - v104;
          if (v107 == 1)
          {
            v108 = 0;
          }

          *(v104 + 1) = v108 + v107;
          *(v104 + 1) = *(v101 + 1);
          *(v101 + 2) = 0;
          *(v101 + 3) = 0;
          *(v101 + 1) = 1;
          v101 += 32;
          v102 += 32;
          v100 += 32;
          v99 += 32;
        }

        while (v101 != a3);
      }

      v162 = (a3 - v37) >> 5;
      *(a2 + 16) = v63;
      v117 = v102 - v168;
      if (!v102)
      {
        v117 = 1;
      }

      v168[0] = v117;
      if (v117 == 1)
      {
        v118 = 0;
      }

      else
      {
        v118 = (v168 + v117);
      }

      boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(v118, a4);
      *(a2 + 16) = v65;
      v119 = v98 + 1;
      v120 = v98 + 1 - v163;
      if (v98 + 1 <= v163)
      {
        if (v162 != v98)
        {
          if (v60 != a3)
          {
            v134 = &v38[32 * v65];
            v135 = &v38[32 * v162] - v168 + 32;
            v136 = a3;
            v137 = a3;
            do
            {
              if (v134)
              {
                v138 = v135;
              }

              else
              {
                v138 = 1;
              }

              if (v138 == 1)
              {
                v139 = 0;
              }

              else
              {
                v139 = v168 + v138;
              }

              if (*v137 == 1)
              {
                v140 = 0;
              }

              else
              {
                v140 = &v136[*v137];
              }

              if (v140)
              {
                v141 = v140 - v139;
              }

              else
              {
                v141 = 1;
              }

              *v139 = v141;
              v142 = *(v137 + 1);
              v143 = v136 - v139;
              if (v142 == 1)
              {
                v143 = 0;
              }

              *(v139 + 1) = v143 + v142;
              *(v139 + 1) = *(v137 + 1);
              *(v137 + 2) = 0;
              *(v137 + 3) = 0;
              *(v137 + 1) = 1;
              v137 += 32;
              v134 += 32;
              v136 += 32;
              v135 += 32;
            }

            while (v137 != v60);
          }

          *(a2 + 16) = v119;
        }
      }

      else
      {
        if (v163 != v65)
        {
          v121 = &v38[32 * v65];
          v122 = v162 - v163 + 1;
          v123 = &v38[32 * v162] - v168 + 32;
          v124 = a3;
          v125 = a3;
          do
          {
            if (v121)
            {
              v126 = v123;
            }

            else
            {
              v126 = 1;
            }

            if (v126 == 1)
            {
              v127 = 0;
            }

            else
            {
              v127 = v168 + v126;
            }

            if (*v125 == 1)
            {
              v128 = 0;
            }

            else
            {
              v128 = &v124[*v125];
            }

            if (v128)
            {
              v129 = v128 - v127;
            }

            else
            {
              v129 = 1;
            }

            *v127 = v129;
            v130 = *(v125 + 1);
            v131 = v124 - v127;
            if (v130 == 1)
            {
              v131 = 0;
            }

            *(v127 + 1) = v131 + v130;
            *(v127 + 1) = *(v125 + 1);
            *(v125 + 2) = 0;
            *(v125 + 3) = 0;
            *(v125 + 1) = 1;
            v125 += 32;
            v121 += 32;
            v124 += 32;
            v123 += 32;
          }

          while (!__CFADD__(v122++, 1));
        }

        v170 -= v120;
        v169.i64[0] += 32 * v120;
        *(a2 + 16) = v119;
        v133 = &a3[32 * (v163 - v65)];
        if (v133 != v37)
        {
          while (v133 != v60)
          {
            if (v133 != v37)
            {
              boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_move_assign<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>(v37, v133);
            }

            v133 += 32;
            v37 += 32;
          }
        }
      }

      v169.i64[0] = 1;
      v170 = 0;
    }

    else
    {
      v68 = v39 >> 5;
      if (v64 > v63)
      {
        v151 = v59;
        if (v37 != a3)
        {
          v152 = v38 - v168;
          v153 = v37;
          do
          {
            if (v38)
            {
              v154 = v152;
            }

            else
            {
              v154 = 1;
            }

            v168[0] = v154;
            if (v154 == 1)
            {
              v155 = 0;
            }

            else
            {
              v155 = v168 + v154;
            }

            if (*v153 == 1)
            {
              v156 = 0;
            }

            else
            {
              v156 = &v37[*v153];
            }

            if (v156)
            {
              v157 = v156 - v155;
            }

            else
            {
              v157 = 1;
            }

            *v155 = v157;
            v158 = *(v153 + 1);
            v159 = v37 - v155;
            if (v158 == 1)
            {
              v159 = 0;
            }

            *(v155 + 1) = v159 + v158;
            *(v155 + 1) = *(v153 + 1);
            *(v153 + 2) = 0;
            *(v153 + 3) = 0;
            *(v153 + 1) = 1;
            v153 += 32;
            v38 += 32;
            v37 += 32;
            v152 += 32;
          }

          while (v153 != a3);
        }

        *(a2 + 16) = v63;
        if (v64 - v63 == 1)
        {
          v160 = v38 - v168;
          if (!v38)
          {
            v160 = 1;
          }

          v168[0] = v160;
          if (v160 == 1)
          {
            v161 = 0;
          }

          else
          {
            v161 = (v168 + v160);
          }

          boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(v161, a4);
          *(a2 + 16) = v68 + v151;
          v169.i64[0] = 1;
          v170 = 0;
          __assert_rtn("copy_n_and_update", "advanced_insert_int.hpp", 187, "n == 1");
        }

        __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 181, "n == 1");
      }

      v69 = v38 - v168;
      v70 = v37;
      v71 = v39 >> 5;
      v72 = v37;
      do
      {
        if (v38)
        {
          v73 = v69;
        }

        else
        {
          v73 = 1;
        }

        v168[0] = v73;
        if (v73 == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = v168 + v73;
        }

        if (*v72 == 1)
        {
          v75 = 0;
        }

        else
        {
          v75 = &v70[*v72];
        }

        if (v75)
        {
          v76 = v75 - v74;
        }

        else
        {
          v76 = 1;
        }

        *v74 = v76;
        v77 = *(v72 + 1);
        v78 = v70 - v74;
        if (v77 == 1)
        {
          v78 = 0;
        }

        *(v74 + 1) = v78 + v77;
        *(v74 + 1) = *(v72 + 1);
        *(v72 + 2) = 0;
        *(v72 + 3) = 0;
        *(v72 + 1) = 1;
        v72 += 32;
        v38 += 32;
        v70 += 32;
        v69 += 32;
        --v71;
      }

      while (v71);
      v169.i64[0] = 1;
      v170 = 0;
      *(a2 + 16) = v59 + 1;
      while (&v37[v39] != a3)
      {
        if (v39)
        {
          boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_move_assign<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>(v37, &v37[v39]);
        }

        v37 += 32;
      }

      if (v37 != a4)
      {
        v110 = *(a4 + 1);
        v109 = a4 + 8;
        v111 = v109 + v110;
        if (v110 == 1)
        {
          v112 = 0;
        }

        else
        {
          v112 = v111;
        }

        boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::assign<unsigned int *>(v37, v112, &v112[4 * v109[1]]);
      }

      if (v68 >= 2 && v60 != a3)
      {
        v113 = v37 + 32;
        v114 = a3;
        do
        {
          if (v114 != v113)
          {
            boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_move_assign<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>(v113, v114);
          }

          v114 += 32;
          v113 += 32;
        }

        while (v114 != v60);
      }
    }

    result = boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(&v169);
    goto LABEL_233;
  }

  v40 = v167;
  *(a2 + 24) = v167;
  v41 = *(a2 + 16);
  if (v41 == v40)
  {
    __assert_rtn("priv_insert_forward_range_expand_forward", "vector.hpp", 2966, "this->room_enough()");
  }

  v42 = &v37[32 * v41];
  if (v42 == a3)
  {
    v115 = a3 - &v169;
    if (!v37)
    {
      v115 = 1;
    }

    v169.i64[0] = v115;
    if (v115 == 1)
    {
      v116 = 0;
    }

    else
    {
      v116 = (v169.i64 + v115);
    }

    result = boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::vector(v116, a4);
    ++*(a2 + 16);
  }

  else
  {
    result = v42 - 32;
    v44 = *(v42 - 4);
    v45 = v42 - &v169;
    if (!v37)
    {
      v45 = 1;
    }

    v46 = &v169.i8[v45];
    if (v45 == 1)
    {
      v46 = 0;
    }

    if (v44 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = &result[v44];
    }

    if (v47)
    {
      v48 = v47 - v46;
    }

    else
    {
      v48 = 1;
    }

    *v46 = v48;
    v51 = *(v42 - 3);
    v49 = v42 - 24;
    v50 = v51;
    v52 = v49 - (v46 + 8);
    if (v51 == 1)
    {
      v52 = 0;
    }

    *(v46 + 1) = v52 + v50;
    *(v46 + 1) = *(v49 + 8);
    *(v49 + 1) = 0;
    *(v49 + 2) = 0;
    *v49 = 1;
    ++*(a2 + 16);
    if (result != a3)
    {
      do
      {
        v53 = result - 32;
        boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_move_assign<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>(result, result - 4);
        result = v53;
      }

      while (v53 != a3);
    }

    if (a4 != a3)
    {
      v55 = *(a4 + 1);
      v54 = a4 + 8;
      v56 = v54 + v55;
      if (v55 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      result = boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::assign<unsigned int *>(a3, v57, &v57[4 * v54[1]]);
    }
  }

LABEL_234:
  v144 = &v4[v5];
  if (v5 == 1)
  {
    v144 = 0;
  }

  v145 = (a3 - v144);
  v146 = v4 - v168;
  if (*v4 == 1)
  {
    v146 = 0;
  }

  v147 = &v145[*v4 + v146];
  v148 = v168 - &v169;
  if (v147 == 1)
  {
    v148 = 0;
  }

  v149 = &v147[v148];
  v150 = &v169 - a1;
  if (v149 == 1)
  {
    v150 = 0;
  }

  *a1 = &v149[v150];
  return result;
}

void sub_1B367EB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::vec_iterator<boost::interprocess::offset_ptr<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,long,unsigned long,0ul>,false>::operator*(uint64_t result)
{
  if (result == 1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

char *boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::~vector(char *a1)
{
  if (*(a1 + 3))
  {
    v2 = *(a1 + 1);
    v3 = a1 - &v8;
    if (v2 == 1)
    {
      v3 = 0;
    }

    v9 = v3 + v2;
    v4 = &v9 + v3 + v2;
    if (v3 + v2 != 1 && v4 != 0)
    {
      if (*a1 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = &a1[*a1];
      }

      boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v6, v4);
    }
  }

  return a1;
}

void *boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(void *a1)
{
  v2 = a1 + *a1;
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1[1];
    v5 = *v4;
    v6 = v4 + *v4;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v7, v2);
  }

  return a1;
}

uint64_t *boost::container::dtl::scoped_destructor_range<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_range(uint64_t *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (*a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + *a1;
  }

  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 + v2;
  }

  if (v4 != v5)
  {
    do
    {
      if (v4)
      {
        v6 = v4 - &v11;
      }

      else
      {
        v6 = 1;
      }

      v11 = v6;
      boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v11);
      v7 = a1[1];
      v8 = *a1 + 32;
      *a1 = v8;
      if (v8 == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = a1 + v8;
      }

      if (v7 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3 + v7;
      }
    }

    while (v4 != v9);
  }

  return a1;
}

char *boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_move_assign<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>(void *a1, void *a2)
{
  v4 = a2 + 2;
  v3 = a2[2];
  if (a1 == a2 && v3)
  {
    __assert_rtn("priv_move_assign", "vector.hpp", 2480, "this != &x || x.size() == 0");
  }

  v5 = (a2 + 1);
  if (*a2 == 1)
  {
    result = 0;
  }

  else
  {
    result = a2 + *a2;
  }

  if (*a1 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 + *a1;
  }

  if (result == v7)
  {
    v9 = (a1 + 1);
    v8 = a1[1];
    a1[2] = 0;
    if (v8 != 1)
    {
      v50 = v8 + v9 - &v50;
      if (v50 != 1)
      {
        if (&v9[v8])
        {
          result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(result, &v9[v8]);
        }
      }
    }

    v10 = (v5 - v9);
    if (*v5 == 1)
    {
      v10 = 0;
    }

    a1[1] = &v10[*v5];
    *(a1 + 1) = *v4;
    *v5 = 1;
    v4[1] = 0;
    goto LABEL_73;
  }

  v11 = *v5;
  v12 = v5 - &v50;
  if (*v5 == 1)
  {
    v12 = 0;
  }

  v13 = v12 + v11;
  if (v12 + v11 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = &v50 - &v44;
  }

  v15 = v14 + v13;
  v16 = &v50 - &v43;
  if (v13 == 1)
  {
    v16 = 0;
  }

  v17 = v16 + v13;
  v43 = v17;
  v44 = v14 + v13;
  if (v17 == 1 && v3 != 0)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v19 = &v44 - v45;
  if (v15 == 1)
  {
    v19 = 0;
  }

  v20 = v19 + v15;
  if (v20 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = &v45[v20];
  }

  v22 = v17 + 4 * v3;
  v43 = v22;
  v23 = &v43 - &v50;
  if (v22 == 1)
  {
    v23 = 0;
  }

  v24 = v23 + v22;
  if (v24 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v50 + v24;
  }

  v26 = v25 - v21;
  v27 = (v25 - v21) >> 2;
  if (v27 <= a1[3])
  {
LABEL_63:
    v40 = a1[1];
    if (v40 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = a1 + v40 + 8;
    }

    v42 = a1[2];
    if (v27 <= v42)
    {
      if (v25 == v21)
      {
LABEL_72:
        a1[2] = v27;
        goto LABEL_73;
      }
    }

    else
    {
      if (v42)
      {
        memmove(v41, v21, 4 * v42);
        v21 += 4 * v42;
        v41 += 4 * v42;
      }

      v26 = 4 * (v27 - v42);
    }

    result = memmove(v41, v21, v26);
    goto LABEL_72;
  }

  v29 = (a1 + 1);
  v28 = a1[1];
  v30 = (a1 + 1) - &v48;
  if (v28 == 1)
  {
    v30 = 0;
  }

  v48 = v30 + v28;
  v49 = (v25 - v21) >> 2;
  result = boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v47, a1, 3, v49, &v49, &v48);
  if (v48 != 1)
  {
    a1[3] = v49;
    goto LABEL_63;
  }

  v31 = v29 - &v46;
  if (*v29 == 1)
  {
    v31 = 0;
  }

  v32 = v31 + *v29;
  v46 = v32;
  if (v32 != 1)
  {
    a1[2] = 0;
    v50 = v32 + &v46 - &v50;
    if (v50 != 1)
    {
      if ((&v46 + v32))
      {
        if (*a1 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = a1 + *a1;
        }

        result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v33, &v46 + v32);
      }
    }
  }

  v34 = 0;
  v35 = (&v47 - v29);
  if (v47 == 1)
  {
    v35 = 0;
  }

  v36 = &v35[v47];
  v37 = v49;
  a1[2] = 0;
  a1[3] = v37;
  a1[1] = v36;
  if (v36 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = &v29[v36];
  }

  if (v21 && v25 != v21 && v38)
  {
    result = memmove(v38, v21, v25 - v21);
    v39 = &v38[v26];
    v34 = a1[2];
  }

  else
  {
    v39 = v38;
  }

  a1[2] = v34 + ((v39 - v38) >> 2);
LABEL_73:
  *v4 = 0;
  return result;
}

void *boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::assign<unsigned int *>(void *result, char *__src, char *a3)
{
  v4 = __src;
  v5 = result;
  v6 = a3 - __src;
  v7 = (a3 - __src) >> 2;
  if (v7 <= result[3])
  {
    goto LABEL_27;
  }

  v9 = (result + 1);
  v8 = result[1];
  v10 = (result + 1) - &v30;
  if (v8 == 1)
  {
    v10 = 0;
  }

  v30 = v10 + v8;
  v31 = (a3 - __src) >> 2;
  result = boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v29, result, 3, v7, &v31, &v30);
  if (v30 != 1)
  {
    v5[3] = v31;
LABEL_27:
    v22 = v5[1];
    if (v22 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = v5 + v22 + 8;
    }

    v24 = v5[2];
    if (v7 <= v24)
    {
      if (a3 == v4)
      {
LABEL_37:
        v5[2] = v7;
        return result;
      }

      v26 = v23;
      v27 = v4;
      v25 = v6;
    }

    else
    {
      if (v24)
      {
        memmove(v23, v4, 4 * v24);
        v4 += 4 * v24;
        v23 += 4 * v24;
      }

      v25 = 4 * (v7 - v24);
      v26 = v23;
      v27 = v4;
    }

    result = memmove(v26, v27, v25);
    goto LABEL_37;
  }

  v11 = v9 - &v28;
  if (*v9 == 1)
  {
    v11 = 0;
  }

  v12 = v11 + *v9;
  v28 = v12;
  if (v12 != 1)
  {
    v5[2] = 0;
    v32 = v12 + &v28 - &v32;
    v13 = &v28 + v12;
    if (v32 != 1 && v13 != 0)
    {
      if (*v5 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v5 + *v5;
      }

      result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v15, v13);
    }
  }

  v16 = 0;
  v17 = (&v29 - v9);
  if (v29 == 1)
  {
    v17 = 0;
  }

  v18 = &v17[v29];
  v19 = v31;
  v5[2] = 0;
  v5[3] = v19;
  v5[1] = v18;
  if (v18 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = &v9[v18];
  }

  if (v4 && v4 != a3 && v20)
  {
    result = memmove(v20, v4, v6);
    v21 = &v20[v6];
    v16 = v5[2];
  }

  else
  {
    v21 = v20;
  }

  v5[2] = v16 + ((v21 - v20) >> 2);
  return result;
}

void *boost::container::dtl::scoped_destructor_n<boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_destructor_n(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    if (*a1 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1 + *a1;
    }

    v4 = v3 - &v7;
    do
    {
      a1[2] = v2 - 1;
      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 1;
      }

      v7 = v5;
      boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::destroy(&v7);
      v3 += 32;
      v2 = a1[2];
      v4 += 32;
    }

    while (v2);
  }

  return a1;
}

char *boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(uint64_t *a1, void *a2, char a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = 0;
  result = 0;
  v11 = a6 + *a6;
  if (*a6 == 1)
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 + *a2;
  }

  v21 = v11;
  v13 = *a5;
  v14 = *(v12 + 48) >> 2;
  if (v14 >= a4 && v13 <= v14)
  {
    v22 = 4 * v13;
    result = boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_allocate(v12, a3 | 0x10u, 4 * a4, &v22, &v21, 4uLL);
    v9 = v21;
    *a5 = v22 >> 2;
  }

  if ((result & 3) != 0)
  {
    __assert_rtn("allocation_command", "rbtree_best_fit.hpp", 698, "0 == ((std::size_t)ret % ::boost::container::dtl::alignment_of<T>::value)");
  }

  if ((a3 & 0x10) == 0 && !result)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v20 = boost::interprocess::interprocess_exception::interprocess_exception(exception, "::boost::interprocess::bad_alloc");
    *v20 = &unk_1F2A8A288;
  }

  v17 = result - a1;
  if (!result)
  {
    v17 = 1;
  }

  *a1 = v17;
  v18 = v9 - a6;
  if (!v9)
  {
    v18 = 1;
  }

  *a6 = v18;
  return result;
}

void *boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(void *a1)
{
  v2 = a1 + *a1;
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1[1];
    v5 = *v4;
    v6 = v4 + *v4;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v7, v2);
  }

  return a1;
}

void *boost::container::vector<double,boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,double *,double &>>(char *a1, void *a2, char *a3, void *a4)
{
  v4 = (a2 + 1);
  v5 = a2[1];
  v6 = a2[3];
  if (v6 != a2[2])
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v7 = a2;
  if (*a2 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 + *a2;
  }

  v9 = *(v8 + 6) >> 3;
  if (v9 == v6)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  if (v6 >> 61 > 4)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v6;
  }

  if (v6 >> 61)
  {
    v14 = v13;
  }

  else
  {
    v14 = 8 * v6 / 5;
  }

  v15 = v6 + 1;
  if (v14 < v9)
  {
    v9 = v14;
  }

  if (v15 > v9)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v9;
  }

  v17 = v4 - &v86;
  if (v5 == 1)
  {
    v17 = 0;
  }

  v86 = v17 + v5;
  v87 = v16;
  result = boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>::allocation_command(&v85, a2, 7, v15, &v87, &v86);
  if (v86 == 1)
  {
    if (v85 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = &v85 + v85;
    }

    v20 = v7[1];
    v21 = v7[2];
    if (v20 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = &v4[v20];
    }

    v23 = v19 - &v89;
    if (!v19)
    {
      v23 = 1;
    }

    v24 = &v89 - v88;
    if (v23 == 1)
    {
      v24 = 0;
    }

    v25 = v87;
    v88[0] = v24 + v23;
    v88[1] = v7;
    v88[2] = v87;
    if (!v22 || v22 == a3)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19;
      if (v19)
      {
        v84 = v87;
        v27 = v4;
        v28 = v7;
        v29 = v21;
        memmove(v19, v22, a3 - v22);
        v21 = v29;
        v7 = v28;
        v4 = v27;
        v26 = &v19[a3 - v22];
        v25 = v84;
      }
    }

    v30 = v26 - &v89;
    if (!v26)
    {
      v30 = 1;
    }

    if (v30 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = (&v89 + v30);
    }

    *v31 = *a4;
    if (a3)
    {
      v32 = &v22[8 * v21];
      if (v32 != a3)
      {
        memmove(v26 + 8, a3, v32 - a3);
      }
    }

    v88[0] = 1;
    if (v22)
    {
      v33 = v4 - &v89;
      if (*v4 == 1)
      {
        v33 = 0;
      }

      v34 = v33 + *v4;
      v89 = v34;
      if (v34 != 1 && (&v89 + v34))
      {
        if (*v7 == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = v7 + *v7;
        }

        boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v35, &v89 + v34);
      }
    }

    v36 = v19 - &v89;
    if (!v19)
    {
      v36 = 1;
    }

    v37 = (&v89 - v4);
    if (v36 == 1)
    {
      v37 = 0;
    }

    v38 = &v37[v36];
    v39 = v7[2] + 1;
    v7[1] = v38;
    v7[2] = v39;
    v7[3] = v25;
    result = boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(v88);
    goto LABEL_109;
  }

  if (*v4 == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = &v4[*v4];
  }

  if (v85 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = &v85 + v85;
  }

  v42 = v40 - v41;
  if (v40 == v41)
  {
    v43 = v87;
    v7[3] = v87;
    v44 = v7[2];
    if (v44 == v43)
    {
      __assert_rtn("priv_insert_forward_range_expand_forward", "vector.hpp", 2966, "this->room_enough()");
    }

    v45 = &v40[8 * v44];
    if (v45 == a3)
    {
      v69 = a3 - v88;
      if (!v40)
      {
        v69 = 1;
      }

      v70 = (v88 + v69);
      if (v69 == 1)
      {
        v70 = 0;
      }

      *v70 = *a4;
      v7[2] = v44 + 1;
    }

    else
    {
      v46 = v45 - v88;
      if (!v40)
      {
        v46 = 1;
      }

      v47 = (v88 + v46);
      if (v46 == 1)
      {
        v47 = 0;
      }

      *v47 = *(v45 - 1);
      v7[2] = v44 + 1;
      if (v45 - 8 != a3)
      {
        result = memmove(a3 + 8, a3, v45 - 8 - a3);
      }

      *a3 = *a4;
    }

    goto LABEL_109;
  }

  v83 = a1;
  v84 = a4;
  v48 = v87;
  v49 = v7[2];
  v82 = &v40[8 * v49];
  v50 = v41 - v88;
  if (!v41)
  {
    v50 = 1;
  }

  v51 = (v88 - v4);
  if (v50 == 1)
  {
    v51 = 0;
  }

  v7[2] = 0;
  v7[3] = v48;
  v7[1] = &v51[v50];
  v52 = a3 - v40;
  v53 = (a3 - v40) >> 3;
  v54 = v42 >> 3;
  v55 = v53 + 1;
  if (v42 >> 3 >= v53 + 1)
  {
    if (v40 == a3 || !v40)
    {
      v60 = v41;
    }

    else
    {
      v60 = v41;
      if (v41)
      {
        v61 = v40;
        v62 = a3 - v40;
        v63 = v42 >> 3;
        v64 = v49;
        result = memmove(v41, v61, v62);
        v49 = v64;
        v54 = v63;
        v60 = &v41[v52];
      }
    }

    if (v60)
    {
      v65 = v60 - v88;
    }

    else
    {
      v65 = 1;
    }

    if (v65 == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = (v88 + v65);
    }

    *v66 = *v84;
    v7[2] = v55;
    v67 = v49 + 1;
    if (v54 >= v49 + 1)
    {
      a1 = v83;
      if (v53 == v49)
      {
        goto LABEL_109;
      }

      v68 = v82 - a3;
      if (v82 == a3 || !a3 || !v41)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a1 = v83;
      v68 = v82 - a3;
      if (v82 == a3)
      {
        goto LABEL_108;
      }
    }

    result = memmove(&v41[8 * v55], a3, v68);
LABEL_108:
    v7[2] = v67;
    goto LABEL_109;
  }

  v56 = v49;
  v81 = v42 >> 3;
  if (v54 > v53)
  {
    v78 = v54 - v53;
    if (v40 && v41 && v40 != a3)
    {
      memmove(v41, v40, a3 - v40);
      v41 += v52;
    }

    v7[2] = v53;
    if (v78 == 1)
    {
      v79 = v41 - v88;
      if (!v41)
      {
        v79 = 1;
      }

      v80 = (v88 + v79);
      if (v79 == 1)
      {
        v80 = 0;
      }

      *v80 = *v84;
      v7[2] = v81 + v56;
      __assert_rtn("copy_n_and_update", "advanced_insert_int.hpp", 187, "n == 1");
    }

    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 181, "n == 1");
  }

  result = memmove(v41, v40, v40 - v41);
  v7[2] = v56 + 1;
  if (v40)
  {
    v57 = &v40[v42];
    a1 = v83;
    v58 = v84;
    if (&v40[v42] != a3)
    {
      v59 = a3 - v57;
      result = memmove(v40, v57, a3 - v57);
      v40 += v59;
    }
  }

  else
  {
    a1 = v83;
    v58 = v84;
  }

  *v40 = *v58;
  if (v81 >= 2 && a3 && v82 != a3)
  {
    result = memmove(v40 + 8, a3, v82 - a3);
  }

LABEL_109:
  v71 = &v4[v5];
  if (v5 == 1)
  {
    v71 = 0;
  }

  v72 = (a3 - v71);
  v73 = v4 - &v89;
  if (*v4 == 1)
  {
    v73 = 0;
  }

  v74 = &v72[*v4 + v73];
  v75 = &v89 - v88;
  if (v74 == 1)
  {
    v75 = 0;
  }

  v76 = &v74[v75];
  v77 = v88 - a1;
  if (v76 == 1)
  {
    v77 = 0;
  }

  *a1 = &v76[v77];
  return result;
}

void sub_1B367FAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::vec_iterator<boost::interprocess::offset_ptr<double,long,unsigned long,0ul>,false>::operator*(uint64_t result)
{
  if (result == 1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::dtl::scoped_array_deallocator<boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>::~scoped_array_deallocator(void *a1)
{
  v2 = a1 + *a1;
  if (*a1 != 1 && v2 != 0)
  {
    v4 = a1[1];
    v5 = *v4;
    v6 = v4 + *v4;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>::priv_deallocate(v7, v2);
  }

  return a1;
}

void pf::SceneGeographyLineParser::~SceneGeographyLineParser(pf::SceneGeographyLineParser *this)
{
  *this = &unk_1F2A8A3F8;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(this + 48);

  JUMPOUT(0x1B8C64390);
}

{
  *this = &unk_1F2A8A3F8;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::~basic_managed_mapped_file(this + 48);
}

pf::SceneGeographyLineParser *pf::SceneGeographyLineParser::SceneGeographyLineParser(pf::SceneGeographyLineParser *this, const char *a2, const char *a3, size_t a4)
{
  *this = &unk_1F2A8A3F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *(this + 20) = 0;
  LOWORD(v17) = 420;
  boost::interprocess::basic_managed_mapped_file<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::basic_managed_mapped_file(this + 48, a2, 0x10000000uLL, &v17);
  v7 = *(this + 6);
  v8 = v7 - (this + 88);
  v9 = v7 - (this + 96);
  if (!v7)
  {
    v8 = 1;
    v9 = 1;
  }

  *(this + 11) = v8;
  *(this + 12) = v9;
  if (v7)
  {
    v10 = v7 - (this + 104);
  }

  else
  {
    v10 = 1;
  }

  *(this + 13) = v10;
  v11 = boost::interprocess::segment_manager_base<boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>>::allocate(v7, a4 + 8);
  *(this + 2) = v11;
  memcpy(v11, a3, a4);
  *(this + 4) = *(this + 2) + a4;
  v12 = *(this + 6);
  v18 = xmmword_1B36A1D60;
  v16 = v12;
  v17 = &unk_1F2A8A018;
  v19 = 0x80000001B36A3A2CLL & 0x7FFFFFFFFFFFFFFFLL;
  v20 = &v16;
  *(this + 14) = boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v12, "floatmap", &v17);
  v13 = *(this + 6);
  v18 = xmmword_1B36A1D60;
  v19 = 0x80000001B36A3CBFLL & 0x7FFFFFFFFFFFFFFFLL;
  v20 = &v16;
  v17 = &unk_1F2A8A048;
  *(this + 15) = boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v13, "scenes", &v17);
  v14 = *(this + 6);
  v18 = xmmword_1B36A1D70;
  v17 = &unk_1F2A89FB8;
  v19 = 0x80000001B36A4045 & 0x7FFFFFFFFFFFFFFFLL;
  v20 = &v16;
  *(this + 16) = boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>::priv_generic_construct(v14, "POI", &v17);
  return this;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::unordered::unordered_map<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,pf::SceneGeographyNode,boost::hash<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,std::equal_to<boost::container::basic_string<char,std::char_traits<char>,boost::interprocess::allocator<char,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>>,boost::interprocess::allocator<pf::SceneGeographyNode,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>>,false,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>* const&>::construct_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = -16 - a2;
    do
    {
      v5 = **(result + 32);
      if (v5)
      {
        v6 = v5 - v16;
      }

      else
      {
        v6 = 1;
      }

      if (v6 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = &v16[v6];
      }

      if (v7)
      {
        v8 = v7 - v17;
      }

      else
      {
        v8 = 1;
      }

      *a2 = 0;
      if (v8 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = &v17[v8];
      }

      v10 = v9 - v18;
      v11 = v9 == 0;
      if (!v9)
      {
        v10 = 1;
      }

      v12 = &v9[v4];
      if (v11)
      {
        v12 = 1;
      }

      if (v10 == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = &v18[v10];
      }

      if (v13)
      {
        v14 = &v13[v4 + 8];
      }

      else
      {
        v14 = 1;
      }

      *(a2 + 8) = v14;
      *(a2 + 16) = v12;
      *(a2 + 24) = xmmword_1B36A1F00;
      *(a2 + 40) = 1065353216;
      *(a2 + 48) = xmmword_1B36A1D80;
      v15 = *a4 + 1;
      *a4 = v15;
      v4 -= 64;
      a2 += 64;
    }

    while (v15 < a3);
  }

  return result;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::container::vector<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::allocator<boost::container::vector<unsigned int,boost::interprocess::allocator<unsigned int,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,false,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>* const&>::construct_n(uint64_t result, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = -a2;
    do
    {
      v5 = **(result + 32);
      if (v5)
      {
        v6 = v5 - v10;
      }

      else
      {
        v6 = 1;
      }

      if (v6 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = &v10[v6];
      }

      if (v7)
      {
        v8 = &v7[v4];
      }

      else
      {
        v8 = 1;
      }

      *a2 = v8;
      a2[1] = 1;
      a2[2] = 0;
      a2[3] = 0;
      v9 = *a4 + 1;
      *a4 = v9;
      v4 -= 32;
      a2 += 4;
    }

    while (v9 < a3);
  }

  return result;
}

uint64_t boost::interprocess::ipcdetail::CtorArgN<boost::container::vector<double,boost::interprocess::allocator<double,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>>,void>,false,boost::interprocess::segment_manager<char,boost::interprocess::rbtree_best_fit<boost::interprocess::null_mutex_family,boost::interprocess::offset_ptr<void,long,unsigned long,0ul>,0ul>,boost::interprocess::iset_index>* const&>::construct_n(uint64_t result, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = -a2;
    do
    {
      v5 = **(result + 32);
      if (v5)
      {
        v6 = v5 - v10;
      }

      else
      {
        v6 = 1;
      }

      if (v6 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = &v10[v6];
      }

      if (v7)
      {
        v8 = &v7[v4];
      }

      else
      {
        v8 = 1;
      }

      *a2 = v8;
      a2[1] = 1;
      a2[2] = 0;
      a2[3] = 0;
      v9 = *a4 + 1;
      *a4 = v9;
      v4 -= 32;
      a2 += 4;
    }

    while (v9 < a3);
  }

  return result;
}

uint64_t pf::SceneGeographyLineParser::parseVersion(pf::SceneGeographyLineParser *this, char *__str)
{
  if (strtol(__str, 0, 10) >= 2)
  {
    *(this + 41) = 1;
  }

  return 1;
}

id PFStoryColorGradeCategoryFromValenceArousal(double a1, double a2)
{
  v4 = 0;
  v5 = 0;
  v6 = &unk_1E7B66560;
  v7 = 1.79769313e308;
  do
  {
    v8 = hypot(*(v6 - 1) - a1, *v6 - a2);
    if (v8 < v7)
    {
      v5 = v4;
      v7 = v8;
    }

    ++v4;
    v6 += 3;
  }

  while (v4 != 13);
  v9 = *(&Vertices_11770 + 3 * v5);

  return v9;
}

__CFString *PFStoryColorGradeCategoryNamed(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  VertexIndexForColorGradeCategory = _GetVertexIndexForColorGradeCategory(v1);
  if ((VertexIndexForColorGradeCategory & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v1;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "unsupported color grade category '%@'", &v5, 0xCu);
    }

    v3 = @"undefined";
  }

  else
  {
    v3 = *(&Vertices_11770 + 3 * VertexIndexForColorGradeCategory);
  }

  return v3;
}

uint64_t _GetVertexIndexForColorGradeCategory(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = &Vertices_11770;
  while (*v3 != v1 && ([*v3 isEqualToString:v1] & 1) == 0)
  {
    ++v2;
    v3 += 3;
    if (v2 == 13)
    {
      v2 = 0xFFFFFFFFLL;
      break;
    }
  }

  return v2;
}

double PFStoryColorGradeCategoryGetValence(void *a1)
{
  VertexIndexForColorGradeCategory = _GetVertexIndexForColorGradeCategory(a1);
  if ((VertexIndexForColorGradeCategory & 0x80000000) != 0)
  {
    return 0.0;
  }

  else
  {
    return *(&Vertices_11770 + 3 * VertexIndexForColorGradeCategory + 1);
  }
}

double PFStoryColorGradeCategoryGetArousal(void *a1)
{
  VertexIndexForColorGradeCategory = _GetVertexIndexForColorGradeCategory(a1);
  if ((VertexIndexForColorGradeCategory & 0x80000000) != 0)
  {
    return 0.0;
  }

  else
  {
    return *(&Vertices_11770 + 3 * VertexIndexForColorGradeCategory + 2);
  }
}

id PFStoryColorGradeSupportedCategories()
{
  if (PFStoryColorGradeSupportedCategories_onceToken != -1)
  {
    dispatch_once(&PFStoryColorGradeSupportedCategories_onceToken, &__block_literal_global_11816);
  }

  v1 = PFStoryColorGradeSupportedCategories_supportedCategories;

  return v1;
}

void __PFStoryColorGradeSupportedCategories_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:13];
  for (i = 0; i != 312; i += 24)
  {
    [v3 addObject:*(&Vertices_11770 + i)];
  }

  v1 = [v3 copy];
  v2 = PFStoryColorGradeSupportedCategories_supportedCategories;
  PFStoryColorGradeSupportedCategories_supportedCategories = v1;
}

void sub_1B36809B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1B3681DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3682180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3682B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3683908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1B3684058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3686540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PFErrorOrUnderlyingErrorMatchesCodesByDomain(void *a1, void *a2)
{
  v2 = PFUnderlyingErrorThatMatchesCodesByDomain(a1, a2);
  v3 = v2 != 0;

  return v3;
}

BOOL PFIsErrorOrUnderlyingErrorFileNotFound(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E696A798];
  v7[0] = *MEMORY[0x1E696A250];
  v7[1] = v1;
  v8[0] = &unk_1F2AAB998;
  v8[1] = &unk_1F2AAB9B0;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = PFErrorOrUnderlyingErrorMatchesCodesByDomain(v3, v4);

  return v5;
}

void sub_1B36873A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(a1);
}

void PFCachingArchiveIndexSetSkipChecksumValidation(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  atomic_store(a1, s_skipChecksumValidation);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = a1;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFChecksum set skip: %d", v2, 8u);
  }
}

uint64_t PFArchiveFileIsAppleInternal()
{
  if (PFArchiveFileIsAppleInternal::onceToken[0] != -1)
  {
    dispatch_once(PFArchiveFileIsAppleInternal::onceToken, &__block_literal_global_12613);
  }

  return PFArchiveFileIsAppleInternal::isAppleInternal;
}

uint64_t __PFArchiveFileIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  PFArchiveFileIsAppleInternal::isAppleInternal = result;
  return result;
}

id PFAssetBundleAllAuxiliaryResourceKeys()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"PFAssetBundlePathSegmentationDataKey";
  v2[1] = @"PFAssetBundlePathAmbientPosterDataKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

void *UTTypeForBundlePathKey(void *a1)
{
  v1 = UTTypeForBundlePathKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&UTTypeForBundlePathKey_onceToken, &__block_literal_global_13039);
  }

  v3 = [UTTypeForBundlePathKey_utiTypesByPathKey objectForKeyedSubscript:v2];

  return v3;
}

void __UTTypeForBundlePathKey_block_invoke()
{
  v26[18] = *MEMORY[0x1E69E9840];
  v25[0] = @"PFAssetBundlePathPhotoKey";
  v0 = *MEMORY[0x1E6982E30];
  v24 = [*MEMORY[0x1E6982E30] identifier];
  v26[0] = v24;
  v25[1] = @"PFAssetBundlePathVideoKey";
  v1 = *MEMORY[0x1E6982EE8];
  v23 = [*MEMORY[0x1E6982EE8] identifier];
  v26[1] = v23;
  v25[2] = @"PFAssetBundlePathAudioKey";
  v22 = [*MEMORY[0x1E6982CD0] identifier];
  v26[2] = v22;
  v25[3] = @"PFAssetBundlePathAlternatePhotoKey";
  v21 = [v0 identifier];
  v26[3] = v21;
  v25[4] = @"PFAssetBundlePathFullSizePhotoKey";
  v20 = [v0 identifier];
  v26[4] = v20;
  v25[5] = @"PFAssetBundlePathFullSizeVideoKey";
  v19 = [v1 identifier];
  v26[5] = v19;
  v25[6] = @"PFAssetBundlePathAdjustmentDataKey";
  v18 = +[PFUniformTypeUtilities supplementalResourceAAEType];
  v17 = [v18 identifier];
  v26[6] = v17;
  v25[7] = @"PFAssetBundlePathOriginalAdjustmentDataKey";
  v16 = +[PFUniformTypeUtilities supplementalResourceAAEType];
  v15 = [v16 identifier];
  v26[7] = v15;
  v25[8] = @"PFAssetBundlePathAdjustmentSecondaryDataKey";
  v2 = *MEMORY[0x1E6982D60];
  v3 = [*MEMORY[0x1E6982D60] identifier];
  v26[8] = v3;
  v25[9] = @"PFAssetBundlePathAdjustmentBasePhotoKey";
  v4 = [v0 identifier];
  v26[9] = v4;
  v25[10] = @"PFAssetBundlePathPairedVideoKey";
  v5 = [v1 identifier];
  v26[10] = v5;
  v25[11] = @"PFAssetBundlePathFullSizePairedVideoKey";
  v6 = [v1 identifier];
  v26[11] = v6;
  v25[12] = @"PFAssetBundlePathAdjustmentBasePairedVideoKey";
  v7 = [v1 identifier];
  v26[12] = v7;
  v25[13] = @"PFAssetBundlePathSpatialOvercapturePhotoKey";
  v8 = [v0 identifier];
  v26[13] = v8;
  v25[14] = @"PFAssetBundlePathSpatialOvercapturePairedVideoKey";
  v9 = [v1 identifier];
  v26[14] = v9;
  v25[15] = @"PFAssetBundlePathSpatialOvercaptureVideoKey";
  v10 = [v1 identifier];
  v26[15] = v10;
  v25[16] = @"PFAssetBundlePathSegmentationDataKey";
  v11 = [v2 identifier];
  v26[16] = v11;
  v25[17] = @"PFAssetBundlePathAmbientPosterDataKey";
  v12 = [v2 identifier];
  v26[17] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:18];
  v14 = UTTypeForBundlePathKey_utiTypesByPathKey;
  UTTypeForBundlePathKey_utiTypesByPathKey = v13;
}

id createURLForAbsolutePathKeyInDictionary(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = copiedStringValueForKeyInDictionary(v3, a2);
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
    if (v5)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] could not create a URL for the path key %@. Path value in manifest: %@.", &v7, 0x16u);
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

id copiedStringValueForKeyInDictionary(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:a1];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ErrorForCode(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a2 < 0xFFFFFFFA)
  {
    v7 = @"unknown error";
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = off_1E7B66C18[a2 + 6];
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %s", @"zlib-error: ", v7, v8];
    goto LABEL_8;
  }

LABEL_7:
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", @"zlib-error: ", v7, v12];
  v9 = LABEL_8:;
  [v6 setObject:v9 forKeyedSubscript:@"English Error String - Not Localized"];

  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:PFZlibErrorDomain code:a2 userInfo:v6];

  return v10;
}

uint64_t __Block_byref_object_copy__13549(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3691E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v62 - 176), 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v62 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1B3692A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1B3692DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  MEMORY[0x1EEDBBE60](videoDesc, usePixelAspectRatio, useCleanAperture);
  result.height = v4;
  result.width = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}