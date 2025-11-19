boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::extended_type_info_typeid(a1) = &unk_286FF1518;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF15C0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF15C0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>::load_object_data(uint64_t a1, char **a2, uint64_t *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  v6 = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(v4 + 5);
  if (v7 >= 4u)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v4 + 5);
  }

  std::vector<double>::reserve(a3, v6);
  v5 = v6;
  boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<unsigned long long>>(v4, a3, &v5);
}

void boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<unsigned long long>>(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  std::vector<double>::resize(a2, *a3);
  v6 = *a2;
  if ((*a3)--)
  {
    do
    {
      v8 = v6 + 8;
      boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long long>((a1 + 40));
      v9 = (*a3)--;
      v6 = v8;
    }

    while (v9);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1618;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1618;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1618;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1698;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1698;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1698;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1718;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1718;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1718;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1798;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1798;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1798;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1818;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1818;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::extended_type_info_typeid(a1) = &unk_286FF1818;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF18C0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF18C0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>::load_object_data(uint64_t a1, char **a2, void *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  v6 = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(v4 + 5);
  if (v7 >= 4u)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v4 + 5);
  }

  std::vector<pps::AxisEnum>::reserve(a3, v6);
  v5 = v6;
  boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>(v4, a3, &v5);
}

void *std::vector<pps::AxisEnum>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(result, a2);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>(uint64_t a1, void *a2, unint64_t *a3)
{
  std::vector<pps::AxisEnum>::resize(a2, *a3);
  for (i = *a2; (*a3)--; ++i)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<int>((a1 + 40));
    *i = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<pps::AxisEnum>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<pps::AxisEnum>::__append(a1, a2 - v2);
  }
}

void std::vector<pps::AxisEnum>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1918;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1918;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1918;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1998;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1998;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::extended_type_info_typeid(a1) = &unk_286FF1998;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF1A40;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1A40;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<std::map<int,std::vector<std::string>>>(uint64_t result)
{
  if (result)
  {
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(result, *(result + 8));

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>::load_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  boost::serialization::load_map_collection<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>(v4, a3);
}

void boost::serialization::load_map_collection<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 8);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(a2, *(a2 + 8));
  *a2 = v4;
  *(a2 + 16) = 0;
  *v4 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(a1, &v7);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>((a1 + 40));
  if (v7 >= 4u)
  {
    v8 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((a1 + 40));
  }

  v5 = *a2;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::vector<std::string>>>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1A98;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1A98;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::extended_type_info_typeid(a1) = &unk_286FF1A98;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF1B40;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1B40;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<std::pair<int const,std::vector<std::string>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 8);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x25F8B04C0](v1, 0x1020C40E72D6CFBLL);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>::load_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::basic_text_iprimitive<std::istream>::load<int>(v4 + 5);
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(v4, a3 + 8, instance);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1B98;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1B98;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::vector<std::string>>::extended_type_info_typeid(a1) = &unk_286FF1B98;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::vector<std::string>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF1C40;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1C40;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::vector<std::string>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void **boost::serialization::access::destroy<std::vector<std::string>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x25F8B04C0](v1, 0x20C40960023A9);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>::load_object_data(uint64_t a1, char **a2, std::vector<std::string> *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  __n = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(v4 + 5);
  if (v7 >= 4u)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v4 + 5);
  }

  std::vector<std::string>::reserve(a3, __n);
  v5 = __n;
  boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<std::string>>(v4, a3, &v5);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }
}

void boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<std::string>>(int a1, std::vector<std::string> *this, std::vector<std::string>::size_type *a3)
{
  std::vector<std::string>::resize(this, *a3);
  begin = this->__begin_;
  if ((*a3)--)
  {
    boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1C98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1C98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1C98;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1D18;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1D18;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1D18;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1D98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1D98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1D98;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1E18;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1E18;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1E18;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8B03F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25E3238C0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>::save_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v7, a1);
  return pps::Histogram_Internal::serialize<boost::archive::text_oarchive>(a3, v5);
}

uint64_t pps::Histogram_Internal::serialize<boost::archive::text_oarchive>(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a1 + 8, instance);
  v5 = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a1 + 64, v5);
  v6 = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, a1 + 88, v6);
}

void *boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(char **a1)
{
  v1 = **a1;
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::save_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v7, a1);
  return boost::histogram::serialize<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(v5, a3);
}

uint64_t boost::histogram::serialize<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(boost::archive::detail::basic_oarchive_impl **a1, unint64_t a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a1, a2, instance);
  v5 = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a1, a2 + 24, v5);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::save_object_data(uint64_t a1, char **a2, void *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3);
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

void boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  v3 = *v2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::serialization::collection_size_type>(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0380);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::save_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v8, a1);
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(v5, a3, instance);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::save_object_data(uint64_t a1, char **a2, int *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v6, a1);
  v7 = *a3 ^ (*a3 >> 31);
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<int>(v5);
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::serialization::variant_save_visitor<boost::archive::text_oarchive>>(int *a1, boost::archive::detail::basic_oarchive_impl ***a2)
{
  v2 = (a1 + 2);
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v3 = *a2;
      instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
      break;
    case 1:
      v3 = *a2;
      instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
      break;
    case 2:
      v3 = *a2;
      instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return boost::archive::detail::basic_oarchive::save_object(v3, v2, instance);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<int>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0360);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::save_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v6, a1);
  boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::serialize<boost::archive::text_oarchive>(a3, v5);
}

void boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::serialize<boost::archive::text_oarchive>(unint64_t a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a1, instance);
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<int>(a2);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<double>(uint64_t **a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *v2;
  v4 = v2 + *(*v2 - 24);
  if ((v4[32] & 5) == 0)
  {
    *(v4 + 2) = 17;
    *(v2 + *(v3 - 24) + 8) = *(v2 + *(v3 - 24) + 8) & 0xFFFFFEFB | 0x100;
    v5 = *a2;
    v6 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0350);
  }

  boost::archive::archive_exception::archive_exception(v7, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v7);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF1E98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF1E98;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF1E98;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF1F10;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF1F10;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF1F10;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::save_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v6, a1);
  boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::serialize<boost::archive::text_oarchive>(a3, v5);
}

void boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::serialize<boost::archive::text_oarchive>(unint64_t a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a1, instance);
  boost::archive::detail::basic_oarchive::end_preamble(a2);

  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save();
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>::save_object_data(uint64_t a1, char **a2, void *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = (a3[1] - *a3) >> 3;
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF1F88;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF1F88;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF1F88;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2000;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2000;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2000;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::save_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v6, a1);
  boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>::serialize<boost::archive::text_oarchive>(a3, v5);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2078;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2078;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2078;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF20F0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF20F0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF20F0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2168;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2168;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2168;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF21E0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF21E0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF21E0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>::save_object_data(uint64_t a1, char **a2, int a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v6, a1);
  boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_oarchive>(a3, v5);
}

unint64_t *boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_oarchive>(boost::archive::text_oarchive &,unsigned int)::{lambda(boost::archive::text_oarchive*)#2}>(unint64_t *result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  v4 = a2[1];
  if (v2 <= 1)
  {
    if (*(result + 16))
    {
      if (v2 != 1)
      {
LABEL_16:
        if (*(v3 + 8))
        {
          v11 = *(v3 + 24);
          boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<double>(v4);
        }

        return result;
      }

      if (*(v3 + 8))
      {
        v7 = *(v3 + 24);
        boost::archive::detail::basic_oarchive::end_preamble(v4);
        boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
      }
    }

    else if (*(v3 + 8))
    {
      v10 = *(v3 + 24);
      boost::archive::detail::basic_oarchive::end_preamble(v4);
      boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (*(v3 + 8))
        {
          v8 = *(v3 + 24);
          boost::archive::detail::basic_oarchive::end_preamble(v4);
          boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
        }

        break;
      case 3u:
        if (*(v3 + 8))
        {
          v9 = *(v3 + 24);
          boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long long>(v4);
        }

        break;
      case 4u:
        v5 = *(v3 + 24);
        v6 = *(v3 + 8);
        v12[0] = v5;
        v12[1] = v6;
        return boost::serialization::array_wrapper<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::serialize_optimized<boost::archive::text_oarchive>(v12, v4);
      default:
        goto LABEL_16;
    }
  }

  return result;
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<short>(void *a1, __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0390);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long>(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0380);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned short>(void *a1, unsigned __int16 *a2)
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

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long long>(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B03B0);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

unint64_t *boost::serialization::array_wrapper<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::serialize_optimized<boost::archive::text_oarchive>(unint64_t *result, boost::archive::detail::basic_oarchive_impl **a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = *result;
    do
    {
      --v2;
      instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v4, instance);
      v4 += 24;
    }

    while (v2);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::save_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v8, a1);
  instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(v5, a3, instance);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>::save_object_data(uint64_t a1, char **a2, void *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = (a3[1] - *a3) >> 3;
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2258;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2258;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2258;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF22D0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF22D0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF22D0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2348;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2348;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2348;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF23C0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF23C0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF23C0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>::save_object_data(uint64_t a1, char **a2, void *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = (a3[1] - *a3) >> 2;
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2438;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2438;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2438;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>::save_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = *(a3 + 16);
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>::save_object_data(uint64_t a1, char **a2)
{
  v3 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(&v4, a1);
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<int>(v3);
}

void boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>::save_object_data(uint64_t a1, char **a2, void *a3)
{
  v5 = boost::serialization::smart_cast_impl::reference<boost::archive::text_oarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_oarchive>(a2);
  (*(*a1 + 40))(v6, a1);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  v8[0] = "count";
  v8[1] = &v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(v5, v8);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF24B0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF24B0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF24B0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2528;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2528;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2528;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF25A0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF25A0;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF25A0;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::~singleton_wrapper(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = &unk_286FF2618;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

{
  *a1 = &unk_286FF2618;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, instance);
  *a1 = &unk_286FF2618;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void std::vector<pps::AxisConfig_Internal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::allocator<pps::AxisConfig_Internal>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<pps::AxisConfig_Internal>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<pps::AxisConfig_Internal>::__construct_one_at_end[abi:ne200100]<pps::AxisConfig_Internal&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 9) = *(a2 + 9);
  *v4 = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_25E3268BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<pps::AxisConfig_Internal>::__emplace_back_slow_path<pps::AxisConfig_Internal&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisConfig_Internal>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  v8 = *a2;
  *(v7 + 9) = *(a2 + 9);
  *v7 = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v7 + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  v7 += 56;
  *(v7 + 16) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *&v17 = v17 + 80;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<pps::AxisConfig_Internal>::~__split_buffer(&v15);
  return v14;
}

void sub_25E326A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::__split_buffer<pps::AxisConfig_Internal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisConfig_Internal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 9) = *(v7 + 9);
      *a4 = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<pps::AxisConfig_Internal>::destroy[abi:ne200100](a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<pps::AxisConfig_Internal>,pps::AxisConfig_Internal*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      std::allocator<pps::AxisConfig_Internal>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<pps::AxisConfig_Internal>::~__split_buffer(void **a1)
{
  std::__split_buffer<pps::AxisConfig_Internal>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<pps::AxisConfig_Internal>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    std::allocator<pps::AxisConfig_Internal>::destroy[abi:ne200100](v4, i - 80);
  }
}

uint64_t std::__function::__value_func<void ()(NSMutableArray *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__function::__value_func<void ()(NSMutableArray *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25E3272D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E327348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void __cxx_global_var_init()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }
}

void __cxx_global_var_init_82()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  }
}

