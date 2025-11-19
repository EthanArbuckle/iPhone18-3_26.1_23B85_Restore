void sub_27260F368(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v10 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        v7 = strlen(__str);
        std::string::append(this, __str, v7);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_27260F448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(std::string *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "syntax error ");
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a1, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a1, "- ", 2uLL);
  v13 = *(a2 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, *(a2 + 136));
    v14 = std::string::append(&v36, "; last read: '", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(&__p, *(a2 + 88), *(a2 + 96));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a1, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_52;
    }

LABEL_49:
    if (!a3)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v13 > 0x10)
  {
    v25 = "unknown token";
  }

  else
  {
    v25 = off_279E4A1B8[v13];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ", 0xBuLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a1, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_52:
  operator delete(v24);
  if (!a3)
  {
    return;
  }

LABEL_53:
  if (a3 > 0x10)
  {
    v30 = "unknown token";
  }

  else
  {
    v30 = off_279E4A1B8[a3];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ", 0xBuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a1, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_27260F7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(nlohmann::detail::exception *a1, uint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v31, "parse_error");
  nlohmann::detail::exception::name(&v33, v31, 101);
  v6 = std::string::append(&v33, "parse error", 0xBuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v40, a2[2] + 1);
  v8 = std::string::insert(&v40, 0, " at line ", 9uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v41, ", column ", 9uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v39, a2[1]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v39;
  }

  else
  {
    v12 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v42, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v30 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v30 >= 0)
  {
    v17 = HIBYTE(v30);
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v34, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v35, ": ", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = *(a3 + 8);
  }

  v25 = std::string::append(&v36, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38 = v25->__r_.__value_.__r.__words[2];
  *v37 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v27 = *a2;
  if (v38 >= 0)
  {
    v28 = v37;
  }

  else
  {
    v28 = v37[0];
  }

  nlohmann::detail::exception::exception(a1, 101, v28);
  *a1 = &unk_2881B66F0;
  *(a1 + 4) = v27;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_27260FB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t result, const nlohmann::detail::parse_error *a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    v2 = *(a2 + 2) / 100 % 100;
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v4 = nlohmann::detail::parse_error::parse_error(exception, a2);
        v6 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_14;
        }

        v7 = __cxa_allocate_exception(0x20uLL);
        v4 = nlohmann::detail::invalid_iterator::invalid_iterator(v7, a2);
        v6 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          v8 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::type_error::type_error(v8, a2);
          v6 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v9 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::out_of_range::out_of_range(v9, a2);
          v6 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v3 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::other_error::other_error(v3, a2);
          v6 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_14:
          __assert_rtn("parse_error", "json_sax.hpp", 537, "false");
      }
    }

    __cxa_throw(v4, v5, v6);
  }

  return result;
}

void nlohmann::detail::parse_error::~parse_error(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 144), *(a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t result, const nlohmann::detail::parse_error *a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    v2 = *(a2 + 2) / 100 % 100;
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v4 = nlohmann::detail::parse_error::parse_error(exception, a2);
        v6 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_14;
        }

        v7 = __cxa_allocate_exception(0x20uLL);
        v4 = nlohmann::detail::invalid_iterator::invalid_iterator(v7, a2);
        v6 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          v8 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::type_error::type_error(v8, a2);
          v6 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v9 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::out_of_range::out_of_range(v9, a2);
          v6 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v3 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::other_error::other_error(v3, a2);
          v6 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_14:
          __assert_rtn("parse_error", "json_sax.hpp", 283, "false");
      }
    }

    __cxa_throw(v4, v5, v6);
  }

  return result;
}

nlohmann::detail::parse_error *nlohmann::detail::parse_error::parse_error(nlohmann::detail::parse_error *this, const nlohmann::detail::parse_error *a2)
{
  *this = &unk_2881C1828;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x2743CB8C0](this + 16, a2 + 16);
  *this = &unk_2881B66F0;
  *(this + 4) = *(a2 + 4);
  return this;
}

uint64_t nlohmann::detail::out_of_range::out_of_range(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881C1828;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2743CB8C0](a1 + 16, a2 + 16);
  *a1 = &unk_2881B66B0;
  return a1;
}

uint64_t nlohmann::detail::invalid_iterator::invalid_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881C1828;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2743CB8C0](a1 + 16, a2 + 16);
  *a1 = &unk_2881B6688;
  return a1;
}

nlohmann::detail::type_error *nlohmann::detail::type_error::type_error(nlohmann::detail::type_error *this, const nlohmann::detail::type_error *a2)
{
  *this = &unk_2881C1828;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x2743CB8C0](this + 16, a2 + 16);
  *this = &unk_2881C1800;
  return this;
}

uint64_t nlohmann::detail::other_error::other_error(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881C1828;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2743CB8C0](a1 + 16, a2 + 16);
  *a1 = &unk_2881B6630;
  return a1;
}

void nlohmann::detail::other_error::~other_error(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::detail::invalid_iterator::~invalid_iterator(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void nlohmann::detail::out_of_range::~out_of_range(std::exception *this)
{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C1828;
  MEMORY[0x2743CB8E0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v4 = a1[2];
  if (a1[1] == v4)
  {
    v12 = *a2;
    v34[0] = *a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v35, v12);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v14 = *v13;
    *v13 = v34[0];
    v34[0] = v14;
    v15 = *(v13 + 8);
    *(v13 + 8) = v35;
    v35 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v35, v34[0]);
    return *a1;
  }

  else
  {
    v5 = *(v4 - 8);
    v6 = *v5;
    if (v6 == 2)
    {
      v7 = *(v5 + 1);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        v21 = (v9 - *v7) >> 4;
        if ((v21 + 1) >> 60)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v22 = v8 - *v7;
        v23 = v22 >> 3;
        if (v22 >> 3 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        v39 = v7;
        if (v24)
        {
          std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v24);
        }

        v25 = 16 * v21;
        v36 = 0;
        v37 = v25;
        v38 = v25;
        v26 = *a2;
        *v25 = v26;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v25 + 8), v26);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        *&v38 = v38 + 16;
        v27 = *(v7 + 8);
        v28 = v37 + *v7 - v27;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v7, *v7, v27, v28);
        v29 = *v7;
        *v7 = v28;
        v30 = *(v7 + 16);
        v31 = v38;
        v37 = v29;
        *&v38 = v29;
        *(v7 + 8) = v31;
        *(&v38 + 1) = v30;
        v36 = v29;
        std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v36);
        v11 = v31;
      }

      else
      {
        v10 = *a2;
        *v9 = v10;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v9 + 8), v10);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
        v11 = v9 + 16;
        *(v7 + 8) = v9 + 16;
      }

      *(v7 + 8) = v11;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v6 != 1)
      {
        __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
      }

      if (!a1[4])
      {
        __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
      }

      v17 = *a2;
      v32[0] = *a2;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v33, v17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      v18 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      v19 = *v18;
      *v18 = v32[0];
      v32[0] = v19;
      v20 = *(v18 + 8);
      *(v18 + 8) = v33;
      v33 = v20;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v33, v32[0]);
      return a1[4];
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::vector<BOOL>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 == v2 << 6)
  {
    if ((v3 + 1) < 0)
    {
      goto LABEL_8;
    }

    if (v3 > 0x3FFFFFFFFFFFFFFELL)
    {
LABEL_9:
      operator new();
    }

    v4 = v2 << 7;
    if (v4 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v4 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v3 < v4)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_8:
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      goto LABEL_9;
    }
  }

  result[1] = v3 + 1;
  v5 = *result;
  v6 = v3 >> 6;
  v7 = 1 << v3;
  if (*a2 == 1)
  {
    v8 = *(v5 + 8 * v6) | v7;
  }

  else
  {
    v8 = *(v5 + 8 * v6) & ~v7;
  }

  *(v5 + 8 * v6) = v8;
  return result;
}

void nlohmann::detail::out_of_range::create(nlohmann::detail::exception *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out_of_range");
  nlohmann::detail::exception::name(&v12, __p, 406);
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

  v7 = std::string::append(&v12, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14 = v7->__r_.__value_.__r.__words[2];
  *v13 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 >= 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v13[0];
  }

  nlohmann::detail::exception::exception(a1, 406, v9);
  *a1 = &unk_2881B66B0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_272610B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11 = v33;
    v12 = *a2;
    v33[0] = 4;
    v34 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v14 = *v13;
    *v13 = 4;
    v33[0] = v14;
    v15 = *(v13 + 1);
    *(v13 + 1) = v12;
    v34 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    v16 = v33;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11 + 1, v14);
    return;
  }

  v4 = *(v3 - 1);
  v5 = *v4;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v11 = v31;
    v17 = *a2;
    v31[0] = 4;
    v32 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v18 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v14 = *v18;
    *v18 = 4;
    v31[0] = v14;
    v19 = *(v18 + 1);
    *(v18 + 1) = v17;
    v32 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
    v16 = v31;
    goto LABEL_9;
  }

  v6 = *(v4 + 1);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v20 = (v8 - *v6) >> 4;
    if ((v20 + 1) >> 60)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v21 = v7 - *v6;
    v22 = v21 >> 3;
    if (v21 >> 3 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    v38 = v6;
    if (v23)
    {
      std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v23);
    }

    v24 = 16 * v20;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = *a2;
    *v24 = 4;
    *(v24 + 8) = v25;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    *&v37 = v24 + 16;
    v26 = *(v6 + 8);
    v27 = v24 + *v6 - v26;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v6, *v6, v26, v27);
    v28 = *v6;
    *v6 = v27;
    v29 = *(v6 + 16);
    v30 = v37;
    v36 = v28;
    *&v37 = v28;
    *(v6 + 8) = v30;
    *(&v37 + 1) = v29;
    v35 = v28;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v35);
    v10 = v30;
  }

  else
  {
    *(v8 + 8) = 0;
    v9 = *a2;
    *v8 = 4;
    *(v8 + 8) = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v10 = v8 + 16;
  }

  *(v6 + 8) = v10;
}

void sub_272610E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:ne200100]((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    __assert_rtn("scan_literal", "lexer.hpp", 1222, "char_traits<char_type>::to_char_type(current) == literal_text[0]");
  }

  v6 = a2 + 1;
  v7 = a3 - 1;
  while (1)
  {
    v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v9 = *v6++;
    if (v9 != v8)
    {
      break;
    }

    if (!--v7)
    {
      return a4;
    }
  }

  *(a1 + 96) = "invalid literal";
  return 14;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 56);
    if (*(result + 48) == v3)
    {
      __assert_rtn("unget", "lexer.hpp", 1314, "not token_string.empty()");
    }

    *(result + 56) = v3 - 1;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != 117)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 162, "current == 'u'");
  }

  LODWORD(v2) = 0;
  v3 = 0;
  v9 = xmmword_272756640;
  do
  {
    v4 = *(&v9 + v3);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v5 = *(a1 + 16);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 65) > 5)
      {
        if ((v5 - 97) > 5)
        {
          v2 = 0xFFFFFFFFLL;
          goto LABEL_12;
        }

        v6 = v5 - 87;
      }

      else
      {
        v6 = v5 - 55;
      }
    }

    v2 = ((v6 << v4) + v2);
    v3 += 4;
  }

  while (v3 != 16);
  if (v2 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(std::string *a1, _DWORD *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    __assert_rtn("next_byte_in_range", "lexer.hpp", 209, "ranges.size() == 2 or ranges.size() == 4 or ranges.size() == 6");
  }

  std::string::push_back(a1 + 3, a1->__r_.__value_.__s.__data_[16]);
  v6 = &a2[a3];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v7 = a1->__r_.__value_.__r.__words[2];
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back(a1 + 3, v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  a1[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
  return result;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v52, (a1 + 136));
    v3 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
    v4 = *v3;
    *v3 = v52[0];
    v52[0] = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = v53;
    v53 = v5;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v53, v52[0]);
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 == v6)
  {
    __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
  }

  v9 = v6 - 8;
  *(a1 + 16) = v6 - 8;
  *(a1 + 40) = v8 - 1;
  if (v7 == v6 - 8)
  {
    return;
  }

  v10 = *(v6 - 16);
  if (!v10)
  {
    return;
  }

  v11 = *v10;
  if ((v11 - 1) > 1)
  {
    return;
  }

  if (*v10)
  {
    if (v11 == 2)
    {
      v13 = 0;
      v12 = **(v10 + 1);
      v14 = 0x8000000000000000;
    }

    else if (v11 == 1)
    {
      v12 = 0;
      v13 = **(v10 + 1);
      v14 = 0x8000000000000000;
    }

    else
    {
      v14 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  while (1)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v51, *(v9 - 8));
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v51);
    if (v10 != v51[0])
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v55, "cannot compare iterators of different containers");
      nlohmann::detail::invalid_iterator::create(exception, 212, &v55);
    }

    v17 = *v10;
    if (v17 == 1)
    {
      if (v13 == v51[1])
      {
        return;
      }
    }

    else if (v17 == 2)
    {
      if (v12 == v51[2])
      {
        return;
      }
    }

    else if (v14 == v51[4])
    {
      return;
    }

    v18 = *v10;
    if (v18 == 2)
    {
      v19 = v12;
      if (v12 == *(*(v10 + 1) + 8))
      {
        __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
      }

      goto LABEL_39;
    }

    if (v18 == 1)
    {
      if (v13 == (*(v10 + 1) + 8))
      {
        __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
      }

      v19 = (v13 + 7);
LABEL_39:
      v20 = *v19;
      goto LABEL_41;
    }

    v20 = *v10;
    if (v14)
    {
      v43 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v51, "cannot get value");
      nlohmann::detail::invalid_iterator::create(v43, 214, v51);
    }

LABEL_41:
    if (v20 == 9)
    {
      break;
    }

    if (v18 == 2)
    {
      v12 += 16;
    }

    else if (v18 == 1)
    {
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v13 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13;
          v13 = v13[2];
        }

        while (*v13 != v16);
      }
    }

    else
    {
      ++v14;
    }

    v9 = *(a1 + 16);
  }

  v21 = *(a1 + 16);
  v22 = *(v21 - 8);
  if (v10 != v22)
  {
    v44 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v55, "iterator does not fit current value");
    nlohmann::detail::invalid_iterator::create(v44, 202, &v55);
  }

  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v51, *(v21 - 8));
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v51);
  v23 = *v22;
  if ((v23 - 3) >= 6)
  {
    if (v23 == 1)
    {
      v36 = *(v22 + 1);
      v37 = v13[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        v39 = v13;
        do
        {
          v38 = v39[2];
          v40 = *v38 == v39;
          v39 = v38;
        }

        while (!v40);
      }

      if (*v36 == v13)
      {
        *v36 = v38;
      }

      v41 = v36[1];
      --v36[2];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v41, v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13 + 56);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v13 + 8, *(v13 + 56));
      if (*(v13 + 55) < 0)
      {
        operator delete(v13[4]);
      }

      operator delete(v13);
    }

    else
    {
      if (v23 != 2)
      {
        v46 = __cxa_allocate_exception(0x20uLL);
        v47 = v22;
        v48 = v46;
        v49 = *v47;
        if (v49 > 9)
        {
          v50 = "number";
        }

        else
        {
          v50 = off_279E48DC8[v49];
        }

        std::string::basic_string[abi:ne200100]<0>(&v54, v50);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v55, "cannot use erase() with ", &v54);
        nlohmann::detail::type_error::create(v48, 307, &v55);
      }

      v27 = *(v22 + 1);
      v28 = v12 + 16;
      v29 = *(v27 + 8);
      if (v12 + 16 != v29)
      {
        do
        {
          v55.__r_.__value_.__s.__data_[0] = *v28;
          v30 = v55.__r_.__value_.__s.__data_[0];
          v55.__r_.__value_.__l.__size_ = *(v28 + 1);
          size = v55.__r_.__value_.__l.__size_;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
          *v28 = 0;
          *(v28 + 1) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          v33 = *(v28 - 16);
          v32 = v28 - 16;
          *v32 = v30;
          v55.__r_.__value_.__s.__data_[0] = v33;
          v34 = *(v32 + 1);
          *(v32 + 1) = size;
          v55.__r_.__value_.__l.__size_ = v34;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v55.__r_.__value_.__l.__size_, v33);
          v28 = v32 + 32;
        }

        while (v28 != v29);
        v12 = v28 - 16;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v27, v12);
    }
  }

  else
  {
    if (v14)
    {
      v45 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v55, "iterator out of range");
      nlohmann::detail::invalid_iterator::create(v45, 205, &v55);
    }

    if (v23 == 8)
    {
      v25 = (v22 + 8);
      v24 = *(v22 + 1);
      v35 = *v24;
      if (*v24)
      {
        *(v24 + 1) = v35;
        v26 = v35;
LABEL_57:
        operator delete(v26);
        v24 = *v25;
      }

LABEL_58:
      operator delete(v24);
      *v25 = 0;
    }

    else if (v23 == 3)
    {
      v25 = (v22 + 8);
      v24 = *(v22 + 1);
      if (v24[23] < 0)
      {
        v26 = *v24;
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    *v22 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
  }
}

