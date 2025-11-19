void sub_22295C3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::TagBucketList::addBILOUTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107[2] = *MEMORY[0x277D85DE8];
  v8 = a4 - a3;
  v9 = *(a1 + 16) + 24 * a3;
  if (a4 - a3 == 1)
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v101, (a1 + 176), (a1 + 200));
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::string::append(&v101, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[0];
    v107[0] = v13->__r_.__value_.__l.__size_;
    *(v107 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v16 = *(v9 + 8);
    v17 = *(v9 + 16);
    if (v16 >= v17)
    {
      v32 = (v16 - *v9) >> 5;
      v33 = v32 + 1;
      if ((v32 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v34 = v17 - *v9;
      if (v34 >> 4 > v33)
      {
        v33 = v34 >> 4;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFE0)
      {
        v35 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      v106 = v9;
      if (v35)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v35);
      }

      v40 = 32 * v32;
      v41 = v107[0];
      *v40 = v14;
      *(v40 + 8) = v41;
      *(v40 + 15) = *(v107 + 7);
      *(v40 + 23) = v15;
      *(v40 + 24) = a5;
      v19 = 32 * v32 + 32;
      v42 = *(v9 + 8) - *v9;
      v43 = (32 * v32 - v42);
      memcpy(v43, *v9, v42);
      v44 = *v9;
      *v9 = v43;
      v103 = v44;
      *(v9 + 8) = v19;
      v104 = v44;
      v45 = *(v9 + 16);
      *(v9 + 16) = 0;
      v105 = v45;
      v102 = v44;
      std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v102);
    }

    else
    {
      v18 = v107[0];
      *v16 = v14;
      *(v16 + 8) = v18;
      *(v16 + 15) = *(v107 + 7);
      *(v16 + 23) = v15;
      *(v16 + 24) = a5;
      v19 = v16 + 32;
    }

    *(v9 + 8) = v19;
  }

  else
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v101, (a1 + 80), (a1 + 200));
    v22 = *(a2 + 23);
    if (v22 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    v25 = std::string::append(&v101, v23, v24);
    v26 = v25->__r_.__value_.__r.__words[0];
    v107[0] = v25->__r_.__value_.__l.__size_;
    *(v107 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
    v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v28 = *(v9 + 8);
    v29 = *(v9 + 16);
    if (v28 >= v29)
    {
      v36 = (v28 - *v9) >> 5;
      v37 = v36 + 1;
      if ((v36 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v38 = v29 - *v9;
      if (v38 >> 4 > v37)
      {
        v37 = v38 >> 4;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFE0)
      {
        v39 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      v106 = v9;
      if (v39)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v39);
      }

      v46 = 32 * v36;
      v47 = v107[0];
      *v46 = v26;
      *(v46 + 8) = v47;
      *(v46 + 15) = *(v107 + 7);
      *(v46 + 23) = v27;
      v107[0] = 0;
      *(v107 + 7) = 0;
      *(v46 + 24) = a5;
      v31 = 32 * v36 + 32;
      v48 = *(v9 + 8) - *v9;
      v49 = (32 * v36 - v48);
      memcpy(v49, *v9, v48);
      v50 = *v9;
      *v9 = v49;
      v103 = v50;
      *(v9 + 8) = v31;
      v104 = v50;
      v51 = *(v9 + 16);
      *(v9 + 16) = 0;
      v105 = v51;
      v102 = v50;
      std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v102);
    }

    else
    {
      v30 = v107[0];
      *v28 = v26;
      *(v28 + 8) = v30;
      *(v28 + 15) = *(v107 + 7);
      *(v28 + 23) = v27;
      *(v28 + 24) = a5;
      v31 = v28 + 32;
    }

    *(v9 + 8) = v31;
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    v100 = a4 - 1;
    if (a3 + 1 < (a4 - 1))
    {
      v52 = v8 - 2;
      v53 = 24 * a3;
      do
      {
        v54 = *(a1 + 16);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v101, (a1 + 104), (a1 + 200));
        v55 = *(a2 + 23);
        if (v55 >= 0)
        {
          v56 = a2;
        }

        else
        {
          v56 = *a2;
        }

        if (v55 >= 0)
        {
          v57 = *(a2 + 23);
        }

        else
        {
          v57 = *(a2 + 8);
        }

        v58 = std::string::append(&v101, v56, v57);
        v59 = v58->__r_.__value_.__r.__words[0];
        v107[0] = v58->__r_.__value_.__l.__size_;
        *(v107 + 7) = *(&v58->__r_.__value_.__r.__words[1] + 7);
        v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v61 = v54 + v53;
        v62 = *(v54 + v53 + 32);
        v63 = *(v54 + v53 + 40);
        if (v62 >= v63)
        {
          v66 = (v54 + v53 + 24);
          v67 = (v62 - *v66) >> 5;
          v68 = v67 + 1;
          if ((v67 + 1) >> 59)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v69 = v63 - *v66;
          if (v69 >> 4 > v68)
          {
            v68 = v69 >> 4;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFE0)
          {
            v70 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          v106 = v66;
          if (v70)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v70);
          }

          v71 = 32 * v67;
          v72 = v107[0];
          *v71 = v59;
          *(v71 + 8) = v72;
          *(v71 + 15) = *(v107 + 7);
          *(v71 + 23) = v60;
          v107[0] = 0;
          *(v107 + 7) = 0;
          *(v71 + 24) = a5;
          v65 = 32 * v67 + 32;
          v73 = *(v61 + 32) - *v66;
          v74 = (32 * v67 - v73);
          memcpy(v74, *v66, v73);
          v75 = *v66;
          *v66 = v74;
          v103 = v75;
          *(v61 + 32) = v65;
          v104 = v75;
          v76 = *(v61 + 40);
          *(v61 + 40) = 0;
          v105 = v76;
          v102 = v75;
          std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v102);
        }

        else
        {
          v64 = v107[0];
          *v62 = v59;
          *(v62 + 8) = v64;
          *(v62 + 15) = *(v107 + 7);
          *(v62 + 23) = v60;
          *(v62 + 24) = a5;
          v65 = v62 + 32;
        }

        *(v61 + 32) = v65;
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        v53 += 24;
        --v52;
      }

      while (v52);
    }

    v77 = *(a1 + 16);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v101, (a1 + 128), (a1 + 200));
    v78 = *(a2 + 23);
    if (v78 >= 0)
    {
      v79 = a2;
    }

    else
    {
      v79 = *a2;
    }

    if (v78 >= 0)
    {
      v80 = *(a2 + 23);
    }

    else
    {
      v80 = *(a2 + 8);
    }

    v81 = std::string::append(&v101, v79, v80);
    v82 = v77 + 24 * v100;
    v83 = v81->__r_.__value_.__r.__words[0];
    v107[0] = v81->__r_.__value_.__l.__size_;
    *(v107 + 7) = *(&v81->__r_.__value_.__r.__words[1] + 7);
    v84 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v85 = *(v82 + 8);
    v86 = *(v82 + 16);
    if (v85 >= v86)
    {
      v89 = (v85 - *v82) >> 5;
      v90 = v89 + 1;
      if ((v89 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v91 = v86 - *v82;
      if (v91 >> 4 > v90)
      {
        v90 = v91 >> 4;
      }

      if (v91 >= 0x7FFFFFFFFFFFFFE0)
      {
        v92 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v92 = v90;
      }

      v106 = v82;
      if (v92)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v92);
      }

      v93 = 32 * v89;
      v94 = v107[0];
      *v93 = v83;
      *(v93 + 8) = v94;
      *(v93 + 15) = *(v107 + 7);
      *(v93 + 23) = v84;
      *(v93 + 24) = a5;
      v88 = 32 * v89 + 32;
      v95 = *(v82 + 8) - *v82;
      v96 = (32 * v89 - v95);
      memcpy(v96, *v82, v95);
      v97 = *v82;
      *v82 = v96;
      v103 = v97;
      *(v82 + 8) = v88;
      v104 = v97;
      v98 = *(v82 + 16);
      *(v82 + 16) = 0;
      v105 = v98;
      v102 = v97;
      std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v102);
    }

    else
    {
      v87 = v107[0];
      *v85 = v83;
      *(v85 + 8) = v87;
      *(v85 + 15) = *(v107 + 7);
      *(v85 + 23) = v84;
      *(v85 + 24) = a5;
      v88 = v85 + 32;
    }

    *(v82 + 8) = v88;
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  v99 = *MEMORY[0x277D85DE8];
}

void sub_22295CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectDebugInformation>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 24);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    v2 = v1;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x223DC4D00](v1, 0x20C40A759441BLL);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance(void)::t);
}

void **boost::serialization::access::destroy<std::vector<std::string>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x223DC4D00](v1, 0x20C40960023A9);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, std::vector<std::string> *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v6);
  v5 = *(this + 5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v6 >= 4u)
  {
    v7 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<std::string>::reserve(a3, 0);
  std::vector<std::string>::resize(a3, 0);
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>()
{
  v3 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x223DC4860]();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v2, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v2);
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5338;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5338;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E83E0;
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E83E0;
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8488;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<std::string>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void **boost::serialization::access::destroy<std::vector<std::vector<unsigned long>>>(void **result)
{
  if (result)
  {
    v1 = result;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::vector<unsigned long>>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v6);
  v5 = *(this + 5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v6 >= 4u)
  {
    v7 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<std::vector<unsigned long>>::reserve(a3, 0);
  std::vector<std::vector<unsigned long>>::resize(a3, 0);
}

void *std::vector<std::vector<unsigned long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::vector<unsigned long>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void **boost::serialization::access::destroy<std::vector<unsigned long>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, void *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v7);
  v6 = *(this + 5);
  v5 = (this + 40);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v7 >= 4u)
  {
    v8 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v5);
  }

  std::vector<double>::reserve(a3, 0);
  std::vector<unsigned long>::resize(a3, 0);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4E08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4E08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7978;
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7978;
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7A20;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E52B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E52B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8268;
  boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8268;
  boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8310;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<std::vector<unsigned long>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E53B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E53B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8168;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8168;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8210;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5438;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5438;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8068;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8068;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E8110;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::string>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::string>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::string>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, std::vector<std::string> *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v10);
  v9 = 0;
  __n = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &__n);
  if (v10 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v9);
  }

  std::vector<std::string>::reserve(a3, __n);
  v5 = __n;
  std::vector<std::string>::resize(a3, __n);
  if (v5)
  {
    begin = a3->__begin_;
    do
    {
      --v5;
      v7 = begin + 1;
      boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load(this + 5, begin);
      begin = v7;
    }

    while (v5);
  }
}

uint64_t boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned int>(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 40) + 64))(*(a1 + 40), a2, 4) != 4)
  {
    boost::archive::archive_exception::archive_exception(v5, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5138;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5138;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::vector<unsigned long>>>::load_object_data(int a1, boost::archive::detail::basic_iarchive_impl **this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v9);
  v8 = 0;
  v7 = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v7);
  if (v9 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v8);
  }

  std::vector<std::vector<unsigned long>>::reserve(a3, v7);
  v5 = v7;
  std::vector<std::vector<unsigned long>>::resize(a3, v7);
  if (v5)
  {
    v6 = *a3;
    do
    {
      --v5;
      boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(this, v6, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
      v6 += 24;
    }

    while (v5);
  }
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>::load_object_data(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = (a3[1] - *a3) >> 3;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(a2, &v11);
  std::vector<unsigned long>::resize(a3, v11);
  v10 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(a2, v12);
  if (v12[0] == 4 || (result = boost::archive::detail::basic_iarchive::get_library_version(a2, &v9), v9 == 5))
  {
    result = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned int>(a2, &v10);
  }

  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = 8 * v11;
    result = (*(**(a2 + 40) + 64))(*(a2 + 40), v6, 8 * v11);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v12, 8, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v12);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4C88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4C88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E50B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E50B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E51B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E51B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5238;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5238;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      *(v1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

void **boost::serialization::access::destroy<std::vector<float>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, std::vector<int> *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iarchive::get_library_version(this, &v8);
  v6 = *(this + 5);
  v5 = (this + 40);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v8 >= 4u)
  {
    v9 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v5);
  }

  std::vector<float>::reserve(a3, 0);
  std::vector<float>::resize(a3, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void std::vector<float>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 4 * v6);
    v11 = v4 + 4 * v6;
  }

  *(a1 + 8) = v11;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4E88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4E88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<float>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7AF0;
  boost::serialization::extended_type_info_typeid<std::vector<float>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7AF0;
  boost::serialization::extended_type_info_typeid<std::vector<float>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<float>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7B98;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<float>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5028;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5028;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7E68;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7E68;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7F10;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>::load_object_data(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = (a3[1] - *a3) >> 2;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(a2, &v11);
  std::vector<float>::resize(a3, v11);
  v10 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(a2, v12);
  if (v12[0] == 4 || (result = boost::archive::detail::basic_iarchive::get_library_version(a2, &v9), v9 == 5))
  {
    result = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned int>(a2, &v10);
  }

  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = 4 * v11;
    result = (*(**(a2 + 40) + 64))(*(a2 + 40), v6, 4 * v11);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v12, 8, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v12);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4D08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4D08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4FA8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4FA8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4F08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4F08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7878;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7878;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7920;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4D88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4D88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void **boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectIntentList>(void **result)
{
  if (result)
  {
    v1 = result;
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, void *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v6);
  v5 = *(this + 5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v6 >= 4u)
  {
    v7 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(a3, 0);
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(a3, 0);
}

void std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(void *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 48 * a2;
      while (v4 != v11)
      {
        v4 -= 48;
        std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v13 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectIntent>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 24);
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, std::string *a3)
{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, &a3[1], boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

void **boost::serialization::access::destroy<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>(void **result)
{
  if (result)
  {
    v1 = result;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, void *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v6);
  v5 = *(this + 5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v6 >= 4u)
  {
    v7 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(a3, 0);
  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(a3, 0);
}

void std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(void *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 48 * a2;
      while (v4 != v11)
      {
        v4 -= 48;
        std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v13 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectParameter>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3);

  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3 + 1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4A08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4A08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E72C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E72C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7370;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4A88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4A88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E71C8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E71C8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7270;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4B08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4B08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E70C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E70C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7170;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4B88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4B88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E6FC8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6FC8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E7070;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4C08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4C08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E6EC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6EC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E6F70;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::load_object_data(int a1, boost::archive::detail::basic_iarchive_impl **this, unint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v9);
  v8 = 0;
  v7 = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v7);
  if (v9 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v8);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(a3, v7);
  v5 = v7;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(a3, v7);
  if (v5)
  {
    v6 = *a3;
    do
    {
      --v5;
      boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(this, v6, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v6 += 48;
    }

    while (v5);
  }
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, &a3[1], boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::load_object_data(int a1, boost::archive::detail::basic_iarchive_impl **this, unint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v9);
  v8 = 0;
  v7 = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v7);
  if (v9 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v8);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(a3, v7);
  v5 = v7;
  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(a3, v7);
  if (v5)
  {
    v6 = *a3;
    do
    {
      --v5;
      boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(this, v6, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v6 += 48;
    }

    while (v5);
  }
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3);

  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3 + 1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4808;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4808;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4888;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4888;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4908;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4908;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4988;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4988;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

void *boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::load_object_data(uint64_t a1, uint64_t a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));

  return boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E46F8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E46F8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E6CC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6CC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_2835E6D70;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1);

  JUMPOUT(0x223DC4D00);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::load_object_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(a2, a3);
  v5 = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(v4, a3 + 8);

  return boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(v5, a3 + 16);
}