void __cxx_global_var_init_83()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  }
}

void __cxx_global_var_init_84()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_85()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_86()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
  }
}

void __cxx_global_var_init_87()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance();
  }
}

void __cxx_global_var_init_88()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance();
  }
}

void __cxx_global_var_init_89()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
  }
}

void __cxx_global_var_init_90()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
  }
}

void __cxx_global_var_init_91()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance();
  }
}

void __cxx_global_var_init_92()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance();
  }
}

void __cxx_global_var_init_93()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
  }
}

void __cxx_global_var_init_94()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
  }
}

void __cxx_global_var_init_95()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
  }
}

void __cxx_global_var_init_96()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_97()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_98()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  }
}

void __cxx_global_var_init_99()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();
  }
}

void __cxx_global_var_init_100()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
  }
}

void __cxx_global_var_init_101()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance();
  }
}

void __cxx_global_var_init_102()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance();
  }
}

void __cxx_global_var_init_103()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
  }
}

void __cxx_global_var_init_104()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();
  }
}

void __cxx_global_var_init_105()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  }
}

void __cxx_global_var_init_106()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance();
  }
}

void __cxx_global_var_init_107()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance();
  }
}

void __cxx_global_var_init_108()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_109()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_110()
{
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::m_instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_111()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_112()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_113()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_114()
{
  {
    boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::m_instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_instance();
  }
}

void __cxx_global_var_init_115()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance();
  }
}

void __cxx_global_var_init_116()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
  }
}

void __cxx_global_var_init_117()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance();
  }
}

void __cxx_global_var_init_118()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
  }
}

void __cxx_global_var_init_119()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
  }
}

void __cxx_global_var_init_120()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_121()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  }
}

void __cxx_global_var_init_122()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  }
}

void __cxx_global_var_init_123()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance();
  }
}

void __cxx_global_var_init_124()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
  }
}

void __cxx_global_var_init_125()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();
  }
}

void __cxx_global_var_init_126()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  }
}

void __cxx_global_var_init_127()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance();
  }
}

void __cxx_global_var_init_128()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance();
  }
}

void __cxx_global_var_init_129()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_130()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance();
  }
}

void __cxx_global_var_init_131()
{
  {
    boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::m_instance = boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_instance();
  }
}

uint64_t __PPSReaderLog_block_invoke()
{
  PPSReaderLog___logObj = os_log_create("com.apple.PerfPowerServicesReader", "");

  return MEMORY[0x2821F96F8]();
}

id PPSFetchTimeSeries(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v9 predicate:v8 timeFilter:v10];
  v15 = 0;
  v13 = [v7 dataForRequest:v12 withError:&v15];

  objc_autoreleasePoolPop(v11);

  return v13;
}

id lastErrorForDatabase(sqlite3 *a1, int a2)
{
  v2 = 0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v3 = sqlite3_errmsg(a1);
    v4 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.PerfPowerServicesReader.SQLite"];
    v11 = *MEMORY[0x277CCA450];
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = "";
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v2 = [v4 errorWithDomain:v5 code:2 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

void PPSSQLiteRow::~PPSSQLiteRow(id *this)
{
}

{

  JUMPOUT(0x25F8B04C0);
}

void sub_25E32C884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_25E32CAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25E32CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_25E32D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PPSSQLiteBindFoundationValueToStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    sqlite3_bind_text(a1, a2, v7, -1, 0);
    goto LABEL_9;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_8:
    sqlite3_bind_null(a1, a2);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a1, a2, v10);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v5 bytes];
    v12 = [v5 length];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = "";
    }

    sqlite3_bind_blob(a1, a2, v13, v12, 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = logHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20[0] = 67109634;
        v20[1] = a2;
        v21 = 2112;
        v22 = v5;
        v23 = 2114;
        v24 = v19;
        _os_log_debug_impl(&dword_25E225000, v16, OS_LOG_TYPE_DEBUG, "PPSSQLiteBindFoundationValueToStatement: Parameter (index %i) with value '%@' is of unsupported bind type '%{public}@'.", v20, 0x1Cu);
      }

      goto LABEL_8;
    }

    v14 = [v5 objCType];
    v15 = *v14;
    if ((v15 == 102 || v15 == 100) && !v14[1])
    {
      [v5 doubleValue];
      sqlite3_bind_double(a1, a2, v17);
    }

    else
    {
      sqlite3_bind_int64(a1, a2, [v5 longLongValue]);
    }
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
  return (a2 + 1);
}

id PPSQLiteFoundationValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 > 2)
  {
    if (v4 != 5)
    {
      if (v4 == 3)
      {
        v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{sqlite3_column_text(a1, a2)}];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0;
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(a1, a2)}];
        goto LABEL_11;
      }

LABEL_8:
      v6 = sqlite3_column_blob(a1, a2);
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v6 length:{sqlite3_column_bytes(a1, a2)}];
      goto LABEL_11;
    }

    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(a1, a2)}];
  }

LABEL_11:

  return v5;
}

uint64_t ___ZL9logHandlev_block_invoke_0()
{
  logHandle(void)::__logHandle = os_log_create("com.apple.PerfPowerServicesReader", "sqlite");

  return MEMORY[0x2821F96F8]();
}

void PPSSQLiteRow::setColumnNames(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v14;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        [v3 setObject:v10 forKeyedSubscript:v9];

        v6 = (v6 + 1);
        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [v3 copy];
  v12 = *(a1 + 24);
  *(a1 + 24) = v11;

  v13 = *MEMORY[0x277D85DE8];
}

void pps::Histogram_Internal::Histogram_Internal(pps::Histogram_Internal *this)
{
  v1 = *MEMORY[0x277D85DE8];
  *this = &unk_286FF0218;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(this + 64, 1uLL);
}

void sub_25E32DEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  boost::histogram::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(&a24);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(v26, *v27);
  v29 = *(v24 + 64);
  if (v29)
  {
    *(v24 + 72) = v29;
    operator delete(v29);
  }

  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(v25);
  _Unwind_Resume(a1);
}

void _ZN5boost9histogram14make_histogramINS0_4axis7regularIdNS_11use_defaultES4_S4_EEJENS0_6detail13requires_axisIS5_vEEEEDaOT_DpOT0_(uint64_t a1@<X0>, int *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  _ZN5boost9histogram19make_histogram_withINS0_17unlimited_storageINSt3__19allocatorIcEEEENS0_4axis7regularIdNS_11use_defaultES9_S9_EEJENS0_6detail13requires_axisISA_vEEEEDaOT_OT0_DpOT1_(v3, a1, a2);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v3);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25E32DFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(va);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::regular(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::regular(a1, a2, __p, a4, a5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25E32E030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator=<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>(uint64_t a1, uint64_t a2)
{
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::resize(a1, 1uLL);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(*a1, a2);
  if (a1 + 24 != a2 + 48)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 56);
    *(a2 + 56) = v4;
    LOBYTE(v4) = *(a1 + 40);
    *(a1 + 40) = *(a2 + 64);
    *(a2 + 64) = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = *(a2 + 72);
    *(a2 + 72) = v5;
  }

  return a1;
}

uint64_t boost::histogram::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(uint64_t a1)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1 + 48);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void **boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(void **a1)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy((a1 + 3));
  v3 = a1;
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void pps::Histogram_Internal::Histogram_Internal(pps::Histogram_Internal *this, double a2, double a3)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = &unk_286FF0218;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 48) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (a3 > a2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(this + 64, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "maxRange is less than or equal to minRange");
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279A0EFF0, MEMORY[0x277D82610]);
}