void sub_272611A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_272611C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a12);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v11, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    v5 = *v4;
    *v4 = v11[0];
    v11[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v12;
    v12 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v12, v11[0]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 == v7 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v10 = *(v7 - 16);
    if (*v10 == 2)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](*(v10 + 8), (*(*(v10 + 8) + 8) - 16));
    }
  }
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v27[0] = 4;
    v28 = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v7 = v27[0];
        v25[0] = v27[0];
        v8 = v25;
        v9 = v28;
        v26 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v27[0] = 0;
        v28 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *v10;
        *v10 = v7;
        v25[0] = v11;
        v12 = *(v10 + 1);
        *(v10 + 1) = v9;
        v26 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        v13 = v25;
        goto LABEL_14;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v5;
        if (v6 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v27);
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v15;
            if (((v16 >> v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v17 = v27[0];
            v23[0] = v27[0];
            v8 = v23;
            v18 = v28;
            v24 = v28;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v27[0] = 0;
            v28 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v19 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v11 = *v19;
            *v19 = v17;
            v23[0] = v11;
            v20 = *(v19 + 1);
            *(v19 + 1) = v18;
            v24 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
            v13 = v23;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
            goto LABEL_15;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
  }
}

void sub_272611FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(uint64_t a1, int a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 1, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(a1 + 8) = a2;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(unsigned __int8 **a1, unsigned __int8 a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v31[0] = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v32, a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v4 = a1[2];
    if (a1[1] == v4)
    {
      v9 = v31[0];
      v29[0] = v31[0];
      v10 = v32;
      v30 = v32;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
      v31[0] = 0;
      v32 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
      v11 = *a1;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
      v12 = *v11;
      *v11 = v9;
      v29[0] = v12;
      v13 = *(v11 + 1);
      *(v11 + 1) = v10;
      v30 = v13;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v30, v12);
      v14 = *a1;
      goto LABEL_14;
    }

    v5 = *(v4 - 1);
    if (v5)
    {
      v6 = *v5;
      if (v6 == 2)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v31);
        v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_14:
        v8 = 1;
LABEL_16:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v32, v31[0]);
        return v8;
      }

      if (v6 == 1)
      {
        v15 = a1[8];
        if (v15)
        {
          v16 = v15 - 1;
          v17 = *&a1[7][(v16 >> 3) & 0x1FFFFFFFFFFFFFF8];
          a1[8] = v16;
          if ((v17 >> v16))
          {
            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v18 = v31[0];
            v27[0] = v31[0];
            v19 = v32;
            v28 = v32;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
            v31[0] = 0;
            v32 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v20 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v21 = *v20;
            *v20 = v18;
            v27[0] = v21;
            v22 = *(v20 + 1);
            *(v20 + 1) = v19;
            v28 = v22;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v21);
            v23 = a1[10];
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        v25 = "not key_keep_stack.empty()";
        v26 = 615;
      }

      else
      {
        v25 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
        v26 = 603;
      }

      __assert_rtn("handle_value", "json_sax.hpp", v26, v25);
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  return 0;
}

void sub_272612354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

void nlohmann::detail::invalid_iterator::create(nlohmann::detail::exception *a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "invalid_iterator");
  nlohmann::detail::exception::name(&v14, __p, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a1, a2, v11);
  *a1 = &unk_2881B6688;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_272612608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(void *a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    CFRetain(*(v7 + 8 * v2));
  }

  if (v6)
  {
    CFRetain(v6);
  }

  *a1 = v6;
  if (v8)
  {
    CFRetain(v8);
    a1[1] = v8;
    CFRelease(v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    a1[1] = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

uint64_t applesauce::CF::details::make_json_string(_BYTE *a1, char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v6 = v17;
  *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v17 + *(v6 - 24) + 8) = *(&v17 + *(v6 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v7 = &v17 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v17 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v27);
  }

  *(v7 + 36) = 48;
  while (a3)
  {
    v9 = *a2;
    if (v9 <= 0xB)
    {
      switch(v9)
      {
        case 8u:
          v10 = "\\b";
          break;
        case 9u:
          v10 = "\\t";
          break;
        case 0xAu:
          v10 = "\\n";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (*a2 > 0x21u)
    {
      v10 = "\\\";
      if (v9 != 92)
      {
        if (v9 != 34)
        {
LABEL_17:
          if (v9 == 127 || v9 - 1 <= 0x1E)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "\\u", 2);
            *(v20 + *(v17 - 24)) = 4;
            MEMORY[0x2743CBB40](&v17, *a2);
          }

          else
          {
            LOBYTE(v27.__locale_) = v9;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v27, 1);
          }

          goto LABEL_23;
        }

        v10 = "\\"";
      }
    }

    else if (v9 == 12)
    {
      v10 = "\\f";
    }

    else
    {
      if (v9 != 13)
      {
        goto LABEL_17;
      }

      v10 = "\\r";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, 2);
LABEL_23:
    ++a2;
    --a3;
  }

  if ((v25 & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v12 = v21;
    }

    v13 = v20[3];
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v11 = 0;
      a1[23] = 0;
      goto LABEL_39;
    }

    v13 = v20[0];
    v12 = v20[2];
  }

  v11 = v12 - v13;
  if (v12 - v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a1[23] = v11;
  if (v11)
  {
    memmove(a1, v13, v11);
  }

LABEL_39:
  a1[v11] = 0;
  v16[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v14;
  v18 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v26);
}

void sub_272612C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x2743CBE30](&a26);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void applesauce::CF::details::to_description_json_style_helper(uint64_t a1, CFTypeRef *a2, size_t a3, uint64_t a4)
{
  v96 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    goto LABEL_44;
  }

  v8 = CFGetTypeID(*a2);
  TypeID = CFBooleanGetTypeID();
  v10 = *a2;
  if (v8 == TypeID)
  {
    if (v10)
    {
      if (!applesauce::CF::convert_to<BOOL,0>(v10))
      {
        *(a1 + 23) = 5;
        strcpy(a1, "false");
LABEL_54:
        v39 = *MEMORY[0x277D85DE8];
        return;
      }

      *(a1 + 23) = 4;
      v11 = 1702195828;
LABEL_53:
      *a1 = v11;
      *(a1 + 4) = 0;
      goto LABEL_54;
    }

    goto LABEL_152;
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v12 = CFGetTypeID(v10);
  v13 = CFNumberGetTypeID();
  v14 = *a2;
  if (v12 != v13)
  {
    if (v14)
    {
      v19 = CFGetTypeID(v14);
      if (v19 == CFStringGetTypeID())
      {
        *(&v93.__r_.__value_.__s + 23) = 1;
        LOWORD(v93.__r_.__value_.__l.__data_) = 34;
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(&v91, *a2);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v91;
        }

        else
        {
          v20 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v91.__r_.__value_.__l.__size_;
        }

        applesauce::CF::details::make_json_string(&__p, v20, size);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __p.__r_.__value_.__l.__size_;
        }

        v24 = std::string::append(&v93, p_p, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        valuePtr.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&valuePtr.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&valuePtr, "", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v26->__r_.__value_.__l + 2);
        *a1 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        v28 = v93.__r_.__value_.__r.__words[0];
        goto LABEL_102;
      }

      if (*a2)
      {
        v30 = CFGetTypeID(*a2);
        v31 = CFArrayGetTypeID();
        v32 = *a2;
        if (v30 == v31)
        {
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v95, a4);
          applesauce::CF::details::to_description_json_style_array(a1, v32, a3, v95);
          v33 = v95;
LABEL_108:
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v33);
          goto LABEL_54;
        }

        if (v32)
        {
          v63 = CFGetTypeID(*a2);
          v64 = CFDictionaryGetTypeID();
          v32 = *a2;
          if (v63 == v64)
          {
            std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v94, a4);
            applesauce::CF::details::to_description_json_style_object(a1, v32, a3, v94);
            v33 = v94;
            goto LABEL_108;
          }
        }

LABEL_45:
        v34 = CFGetTypeID(v32);
        if (v34 == CFNullGetTypeID() || (v35 = *a2) == 0)
        {
          *(a1 + 23) = 4;
          v11 = 1819047278;
          goto LABEL_53;
        }

        if (!*(a4 + 24))
        {
          v80 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v80, "Error, not a json style CFDictionary");
          goto LABEL_153;
        }

        v86 = 0;
        CFRetain(v35);
        v36 = *(a4 + 24);
        cf = v35;
        if (!v36)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v36 + 48))(&valuePtr);
        CFRelease(cf);
        v37 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v37 = valuePtr.__r_.__value_.__l.__size_;
          if (valuePtr.__r_.__value_.__l.__size_)
          {
            p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
            goto LABEL_57;
          }
        }

        else if (*(&valuePtr.__r_.__value_.__s + 23))
        {
          p_valuePtr = &valuePtr;
LABEL_57:
          applesauce::CF::details::make_json_string(&v84, p_valuePtr, v37);
          v40 = std::string::insert(&v84, 0, "{ ", 3uLL);
          v41 = *&v40->__r_.__value_.__l.__data_;
          v91.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&v91.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          v42 = std::string::append(&v91, " : ", 5uLL);
          v43 = *&v42->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          if ((v90 & 0x80u) == 0)
          {
            v44 = &v88;
          }

          else
          {
            v44 = v88;
          }

          if ((v90 & 0x80u) == 0)
          {
            v45 = v90;
          }

          else
          {
            v45 = v89;
          }

          applesauce::CF::details::make_json_string(v82, v44, v45);
          if ((v83 & 0x80u) == 0)
          {
            v46 = v82;
          }

          else
          {
            v46 = v82[0];
          }

          if ((v83 & 0x80u) == 0)
          {
            v47 = v83;
          }

          else
          {
            v47 = v82[1];
          }

          v48 = std::string::append(&__p, v46, v47);
          v49 = *&v48->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          v50 = std::string::append(&v93, " }", 3uLL);
          v51 = *&v50->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(&v50->__r_.__value_.__l + 2);
          *a1 = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (v83 < 0)
          {
            operator delete(v82[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          v52 = v84.__r_.__value_.__r.__words[0];
LABEL_97:
          operator delete(v52);
LABEL_98:
          if (v90 < 0)
          {
            operator delete(v88);
          }

          if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          v28 = valuePtr.__r_.__value_.__r.__words[0];
LABEL_102:
          operator delete(v28);
          goto LABEL_54;
        }

        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 34;
        if ((v90 & 0x80u) == 0)
        {
          v53 = &v88;
        }

        else
        {
          v53 = v88;
        }

        if ((v90 & 0x80u) == 0)
        {
          v54 = v90;
        }

        else
        {
          v54 = v89;
        }

        applesauce::CF::details::make_json_string(&v91, v53, v54);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &v91;
        }

        else
        {
          v55 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v56 = v91.__r_.__value_.__l.__size_;
        }

        v57 = std::string::append(&__p, v55, v56);
        v58 = *&v57->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v93, "", 1uLL);
        v60 = *&v59->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v59->__r_.__value_.__l + 2);
        *a1 = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

        v52 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_97;
      }
    }

LABEL_44:
    v32 = 0;
    goto LABEL_45;
  }

  if (!v14)
  {
    goto LABEL_152;
  }

  v15 = applesauce::CF::convert_to<float,0>(v14);
  if (vabds_f32(floorf(v15), v15) >= 0.00000011921)
  {
    v29 = *MEMORY[0x277D85DE8];

    std::to_string(a1, v15);
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
LABEL_152:
    v80 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v80);
LABEL_153:
  }

  v17 = CFNumberGetTypeID();
  if (v17 == CFGetTypeID(v16))
  {
    switch(CFNumberGetType(v16))
    {
      case kCFNumberSInt8Type:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_125;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v71 = CFNumberGetValue(v16, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_120;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v70 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_143;
      case kCFNumberSInt64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v66 = CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_112;
      case kCFNumberFloat64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_122;
      case kCFNumberCharType:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberCharType, &valuePtr);
LABEL_125:
        v75 = Value;
        LODWORD(v76) = Value != 0;
        if (Value)
        {
          v77 = valuePtr.__r_.__value_.__s.__data_[0];
        }

        else
        {
          v77 = 0;
        }

        if (valuePtr.__r_.__value_.__s.__data_[0] < 0)
        {
          v76 = v76;
        }

        else
        {
          v76 = 0;
        }

        if (!v75)
        {
          goto LABEL_148;
        }

        v62 = v77 | (v76 << 63 >> 63 << 8);
        goto LABEL_139;
      case kCFNumberShortType:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v71 = CFNumberGetValue(v16, kCFNumberShortType, &valuePtr);
LABEL_120:
        v72 = v71;
        v73 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLOWORD(valuePtr.__r_.__value_.__l.__data_);
        goto LABEL_144;
      case kCFNumberIntType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v70 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
LABEL_143:
        v72 = v70;
        v73 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLODWORD(valuePtr.__r_.__value_.__l.__data_);
LABEL_144:
        v79 = data_low & 0xFFFFFFFFFFFFFF00 | v73;
        if (v72)
        {
          v62 = v79;
        }

        else
        {
          v62 = 0;
        }

        if (!v72)
        {
          goto LABEL_148;
        }

        goto LABEL_139;
      case kCFNumberLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberLongLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloatType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v66 = CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
LABEL_112:
        v67 = v66;
        v68 = *&valuePtr.__r_.__value_.__l.__data_;
        goto LABEL_135;
      case kCFNumberDoubleType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
        goto LABEL_122;
      case kCFNumberCFIndexType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_134;
      case kCFNumberNSIntegerType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberNSIntegerType, &valuePtr);
LABEL_134:
        v67 = v65;
        v68 = valuePtr.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      case kCFNumberCGFloatType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
LABEL_122:
        v67 = v69;
        v68 = *&valuePtr.__r_.__value_.__l.__data_;
LABEL_135:
        if (v67)
        {
          v62 = v68;
        }

        else
        {
          v62 = 0;
        }

        if (v67)
        {
          goto LABEL_139;
        }

        goto LABEL_148;
      default:
        goto LABEL_148;
    }
  }

  v61 = CFBooleanGetTypeID();
  if (v61 != CFGetTypeID(v16))
  {
LABEL_148:
    v80 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(v80);
    goto LABEL_153;
  }

  v62 = CFBooleanGetValue(v16);
LABEL_139:
  v78 = *MEMORY[0x277D85DE8];

  std::to_string(a1, v62);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

std::string *applesauce::CF::details::to_description_json_style_array(uint64_t a1, CFArrayRef theArray, size_t __len, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *(a1 + 23) = 1;
  *a1 = 91;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(theArray);
    if (Count)
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        v12 = 1;
        do
        {
          if ((v12 & 1) == 0)
          {
            std::string::append(a1, ",", 1uLL);
          }

          std::string::basic_string[abi:ne200100](&__b, __len + 2, 32);
          v13 = std::string::insert(&__b, 0, "\n", 1uLL);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v28 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (v28 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v28 >= 0)
          {
            v16 = HIBYTE(v28);
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(a1, v15, v16);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&__b, theArray, v10);
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v29, a4);
          applesauce::CF::details::to_description_json_style_helper(__p, &__b, __len + 2, v29);
          if (v28 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          if (v28 >= 0)
          {
            v18 = HIBYTE(v28);
          }

          else
          {
            v18 = __p[1];
          }

          std::string::append(a1, v17, v18);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[0]);
          }

          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v29);
          if (__b.__r_.__value_.__r.__words[0])
          {
            CFRelease(__b.__r_.__value_.__l.__data_);
          }

          if (Count - 1 == v10)
          {
            break;
          }

          v12 = 0;
        }

        while (v11 != v10++);
      }
    }
  }

  std::string::basic_string[abi:ne200100](&__b, __len, 32);
  v20 = std::string::insert(&__b, 0, "\n", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v28 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v28 >= 0)
  {
    v23 = HIBYTE(v28);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  result = std::string::append(a1, "]", 1uLL);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272613B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

void std::vector<void const*>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 72))(v7, a2, *v4, v2[2]);
}

