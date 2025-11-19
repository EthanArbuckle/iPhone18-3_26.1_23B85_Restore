uint64_t boost::archive::iterators::detail::to_6_bit<int>::operator()(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7F || (result = boost::archive::iterators::detail::to_6_bit<int>::operator()(int)const::lookup_table[a2], result == -1))
  {
    v3 = &unk_286FF2E50;
    v4 = 1;
    boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(&v3);
  }

  return result;
}

void boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_286FF2E50;
  exception[2] = *(a1 + 8);
}

void boost::archive::iterators::dataflow_exception::~dataflow_exception(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

const char *boost::archive::iterators::dataflow_exception::what(boost::archive::iterators::dataflow_exception *this)
{
  v1 = *(this + 2);
  if (v1 > 4)
  {
    return "unknown exception code";
  }

  else
  {
    return off_279A119C8[v1];
  }
}

void boost::archive::basic_text_oprimitive<std::ostream>::save(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v1 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0340);
  }

  boost::archive::archive_exception::archive_exception(v2, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save(void *a1, __int16 a2)
{
  v2 = a2;
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<short>(a1, &v2);
}

{
  v2 = a2;
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<short>(a1, &v2);
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &unk_286FF2DC0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(MEMORY[0x277D82698]);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::ostream::flush();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

void sub_25E35A3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver(v14);
  std::locale::~locale((v12 + 56));
  MEMORY[0x25F8B0420](v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(uint64_t a1)
{
  if (!MEMORY[0x25F8B0490]())
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
    (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(&v4);
    std::ostream::put();
    std::ostream::flush();
  }

  boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver((a1 + 64));
  std::locale::~locale((a1 + 56));
  MEMORY[0x25F8B0420](a1 + 40);
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::put(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v1 = *MEMORY[0x277D85DE8];

  return std::ostream::put();
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::put(uint64_t result, _BYTE *a2)
{
  if (*a2)
  {
    v2 = result;
    v3 = a2 + 1;
    do
    {
      v4 = *v2;
      result = std::ostream::put();
    }

    while (*v3++);
  }

  return result;
}

uint64_t *boost::archive::basic_text_oprimitive<std::ostream>::save_binary(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = result;
    if ((*(*result + *(**result - 24) + 32) & 5) != 0)
    {
      boost::archive::archive_exception::archive_exception(v23, 13, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v23);
    }

    std::ostream::put();
    v6 = *v3;
    v17 = a2;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v10 = v6;
    v11 = a2 + a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::ostream_iterator<char>,0>(&v17, &v11, &v10, v23);
    v7 = a3 % 3;
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = std::ostream::put();
      if (v7 == 1)
      {
        result = std::ostream::put();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::ostream_iterator<char>,0>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 10);
  v7 = *(a1 + 3);
  v8 = *(a1 + 8);
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = *(a2 + 10);
  v12 = *(a2 + 3);
  v13 = *(a2 + 8);
  v27 = *a1;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = 0;
  v32 = v8;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = 0;
  v26 = v13;
  v20 = *a3;
  v21 = v9;
  result = std::__copy_impl::operator()[abi:ne200100]<boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::ostream_iterator<char>>(&v27, &v21, &v20, &v33);
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = v38;
  *a4 = v33;
  *(a4 + 8) = v15;
  *(a4 + 10) = v16;
  *(a4 + 12) = v17;
  *(a4 + 16) = 0;
  *(a4 + 32) = v18;
  *(a4 + 40) = v19;
  return result;
}

void *std::__copy_impl::operator()[abi:ne200100]<boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::insert_linebreaks<boost::archive::iterators::base64_from_binary<boost::archive::iterators::transform_width<char const*,6,8,char>,char>,76,char const>,boost::archive::iterators::ostream_iterator<char>>@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  while (1)
  {
    v8 = *a1;
    if (*a1 != *a2)
    {
      v9 = *(a1 + 32);
      goto LABEL_4;
    }

    *(a1 + 16) = 1;
    v9 = *(a1 + 32);
    if (!*(a1 + 12))
    {
      break;
    }

LABEL_4:
    if (v9 != 76)
    {
      if ((*(a1 + 8) & 1) == 0)
      {
        boost::archive::iterators::transform_width<char const*,6,8,char>::fill(a1);
      }

      v10 = *(boost::archive::iterators::detail::from_6_bit<char>::operator()(char)const::lookup_table + *(a1 + 9));
    }

    result = boost::archive::iterators::ostream_iterator<char>::put_val(a3);
    v12 = *(a1 + 32);
    if (v12 == 76)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 + 1;
      *(a1 + 8) = 0;
    }

    *(a1 + 32) = v13;
  }

  v14 = *(a1 + 8);
  v15 = *(a1 + 10);
  *a4 = v8;
  *(a4 + 8) = v14;
  *(a4 + 10) = v15;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 32) = v9;
  *(a4 + 40) = *a3;
  return result;
}

uint64_t boost::archive::iterators::transform_width<char const*,6,8,char>::fill(uint64_t result)
{
  LOBYTE(v1) = 0;
  *(result + 9) = 0;
  v2 = *(result + 12);
  v3 = *(result + 10);
  v4 = 6;
  do
  {
    if (!v2)
    {
      if (*(result + 16))
      {
        v3 = 0;
        v2 = v4;
      }

      else
      {
        v5 = (*result)++;
        v3 = *v5;
        v2 = 8;
      }

      *(result + 10) = v3;
    }

    if (v2 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v2;
    }

    v1 = (v1 << v6) | (v3 >> (v2 - v6)) & ~(-1 << v6);
    *(result + 9) = v1;
    *(result + 12) = v2 - v6;
    v7 = v4 > v2;
    v2 -= v6;
    v4 -= v6;
  }

  while (v7);
  *(result + 8) = 1;
  return result;
}

std::locale *boost::archive::basic_ostream_locale_saver<char,std::char_traits<char>>::~basic_ostream_locale_saver(std::locale *a1)
{
  locale = a1->__locale_;
  std::ostream::flush();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

void *boost::archive::iterators::ostream_iterator<char>::put_val(void *a1)
{
  result = *a1;
  if (result)
  {
    result = std::ostream::put();
    if (*(*a1 + *(**a1 - 24) + 32))
    {
      *a1 = 0;
    }
  }

  return result;
}

uint64_t *boost::serialization::extended_type_info::key_register(uint64_t *this)
{
  if (this[2])
  {
    v1 = this;
    instance = boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
    v3 = v1;
    return std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__emplace_multi<boost::serialization::extended_type_info const*>(instance, &v3);
  }

  return this;
}

void boost::serialization::extended_type_info::key_unregister(boost::serialization::extended_type_info *this)
{
  if (*(this + 2))
  {
    if ((boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
    {
      instance = boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
      v8 = this;
      v3 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__lower_bound<boost::serialization::extended_type_info const*>(instance, &v8, instance[1], instance + 1);
      v8 = this;
      v4 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__upper_bound<boost::serialization::extended_type_info const*>(instance, &v8, instance[1], (instance + 1));
      if (v3 != v4)
      {
        while (v3[4] != this)
        {
          v5 = v3[1];
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = *v5;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = v3[2];
              v7 = *v6 == v3;
              v3 = v6;
            }

            while (!v7);
          }

          v3 = v6;
          if (v6 == v4)
          {
            return;
          }
        }

        std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__remove_node_pointer(instance, v3);
        operator delete(v3);
      }
    }
  }
}

uint64_t boost::serialization::extended_type_info::find(boost::serialization::extended_type_info *this, const char *a2)
{
  instance = boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
  v8 = 0;
  v9 = this;
  v6 = &v7;
  v7 = &unk_286FF2EE8;
  v4 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::find<boost::serialization::extended_type_info const*>(instance, &v6);
  if (instance + 1 == v4)
  {
    return 0;
  }

  else
  {
    return v4[4];
  }
}

uint64_t boost::serialization::extended_type_info::extended_type_info(uint64_t this, int a2, const char *a3)
{
  *this = &unk_286FF2E78;
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

uint64_t boost::serialization::extended_type_info::operator<(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return (**a1)(a1);
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t boost::serialization::extended_type_info::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a1[2] == a2[2])
  {
    return (*(*a1 + 8))();
  }

  return 0;
}

uint64_t *boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance()
{
  {
    boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
  }

  return &boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance(void)::t;
}

uint64_t boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::~singleton_wrapper(uint64_t a1)
{
  boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__emplace_multi<boost::serialization::extended_type_info const*>(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v4[4] = *a2;
  leaf_high = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__find_leaf_high(a1, &v7, v4 + 4);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v7, leaf_high, v4);
  return v4;
}

void *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        v7 = v4[4];
        if (v6 == v7)
        {
          break;
        }

        v8 = *(v6 + 16);
        v9 = *(v7 + 16);
        if (v8 == v9 || (strcmp(v8, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_11;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_11:
  *a2 = v5;
  return result;
}

void *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__lower_bound<boost::serialization::extended_type_info const*>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6 || (v8 = *(v7 + 16), v9 = *(v6 + 16), v8 == v9))
      {
        a4 = v5;
      }

      else
      {
        v10 = strcmp(v8, v9);
        if (v10 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v10 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__upper_bound<boost::serialization::extended_type_info const*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = *(v5 + 32);
      if (v6 == v7 || (v8 = *(v6 + 16), v9 = *(v7 + 16), v8 == v9))
      {
        v11 = (v5 + 8);
      }

      else
      {
        v10 = strcmp(v8, v9);
        v11 = (v5 + 8 * (v10 >= 0));
        if (v10 < 0)
        {
          a4 = v5;
        }
      }

      v5 = *v11;
    }

    while (*v11);
  }

  return a4;
}

void *std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::find<boost::serialization::extended_type_info const*>(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>::__lower_bound<boost::serialization::extended_type_info const*>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (*a2 != v6)
  {
    v7 = *(*a2 + 16);
    v8 = *(v6 + 16);
    if (v7 != v8 && strcmp(v7, v8) < 0)
    {
      return v3;
    }
  }

  return v5;
}

void __cxx_global_var_init_0()
{
  {
    boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::m_instance = boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance();
  }
}

BOOL std::type_info::before[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v2 & 0x8000000000000000) != 0 && (v3 & 0x8000000000000000) != 0)
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) >> 31;
  }

  else
  {
    return v2 < v3;
  }
}