uint64_t boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 40) + 64))(*(a1 + 40), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v5, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4678;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4678;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

snlp::ssu::cache::SSUCacheFileReadStream *snlp::ssu::cache::SSUCacheFileReadStream::SSUCacheFileReadStream(snlp::ssu::cache::SSUCacheFileReadStream *this, const std::__fs::filesystem::path *a2, int a3)
{
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  std::ifstream::basic_ifstream(this);
  snlp::ssu::cache::SSUCacheFileReadStream::buildArchive(this, a3, this + 576);
  v6 = (this + 704);
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 47) = 0u;
  *(this + 768) = 0;
  __val = 0;
  v19 = 0uLL;
  p_val = &__val;
  v7 = *(this + 174);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v16.__r_.__value_.__r.__words[0] = &p_val;
  (off_2835E4658[v7])(&v16, this + 576);
  if (__val >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v16, __val);
    v14 = std::string::insert(&v16, 0, "Cannot read SSU cache file with unrecognized version: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2835E9238;
  }

  *(this + 91) = __val;
  *(this + 46) = v19;
  memset(&v17, 0, sizeof(v17));
  v16.__r_.__value_.__r.__words[0] = &v17;
  v8 = *(this + 174);
  if (v8 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  p_val = &v16;
  (off_2835E4768[v8])(&p_val, this + 576);
  v9 = *v6;
  if (*v6)
  {
    v10 = *(this + 89);
    v11 = *v6;
    if (v10 != v9)
    {
      do
      {
        v10 -= 48;
        std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v10);
      }

      while (v10 != v9);
      v11 = *v6;
    }

    *(this + 89) = v9;
    operator delete(v11);
    *v6 = 0;
    *(this + 89) = 0;
    *(this + 90) = 0;
  }

  *(this + 704) = v17;
  memset(&v17, 0, sizeof(v17));
  v16.__r_.__value_.__r.__words[0] = &v17;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v16);
  return this;
}

void sub_222960C84(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, void *a10, uint64_t a11, std::string *a12, void *__pa, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, __int128 a20, std::string::size_type a21)
{
  v24 = a2;
  if (a18 < 0)
  {
    operator delete(__pa);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&a20);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v21 + 576));
      std::ifstream::~ifstream(v21, MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](v21 + 424);
      if (v24 == 2)
      {
        v26 = __cxa_begin_catch(a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__pa, "I/O stream exception: ");
        v28 = (*(*v26 + 16))(v26);
        v29 = std::string::append(&__pa, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        a21 = v29->__r_.__value_.__r.__words[2];
        a20 = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &a20);
        exception->__vftable = &unk_2835E6BA0;
      }

      if (v24 == 1)
      {
        v31 = __cxa_begin_catch(a1);
        v32 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__pa, "Boost serialization exception: ");
        v33 = (*(*v31 + 16))(v31);
        v34 = std::string::append(&__pa, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        a21 = v34->__r_.__value_.__r.__words[2];
        a20 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v32, &a20);
        v32->__vftable = &unk_2835E6BA0;
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_222960EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void sub_222960F88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v18);
  __cxa_end_catch();
  JUMPOUT(0x222960FB0);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStream::buildArchive@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E4598;
    result = boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(v4);
    v6 = 1;
  }

  else
  {
    v7 = boost::archive::binary_iarchive_impl<boost::archive::binary_iarchive,char,std::char_traits<char>>::binary_iarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E4600;
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::init(v7);
    result = boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::init((a3 + 40));
    v6 = 0;
  }

  *(a3 + 120) = v6;
  return result;
}

void sub_222961058(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(v1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::CacheFileException::~CacheFileException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectIntentList snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectIntentList>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectIntentList snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectIntentList>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectHeader snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectHeader>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectHeader snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectHeader>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

void boost::archive::binary_iarchive::~binary_iarchive(boost::archive::binary_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);
}

void boost::archive::text_iarchive::~text_iarchive(boost::archive::text_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStream::isAtEnd(snlp::ssu::cache::SSUCacheFileReadStream *this)
{
  if (*(this + 94) == *(this + 92))
  {
    v1 = *(this + 95);
    v2 = *(this + 93);
    v3 = *(this + 91);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1 == v2;
    }

    v5 = v4;
    if (v3)
    {
      v6 = v1 == v2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v5 = *(this + 768);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchNegative@<D0>(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 94) == *(this + 92))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "Client tried to read the next negative cached encodings batch when there are none remaining", &v10, 2u);
    }

    *a2 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v11 = 0u;
    *v12 = 0u;
    v10 = 0u;
    v13 = &v10;
    v6 = *(this + 174);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14 = &v13;
    (off_2835E4F78[v6])(&v14, this + 576);
    v7 = *(this + 94) + 1;
    *(this + 94) = v7;
    if (v7 == *(this + 92) && snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(this) != 4660)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Corrupted SSU cache file: invalid terminator after last negative batch");
      exception->__vftable = &unk_2835E6BA0;
    }

    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = v12[0];
    *(a2 + 32) = *v12;
    *(a2 + 48) = 1;
  }

  return result;
}

void sub_222961518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::string *a16)
{
  __cxa_free_exception(v16);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  if (a2 == 2)
  {
    v20 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a16, "I/O stream exception: ");
    v22 = (*(*v20 + 16))(v20);
    v23 = std::string::append(&a16, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(v17 - 48) = *(&v23->__r_.__value_.__l + 2);
    *(v17 - 64) = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, (v17 - 64));
    exception->__vftable = &unk_2835E6BA0;
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a16, "Boost serialization exception: ");
    v27 = (*(*v25 + 16))(v25);
    v28 = std::string::append(&a16, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    *(v17 - 48) = *(&v28->__r_.__value_.__l + 2);
    *(v17 - 64) = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v26, (v17 - 64));
    v26->__vftable = &unk_2835E6BA0;
  }

  _Unwind_Resume(a1);
}

void sub_2229616E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_222961774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v21);
  __cxa_end_catch();
  JUMPOUT(0x22296179CLL);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(uint64_t a1)
{
  v3 = &v4;
  v4 = 0;
  v1 = *(a1 + 696);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v3;
  (off_2835E4F88[v1])(&v5, a1 + 576);
  return v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

double snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchPositive@<D0>(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 94) < *(this + 92))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v5 = "Client tried to read a positive cached encodings batch when there are still negative batches to be read";
LABEL_7:
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, v5, &v12, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (*(this + 95) == *(this + 93))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v5 = "Client tried to read the next positive cached encodings batch when there are none remaining";
      goto LABEL_7;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 72) = 0;
    return result;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v17.__r_.__value_.__r.__words[0] = &v12;
  v7 = *(this + 174);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v18 = &v17;
  (off_2835E5098[v7])(&v18, this + 576);
  v8 = *(this + 95) + 1;
  *(this + 95) = v8;
  if (v8 == *(this + 93) && snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(this) != 22136)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Corrupted SSU cache file: invalid terminator after last positive batch");
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2835E9238;
  }

  v9 = v13;
  *a2 = v12;
  *(a2 + 16) = v9;
  result = *&v14;
  v10 = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = v10;
  *(a2 + 64) = v16;
  *(a2 + 72) = 1;
  return result;
}

void sub_222961A9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::string *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
    if ((v19 & 1) == 0)
    {
LABEL_6:
      snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive::~SSUCacheObjectEncodingsBatchPositive(&a9);
      if (a2 == 2)
      {
        v23 = __cxa_begin_catch(a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&a18, "I/O stream exception: ");
        v25 = (*(*v23 + 16))(v23);
        v26 = std::string::append(&a18, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(v20 - 48) = *(&v26->__r_.__value_.__l + 2);
        *(v20 - 64) = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, (v20 - 64));
        exception->__vftable = &unk_2835E6BA0;
      }

      if (a2 == 1)
      {
        v28 = __cxa_begin_catch(a1);
        v29 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&a18, "Boost serialization exception: ");
        v30 = (*(*v28 + 16))(v28);
        v31 = std::string::append(&a18, v30);
        v32 = *&v31->__r_.__value_.__l.__data_;
        *(v20 - 48) = *(&v31->__r_.__value_.__l + 2);
        *(v20 - 64) = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v29, (v20 - 64));
        v29->__vftable = &unk_2835E6BA0;
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_222961C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void sub_222961CEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v24)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x222961D48);
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

void snlp::ssu::cache::SSUCacheFileReadStream::readDebugInformation(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 91))
  {
    *(this + 768) = 1;
    v4 = 0u;
    memset(v5, 0, 32);
    v6[0] = &v4;
    v3 = *(this + 174);
    if (v3 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v7 = v6;
    (off_2835E54A8[v3])(&v7, this + 576);
    *a2 = v4;
    *(a2 + 16) = *&v5[0];
    v4 = 0uLL;
    *(a2 + 24) = *(v5 + 8);
    *(a2 + 40) = *(&v5[1] + 1);
    memset(v5, 0, 32);
    *(a2 + 48) = 1;
    v6[0] = v5 + 1;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v6);
    v6[0] = &v4;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

void sub_222962088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_22296211C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v21);
  __cxa_end_catch();
  JUMPOUT(0x222962144);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectDebugInformation snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectDebugInformation snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(unint64_t **a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::forward(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 48));
  v7 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 72));
  v8 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 144));
  v9 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 96));
  nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2, v48);
  nlv4_inference_orchestrator::inference_engine::utils::padEmbeddingTensor(v48, NetworkConfig, v7, (a1 + 16), &v44, *(a1 + 40));
  if (v44 == v45)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 6, v41);
    v10 = *(a1 + 40);
    nlv4_inference_orchestrator::inference_engine::utils::padSpanTensor(v41, NetworkConfig, v9, (a1 + 16), &v38);
    if (v38 == *(&v38 + 1))
    {
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    else
    {
      nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 12, v35);
      nlv4_inference_orchestrator::inference_engine::utils::padContextTensor(v35, v8, (a1 + 16), &v31, *(a1 + 40));
      if (v31 == v32)
      {
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
      }

      else
      {
        nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 18, v28);
        v11 = *(a1 + 40);
        nlv4_inference_orchestrator::inference_engine::utils::padITFMMaskTensor(v28, NetworkConfig, (a1 + 16), &v24);
        if (v24 == v25)
        {
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
        }

        else
        {
          memset(v16, 0, sizeof(v16));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16, v44, v45, (v45 - v44) >> 3);
          memset(v17, 0, sizeof(v17));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v17, v46, v47, (v47 - v46) >> 2);
          memset(v18, 0, sizeof(v18));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v18, v38, *(&v38 + 1), (*(&v38 + 1) - v38) >> 3);
          memset(v19, 0, sizeof(v19));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v19, v39, v40, (v40 - v39) >> 2);
          memset(v20, 0, sizeof(v20));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v20, v31, v32, (v32 - v31) >> 3);
          memset(v21, 0, sizeof(v21));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v21, v33, v34, (v34 - v33) >> 2);
          memset(v22, 0, sizeof(v22));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v22, v24, v25, (v25 - v24) >> 3);
          memset(v23, 0, sizeof(v23));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v23, v26, v27, (v27 - v26) >> 2);
          itfm_inference_orchestrator::inference_engine::ITFMModule::forward(*(a1 + 8), v16, &v12);
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          if (&v12 != a3)
          {
            std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, v12, v13, (v13 - v12) >> 3);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 24), __p, v15, (v15 - __p) >> 2);
          }

          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          if (v12)
          {
            v13 = v12;
            operator delete(v12);
          }

          nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(v16);
        }

        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }

        if (v28[0])
        {
          v28[1] = v28[0];
          operator delete(v28[0]);
        }
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v35[0])
      {
        v35[1] = v35[0];
        operator delete(v35[0]);
      }
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v38)
    {
      *(&v38 + 1) = v38;
      operator delete(v38);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }
}