uint64_t vp::vx::database::v1::Database::get_configuration(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find downlink DSP node configuration", a2, &v6);
}

{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find uplink DSP node configuration", a2, &v6);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 64))(v7, a2, *v4, v2[2]);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 56))(v7, a2, *v4, v2[2]);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 48))(v7, a2, *v4, v2[2]);
}

uint64_t vp::vx::database::v1::Database::get_configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find downlink configuration", a2, &v5);
}

{
  v4[0] = a1;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find uplink configuration", a2, &v5);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 40))(v6, a2, v2);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 32))(v6, a2, v2);
}

uint64_t vp::vx::database::v1::Database::get_configuration(vp::vx::database::v1::Database *this, const vp::vx::Configuration_Context *a2, vp::vx::Global_Configuration *a3)
{
  v4[0] = this;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(this, "find global configuration", a2, &v5);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 24))(v6, a2, v2);
}

uint64_t vp::vx::database::v1::Database::get_flags(vp::vx::database::v1::Database *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v2 = *(this + 37);
  v3 = *(this + 38);
  if (v2 == v3)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v4 = *v2;
      if (!*v2)
      {
        cf[0] = 0;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      CFRetain(*v2);
      cf[0] = v4;
      applesauce::CF::convert_to<std::string,0>(__p, v4);
      if (v32 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      v6 = v2[1];
      if (v6)
      {
        CFRetain(v2[1]);
        vp::vx::database::v1::Response::set(&v27, v5, v6, 0);
        CFRelease(v6);
      }

      else
      {
        vp::vx::database::v1::Response::set(&v27, v5, 0, 0);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*__p);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v2 += 2;
    }

    while (v2 != v3);
    v8 = v27;
  }

  v28 = 0;
  plist = vp::vx::database::v1::Response::make_plist(&v26, v8);
  log = vp::get_log(plist);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(cf, this, "vp::vx::database::v1::Database]", 30);
    v12 = v25;
    v13 = v25;
    v14 = cf[1];
    v15 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v13 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v14;
      }

      v17 = cf[0];
      if (v13 >= 0)
      {
        v17 = cf;
      }

      *__p = 136315650;
      *&__p[4] = v17;
      if (v16)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      v30 = 2080;
      v31 = v18;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%s%sflags are %@", __p, 0x20u);
      LOBYTE(v13) = v25;
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(cf[0]);
    }
  }

  v19 = v26;
  if (v26 && (CFRetain(v26), v20 = CFGetTypeID(v19), v20 != CFDictionaryGetTypeID()))
  {
    *__p = 0;
    CFRelease(v19);
  }

  else
  {
    *__p = v19;
  }

  if (*(this + 26))
  {
    v21 = *(this + 26);
  }

  else
  {
    v21 = this + 200;
  }

  (*(*v21 + 16))(v21, __p, &v28);
  if (*__p)
  {
    CFRelease(*__p);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  vp::vx::database::v1::Response::~Response(&v27);
  result = v28;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2726144C8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726144FCLL);
  }

  __clang_call_terminate(a1);
}

void vp::vx::database::v1::Database::~Database(void **this)
{
  vp::vx::database::v1::Database::~Database(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v23 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::database::v1::Database]", 30);
    v4 = v18;
    v5 = v18;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v20 = v9;
      v21 = 2080;
      v22 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v18;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[62];
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(this + 488) == 1)
  {
    v12 = this[52];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = this[47];
    if (v13)
    {
      CFRelease(v13);
    }
  }

  __p[0] = this + 40;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 37;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](__p);
  v14 = this[36];
  this[36] = 0;
  if (v14)
  {
    vp::vx::database::v1::runtime::File_Manager::~File_Manager(v14);
    MEMORY[0x2743CBFA0]();
  }

  vp::vx::database::v1::runtime::File_Manager::~File_Manager(this + 27);
  v15 = this[26];
  this[26] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  vp::vx::database::v1::runtime::Data_Manager::~Data_Manager((this + 25));
  vp::Context::~Context((this + 1));
  v16 = *MEMORY[0x277D85DE8];
}