void sub_25E32E348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(v26, *v27);
  v29 = *(v24 + 64);
  if (v29)
  {
    *(v24 + 72) = v29;
    operator delete(v29);
  }

  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(v25);
  _Unwind_Resume(a1);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t pps::Histogram_Internal::Histogram_Internal(uint64_t a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  *a1 = &unk_286FF0218;
  *(a1 + 8) = 0;
  v66 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  v3 = a1 + 88;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 4) >= 0xB)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Histogram supports up to 10 dimensions only");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279A0EFF0, MEMORY[0x277D82610]);
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  if (v4 != v5)
  {
    v6 = (v4 + 32);
    do
    {
      if (v6[1].__end_ == v6[1].__begin_ || (v6[-1].__end_cap_.__value_ & 1) != 0)
      {
        if (v6->__end_ == v6->__begin_)
        {
          if (!LODWORD(v6[-2].__end_cap_.__value_))
          {
            goto LABEL_67;
          }

          v15 = *(a1 + 72);
          v14 = *(a1 + 80);
          if (v15 >= v14)
          {
            v30 = *(a1 + 64);
            v31 = v15 - v30;
            v32 = (v15 - v30) >> 2;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
            }

            v34 = v14 - v30;
            if (v34 >> 1 > v33)
            {
              v33 = v34 >> 1;
            }

            v22 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
            v35 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a1 + 64, v35);
            }

            v52 = (v15 - v30) >> 2;
            v53 = (4 * v32);
            v54 = (4 * v32 - 4 * v52);
            *v53 = 0;
            v16 = v53 + 1;
            memcpy(v54, v30, v31);
            v55 = *(a1 + 64);
            *(a1 + 64) = v54;
            *(a1 + 72) = v16;
            *(a1 + 80) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v15 = 0;
            v16 = v15 + 4;
          }

          *(a1 + 72) = v16;
          value = v6[-2].__end_cap_.__value_;
          v57 = *&v6[-1].__begin_;
          v58 = *&v6[-1].__end_;
          v67[0] = 0;
          v67[1] = 0;
          v68 = 0;
          boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::regular(__p, value, v67, v57, v58);
          v59 = v75;
          if (v75 >= v76)
          {
            v61 = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(&v74, __p);
          }

          else
          {
            *(v75 + 8) = __p[0];
            v60 = *&v79[0];
            *(v59 + 16) = *&__p[1];
            *(v59 + 32) = v60;
            __p[2] = 0;
            *&v79[0] = 0;
            __p[1] = 0;
            *(v59 + 40) = *(v79 + 8);
            *v59 = 0;
            v61 = v59 + 56;
          }

          v75 = v61;
          if (SBYTE7(v79[0]) < 0)
          {
            operator delete(__p[1]);
          }

          if ((SHIBYTE(v68) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          v44 = v67[0];
        }

        else
        {
          v77 = &v73;
          v7 = (std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v3, &v73) + 5);
          if (v6 != v7)
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v7, v6->__begin_, v6->__end_, 0xAAAAAAAAAAAAAAABLL * ((v6->__end_ - v6->__begin_) >> 3));
          }

          v9 = *(a1 + 72);
          v8 = *(a1 + 80);
          if (v9 >= v8)
          {
            v17 = *(a1 + 64);
            v18 = v9 - v17;
            v19 = (v9 - v17) >> 2;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v8 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a1 + 64, v23);
            }

            v36 = (v9 - v17) >> 2;
            v37 = (4 * v19);
            v38 = (4 * v19 - 4 * v36);
            *v37 = 2;
            v10 = v37 + 1;
            memcpy(v38, v17, v18);
            v39 = *(a1 + 64);
            *(a1 + 64) = v38;
            *(a1 + 72) = v10;
            *(a1 + 80) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v9 = 2;
            v10 = v9 + 4;
          }

          *(a1 + 72) = v10;
          v40 = -1431655765 * ((v6->__end_ - v6->__begin_) >> 3);
          v69 = 0uLL;
          v70 = 0;
          boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>::integer(__p, 0, v40, &v69);
          v41 = v75;
          if (v75 >= v76)
          {
            v43 = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(&v74, __p);
          }

          else
          {
            *(v75 + 8) = __p[0];
            v42 = *&v79[0];
            *(v41 + 16) = *&__p[1];
            *(v41 + 32) = v42;
            __p[2] = 0;
            *&v79[0] = 0;
            __p[1] = 0;
            *(v41 + 40) = DWORD2(v79[0]);
            *v41 = 2;
            v43 = v41 + 56;
          }

          v75 = v43;
          if (SBYTE7(v79[0]) < 0)
          {
            operator delete(__p[1]);
          }

          if ((SHIBYTE(v70) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          v44 = v69.n128_u64[0];
        }
      }

      else
      {
        v12 = *(a1 + 72);
        v11 = *(a1 + 80);
        if (v12 >= v11)
        {
          v24 = *(a1 + 64);
          v25 = v12 - v24;
          v26 = (v12 - v24) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
          }

          v28 = v11 - v24;
          if (v28 >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          v22 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
          v29 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a1 + 64, v29);
          }

          v45 = (v12 - v24) >> 2;
          v46 = (4 * v26);
          v47 = (4 * v26 - 4 * v45);
          *v46 = 1;
          v13 = v46 + 1;
          memcpy(v47, v24, v25);
          v48 = *(a1 + 64);
          *(a1 + 64) = v47;
          *(a1 + 72) = v13;
          *(a1 + 80) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v12 = 1;
          v13 = v12 + 4;
        }

        *(a1 + 72) = v13;
        v71[1] = 0;
        v72 = 0;
        v71[0] = 0;
        boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::variable<std::vector<double>,boost::histogram::detail::requires_iterable<std::vector<double>,void>>(__p, &v6[1], v71);
        v49 = v75;
        if (v75 >= v76)
        {
          v51 = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__emplace_back_slow_path<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(&v74, __p);
        }

        else
        {
          *(v75 + 16) = 0;
          *(v49 + 24) = 0;
          *(v49 + 8) = *__p;
          *(v49 + 24) = __p[2];
          memset(__p, 0, sizeof(__p));
          v50 = *&v79[1];
          *(v49 + 32) = v79[0];
          *(v49 + 48) = v50;
          memset(v79, 0, 24);
          *v49 = 1;
          v51 = v49 + 56;
        }

        v75 = v51;
        if (SBYTE7(v79[1]) < 0)
        {
          operator delete(*&v79[0]);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if ((SHIBYTE(v72) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v44 = v71[0];
      }

      operator delete(v44);
LABEL_67:
      ++v73;
      v62 = v6 + 2;
      v6 = (v6 + 80);
    }

    while (v62 != v5);
  }

  boost::histogram::make_histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::detail::requires_sequence_of_any_axis<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,void>>(&v74, __p);
  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator=(v66, __p);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v79);
  v77 = __p;
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&v77);
  __p[0] = &v74;
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](__p);
  v63 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25E32EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, void **a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(v43, *a10);
  v45 = *(v42 + 64);
  if (v45)
  {
    *(v42 + 72) = v45;
    operator delete(v45);
  }

  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(a11);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::variable<std::vector<double>,boost::histogram::detail::requires_iterable<std::vector<double>,void>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::variable<std::__wrap_iter<double const*>,boost::histogram::detail::requires_iterator<std::__wrap_iter<double const*>,void>>(a1, v4, v5, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25E32EB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::histogram::make_histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::detail::requires_sequence_of_any_axis<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,void>>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  boost::histogram::make_histogram_with<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::detail::requires_sequence_of_any_axis<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,void>>(v3, a1, a2);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v3);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25E32EC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(va);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v4;
    LOBYTE(v4) = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v4;
    v5 = *(a1 + 48);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = v5;
  }

  return a1;
}

pps::Histogram_Internal *pps::Histogram_Internal::Histogram_Internal(pps::Histogram_Internal *this, const pps::Histogram_Internal *a2)
{
  *this = &unk_286FF0218;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  v4 = (this + 88);
  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator=(this + 8, a2 + 1);
  if (this != a2)
  {
    std::vector<pps::AxisEnum>::__assign_with_size[abi:ne200100]<pps::AxisEnum*,pps::AxisEnum*>(this + 8, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 2);
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,std::vector<std::string>>,std::__tree_node<std::__value_type<int,std::vector<std::string>>,void *> *,long>>(v4, *(a2 + 11), a2 + 12);
  }

  return this;
}

void sub_25E32ED6C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(v3, *v4);
  v6 = *(v1 + 64);
  if (v6)
  {
    *(v1 + 72) = v6;
    operator delete(v6);
  }

  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::~histogram(v2);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__assign_with_size[abi:ne200100]<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::operator=(a1 + 24, (a2 + 3));
  return a1;
}

int *pps::Histogram_Internal::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v22 = v2;
  v23 = v3;
  result = boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator==<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>((a1 + 8), a2 + 1);
  if (result)
  {
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = a2[8];
    if (v7 - v8 == a2[9] - v9)
    {
      while (v8 != v7)
      {
        if (*v8 != *v9)
        {
          return 0;
        }

        v8 += 4;
        ++v9;
      }

      if (*(a1 + 104) == a2[13])
      {
        v10 = *(a1 + 88);
        v11 = (a1 + 96);
        if (v10 == (a1 + 96))
        {
          return 1;
        }

        v12 = a2[11];
        while (*(v10 + 8) == *(v12 + 8))
        {
          v13 = v10[5];
          v14 = v10[6];
          v15 = v12[5];
          if (v14 - v13 != v12[6] - v15)
          {
            break;
          }

          while (v13 != v14)
          {
            result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v21, v13, v15);
            if (!result)
            {
              return result;
            }

            v13 += 3;
            v15 += 3;
          }

          v16 = v10[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v10[2];
              v18 = *v17 == v10;
              v10 = v17;
            }

            while (!v18);
          }

          v19 = v12[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v12[2];
              v18 = *v20 == v12;
              v12 = v20;
            }

            while (!v18);
          }

          result = 1;
          v12 = v20;
          v10 = v17;
          if (v17 == v11)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

int *boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::operator==<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(int **a1, uint64_t *a2)
{
  result = boost::histogram::detail::axes_equal<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1, a2);
  if (result)
  {

    return boost::histogram::unlimited_storage<std::allocator<char>>::operator==((a1 + 3), (a2 + 3));
  }

  return result;
}

double pps::Histogram_Internal::axisRangeOfBinAt(pps::Histogram_Internal *this, int a2, signed int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a3)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a3)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a3))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a3, v11);
    v9 = a2;
    v10 = &v9;
    v6 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v11, &v10);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25E32F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

BOOL pps::Histogram_Internal::isCategoryAxis(pps::Histogram_Internal *this, int a2)
{
  v4 = *(this + 12);
  v2 = this + 96;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 8) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void pps::Histogram_Internal::axis(pps::Histogram_Internal *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v4) >> 3) <= a2)
  {
    pps::Histogram_Internal::axis();
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant(v20, v4 + 56 * a2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v15 = 0;
  v7 = *(*(this + 8) + 4 * a2);
  if (v7 == 2)
  {
    v11 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(v20);
    if (!v11)
    {
      boost::throw_exception<boost::bad_get>();
    }

    v12 = boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<1>>,boost::mpl::l_iter<boost::mpl::list2<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<2>>,boost::mpl::l_iter<boost::mpl::list1<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize((a3 + 8), v11);
  }

  else if (v7 == 1)
  {
    v8 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>(v20);
    v9 = v8;
    if (!v8)
    {
      boost::throw_exception<boost::bad_get>();
    }

    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3 + 8, *v8, v8[1], (v8[1] - *v8) >> 3);
    if (*(v9 + 47) < 0)
    {
      std::string::__init_copy_ctor_external((a3 + 32), v9[3], v9[4]);
    }

    else
    {
      v10 = *(v9 + 3);
      *(a3 + 48) = v9[5];
      *(a3 + 32) = v10;
    }

    v12 = 1;
  }

  else
  {
    v13 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>(v20);
    if (!v13)
    {
      boost::throw_exception<boost::bad_get>();
    }

    v12 = boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize(a3 + 8, v13);
  }

  *a3 = v12;
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&v15);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v20);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_25E32F34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, std::exception a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *v20;
  if (*v20)
  {
    *(v19 + 16) = v21;
    operator delete(v21);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&a12);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&a19);
  _Unwind_Resume(a1);
}