void sub_22296265C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&a15);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a39);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a45);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a51);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a57);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v57 - 256));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v57 - 208));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v57 - 160));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v57 - 112));
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::~EspressoITFMModel(void **this)
{
  itfm_inference_orchestrator::inference_engine::EspressoITFMModel::~EspressoITFMModel(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5508;
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::EspressoITFMModel(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_2835E5508;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "component_name");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a3, __p);
  if (v5 && *(v5 + 16) == 4)
  {
    if (*(v5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 16), v5[5], v5[6]);
    }

    else
    {
      v6 = *(v5 + 5);
      *(a1 + 32) = v5[7];
      *(a1 + 16) = v6;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>((a1 + 16), "UNDEFINED_COMPONENT");
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "max_num_utterance_embeddings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "utterance_tokens_embedder_emb_dim");
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "max_num_spans_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 120), "spans_pad_symbol_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 144), "max_num_context_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 168), "batch_size");
  operator new();
}

void sub_222962ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::inference_engine::ITFMModule::~ITFMModule(void **this)
{
  *this = &unk_2835E5580;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5580;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E55B8;
  v2 = *(this + 2);
  espresso_plan_destroy();
  v3 = *(this + 1);
  espresso_context_destroy();
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(this + 40);
}

void *snlp::common::espresso_inference::pre_e5ml::EspressoModule::EspressoModule(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_2835E55B8;
  std::unordered_map<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>::unordered_map((a1 + 5), a3);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::deserialiseModule(a1, a2);
  return a1;
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::deserialiseModule(void *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  context = espresso_create_context();
  a1[1] = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not deserialise espresso context.");
    goto LABEL_35;
  }

  plan = espresso_create_plan();
  a1[2] = plan;
  if (!plan)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not create espresso plan.");
LABEL_35:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
  }

  v7 = espresso_plan_add_network();
  if (v7)
  {
    v16 = v7;
    v17 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v22, v16);
    v18 = std::string::insert(&v22, 0, "Could not set up espresso network. Got error status: ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v17, &buf);
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "bolt_task_id");
  std::string::basic_string[abi:ne200100]<0>(&v21, "not_found");
  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v22.__r_.__value_.__l.__data_))
  {
    v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v22.__r_.__value_.__l.__data_);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v8 + 16) == 4)
    {
      v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v22.__r_.__value_.__l.__data_);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (*(v9 + 16) != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::string::operator=(&v21, (v9 + 5));
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "component_name");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1 + 5, &buf.__r_.__value_.__l.__data_);
  if (v10 && *(v10 + 16) == 4)
  {
    if (*(v10 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10[5], v10[6]);
    }

    else
    {
      __p = *(v10 + 5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "UNDEFINED_COMPONENT");
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v11 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v13 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v21.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] [model_task_id=%s]", &buf, 0x16u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_222963200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::buildPlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  v1 = *(this + 2);
  result = espresso_plan_build();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to build espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::executePlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  v1 = *(this + 2);
  result = espresso_plan_execute_sync();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to execute espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::cleanPlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  v1 = *(this + 2);
  result = espresso_plan_build_clean();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to clean up espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(uint64_t a1, const void **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2);
    if (!v4)
    {
      goto LABEL_31;
    }

    if (*(v4 + 16) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2);
      if (v5)
      {
        if (*(v5 + 16) != 1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        result = *(v5 + 10);
        goto LABEL_29;
      }

LABEL_31:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "component_name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), __p);
  if (v7 && *(v7 + 16) == 4)
  {
    if (*(v7 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v7[5], v7[6]);
    }

    else
    {
      v17 = *(v7 + 5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "UNDEFINED_COMPONENT");
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+<char>();
  v8 = std::string::append(&v16, ".\n");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v20, "Note that only parameters of unsigned integer type are currently expected by SiriNaturalLanguageParsing.  This issue will likely cause SiriNaturalLanguageParsing to fail.");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    v14 = __p;
    if (v19 < 0)
    {
      v14 = __p[0];
    }

    LODWORD(v20.__r_.__value_.__l.__data_) = 136315394;
    *(v20.__r_.__value_.__r.__words + 4) = v13;
    WORD2(v20.__r_.__value_.__r.__words[1]) = 2080;
    *(&v20.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", &v20, 0x16u);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  result = 0;
LABEL_29:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222963678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(uint64_t a1, uint64_t *a2, void *a3)
{
  v12 = a3[3];
  v5 = a3[1] - *a3;
  espresso_buffer_pack_tensor_shape();
  v13 = 65568;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  result = espresso_network_bind_buffer();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_2229637C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::getOutput(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 65568;
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  v8 = *(a1 + 24);
  if (espresso_network_bind_buffer())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v20 = 0;
  espresso_buffer_unpack_tensor_shape();
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v19 = 0uLL;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, &v23, &v23 + 8 * v20, v20);
  v9 = __p;
  v10 = v21;
  *a3 = __p;
  v11 = v19;
  *(a3 + 8) = v19;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    if (((v11 - v9) >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v11 - v9) >> 3;
    }

    v13 = 1;
    do
    {
      v14 = *v9;
      v9 += 8;
      v13 *= v14;
      --v12;
    }

    while (v12);
    v15 = v13;
  }

  __p = 0;
  v19 = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v10, v10 + 4 * v15, v15);
  if ((a3 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 24), __p, v19, (v19 - __p) >> 2);
  }

  free(v21);
  if (__p)
  {
    *&v19 = __p;
    operator delete(__p);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2229639C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*(v12 - 97) < 0)
  {
    operator delete(*(v12 - 120));
    if ((v11 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v10);
  goto LABEL_6;
}

void sub_222963AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2229646FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v10);

  _Unwind_Resume(a1);
}

uint64_t SNLPAssetVersionChecks::getNLv4SupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[2] = xmmword_2229D5EF8;
  v4[3] = unk_2229D5F08;
  v4[4] = xmmword_2229D5F18;
  v4[5] = unk_2229D5F28;
  v4[0] = xmmword_2229D5ED8;
  v4[1] = unk_2229D5EE8;
  result = std::unordered_set<unsigned int>::unordered_set(a1, v4, 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SNLPAssetVersionChecks::getSSUSupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = xmmword_2229D29E0;
  result = std::unordered_set<unsigned int>::unordered_set(a1, &v4, 4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SNLPAssetVersionChecks::getITFMSupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4[2] = xmmword_2229D5F58;
  v4[3] = unk_2229D5F68;
  v5[0] = xmmword_2229D5F78;
  *(v5 + 12) = *(&xmmword_2229D5F78 + 12);
  v4[0] = xmmword_2229D5F38;
  v4[1] = unk_2229D5F48;
  result = std::unordered_set<unsigned int>::unordered_set(a1, v4, 23);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nlv4_inference_orchestrator::trees::TagExpander::extractNumberOfNextTags(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 47);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a1 + 32);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 95);
  if (v4 < 0)
  {
    v4 = *(a1 + 80);
  }

  std::string::basic_string(&__p, a2, v2, v3 + ~v4, &v10);
  v5 = std::stoi(&__p, 0, 10);
  v6 = (v5 & 0xFFFFFF00);
  v7 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 | v7;
}

void nlv4_inference_orchestrator::trees::TagExpander::splitTagBySeparator(uint64_t *a1, uint64_t *a2)
{
  __dst[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  v4 = *a1;
  v5 = a1[1];
  if (v3 >= 0)
  {
    v4 = a1;
  }

  memset(v6, 0, sizeof(v6));
  v7[0] = v4;
  if (v3 < 0)
  {
    v3 = v5;
  }

  v7[1] = v4 + v3;
  boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char const*>>>(__dst, v7);
  boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(v6, a2, __dst, 0);
}

void sub_222964B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void *boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char const*>>>(void *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  __dst[2] = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  v6 = __dst[2];
  std::__sort<std::__less<char,char> &,char *>();
  return __dst;
}

void boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(int a1, uint64_t *a2, void *__src, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = __src[2];
  __n = v6;
  __srca = 0;
  if (v6 < 0x11)
  {
    memcpy(&__srca, __src, v6);
    v34 = __n;
    v33[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v33, &__srca, __n);
      v13 = v34;
      __dst[0] = 0;
      if (v34 <= 0x10)
      {
        memcpy(__dst, v33, v34);
        v14 = a4;
        v7 = *(a2 + 23);
        if (v7 < 0)
        {
          v8 = *a2;
        }

        if (v7 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = a2[1];
        }

        v28 = v13;
        v27[0] = 0;
        if (v13 < 0x11)
        {
          memcpy(v27, __dst, v13);
          v29 = a4;
          v22 = v28;
          v21[0] = 0;
          if (v28 < 0x11)
          {
            memcpy(v21, v27, v28);
            v23 = a4;
            v16 = v22;
            v15[0] = 0;
            if (v22 < 0x11)
            {
              memcpy(v15, v21, v22);
              v17 = a4;
              v19 = v16;
              v18[0] = 0;
              if (v16 < 0x11)
              {
                memcpy(v18, v15, v16);
                v20 = a4;
                v25 = v19;
                v24[0] = 0;
                if (v19 < 0x11)
                {
                  memcpy(v24, v18, v19);
                  v26 = a4;
                  v31 = v25;
                  v30[0] = 0;
                  if (v25 < 0x11)
                  {
                    memcpy(v30, v24, v25);
                    v32 = a4;
                    v34 = v31;
                    v33[0] = 0;
                    if (v31 < 0x11)
                    {
                      memcpy(v33, v30, v31);
                      v35 = a4;
                      operator new();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_22296546C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x223DC4D00](v72, 0x1012C405C87E9CELL);
  v80 = *(v78 - 176);
  if (v80)
  {
    MEMORY[0x223DC4CD0](v80, 0x1000C8077774924);
  }

  if (v71 >= 0x11)
  {
    v81 = *(v78 - 256);
    if (v81)
    {
      MEMORY[0x223DC4CD0](v81, 0x1000C8077774924);
    }
  }

  if (v77 >= 0x11 && a71)
  {
    MEMORY[0x223DC4CD0](a71, 0x1000C8077774924);
  }

  if (v76 >= 0x11 && a52)
  {
    MEMORY[0x223DC4CD0](a52, 0x1000C8077774924);
  }

  if (v75 >= 0x11 && a42)
  {
    MEMORY[0x223DC4CD0](a42, 0x1000C8077774924);
  }

  if (v74 >= 0x11 && a62)
  {
    MEMORY[0x223DC4CD0](a62, 0x1000C8077774924);
  }

  if (v73 >= 0x11 && STACK[0x240])
  {
    MEMORY[0x223DC4CD0](STACK[0x240], 0x1000C8077774924);
  }

  if (a11 >= 0x11 && a38)
  {
    MEMORY[0x223DC4CD0](a38, 0x1000C8077774924);
  }

  if (a12 >= 0x11)
  {
    if (a35)
    {
      MEMORY[0x223DC4CD0](a35, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = (*((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8))(a1 + 8, *(a1 + 48), v2);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

char *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>,boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::invoke(uint64_t a1, char *a2, char *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 16);
  v12 = v6;
  v11[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v11, v5, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v11, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v12 >= 0x11 && v11[0])
  {
    MEMORY[0x223DC4CD0](v11[0], 0x1000C8077774924);
  }

  if (v8 != a3)
  {
    if (!v5[6])
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v5, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    a3 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
  return a3;
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        MEMORY[0x223DC4CD0](*v5, 0x1000C8077774924);
      }

      result = MEMORY[0x223DC4D00](v5, 0x1012C405C87E9CELL);
    }

LABEL_16:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x80000002229D6624 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x80000002229D6624 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_16;
    }
  }

  *a2 = *v4;
  return result;
}

void *snlp::ssu::candidate::operator<<(void *a1, uint64_t a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SSUAlternativeCandidateInfo[\n", 29);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    generatedUtterance='", 24);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "',\n", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    relevantIntents={\n", 22);
  v9 = *(a2 + 40);
  memset(v13, 0, 24);
  if (v9)
  {
    v10 = 0;
    v11 = v9;
    do
    {
      ++v10;
      v11 = *v11;
    }

    while (v11);
    v13[3] = v13;
    v14 = 0;
    std::vector<std::string>::__vallocate[abi:ne200100](v13, v10);
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(0, 0, 0, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  }]", 4);
  v15 = v13;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SSUCandidate[\n", 14);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  originalUtterance='", 21);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "',\n", 3);
  if (*(a2 + 88) == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  alternativeCandidateInfo=", 27);
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = snlp::ssu::candidate::operator<<(v9, a2 + 24);
    v11 = ",\n";
    v12 = 2;
  }

  else
  {
    v11 = "  alternativeCandidateInfo=<not alternative candidate>,\n";
    v10 = a1;
    v12 = 56;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  if (*(a2 + 184) != 1)
  {
    v15 = "  relatedEntity=<no related entity>\n";
    v14 = a1;
    v16 = 36;
    goto LABEL_15;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  relatedEntity=", 16);
  if ((*(a2 + 184) & 1) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = snlp::ssu::proto::operator<<(v13, a2 + 96);
  v15 = "\n";
  v16 = 1;
LABEL_15:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

void sub_222965DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::candidate::SSUCandidate::toString(snlp::ssu::candidate::SSUCandidate *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  snlp::ssu::candidate::operator<<(&v5, this);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v9);
}

void sub_2229660CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](v2 + 128);
  _Unwind_Resume(a1);
}

void snlp::ssu::espresso::SSUNessieModel::forward(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 528));
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SSUNessieModel Inference", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN SSUNessieModel Inference", buf, 2u);
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v14 = a2[3];
  v15 = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v9 = snlp::ssu::espresso::SSUNessieModel::validateModelInputs(a1, &v10);
  snlp::ssu::espresso::SSUNessieModel::buildPaddingMask(a1, &v14, v9);
}

void sub_22296641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a19);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v36 - 128));
  snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(&a35);
  std::mutex::unlock((v35 + 528));
  _Unwind_Resume(a1);
}

unint64_t *snlp::ssu::espresso::SSUNessieModel::buildModelOutputs@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v5 != 16)
  {
    v13 = v5 >> 3;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v44, v13);
    v15 = std::string::insert(&v44, 0, "SSUNessieModel moduleOutputs.encodings is of unexpected rank: expected=2, actual=");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v45);
    exception->__vftable = &unk_2835E9238;
  }

  v6 = result;
  v7 = v4[1];
  if (v7 != *result)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v41, v7);
    v18 = std::string::insert(&v41, 0, "SSUNessieModel moduleOutputs.encodings dimension (");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v42, ") does not match the expected dimension from config (");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, *v6);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v40;
    }

    else
    {
      v22 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v43, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v44, ")");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v17, &v45);
    v17->__vftable = &unk_2835E9238;
  }

  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *v4 * v7;
  if ((v8 - v9) >> 2 != v10)
  {
    v28 = (v8 - v9) >> 2;
    v29 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v41, v28);
    v30 = std::string::insert(&v41, 0, "SSUNessieModel moduleOutputs.encodings data size (");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v42, ") does not match the expected size implied by the shape (");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, v10);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v40;
    }

    else
    {
      v34 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v40.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v43, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v44, ")");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v29, &v45);
    v29->__vftable = &unk_2835E9238;
  }

  *a3 = v4;
  a3[1] = v3;
  v11 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a3[2] = v11;
  a3[3] = v9;
  v12 = *(a2 + 40);
  a3[4] = v8;
  a3[5] = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_22296687C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v34)
  {
    __cxa_free_exception(v33);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(snlp::ssu::espresso::SSUNessieModuleInputs *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

unint64_t snlp::ssu::espresso::SSUNessieModel::validateModelInputs(unint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3 != 16)
  {
    v40 = v3 >> 3;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v87, v40);
    v42 = std::string::insert(&v87, 0, "SSUNessieModel modelInputs.tokenIds is of unexpected rank: expected=2, actual=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v88);
    exception->__vftable = &unk_2835E9238;
  }

  result = *v2;
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v8 = v6 - v7;
  if (*v2 != v6 - v7)
  {
    v44 = *v2;
    v45 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v44);
    v46 = std::string::insert(&v84, 0, "SSUNessieModel batch size implied by modelInputs.tokenIds (");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v85, ") does not match batch size implied by modelInputs.utteranceLengths (");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, v8 >> 3);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v83;
    }

    else
    {
      v50 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v86, v50, size);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v87, ")");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v45, &v88);
    v45->__vftable = &unk_2835E9238;
  }

  if (result < a1[2] || result > a1[3])
  {
    v22 = *v2;
    v23 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v82, v22);
    v24 = std::string::insert(&v82, 0, "SSUNessieModel batch size (");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v83, ") not in valid range [");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v84.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v84.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v81, a1[2]);
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v81;
    }

    else
    {
      v28 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v81.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v84, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v85, ", ");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v80, a1[3]);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v80;
    }

    else
    {
      v34 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v80.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v86, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v87, "]");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v23, &v88);
    v23->__vftable = &unk_2835E9238;
  }

  v9 = v2[1];
  if (v9 != a1[1])
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v9);
    v57 = std::string::insert(&v84, 0, "SSUNessieModel sequence length implied by modelInputs.tokenIds (");
    v58 = *&v57->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v85, ") must be equal to the max sequence length from model config (");
    v60 = *&v59->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, a1[1]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v83;
    }

    else
    {
      v61 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v83.__r_.__value_.__l.__size_;
    }

    v63 = std::string::append(&v86, v61, v62);
    v64 = *&v63->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    v65 = std::string::append(&v87, ")");
    v66 = *&v65->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v56, &v88);
    v56->__vftable = &unk_2835E9238;
  }

  if ((*(a2 + 32) - *(a2 + 24)) >> 2 != v9 * result)
  {
    v67 = v9 * result;
    v68 = (*(a2 + 32) - *(a2 + 24)) >> 2;
    v69 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v68);
    v70 = std::string::insert(&v84, 0, "SSUNessieModel modelInputs.tokenIds data size (");
    v71 = *&v70->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v85, ") does not match the expected size implied by the shape (");
    v73 = *&v72->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, v67);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v83;
    }

    else
    {
      v74 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v83.__r_.__value_.__l.__size_;
    }

    v76 = std::string::append(&v86, v74, v75);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v87, ")");
    v79 = *&v78->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v69, &v88);
    v69->__vftable = &unk_2835E9238;
  }

  while (v7 != v6)
  {
    if (*v7 - 1 >= v9)
    {
      v10 = *v7;
      v11 = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v84, v10);
      v12 = std::string::insert(&v84, 0, "SSUNessieModel modelInputs.utteranceLengths contains a value (");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v85, ") outside the valid range [1, ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, a1[1]);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v83;
      }

      else
      {
        v16 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v83.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v86, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v87, "]");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v11, &v88);
      v11->__vftable = &unk_2835E9238;
    }

    ++v7;
  }

  return result;
}