void sub_27261472C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      CFRelease(v5);
    }
  }

  a1[1] = v2;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(apple::aiml::flatbuffers2::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(this + 1);
        if (v12 < 5 || v12 - 4 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *this)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 6u);
    if (!result)
    {
      break;
    }

    if (v11 >= 7)
    {
      if (*(&a2[v4 + 2] + v10 + 2))
      {
        v13 = v7 + *(&a2[v4 + 2] + v10 + 2);
        result = vp::vx::database::v1::fbs::Condition::Verify((&a2[v4 + 1] + v13 + *(&a2[v4 + 1] + v13)), this);
        if (!result)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 8u);
    if (!result)
    {
      break;
    }

    v14 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v14 + 2) >= 9u)
    {
      v15 = *(v14 + 6);
      if (v15)
      {
        result = vp::vx::database::v1::fbs::Branch::Verify((&a2[v4 + 1] + v7 + v15 + *(&a2[v4 + 1] + v7 + v15)), this);
        if (!result)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 0xAu);
    if (!result)
    {
      break;
    }

    v16 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v16 + 2) >= 0xBu)
    {
      v17 = *(v16 + 7);
      if (v17)
      {
        if ((vp::vx::database::v1::fbs::Branch::Verify((&a2[v4 + 1] + v7 + v17 + *(&a2[v4 + 1] + v7 + v17)), this) & 1) == 0)
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::String::Verify(vp::vx::database::v1::fbs::plist::String *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Object::Verify(vp::vx::database::v1::fbs::plist::Object *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v5[2] - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  if (v6 < 7)
  {
    if (v6 < 5)
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (!v5[3])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = (this + v5[3] + *(this + v5[3]));
LABEL_12:
  if (!v5[2])
  {
    goto LABEL_41;
  }

  v9 = *(this + v5[2]);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      if (v8 && (vp::vx::database::v1::fbs::plist::Array::Verify(v8, a2) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v9 != 2)
      {
        v10 = v9 != 3 || v8 == 0;
        if (!v10 && !vp::vx::database::v1::fbs::plist::Data::Verify(v8, a2))
        {
          return 0;
        }

        goto LABEL_41;
      }

      if (v8 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v8, a2))
      {
        return 0;
      }
    }

LABEL_41:
    --*(a2 + 4);
    return 1;
  }

  if (v9 == 4)
  {
    if (v8 && (vp::vx::database::v1::fbs::plist::Dictionary::Verify(v8, a2) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v9 == 5)
  {
    if (v8 && !vp::vx::database::v1::fbs::plist::Number::Verify(v8, a2))
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v9 != 6 || v8 == 0)
  {
    goto LABEL_41;
  }

  result = vp::vx::database::v1::fbs::plist::String::Verify(v8, a2);
  if (result)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::plist::Array::Verify(vp::vx::database::v1::fbs::plist::Array *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Data::Verify(vp::vx::database::v1::fbs::plist::Data *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 1uLL, 0)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::plist::Dictionary::Verify(vp::vx::database::v1::fbs::plist::Dictionary *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (vp::vx::database::v1::fbs::plist::String::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) < 7u)
        {
          goto LABEL_19;
        }

        if (*(this - v10 + 6))
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v10 = *this;
          if (*(this - v10) < 7u)
          {
            goto LABEL_19;
          }
        }

        v11 = *(this - v10 + 6);
        if (!v11)
        {
LABEL_19:
          v12 = 0;
        }

        else
        {
          v12 = (this + v11 + *(this + v11));
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(a2, v12);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Number::Verify(vp::vx::database::v1::fbs::plist::Number *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 < 7)
        {
          if (v6 < 5)
          {
            goto LABEL_30;
          }

          v8 = 0;
        }

        else
        {
          v8 = v5[3];
          if (v5[3])
          {
            v8 += this + *(this + v8);
          }
        }

        if (v5[2])
        {
          v9 = *(this + v5[2]);
          if (v9 <= 3)
          {
            switch(v9)
            {
              case 1u:
                result = 0;
                v14 = *(a2 + 1);
                if (v14 < 2)
                {
                  return result;
                }

                v11 = v8 - *a2;
                v12 = v14 - 1;
                break;
              case 2u:
                result = 0;
                v15 = *(a2 + 1);
                if (v15 < 3)
                {
                  return result;
                }

                v11 = v8 - *a2;
                v12 = v15 - 2;
                break;
              case 3u:
                goto LABEL_23;
              default:
                goto LABEL_30;
            }

LABEL_29:
            if (v12 < v11)
            {
              return result;
            }

            goto LABEL_30;
          }

          switch(v9)
          {
            case 4u:
              goto LABEL_21;
            case 5u:
LABEL_23:
              result = 0;
              v13 = *(a2 + 1);
              if (v13 < 5)
              {
                return result;
              }

              v11 = v8 - *a2;
              v12 = v13 - 4;
              goto LABEL_29;
            case 6u:
LABEL_21:
              result = 0;
              v10 = *(a2 + 1);
              if (v10 < 9)
              {
                return result;
              }

              v11 = v8 - *a2;
              v12 = v10 - 8;
              goto LABEL_29;
          }
        }

LABEL_30:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = vp::vx::database::v1::fbs::plist::Object::Verify((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Condition::Verify(vp::vx::database::v1::fbs::Condition *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 3 || v7 - 2 < this + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 >= 7)
    {
      if (v5[3])
      {
        result = 0;
        v8 = *(a2 + 1);
        if (v8 < 2 || v8 - 1 < this + v5[3] - *a2)
        {
          return result;
        }
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v6 < 9)
  {
    if (v6 < 7)
    {
      goto LABEL_59;
    }

    goto LABEL_15;
  }

  if (!v5[4])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = (this + v5[4] + *(this + v5[4]));
LABEL_16:
  if (!v5[3])
  {
    goto LABEL_59;
  }

  v10 = *(this + v5[3]);
  if (v10 <= 4)
  {
    if (*(this + v5[3]) > 2u)
    {
      if (v10 == 3)
      {
        if (v9 && !vp::vx::database::v1::fbs::conditions::Match_All::Verify(v9, a2))
        {
          return 0;
        }
      }

      else
      {
        v13 = v10 != 4 || v9 == 0;
        if (!v13 && !vp::vx::database::v1::fbs::conditions::Match_All::Verify(v9, a2))
        {
          return 0;
        }
      }
    }

    else
    {
      if (v10 != 1)
      {
        v11 = v10 != 2 || v9 == 0;
        if (!v11 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
        {
          return 0;
        }

        goto LABEL_59;
      }

      if (v9 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v9, a2))
      {
        return 0;
      }
    }

LABEL_59:
    --*(a2 + 4);
    return 1;
  }

  if (*(this + v5[3]) <= 6u)
  {
    if (v10 == 5)
    {
      if (v9 && !vp::vx::database::v1::fbs::conditions::Match_Predicate::Verify(v9, a2))
      {
        return 0;
      }
    }

    else
    {
      v12 = v10 != 6 || v9 == 0;
      if (!v12 && !vp::vx::database::v1::fbs::conditions::Match::Verify(v9, a2))
      {
        return 0;
      }
    }

    goto LABEL_59;
  }

  if (v10 == 7)
  {
    if (v9 && (vp::vx::database::v1::fbs::conditions::When::Verify(v9, a2) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v10 != 8 || v9 == 0)
  {
    goto LABEL_59;
  }

  result = vp::vx::database::v1::fbs::conditions::When_Not::Verify(v9, a2);
  if (result)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Branch::Verify(vp::vx::database::v1::fbs::Branch *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Decision::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) >= 7u)
          {
            if (!*(this - v7 + 6))
            {
              goto LABEL_11;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) >= 7u)
            {
LABEL_11:
              v8 = *(this - v7 + 6);
              if (v8)
              {
                v9 = this + v8 + *(this + v8);
              }
            }
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(a2);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Decision::Verify(vp::vx::database::v1::fbs::Decision *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 3 || v7 - 2 < this + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 >= 7)
    {
      if (v5[3])
      {
        result = 0;
        v8 = *(a2 + 1);
        if (v8 < 2 || v8 - 1 < this + v5[3] - *a2)
        {
          return result;
        }
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v6 < 9)
  {
    if (v6 < 7)
    {
      goto LABEL_45;
    }

    goto LABEL_15;
  }

  if (!v5[4])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = (this + v5[4] + *(this + v5[4]));
LABEL_16:
  if (!v5[3])
  {
    goto LABEL_45;
  }

  v10 = *(this + v5[3]);
  if (v10 <= 3)
  {
    if (v10 == 1)
    {
      if (v9 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v9, a2))
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 2)
      {
        v11 = v10 != 3 || v9 == 0;
        if (!v11 && !vp::vx::database::v1::fbs::decisions::Override_Property_List::Verify(v9, a2))
        {
          return 0;
        }

        goto LABEL_45;
      }

      if (v9 && !vp::vx::database::v1::fbs::decisions::Load_Property_List::Verify(v9, a2))
      {
        return 0;
      }
    }

LABEL_45:
    --*(a2 + 4);
    return 1;
  }

  if (v10 == 4)
  {
    if (v9 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
    {
      return 0;
    }

    goto LABEL_45;
  }

  if (v10 == 5)
  {
    if (v9 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
    {
      return 0;
    }

    goto LABEL_45;
  }

  if (v10 != 6 || v9 == 0)
  {
    goto LABEL_45;
  }

  result = vp::vx::database::v1::fbs::decisions::Then::Verify(v9, a2);
  if (result)
  {
    goto LABEL_45;
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::decisions::Load_Property_List::Verify(vp::vx::database::v1::fbs::decisions::Load_Property_List *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::decisions::Override_Property_List::Verify(vp::vx::database::v1::fbs::decisions::Override_Property_List *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = (v7 + 1);
        while (apple::aiml::flatbuffers2::Verifier::VerifyString(a2, &v9[*v9]))
        {
          ++v8;
          v9 += 4;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v10 = (this - *this);
          if (*v10 < 7u || (v11 = v10[3]) == 0 || (result = vp::vx::database::v1::fbs::plist::Object::Verify((this + v11 + *(this + v11)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::decisions::Then::Verify(vp::vx::database::v1::fbs::decisions::Then *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Decision::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_24;
          }

          if (*(this - v7 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_24;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8), v10 = *v9, *(v9 + v10)))
          {
            v11 = 0;
            v12 = v9 + 1;
            v13 = v9;
            while (1)
            {
              v14 = v13 + v10;
              v16 = v13 + v10 + 4;
              v15 = *v16;
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, &v16[v15]);
              if (!result)
              {
                break;
              }

              v17 = v15 - *&v14[v15 + 4];
              v18 = *&v14[v17 + 4];
              if (v18 >= 5)
              {
                if (*(v13 + v10 + v17 + 8))
                {
                  result = 0;
                  v19 = *(a2 + 1);
                  if (v19 < 2 || v19 - 1 < v12 + v10 + v15 + *(v13 + v10 + v17 + 8) - *a2)
                  {
                    break;
                  }
                }
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(&v16[v15], a2, 6u);
              if (!result)
              {
                break;
              }

              if (v18 >= 7)
              {
                if (*(v13 + v10 + v17 + 10))
                {
                  v20 = v15 + *(v13 + v10 + v17 + 10);
                  if ((vp::vx::database::v1::fbs::Decision::Verify((v13 + v10 + v20 + *(v13 + v10 + v20 + 4) + 4), a2) & 1) == 0)
                  {
                    return 0;
                  }
                }
              }

              --*(a2 + 4);
              ++v11;
              ++v12;
              ++v13;
              if (v11 >= *(v9 + v10))
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Constant::Verify(vp::vx::database::v1::fbs::conditions::Constant *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(vp::vx::database::v1::fbs::conditions::Feature_Enabled *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match_All::Verify(vp::vx::database::v1::fbs::conditions::Match_All *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Constraint>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match_Predicate::Verify(vp::vx::database::v1::fbs::conditions::Match_Predicate *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match::Verify(vp::vx::database::v1::fbs::conditions::Match *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Constraint::Verify((this + v6 + *(this + v6)), a2)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::conditions::When::Verify(vp::vx::database::v1::fbs::conditions::When *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Condition::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_24;
          }

          if (*(this - v7 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_24;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8), v10 = *v9, *(v9 + v10)))
          {
            v11 = 0;
            v12 = v9 + 1;
            v13 = v9;
            while (1)
            {
              v14 = v13 + v10;
              v16 = v13 + v10 + 4;
              v15 = *v16;
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, &v16[v15]);
              if (!result)
              {
                break;
              }

              v17 = v15 - *&v14[v15 + 4];
              v18 = *&v14[v17 + 4];
              if (v18 >= 5)
              {
                if (*(v13 + v10 + v17 + 8))
                {
                  result = 0;
                  v19 = *(a2 + 1);
                  if (v19 < 2 || v19 - 1 < v12 + v10 + v15 + *(v13 + v10 + v17 + 8) - *a2)
                  {
                    break;
                  }
                }
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(&v16[v15], a2, 6u);
              if (!result)
              {
                break;
              }

              if (v18 >= 7)
              {
                if (*(v13 + v10 + v17 + 10))
                {
                  v20 = v15 + *(v13 + v10 + v17 + 10);
                  if ((vp::vx::database::v1::fbs::Condition::Verify((v13 + v10 + v20 + *(v13 + v10 + v20 + 4) + 4), a2) & 1) == 0)
                  {
                    return 0;
                  }
                }
              }

              --*(a2 + 4);
              ++v11;
              ++v12;
              ++v13;
              if (v11 >= *(v9 + v10))
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::conditions::When_Not::Verify(vp::vx::database::v1::fbs::conditions::When_Not *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Condition::Verify((this + v6 + *(this + v6)), a2), result))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::Constraint::Verify(vp::vx::database::v1::fbs::Constraint *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = *(this - v5);
      if (v6 < 5)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = vp::vx::database::v1::fbs::plist::String::Verify((this + *(this - v5 + 4) + *(this + *(this - v5 + 4))), a2);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        v7 = -v5;
        v6 = *(this - v5);
      }

      else
      {
        v7 = -v5;
      }

      if (v6 < 7 || (v8 = *(this + v7 + 6), !*(this + v7 + 6)) || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2)
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
        if (result)
        {
          v10 = (this - v5);
          if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = vp::vx::database::v1::fbs::plist::Object::Verify((this + v11 + *(this + v11)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Constraint>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = vp::vx::database::v1::fbs::Constraint::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a2);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_272616850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::database::v1::syntax::Conditions::Conditions(uint64_t this, const vp::Context *a2, char a3)
{
  *this = &unk_2881B6420;
  *(this + 8) = &unk_2881B6450;
  *(this + 16) = &unk_2881B9838;
  *(this + 24) = &unk_2881B9898;
  *(this + 32) = &unk_2881B98F8;
  *(this + 40) = &unk_2881B9920;
  *(this + 48) = &unk_2881B7618;
  *(this + 56) = &unk_2881C6360;
  *(this + 64) = &unk_2881C6448;
  *(this + 72) = &unk_2881B6478;
  *(this + 80) = a3;
  *(this + 88) = &unk_2881B6478;
  *(this + 96) = a2;
  return this;
}

void *vp::vx::database::v1::syntax::Constraints::Constraints(void *a1, uint64_t a2)
{
  *a1 = &unk_2881B64A0;
  a1[1] = &unk_2881B64D0;
  a1[2] = a2;
  CFRetain(@"operation_mode");
  v3 = CFGetTypeID(@"operation_mode");
  if (v3 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 3, @"operation_mode", a1[2]);
    CFRelease(@"operation_mode");
  }

  else
  {
    CFRelease(@"operation_mode");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 3, 0, a1[2]);
  }

  CFRetain(@"chat_flavor");
  v4 = CFGetTypeID(@"chat_flavor");
  if (v4 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 6, @"chat_flavor", a1[2]);
    CFRelease(@"chat_flavor");
  }

  else
  {
    CFRelease(@"chat_flavor");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 6, 0, a1[2]);
  }

  CFRetain(@"input_port_type");
  v5 = CFGetTypeID(@"input_port_type");
  if (v5 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 9, @"input_port_type", a1[2]);
    CFRelease(@"input_port_type");
  }

  else
  {
    CFRelease(@"input_port_type");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 9, 0, a1[2]);
  }

  CFRetain(@"input_port_sub_type_legacy");
  v6 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v6 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 12, @"input_port_sub_type_legacy");
    CFRelease(@"input_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_sub_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 12, 0);
  }

  CFRetain(@"input_hw_transport_type");
  v7 = CFGetTypeID(@"input_hw_transport_type");
  if (v7 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 14, @"input_hw_transport_type");
    CFRelease(@"input_hw_transport_type");
  }

  else
  {
    CFRelease(@"input_hw_transport_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 14, 0);
  }

  CFRetain(@"input_hw_bluetooth_device_category");
  v8 = CFGetTypeID(@"input_hw_bluetooth_device_category");
  if (v8 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 16, @"input_hw_bluetooth_device_category");
    CFRelease(@"input_hw_bluetooth_device_category");
  }

  else
  {
    CFRelease(@"input_hw_bluetooth_device_category");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 16, 0);
  }

  CFRetain(@"input_hw_data_source");
  v9 = CFGetTypeID(@"input_hw_data_source");
  if (v9 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 18, @"input_hw_data_source");
    CFRelease(@"input_hw_data_source");
  }

  else
  {
    CFRelease(@"input_hw_data_source");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 18, 0);
  }

  CFRetain(@"output_port_type");
  v10 = CFGetTypeID(@"output_port_type");
  if (v10 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 20, @"output_port_type", a1[2]);
    CFRelease(@"output_port_type");
  }

  else
  {
    CFRelease(@"output_port_type");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 20, 0, a1[2]);
  }

  CFRetain(@"output_port_sub_type_legacy");
  v11 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v11 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 23, @"output_port_sub_type_legacy");
    CFRelease(@"output_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_sub_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 23, 0);
  }

  CFRetain(@"output_port_endpoint_type_legacy");
  v12 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v12 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 25, @"output_port_endpoint_type_legacy");
    CFRelease(@"output_port_endpoint_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_endpoint_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 25, 0);
  }

  CFRetain(@"output_port_is_apple_bluetooth_product");
  v13 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v13 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 27), @"output_port_is_apple_bluetooth_product", 1);
    CFRelease(@"output_port_is_apple_bluetooth_product");
  }

  else
  {
    CFRelease(@"output_port_is_apple_bluetooth_product");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 27), 0, 1);
  }

  CFRetain(@"output_port_is_apple_bluetooth_product");
  v14 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v14 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 30), @"output_port_is_apple_bluetooth_product", 0);
    CFRelease(@"output_port_is_apple_bluetooth_product");
  }

  else
  {
    CFRelease(@"output_port_is_apple_bluetooth_product");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 30), 0, 0);
  }

  CFRetain(@"output_hw_transport_type");
  v15 = CFGetTypeID(@"output_hw_transport_type");
  if (v15 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 33, @"output_hw_transport_type");
    CFRelease(@"output_hw_transport_type");
  }

  else
  {
    CFRelease(@"output_hw_transport_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 33, 0);
  }

  CFRetain(@"output_hw_bluetooth_device_category");
  v16 = CFGetTypeID(@"output_hw_bluetooth_device_category");
  if (v16 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 35, @"output_hw_bluetooth_device_category");
    CFRelease(@"output_hw_bluetooth_device_category");
  }

  else
  {
    CFRelease(@"output_hw_bluetooth_device_category");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 35, 0);
  }

  CFRetain(@"output_hw_data_source");
  v17 = CFGetTypeID(@"output_hw_data_source");
  if (v17 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 37, @"output_hw_data_source");
    CFRelease(@"output_hw_data_source");
  }

  else
  {
    CFRelease(@"output_hw_data_source");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 37, 0);
  }

  CFRetain(@"spatial_chat_is_enabled");
  v18 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v18 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 39), @"spatial_chat_is_enabled", 1);
    CFRelease(@"spatial_chat_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 39), 0, 1);
  }

  CFRetain(@"spatial_chat_is_enabled");
  v19 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v19 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 42), @"spatial_chat_is_enabled", 0);
    CFRelease(@"spatial_chat_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 42), 0, 0);
  }

  CFRetain(@"spatial_headtracking_is_enabled");
  v20 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v20 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 45), @"spatial_headtracking_is_enabled", 1);
    CFRelease(@"spatial_headtracking_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_headtracking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 45), 0, 1);
  }

  CFRetain(@"spatial_headtracking_is_enabled");
  v21 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v21 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 48), @"spatial_headtracking_is_enabled", 0);
    CFRelease(@"spatial_headtracking_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_headtracking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 48), 0, 0);
  }

  CFRetain(@"media_chat_is_enabled");
  v22 = CFGetTypeID(@"media_chat_is_enabled");
  if (v22 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 51), @"media_chat_is_enabled", 1);
    CFRelease(@"media_chat_is_enabled");
  }

  else
  {
    CFRelease(@"media_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 51), 0, 1);
  }

  CFRetain(@"media_chat_is_enabled");
  v23 = CFGetTypeID(@"media_chat_is_enabled");
  if (v23 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 54), @"media_chat_is_enabled", 0);
    CFRelease(@"media_chat_is_enabled");
  }

  else
  {
    CFRelease(@"media_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 54), 0, 0);
  }

  CFRetain(@"media_playback_on_external_device_is_enabled");
  v24 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v24 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 57), @"media_playback_on_external_device_is_enabled", 1);
    CFRelease(@"media_playback_on_external_device_is_enabled");
  }

  else
  {
    CFRelease(@"media_playback_on_external_device_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 57), 0, 1);
  }

  CFRetain(@"media_playback_on_external_device_is_enabled");
  v25 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v25 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 60), @"media_playback_on_external_device_is_enabled", 0);
    CFRelease(@"media_playback_on_external_device_is_enabled");
  }

  else
  {
    CFRelease(@"media_playback_on_external_device_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 60), 0, 0);
  }

  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v26 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v26 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 63), @"stereo_to_mono_mix_is_enabled", 1);
    CFRelease(@"stereo_to_mono_mix_is_enabled");
  }

  else
  {
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 63), 0, 1);
  }

  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v27 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v27 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 66), @"stereo_to_mono_mix_is_enabled", 0);
    CFRelease(@"stereo_to_mono_mix_is_enabled");
  }

  else
  {
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 66), 0, 0);
  }

  CFRetain(@"voice_processing_is_bypassed");
  v28 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v28 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 69), @"voice_processing_is_bypassed", 1);
    CFRelease(@"voice_processing_is_bypassed");
  }

  else
  {
    CFRelease(@"voice_processing_is_bypassed");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 69), 0, 1);
  }

  CFRetain(@"voice_processing_is_bypassed");
  v29 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v29 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 72), @"voice_processing_is_bypassed", 0);
    CFRelease(@"voice_processing_is_bypassed");
  }

  else
  {
    CFRelease(@"voice_processing_is_bypassed");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 72), 0, 0);
  }

  CFRetain(@"voice_processing_is_disabled");
  v30 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v30 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 75), @"voice_processing_is_disabled", 1);
    CFRelease(@"voice_processing_is_disabled");
  }

  else
  {
    CFRelease(@"voice_processing_is_disabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 75), 0, 1);
  }

  CFRetain(@"voice_processing_is_disabled");
  v31 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v31 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 78), @"voice_processing_is_disabled", 0);
    CFRelease(@"voice_processing_is_disabled");
  }

  else
  {
    CFRelease(@"voice_processing_is_disabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 78), 0, 0);
  }

  CFRetain(@"voice_processing_is_done_in_hardware");
  v32 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v32 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 81), @"voice_processing_is_done_in_hardware", 1);
    CFRelease(@"voice_processing_is_done_in_hardware");
  }

  else
  {
    CFRelease(@"voice_processing_is_done_in_hardware");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 81), 0, 1);
  }

  CFRetain(@"voice_processing_is_done_in_hardware");
  v33 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v33 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 84), @"voice_processing_is_done_in_hardware", 0);
    CFRelease(@"voice_processing_is_done_in_hardware");
  }

  else
  {
    CFRelease(@"voice_processing_is_done_in_hardware");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 84), 0, 0);
  }

  CFRetain(@"spatial_mode");
  v34 = CFGetTypeID(@"spatial_mode");
  if (v34 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 87, @"spatial_mode");
    CFRelease(@"spatial_mode");
  }

  else
  {
    CFRelease(@"spatial_mode");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 87, 0);
  }

  CFRetain(@"hardware_mic_input_channel_count");
  v35 = CFGetTypeID(@"hardware_mic_input_channel_count");
  if (v35 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 89, @"hardware_mic_input_channel_count");
    CFRelease(@"hardware_mic_input_channel_count");
  }

  else
  {
    CFRelease(@"hardware_mic_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 89, 0);
  }

  CFRetain(@"hardware_ref_input_channel_count");
  v36 = CFGetTypeID(@"hardware_ref_input_channel_count");
  if (v36 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 91, @"hardware_ref_input_channel_count");
    CFRelease(@"hardware_ref_input_channel_count");
  }

  else
  {
    CFRelease(@"hardware_ref_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 91, 0);
  }

  CFRetain(@"client_nev_output_channel_count");
  v37 = CFGetTypeID(@"client_nev_output_channel_count");
  if (v37 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 93, @"client_nev_output_channel_count");
    CFRelease(@"client_nev_output_channel_count");
  }

  else
  {
    CFRelease(@"client_nev_output_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 93, 0);
  }

  CFRetain(@"client_fev_input_channel_count");
  v38 = CFGetTypeID(@"client_fev_input_channel_count");
  if (v38 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 95, @"client_fev_input_channel_count");
    CFRelease(@"client_fev_input_channel_count");
  }

  else
  {
    CFRelease(@"client_fev_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 95, 0);
  }

  CFRetain(@"hardware_mix_output_channel_count");
  v39 = CFGetTypeID(@"hardware_mix_output_channel_count");
  if (v39 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 97, @"hardware_mix_output_channel_count");
    CFRelease(@"hardware_mix_output_channel_count");
  }

  else
  {
    CFRelease(@"hardware_mix_output_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 97, 0);
  }

  CFRetain(@"vocoder_sample_rate");
  v40 = CFGetTypeID(@"vocoder_sample_rate");
  if (v40 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 99, @"vocoder_sample_rate");
    CFRelease(@"vocoder_sample_rate");
  }

  else
  {
    CFRelease(@"vocoder_sample_rate");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 99, 0);
  }

  CFRetain(@"vocoder_type");
  v41 = CFGetTypeID(@"vocoder_type");
  if (v41 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 101, @"vocoder_type");
    CFRelease(@"vocoder_type");
  }

  else
  {
    CFRelease(@"vocoder_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 101, 0);
  }

  CFRetain(@"tap_stream_is_enabled");
  v42 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v42 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 103), @"tap_stream_is_enabled", 1);
    CFRelease(@"tap_stream_is_enabled");
  }

  else
  {
    CFRelease(@"tap_stream_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 103), 0, 1);
  }

  CFRetain(@"tap_stream_is_enabled");
  v43 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v43 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 106), @"tap_stream_is_enabled", 0);
    CFRelease(@"tap_stream_is_enabled");
  }

  else
  {
    CFRelease(@"tap_stream_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 106), 0, 0);
  }

  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v44 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v44 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 109), @"other_audio_advanced_ducking_is_enabled", 1);
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
  }

  else
  {
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 109), 0, 1);
  }

  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v45 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v45 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 112), @"other_audio_advanced_ducking_is_enabled", 0);
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
  }

  else
  {
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 112), 0, 0);
  }

  CFRetain(@"is_in_emergency_call");
  v46 = CFGetTypeID(@"is_in_emergency_call");
  if (v46 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 115), @"is_in_emergency_call", 1);
    CFRelease(@"is_in_emergency_call");
  }

  else
  {
    CFRelease(@"is_in_emergency_call");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 115), 0, 1);
  }

  CFRetain(@"is_in_emergency_call");
  v47 = CFGetTypeID(@"is_in_emergency_call");
  if (v47 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 118), @"is_in_emergency_call", 0);
    CFRelease(@"is_in_emergency_call");
  }

  else
  {
    CFRelease(@"is_in_emergency_call");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 118), 0, 0);
  }

  CFRetain(@"virtual_audio_plugin_mode");
  v48 = CFGetTypeID(@"virtual_audio_plugin_mode");
  if (v48 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 121, @"virtual_audio_plugin_mode");
    CFRelease(@"virtual_audio_plugin_mode");
  }

  else
  {
    CFRelease(@"virtual_audio_plugin_mode");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 121, 0);
  }

  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v49 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v49 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 123), @"offload_airpods_noise_suppression_is_enabled", 1);
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
  }

  else
  {
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 123), 0, 1);
  }

  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v50 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v50 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 126), @"offload_airpods_noise_suppression_is_enabled", 0);
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
  }

  else
  {
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 126), 0, 0);
  }

  CFRetain(@"automatic_mic_mode_is_enabled");
  v51 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v51 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 129), @"automatic_mic_mode_is_enabled", 1);
    CFRelease(@"automatic_mic_mode_is_enabled");
  }

  else
  {
    CFRelease(@"automatic_mic_mode_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 129), 0, 1);
  }

  CFRetain(@"automatic_mic_mode_is_enabled");
  v52 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v52 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 132), @"automatic_mic_mode_is_enabled", 0);
    CFRelease(@"automatic_mic_mode_is_enabled");
  }

  else
  {
    CFRelease(@"automatic_mic_mode_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 132), 0, 0);
  }

  CFRetain(@"airpods_offload_mode");
  v53 = CFGetTypeID(@"airpods_offload_mode");
  if (v53 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 135, @"airpods_offload_mode", a1[2]);
    CFRelease(@"airpods_offload_mode");
  }

  else
  {
    CFRelease(@"airpods_offload_mode");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 135, 0, a1[2]);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::Decisions::Decisions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2881B6740;
  *(a1 + 8) = &unk_2881B6770;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = &unk_2881BEBD0;
  *(a1 + 40) = &unk_2881B97D8;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  CFRetain(&stru_2881C8580);
  v6 = CFGetTypeID(&stru_2881C8580);
  if (v6 == CFStringGetTypeID())
  {
    v7 = &stru_2881C8580;
  }

  else
  {
    CFRelease(&stru_2881C8580);
    v7 = 0;
  }

  *(a1 + 64) = &unk_2881B9750;
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 88) = v7;
  v21 = *(a1 + 16);
  CFRetain(@"Global");
  v8 = CFGetTypeID(@"Global");
  if (v8 == CFStringGetTypeID())
  {
    v9 = @"Global";
  }

  else
  {
    CFRelease(@"Global");
    v9 = 0;
  }

  *(a1 + 96) = &unk_2881B9750;
  *(a1 + 104) = v21;
  *(a1 + 120) = v9;
  v22 = *(a1 + 16);
  CFRetain(@"Uplink");
  v10 = CFGetTypeID(@"Uplink");
  if (v10 == CFStringGetTypeID())
  {
    v11 = @"Uplink";
  }

  else
  {
    CFRelease(@"Uplink");
    v11 = 0;
  }

  *(a1 + 128) = &unk_2881B9750;
  *(a1 + 136) = v22;
  *(a1 + 152) = v11;
  v23 = *(a1 + 16);
  CFRetain(@"Downlink");
  v12 = CFGetTypeID(@"Downlink");
  if (v12 == CFStringGetTypeID())
  {
    v13 = @"Downlink";
  }

  else
  {
    CFRelease(@"Downlink");
    v13 = 0;
  }

  *(a1 + 160) = &unk_2881B9750;
  *(a1 + 168) = v23;
  *(a1 + 184) = v13;
  v14 = *(a1 + 16);
  *(a1 + 192) = &unk_2881B9CF0;
  *(a1 + 200) = v14;
  *(a1 + 208) = &unk_2881BE228;
  *(a1 + 216) = v14;
  CFRetain(@"input_port_type_legacy");
  v15 = CFGetTypeID(@"input_port_type_legacy");
  if (v15 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 224), @"input_port_type_legacy", *(a1 + 16));
    CFRelease(@"input_port_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 224), 0, *(a1 + 16));
  }

  CFRetain(@"input_port_sub_type_legacy");
  v16 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v16 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 248), @"input_port_sub_type_legacy", *(a1 + 16));
    CFRelease(@"input_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_sub_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 248), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_type_legacy");
  v17 = CFGetTypeID(@"output_port_type_legacy");
  if (v17 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 272), @"output_port_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 272), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_sub_type_legacy");
  v18 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v18 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 296), @"output_port_sub_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_sub_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 296), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_endpoint_type_legacy");
  v19 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v19 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 320), @"output_port_endpoint_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_endpoint_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_endpoint_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 320), 0, *(a1 + 16));
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::Flags::Flags(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881B76F0;
  *(a1 + 8) = &unk_2881B7720;
  *(a1 + 16) = a2;
  CFRetain(@"enable_physical_device_id_fix");
  v3 = CFGetTypeID(@"enable_physical_device_id_fix");
  if (v3 == CFStringGetTypeID())
  {
    *(a1 + 24) = &unk_2881B76C8;
    CFRetain(@"enable_physical_device_id_fix");
    *(a1 + 32) = @"enable_physical_device_id_fix";
    *(a1 + 40) = 1;
    CFRelease(@"enable_physical_device_id_fix");
  }

  else
  {
    CFRelease(@"enable_physical_device_id_fix");
    *(a1 + 24) = &unk_2881B76C8;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void *std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_272618B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_272618E30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::database::v1::syntax::Flags::~Flags(vp::vx::database::v1::syntax::Flags *this)
{
  *this = &unk_2881B76F0;
  *(this + 1) = &unk_2881B7720;
  v1 = *(this + 4);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_2881B76F0;
  *(this + 1) = &unk_2881B7720;
  v1 = *(this + 4);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::database::v1::syntax::Decisions::~Decisions(vp::vx::database::v1::syntax::Decisions *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 35);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 29);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 19);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    CFRelease(v10);
  }
}