void *boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(boost::serialization::typeid_system::extended_type_info_typeid_0 *this, const char *a2)
{
  result = boost::serialization::extended_type_info::extended_type_info(this, 1, a2);
  *result = &unk_286FF2F48;
  result[3] = 0;
  return result;
}

uint64_t *boost::serialization::typeid_system::extended_type_info_typeid_0::type_register(boost::serialization::typeid_system::extended_type_info_typeid_0 *this, const std::type_info *a2)
{
  *(this + 3) = a2;
  instance = boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
  v5 = this;
  return std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::__emplace_multi<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v5);
}

uint64_t *boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(uint64_t *this)
{
  v1 = this;
  if (this[3])
  {
    if ((boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
    {
      instance = boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
      v4 = v1;
      this = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v4);
      if (instance + 1 != this)
      {
        v3 = this;
        do
        {
          std::__tree<boost::archive::detail::basic_serializer const*,boost::archive::detail::basic_serializer_map::type_info_pointer_compare,std::allocator<boost::archive::detail::basic_serializer const*>>::__remove_node_pointer(instance, v3);
          operator delete(v3);
          v4 = v1;
          this = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v4);
          v3 = this;
        }

        while (instance + 1 != this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t boost::serialization::typeid_system::extended_type_info_typeid_0::get_extended_type_info(boost::serialization::typeid_system::extended_type_info_typeid_0 *this, const std::type_info *a2)
{
  boost::serialization::extended_type_info::extended_type_info(v8, 1, 0);
  v8[0] = &unk_286FF2FA8;
  v9 = a2;
  instance = boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
  v7 = v8;
  v4 = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(instance, &v7);
  if (instance + 1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v8[0] = &unk_286FF2FA8;
  v9 = 0;
  boost::serialization::extended_type_info::~extended_type_info(v8);
  return v5;
}

void sub_25E35B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = 0;
  boost::serialization::extended_type_info::~extended_type_info(&a11);
  _Unwind_Resume(a1);
}

void boost::serialization::typeid_system::extended_type_info_typeid_arg::~extended_type_info_typeid_arg(boost::serialization::typeid_system::extended_type_info_typeid_arg *this)
{
  *this = &unk_286FF2FA8;
  *(this + 3) = 0;
  boost::serialization::extended_type_info::~extended_type_info(this);
}

{
  *this = &unk_286FF2FA8;
  *(this + 3) = 0;
  boost::serialization::extended_type_info::~extended_type_info(this);

  operator delete(v1);
}

uint64_t *boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance()
{
  {
    boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
  }

  return &boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance(void)::t;
}

uint64_t boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::~singleton_wrapper(uint64_t a1)
{
  boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t *std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::__emplace_multi<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v4[4] = *a2;
  leaf_high = std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::__find_leaf_high(a1, &v7, v4 + 4);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(a1, v7, leaf_high, v4);
  return v4;
}

void *std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!(***a3)(*a3, v4[4]))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>::find<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = (***(v3 + 32))(*(v3 + 32), *a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || (***a2)(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void __cxx_global_var_init_1()
{
  {
    boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::m_instance = boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance();
  }
}

uint64_t boost::archive::detail::archive_serializer_map<boost::archive::text_iarchive>::insert(uint64_t *a1)
{
  instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance();

  return boost::archive::detail::basic_serializer_map::insert(instance, a1);
}

void boost::archive::detail::archive_serializer_map<boost::archive::text_iarchive>::erase(uint64_t a1)
{
  if ((boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
  {
    instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance();

    boost::archive::detail::basic_serializer_map::erase(instance, a1);
  }
}

uint64_t boost::archive::detail::archive_serializer_map<boost::archive::text_iarchive>::find(const boost::serialization::extended_type_info *a1)
{
  instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance();

  return boost::archive::detail::basic_serializer_map::find(instance, a1);
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::load_override()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = operator new(0x88uLL);
  *v0 = 0;
  *__n = xmmword_25E377DE0;
  __src = v0;
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load();
}

{
    ;
  }
}

void sub_25E35B810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::archive::archive_exception::~archive_exception(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::init()
{
  v3 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v1 = 0;
  v2 = 0;
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load();
}

{
    ;
  }
}

void sub_25E35B980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::exception a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

boost::archive::detail::basic_iarchive *boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::basic_text_iarchive(boost::archive::detail::basic_iarchive *a1, int a2)
{
  result = boost::archive::detail::basic_iarchive::basic_iarchive(a1, a2);
  *result = &unk_286FF3008;
  return result;
}

{
  result = boost::archive::detail::basic_iarchive::basic_iarchive(a1, a2);
  *result = &unk_286FF3008;
  return result;
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::~basic_text_iarchive(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);

  operator delete(v1);
}

void *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, _DWORD *a2)
{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((a1 + 40));
  *a2 = 0;
  return result;
}

{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((a1 + 40));
  *a2 = 0;
  return result;
}

uint64_t boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, _BYTE *a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a1 + 40));
  v4 = *(a1 + 40);
  std::istream::get();
  v5 = *(a1 + 40);
  result = std::istream::read();
  *a2 = 0;
  return result;
}

uint64_t boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, _DWORD *a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a1 + 40));
  v4 = *(a1 + 40);
  std::istream::get();
  v5 = *(a1 + 40);
  result = std::istream::read();
  *a2 = 0;
  return result;
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, std::string *a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a1 + 40));
  v4 = *(a1 + 40);
  std::istream::get();
  std::string::resize(a2, 0, 0);
}