void sub_22296720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 57) < 0)
  {
    operator delete(*(v49 - 80));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v47)
  {
    __cxa_free_exception(v48);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModel::buildPaddingMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  *buf = a3;
  v7 = v3;
  v5 = 0;
  v4 = 0uLL;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v4, buf, v8, 2uLL);
}

void sub_22296766C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *uaap::DDUsoMapper::mapDateTimeByHandlers(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *result;
  if (result[1] != *result)
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = (*(**(v5 + 8 * v11) + 16))(*(v5 + 8 * v11), a2, a3, a4, a5);
      ++v11;
      v5 = *v10;
    }

    while (v11 < (v10[1] - *v10) >> 3);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void uaap::DDUsoMapper::flattenToDDSpans()
{
  Type = DDResultGetType();
  if (CFEqual(Type, @"DateTime"))
  {
    operator new();
  }

  if (CFEqual(Type, @"TimeDuration"))
  {
    operator new();
  }

  if (CFEqual(Type, @"TimeSpanWithReference"))
  {
    operator new();
  }

  if (CFEqual(Type, @"DateSpanWithReference"))
  {
    operator new();
  }

  if (CFEqual(Type, @"Time") || CFEqual(Type, @"TimeSpan"))
  {
    std::make_unique[abi:ne200100]<uaap::UPDDTimeSpan,__DDResult *&,0>();
  }

  if (!CFEqual(Type, @"Date") && !CFEqual(Type, @"DateSpan"))
  {
    std::make_unique[abi:ne200100]<uaap::UPDDSpan,__DDResult *&,0>();
  }

  std::make_unique[abi:ne200100]<uaap::UPDDDateSpan,__DDResult *&,0>();
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uaap::UPDDSpan *uaap::UPDDSpan::UPDDSpan(uaap::UPDDSpan *this, __DDResult *a2, const __CFString *a3)
{
  Range = DDResultGetRange();
  v7 = v6;
  Type = DDResultGetType();

  return uaap::UPDDSpan::UPDDSpan(this, Type, a3, Range, v7 + Range);
}

uaap::UPDDSpan *uaap::UPDDSpan::UPDDSpan(uaap::UPDDSpan *this, const __CFString *a2, const __CFString *a3, int a4, int a5)
{
  *this = &unk_2835E5AB0;
  Copy = CFStringCreateCopy(0, a2);
  v10 = MEMORY[0x277CBE550];
  *(this + 1) = Copy;
  *(this + 2) = v10;
  v11 = CFStringCreateCopy(0, a3);
  v12 = MEMORY[0x277CBE550];
  *(this + 3) = v11;
  *(this + 4) = v12;
  *(this + 10) = a4;
  *(this + 11) = a5;
  return this;
}

void sub_222968300(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(v1 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void uaap::UPDDSpan::~UPDDSpan(uaap::UPDDSpan *this)
{
  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5AB0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(this + 4))();
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(this + 2))();
  }
}

BOOL uaap::DDUsoMapper::toItemizedUsos(int a1, CFArrayRef theArray, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (CFArrayGetCount(theArray) >= 1)
  {
    CFArrayGetValueAtIndex(theArray, 0);
    operator new();
  }

  return a3[1] - *a3 > (v5 - v6);
}

void sub_2229684CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v7 = (v3 + 24);
        std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](&v7);
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x223DC4D00](v2, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void uaap::DDUsoMapper::toItemizedUsos(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  operator new();
}

void sub_222968630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_222968730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  std::unique_ptr<std::vector<std::unique_ptr<siri::ontology::UsoGraph>>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::unique_ptr<siri::ontology::UsoGraph>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::unique_ptr<siri::ontology::UsoGraph>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x223DC4D00](v2, 0x20C40960023A9);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::UsoGraph>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *--v4;
        *v4 = 0;
        if (v6)
        {
          v7 = MEMORY[0x223DC42A0]();
          MEMORY[0x223DC4D00](v7, 0x10A0C403D23BABBLL);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void uaap::DDUsoMapper::getSpanRangeFromUtteranceAlignments(uaap::DDUsoMapper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  siri::ontology::oname::graph::ontology_init::Argument_entity(this);
  v5 = *(v4 + 8);
  siri::ontology::UsoGraph::getSuccessors();
  v6 = __p;
  v7 = v18;
  if (__p == v18)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_10;
  }

  v8 = MEMORY[0x277D5F628];
  while (1)
  {
    v9 = ***v6;
    if (v10)
    {
      if (*(v10 + 7) != *(v10 + 8))
      {
        break;
      }
    }

LABEL_8:
    if (++v6 == v7)
    {
      goto LABEL_9;
    }
  }

  UtteranceAlignment = siri::ontology::UsoEntityNode::getUtteranceAlignment(v10);
  siri::ontology::UsoUtteranceAlignment::getSpans(&v15, UtteranceAlignment);
  v12 = v15;
  if (v16 == v15)
  {
    if (v16)
    {
      v16 = v15;
      operator delete(v15);
    }

    goto LABEL_8;
  }

  v13 = **v15;
  v14 = (*v15)[1] - v13;
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = 1;
  v16 = v12;
  operator delete(v12);
LABEL_10:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_22296898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::MILCompiler::~MILCompiler(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1)
  {
    if (*(this + 79) < 0)
    {
      operator delete(this[7]);
    }

    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }
  }
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::common::selflogging::NLXSchemaNLXClientEventMetadata::~NLXSchemaNLXClientEventMetadata(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(uint64_t a1, std::string *a2, uint64_t a3, int *a4, __int128 *a5)
{
  return snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, a4, a1, a5);
}

{
  return snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, a4, a1, a5);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::common::espresso_inference::e5ml::WeightsHandler::throwInconsistentPortDataTypeError(uint64_t a1, const void **a2, int *a3, int *a4)
{
  if (!std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>((a1 + 40), *a3) || !std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>((a1 + 40), *a4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v41);
    exception->__vftable = &unk_2835E9238;
  }

  std::string::basic_string[abi:ne200100]<0>(&v41, "Inconsistent data type for port ");
  std::string::basic_string[abi:ne200100]<0>(v39, ". Found weight type ");
  std::string::basic_string[abi:ne200100]<0>(v37, ", but the already-recorded weights type for this port was ");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, &v41.__r_.__value_.__l.__data_, a2);
  if ((v40 & 0x80u) == 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = v39[1];
  }

  v11 = std::string::append(&v31, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at((a1 + 40), *a4);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = v13[1];
  }

  v17 = std::string::append(&v32, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((v38 & 0x80u) == 0)
  {
    v19 = v37;
  }

  else
  {
    v19 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v20 = v38;
  }

  else
  {
    v20 = v37[1];
  }

  v21 = std::string::append(&v33, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at((a1 + 40), *a3);
  v24 = *(v23 + 23);
  if (v24 >= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = *v23;
  }

  if (v24 >= 0)
  {
    v26 = *(v23 + 23);
  }

  else
  {
    v26 = v23[1];
  }

  v27 = std::string::append(&v34, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v36 = v27->__r_.__value_.__r.__words[2];
  v35 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v29 = __cxa_allocate_exception(0x10uLL);
  if (v36 >= 0)
  {
    v30 = &v35;
  }

  else
  {
    v30 = v35;
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, v30);
  std::runtime_error::runtime_error(v29, &v34);
  v29->__vftable = &unk_2835E9238;
}

void sub_222968E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      if (a42 < 0)
      {
        operator delete(a37);
      }

      if (*(v44 - 97) < 0)
      {
        operator delete(*(v44 - 120));
      }

      if (*(v44 - 73) < 0)
      {
        operator delete(*(v44 - 96));
      }

      if (*(v44 - 49) < 0)
      {
        operator delete(*(v44 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

uint64_t *std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at(void *a1, int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void snlp::ssu::parse::SSUGraphBuilder::graphBuilderForAppCategory(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      operator new();
    }

    if (*(a1 + 32))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v6, *(a1 + 32));
      v4 = std::string::insert(&v6, 0, "Could not build a graph builder for unhandled category: %u");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v7.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v7.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v7);
      exception->__vftable = &unk_2835E9238;
    }
  }

  operator new();
}

void sub_2229691E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void snlp::ssu::parse::SSUGraphBuilder::buildGraph(siri::ontology *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  siri::ontology::getSharedUsoVocabManager(a1);
  operator new();
}

void snlp::ssu::parse::SSUGraphBuilder::addUtteranceSubgraph(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  siri::ontology::oname::graph::ontology_init::common_VoiceCommand(a1);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_reference(EntityNode);
  siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a5, *(a5 + 8));
  }

  else
  {
    v17 = *a5;
  }

  v18 = 1;
  StringNode = siri::ontology::UsoGraph::createStringNode();
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  siri::ontology::oname::graph::ontology_init::Argument_name(StringNode);
  siri::ontology::UsoGraphNode::setSuccessor();
  (*(*a1 + 24))(&v16, a1, a4);
  siri::ontology::UsoEntityNode::addIdentifier();
  std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](&v16);
  if (*(a6 + 24) == 1)
  {
    snlp::ssu::parse::SSUGraphBuilder::buildClosestPositiveIdentifier(a1);
  }

  v12 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "No closest positive plaintext example available -- skipping attaching USO identifier", &v17, 2u);
  }

  Utf16Length = snlp::common::utilities::getUtf16Length(a5);
  UnicodeScalarLength = snlp::common::utilities::getUnicodeScalarLength(a5);
  if ((Utf16Length & 0x100000000) != 0 && (UnicodeScalarLength & 0x100000000) != 0)
  {
    siri::ontology::UsoEntityNode::addUtteranceAlignment();
  }

  else
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "Could not compute utterance alignment boundary due to Unicode issue. Not adding alignment.", &v17, 2u);
    }
  }
}