{
  vp::vx::database::v1::syntax::Decisions::~Decisions(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x2743CBA00](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((v3 + 320));
  *(v3 + 320) = v5;
  *(v3 + 336) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

void std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 88;
      v6 = v3 - 88;
      v7 = v3 - 88;
      do
      {
        v8 = *v7;
        v7 -= 88;
        (*v8)(v6);
        v5 -= 88;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B65D0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate((v3 + 296));
  *(v3 + 296) = v5;
  *(v3 + 312) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

void std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6588;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((v3 + 320));
  *(v3 + 320) = v5;
  *(v3 + 336) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6540;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate((v3 + 296));
  *(v3 + 296) = v5;
  *(v3 + 312) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B64F8;
  a2[1] = v2;
  return result;
}

void *vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser(void *a1, CFTypeRef cf, uint64_t a3)
{
  *a1 = &unk_2881BE1D0;
  if (cf)
  {
    CFRetain(cf);
  }

  a1[1] = cf;
  a1[2] = a3;
  return a1;
}

void ***vp::vx::database::v1::load(_OWORD *a1, uint64_t a2, std::__fs::filesystem::path *a3, const Context *a4)
{
  v203 = *MEMORY[0x277D85DE8];
  *&v164 = 0;
  *(&v164 + 1) = a2;
  v165 = xmmword_272756650;
  v7 = (*(*a2 + 16))(a2, 504, 8);
  *v7 = &unk_2881B63C0;
  v8 = vp::Context::Context((v7 + 8), a4);
  *(v7 + 200) = &unk_2881B6358;
  log = vp::get_log(v8);
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    log_context_info = vp::get_log_context_info(&__p, v7 + 200, "vp::vx::database::v1::runtime::Data_Manager]", 43);
    v12 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    size = __p.__pn_.__r_.__value_.__l.__size_;
    v15 = vp::get_log(log_context_info);
    v10 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v13 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = size;
      }

      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      if (v16)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = p_p;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%s%screated", buf, 0x16u);
      LOBYTE(v13) = *(&__p.__pn_.__r_.__value_.__s + 23);
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  *(v7 + 208) = 0;
  *(v7 + 216) = &unk_2881B7678;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0;
  *(v7 + 280) = 1065353216;
  v19 = vp::get_log(v10);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    v21 = vp::get_log_context_info(&__p, v7 + 216, "vp::vx::database::v1::runtime::File_Manager]", 43);
    v22 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v23 = __p.__pn_.__r_.__value_.__l.__size_;
    v24 = vp::get_log(v21);
    v20 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if ((v22 & 0x80u) == 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = v23;
      }

      v26 = __p.__pn_.__r_.__value_.__r.__words[0];
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      if (v25)
      {
        v27 = " ";
      }

      else
      {
        v27 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v26;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v27;
      _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%s%screated", buf, 0x16u);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  *(v7 + 488) = 0;
  *(v7 + 496) = 0;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  *(v7 + 320) = 0u;
  *(v7 + 329) = 0u;
  v28 = vp::get_log(v20);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = vp::get_log_context_info(&__p, v7, "vp::vx::database::v1::Database]", 30);
    v30 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v31 = __p.__pn_.__r_.__value_.__l.__size_;
    v32 = vp::get_log(v29);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if ((v30 & 0x80u) == 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = v31;
      }

      v34 = __p.__pn_.__r_.__value_.__r.__words[0];
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__p;
      }

      if (v33)
      {
        v35 = " ";
      }

      else
      {
        v35 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v34;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v35;
      _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEFAULT, "%s%screated", buf, 0x16u);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  v36 = std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v164, v7);
  if (v164)
  {
    v37 = v164;
    v38 = vp::get_log(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
      v40 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v41 = buf[0].__r_.__value_.__l.__size_;
      v42 = vp::get_log(v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        if ((v40 & 0x80u) == 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = v41;
        }

        v44 = buf[0].__r_.__value_.__r.__words[0];
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = buf;
        }

        if (v43)
        {
          v45 = " ";
        }

        else
        {
          v45 = "";
        }

        v46 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
        v47 = a3->__pn_.__r_.__value_.__r.__words[0];
        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__pn_.__r_.__value_.__r.__words + 4) = v44;
        if (v46 >= 0)
        {
          v48 = a3;
        }

        else
        {
          v48 = v47;
        }

        WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v45;
        HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
        v197 = v48;
        _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%s%swill load %s file", &__p, 0x20u);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    v163 = a1;
    std::__fs::filesystem::path::parent_path[abi:ne200100](&v174, a3);
    if (*(v37 + 247) < 0)
    {
      operator delete(*(v37 + 224));
    }

    *(v37 + 224) = v174;
    *(v37 + 240) = v175;
    HIBYTE(v175) = 0;
    LOBYTE(v174) = 0;
    std::__fs::filesystem::path::extension[abi:ne200100](&__p, a3);
    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(buf, ".xml");
    v204.__data_ = buf;
    v49 = std::__fs::filesystem::operator==[abi:ne200100](&__p, v204);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (v49)
    {
      v50 = xmlNewParserCtxt();
      v181[0] = v50;
      if ((a3->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = a3;
      }

      else
      {
        v51 = a3->__pn_.__r_.__value_.__r.__words[0];
      }

      __p.__pn_.__r_.__value_.__r.__words[0] = xmlCtxtReadFile(v50, v51, 0, 2048);
      operator new();
    }

    std::__fs::filesystem::path::extension[abi:ne200100](&__p, a3);
    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(buf, ".bin");
    v205.__data_ = buf;
    v52 = std::__fs::filesystem::operator==[abi:ne200100](&__p, v205);
    v53 = v52;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if (v53)
      {
        goto LABEL_72;
      }
    }

    else if (v53)
    {
LABEL_72:
      if ((a3->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = a3->__pn_.__r_.__value_.__r.__words[0];
      }

      std::ifstream::basic_ifstream(buf);
      std::istream::seekg();
      std::istream::tellg();
      v55 = v198;
      std::istream::seekg();
      v56 = (v55 + 63) & 0xFFFFFFFFFFFFFFC0;
      v57 = malloc_type_aligned_alloc(0x40uLL, v56, 0x100004077774924uLL);
      std::istream::read();
      v58 = std::filebuf::close();
      if (!v58)
      {
        std::ios_base::clear((buf + *(buf[0].__r_.__value_.__r.__words[0] - 24)), *(&buf[1].__r_.__value_.__r.__words[1] + *(buf[0].__r_.__value_.__r.__words[0] - 24)) | 4);
      }

      v170[0] = v57;
      v170[1] = ((v55 + 63) & 0xFFFFFFFFFFFFFFC0);
      v171 = xmmword_272756660;
      v172 = 0;
      v173 = 1;
      if (v56 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (!v56)
      {
        goto LABEL_170;
      }

      v59 = *v57;
      if (v59 < 1)
      {
        goto LABEL_170;
      }

      if (v56 - 1 < v59)
      {
        goto LABEL_170;
      }

      v60 = v57 + v59;
      v58 = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v170, v57 + v59);
      if (!v58)
      {
        goto LABEL_170;
      }

      v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v57 + v59), v170, 4u);
      if (!v58)
      {
        goto LABEL_170;
      }

      v61 = *v60;
      if (*&v60[-v61] < 5u)
      {
        goto LABEL_105;
      }

      if (*&v60[-v61 + 4])
      {
        v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(v170, &v60[*&v60[-v61 + 4] + *&v60[*&v60[-v61 + 4]]], 4uLL, 0);
        if (!v58)
        {
          goto LABEL_170;
        }

        v61 = *v60;
        if (*&v60[-v61] < 5u)
        {
          goto LABEL_105;
        }
      }

      v62 = *&v60[-v61 + 4];
      if (!v62)
      {
LABEL_105:
        v63 = 0;
      }

      else
      {
        v63 = &v60[v62 + *&v60[v62]];
      }

      v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(v170, v63);
      if (!v58 || (v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v57 + v59), v170, 6u), !v58))
      {
LABEL_170:
        v130 = vp::get_log(v58);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v131 = vp::get_log_context_info(v168, v37, "vp::vx::database::v1::Database]", 30);
          v132 = v169;
          v133 = v169;
          v134 = v168[1];
          v135 = vp::get_log(v131);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            if (v133 >= 0)
            {
              v136 = v132;
            }

            else
            {
              v136 = v134;
            }

            v137 = v168[0];
            if (v133 >= 0)
            {
              v137 = v168;
            }

            if (v136)
            {
              v138 = " ";
            }

            else
            {
              v138 = "";
            }

            v139 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
            v140 = a3->__pn_.__r_.__value_.__r.__words[0];
            LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
            *(__p.__pn_.__r_.__value_.__r.__words + 4) = v137;
            if (v139 >= 0)
            {
              v141 = a3;
            }

            else
            {
              v141 = v140;
            }

            WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v138;
            HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
            v197 = v141;
            _os_log_impl(&dword_2724B4000, v135, OS_LOG_TYPE_ERROR, "%s%sfailed to verify %s file", &__p, 0x20u);
            LOBYTE(v133) = v169;
          }

          if ((v133 & 0x80) != 0)
          {
            operator delete(v168[0]);
          }
        }

        v129 = 0;
        v142 = 0;
        if (!v57)
        {
LABEL_188:
          buf[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
          *(buf[0].__r_.__value_.__r.__words + *(buf[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
          MEMORY[0x2743CBA00](&buf[0].__r_.__value_.__r.__words[2]);
          std::istream::~istream();
          v143 = MEMORY[0x2743CBE30](&v195);
          if (v142)
          {
            v144 = vp::get_log(v143);
            a1 = v163;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
            {
              v145 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
              v146 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v147 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v148 = buf[0].__r_.__value_.__l.__size_;
              v149 = vp::get_log(v145);
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
              {
                if (v147 >= 0)
                {
                  v150 = v146;
                }

                else
                {
                  v150 = v148;
                }

                v151 = buf[0].__r_.__value_.__r.__words[0];
                if (v147 >= 0)
                {
                  v151 = buf;
                }

                if (v150)
                {
                  v152 = " ";
                }

                else
                {
                  v152 = "";
                }

                v153 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
                v154 = a3->__pn_.__r_.__value_.__r.__words[0];
                LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
                *(__p.__pn_.__r_.__value_.__r.__words + 4) = v151;
                if (v153 >= 0)
                {
                  v155 = a3;
                }

                else
                {
                  v155 = v154;
                }

                WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v152;
                HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
                v197 = v155;
                _os_log_impl(&dword_2724B4000, v149, OS_LOG_TYPE_DEBUG, "%s%sdid load %s file", &__p, 0x20u);
                LOBYTE(v147) = *(&buf[0].__r_.__value_.__s + 23);
              }

              if ((v147 & 0x80) != 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_207;
          }

LABEL_206:
          std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v164, 0);
          a1 = v163;
          goto LABEL_207;
        }

LABEL_187:
        MEMORY[0x2743CBF70](v57, 0x1000C8077774924);
        v142 = v129;
        goto LABEL_188;
      }

      v76 = *v60;
      if (*&v60[-v76] >= 7u)
      {
        if (!*&v60[-v76 + 6])
        {
          goto LABEL_210;
        }

        v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(v170, &v60[*&v60[-v76 + 6] + *&v60[*&v60[-v76 + 6]]], 4uLL, 0);
        if (!v58)
        {
          goto LABEL_170;
        }

        v76 = *v60;
        if (*&v60[-v76] >= 7u)
        {
LABEL_210:
          v77 = *&v60[-v76 + 6];
          if (v77)
          {
            v78 = &v60[v77];
            v161 = *&v60[v77];
            if (*&v60[v77 + v161])
            {
              v79 = 0;
              v80 = v57 + v59 + v161 + v77 + 10;
              do
              {
                v81 = v80 - 6;
                v82 = *(v80 - 6);
                v58 = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v170, (v80 - 6 + v82));
                if (!v58)
                {
                  goto LABEL_170;
                }

                v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v81 + v82), v170, 4u);
                if (!v58)
                {
                  goto LABEL_170;
                }

                v83 = v80 + v82 - *(v81 + v82);
                if (*(v83 - 6) >= 5u)
                {
                  v84 = *(v83 - 2);
                  if (v84)
                  {
                    v58 = vp::vx::database::v1::fbs::plist::String::Verify((v80 + v82 + v84 + *(v80 + v82 + v84 - 6) - 6), v170);
                    if (!v58)
                    {
                      goto LABEL_170;
                    }
                  }
                }

                v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v81 + v82), v170, 6u);
                if (!v58)
                {
                  goto LABEL_170;
                }

                v85 = v82 - *(v81 + v82);
                if (*(v80 + v85 - 6) >= 7u)
                {
                  v86 = *(v80 + v85);
                  if (v86)
                  {
                    v58 = vp::vx::database::v1::fbs::plist::Object::Verify((v80 + v82 + v86 + *(v80 + v82 + v86 - 6) - 6), v170);
                    if ((v58 & 1) == 0)
                    {
                      goto LABEL_170;
                    }
                  }
                }

                LODWORD(v171) = v171 - 1;
                ++v79;
                v80 += 4;
              }

              while (v79 < *&v78[v161]);
            }
          }
        }
      }

      v160 = a3;
      LODWORD(v171) = v171 - 1;
      v87 = *v57;
      v88 = (v57 + v87);
      v162.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      default_resource = std::pmr::get_default_resource(v162.__d_.__rep_);
      v188 = 0;
      *v187 = 0;
      v189 = default_resource;
      v190 = 0;
      v191 = default_resource;
      v192 = 0;
      v193 = 1065353216;
      vp::vx::database::v1::syntax::Conditions::Conditions(&v186, *(v37 + 105), *(v37 + 192));
      vp::vx::database::v1::syntax::Constraints::Constraints(&__p, v187);
      if (*(v37 + 288))
      {
        v90 = *(v37 + 288);
      }

      else
      {
        v90 = v37 + 216;
      }

      v91 = v37;
      vp::vx::database::v1::syntax::Decisions::Decisions(v168, v187, v90);
      vp::vx::database::v1::syntax::Flags::Flags(v166, v187);
      v181[0] = &v186;
      v181[1] = &__p;
      v181[2] = v168;
      v181[3] = v166;
      v183 = 0;
      v185 = 0;
      *v199 = &unk_2881B6588;
      *&v199[8] = v37;
      *&v199[24] = v199;
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::swap[abi:ne200100](v199, &v182);
      v92 = std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](v199);
      *v199 = &unk_2881B65D0;
      *&v199[8] = v37;
      *&v199[24] = v199;
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::swap[abi:ne200100](v92, v184);
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](v199);
      v93 = *v88;
      v94 = -v93;
      v95 = v88 - v93;
      v96 = *(v88 - v93);
      if (v96 >= 7)
      {
        v97 = *(v95 + 3);
        if (!*(v95 + 3))
        {
          goto LABEL_136;
        }

        v98 = *(v88 + v97);
        v179[1] = 0;
        v179[0] = 0;
        v180 = 0;
        v99 = *(v88 + v97 + v98);
        if (v99)
        {
          *v200 = v179;
          std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](v99);
        }

        if (v183)
        {
          *cf = *v179;
          v178 = v180;
          v180 = 0;
          v179[1] = 0;
          v179[0] = 0;
          (*(*v183 + 48))(v183, cf);
          *v199 = cf;
          std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](v199);
        }

        *v199 = v179;
        std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](v199);
        v100 = *v88;
        v94 = -v100;
        v96 = *(v88 - v100);
      }

      if (v96 < 5)
      {
LABEL_152:
        v115.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v116 = vp::get_log(v115.__d_.__rep_);
        a3 = v160;
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v117 = vp::get_log_context_info(v179, v91, "vp::vx::database::v1::Database]", 30);
          v118 = HIBYTE(v180);
          v119 = SHIBYTE(v180);
          v120 = v179[1];
          v121 = vp::get_log(v117);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            if (v119 >= 0)
            {
              v122 = v118;
            }

            else
            {
              v122 = v120;
            }

            v123 = v179[0];
            if (v119 >= 0)
            {
              v123 = v179;
            }

            v124 = " ";
            v125 = v122 == 0;
            v126 = SHIBYTE(v160->__pn_.__r_.__value_.__r.__words[2]);
            v127 = v160->__pn_.__r_.__value_.__r.__words[0];
            *v199 = 136315906;
            if (v125)
            {
              v124 = "";
            }

            *&v199[4] = v123;
            *&v199[12] = 2080;
            if (v126 >= 0)
            {
              v128 = v160;
            }

            else
            {
              v128 = v127;
            }

            *&v199[14] = v124;
            *&v199[22] = 2080;
            *&v199[24] = v128;
            *v200 = 2048;
            *&v200[2] = v115.__d_.__rep_ - v162.__d_.__rep_;
            _os_log_impl(&dword_2724B4000, v121, OS_LOG_TYPE_DEFAULT, "%s%sparsed %s file in %llu us", v199, 0x2Au);
            LOBYTE(v119) = HIBYTE(v180);
          }

          if ((v119 & 0x80) != 0)
          {
            operator delete(v179[0]);
          }
        }

        std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](v184);
        std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](&v182);
        v166[0] = &unk_2881B76F0;
        v166[1] = &unk_2881B7720;
        if (v167)
        {
          CFRelease(v167);
        }

        vp::vx::database::v1::syntax::Decisions::~Decisions(v168);
        vp::vx::database::v1::syntax::Constraints::~Constraints(&__p);
        std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table(v187);
        v129 = 1;
        goto LABEL_187;
      }