void pps::Histogram_Internal::cumulativeData(pps::Histogram_Internal *this@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>)
{
  pps::Histogram_Internal::data(this, a2, &v12, a4);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::resize(a3, (v13 - v12) >> 3);
  v5 = v12;
  v6 = v13;
  if (v12 == v13)
  {
LABEL_5:
    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }

  v7 = *a3;
  v8 = v12 + 8;
  v9 = *v12;
  **a3 = *v12;
  if (v5 + 8 != v6)
  {
    v10 = v7 + 1;
    do
    {
      v11 = *v8;
      v8 += 8;
      v9 += v11;
      *v10++ = v9;
    }

    while (v8 != v6);
    goto LABEL_5;
  }

LABEL_6:
  v13 = v5;
  operator delete(v5);
}

void sub_25E32F45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pps::Histogram_Internal::data(pps::Histogram_Internal *this@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    v5 = *(this + 5);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = this + 32;
      do
      {
        v38[0] = v8;
        v38[1] = v7;
        v9 = *(a3 + 16);
        if (v6 >= v9)
        {
          v10 = (v6 - *a3) >> 3;
          if ((v10 + 1) >> 61)
          {
            std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
          }

          v11 = v9 - *a3;
          v12 = v11 >> 2;
          if (v11 >> 2 <= (v10 + 1))
          {
            v12 = v10 + 1;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v13);
          }

          v35 = v38;
          *(8 * v10) = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v8, &v35, a4);
          v6 = (8 * v10 + 8);
          v14 = *(a3 + 8) - *a3;
          v15 = (8 * v10 - v14);
          memcpy(v15, *a3, v14);
          v16 = *a3;
          *a3 = v15;
          *(a3 + 8) = v6;
          *(a3 + 16) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          v35 = v38;
          a4 = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v8, &v35, a4);
          *v6++ = a4;
        }

        *(a3 + 8) = v6;
        ++v7;
      }

      while (v5 != v7);
    }
  }

  else
  {
    boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::indexed_range(v38, this + 1, 0);
    v19 = v39;
    v18 = v40;
    v35 = v39;
    v36 = v40;
    v37 = v38;
    v20 = v41;
    v21 = v42;
    if (v40 != v42 || v39 != v41)
    {
      do
      {
        v34[0] = v18;
        v34[1] = v19;
        v24 = *(a3 + 8);
        v23 = *(a3 + 16);
        if (v24 >= v23)
        {
          v26 = (v24 - *a3) >> 3;
          if ((v26 + 1) >> 61)
          {
            std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
          }

          v27 = v23 - *a3;
          v28 = v27 >> 2;
          if (v27 >> 2 <= (v26 + 1))
          {
            v28 = v26 + 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v29);
          }

          v43[0] = v34;
          *(8 * v26) = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v18, v43, v17);
          v25 = 8 * v26 + 8;
          v30 = *(a3 + 8) - *a3;
          v31 = (8 * v26 - v30);
          memcpy(v31, *a3, v30);
          v32 = *a3;
          *a3 = v31;
          *(a3 + 8) = v25;
          *(a3 + 16) = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          v43[0] = v34;
          *v24 = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v18, v43, v17);
          v25 = (v24 + 1);
        }

        *(a3 + 8) = v25;
        boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::range_iterator::increment(&v35);
        v19 = v35;
        v18 = v36;
      }

      while (v36 != v21 || v35 != v20);
    }
  }
}

void sub_25E32F70C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pps::Histogram_Internal::hash(pps::Histogram_Internal *this, double a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = this + 32;
  v5 = *(this + 5);
  do
  {
    v7[0] = v4;
    v7[1] = v3;
    v8 = v7;
    a2 = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v4, &v8, a2);
    v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + a2;
    ++v3;
  }

  while (v2 != v3);
  return v5;
}

uint64_t pps::Histogram_Internal::indexOfSample(pps::Histogram_Internal *this, double a2, unsigned int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a2;
  pps::Histogram_Internal::axis(this, a3, v9);
  v7 = &v6;
  v8 = &v7;
  v3 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::result_wrapper1<int boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::index<double>(double const&)::{lambda(double const&)#1},boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>> const&>>(v9, &v8);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v9);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_25E32F888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

void pps::Histogram_Internal::indicesOfSample(pps::Histogram_Internal *this@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v4 = -1227133513 * ((*(this + 2) - *(this + 1)) >> 3);
  if (v4 != (a2[1] - *a2) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Sample size must match number of dimensions");
    __cxa_throw(exception, off_279A0EFF0, MEMORY[0x277D82610]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4)
  {
    v7 = 0;
    do
    {
      v8 = pps::Histogram_Internal::indexOfSample(this, *(*a2 + 8 * v7), v7);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<pps::AxisEnum>>(a3, v17);
        }

        *(4 * v14) = v8;
        v11 = 4 * v14 + 4;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 4);
      }

      a3[1] = v11;
      ++v7;
    }

    while (v7 < -1227133513 * ((*(this + 2) - *(this + 1)) >> 3));
  }
}

double pps::Histogram_Internal::maxRangeForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = (this + 96);
  do
  {
    if (v2[8] >= a2)
    {
      v3 = v2;
    }

    v2 = *&v2[2 * (v2[8] < a2)];
  }

  while (v2);
  if (v3 == (this + 96) || (v4 = 0.0, v3[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a2, v10);
    v9 = &v8;
    if (_ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v10) < 1)
    {
      v4 = 0.0;
    }

    else
    {
      v9 = &v8;
      v8 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v10) - 1;
      v9 = &v8;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v10, &v9);
      v4 = v5;
    }

    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25E32FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::maxSampleForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::binCountsForAxis(this, a2, &__p);
    v7 = v13;
    v8 = (v13 - __p) >> 3;
    while (v7 != __p)
    {
      LODWORD(v8) = v8 - 1;
      v9 = *(v7 - 1);
      v7 -= 8;
      if (v9)
      {
        v10 = pps::Histogram_Internal::rightEdgeOfBin(this, v8, a2);
        goto LABEL_13;
      }
    }

    v10 = pps::Histogram_Internal::maxRangeForAxis(this, a2);
LABEL_13:
    v6 = v10;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  return v6;
}

void sub_25E32FC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pps::Histogram_Internal::binCountsForAxis(pps::Histogram_Internal *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  pps::Histogram_Internal::axis(this, a2, v26);
  v20[0] = &v17;
  v6 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v26);
  std::vector<unsigned long>::vector[abi:ne200100](a3, v6);
  boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::indexed_range(v20, this + 1, 0);
  v9 = v21;
  v8 = v22;
  v17 = v21;
  v18 = v22;
  v19 = v20;
  v10 = v23;
  v11 = v24;
  if (v22 != v24 || v21 != v23)
  {
    do
    {
      do
      {
        v12 = v19;
        v16[0] = v8;
        v16[1] = v9;
        v25 = v16;
        v13 = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v8, &v25, v7);
        v14 = SLODWORD(v12[2 * a2 + 6]);
        *(*a3 + 8 * v14) = (v13 + *(*a3 + 8 * v14));
        boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::range_iterator::increment(&v17);
        v9 = v17;
        v8 = v18;
      }

      while (v18 != v11);
    }

    while (v17 != v10);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v26);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25E32FDC0(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v2 - 128);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::rightEdgeOfBin(pps::Histogram_Internal *this, int a2, signed int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a3)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a3)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a3))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a3, v12);
    v10 = a2;
    v11 = &v10;
    _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v12, &v11);
    v6 = v7;
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25E32FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

void pps::Histogram_Internal::meanForAxis(pps::Histogram_Internal *this, signed int a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(this + 12);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = (this + 96);
  do
  {
    if (v5[8] >= a2)
    {
      v6 = v5;
    }

    v5 = *&v5[2 * (v5[8] < a2)];
  }

  while (v5);
  if (v6 == (this + 96) || (a3 = 0.0, v6[8] > a2))
  {
LABEL_17:
    if (pps::Histogram_Internal::sum(this, 0, a3))
    {
      pps::Histogram_Internal::binCountsForAxis(this, a2, __p);
      pps::Histogram_Internal::axis(this, a2, v15);
      v7 = 0;
      for (i = 0.0; ; i = i + (v9 + v10) * 0.5 * *(__p[0] + v7++))
      {
        v14 = &v13;
        if (v7 >= _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v15))
        {
          break;
        }

        v9 = pps::Histogram_Internal::leftEdgeOfBin(this, v7, a2);
        v10 = pps::Histogram_Internal::rightEdgeOfBin(this, v7, a2);
      }

      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v15);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25E330064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pps::Histogram_Internal::sum(pps::Histogram_Internal *this, int a2, double a3)
{
  if (a2)
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = this + 32;
      do
      {
        v19[0] = v6;
        v19[1] = v5;
        v16 = v19;
        a3 = _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v6, &v16, a3) + v4;
        v4 = a3;
        ++v5;
      }

      while (v3 != v5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::indexed_range(v19, this + 1, 0);
    v9 = v20;
    v8 = v21;
    v16 = v20;
    v17 = v21;
    v18 = v19;
    v10 = v22;
    v11 = v23;
    v4 = 0;
    if (v21 != v23 || v20 != v22)
    {
      do
      {
        v15[0] = v8;
        v15[1] = v9;
        v24 = v15;
        v4 = (_ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v8, &v24, v7) + v4);
        boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::range_iterator::increment(&v16);
        v9 = v16;
        v8 = v17;
      }

      while (v17 != v11 || v16 != v10);
    }
  }

  return v4;
}

double pps::Histogram_Internal::medianForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a2, v27);
    __p[0] = &v26;
    v7 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v27);
    if (v7 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      pps::Histogram_Internal::binCountsForAxis(this, a2, __p);
      v8 = v7 >> 1;
      v25 = v7 >> 1;
      v26 = &v25;
      v9 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v27, &v26);
      v11 = v10;
      v12 = pps::Histogram_Internal::leftEdgeOfBin(this, v7 >> 1, a2);
      v13 = v12;
      v14 = __p[0];
      if (v7 == 1)
      {
        v8 = 0;
        v15 = 0.0;
      }

      else
      {
        v16 = 0;
        v17 = __p[0];
        do
        {
          v18 = *v17;
          v17 += 2;
          v16 += v18;
        }

        while (v17 != (__p[0] + 8 * v8));
        v15 = v16;
      }

      v19 = v11 - v9;
      v20 = *(__p[0] + v8);
      if (v20)
      {
        v21 = (vcvtd_n_f64_u64(pps::Histogram_Internal::sum(this, 0, v12), 1uLL) - v15) / v20;
        v14 = __p[0];
        v6 = v13 + v21 * v19;
        if (!__p[0])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v6 = v12 + v19 * 0.0;
      }

      __p[1] = v14;
      operator delete(v14);
    }