uint64_t snlp::ssu::parse::SSUGraphBuilder::addPayloadSubgraph(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  siri::ontology::oname::graph::ontology_init::common_VoiceCommandPayload(a1);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_payload(EntityNode);
  v6 = siri::ontology::UsoGraphNode::setSuccessor();
  siri::ontology::oname::graph::ontology_init::common_AppEntity(v6);
  v7 = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_appEntity(v7);
  siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a4, *(a4 + 8));
  }

  else
  {
    v10 = *a4;
  }

  v11 = 1;
  StringNode = siri::ontology::UsoGraph::createStringNode();
  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  siri::ontology::oname::graph::ontology_init::Argument_name(StringNode);
  result = siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a4 + 40) != *(a4 + 48))
  {
    operator new();
  }

  return result;
}

void sub_2229698D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DC4D00](v2, 0x1012C40071C2685);
  }

  return a1;
}

void sub_222969AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x223DC4D00](v25, 0x1012C40071C2685);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::getITFMExecutedHandcraftedRules@<X0>(__int128 **a1@<X0>, sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a2@<X8>)
{
  sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(a2);
  result = sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::makeRules(a2);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = *(a2 + 2);
    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24))
    {
      result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v7 + 8, v5);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v7 + 8, v5);
      result = v8 + 1;
    }

    *(v7 + 16) = result;
    v5 = (v5 + 24);
  }

  return result;
}

void uaap::toUTF8String(const __CFString *this, const __CFString *a2)
{
  Length = CFStringGetLength(this);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_222969D8C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  MEMORY[0x223DC4CD0](v2, v1);
  _Unwind_Resume(a1);
}

uaap *uaap::searchDDTreeWithType(uaap *this, __DDResult *a2, const __CFString *a3)
{
  v3 = this;
  if (this)
  {
    Type = DDResultGetType();
    if (!CFEqual(Type, a2))
    {
      SubResults = DDResultGetSubResults();
      if (SubResults && (v7 = SubResults, (Count = CFArrayGetCount(SubResults)) != 0))
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
          v13 = uaap::searchDDTreeWithType(ValueAtIndex, a2, v12);
          if (v13)
          {
            break;
          }

          if (v9 == ++v10)
          {
            return 0;
          }
        }

        return v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_222969F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::selflogging::convertCacheTriggerReason(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUCacheTriggerReason case: %d. Defaulting to UNKNOWN.", v5, 8u);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t snlp::ssu::selflogging::convertCategoryType(unsigned int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "Unhandled SSUCategoryType case: %d. Defaulting to UNKNOWN.", v5, 8u);
    }

    result = 0;
  }

  else
  {
    result = (a1 + 1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t snlp::ssu::selflogging::convertUtteranceCandidateType(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUUtteranceCandidateType case: %d. Defaulting to UNKNOWN.", v5, 8u);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

id snlp::ssu::selflogging::convertUserRequestMatchInfo(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59178]);
  [v2 setMatchingUtteranceCandidateType:snlp::ssu::selflogging::convertUtteranceCandidateType(*a1)];
  [v2 setNumEntities:a1[1]];

  return v2;
}

id snlp::ssu::selflogging::convertUserRequestCacheEntryInfo(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59158]);
  [v2 setTriggerReason:snlp::ssu::selflogging::convertCacheTriggerReason(*a1)];
  [v2 setCategoryType:snlp::ssu::selflogging::convertCategoryType(*(a1 + 4))];
  [v2 setNumEncodingSimilarityScoreComparisons:a1[2]];
  if (*(a1 + 24) == 1)
  {
    [v2 setClosestNegativeExampleScore:*(a1 + 2)];
  }

  if (*(a1 + 40) == 1)
  {
    [v2 setClosestPositiveExampleScore:*(a1 + 4)];
  }

  if (*(a1 + 56) == 1)
  {
    v3 = snlp::ssu::selflogging::convertUserRequestMatchInfo(a1 + 12);
    [v2 setMatchInfo:v3];
  }

  return v2;
}

uint64_t snlp::ssu::selflogging::convertBackgroundUpdateType(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUBackgroundUpdateType case: %d. Defaulting to UNKNOWN.", v5, 8u);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t snlp::ssu::selflogging::convertCacheAction(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUCacheAction case: %d. Defaulting to UNKNOWN.", v5, 8u);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

id snlp::ssu::selflogging::convertBackgroundUpdateAppCategoryInfo(char *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59128]);
  if (a1[1] == 1)
  {
    [v2 setCategoryType:snlp::ssu::selflogging::convertCategoryType(*a1)];
  }

  [v2 setNumAppExamplesPositive:*(a1 + 1)];
  [v2 setNumAppExamplesNegative:*(a1 + 2)];
  [v2 setCacheAction:snlp::ssu::selflogging::convertCacheAction(*(a1 + 3))];

  return v2;
}

id snlp::ssu::selflogging::convertBackgroundUpdateAppInfo(char **this, const snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo *a2)
{
  v3 = objc_alloc_init(MEMORY[0x277D59130]);
  if (*(this + 23) >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = *this;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  [v3 setAppBundleIdSaltedHash:v5];

  [v3 setNumCacheFilesRemoved:*(this + 6)];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = this[4];
  v8 = this[5];
  while (v7 != v8)
  {
    v9 = snlp::ssu::selflogging::convertBackgroundUpdateAppCategoryInfo(v7);
    [v6 addObject:v9];

    v7 += 16;
  }

  [v3 setCategoryInfos:v6];

  return v3;
}

void sub_22296B250(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderResponse::~EmbedderResponse(&a69);
  if (a2 == 1)
  {
    v77 = __cxa_begin_catch(a1);
    if (a13)
    {
      v78 = MEMORY[0x277CCACA8];
      (*(*v77 + 16))(v77);
      v79 = [v78 stringWithFormat:@"Hit SNLP exception while calling SNLPEmbedder::getEmbeddings : %s "];
      v80 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA470];
      a65 = *MEMORY[0x277CCA450];
      a66 = v81;
      a67 = v79;
      a68 = v79;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a67 forKeys:&a65 count:2];
      *a13 = [v80 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v82];
    }

    __cxa_end_catch();
    JUMPOUT(0x22296B188);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(&a31);
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  a69 = &a62;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a69);

  _Unwind_Resume(a1);
}

uint64_t std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(v5);
  }

  v6 = 112 * v2;
  *(&v17 + 1) = 0;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v8 = *(a2 + 24);
  *(v6 + 35) = *(a2 + 35);
  *(v6 + 24) = v8;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  v9 = a2[6];
  *(v6 + 80) = a2[5];
  *(v6 + 96) = v9;
  *&v17 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v17;
  *(a1 + 1) = v17;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v16[0] = v12;
  v16[1] = v12;
  std::__split_buffer<nlv4_inference_orchestrator::orchestration::Token>::~__split_buffer(v16);
  return v15;
}

void nlv4_inference_orchestrator::orchestration::Token::~Token(void **this)
{
  v2 = this + 7;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(void **this)
{
  v2 = this + 6;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_22296BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  a12 = &STACK[0x230];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_22296C5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  MEMORY[0x223DC4D00](v41, 0x10B2C401347FB16);
  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x277CCACA8];
    (*(*v45 + 16))(v45);
    v47 = [v46 stringWithFormat:@"NLv4 Asset Error when creating the OWL orchestrator: %s"];
    v48 = v47;
    if (v40)
    {
      v49 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA470];
      *(v42 - 120) = *MEMORY[0x277CCA450];
      *(v42 - 112) = v50;
      *(v42 - 104) = v47;
      *(v42 - 96) = v47;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 - 104 forKeys:v42 - 120 count:2];
      *v40 = [v49 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:3 userInfo:v51];
    }

    __cxa_end_catch();
    JUMPOUT(0x22296C50CLL);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_22296CA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x223DC4D00](v29, 0x10B2C401347FB16);
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x277CCACA8];
    (*(*v33 + 16))(v33);
    v35 = [v34 stringWithFormat:@"Hit SNLP exception while constructing OWL orchestrator with asset directory %@: %s"];
    v36 = v35;
    if (v28)
    {
      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA470];
      a21 = *MEMORY[0x277CCA450];
      a22 = v38;
      a23 = v35;
      a24 = v35;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a23 forKeys:&a21 count:2];
      *v28 = [v37 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v39];
    }

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      if (a18 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }

    v40 = __cxa_begin_catch(a1);
    v41 = MEMORY[0x277CCACA8];
    (*(*v40 + 16))(v40);
    v42 = [v41 stringWithFormat:@"NLv4 Asset Error when creating the OWL orchestrator: %s"];
    v43 = v42;
    if (v28)
    {
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA470];
      a25 = *MEMORY[0x277CCA450];
      a26 = v45;
      *(v30 - 88) = v42;
      *(v30 - 80) = v42;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 - 88 forKeys:&a25 count:2];
      *v28 = [v44 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:3 userInfo:v46];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x22296CA38);
}

void sub_22296D0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::UserAcceptedModification::matchingSpansContainsGenericConfirmationYes(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v21, "genericConfirmation");
  std::string::basic_string[abi:ne200100]<0>(v23, "CONFIRM_CONTACT");
  std::string::basic_string[abi:ne200100]<0>(v24, "CONFIRMATION_YES");
  std::string::basic_string[abi:ne200100]<0>(v25, "OK");
  std::string::basic_string[abi:ne200100]<0>(v26, "YES");
  std::string::basic_string[abi:ne200100]<0>(v27, "YES_GENERIC");
  std::string::basic_string[abi:ne200100]<0>(v28, "YES_OK");
  std::string::basic_string[abi:ne200100]<0>(v29, "YES_SHORT");
  std::string::basic_string[abi:ne200100]<0>(v30, "yes");
  std::unordered_set<std::string>::unordered_set(__p, v23, 8);
  for (i = 0; i != -192; i -= 24)
  {
    if (v30[i + 23] < 0)
    {
      operator delete(*&v30[i]);
    }
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *(v4 + 48);
      if (v6)
      {
        v7 = *(v4 + 56);
        if (v7)
        {
          if ((v22 & 0x80u) == 0)
          {
            v8 = v22;
          }

          else
          {
            v8 = v21[1];
          }

          v9 = *(v6 + 23);
          v10 = v9;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(v6 + 8);
          }

          if (v8 == v9)
          {
            if ((v22 & 0x80u) == 0)
            {
              v11 = v21;
            }

            else
            {
              v11 = v21[0];
            }

            if (v10 >= 0)
            {
              v12 = *(v4 + 48);
            }

            else
            {
              v12 = *v6;
            }

            v13 = memcmp(v11, v12, v8);
            v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(__p, v7);
            if (v13)
            {
              v15 = 1;
            }

            else
            {
              v15 = v14 == 0;
            }

            if (!v15)
            {
              v19 = 1;
              goto LABEL_28;
            }
          }

          else
          {
            std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(__p, *(v4 + 56));
          }
        }
      }

      v4 += 88;
    }

    while (v4 != v5);
  }

  v19 = 0;
LABEL_28:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
  v16 = __p[0];
  __p[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_22296D338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  v23 = (v21 + 191);
  v24 = -192;
  v25 = v23;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      if (a20 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
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

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t snlp::ssu::trigger::SSUTriggerOnScreen::isTriggered(snlp::ssu::trigger::SSUTriggerOnScreen *this, const snlp::ssu::proto::SSUValidatedRequest *a2)
{
  snlp::ssu::proto::SSUValidatedRequest::getOnScreenSalientEntityAppBundleIds(a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 != v15)
  {
    v7 = *(this + 1);
    v6 = this + 8;
    v5 = v7;
    v8 = v6[23];
    if (v8 >= 0)
    {
      v9 = v6[23];
    }

    else
    {
      v9 = *(v6 + 1);
    }

    if (v8 < 0)
    {
      v6 = v5;
    }

    while (1)
    {
      v10 = *(v3 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v3 + 8);
      }

      if (v10 == v9)
      {
        v12 = v11 >= 0 ? v3 : *v3;
        if (!memcmp(v12, v6, v9))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v16 = &v14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return 0x100000002;
  }
}

void snlp::ssu::trigger::SSUTriggerOnScreen::~SSUTriggerOnScreen(void **this)
{
  *this = &unk_2835E57B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E57B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

__n128 snlp::ssu::trigger::SSUTriggerOnScreen::SSUTriggerOnScreen(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2835E57B0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2835E57B0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(void *a1@<X2>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "batch");
  snlp::ssu::utilities::validateTensorRank(2uLL, a1, a2);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1] - *a1;
    if (v5)
    {
      if (v5 > 8)
      {
        v6 = v4[1];
        v10[0] = *v4;
        v10[1] = v6;
        __p[1] = 0;
        v9 = 0;
        __p[0] = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v10, &v11, 2uLL);
      }

      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22296E3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(int *a1@<X0>, sirinluinternalitfm::ITFMParserResponse *a2@<X8>)
{
  sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v8);
  v4 = *a1;
  v11 |= 3u;
  v9 = v4;
  v10 = 1065353216;
  v5 = v4 != 1;
  sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v6);
  v7 |= 3u;
  v6[4] = v5;
  v6[5] = 0;
  sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(a2);
  PB::PtrVector<sirinluinternalitfm::ITFMHypothesis>::emplace_back<sirinluinternalitfm::ITFMHypothesis&>();
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[35]>(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

uint64_t snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::legacyNLContextOverride@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[56] = 0;
  if ((*(result + 72) & 8) == 0 || *(result + 70) != 1)
  {
    goto LABEL_15;
  }

  v2 = *(result + 8);
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 23);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3 != 11)
    {
      goto LABEL_15;
    }

LABEL_9:
    v4 = *v2;
    v5 = *(v2 + 3);
    LODWORD(v2) = v4 == 0x74616C736E617274 && v5 == 0x6E6F6974616C736ELL;
    goto LABEL_16;
  }

  if (v2[1] == 11)
  {
    v2 = *v2;
    goto LABEL_9;
  }

LABEL_15:
  LODWORD(v2) = 0;
LABEL_16:
  if ((*(result + 68) & ((*(result + 72) & 2) >> 1) | v2))
  {
    v8 = 0;
    snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(&v8, buf);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22296E9F8(_Unwind_Exception *a1, uint64_t a2, std::__split_buffer<std::string> *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__split_buffer<std::string>::~__split_buffer(&a11);
  if (*(v11 + 56) == 1)
  {
    MEMORY[0x223DC3310](v11);
  }

  _Unwind_Resume(a1);
}

char **uaap::TimeDurationHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapDurationToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapDurationToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"TimeDuration");
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  v4 = v3[3];
  if (v3[4] != v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = **v5;
      {
        operator new();
      }
    }
  }

  uaap::mapTimeSpansToItemizedUsos(a1);
  return uaap::mapTimeSpanSpansToItemizedUsos(a1);
}