LABEL_136:
      v101 = v88 + v94;
      v102 = *(v101 + 2);
      if (*(v101 + 2))
      {
        v103 = (v88 + v102);
        v104 = *v103;
        v179[1] = 0;
        v179[0] = 0;
        v180 = 0;
        std::vector<vp::vx::database::v1::syntax::Rule>::reserve(v179, *(v103 + v104));
        v105 = *(v103 + v104);
        if (v105)
        {
          v106 = 4 * v105;
          v107 = (v57 + v87 + v104 + v102 + 4);
          do
          {
            vp::vx::database::v1::fbs::Parser::parse_rule(v199, v181, (v107 + *v107));
            v108 = v179[1];
            if (v179[1] >= v180)
            {
              v111 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(v179, v199);
            }

            else
            {
              *(v179[1] + 4) = *&v199[8];
              *v108 = &unk_2881BA308;
              v109 = *&v199[16];
              *&v199[16] = 0u;
              *(v108 + 1) = v109;
              *(v108 + 5) = 0;
              *(v108 + 3) = 0u;
              *(v108 + 4) = 0u;
              v110 = *v200;
              *v200 = 0;
              *(v108 + 2) = v110;
              *(v108 + 3) = *&v200[16];
              memset(&v200[8], 0, 24);
              *(v108 + 10) = 0;
              *(v108 + 4) = v201;
              *(v108 + 10) = v202;
              v201 = 0u;
              v202 = 0;
              v111 = (v108 + 88);
            }

            v179[1] = v111;
            *v199 = &unk_2881BA308;
            v176 = &v201;
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v176);
            v176 = &v200[8];
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v176);
            v112 = *v200;
            *v200 = 0;
            if (v112)
            {
              (*(*v112 + 8))(v112);
            }

            v113 = *&v199[24];
            *&v199[24] = 0;
            if (v113)
            {
              (*(*v113 + 8))(v113);
            }

            v114 = *&v199[16];
            *&v199[16] = 0;
            if (v114)
            {
              (*(*v114 + 8))(v114);
            }

            ++v107;
            v106 -= 4;
          }

          while (v106);
        }

        v91 = v37;
        if (v185)
        {
          *v199 = *v179;
          *&v199[16] = v180;
          v180 = 0;
          v179[1] = 0;
          v179[0] = 0;
          (*(*v185 + 48))(v185, v199);
          v176 = v199;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v176);
        }

        v176 = v179;
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v176);
      }

      goto LABEL_152;
    }

    v64 = vp::get_log(v52);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
      v66 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v67 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v68 = buf[0].__r_.__value_.__l.__size_;
      v69 = vp::get_log(v65);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        if (v67 >= 0)
        {
          v70 = v66;
        }

        else
        {
          v70 = v68;
        }

        v71 = buf[0].__r_.__value_.__r.__words[0];
        if (v67 >= 0)
        {
          v71 = buf;
        }

        if (v70)
        {
          v72 = " ";
        }

        else
        {
          v72 = "";
        }

        v73 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
        v74 = a3->__pn_.__r_.__value_.__r.__words[0];
        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__pn_.__r_.__value_.__r.__words + 4) = v71;
        if (v73 >= 0)
        {
          v75 = a3;
        }

        else
        {
          v75 = v74;
        }

        WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v72;
        HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
        v197 = v75;
        _os_log_impl(&dword_2724B4000, v69, OS_LOG_TYPE_ERROR, "%s%sfailed to load %s file - file extension is unknown", &__p, 0x20u);
        LOBYTE(v67) = *(&buf[0].__r_.__value_.__s + 23);
      }

      if ((v67 & 0x80) != 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_206;
  }

LABEL_207:
  v156 = v164;
  v157 = v165;
  *&v164 = 0;
  *a1 = v156;
  a1[1] = v157;
  result = std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v164, 0);
  v159 = *MEMORY[0x277D85DE8];
  return result;
}

void ***std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::database::v1::Database::~Database(v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t (***vp::vx::database::v1::syntax::Decisions::decision_parser(uint64_t (***a1)(), vp::vx::database::v1::syntax *this, char *a3))()
{
  v4 = vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3);
  result = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
  if (v4 <= 0x20DC4A37C84CA775)
  {
    v6 = a1 + 8;
    if (v4 != 0x15CE13B6EBF78EEBLL)
    {
      v6 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0x5FD833547E612B6)
    {
      v7 = a1 + 20;
    }

    else
    {
      v7 = v6;
    }

    v8 = a1 + 31;
    if (v4 != 0xFA8D3F1EAAA6E2DBLL)
    {
      v8 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0xEAFC51725DBE15E2)
    {
      v9 = a1 + 4;
    }

    else
    {
      v9 = v8;
    }

    if (v4 <= 0x5FD833547E612B5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = a1 + 16;
    if (v4 != 0xAF39C4B30C4672C9)
    {
      v11 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0x93D9A281211A9D2ALL)
    {
      v12 = a1 + 28;
    }

    else
    {
      v12 = v11;
    }

    if (v4 == 0x8F68728B58B84FB1)
    {
      v13 = a1 + 34;
    }

    else
    {
      v13 = v12;
    }

    if (v4 <= 0xEAFC51725DBE15E1)
    {
      return v13;
    }

    else
    {
      return v10;
    }
  }

  if (v4 <= 0x4297744E444740C5)
  {
    if (v4 <= 0x261384A0B045AF23)
    {
      if (v4 == 0x20DC4A37C84CA776)
      {
        return a1 + 26;
      }

      if (v4 != 0x25E63182C153C7D0)
      {
        return result;
      }

      return a1 + 37;
    }

    if (v4 == 0x261384A0B045AF24)
    {
      return a1 + 37;
    }

    v14 = v4 == 0x380E881B6CDDE6DALL;
    v15 = a1 + 24;
LABEL_39:
    if (v14)
    {
      return v15;
    }

    return result;
  }

  if (v4 > 0x4CD3D1C9D4F7076ELL)
  {
    if (v4 != 0x4CD3D1C9D4F7076FLL)
    {
      v14 = v4 == 0x776A156492500CA7;
      v15 = a1 + 12;
      goto LABEL_39;
    }

    return a1 + 40;
  }

  if (v4 == 0x4297744E444740C6)
  {
    return a1 + 5;
  }

  if (v4 == 0x45B18BED1A55B0B3)
  {
    return a1 + 40;
  }

  return result;
}

void non-virtual thunk tovp::vx::database::v1::syntax::Decisions::~Decisions(vp::vx::database::v1::syntax::Decisions *this)
{
  vp::vx::database::v1::syntax::Decisions::~Decisions((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::database::v1::syntax::Decisions::~Decisions((this - 8));
}

uint64_t vp::vx::database::v1::syntax::Decisions::create_decision@<X0>(uint64_t result@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v4 = (a2 - *a2);
  v5 = *v4;
  if (v5 >= 7 && v4[3])
  {
    v6 = *(a2 + v4[3]);
    if (v6 > 3)
    {
      switch(v6)
      {
        case 4u:
          v13 = *(result + 16);
          if (v5 >= 9)
          {
            v14 = v4[4];
            if (v14)
            {
              v15 = a2 + v14 + *(a2 + v14);
            }
          }

          operator new();
        case 5u:
          v19 = *(result + 16);
          if (v5 >= 9)
          {
            v20 = v4[4];
            if (v20)
            {
              v21 = a2 + v20 + *(a2 + v20);
            }
          }

          operator new();
        case 6u:
          if (v5 >= 9)
          {
            v9 = v4[4];
            if (v9)
            {
              v10 = a2 + v9 + *(a2 + v9);
            }
          }

          operator new();
      }
    }

    else
    {
      switch(v6)
      {
        case 1u:
          if (v5 >= 9)
          {
            v11 = v4[4];
            if (v11)
            {
              v12 = a2 + v11 + *(a2 + v11);
            }
          }

          operator new();
        case 2u:
          v16 = *(result + 16);
          if (v5 >= 9)
          {
            v17 = v4[4];
            if (v17)
            {
              v18 = a2 + v17 + *(a2 + v17);
            }
          }

          v23 = *(result + 24);
          operator new();
        case 3u:
          if (v5 >= 9)
          {
            v7 = v4[4];
            if (v7)
            {
              v8 = a2 + v7 + *(a2 + v7);
            }
          }

          v22 = *(result + 16);
          operator new();
      }
    }
  }

  *a3 = 0;
  return result;
}

void sub_27261C400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  a17 = &a13;
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a17);
  __clang_call_terminate(a1);
}

void vp::Decorator::~Decorator(vp::Decorator *this)
{
  v2 = *(this + 1);
  *this = &unk_2881C6738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 1);
  *this = &unk_2881C6738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *vp::Decorator::Decorator(void *result, uint64_t *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2881C6738;
  result[1] = v2;
  if (!v2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27261CA88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::DSP_Node_Factory::~DSP_Node_Factory(vp::vx::DSP_Node_Factory *this)
{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory((this + *(*this - 24)));
}

void vp::vx::DSP_Node_Factory::~DSP_Node_Factory(vp::vx::DSP_Node_Factory *this)
{
  v28 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B67A0;
  *(this + 159) = &unk_2881B67D0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v23;
    v5 = v23;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v25 = v9;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v23;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 157);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(*(this + 152));
  }

  if (*(this + 1215) < 0)
  {
    operator delete(*(this + 149));
  }

  vp::vx::data_flow::State<void>::~State(this + 292);
  vp::vx::data_flow::State<void>::~State(this + 286);
  vp::vx::data_flow::State<void>::~State(this + 280);
  vp::vx::data_flow::State<void>::~State(this + 274);
  vp::vx::data_flow::State<void>::~State(this + 268);
  v12 = *(this + 130);
  if (v12)
  {
    v13 = *(this + 131);
    v14 = *(this + 130);
    if (v13 != v12)
    {
      do
      {
        v13 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v13 - 8));
      }

      while (v13 != v12);
      v14 = *(this + 130);
    }

    *(this + 131) = v12;
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>>>::deallocate[abi:ne200100](*(this + 133), v14, (*(this + 132) - v14) >> 5);
  }

  v15 = *(this + 126);
  if (v15)
  {
    v16 = *(this + 127);
    v17 = *(this + 126);
    if (v16 != v15)
    {
      do
      {
        v16 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v16 - 8));
      }

      while (v16 != v15);
      v17 = *(this + 126);
    }

    *(this + 127) = v15;
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>>>::deallocate[abi:ne200100](*(this + 129), v17, (*(this + 128) - v17) >> 5);
  }

  boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(this + 74);
  boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(this + 22);
  vp::vx::data_flow::State<void>::~State(this + 38);
  vp::vx::data_flow::State<void>::~State(this + 32);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 96);
  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  v18 = *(this + 5);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(this + 3);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  *(this + 159) = &unk_2881C6630;
  v20 = *(this + 161);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::get_log_context_info(vp::vx *this, const vp::vx::DSP_Node_Factory *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "vp::vx::DSP_Node_Factory]", 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ":", 1);
  v11 = *(a2 + 1);
  if (HIDWORD(v11) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v9 = &v12;
  v4 = (off_2881B6A90[HIDWORD(v11)])(&v9, &v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ":", 1);
  v6 = MEMORY[0x2743CBAF0](&v14, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  std::stringbuf::str[abi:ne200100](&v9, &v15);
  *this = v9;
  *(this + 2) = v10;
  v13[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v7;
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v18);
}

void sub_27261D00C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14);
  MEMORY[0x2743CBE30](&a30);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27261CFECLL);
}