LABEL_20:
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v27);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25E3303AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&a15);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::leftEdgeOfBin(pps::Histogram_Internal *this, int a2, signed int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a3)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a3)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a3))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a3, v11);
    v9 = a2;
    v10 = &v9;
    v6 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v11, &v10);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25E3304BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::minRangeForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = (this + 96);
  do
  {
    if (v2[8] >= a2)
    {
      v3 = v2;
    }

    v2 = *&v2[2 * (v2[8] < a2)];
  }

  while (v2);
  if (v3 == (this + 96) || (v4 = 0.0, v3[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::axis(this, a2, v9);
    v7 = 0;
    v8 = &v7;
    v4 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v9, &v8);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25E3305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::minSampleForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 96) || (v6 = 0.0, v5[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::binCountsForAxis(this, a2, &__p);
    if (v11 == __p)
    {
LABEL_12:
      v8 = pps::Histogram_Internal::minRangeForAxis(this, a2);
    }

    else
    {
      v7 = 0;
      while (!*(__p + v7))
      {
        if ((v11 - __p) >> 3 == ++v7)
        {
          goto LABEL_12;
        }
      }

      v8 = pps::Histogram_Internal::leftEdgeOfBin(this, v7, a2);
    }

    v6 = v8;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  return v6;
}

void sub_25E33069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pps::Histogram_Internal::modeForAxis(pps::Histogram_Internal *this, signed int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = (this + 96);
  do
  {
    if (v4[8] >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * (v4[8] < a2)];
  }

  while (v4);
  if (v5 == (this + 96) || v5[8] > a2)
  {
LABEL_24:
    if (*(this + 5))
    {
      pps::Histogram_Internal::binCountsForAxis(this, a2, &__p);
      v6 = __p + 8;
      v7 = __p == v17 || v6 == v17;
      v8 = __p;
      if (!v7)
      {
        v9 = *__p;
        v8 = __p;
        v10 = __p + 8;
        do
        {
          v12 = *v10;
          v10 += 8;
          v11 = v12;
          v13 = v9 >= v12;
          if (v9 <= v12)
          {
            v9 = v11;
          }

          if (!v13)
          {
            v8 = v6;
          }

          v6 = v10;
        }

        while (v10 != v17);
      }

      v14 = (v8 - __p) >> 3;
      pps::Histogram_Internal::leftEdgeOfBin(this, v14, a2);
      pps::Histogram_Internal::axis(this, a2, v20);
      v18 = v14;
      v19 = &v18;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v20, &v19);
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v20);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25E330834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pps::Histogram_Internal::record(uint64_t result, void *a2)
{
  v3 = result + 8;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(result + 16) - *(result + 8)) >> 3);
  v6 = a2;
  v5 = *a2;
  if ((v6[1] - v5) >> 3 != v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Sample size must match number of dimensions");
    __cxa_throw(exception, off_279A0EFF0, MEMORY[0x277D82610]);
  }

  if (v4 > 5)
  {
    if (v4 <= 7)
    {
      v10 = v5[1];
      v17 = *v5;
      v18 = v10;
      v19 = v5[2];
      if (v4 == 6)
      {
        return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double>(result + 32, v3, &v17);
      }

      else
      {
        *&v20 = *(v5 + 6);
        return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double>(result + 32, v3, &v17);
      }
    }

    else
    {
      switch(v4)
      {
        case 8:
          v12 = v5[1];
          v17 = *v5;
          v18 = v12;
          v13 = v5[3];
          v19 = v5[2];
          v20 = v13;
          return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double>(result + 32, v3, &v17);
        case 9:
          v14 = v5[1];
          v17 = *v5;
          v18 = v14;
          v15 = v5[3];
          v19 = v5[2];
          v20 = v15;
          *&v21 = *(v5 + 8);
          return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double,double>(result + 32, v3, &v17);
        case 0xA:
          v8 = v5[1];
          v17 = *v5;
          v18 = v8;
          v9 = v5[3];
          v19 = v5[2];
          v20 = v9;
          v21 = v5[4];
          return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double,double,double,double,double>(result + 32, v3, &v17);
      }
    }
  }

  else if (v4 <= 2)
  {
    if (v4 == 1)
    {
      *&v17 = *v5;
      return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double>(result + 32, v3, &v17);
    }

    else if (v4 == 2)
    {
      v17 = *v5;
      return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double>(result + 32, v3, &v17);
    }
  }

  else if (v4 == 3)
  {
    v11 = *(v5 + 2);
    v17 = *v5;
    *&v18 = v11;
    return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double>(result + 32, v3, &v17);
  }

  else
  {
    v7 = v5[1];
    v17 = *v5;
    v18 = v7;
    if (v4 == 4)
    {
      return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double>(result + 32, v3, &v17);
    }

    else
    {
      *&v19 = *(v5 + 4);
      return boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double>(result + 32, v3, &v17);
    }
  }

  return result;
}

double pps::Histogram_Internal::valueForPercentileInAxis(pps::Histogram_Internal *this, double a2, signed int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(this + 12);
  if (v6)
  {
    v7 = (this + 96);
    do
    {
      if (v6[8] >= a3)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * (v6[8] < a3)];
    }

    while (v6);
    if (v7 != (this + 96))
    {
      v8 = 0.0;
      if (v7[8] <= a3)
      {
LABEL_27:
        v23 = *MEMORY[0x277D85DE8];
        return v8;
      }
    }
  }

  if (a2 <= 0.0)
  {
    v16 = *MEMORY[0x277D85DE8];

    return pps::Histogram_Internal::minSampleForAxis(this, a3);
  }

  else
  {
    if (a2 < 1.0)
    {
      if (pps::Histogram_Internal::sum(this, 0, 1.0))
      {
        pps::Histogram_Internal::axis(this, a3, v27);
        v10 = pps::Histogram_Internal::sum(this, 0, v9);
        pps::Histogram_Internal::binCountsForAxis(this, a3, __p);
        v11 = 0;
        v12 = 0;
        v13 = v10;
        v14 = vcvtad_u64_f64(v10 * a2);
        while (1)
        {
          v26 = &v25;
          if (v11 >= _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE4sizeEvEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v27))
          {
            v8 = pps::Histogram_Internal::minRangeForAxis(this, a3);
            goto LABEL_24;
          }

          v15 = *(__p[0] + v11);
          if (v15 + v12 >= v14)
          {
            break;
          }

          ++v11;
          v12 += v15;
        }

        v20 = pps::Histogram_Internal::leftEdgeOfBin(this, v11, a3);
        v25 = v11;
        v26 = &v25;
        v21 = _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(v27, &v26);
        v8 = v20 + -(v12 - a2 * v13) / v15 * (v22 - v21);
LABEL_24:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v27);
      }

      else
      {
        v19 = pps::Histogram_Internal::maxRangeForAxis(this, a3);
        v8 = (v19 - pps::Histogram_Internal::minRangeForAxis(this, a3)) * a2;
      }

      goto LABEL_27;
    }

    v18 = *MEMORY[0x277D85DE8];

    return pps::Histogram_Internal::maxSampleForAxis(this, a3);
  }
}

void sub_25E330D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&a15);
  _Unwind_Resume(a1);
}

double pps::Histogram_Internal::varianceForAxis(pps::Histogram_Internal *this, signed int a2, double a3)
{
  v5 = *(this + 12);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = (this + 96);
  do
  {
    if (v5[8] >= a2)
    {
      v6 = v5;
    }

    v5 = *&v5[2 * (v5[8] < a2)];
  }

  while (v5);
  if (v6 == (this + 96) || (v7 = 0.0, v6[8] > a2))
  {
LABEL_8:
    pps::Histogram_Internal::meanForAxis(this, a2, a3);
    v9 = v8;
    boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::indexed_range(v27, this + 1, 0);
    v12 = v28;
    v11 = v29;
    v24 = v28;
    v25 = v29;
    v26 = v27;
    v13 = v30;
    v14 = v31;
    v7 = 0.0;
    v15 = v29 == v31 && v28 == v30;
    v16 = 0.0;
    if (!v15)
    {
      do
      {
        v17 = *&v26[16 * a2 + 48];
        v18 = pps::Histogram_Internal::leftEdgeOfBin(this, v17, a2);
        v19 = v18 + pps::Histogram_Internal::rightEdgeOfBin(this, v17, a2);
        v23[0] = v11;
        v23[1] = v12;
        v32 = v23;
        v16 = v16 + (v19 * 0.5 - v9) * _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNKS5_11reference_tIKS6_EcvdEvEUlPKT_E_JEEEDcOSB_DpOT0_(v11, &v32, v19) * (v19 * 0.5 - v9);
        boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::range_iterator::increment(&v24);
        v12 = v24;
        v11 = v25;
      }

      while (v25 != v14 || v24 != v13);
    }

    v21 = pps::Histogram_Internal::sum(this, 0, v10);
    if (v21)
    {
      return v16 / v21;
    }
  }

  return v7;
}

void pps::Histogram_Internal::binCategory(pps::Histogram_Internal *this@<X0>, int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  v7 = *(this + 12);
  v5 = this + 96;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 8) >= a3)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a3)];
  }

  while (v6);
  if (v8 != v5 && *(v8 + 8) <= a3)
  {
    v10 = *(v8 + 5) + 24 * a2;
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *v10, *(v10 + 8));
    }

    else
    {
      v11 = *v10;
      a4->__r_.__value_.__r.__words[2] = *(v10 + 16);
      *&a4->__r_.__value_.__l.__data_ = v11;
    }

    v9 = 1;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a4->__r_.__value_.__s.__data_[0] = 0;
  }

  a4[1].__r_.__value_.__s.__data_[0] = v9;
}

void _ZN5boost9histogram19make_histogram_withINS0_17unlimited_storageINSt3__19allocatorIcEEEENS0_4axis7regularIdNS_11use_defaultES9_S9_EEJENS0_6detail13requires_axisISA_vEEEEDaOT_OT0_DpOT1_(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *__p = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  boost::histogram::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>(a3, &v4, v8);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v8);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25E3310A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int *boost::histogram::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>::histogram<std::tuple<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>,boost::histogram::unlimited_storage<std::allocator<char>>>(int *a1, int *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 2) = v4;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 7) = *(a3 + 8);
  *(a1 + 64) = *(a3 + 16);
  *(a1 + 9) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char>((a1 + 12), *a1 + 2);
  return a1;
}

void sub_25E331144(_Unwind_Exception *a1)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v1 + 48);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<std::overflow_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1, a2);
}

uint64_t boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x25F8B0190](a1 + 8);
  return a1;
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_286FF0938;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_286FF2818;
  *(a1 + 8) = &unk_286FF2848;
  *(a1 + 24) = &unk_286FF2870;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_25E3314B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::overflow_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x25F8B0190](a1 + 8);

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x25F8B0190);
}