void sub_22296EC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x223DC4D00](v3, v2);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

siri::ontology::oname::graph::ontology_init *uaap::TimeDurationHandler::resolveDurationGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeDurationSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v3 = this;
    v4 = *(a2 + 11);
    siri::ontology::oname::graph::ontology_init::common_DateTimeRange(this);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v3, v6);
  }

  return this;
}

uint64_t uaap::TimeDurationHandler::resolveOffsetReferenceWithDirection(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if ((*(a1 + 6) == 0) == (*(a1 + 7) != 0))
          {
            v6 = *(a3 + 24);
            siri::ontology::oname::graph::ontology_init::Root(a1);
            v7 = siri::ontology::operator!=();
            if ((v7 & 1) == 0)
            {
              siri::ontology::oname::graph::ontology_init::common_DateTime(v7);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              v9 = EntityNode;
              v10 = *(a1 + 6);
              if (!v10)
              {
                v10 = *(a1 + 7);
              }

              v11 = siri::ontology::oname::graph::ontology_init::Argument_offsetReference(EntityNode);
              v12 = uaap::TimeHandler::resolveTimeWithDateTimeRangeAndQualifier(v10, a2, v9, v11);
              siri::ontology::oname::graph::ontology_init::common_OffsetDirection(v12);
              v13 = siri::ontology::UsoGraph::createEntityNode();
              if (*(a1 + 6))
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_After(v13);
              }

              else
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_Before(v13);
              }

              v14 = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::Argument_direction(v14);
              v15 = siri::ontology::UsoGraphNode::setSuccessor();
              siri::ontology::oname::graph::ontology_init::Argument_definedValue(v15);
              siri::ontology::UsoGraphNode::setSuccessor();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v14, a1, v16);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::resolveOffsetReferenceGraphWithDirection(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeDurationSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeDurationHandler::resolveOffsetReferenceWithDirection(v4, a2, v5, v6);
  }

  return this;
}

void nlv4_inference_orchestrator::inference_engine::utils::padSpanTensor(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(a1 + 8) - *a1 == 24)
  {
    v25 = a5;
    v8 = *v7;
    v9 = v7[2];
    v10 = a3 * a2;
    v27 = v7[1];
    std::vector<float>::vector[abi:ne200100](__dst, a3 * a2 * v27);
    if (v8)
    {
      v11 = 0;
      v12 = *(a1 + 24);
      if (v9 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v9;
      }

      v14 = *__dst;
      v15 = 4 * v10;
      v16 = 4 * v9;
      do
      {
        v17 = v14;
        for (i = v27; i; --i)
        {
          if (v13)
          {
            memmove(v17, v12, 4 * v13);
          }

          v17 += v15;
          v12 += v16;
        }

        ++v11;
        v14 += 4 * a3;
      }

      while (v11 != v8);
    }

    v28[0] = v27;
    v28[1] = a2;
    v28[2] = a3;
    v25[1] = 0;
    v25[2] = 0;
    *v25 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v25, v28, __dst, 3uLL);
  }

  v20 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    v22 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v21;
    v30 = 2048;
    v31 = v22;
    _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input span tensor with %lu dimensions", __dst, 0x16u);
  }

  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  v23 = *MEMORY[0x277D85DE8];
}

void sub_22296F0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *v20;
  if (*v20)
  {
    *(a11 + 8) = v22;
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::utils::padContextTensor(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(a1 + 8) - *a1 == 16)
  {
    v10 = *v7;
    v11 = v7[1];
    std::vector<float>::vector[abi:ne200100](__dst, *v7 * a2);
    if (v10)
    {
      v12 = 0;
      v13 = *(a1 + 24);
      v14 = *__dst;
      if (v11 >= a2)
      {
        v15 = a2;
      }

      else
      {
        v15 = v11;
      }

      v16 = (4 * (a2 - v11)) >> 2;
      v17 = vdupq_n_s64(v16 - 1);
      v18 = xmmword_2229D1B20;
      v19 = xmmword_2229D1B30;
      v31 = v17;
      do
      {
        if (v15)
        {
          memmove(v14, v13, 4 * v15);
          v19 = xmmword_2229D1B30;
          v18 = xmmword_2229D1B20;
          v17 = v31;
        }

        if (v16 >= 1)
        {
          v20 = &v14[4 * v11 + 8];
          v21 = 1;
          v22 = (v16 + 3) & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = vdupq_n_s64(v21 - 1);
            v24 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v23, v19)));
            if (vuzp1_s16(v24, *v23.i8).u8[0])
            {
              *(v20 - 2) = a5;
            }

            if (vuzp1_s16(v24, *&v23).i8[2])
            {
              *(v20 - 1) = a5;
            }

            v25 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v23, v18)));
            if (vuzp1_s16(v25, v25).i32[1])
            {
              *v20 = a5;
              v20[1] = a5;
            }

            v21 += 4;
            v20 += 4;
            v22 -= 4;
          }

          while (v22);
        }

        ++v12;
        v13 += 4 * v11;
        v14 += 4 * a2;
      }

      while (v12 != v10);
    }

    v32[0] = v10;
    v32[1] = a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, v32, __dst, 2uLL);
  }

  v27 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    v29 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v28;
    v34 = 2048;
    v35 = v29;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input context tensor with %lu dimensions", __dst, 0x16u);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v30 = *MEMORY[0x277D85DE8];
}

void sub_22296F3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(a10 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::utils::padEmbeddingTensor(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v67 = *MEMORY[0x277D85DE8];
  v58 = a6;
  v9 = *a1;
  if (*(a1 + 8) - *a1 == 24)
  {
    v11 = v9[1];
    if (v11 <= a2)
    {
      v13 = *v9;
      v14 = v9[2];
      v15 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        v17 = (*(a1 + 32) - *(a1 + 24)) >> 2;
        *buf = 136316162;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        *&buf[22] = 2048;
        v60 = v13;
        v61 = 2048;
        v62 = v11;
        v63 = 2048;
        v64 = v14;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings input tensor size = %lu (%lu, %lu, %lu)", buf, 0x34u);
      }

      v18 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        if (*(a4 + 23) >= 0)
        {
          v19 = a4;
        }

        else
        {
          v19 = *a4;
        }

        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings maxNumTokens (defined by network config) = %lu", buf, 0x16u);
      }

      if (v14 == a3 && v13 * a3 * v11 == (*(a1 + 32) - *(a1 + 24)) >> 2)
      {
        std::vector<float>::vector[abi:ne200100](&__p, v13 * a2 * a3);
        v20 = v11 * a3;
        v21 = a3 * a2;
        v22 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          if (*(a4 + 23) >= 0)
          {
            v23 = a4;
          }

          else
          {
            v23 = *a4;
          }

          *buf = 136315650;
          *&buf[4] = v23;
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2048;
          v60 = v21 - v20;
          _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings For each batch, copying %lu embedding values and adding %lu padding values", buf, 0x20u);
        }

        if (v13)
        {
          v24 = 0;
          v25 = *(a1 + 24);
          v26 = __p.__r_.__value_.__r.__words[0];
          do
          {
            v27 = v25;
            v28 = v26;
            for (i = v20; i; --i)
            {
              v30 = *v27++;
              *v28++ = v30;
            }

            ++v24;
            v26 += 4 * v21;
            v25 += v20;
          }

          while (v24 != v13);
        }

        v31 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          if (*(a4 + 23) >= 0)
          {
            v32 = a4;
          }

          else
          {
            v32 = *a4;
          }

          *buf = 136315906;
          *&buf[4] = v32;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v60 = a2;
          v61 = 2048;
          v62 = a3;
          _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings Padded embedding tensor shape: (%lu, %lu, %lu)", buf, 0x2Au);
        }

        *buf = v13;
        *&buf[8] = a2;
        *&buf[16] = a3;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *a5 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a5, buf, &v60, 3uLL);
      }

      v36 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        if (*(a4 + 23) >= 0)
        {
          v37 = a4;
        }

        else
        {
          v37 = *a4;
        }

        v38 = (*(a1 + 32) - *(a1 + 24)) >> 2;
        *buf = 136316418;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v60 = v11;
        v61 = 2048;
        v62 = v14;
        v63 = 2048;
        v64 = a3;
        v65 = 2048;
        v66 = v38;
        _os_log_impl(&dword_22284A000, v36, OS_LOG_TYPE_ERROR, "[%s] Illegal shape for embeddings: (%lu, %lu, %lu). Must be (?, ?, %lu) and hold %lu values", buf, 0x3Eu);
      }

      *buf = v13;
      *&buf[8] = a2;
      *&buf[16] = a3;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *a5 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a5, buf, &v60, 3uLL);
    }

    std::to_string(&v54, v11);
    v40 = std::string::insert(&v54, 0, "Token overflow; received ");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v55, " tokens, expected ");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v53, a2);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v53;
    }

    else
    {
      v44 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v53.__r_.__value_.__l.__size_;
    }

    v46 = std::string::append(&v56, v44, size);
    v47 = *&v46->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&__p, " or fewer tokens.");
    v49 = *&v48->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v48->__r_.__value_.__l + 2);
    *buf = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (buf[23] >= 0)
    {
      v51 = buf;
    }

    else
    {
      v51 = *buf;
    }

    v52 = strlen(v51);
    std::string::__init(&__p, v51, v52);
    std::runtime_error::runtime_error(exception, &__p);
    exception->__vftable = &unk_2835E9238;
  }

  v33 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v34 = a4;
    }

    else
    {
      v34 = *a4;
    }

    v35 = (*(a1 + 8) - *a1) >> 3;
    *buf = 136315394;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = v35;
    _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input embeddings tensor with %lu dimensions", buf, 0x16u);
  }

  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v39 = *MEMORY[0x277D85DE8];
}

void sub_22296FA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v48 & 1) == 0)
    {
LABEL_6:
      if (a47 < 0)
      {
        operator delete(a42);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v47);
  goto LABEL_6;
}

void nlv4_inference_orchestrator::inference_engine::utils::padITFMMaskTensor(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*(a1 + 8) - *a1 == 16)
  {
    v8 = *v6;
    std::vector<float>::vector[abi:ne200100](__dst, *v6 * a2);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    if (v10 != v9)
    {
      memmove(*__dst, v9, v10 - v9);
    }

    v16[0] = v8;
    v16[1] = a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, v16, __dst, 2uLL);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v13;
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the mask tensor with %lu dimensions", __dst, 0x16u);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22296FCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), a1[3], a1[4], (a1[4] - a1[3]) >> 2);
}

void sub_22296FD7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  v3 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v5 = __n - size;
    if (__n > size)
    {
      v4 = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v7 = HIBYTE(v9);
      goto LABEL_6;
    }

    this->__r_.__value_.__l.__size_ = __n;
    v3 = this->__r_.__value_.__r.__words[0];
LABEL_42:
    v24 = (v3 + 2 * __n);
    goto LABEL_45;
  }

  v5 = __n - v4;
  if (__n <= v4)
  {
    *(&this->__r_.__value_.__s + 23) = __n;
    goto LABEL_42;
  }

  v6 = 10;
  LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
LABEL_6:
  if (v6 - v4 < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v5 - v6 + v4)
    {
      if ((v7 & 0x80) != 0)
      {
        v10 = this->__r_.__value_.__r.__words[0];
      }

      v11 = v5 + v4;
      if (v5 + v4 <= 2 * v6)
      {
        v11 = 2 * v6;
      }

      if ((v11 | 3) == 0xB)
      {
        v12 = 13;
      }

      else
      {
        v12 = (v11 | 3) + 1;
      }

      v13 = v11 >= 0xB;
      v14 = 11;
      if (v13)
      {
        v14 = v12;
      }

      if (v6 <= 0x3FFFFFFFFFFFFFF2)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFF7;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v15);
    }

    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v16 = this;
  if ((v7 & 0x80) != 0)
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  v17 = 0;
  v18 = vdupq_n_s64(v5 - 1);
  v19 = &v16->__r_.__value_.__s.__data_[v4 + 4];
  do
  {
    v20 = vdupq_n_s64(v17);
    v21 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_2229D1B30)));
    if (vuzp1_s8(vuzp1_s16(v21, *v18.i8), *v18.i8).u8[0])
    {
      *(v19 - 4) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v21, *&v18), *&v18).i8[1])
    {
      *(v19 - 3) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_2229D1B20)))), *&v18).i8[2])
    {
      *(v19 - 2) = 0;
      *(v19 - 1) = 0;
    }

    v22 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_2229D2A00)));
    if (vuzp1_s8(*&v18, vuzp1_s16(v22, *&v18)).i32[1])
    {
      *v19 = 0;
    }

    if (vuzp1_s8(*&v18, vuzp1_s16(v22, *&v18)).i8[5])
    {
      v19[1] = 0;
    }

    if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_2229D29F0))))).i8[6])
    {
      v19[2] = 0;
      v19[3] = 0;
    }

    v17 += 8;
    v19 += 8;
  }

  while (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != v17);
  v23 = v4 + v5;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v23;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v23 & 0x7F;
  }

  v24 = (v16 + 2 * v23);