void *boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      --v2;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(v3);
      v3 += 48;
    }

    while (v2);
  }

  if (a1[3])
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(a1, a1[1]);
  }

  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B67F0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

int *vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      vp::vx::data_flow::State<void>::unregister_listener(a1, v2);
      *(a1 + 24) = 0;
    }

    v4 = 0;
    vp::vx::data_flow::State<void>::~State(a1);
    *a1 = 0;
    *(a1 + 8) = 0u;
    v5 = 0u;
    vp::vx::data_flow::State<void>::~State(&v4);
  }

  return vp::vx::data_flow::State<void>::~State(a1);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

const void *std::stringbuf::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2);
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
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

char *vp::reflect_value_name_tag<vp::vx::Downlink_DSP_Node_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Downlink_DSP_Node_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_DSP_Node_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_DSP_Node_ID::Voice_Mix]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Downlink_DSP_Node_ID::Voice]";
      break;
    case 2:
      result = "vp::vx::Downlink_DSP_Node_ID::Dynamics]";
      break;
    case 3:
      result = "vp::vx::Downlink_DSP_Node_ID::Hardware]";
      break;
    case 4:
      result = "(vp::vx::Downlink_DSP_Node_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_DSP_Node_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_DSP_Node_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_DSP_Node_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_DSP_Node_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_DSP_Node_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_DSP_Node_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_DSP_Node_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_DSP_Node_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_DSP_Node_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_DSP_Node_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_DSP_Node_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_DSP_Node_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_DSP_Node_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_DSP_Node_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_DSP_Node_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_DSP_Node_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_DSP_Node_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_DSP_Node_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_DSP_Node_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_DSP_Node_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_DSP_Node_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_DSP_Node_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_DSP_Node_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_DSP_Node_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_DSP_Node_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_DSP_Node_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_DSP_Node_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_DSP_Node_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_DSP_Node_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_DSP_Node_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_DSP_Node_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_DSP_Node_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_DSP_Node_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_DSP_Node_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_DSP_Node_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_DSP_Node_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_DSP_Node_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_DSP_Node_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_DSP_Node_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_DSP_Node_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_DSP_Node_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_DSP_Node_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_DSP_Node_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_DSP_Node_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_DSP_Node_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_DSP_Node_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_DSP_Node_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_DSP_Node_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_DSP_Node_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_DSP_Node_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_DSP_Node_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_DSP_Node_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_DSP_Node_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_DSP_Node_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_DSP_Node_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_DSP_Node_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_DSP_Node_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_DSP_Node_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_DSP_Node_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_DSP_Node_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_DSP_Node_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_DSP_Node_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_DSP_Node_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_DSP_Node_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_DSP_Node_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_DSP_Node_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_DSP_Node_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_DSP_Node_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_DSP_Node_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_DSP_Node_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_DSP_Node_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_DSP_Node_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_DSP_Node_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_DSP_Node_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_DSP_Node_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_DSP_Node_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_DSP_Node_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_DSP_Node_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_DSP_Node_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_DSP_Node_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_DSP_Node_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_DSP_Node_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_DSP_Node_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_DSP_Node_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_DSP_Node_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_DSP_Node_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_DSP_Node_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_DSP_Node_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_DSP_Node_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_DSP_Node_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_DSP_Node_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_DSP_Node_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_DSP_Node_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_DSP_Node_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_DSP_Node_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_DSP_Node_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_DSP_Node_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_DSP_Node_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_DSP_Node_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_DSP_Node_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_DSP_Node_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_DSP_Node_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_DSP_Node_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_DSP_Node_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_DSP_Node_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_DSP_Node_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_DSP_Node_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_DSP_Node_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_DSP_Node_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_DSP_Node_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_DSP_Node_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_DSP_Node_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_DSP_Node_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_DSP_Node_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_DSP_Node_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_DSP_Node_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_DSP_Node_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_DSP_Node_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_DSP_Node_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_DSP_Node_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_DSP_Node_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_DSP_Node_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_DSP_Node_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_DSP_Node_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *vp::reflect_value_name_tag<vp::vx::Uplink_DSP_Node_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Uplink_DSP_Node_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_DSP_Node_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_DSP_Node_ID::Hardware]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_DSP_Node_ID::Echo]";
      break;
    case 2:
      result = "vp::vx::Uplink_DSP_Node_ID::Content]";
      break;
    case 3:
      result = "(vp::vx::Uplink_DSP_Node_ID)3]";
      break;
    case 4:
      result = "(vp::vx::Uplink_DSP_Node_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Uplink_DSP_Node_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Uplink_DSP_Node_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_DSP_Node_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_DSP_Node_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_DSP_Node_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_DSP_Node_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_DSP_Node_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_DSP_Node_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_DSP_Node_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_DSP_Node_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_DSP_Node_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_DSP_Node_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_DSP_Node_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_DSP_Node_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_DSP_Node_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_DSP_Node_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_DSP_Node_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_DSP_Node_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_DSP_Node_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_DSP_Node_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_DSP_Node_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_DSP_Node_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_DSP_Node_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_DSP_Node_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_DSP_Node_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_DSP_Node_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_DSP_Node_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_DSP_Node_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_DSP_Node_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_DSP_Node_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_DSP_Node_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_DSP_Node_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_DSP_Node_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_DSP_Node_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_DSP_Node_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_DSP_Node_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_DSP_Node_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_DSP_Node_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_DSP_Node_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_DSP_Node_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_DSP_Node_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_DSP_Node_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_DSP_Node_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_DSP_Node_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_DSP_Node_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_DSP_Node_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_DSP_Node_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_DSP_Node_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_DSP_Node_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_DSP_Node_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_DSP_Node_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_DSP_Node_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_DSP_Node_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_DSP_Node_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_DSP_Node_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_DSP_Node_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_DSP_Node_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_DSP_Node_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_DSP_Node_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_DSP_Node_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_DSP_Node_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_DSP_Node_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_DSP_Node_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_DSP_Node_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_DSP_Node_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_DSP_Node_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_DSP_Node_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_DSP_Node_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_DSP_Node_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_DSP_Node_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_DSP_Node_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_DSP_Node_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_DSP_Node_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_DSP_Node_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_DSP_Node_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_DSP_Node_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_DSP_Node_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_DSP_Node_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_DSP_Node_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_DSP_Node_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_DSP_Node_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_DSP_Node_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_DSP_Node_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_DSP_Node_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_DSP_Node_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_DSP_Node_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_DSP_Node_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_DSP_Node_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_DSP_Node_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_DSP_Node_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_DSP_Node_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_DSP_Node_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_DSP_Node_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_DSP_Node_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_DSP_Node_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_DSP_Node_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_DSP_Node_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_DSP_Node_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_DSP_Node_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_DSP_Node_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_DSP_Node_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_DSP_Node_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_DSP_Node_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_DSP_Node_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_DSP_Node_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_DSP_Node_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_DSP_Node_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_DSP_Node_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_DSP_Node_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_DSP_Node_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_DSP_Node_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_DSP_Node_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_DSP_Node_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_DSP_Node_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_DSP_Node_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_DSP_Node_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_DSP_Node_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_DSP_Node_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_DSP_Node_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_DSP_Node_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_DSP_Node_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_DSP_Node_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_DSP_Node_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_DSP_Node_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void *vp::vx::DSP_Node_Factory::new_node@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v242[2] = *MEMORY[0x277D85DE8];
  *v175 = 0;
  *&v175[16] = 0;
  *&v175[24] = 0;
  *&v175[8] = std::pmr::get_default_resource(a1);
  log = vp::get_log(*&v175[8]);
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    log_context_info = vp::vx::get_log_context_info(__p, a1);
    v10 = __p[23];
    v11 = __p[23];
    v12 = *&__p[8];
    v13 = vp::get_log(log_context_info);
    v8 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = *__p;
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v15;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%s%swill create node", &buf, 0x16u);
      LOBYTE(v11) = __p[23];
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  if (!atomic_load((a1 + 1264)))
  {
    v8 = *(a1 + 1248);
    if (v8)
    {
      (*(*v8 + 16))(__p);
      v19 = *__p;
      *__p = 0;
      std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v175, v19);
      *&v175[8] = *&__p[8];
      *&v175[24] = *&__p[24];
      v8 = std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](__p, 0);
      v20 = *v175;
      if (!*v175)
      {
        goto LABEL_35;
      }

      v21 = vp::get_log(v8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = vp::vx::get_log_context_info(&buf, a1);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        v24 = vp::get_log(v22);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          v26 = buf.__r_.__value_.__r.__words[0];
          v27 = vp::vx::detail::convert_to_c_str(*(a1 + 8));
          p_buf = &buf;
          if (v25 < 0)
          {
            p_buf = v26;
          }

          v29 = " ";
          *__p = 136315650;
          *&__p[4] = p_buf;
          *&__p[12] = 2080;
          if (!size)
          {
            v29 = "";
          }

          *&__p[14] = v29;
          *&__p[22] = 2080;
          *&__p[24] = v27;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEFAULT, "%s%srecycle old %s DSP graph", __p, 0x20u);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v8 = (*(*v20 + 88))(__p, v20);
      if (cf != 1)
      {
        if ((__p[39] & 0x80000000) != 0)
        {
          (*(*v193 + 24))(v193, *&__p[16], *&__p[32] & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        v8 = std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v175, 0);
      }
    }
  }

  v18 = *v175;
  if (*v175)
  {
LABEL_227:
    (*(*v18 + 128))(__p, v18);
    v153 = *__p;
    *__p = 0;
    *&__p[8] = 0;
    v154 = *(a1 + 1256);
    *(a1 + 1248) = v153;
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }
    }

    atomic_store(0, (a1 + 1264));
    v155 = v18 + *(*v18 - 24);
    v157 = *(v155 + 8);
    v156 = *(v155 + 16);
    if (v156)
    {
      atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *v224 = *(a1 + 8);
    if (*&v224[4] == 0xFFFFFFFFLL)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    buf.__r_.__value_.__r.__words[0] = &v176;
    v152 = (off_2881B6A80[*&v224[4]])(__p, &buf, v224);
    if (*(v157 + 23) < 0)
    {
      operator delete(*v157);
    }

    v158 = *__p;
    *(v157 + 16) = *&__p[16];
    *v157 = v158;
    __p[23] = 0;
    __p[0] = 0;
    if (v156)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v156);
    }

    goto LABEL_237;
  }