uint64_t boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, std::wstring *a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a1 + 40));
  std::wstring::resize(a2, 0, 0);
  v4 = *(a1 + 40);
  std::istream::get();
  v5 = *(a1 + 40);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  return std::istream::read();
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl()
{
  boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive();
}

{
    ;
  }
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::~text_iarchive_impl(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
}

uint64_t *boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance()
{
  {
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance();
  }

  return &boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance(void)::t;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A0EFE8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::~singleton_wrapper(uint64_t a1)
{
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, *(a1 + 8));
  return a1;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::library_version_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02C0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void __cxx_global_var_init_2()
{
  {
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::m_instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance();
  }
}

uint64_t boost::archive::detail::archive_serializer_map<boost::archive::text_oarchive>::insert(uint64_t *a1)
{
  instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance();

  return boost::archive::detail::basic_serializer_map::insert(instance, a1);
}

void boost::archive::detail::archive_serializer_map<boost::archive::text_oarchive>::erase(uint64_t a1)
{
  if ((boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_is_destroyed(void)::is_destroyed_flag & 1) == 0)
  {
    instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance();

    boost::archive::detail::basic_serializer_map::erase(instance, a1);
  }
}

uint64_t boost::archive::detail::archive_serializer_map<boost::archive::text_oarchive>::find(const boost::serialization::extended_type_info *a1)
{
  instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance();

  return boost::archive::detail::basic_serializer_map::find(instance, a1);
}

uint64_t boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    if (v1 == 2)
    {

      boost::archive::basic_text_oprimitive<std::ostream>::put();
    }

    if (v1 == 1)
    {
      boost::archive::basic_text_oprimitive<std::ostream>::put();
    }
  }

  else
  {
    *(result + 40) = 2;
  }

  return result;
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::save_override(boost::archive::detail::basic_oarchive *a1, char **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, *a2);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save();
}