LABEL_45:
  v24->__r_.__value_.__s.__data_[0] = 0;
}

char **uaap::DateTimeHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapDateTimeToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapDateTimeToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"DateTime");
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (v3)
  {
    v4 = v3[3];
    if (v3[4] == v4)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v5 = *v4;
    if (*v4)
    {
      v6 = **v5;
      {
        operator new();
      }
    }
  }

  uaap::DateHandler::mapDateToItemizedUsos(a1);
  uaap::mapTimeSpansToItemizedUsos(a1);
  uaap::mapTimeSpanSpansToItemizedUsos(a1);
  v7 = CFHash(@"DateSpan");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v7);
  if (result)
  {
    v10 = result[3];
    v9 = result[4];
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        result = *&v10[8 * v11];
        if (result)
        {
          v12 = **result;
          if (result)
          {
            operator new();
          }
        }

        ++v11;
      }

      while (v11 < (v9 - v10) >> 3);
    }
  }

  return result;
}

void sub_222971044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x223DC4D00](v3, v2);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t uaap::DateTimeHandler::resolveRecurringDateTime(siri::ontology::oname::graph::ontology_init *a1, uaap *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v6 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v7 = siri::ontology::operator!=();
          if ((v7 & 1) == 0)
          {
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v7);
            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            v9 = siri::ontology::oname::graph::ontology_init::Argument_recurrencePeriod(EntityNode);
            v10 = uaap::DateTimeHandler::resolveRecurrenceDuration(a1, a2, EntityNode, v9);
            v11 = siri::ontology::oname::graph::ontology_init::Argument_recurrenceDateTimes(v10);
            if (v10 | uaap::DateTimeHandler::resolveDateTime(a1, a2, EntityNode, v11, 1))
            {
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v12);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::UsoGraph *uaap::DateTimeHandler::resolveDateTime(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDDateOffsetSpan *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v5;
  }

  v9 = *(a3 + 24);
  siri::ontology::oname::graph::ontology_init::Root(a1);
  isRecurringTime = siri::ontology::operator!=();
  if (isRecurringTime)
  {
    v12 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(isRecurringTime);
    isRecurringTime = siri::ontology::operator!=();
    if (isRecurringTime)
    {
      return 0;
    }
  }

  if (a5)
  {
    v13 = *(a1 + 10);
    if (v13 && (v14 = *(v13 + 128)) != 0 && (*(v14 + 48) || *(v14 + 64)))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 8);
    }

    isRecurringTime = uaap::TimeSpanHandler::isRecurringTime(*(a1 + 9), v11);
    if (isRecurringTime)
    {
      v16 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v16 = *(a1 + 7);
LABEL_18:
  v17 = *(a1 + 9);
  if (!v17)
  {
    v18 = *(a1 + 7);
    if (v18)
    {
      v17 = *(v18 + 120);
    }

    else
    {
      v17 = 0;
    }
  }

  v19 = *(a1 + 10);
  if (!v15 && !v16 && !v17 && !v19)
  {
    return 0;
  }

  __p = 0;
  v88 = 0;
  v89 = 0;
  siri::ontology::oname::graph::ontology_init::common_DateTime(isRecurringTime);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  v5 = EntityNode;
  v84 = v19;
  if (v15)
  {
    v23 = siri::ontology::oname::graph::ontology_init::Argument_date(EntityNode);
    EntityNode = uaap::DateHandler::resolveDate(v15, a2, v5, v23, v24);
    v85 = EntityNode;
    if (EntityNode)
    {
      v30 = __p;
      v82 = (v88 - __p) >> 3;
      v31 = v82 + 1;
      if ((v82 + 1) >> 61)
      {
        goto LABEL_133;
      }

      v32 = v89 - __p;
      if ((v89 - __p) >> 2 > v31)
      {
        v31 = v32 >> 2;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v33);
      }

      v38 = v88 - __p;
      *(8 * v82) = v15;
      EntityNode = memcpy(0, v30, v38);
      __p = 0;
      v89 = 0;
      v88 = (8 * v82 + 8);
      v25 = 1;
      if (v16)
      {
        goto LABEL_30;
      }

LABEL_50:
      v27 = 0;
      goto LABEL_51;
    }
  }

  v25 = 0;
  v85 = 0;
  if (!v16)
  {
    goto LABEL_50;
  }

LABEL_30:
  v26 = siri::ontology::oname::graph::ontology_init::Argument_time(EntityNode);
  v27 = uaap::TimeHandler::resolveTime(v16, a2, v5, v26);
  if (v27)
  {
    v28 = v88;
    if (v88 < v89)
    {
      *v88 = v16;
      v29 = (v28 + 8);
      goto LABEL_54;
    }

    v34 = __p;
    v83 = (v88 - __p) >> 3;
    v35 = v83 + 1;
    if (!((v83 + 1) >> 61))
    {
      v36 = v89 - __p;
      if ((v89 - __p) >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v37);
      }

      v39 = v88 - __p;
      *(8 * v83) = v16;
      v29 = 8 * v83 + 8;
      memcpy(0, v34, v39);
      __p = 0;
      v89 = 0;
LABEL_54:
      v88 = v29;
      v25 = 1;
      v19 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      goto LABEL_55;
    }

LABEL_133:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

LABEL_51:
  if (!v19)
  {
LABEL_70:
    if (!v17)
    {
      goto LABEL_95;
    }

    goto LABEL_71;
  }

LABEL_55:
  if (!v17)
  {
    goto LABEL_70;
  }

  SpecialDateUnitDefinedValue = uaap::DateHandler::getSpecialDateUnitDefinedValue(v19);
  SpecialTimeDefinedValue = uaap::TimeHandler::getSpecialTimeDefinedValue(v17);
  if (SpecialDateUnitDefinedValue && SpecialTimeDefinedValue)
  {
    if (!v85)
    {
      siri::ontology::oname::graph::ontology_init::common_Date(SpecialTimeDefinedValue);
      SpecialTimeDefinedValue = siri::ontology::UsoGraph::createEntityNode();
      v85 = SpecialTimeDefinedValue;
    }

    if (!v27)
    {
      siri::ontology::oname::graph::ontology_init::common_Time(SpecialTimeDefinedValue);
      v27 = siri::ontology::UsoGraph::createEntityNode();
    }

    v42 = uaap::DateHandler::resolveDateTimeRangeValue(v19, a2, v85, v22);
    siri::ontology::oname::graph::ontology_init::Argument_date(v42);
    siri::ontology::UsoGraphNode::setSuccessor();
    v44 = *(v19 + 6);
    if (v44 && *(v44 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v19, a2, v27, v43);
    }

    uaap::TimeHandler::resolveDateTimeRangeValue(v17, a2, v27, v43);
    v46 = *(v17 + 48);
    if (v46 && *(v46 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v17, a2, v27, v45);
    }

    v48 = v88;
    v47 = v89;
    if (v88 >= v89)
    {
      v59 = __p;
      v60 = v88 - __p;
      v61 = (v88 - __p) >> 3;
      v62 = v61 + 1;
      if ((v61 + 1) >> 61)
      {
        goto LABEL_135;
      }

      if ((v89 - __p) >> 2 > v62)
      {
        v62 = (v89 - __p) >> 2;
      }

      if (v89 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v63 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v62;
      }

      if (v63)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v63);
      }

      v74 = (8 * v61);
      v47 = 0;
      *v74 = v19;
      v49 = (v74 + 1);
      memcpy(0, v59, v60);
      __p = 0;
      v88 = v49;
      v89 = 0;
    }

    else
    {
      *v88 = v19;
      v49 = (v48 + 8);
    }

    if (v49 < v47)
    {
      *v49 = v17;
      v75 = (v49 + 1);
LABEL_126:
      v88 = v75;
      goto LABEL_127;
    }

    v76 = __p;
    v77 = v49 - __p;
    v78 = (v49 - __p) >> 3;
    v79 = v78 + 1;
    if (!((v78 + 1) >> 61))
    {
      if ((v47 - __p) >> 2 > v79)
      {
        v79 = (v47 - __p) >> 2;
      }

      if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v80 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v79;
      }

      if (v80)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v80);
      }

      *(8 * v78) = v17;
      v75 = 8 * v78 + 8;
      memcpy(0, v76, v77);
      __p = 0;
      v89 = 0;
      goto LABEL_126;
    }

LABEL_135:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

LABEL_71:
  if (uaap::TimeHandler::resolveDateTimeRangeValue(v17, a2, v5, v22))
  {
    v50 = *(v17 + 48);
    if (v50 && *(v50 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v17, a2, v5, v22);
    }

    v51 = v88;
    if (v88 >= v89)
    {
      v53 = __p;
      v54 = v88 - __p;
      v55 = (v88 - __p) >> 3;
      v56 = v55 + 1;
      if ((v55 + 1) >> 61)
      {
        goto LABEL_134;
      }

      v57 = v89 - __p;
      if ((v89 - __p) >> 2 > v56)
      {
        v56 = v57 >> 2;
      }

      if (v57 >= 0x7FFFFFFFFFFFFFF8)
      {
        v58 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v56;
      }

      if (v58)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v58);
      }

      *(8 * v55) = v17;
      v52 = 8 * v55 + 8;
      memcpy(0, v53, v54);
      __p = 0;
      v89 = 0;
    }

    else
    {
      *v88 = v17;
      v52 = (v51 + 8);
    }

    v88 = v52;
    v25 = 1;
    v19 = v84;
  }

LABEL_95:
  if (v19 && uaap::DateHandler::resolveDateTimeRangeValue(v19, a2, v5, v22))
  {
    v65 = *(v19 + 6);
    if (v65 && *(v65 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v19, a2, v5, v64);
    }

    v66 = v88;
    if (v88 < v89)
    {
      *v88 = v84;
      v67 = (v66 + 8);
LABEL_113:
      v88 = v67;
      goto LABEL_127;
    }

    v68 = __p;
    v69 = v88 - __p;
    v70 = (v88 - __p) >> 3;
    v71 = v70 + 1;
    if (!((v70 + 1) >> 61))
    {
      v72 = v89 - __p;
      if ((v89 - __p) >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v73);
      }

      *(8 * v70) = v84;
      v67 = 8 * v70 + 8;
      memcpy(0, v68, v69);
      __p = 0;
      v89 = 0;
      goto LABEL_113;
    }

LABEL_134:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (v25)
  {
LABEL_127:
    if (!a5)
    {
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v5, a1, v21);
    }

    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v5, &__p);
    siri::ontology::UsoGraphNode::setSuccessor();
    goto LABEL_130;
  }

  v5 = 0;
LABEL_130:
  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_2229718E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::DateTimeHandler::resolveRecurrenceDuration(_BOOL8 *a1, uaap *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  siri::ontology::oname::graph::ontology_init::Root(a1);
  v9 = siri::ontology::operator!=();
  if (v9)
  {
    v11 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v9);
    if (siri::ontology::operator!=())
    {
      return 0;
    }
  }

  isRecurringTime = uaap::TimeSpanHandler::isRecurringTime(a1[9], v10);
  if (isRecurringTime)
  {
    v13 = a1[9];
    if (*(v13 + 7) || *(v13 + 8) || *(v13 + 10))
    {
      siri::ontology::oname::graph::ontology_init::common_Duration(isRecurringTime);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v13, v15);
    }
  }

  v16 = a1[10];
  if (!v16 || !uaap::DateSpanHandler::isRecurringDate(v16))
  {
    return 0;
  }

  v17 = a1[10];

  return uaap::DateHandler::resolveDurationValueAndUnit(v17, a2, a3, a4);
}

siri::ontology::oname::graph::ontology_init *uaap::DateTimeHandler::resolveDateTimeGraph(siri::ontology::oname::graph::ontology_init *result, uint64_t a2, uaap::UPDDDateOffsetSpan *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(result);

    return uaap::DateTimeHandler::resolveDateTime(v4, a3, v5, v6, 0);
  }

  return result;
}

siri::ontology::oname::graph::ontology_init *uaap::DateTimeHandler::resolveRecurringDateTimeGraph(siri::ontology::oname::graph::ontology_init *result, uint64_t a2, uaap *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(result);

    return uaap::DateTimeHandler::resolveRecurringDateTime(v4, a3, v5, v6);
  }

  return result;
}

char **uaap::DateSpanWithReferenceHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::DateSpanWithReferenceHandler::mapDateSpanWithReferenceToItemizedUsos(a3);
  }

  return result;
}