LABEL_35:
  v30 = vp::get_log(v8);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  v173 = a4;
  if (v31)
  {
    v32 = vp::vx::get_log_context_info(&buf, a1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = buf.__r_.__value_.__l.__size_;
    }

    v34 = vp::get_log(v32);
    v31 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      v35 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v36 = buf.__r_.__value_.__r.__words[0];
      v37 = vp::vx::detail::convert_to_c_str(*(a1 + 8));
      v38 = &buf;
      if (v35 < 0)
      {
        v38 = v36;
      }

      v39 = " ";
      *__p = 136315650;
      *&__p[4] = v38;
      *&__p[12] = 2080;
      if (!v33)
      {
        v39 = "";
      }

      *&__p[14] = v39;
      *&__p[22] = 2080;
      *&__p[24] = v37;
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEFAULT, "%s%screate new %s DSP graph", __p, 0x20u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  default_resource = std::pmr::get_default_resource(v31);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = default_resource;
  vp::vx::data_flow::State<void>::get_value((a1 + 48), __p);
  v41 = vp::vx::data_flow::Value::view_storage(__p);
  v42 = *(v41 + 16);
  *&buf.__r_.__value_.__l.__data_ = *v41;
  buf.__r_.__value_.__r.__words[2] = v42;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *v41 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v228, (v41 + 24));
  v229 = *(v41 + 64);
  v230 = *(v41 + 80);
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 80) = 0;
  v231 = *(v41 + 88);
  v232 = *(v41 + 104);
  *(v41 + 88) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  v233 = *(v41 + 112);
  v234 = *(v41 + 128);
  *(v41 + 112) = 0;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;
  v235 = *(v41 + 136);
  v236 = *(v41 + 152);
  *(v41 + 136) = 0;
  *(v41 + 144) = 0;
  *(v41 + 152) = 0;
  v237 = *(v41 + 160);
  v238 = *(v41 + 176);
  *(v41 + 160) = 0;
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;
  v239 = *(v41 + 184);
  vp::vx::data_flow::Value::~Value(__p);
  v43 = *(a1 + 24);
  if (v43)
  {
    v44 = std::__shared_weak_count::lock(v43);
    if (v44)
    {
      v45 = v44;
      v46 = *(a1 + 16);
      if (v46)
      {
        p_shared_owners = &v44->__shared_owners_;
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, &buf.__r_.__value_.__l.__data_);
        v48 = *(&v231 + 1);
        v49 = v231;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
        while (v49 != v48)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v49);
          v49 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        v50 = *(&v229 + 1);
        v51 = v229;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
        while (v51 != v50)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v51);
          v51 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        v52 = *(&v233 + 1);
        v53 = v233;
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        while (v53 != v52)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v53);
          v53 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  std::unordered_map<std::string,std::string>::unordered_map(&v183, v228);
  v54 = v183;
  v55 = v184;
  v183 = 0;
  v184 = 0;
  *v224 = v54;
  *&v224[8] = v55;
  v56 = v185;
  *&v224[16] = v185;
  v225 = v186;
  v226 = v187;
  if (v186)
  {
    v57 = v185[1];
    if ((v55 & (v55 - 1)) != 0)
    {
      if (v57 >= v55)
      {
        v57 %= v55;
      }
    }

    else
    {
      v57 &= v55 - 1;
    }

    v56 = 0;
    v54[v57] = &v224[16];
    v185 = 0;
    v186 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v56);
  v58 = v183;
  v183 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  block_size = vp::vx::detail::get_value<BOOL>(a1 + 96);
  if (block_size)
  {
    block_size = vp::vx::DSP_Node_Factory::get_block_size(a1);
    v60 = block_size;
  }

  else
  {
    v60 = 1;
  }

  v61 = std::pmr::get_default_resource(block_size);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = v61;
  vp::vx::data_flow::State<void>::get_value((a1 + 152), __p);
  v62 = *vp::vx::data_flow::Value::view_storage(__p);
  vp::vx::data_flow::Value::~Value(__p);
  std::to_string(__p, vcvtad_u64_f64(v62));
  std::string::basic_string[abi:ne200100]<0>(&__ec, "IO_SAMPLE_RATE");
  p_ec = &__ec;
  v63 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224, &__ec);
  v64 = v63;
  if (*(v63 + 63) < 0)
  {
    operator delete(v63[5]);
  }

  *(v64 + 5) = *__p;
  v64[7] = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (SHIBYTE(v241) < 0)
  {
    operator delete(*&__ec.__val_);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  std::to_string(__p, v60);
  std::string::basic_string[abi:ne200100]<0>(&__ec, "IO_BLOCK_SIZE");
  p_ec = &__ec;
  v65 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224, &__ec);
  v66 = v65;
  if (*(v65 + 63) < 0)
  {
    operator delete(*(v65 + 5));
  }

  *(v66 + 40) = *__p;
  *(v66 + 7) = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (SHIBYTE(v241) < 0)
  {
    operator delete(*&__ec.__val_);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  *&__ec.__val_ = &unk_2881B6830;
  __ec.__cat_ = v224;
  v242[0] = &__ec;
  v67 = *(a1 + 184);
  v68 = *(a1 + 192);
  if (!v67 && v68)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v68)
  {
    v69 = &v67[12 * v68];
    do
    {
      if (!v67)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v70 = v67 + 6;
      p_ec = std::pmr::get_default_resource(v65);
      v189 = 0;
      v190 = 0;
      vp::vx::data_flow::State<void>::get_value(v70, &p_ec);
      v71 = vp::vx::data_flow::Value::view_storage(&p_ec);
      v72 = *(v71 + 32);
      v73 = *(v71 + 16);
      *__p = *v71;
      *&__p[16] = v73;
      *&__p[32] = v72;
      vp::vx::data_flow::Value::~Value(&p_ec);
      if (!v242[0])
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v74 = v70 - 6;
      v65 = (*(*v242[0] + 48))(v242[0], v74, __p);
      v67 = v74 + 12;
    }

    while (v74 + 12 != v69);
  }

  v75 = std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](&__ec);
  *&__ec.__val_ = &unk_2881B6878;
  __ec.__cat_ = v224;
  v242[0] = &__ec;
  v76 = *(a1 + 600);
  v77 = *(a1 + 608);
  if (!v76 && v77)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v77)
  {
    v78 = &v76[12 * v77];
    do
    {
      if (!v76)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v79 = v76 + 6;
      p_ec = std::pmr::get_default_resource(v75);
      v189 = 0;
      v190 = 0;
      vp::vx::data_flow::State<void>::get_value(v79, &p_ec);
      v80 = vp::vx::data_flow::Value::view_storage(&p_ec);
      v81 = *(v80 + 32);
      v82 = *(v80 + 16);
      *__p = *v80;
      *&__p[16] = v82;
      *&__p[32] = v81;
      vp::vx::data_flow::Value::~Value(&p_ec);
      if (!v242[0])
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v83 = v79 - 6;
      v75 = (*(*v242[0] + 48))(v242[0], v83, __p);
      v76 = v83 + 12;
    }

    while (v83 + 12 != v78);
  }

  v84 = std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](&__ec);
  if (*(a1 + 136))
  {
    v85 = std::pmr::get_default_resource(v84);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v85;
    vp::vx::data_flow::State<void>::get_value((a1 + 128), __p);
    v86 = *vp::vx::data_flow::Value::view_storage(__p);
    vp::vx::data_flow::Value::~Value(__p);
    std::to_string(__p, v86);
    std::string::basic_string[abi:ne200100]<0>(&__ec, "FFT_BLOCK_SIZE");
    p_ec = &__ec;
    v84 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224, &__ec);
    v87 = v84;
    if (*(v84 + 63) < 0)
    {
      operator delete(*(v84 + 40));
    }

    *(v87 + 40) = *__p;
    *(v87 + 56) = *&__p[16];
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v241) < 0)
    {
      operator delete(*&__ec.__val_);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  v182 = 0;
  if (*(a1 + 1104))
  {
    v88 = std::pmr::get_default_resource(v84);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v88;
    vp::vx::data_flow::State<void>::get_value((a1 + 1096), __p);
    v89 = vp::vx::data_flow::Value::view_storage(__p);
    v90 = *v89;
    *v89 = 0;
    vp::vx::data_flow::Value::~Value(__p);
    if (v90)
    {
      CFRetain(v90);
      vp::cf::Predicate::create(__p, v90);
      CFRelease(v90);
      if (*__p)
      {
        vp::objc::ID::ID(&v181, __p);
        vp::objc::ID::operator=(&v182, &v181);
        vp::objc::ID::~ID(&v181);
      }

      vp::objc::ID::~ID(__p);
      CFRelease(v90);
    }
  }

  *&__p[8] = a3;
  __p[16] = 0;
  LOBYTE(v193) = 0;
  cf = 0;
  v195.__r_.__value_.__s.__data_[0] = 0;
  v196 = 0;
  v197.__r_.__value_.__s.__data_[0] = 0;
  v198 = 0;
  LOBYTE(v199) = 0;
  v201 = 0;
  v204 = 0;
  LOBYTE(v205) = 0;
  v206 = 0;
  LOBYTE(v207) = 0;
  v208 = 0;
  __src = 0;
  v210 = 0;
  p_p_p_ec = &v213;
  v211 = 0;
  v216 = 0;
  LOBYTE(v217) = 0;
  v218 = 0;
  LOBYTE(v219) = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  memset(v203, 0, 25);
  memset(v202, 0, sizeof(v202));
  v213 = 0u;
  v214 = 0u;
  *__p = &unk_2881B7E58;
  std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(&v197, &buf);
  if (v201 == 1)
  {
    if (v200 < 0)
    {
      operator delete(v199);
    }

    v201 = 0;
  }

  v92 = *(&v231 + 1);
  v93 = v231;
  if (v231 != *(&v231 + 1))
  {
    v94 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v94;
      std::__fs::filesystem::__status(v93, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v94;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](v202, v93);
        }
      }

      ++v93;
    }

    while (v93 != v92);
  }

  v95 = *(&v229 + 1);
  v96 = v229;
  if (v229 != *(&v229 + 1))
  {
    v97 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v97;
      std::__fs::filesystem::__status(v96, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v97;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v202[1] + 8, v96);
        }
      }

      ++v96;
    }

    while (v96 != v95);
  }

  v98 = *(&v233 + 1);
  v99 = v233;
  if (v233 != *(&v233 + 1))
  {
    v100 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v100;
      std::__fs::filesystem::__status(v99, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v100;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](v203, v99);
        }
      }

      ++v99;
    }

    while (v99 != v98);
  }

  v102 = *(&v235 + 1);
  v101 = v235;
  if (v235 != *(&v235 + 1))
  {
    v103 = v210;
    do
    {
      v104 = *v101;
      v105 = v101[1];
      if (v103 >= v211)
      {
        v106 = __src;
        v107 = v103 - __src;
        v108 = (v103 - __src) >> 3;
        v109 = v108 + 1;
        if ((v108 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v110 = v211 - __src;
        if ((v211 - __src) >> 2 > v109)
        {
          v109 = v110 >> 2;
        }

        if (v110 >= 0x7FFFFFFFFFFFFFF8)
        {
          v111 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v111 = v109;
        }

        if (v111)
        {
          std::allocator<std::pair<unsigned int,float>>::allocate_at_least[abi:ne200100](v111);
        }

        v112 = v108;
        v113 = (8 * v108);
        *v113 = v104;
        v113[1] = v105;
        v103 = (8 * v108 + 8);
        v114 = &v113[-2 * v112];
        memcpy(v114, v106, v107);
        v115 = __src;
        __src = v114;
        v210 = v103;
        v211 = 0;
        if (v115)
        {
          operator delete(v115);
        }
      }

      else
      {
        *v103 = v104;
        *(v103 + 1) = v105;
        v103 += 8;
      }

      v210 = v103;
      v101 += 2;
    }

    while (v101 != v102);
  }

  v116 = *(a1 + 1016);
  v117 = *(a1 + 1008);
  while (v116 != v117)
  {
    v116 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v116 - 8));
  }

  *(a1 + 1016) = v117;
  p_ec = &unk_2881B68C0;
  v189 = a1;
  p_p_ec = &p_ec;
  v118 = v213;
  *&v213 = 0;
  if (v118 == v212)
  {
    (*(*v118 + 32))(v118);
  }

  else if (v118)
  {
    (*(*v118 + 40))(v118);
  }

  if (!p_p_ec)
  {
    goto LABEL_154;
  }

  if (p_p_ec != &p_ec)
  {
    p_p_p_ec = &p_p_ec;
    *&v213 = p_p_ec;
LABEL_154:
    *p_p_p_ec = 0;
    goto LABEL_156;
  }

  *&v213 = v212;
  ((*p_p_ec)[1].__cat_)();
LABEL_156:
  std::__function::__value_func<applesauce::CF::NumberRef ()>::~__value_func[abi:ne200100](&p_ec);
  v120 = *(&v237 + 1);
  for (i = v237; i != v120; i += 4)
  {
    v121 = *i;
    v122 = *(i + 1);
    if (v122)
    {
      CFRetain(*(i + 1));
    }

    v180 = v122;
    v123 = v214;
    if (v214 >= *(&v214 + 1))
    {
      v125 = (v214 - *(&v213 + 1)) >> 4;
      v126 = v125 + 1;
      if ((v125 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v127 = *(&v214 + 1) - *(&v213 + 1);
      if ((*(&v214 + 1) - *(&v213 + 1)) >> 3 > v126)
      {
        v126 = v127 >> 3;
      }

      if (v127 >= 0x7FFFFFFFFFFFFFF0)
      {
        v128 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v128 = v126;
      }

      v242[1] = &v213 + 8;
      if (v128)
      {
        std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::allocate_at_least[abi:ne200100](v128);
      }

      v129 = (16 * v125);
      *&__ec.__val_ = 0;
      __ec.__cat_ = v129;
      v242[0] = 0;
      LODWORD(v129->__vftable) = v121;
      v129[1].__vftable = v122;
      v180 = 0;
      v241 = 16 * v125 + 16;
      std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__swap_out_circular_buffer(&v213 + 1, &__ec);
      v124 = v214;
      std::__split_buffer<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::~__split_buffer(&__ec);
    }

    else
    {
      *v214 = v121;
      *(v123 + 8) = v122;
      v124 = v123 + 16;
      v180 = 0;
    }

    *&v214 = v124;
  }

  v130 = *(a1 + 1048);
  v131 = *(a1 + 1040);
  while (v130 != v131)
  {
    v130 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v130 - 8));
  }

  *(a1 + 1048) = v131;
  *&__ec.__val_ = &unk_2881B69A8;
  __ec.__cat_ = a1;
  v242[0] = &__ec;
  v132 = v216;
  v216 = 0;
  a4 = v173;
  if (v132 == v215)
  {
    (*(*v132 + 32))(v132);
  }

  else if (v132)
  {
    (*(*v132 + 40))(v132);
  }

  if (!v242[0])
  {
    v133 = &v216;
    goto LABEL_182;
  }

  if (v242[0] != &__ec)
  {
    v133 = v242;
    v216 = v242[0];
LABEL_182:
    *v133 = 0;
    goto LABEL_184;
  }

  v216 = v215;
  (*(*v242[0] + 24))();
LABEL_184:
  std::__function::__value_func<applesauce::CF::DictionaryRef ()>::~__value_func[abi:ne200100](&__ec);
  HIBYTE(v221) = v239;
  v134 = vp::vx::detail::get_value<BOOL>(a1 + 96);
  if (v134)
  {
    v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
    *&v203[24] = v134;
    v204 = 1;
    if (v206 == 1)
    {
      v206 = 0;
    }

    if ((v208 & 1) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_199;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      goto LABEL_201;
    }

    v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
    if (v204 == 1)
    {
      v204 = 0;
    }

    if (v206 == 1)
    {
      v206 = 0;
    }

    v207 = v134;
    v135 = 1;
    goto LABEL_200;
  }

  v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
  if (v204 == 1)
  {
    v204 = 0;
  }

  v205 = v134;
  v206 = 1;
  if (v208 == 1)
  {
LABEL_199:
    v135 = 0;
LABEL_200:
    v208 = v135;
  }

LABEL_201:
  if (*(a1 + 1080))
  {
    v136 = std::pmr::get_default_resource(v134);
    v177 = 0uLL;
    v176 = v136;
    vp::vx::data_flow::State<void>::get_value((a1 + 1072), &v176);
    v137 = *vp::vx::data_flow::Value::view_storage(&v176);
    vp::vx::data_flow::Value::~Value(&v176);
  }

  else
  {
    v137 = 0;
  }

  LOBYTE(v221) = v137 & 1;
  v138 = std::pmr::get_default_resource(v134);
  v177 = 0uLL;
  v176 = v138;
  vp::vx::data_flow::State<void>::get_value((a1 + 1120), &v176);
  v139 = *vp::vx::data_flow::Value::view_storage(&v176);
  vp::vx::data_flow::Value::~Value(&v176);
  v222 = v139;
  v141 = std::pmr::get_default_resource(v140);
  v177 = 0uLL;
  v176 = v141;
  vp::vx::data_flow::State<void>::get_value((a1 + 1144), &v176);
  v142 = *vp::vx::data_flow::Value::view_storage(&v176);
  vp::vx::data_flow::Value::~Value(&v176);
  v217 = v142;
  v218 = 1;
  v144 = std::pmr::get_default_resource(v143);
  v177 = 0uLL;
  v176 = v144;
  vp::vx::data_flow::State<void>::get_value((a1 + 1168), &v176);
  v145 = *vp::vx::data_flow::Value::view_storage(&v176);
  vp::vx::data_flow::Value::~Value(&v176);
  v219 = v145;
  v220 = 1;
  if (*(a1 + 1215) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, *(a1 + 1192), *(a1 + 1200));
  }

  else
  {
    v179 = *(a1 + 1192);
  }

  v146 = &__p[16];
  if (v193 == 1)
  {
    if ((__p[39] & 0x80000000) != 0)
    {
      operator delete(*&__p[16]);
    }

    *&__p[16] = v179;
    *(&v179.__r_.__value_.__s + 23) = 0;
    v179.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    *&__p[16] = v179;
    memset(&v179, 0, sizeof(v179));
    LOBYTE(v193) = 1;
  }

  if ((__p[39] & 0x80000000) != 0)
  {
    v146 = *&__p[16];
    v147 = strlen(*&__p[16]);
    if (!*&__p[16])
    {
      v148 = 0;
      goto LABEL_216;
    }
  }

  else
  {
    v147 = strlen(&__p[16]);
  }

  v148 = CFStringCreateWithBytes(0, v146, v147, 0x8000100u, 0);
  v176 = v148;
  if (!v148)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

LABEL_216:
  v149 = cf;
  cf = v148;
  if (v149)
  {
    CFRelease(v149);
  }

  std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(&v195, (a1 + 1216));
  v223 = *(a1 + 1240);
  vp::vx::dsp::v2::Graph_Builder::build(__p, v224, &v182, &v176);
  v150 = v176;
  v176 = 0;
  std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v175, v150);
  *&v175[8] = v177;
  *&v175[24] = v178;
  std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](&v176, 0);
  vp::vx::dsp::Graph_Builder::~Graph_Builder(__p);
  vp::objc::ID::~ID(&v182);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*&v224[16]);
  v151 = *v224;
  *v224 = 0;
  if (v151)
  {
    operator delete(v151);
  }

  *__p = &v237;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v235)
  {
    *(&v235 + 1) = v235;
    operator delete(v235);
  }

  *__p = &v233;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = &v231;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = &v229;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v228[2]);
  v152 = v228[0];
  v228[0] = 0;
  if (v152)
  {
    operator delete(v152);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v18 = *v175;
  if (*v175)
  {
    goto LABEL_227;
  }

LABEL_237:
  v159 = vp::get_log(v152);
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
  {
    v160 = vp::vx::get_log_context_info(&buf, a1);
    v161 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v162 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v163 = buf.__r_.__value_.__l.__size_;
    v164 = vp::get_log(v160);
    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
    {
      if (v162 >= 0)
      {
        v165 = v161;
      }

      else
      {
        v165 = v163;
      }

      v166 = buf.__r_.__value_.__r.__words[0];
      if (v162 >= 0)
      {
        v166 = &buf;
      }

      if (v165)
      {
        v167 = " ";
      }

      else
      {
        v167 = "";
      }

      *v224 = 136315394;
      *&v224[4] = v166;
      *&v224[12] = 2080;
      *&v224[14] = v167;
      _os_log_impl(&dword_2724B4000, v164, OS_LOG_TYPE_DEBUG, "%s%sdid create node", v224, 0x16u);
      LOBYTE(v162) = *(&buf.__r_.__value_.__s + 23);
    }

    if ((v162 & 0x80) != 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v168 = *v175;
  v169 = *&v175[16];
  *v175 = 0;
  *a4 = v168;
  a4[1] = v169;
  result = std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v175, 0);
  v171 = *MEMORY[0x277D85DE8];
  return result;
}