void sub_25E35C140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(boost::archive *a1)
{
  v2 = boost::archive::BOOST_ARCHIVE_SIGNATURE(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, v2);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save();
}

void sub_25E35C1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

boost::archive::detail::basic_oarchive *boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::basic_text_oarchive(boost::archive::detail::basic_oarchive *a1, int a2)
{
  result = boost::archive::detail::basic_oarchive::basic_oarchive(a1, a2);
  *result = &unk_286FF30F8;
  *(result + 10) = 0;
  return result;
}

{
  result = boost::archive::detail::basic_oarchive::basic_oarchive(a1, a2);
  *result = &unk_286FF30F8;
  *(result + 10) = 0;
  return result;
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::~basic_text_oarchive(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);

  operator delete(v1);
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(uint64_t a1, int *a2)
{
  v2 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

{
  v2 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
  }

  boost::archive::save_access::save_primitive<boost::archive::text_oarchive,unsigned long>(a1);
}

{
  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
  }

  boost::archive::save_access::save_primitive<boost::archive::text_oarchive,unsigned long>(a1);
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl()
{
  boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive();
}

{
    ;
  }
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::~text_oarchive_impl(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
}

uint64_t *boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance()
{
  {
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance();
  }

  return &boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance(void)::t;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::~singleton_wrapper(uint64_t a1)
{
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  std::__tree<boost::archive::detail::basic_iarchive_impl::cobject_type>::destroy(a1, *(a1 + 8));
  return a1;
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::serialization::library_version_type>(void *a1, unsigned __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B03A0);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void __cxx_global_var_init_3()
{
  {
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::m_instance = boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance();
  }
}

void logHandle()
{
  dispatch_once(&logHandle(void)::onceToken, &__block_literal_global_0);
}

{
  dispatch_once(&logHandle(void)::onceToken, &__block_literal_global_4);
}

void boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>()
{
  __assert_rtn("destroy_buffer", "unlimited_storage.hpp", 393, "n > 0u");
}

{
  __assert_rtn("destroy_buffer", "unlimited_storage.hpp", 392, "p");
}

void boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct()
{
  __assert_rtn("factory", "factory.hpp", 38, "false");
}

{
  __assert_rtn("construct", "extended_type_info_typeid.hpp", 129, "false");
}

void boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance()
{
  {
    qword_280C913C0 = 0;
    qword_280C913B8 = 0;
    boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance(void)::t = &qword_280C913B8;
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::~singleton_wrapper, &boost::serialization::singleton<std::multiset<boost::serialization::extended_type_info const*,boost::serialization::detail::key_compare,std::allocator<boost::serialization::extended_type_info const*>>>::get_instance(void)::t, &dword_25E225000);
  }
}

void boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance()
{
  {
    qword_280C913D8 = 0;
    qword_280C913D0 = 0;
    boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance(void)::t = &qword_280C913D0;
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::~singleton_wrapper, &boost::serialization::singleton<std::multiset<boost::serialization::typeid_system::extended_type_info_typeid_0 const*,boost::serialization::typeid_system::type_compare,std::allocator<boost::serialization::typeid_system::extended_type_info_typeid_0 const*>>>::get_instance(void)::t, &dword_25E225000);
  }
}

void boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance()
{
  {
    qword_280C91408 = 0;
    qword_280C91400 = 0;
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance(void)::t = &qword_280C91400;
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::~singleton_wrapper, &boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_iarchive>>::get_instance(void)::t, &dword_25E225000);
  }
}

void boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance()
{
  {
    qword_280C913F0 = 0;
    qword_280C913E8 = 0;
    boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance(void)::t = &qword_280C913E8;
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::~singleton_wrapper, &boost::serialization::singleton<boost::archive::detail::extra_detail::map<boost::archive::text_oarchive>>::get_instance(void)::t, &dword_25E225000);
  }
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load_override()
{
    ;
  }
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init()
{
    ;
  }
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load()
{
    ;
  }
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save()
{
    ;
  }
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::save_override()
{
    ;
  }
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init()
{
    ;
  }
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken()
{
    ;
  }
}

void boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive()
{
    ;
  }
}

void boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive()
{
    ;
  }
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_binary()
{
    ;
  }
}

void boost::archive::basic_text_oprimitive<std::ostream>::put()
{
    ;
  }
}

void boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive()
{
    ;
  }
}

void boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive()
{
    ;
  }
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  MEMORY[0x2821F7560](this);
}

{
  MEMORY[0x2821F7568](this);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  MEMORY[0x2821F7570](this);
}

{
  MEMORY[0x2821F7578](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7828]();
}

{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

{
  return MEMORY[0x2821F7860]();
}

{
  return MEMORY[0x2821F7868]();
}

{
  return MEMORY[0x2821F7878]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}