char **uaap::DateSpanWithReferenceHandler::mapDateSpanWithReferenceToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"DateSpanWithReference");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v5 = result[3];
    v4 = result[4];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v7 = *&v5[8 * v6];
        if (v7)
        {
          v8 = **v7;
          {
            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }

    return uaap::DateSpanHandler::mapDateSpanToItemizedUsos(a1);
  }

  return result;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReference(siri::ontology::oname::graph::ontology_init *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (a2 && a1 && a3 && a4)
  {
    v7 = *(a3 + 24);
    siri::ontology::oname::graph::ontology_init::Root(a1);
    v8 = siri::ontology::operator!=();
    if (v8)
    {
      return 0;
    }

    siri::ontology::oname::graph::ontology_init::common_DateTime(v8);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    v9 = *(a1 + 7);
    v10 = siri::ontology::oname::graph::ontology_init::Argument_date(EntityNode);
    if (!uaap::DateSpanHandler::resolveDateSpan(v9, a2, EntityNode, v10))
    {
      return 0;
    }

    else
    {
      siri::ontology::UsoGraphNode::setSuccessor();
    }
  }

  return EntityNode;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReferenceGraph(siri::ontology::oname::graph::ontology_init *this, __CFString *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    length = a2[2].length;
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReference(v4, a2, length, v6);
  }

  return this;
}

uint64_t snlp::common::utilities::getUtf16Length(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  if (v2)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    if (v1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    while (1)
    {
      v6 = v3 + 1;
      v7 = *(v5 + v3);
      if (v7 < 0)
      {
        if (v6 == v2)
        {
          goto LABEL_29;
        }

        v9 = *(v5 + v3);
        if (v9 < 0xE0)
        {
          if (v9 < 0xC2)
          {
            goto LABEL_29;
          }

          v12 = v7 & 0x1F;
        }

        else
        {
          if (v9 > 0xEF)
          {
            if (v9 > 0xF4 || (v13 = v9 - 240, v14 = *(v5 + v6), ((byte_2229DAB85[v14 >> 4] >> (v9 + 16)) & 1) == 0) || (v6 = v3 + 2, v3 + 2 == v2) || (v11 = *(v5 + v6) ^ 0x80, v11 > 0x3F))
            {
LABEL_29:
              v15 = 0;
              v4 = 0;
              return v15 | v4;
            }

            LODWORD(v10) = v14 & 0x3F | (v13 << 6);
          }

          else
          {
            v10 = v7 & 0xF;
            if (((a00000000000000[v10] >> (*(v5 + v6) >> 5)) & 1) == 0)
            {
              goto LABEL_29;
            }

            v11 = *(v5 + v6) & 0x3F;
          }

          if (++v6 == v2)
          {
            goto LABEL_29;
          }

          v12 = v11 | (v10 << 6);
        }

        if (*(v5 + v6) > -65)
        {
          goto LABEL_29;
        }

        ++v6;
        if (v12 < 0x400)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 1;
      }

      v4 = (v8 + v4);
      v3 = v6;
      if (v6 >= v2)
      {
        goto LABEL_31;
      }
    }
  }

  v4 = 0;
LABEL_31:
  v15 = 0x100000000;
  return v15 | v4;
}

uint64_t snlp::common::utilities::getUnicodeScalarLength(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  if (v2)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    if (v1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    while (1)
    {
      v6 = v3 + 1;
      v7 = *(v5 + v3);
      if (v7 < 0)
      {
        if (v6 == v2)
        {
          break;
        }

        v8 = *(v5 + v3);
        if (v8 < 0xE0)
        {
          if (v8 < 0xC2)
          {
            break;
          }
        }

        else
        {
          if (v8 > 0xEF)
          {
            if (v8 > 0xF4)
            {
              break;
            }

            if (((byte_2229DAB85[*(v5 + v6) >> 4] >> (v7 + 16)) & 1) == 0)
            {
              break;
            }

            v6 = v3 + 2;
            if (v3 + 2 == v2 || *(v5 + v6) > -65)
            {
              break;
            }
          }

          else if (((a00000000000000[v7 & 0xF] >> (*(v5 + v6) >> 5)) & 1) == 0)
          {
            break;
          }

          if (++v6 == v2)
          {
            break;
          }
        }

        v9 = *(v5 + v6);
        if (v9 < -64)
        {
          ++v6;
        }

        if (v9 > -65)
        {
          break;
        }
      }

      v4 = (v4 + 1);
      v3 = v6;
      if (v6 >= v2)
      {
        goto LABEL_27;
      }
    }

    v10 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
LABEL_27:
    v10 = 0x100000000;
  }

  return v10 | v4;
}

uint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForPSCOutputClass@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  LODWORD(v29.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29.__r_.__value_.__s.__data_[8], "Not_Pommes");
  v30 = 1;
  std::string::basic_string[abi:ne200100]<0>(v31, "Pommes");
  v24 = a1;
  v3 = 0;
  *__p = 0u;
  v27 = 0u;
  v28 = 1065353216;
  do
  {
    v4 = *(&v29.__r_.__value_.__l.__data_ + v3);
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v5 = vcnt_s8(__p[1]);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(&v29.__r_.__value_.__l.__data_ + v3);
      if (__p[1] <= v4)
      {
        v6 = v4 % __p[1];
      }
    }

    else
    {
      v6 = (__p[1] - 1) & v4;
    }

    v7 = *(__p[0] + v6);
    if (!v7 || (v8 = *v7) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v9 = v8[1];
      if (v9 == v4)
      {
        break;
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= __p[1])
        {
          v9 %= __p[1];
        }
      }

      else
      {
        v9 &= __p[1] - 1;
      }

      if (v9 != v6)
      {
        goto LABEL_18;
      }

LABEL_17:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if (*(v8 + 4) != v4)
    {
      goto LABEL_17;
    }

    v3 += 32;
  }

  while (v3 != 64);
  for (i = 0; i != -64; i -= 32)
  {
    if (v31[i + 23] < 0)
    {
      operator delete(*&v31[i]);
    }
  }

  v11 = *v24;
  v12 = vcnt_s8(__p[1]);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = *v24;
    if (__p[1] <= v11)
    {
      v13 = v11 % __p[1];
    }
  }

  else
  {
    v13 = (__p[1] - 1) & v11;
  }

  v14 = *(__p[0] + v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v25, *v24);
    v18 = std::string::insert(&v25, 0, "Failed to find the string representation of the PSC output class: ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  while (2)
  {
    v16 = v15[1];
    if (v16 != v11)
    {
      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= __p[1])
        {
          v16 %= __p[1];
        }
      }

      else
      {
        v16 &= __p[1] - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (*(v15 + 4) != v11)
    {
LABEL_38:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  if (*(v15 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v15[3], v15[4]);
  }

  else
  {
    v20 = *(v15 + 3);
    a2->__r_.__value_.__r.__words[2] = v15[5];
    *&a2->__r_.__value_.__l.__data_ = v20;
  }

  result = std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(__p);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::convertSNLCLabelToStringLabel@<X0>(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (this <= 1)
  {
    v6 = v2;
    v7 = v3;
    v5 = this;
    this = itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForSNLCOutputClass(&v5, a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

unint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::convertPSCLabelToStringLabel@<X0>(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (this <= 1)
  {
    v6 = v2;
    v7 = v3;
    v5 = this;
    this = itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForPSCOutputClass(&v5, a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::isSetNumberVocSpan(uint64_t a1, void *a2)
{
  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  if (v3 != v4)
  {
    while (*v3 != 3 && *v3 != 8)
    {
      if (++v3 == v4)
      {
        v3 = a2[2];
        break;
      }
    }
  }

  v6 = *(a1 + 103);
  if (v6 >= 0)
  {
    v7 = *(a1 + 103);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v8 = *(v2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v2 + 8);
  }

  if (v7 == v8)
  {
    v12 = *(a1 + 80);
    v10 = (a1 + 80);
    v11 = v12;
    if (v6 < 0)
    {
      v10 = v11;
    }

    if (v9 >= 0)
    {
      v13 = a2[6];
    }

    else
    {
      v13 = *v2;
    }

    v14 = memcmp(v10, v13, v7) == 0;
  }

  else
  {
    v14 = 0;
  }

  return (v4 != v3) & v14;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::replaceTreeNodeVerb(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer *this, std::string *__str, BOOL *a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v5 = (this + 56);
  v6 = *(this + 79);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 7);
    v6 = *(this + 8);
  }

  else
  {
    v7 = this + 56;
  }

  __p.__r_.__value_.__r.__words[0] = v7;
  __p.__r_.__value_.__l.__size_ = v6;
  nlv4_inference_orchestrator::trees::split(&v53, __str, &__p.__r_.__value_.__l.__data_);
  *a3 = 0;
  v9 = v56;
  v10 = v55;
  if ((v56 & 0x80u) == 0)
  {
    v11 = v56;
  }

  else
  {
    v11 = v55;
  }

  if (!v11)
  {
    goto LABEL_67;
  }

  if ((v56 & 0x80) != 0)
  {
    if (v55 != 10)
    {
      goto LABEL_17;
    }

    v12 = v54;
  }

  else
  {
    v12 = &v54;
    if (v56 != 10)
    {
      goto LABEL_17;
    }
  }

  v13 = *v12;
  v14 = v12[4];
  if (v13 == 0x6573616572636E69 && v14 == 31042)
  {
    v24 = 1;
    if ((v56 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_17:
  v8 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_increaseBy(v8);
  v9 = v56;
  v10 = v55;
  if ((v56 & 0x80u) == 0)
  {
    v16 = v56;
  }

  else
  {
    v16 = v55;
  }

  v17 = *(v8 + 63);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v8 + 48);
  }

  if (v16 == v17)
  {
    if ((v56 & 0x80u) == 0)
    {
      v19 = &v54;
    }

    else
    {
      v19 = v54;
    }

    v22 = *(v8 + 40);
    v20 = (v8 + 40);
    v21 = v22;
    if (v18 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v8 = memcmp(v19, v23, v16);
    v24 = v8 == 0;
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_35;
    }

LABEL_32:
    v25 = &v54;
    if (v9 != 10)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v24 = 0;
  if ((v56 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (v10 != 10)
  {
    goto LABEL_41;
  }

  v25 = v54;
LABEL_37:
  v26 = *v25;
  v27 = v25[4];
  if (v26 == 0x6573616572636564 && v27 == 31042)
  {
LABEL_56:
    v39 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v53.__r_.__value_.__l.__data_, v5);
    v40 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_setNumber(v39);
    v43 = *(v40 + 40);
    v41 = v40 + 40;
    v42 = v43;
    v44 = *(v41 + 23);
    if (v44 >= 0)
    {
      v45 = v41;
    }

    else
    {
      v45 = v42;
    }

    if (v44 >= 0)
    {
      v46 = *(v41 + 23);
    }

    else
    {
      v46 = *(v41 + 8);
    }

    v47 = std::string::append(&__p, v45, v46);
    v48 = v47->__r_.__value_.__r.__words[0];
    v57[0] = v47->__r_.__value_.__l.__size_;
    *(v57 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
    v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str->__r_.__value_.__l.__data_);
    }

    v50 = v57[0];
    __str->__r_.__value_.__r.__words[0] = v48;
    __str->__r_.__value_.__l.__size_ = v50;
    *(&__str->__r_.__value_.__r.__words[1] + 7) = *(v57 + 7);
    *(&__str->__r_.__value_.__s + 23) = v49;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *a3 = 1;
    LOBYTE(v9) = v56;
    goto LABEL_67;
  }

LABEL_41:
  v29 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_decreaseBy(v8);
  LOBYTE(v9) = v56;
  if ((v56 & 0x80u) == 0)
  {
    v30 = v56;
  }

  else
  {
    v30 = v55;
  }

  v31 = *(v29 + 63);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v29 + 48);
  }

  if (v30 == v31)
  {
    if ((v56 & 0x80u) == 0)
    {
      v33 = &v54;
    }

    else
    {
      v33 = v54;
    }

    v36 = *(v29 + 40);
    v34 = (v29 + 40);
    v35 = v36;
    if (v32 >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v38 = memcmp(v33, v37, v30) == 0;
  }

  else
  {
    v38 = 0;
  }

  if (v24 || v38)
  {
    goto LABEL_56;
  }

LABEL_67:
  if ((v9 & 0x80) != 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v51 = *MEMORY[0x277D85DE8];
}

uaap::UPDDDateTimeBaseSpan *uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(uaap::UPDDDateTimeBaseSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E58B0;
  *(this + 6) = 0;
  if (DDResultGetSubresultWithType())
  {
    operator new();
  }

  return this;
}

void sub_222972D0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  *(v1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(uaap::UPDDDateTimeBaseSpan *this)
{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6)
{
  v8 = uaap::UPDDSpan::UPDDSpan(a1, a2, a3, a4, a5);
  *v8 = &unk_2835E58B0;
  *(v8 + 6) = 0;
  v9 = *a6;
  *a6 = 0;
  v10 = *(v8 + 6);
  *(a1 + 6) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t uaap::UPDDSpan::extractIntValueFromCFStringRef(const __CFString *this, const __CFString *a2)
{
  v19 = 0;
  if (DDFastIntegerExtraction())
  {
    return v19;
  }

  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "unknown/");
  applesauce::CF::convert_to<std::string,0>(&__str, this);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v4 = __p[0];
    v7 = __p[1];
  }

  if (v7)
  {
    if (size >= v7)
    {
      v8 = p_str + size;
      v9 = *v4;
      v10 = p_str;
      do
      {
        v11 = size - v7;
        if (v11 == -1)
        {
          break;
        }

        v12 = memchr(v10, v9, v11 + 1);
        if (!v12)
        {
          break;
        }

        v13 = v12;
        if (!memcmp(v12, v4, v7))
        {
          if (v13 != v8)
          {
            v14 = v13 - p_str;
            if (v13 - p_str != -1)
            {
              goto LABEL_20;
            }
          }

          break;
        }

        v10 = (v13 + 1);
        size = v8 - (v13 + 1);
      }

      while (size >= v7);
    }
  }

  else
  {
    v14 = 0;
LABEL_20:
    std::string::erase(&__str, v14, v7);
  }

  v3 = std::stoi(&__str, 0, 10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}