{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x25F8B0190](a1);

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x25F8B0190);
}

{
  *a1 = &unk_286FF0990;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x25F8B0190](v1);

  JUMPOUT(0x25F8B04C0);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286FF0938;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x277D828F0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_286FF0990;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_286FF2818;
  *(a1 + 8) = &unk_286FF2848;
  *(a1 + 24) = &unk_286FF2870;
  return a1;
}

void boost::histogram::make_histogram_with<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::detail::requires_sequence_of_any_axis<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,void>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(a3, a2, v4);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v4);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_25E331950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(va);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 32) = *(a3 + 8);
  *(a1 + 40) = *(a3 + 16);
  *(a1 + 48) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v4 = boost::histogram::detail::bincount<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char>(a1 + 24, v4);
  return a1;
}

void sub_25E3319E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy((v10 + 3));
  a10 = v10;
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t boost::histogram::detail::bincount<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(uint64_t *a1)
{
  result = 1;
  v5 = &v6;
  v6 = 1;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v7 = &v5;
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::result_wrapper1<unsigned long boost::histogram::detail::bincount<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&)::{lambda(std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&)#1},boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>> const&>>(v3, &v7);
      v3 += 56;
    }

    while (v3 != v4);
    return v6;
  }

  return result;
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::result_wrapper1<unsigned long boost::histogram::detail::bincount<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&)::{lambda(std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&)#1},boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>> const&>>(uint64_t result, unint64_t ***a2)
{
  switch(*result ^ (*result >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = *v2;
      v4 = *(result + 8);
      v5 = *v2 * (v4 + 2);
      *v2 = v5;
      if (v4 >= -1 && v5 < v3)
      {
        std::runtime_error::runtime_error(&v17, "bincount overflow");
        v17.__vftable = (MEMORY[0x277D828F0] + 16);
        v14 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/axes.hpp";
        v15 = "auto boost::histogram::detail::bincount(const std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>> &)::(anonymous class)::operator()(const auto &) const [a:auto = boost::histogram::axis::regular<>]";
        v16 = 167;
        boost::throw_exception<std::overflow_error>(&v17, &v14);
      }

      return result;
    case 1:
      v6 = **a2;
      v7 = *v6;
      v8 = *(result + 16) - *(result + 8);
      v9 = (((v8 << 29) + 0x100000000) >> 32) * *v6;
      *v6 = v9;
      if ((v8 & 0x400000000) == 0 && v9 < v7)
      {
        std::runtime_error::runtime_error(&v17, "bincount overflow");
        v17.__vftable = (MEMORY[0x277D828F0] + 16);
        v14 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/axes.hpp";
        v15 = "auto boost::histogram::detail::bincount(const std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>> &)::(anonymous class)::operator()(const auto &) const [a:auto = boost::histogram::axis::variable<>]";
        v16 = 167;
        boost::throw_exception<std::overflow_error>(&v17, &v14);
      }

      return result;
    case 2:
      v10 = **a2;
      v11 = *v10;
      v12 = *(result + 8);
      v13 = v11 + v11 * v12;
      *v10 = v13;
      if ((v12 & 0x80000000) == 0 && v13 < v11)
      {
        std::runtime_error::runtime_error(&v17, "bincount overflow");
        v17.__vftable = (MEMORY[0x277D828F0] + 16);
        v14 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/axes.hpp";
        v15 = "auto boost::histogram::detail::bincount(const std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>> &)::(anonymous class)::operator()(const auto &) const [a:auto = boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>]";
        v16 = 167;
        boost::throw_exception<std::overflow_error>(&v17, &v14);
      }

      return result;
    default:
      boost::detail::variant::forced_return<void>();
  }
}

void sub_25E331C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x25F8B0180](va);
  _Unwind_Resume(a1);
}

void std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__assign_with_size[abi:ne200100]<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__vdeallocate(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(v8, v6);
        v6 += 56;
        v8 += 56;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 56;
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(v8, v14);
        v14 += 56;
        v8 += 56;
        v13 -= 56;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(a1, v6 + v12, a3, v11);
  }
}

void std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(a1, a2);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant(a4, v6);
      v6 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25E331F48(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(uint64_t a1, int *a2)
{
  v6 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 2);
  }

  v8 = *(a2 + 2);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(*a1);
  v4 = *a1;
  *(v4 + 8) = v6;
  v5 = __p.__r_.__value_.__r.__words[2];
  *(v4 + 16) = *&__p.__r_.__value_.__l.__data_;
  *(v4 + 32) = v5;
  memset(&__p, 0, sizeof(__p));
  *(v4 + 40) = v8;
  **a1 = *(a1 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v6, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
  }

  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(*a1);
  v4 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = *v6;
  *(v4 + 24) = v7;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v5 = __p.__r_.__value_.__r.__words[2];
  *(v4 + 32) = *&__p.__r_.__value_.__l.__data_;
  *(v4 + 48) = v5;
  memset(&__p, 0, sizeof(__p));
  **a1 = *(a1 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6[0])
    {
      v6[1] = v6[0];
      operator delete(v6[0]);
    }
  }
}

void sub_25E33226C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(uint64_t a1, int *a2)
{
  v6 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 2);
  }

  v8 = a2[8];
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(*a1);
  v4 = *a1;
  *(v4 + 8) = v6;
  v5 = __p.__r_.__value_.__r.__words[2];
  *(v4 + 16) = *&__p.__r_.__value_.__l.__data_;
  *(v4 + 32) = v5;
  memset(&__p, 0, sizeof(__p));
  *(v4 + 40) = v8;
  **a1 = *(a1 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::operator=(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7[0] = v8;
  v7[1] = a2;
  _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNS6_C1ERKS6_EUlPT_E_JEEEDcOSA_DpOT0_(a2, v7);
  if (v8 != a1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(v8);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNS6_C1ERKS6_EUlPT_E_JEEEDcOSA_DpOT0_(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2[1] + 8);
  if (v2 <= 1)
  {
    if (v2)
    {
      boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short,unsigned short *>(v4, v5);
    }

    else
    {
      boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char,unsigned char *>(v4, v5);
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int,unsigned int *>(v4, v5);
        break;
      case 3:
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long,unsigned long long *>(v4, v5);
        break;
      case 4:
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>*>(v4, v5);
        break;
      default:
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<double,double *>(v4, v5);
        break;
    }
  }
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char,unsigned char *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short,unsigned short *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned short>,unsigned short *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned short>,unsigned short *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int,unsigned int *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned int>,unsigned int *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned int>,unsigned int *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long,unsigned long long *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned long long>,unsigned long long *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned long long>,unsigned long long *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>*>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>*>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>*>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E332934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<double,double *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned long long>,unsigned long long *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
}

double _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNKS2_7variantIJS5_SA_SF_EE3binEiEUlRKT_E_RKSG_EEEENSN_11result_typeERSN_(uint64_t a1, int **a2)
{
  v3 = (a1 + 8);
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v4 = **a2;
      v5 = *v3;
      v6 = v4 / v5;
      if (v6 < 0.0)
      {
        v7 = *(a1 + 48);
        v8 = -INFINITY;
LABEL_12:
        result = v7 * v8;
        goto LABEL_16;
      }

      if (v6 > 1.0)
      {
        v7 = *(a1 + 48);
        v8 = INFINITY;
        goto LABEL_12;
      }

      v7 = *(a1 + 48);
      result = v6 * (*(a1 + 40) + v7) + (1.0 - v6) * *(a1 + 40);
LABEL_16:
      v11 = (v4 + 1) / v5;
      if (v11 >= 0.0 && v11 <= 1.0)
      {
        v12 = v11 * (v7 + *(a1 + 40)) + (1.0 - v11) * *(a1 + 40);
      }

      return result;
    case 1:

      return _ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEE3binEiEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKSD_EENS4_15polymorphic_binIdEEOSK_(a2, v3);
    case 2:
      v10 = **a2;
      if (v10 < 0)
      {
        return -2147483650.0;
      }

      if (*v3 >= v10)
      {
        return (*(a1 + 40) + v10);
      }

      return 2147483650.0;
    default:
      boost::detail::variant::forced_return<void>();
  }
}

double _ZNK5boost6detail7variant15result_wrapper1IZNKS_9histogram4axis7variantIJNS4_7regularIdNS_11use_defaultES7_S7_EENS4_8variableIdS7_S7_NSt3__19allocatorIdEEEENS4_7integerIiS7_NS4_6option3bitILj1EEEEEEE3binEiEUlRKT_E_RKNS_7variantIS8_JSD_SI_EEEEclIRKSD_EENS4_15polymorphic_binIdEEOSK_(int **a1, void *a2)
{
  v3 = **a1;
  v4 = boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::value(a2, v3);
  boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::value(a2, (v3 + 1));
  return v4;
}

double boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::value(void *a1, double a2)
{
  if (a2 < 0.0)
  {
    return -INFINITY;
  }

  v4 = a1[1];
  v5 = (((v4 - *a1) >> 3) - 1);
  if (v5 == a2)
  {
    return *(v4 - 8);
  }

  if (v5 < a2)
  {
    return INFINITY;
  }

  return (a2 - a2) * *(*a1 + 8 * a2 + 8) + (1.0 - (a2 - a2)) * *(*a1 + 8 * a2);
}

uint64_t boost::histogram::indexed_range<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>> const>::indexed_range(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3 == 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2 + 3;
  *(a1 + 32) = *(a1 + 16);
  v11 = a1 + 48;
  v4 = *a2;
  v5 = a2[1];
  v6 = a1 + 48 + 0xFFFFFFFB6DB6DB70 * ((v5 - *a2) >> 3) - 16;
  v9 = 1;
  v10 = v6;
  v8[0] = a1;
  v8[1] = &v11;
  v8[2] = &v9;
  for (v8[3] = &v10; v4 != v5; v4 += 56)
  {
    v12 = v8;
    _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_13indexed_rangeIKNS1_9histogramINS7_6vectorINS2_7variantIJS5_SA_SF_EEENS8_ISP_EEEENS1_17unlimited_storageINS8_IcEEEEEEEC1ERSW_NS1_8coverageEEUlRKT_E_RKSG_EEEENS10_11result_typeERS10_(v4, &v12);
  }

  return a1;
}

uint64_t _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_13indexed_rangeIKNS1_9histogramINS7_6vectorINS2_7variantIJS5_SA_SF_EEENS8_ISP_EEEENS1_17unlimited_storageINS8_IcEEEEEEEC1ERSW_NS1_8coverageEEUlRKT_E_RKSG_EEEENS10_11result_typeERS10_(uint64_t result, uint64_t **a2)
{
  switch(*result ^ (*result >> 31))
  {
    case 0:
      v2 = *a2;
      v3 = *(result + 8);
      v4 = v3 + 2;
      v6 = **a2;
      v5 = (*a2)[1];
      v7 = *v5;
      v8 = *(v6 + 8);
      v9 = v3 + v8;
      v7[2] = v3 + v8;
      v7[3] = v3 + 2;
      *v7 = -v8;
      v7[1] = -v8;
      v10 = v8 ^ 1;
      v11 = v2[2];
      v12 = v2[3];
      *(v6 + 16) += *v11 * v10;
      if (v7 >= *v12)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v10;
      }

      goto LABEL_8;
    case 1:
      v14 = *a2;
      v15 = (*(result + 16) - *(result + 8)) >> 3;
      v4 = v15 + 1;
      v6 = **a2;
      v5 = (*a2)[1];
      v7 = *v5;
      v16 = *(v6 + 8);
      v17 = v16 + v15;
      v7[2] = v16 + v15 - 1;
      v7[3] = v15 + 1;
      *v7 = -v16;
      v7[1] = -v16;
      v18 = v16 ^ 1;
      v11 = v14[2];
      v19 = v14[3];
      *(v6 + 16) += *v11 * v18;
      if (v7 >= *v19)
      {
        v13 = v17;
      }

      else
      {
        v13 = v18;
      }

LABEL_8:
      *(v6 + 32) += v13 * *v11;
      break;
    case 2:
      v20 = *a2;
      v21 = *(result + 8);
      v4 = v21 + 1;
      v22 = **a2;
      v5 = (*a2)[1];
      v7 = *v5;
      if (*(v22 + 8))
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = *(result + 8);
      }

      v7[2] = v23;
      v7[3] = v4;
      *v7 = 0;
      v11 = v20[2];
      if (v7 >= *v20[3])
      {
        *(v22 + 32) += *v11 * v23;
      }

      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  *v11 *= v4;
  *v5 = v7 + 4;
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double>(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,1u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,1u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double>>(uint64_t a1, uint64_t a2, const char *a3)
{
  v9 = xmmword_25E371F90;
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 56)
  {
    std::logic_error::logic_error(&v8, "number of arguments != histogram rank");
    v8.__vftable = (MEMORY[0x277D828F8] + 16);
    v5 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v6 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 1U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double>]";
    v7 = 192;
    boost::throw_exception<std::invalid_argument>(&v8, &v5);
  }

  v5 = &v9;
  v6 = a3;
  v8.__vftable = &v5;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v3, &v8);
  return v9;
}

void boost::throw_exception<std::invalid_argument>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::invalid_argument>::wrapexcept(exception, a1, a2);
}

uint64_t boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v11, v12);
  boost::histogram::detail::cat_impl<char [35],std::string,char [5],std::string>(&v14, a2, a3, a4, a5);
  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x25F8B0470](&v18);
}

void sub_25E333140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x25F8B0470](v2 + 112);
  _Unwind_Resume(a1);
}

void *boost::histogram::detail::cat_impl<char [35],std::string,char [5],std::string>(void *a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v12, v13);

  return boost::histogram::detail::cat_impl<char [5],std::string>(a1, a4, a5);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F8B0310](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F8B0320](v13);
  return a1;
}

void sub_25E333338(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F8B0320](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25E333318);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25E33356C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *boost::histogram::detail::cat_impl<char [5],std::string>(void *a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, v9);
}

boost::core::scoped_demangled_name *boost::core::scoped_demangled_name::scoped_demangled_name(boost::core::scoped_demangled_name *this, const char *lpmangled)
{
  status = 0;
  v4 = 0;
  *this = __cxa_demangle(lpmangled, 0, &v4, &status);
  return this;
}

uint64_t boost::wrapexcept<std::invalid_argument>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x25F8B01B0](a1 + 8);
  return a1;
}

uint64_t boost::wrapexcept<std::invalid_argument>::wrapexcept(uint64_t a1, const std::logic_error *a2, int8x16_t *a3)
{
  *a1 = &unk_286FF0938;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_286FF28D8;
  *(a1 + 8) = &unk_286FF2908;
  *(a1 + 24) = &unk_286FF2930;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_25E33392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::invalid_argument>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::invalid_argument>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::invalid_argument>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x25F8B01B0](a1 + 8);

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<std::invalid_argument>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x25F8B01B0);
}

{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x25F8B01B0](a1);

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<std::invalid_argument>::~wrapexcept(void *a1)
{
  *a1 = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x25F8B01B0);
}

{
  *a1 = &unk_286FF0990;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x25F8B01B0](v1);

  JUMPOUT(0x25F8B04C0);
}

uint64_t boost::wrapexcept<std::invalid_argument>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286FF0938;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x277D828F8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_286FF0990;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_286FF28D8;
  *(a1 + 8) = &unk_286FF2908;
  *(a1 + 24) = &unk_286FF2930;
  return a1;
}

int *_ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(int *result, uint64_t *a2)
{
  v3 = (result + 2);
  switch(*result ^ (*result >> 31))
  {
    case 0:
      v4 = *a2;
      v5 = *v4;
      v6 = *(v4 + 8);

      result = boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,double>(v5, v3, v6);
      break;
    case 1:
      v7 = *a2;
      v8 = *v7;
      v9 = *(v7 + 8);

      result = boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,double>(v8, v3, v9);
      break;
    case 2:
      v10 = *a2;
      v11 = *v10;
      v12 = **(v10 + 8);
      v13 = result[10];
      v14 = v12 - v13;
      v20 = v12 < v13;
      v15 = result[2];
      if (v20)
      {
        v16 = -1;
      }

      else
      {
        v16 = v14;
      }

      if (v14 >= v15)
      {
        v17 = result[2];
      }

      else
      {
        v17 = v16;
      }

      v18 = v11[1];
      v19 = *v11 + v18 * v17;
      v20 = v17 > v15 || v17 <= -1;
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15 + 1;
      }

      *v11 = v19;
      v11[1] = v21 * v18;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

uint64_t *boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,double>(uint64_t *result, uint64_t a2, double *a3)
{
  v3 = (*a3 - *(a2 + 32)) / *(a2 + 40);
  if (v3 >= 1.0)
  {
    v4 = *a2;
    v5 = *a2;
  }

  else
  {
    v4 = *a2;
    if (v3 >= 0.0)
    {
      v5 = (v3 * v4);
    }

    else
    {
      v5 = -1;
    }
  }

  LODWORD(v6) = v4 + 2;
  v8 = *result;
  v7 = result[1];
  v9 = v5 + 1 >= v6 || v5 <= -2;
  v6 = v6;
  if (v9)
  {
    v6 = 0;
  }

  *result += v7 * (v5 + 1);
  result[1] = v6 * v7;
  return result;
}

uint64_t boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,double>(uint64_t *a1, uint64_t a2, double *a3)
{
  result = boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::index(a2, *a3);
  v6 = *(a2 + 8) - *a2;
  v8 = *a1;
  v7 = a1[1];
  v9 = result >= (v6 >> 3) || result <= -2;
  v10 = ((v6 << 29) + 0x100000000) >> 32;
  if (v9)
  {
    v10 = 0;
  }

  *a1 += v7 * (result + 1);
  a1[1] = v10 * v7;
  return result;
}

uint64_t boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::index(double **a1, double a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = v2 - *a1;
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[v3 >> 1];
      v7 = *v5;
      v6 = v5 + 1;
      v3 += ~(v3 >> 1);
      if (v7 > a2)
      {
        v3 = v4;
      }

      else
      {
        v2 = v6;
      }
    }

    while (v3);
  }

  return ((v2 - *a1) >> 3) - 1;
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a4;
  if (v5 <= 1)
  {
    if (!*(a1 + 16))
    {
      v11 = *(v6 + v7);
      if (v11 == 255)
      {
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short,unsigned char *>(a3, *(a3 + 8));
        ++*(*(a3 + 24) + 2 * v7);
      }

      else
      {
        *(v6 + v7) = v11 + 1;
      }

      return;
    }

    if (v5 == 1)
    {
      v8 = *(v6 + 2 * v7);
      if (v8 == 0xFFFF)
      {
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int,unsigned short *>(a3, *(a3 + 8));
        ++*(*(a3 + 24) + 4 * v7);
      }

      else
      {
        *(v6 + 2 * v7) = v8 + 1;
      }

      return;
    }

    goto LABEL_19;
  }

  if (v5 == 2)
  {
    v9 = *(v6 + 4 * v7);
    if (v9 == -1)
    {
      boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long,unsigned int *>(a3, *(a3 + 8));
      ++*(*(a3 + 24) + 8 * v7);
    }

    else
    {
      *(v6 + 4 * v7) = v9 + 1;
    }

    return;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {

      boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator++((v6 + 24 * v7));
      return;
    }

LABEL_19:
    *(v6 + 8 * v7) = *(v6 + 8 * v7) + 1.0;
    return;
  }

  v10 = *a4;

  boost::histogram::unlimited_storage<std::allocator<char>>::incrementor::operator()<unsigned long long,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type>(a2, v6, a3, v10);
}

void boost::histogram::unlimited_storage<std::allocator<char>>::incrementor::operator()<unsigned long long,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8 * a4);
  if (v6 == -1)
  {
    boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>,unsigned long long *>(a3, *(a3 + 8));
    v7 = (*(a3 + 24) + 24 * a4);

    boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator++(v7);
  }

  else
  {
    *(a2 + 8 * a4) = v6 + 1;
  }
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short,unsigned char *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned short>,unsigned char *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned short>,unsigned char *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int,unsigned short *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned int>,unsigned short *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned int>,unsigned short *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long,unsigned int *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned long long>,unsigned int *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned long long>,unsigned int *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>,unsigned long long *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>,unsigned long long *>(&v3, a2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 24) = 0;
}

void *boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator++(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    boost::histogram::detail::mp_int<std::allocator<unsigned long long>>::operator++();
  }

  v5 = 0;
  v6 = v3 >> 3;
  do
  {
    v7 = v1[v5];
    if (v7 != -1)
    {
      v1[v5] = v7 + 1;
      return a1;
    }

    v1[v5++] = 0;
  }

  while (v6 != v5);
  v8 = a1[2];
  if (v2 >= v8)
  {
    v10 = v6 + 1;
    if ((v6 + 1) >> 61)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v8 - v1;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v13);
    }

    *(8 * v6) = 1;
    v9 = 8 * v6 + 8;
    memcpy(0, v1, v3);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v9;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v2 = 1;
    v9 = (v2 + 1);
  }

  a1[1] = v9;
  return a1;
}

void boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>,unsigned long long *>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  boost::histogram::detail::create_buffer<std::allocator<unsigned char>,unsigned char *>();
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,2u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,2u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = xmmword_25E371F90;
  v4 = *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v12.__vftable = a3;
      v12.__imp_.__imp_ = (a3 + 8);
      v9 = &v13;
      v10 = &v12;
      v14 = &v9;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v4, &v14);
    }

    std::logic_error::logic_error(&v12, "number of arguments != histogram rank");
    v12.__vftable = (MEMORY[0x277D828F8] + 16);
    v9 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v10 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 2U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double>]";
    v11 = 192;
    boost::throw_exception<std::invalid_argument>(&v12, &v9);
  }

  v9 = &v13;
  v10 = a3;
  v12.__vftable = &v9;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v4, &v12);
  v7 = *a2;
  v9 = &v13;
  v10 = (a3 + 8);
  v12.__vftable = &v9;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v7 + 14, &v12);
  return v13;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E334870(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E334C1C(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E334FD8(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377924 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,3u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,3u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 3)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v6.__vftable = &v10;
      v6.__imp_.__imp_ = &v7;
      v11 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v11);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 3U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v10;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,3u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>)#1}>(&v7, &v6);
  return v10;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E3355AC(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E335958(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E335D14(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37793DLL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,3u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v12 = v4;
  v13 = v6;
  v14 = &v12;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v14);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v12 = *a1;
  v13 = v8;
  v14 = &v12;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v14);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v12 = *a1;
  v13 = v10;
  v14 = &v12;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v14);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,4u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,4u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 4)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v6.__vftable = &v11;
      v6.__imp_.__imp_ = &v7;
      v12 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v12);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 4U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v11;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,4u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>)#1}>(&v7, &v6);
  return v11;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E336398(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E336744(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E336B00(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377959 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,4u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v14 = v4;
  v15 = v6;
  v16 = &v14;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v16);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v14 = *a1;
  v15 = v8;
  v16 = &v14;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v16);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v14 = *a1;
  v15 = v10;
  v16 = &v14;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v16);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v14 = *a1;
  v15 = v12;
  v16 = &v14;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v16);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,5u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,5u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 5)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v6.__vftable = &v12;
      v6.__imp_.__imp_ = &v7;
      v13 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v13);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 5U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v12;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,5u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>)#1}>(&v7, &v6);
  return v12;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E3371B0(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33755C(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E337918(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7integerIiNS_11use_defaultENS1_6option3bitILj1EEEEENSt3__15tupleIJRKdSD_SD_SD_SD_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESN_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373F45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E377978 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827C0] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>> &, const std::tuple<const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

__n128 boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,5u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>)#1}>@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1[1];
  v6 = a1[2];
  v16 = v4;
  v17 = v6;
  v18 = &v16;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_(v5, &v18);
  v7 = *a1[1];
  v8 = a1[2] + 8;
  v16 = *a1;
  v17 = v8;
  v18 = &v16;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v7 + 56), &v18);
  v9 = *a1[1];
  v10 = a1[2] + 16;
  v16 = *a1;
  v17 = v10;
  v18 = &v16;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v9 + 112), &v18);
  v11 = *a1[1];
  v12 = a1[2] + 24;
  v16 = *a1;
  v17 = v12;
  v18 = &v16;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v11 + 168), &v18);
  v13 = *a1[1];
  v14 = a1[2] + 32;
  v16 = *a1;
  v17 = v14;
  v18 = &v16;
  _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_EdEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENSY_11result_typeERSY_((v13 + 224), &v18);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  return result;
}

uint64_t boost::histogram::detail::fill<boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,double,double,double,double,double,double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::histogram::detail::args_to_index<0u,6u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double>>(a1, a2, a3);
  if (!v5)
  {
    return *(a1 + 8);
  }

  v6 = v4;
  v8 = v4;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<boost::histogram::unlimited_storage<std::allocator<char>>::incrementor,boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type&,unsigned long &>(a1, &v9, a1, &v8);
  return v6;
}

uint64_t boost::histogram::detail::args_to_index<0u,6u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = xmmword_25E371F90;
  v3 = *a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3);
  if (v4 != 6)
  {
    if (v4 == 1)
    {
      v7 = a3;
      v8 = (a3 + 8);
      v9 = a3 + 16;
      v10 = a3 + 24;
      v11 = a3 + 32;
      v12 = a3 + 40;
      v6.__vftable = &v13;
      v6.__imp_.__imp_ = &v7;
      v14 = &v6;
      _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(v3, &v14);
    }

    std::logic_error::logic_error(&v6, "number of arguments != histogram rank");
    v6.__vftable = (MEMORY[0x277D828F8] + 16);
    v7 = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/detail/linearize.hpp";
    v8 = "optional_index boost::histogram::detail::args_to_index(std::false_type, S &, const T &, const U &) [I = 0U, N = 6U, S = boost::histogram::unlimited_storage<>, T = std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<>, boost::histogram::axis::variable<>, boost::histogram::axis::integer<int, boost::use_default, boost::histogram::axis::option::bit<1>>>>, U = std::tuple<double, double, double, double, double, double>]";
    v9 = 192;
    boost::throw_exception<std::invalid_argument>(&v6, &v7);
  }

  v7 = &v13;
  v8 = a2;
  v9 = a3;
  boost::mp11::detail::mp_for_each_impl<std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>,boost::histogram::detail::optional_index boost::histogram::detail::args_to_index<0u,6u,boost::histogram::unlimited_storage<std::allocator<char>>,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,std::tuple<double,double,double,double,double,double>>(std::integral_constant<BOOL,false>,boost::histogram::unlimited_storage<std::allocator<char>> &,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>> const&,std::tuple<double,double,double,double,double,double> const&)::{lambda(std::integral_constant<unsigned long,0ul>,std::integral_constant<unsigned long,1ul>,std::integral_constant<unsigned long,2ul>,std::integral_constant<unsigned long,3ul>,std::integral_constant<unsigned long,4ul>,std::integral_constant<unsigned long,5ul>)#1}>(&v7, &v6);
  return v13;
}

void _ZNKR5boost7variantINS_9histogram4axis7regularIdNS_11use_defaultES4_S4_EEJNS2_8variableIdS4_S4_NSt3__19allocatorIdEEEENS2_7integerIiS4_NS2_6option3bitILj1EEEEEEE13apply_visitorINS_6detail7variant15result_wrapper1IZNS1_6detail15linearize_valueIJS5_SA_SF_ENS7_5tupleIJRKdSP_SP_SP_SP_SP_EEEEEvRNSL_14optional_indexERKNS2_7variantIJDpT_EEERKT0_EUlRKT_E_RKSG_EEEENS12_11result_typeERS12_(int *a1, uint64_t **a2)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v2 = **a2;
      v3 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&>>();
    case 2:
      v6 = **a2;
      v7 = (*a2)[1];

      boost::histogram::detail::linearize_value<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,std::tuple<double const&,double const&,double const&,double const&,double const&,double const&>>();
    default:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t sub_25E337FF0(uint64_t result)
{
  v3 = v2[1];
  if (result + 1 >= *v1 + 2 || result <= -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v1 + 2;
  }

  *v2 += v3 * (result + 1);
  v2[1] = v5 * v3;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_7regularIdNS_11use_defaultES5_S5_EENSt3__15tupleIJRKdSA_SA_SA_SA_SA_EEEEEDaRKT_RKT0_ENKUlRKS6_E_clESK_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E3733F3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::regular<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E33839C(uint64_t result)
{
  v3 = v1[1] - *v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = result >= (v3 >> 3) || result <= -2;
  v7 = ((v3 << 29) + 0x100000000) >> 32;
  if (v6)
  {
    v7 = 0;
  }

  *v2 += v4 * (result + 1);
  v2[1] = v7 * v4;
  return result;
}

void _ZZN5boost9histogram4axis6traits5indexINS1_8variableIdNS_11use_defaultES5_NSt3__19allocatorIdEEEENS6_5tupleIJRKdSC_SC_SC_SC_SC_EEEEEDaRKT_RKT0_ENKUlRKS9_E_clESM_()
{
  boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL));
  if (v18.__r_.__value_.__r.__words[0])
  {
    v0 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    v0 = (0x800000025E373971 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v1 = strlen(v0);
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 < 0x17)
  {
    v17 = v1;
    if (v1)
    {
      memmove(&__dst, v0, v1);
    }

    *(&__dst + v2) = 0;
    free(v18.__r_.__value_.__l.__data_);
    boost::core::scoped_demangled_name::scoped_demangled_name(&v18, (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL));
    if (v18.__r_.__value_.__r.__words[0])
    {
      v3 = v18.__r_.__value_.__r.__words[0];
    }

    else
    {
      v3 = (0x800000025E37799ALL & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 < 0x17)
    {
      v15 = v4;
      if (v4)
      {
        memmove(&v14, v3, v4);
      }

      *(&v14 + v5) = 0;
      free(v18.__r_.__value_.__l.__data_);
      v6 = (*(MEMORY[0x277D827A8] + 8) & 0x7FFFFFFFFFFFFFFFLL);
      boost::core::scoped_demangled_name::scoped_demangled_name(&v18, v6);
      if (v18.__r_.__value_.__r.__words[0])
      {
        v7 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = v6;
      }

      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v8;
      if (v8 < 0x17)
      {
        v13 = v8;
        if (v8)
        {
          memmove(&v12, v7, v8);
        }

        *(&v12 + v9) = 0;
        free(v18.__r_.__value_.__l.__data_);
        boost::histogram::detail::cat<std::string,char [35],std::string,char [5],std::string>(&__dst, ": cannot convert argument of type ", &v14, " to ", &v12);
        v10 = std::logic_error::logic_error(&v19, &v18);
        v19.__vftable = (MEMORY[0x277D828F8] + 16);
        v11[0] = "PerfPowerServicesReader/external/lib/boostorg/histogram/include/boost/histogram/axis/traits.hpp";
        v11[1] = "auto boost::histogram::axis::traits::index(const boost::histogram::axis::variable<> &, const std::tuple<const double &, const double &, const double &, const double &, const double &, const double &> &)::(anonymous class)::operator()(const Axis &) const";
        v11[2] = 190;
        boost::throw_exception<std::invalid_argument>(v10, v11);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_25E338758(uint64_t result)
{
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  if (result > v3 || result <= -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v2 += v4 * result;
  v2[1] = v7 * v4;
  return result;
}