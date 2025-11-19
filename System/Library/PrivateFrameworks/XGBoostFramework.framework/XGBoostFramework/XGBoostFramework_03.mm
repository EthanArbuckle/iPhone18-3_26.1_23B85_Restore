void sub_274CE26D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  (*(*a1 + 64))(a1, &v5, *(a2 + a1[12]));
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v9);
}

void sub_274CE28B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntry<int>::GetFieldInfo@<X0>(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[5].__r_.__value_.__s.__data_[0] == 1)
  {
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::string::operator=(a2, a1 + 1);
    std::string::operator=((a2 + 24), a1 + 2);
    dmlc::parameter::FieldEntry<int>::PrintEnums(a1, &v8);
    if (a1->__r_.__value_.__s.__data_[8] == 1)
    {
      LOBYTE(v6) = 44;
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, &v6, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "optional, default=", 18);
      (*(a1->__r_.__value_.__r.__words[0] + 56))(a1, &v8);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ", required", 10);
    }

    std::stringbuf::str();
    if (*(a2 + 71) < 0)
    {
      operator delete(*(a2 + 48));
    }

    *(a2 + 48) = v6;
    *(a2 + 64) = v7;
    std::string::operator=((a2 + 72), a1 + 3);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x277C690D0](&v12);
  }

  else
  {

    return dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::GetFieldInfo(a1, a2);
  }
}

void sub_274CE2B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

void *dmlc::parameter::FieldEntry<int>::PrintDefaultValueString(unsigned int *a1, void *a2)
{
  v5 = 39;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v5, 1);
  (*(*a1 + 64))(a1, a2, a1[26]);
  v6 = 39;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v6, 1);
}

void *dmlc::parameter::FieldEntry<int>::PrintValue(uint64_t a1, void *a2, int a3)
{
  v13 = a3;
  if (*(a1 + 120) != 1)
  {

    JUMPOUT(0x277C68E20);
  }

  v4 = *(a1 + 160);
  if (!v4)
  {
LABEL_8:
    v12 = 0;
    v11 = 0;
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v12, &v11);
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a3)
    {
      break;
    }

LABEL_7:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 < a3)
  {
    ++v4;
    goto LABEL_7;
  }

  v6 = std::map<int,std::string>::at(a1 + 152, &v13);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = v6[1];
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v8, v9);
}

void sub_274CE2D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  MEMORY[0x277C68D50](v34, a2 + *(a1 + 96));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}

void sub_274CE310C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  if (a7 < 0)
  {
    operator delete(__p);
    if ((v56 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a8);
      std::istringstream::~istringstream(&a41, MEMORY[0x277D82820]);
      MEMORY[0x277C690D0](va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v56)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v55);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274CE33B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *dmlc::parameter::FieldEntry<int>::PrintEnums(uint64_t a1, void *a2)
{
  v15 = 123;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v15, 1);
  v4 = *(a1 + 128);
  if (v4 != (a1 + 136))
  {
    do
    {
      if (v4 != *(a1 + 128))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
      }

      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "'", 1);
      v6 = v4[4];
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = (v4 + 4);
      }

      else
      {
        v8 = v4[4];
      }

      if (v7 >= 0)
      {
        v9 = *(v4 + 55);
      }

      else
      {
        v9 = v4[5];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v8, v9);
      v17 = 39;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v17, 1);
      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != (a1 + 136));
  }

  v16 = 125;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v16, 1);
}

uint64_t *std::map<int,std::string>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::operator()()
{
  operator new();
}

{
  operator new();
}

void sub_274CE37CC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::target_type()
{
}

{
}

void xgboost::linear::CoordinateUpdater::~CoordinateUpdater(char **this)
{
  *this = &unk_2883DE858;
  xgboost::common::Monitor::~Monitor(this + 8);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2883DE858;
  xgboost::common::Monitor::~Monitor(this + 8);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::linear::CoordinateUpdater::LoadConfig(xgboost::linear::CoordinateUpdater *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "linear_train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, &__p);
  xgboost::FromJson<xgboost::linear::LinearTrainParam>(v4, (this + 24), v19);
  v14[0] = v19;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "coordinate_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, v14);
  v6 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v5);
  v21 = 0;
  v22 = 0;
  __p = &v21;
  v7 = *(v6 + 2);
  v8 = (v6 + 24);
  if (v7 != (v6 + 24))
  {
    do
    {
      v9 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v7[7]);
      v23 = v7 + 4;
      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v7 + 4);
      v6 = std::string::operator=((v10 + 56), (v9 + 16));
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  if (*(this + 16) == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::linear::CoordinateParam::__MANAGER__(v6);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5D28, this + 16, __p, &v21, 0, &v16, 0);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::linear::CoordinateParam::__MANAGER__(v6);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5D28, this + 16, __p, &v21, &v16, 0);
    *(this + 16) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v21);
  __p = &v16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274CE3B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, int a23, __int16 a24, char a25, char a26)
{
  *(v26 - 56) = &a15;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v26 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a21, a22);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::linear::CoordinateUpdater::SaveConfig(xgboost::linear::CoordinateUpdater *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::linear::LinearTrainParam>((this + 24), &v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "linear_train_param");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void xgboost::linear::CoordinateUpdater::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 24), a2, &v10);
  if (*(a1 + 16) == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    xgboost::linear::CoordinateParam::__MANAGER__(v3);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5D28, a1 + 16, v10, v11, 0, &v7, 0);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    xgboost::linear::CoordinateParam::__MANAGER__(v3);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5D28, a1 + 16, v10, v11, &v7, 0);
    *(a1 + 16) = 1;
  }

  v12 = &v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v4 = xgboost::linear::FeatureSelector::Create(*(a1 + 40));
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "CoordinateUpdater");
  std::string::operator=((a1 + 64), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = &v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_274CE4028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 24) = &a18;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v18 - 24));
  _Unwind_Resume(a1);
}

void xgboost::linear::CoordinateUpdater::Update(uint64_t a1, uint64_t *a2, uint64_t (***a3)(void), uint64_t a4, double a5)
{
  v7 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v8 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 32)), a5));
  *(a1 + 44) = v8;
  v9 = *(*(a4 + 152) + 8);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      BiasGradientParallel = xgboost::linear::GetBiasGradientParallel(i, v9, *a2, a3, 1);
      *&BiasGradientParallel = -BiasGradientParallel / v12 * *(a1 + 28);
      v13 = *(a4 + 160) + 4 * (*(*(a4 + 152) + 8) * *(*(a4 + 152) + 4));
      *(v13 + 4 * i) = *(v13 + 4 * i) + *&BiasGradientParallel;
      v14 = *a2;
      LODWORD(v25) = i;
      LODWORD(v27) = v9;
      LODWORD(v24[0]) = LODWORD(BiasGradientParallel);
      __p = v14;
      if (*&BiasGradientParallel != 0.0)
      {
        v15 = *(**a3)(a3);
        v29.__ptr_ = &__p;
        v30 = &v27;
        v31 = &v25;
        v32 = v24;
        xgboost::common::ParallelFor<unsigned int,xgboost::linear::UpdateBiasResidualParallel(int,int,float,std::vector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,int)::{lambda#1}>(v15, 1, 2, 0, &v29);
      }
    }

    v7 = a1;
    v8 = *(a1 + 44);
  }

  (*(**(v7 + 56) + 16))(*(v7 + 56), a4, *a2, a3, *(v7 + 20), v8.f32[1]);
  if (v9 > 0)
  {
    v16 = 0;
    do
    {
      if (*(*(a4 + 152) + 4) && ((*(**(a1 + 56) + 24))(*(a1 + 56), 0, a4, v16, *a2, a3, *(a1 + 48), *(a1 + 44)) & 0x80000000) == 0)
      {
        v17 = *a2;
        v18 = *(a4 + 160);
        v19 = *(*(a4 + 152) + 8);
        v29.__ptr_ = 0;
        std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
        v29.__ptr_ = 0;
        std::vector<double>::vector[abi:ne200100](&v25, 1uLL);
        ((*a3)[10])(&v27, a3);
        v24[0] = v27;
        v24[1] = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(&v23, 0);
      }

      ++v16;
    }

    while (v16 != v9);
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, "UpdateFeature");
  xgboost::common::Monitor::Stop();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29.__ptr_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_274CE4724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::FromJson<xgboost::linear::LinearTrainParam>(char ***a1@<X0>, xgboost::linear::LinearTrainParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = v5 + 3;
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  xgboost::XGBoostParameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::linear::LinearTrainParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::linear::LinearTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274CE49C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::linear::LinearTrainParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::linear::LinearTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274CE4A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::linear::LinearTrainParam>(xgboost::linear::LinearTrainParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  v3 = xgboost::linear::LinearTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v3, v5);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v6, v5[0], v5[1]);
  v8 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = v6;
  if (v6 != &v7)
  {
    xgboost::JsonString::JsonString(v5, (v6 + 56));
    v8 = (v4 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v4 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7);
}

void sub_274CE4BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::linear::LinearTrainParam *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::linear::LinearTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274CE4CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::linear::FeatureSelector::Create(xgboost::linear::FeatureSelector *this)
{
  if (this <= 1)
  {
    if (!this)
    {
      operator new();
    }

    if (this == 1)
    {
      operator new();
    }
  }

  else
  {
    switch(this)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  Entry = dmlc::LogMessageFatal::GetEntry(&v6);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/linear/coordinate_common.h", 498);
  v3 = dmlc::LogMessageFatal::GetEntry(&v6);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "unknown coordinate selector: ", 29);
  MEMORY[0x277C68E20](v4, this);
  dmlc::LogMessageFatal::~LogMessageFatal(&v6);
  return 0;
}

void *dmlc::Parameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::linear::LinearTrainParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::linear::LinearTrainParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274CE4F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::linear::ShuffleFeatureSelector::~ShuffleFeatureSelector(xgboost::linear::ShuffleFeatureSelector *this)
{
  *this = &unk_2883DE920;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883DE920;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::linear::ShuffleFeatureSelector::Setup(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v3 = (a1 + 16);
  if (v5 == v4)
  {
    std::vector<float>::resize(v3, *(*(a2 + 152) + 4));
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v4 != v5)
    {
      v6 = 0;
      v7 = (v5 - v4 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v4 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_274E1F3B0)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_274E1FC60)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }
  }

  v13 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();

  return std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(v4, v5, v13);
}

uint64_t std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_274E200B0;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void xgboost::linear::ThriftyFeatureSelector::~ThriftyFeatureSelector(xgboost::linear::ThriftyFeatureSelector *this)
{
  *this = &unk_2883DE968;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_2883DE968;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::linear::ThriftyFeatureSelector::Setup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = a5;
  }

  *(a1 + 12) = v7;
  v8 = *(*(a2 + 152) + 4);
  v9 = *(*(a2 + 152) + 8);
  v19 = v8;
  v20 = v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v10 = (a1 + 16);
  if (v12 == v11)
  {
    v13 = (v8 * v9);
    std::vector<float>::resize(v10, v13);
    std::vector<unsigned long>::resize((a1 + 40), v13);
    std::vector<float>::resize((a1 + 64), v9);
    std::vector<std::pair<double,double>>::resize((a1 + 88), v13);
  }

  v14 = *(a1 + 88);
  v15 = *(a1 + 96) - v14;
  if (v15 >= 1)
  {
    bzero(v14, v15);
  }

  (*(*a4 + 80))(&v17, a4);
  v16[2] = v17;
  v16[3] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(v16, 0);
}

void sub_274CE59A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::linear::ThriftyFeatureSelector::NextFeature(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 64);
  v5 = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = v5 + 1;
  if (v5 >= *(a1 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(*(a3 + 152) + 4);
  if (v5 + 1 == v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 40) + 8 * (v6 * a4) + 8 * v5) - v6 * a4;
  }
}

void std::vector<std::pair<double,double>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<double,double>>::__append(a1, a2 - v2);
  }
}

uint64_t xgboost::BatchIterator<xgboost::CSCPage>::operator!=(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 442);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 32))(v2) ^ 1;
}

uint64_t xgboost::BatchIterator<xgboost::CSCPage>::operator*(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 437);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 16))(v2);
}

uint64_t *xgboost::BatchIterator<xgboost::CSCPage>::operator++(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 431);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  (*(*v2 + 24))(v2);
  return a1;
}

void std::vector<std::pair<double,double>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::CSCPage>>::reset[abi:ne200100]<xgboost::BatchIteratorImpl<xgboost::CSCPage>,0>(a1, a2);
}

void sub_274CE5DDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274CE5EA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::CSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::CSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::CSCPage>,xgboost::BatchIteratorImpl<xgboost::CSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::CSCPage>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::CSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::CSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::CSCPage>,xgboost::BatchIteratorImpl<xgboost::CSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::CSCPage>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::CSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::CSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::CSCPage>,xgboost::BatchIteratorImpl<xgboost::CSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::CSCPage>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void xgboost::common::ParallelFor<unsigned int,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned int)#1}>(int a1, int a2, int a3, uint64_t a4, __int128 *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = a2;
  v23 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v20, &v23);
  }

  v24.__ptr_ = 0;
  v25.__m_.__sig = 850045863;
  memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        if (a1)
        {
          for (i = 0; i != a1; ++i)
          {
            v14 = a5[1];
            v20 = *a5;
            v21 = v14;
            v22 = *(a5 + 4);
            _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, i);
          }
        }
      }

      else if (a1)
      {
        for (j = 0; j != a1; ++j)
        {
          v18 = a5[1];
          v20 = *a5;
          v21 = v18;
          v22 = *(a5 + 4);
          _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, j);
        }
      }
    }

    else if (a3 == 3 && a1)
    {
      for (k = 0; k != a1; ++k)
      {
        v10 = a5[1];
        v20 = *a5;
        v21 = v10;
        v22 = *(a5 + 4);
        _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, k);
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        if (a1)
        {
          for (m = 0; m != a1; ++m)
          {
            v8 = a5[1];
            v20 = *a5;
            v21 = v8;
            v22 = *(a5 + 4);
            _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, m);
          }
        }
      }

      else if (a1)
      {
        for (n = 0; n != a1; ++n)
        {
          v16 = a5[1];
          v20 = *a5;
          v21 = v16;
          v22 = *(a5 + 4);
          _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, n);
        }
      }
    }
  }

  else if (a1)
  {
    for (ii = 0; ii != a1; ++ii)
    {
      v12 = a5[1];
      v20 = *a5;
      v21 = v12;
      v22 = *(a5 + 4);
      _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(&v24, &v20, ii);
    }
  }

  dmlc::OMPException::Rethrow(&v24);
  std::mutex::~mutex(&v25);
  std::exception_ptr::~exception_ptr(&v24);
  v19 = *MEMORY[0x277D85DE8];
}

void _ZN4dmlc12OMPException3RunIZN7xgboost6linear22ThriftyFeatureSelector5SetupERKNS2_3gbm13GBLinearModelERKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS9_9allocatorISD_EEEEPNS2_7DMatrixEffiEUlT_E_JjEEEvSL_DpT0_(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (*(*a2 + 8) + 8 * a3);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v6 = *(*a2 + 24);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = **(a2 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = **(a2 + 24);
    v11 = *(*(a2 + 16) + 88);
    v12 = v6 + 8 * v4 + 4;
    while (1)
    {
      v13 = v5;
      v14 = v5;
      v15 = v12;
      if (v5)
      {
        break;
      }

LABEL_12:
      if (++v9 == v8)
      {
        return;
      }
    }

    while (v13)
    {
      v16 = **(a2 + 32) + 8 * (v9 + *(v15 - 1) * v8);
      v17 = *(v16 + 4);
      if (v17 >= 0.0)
      {
        v18.i32[0] = *v16;
        v18.f32[1] = v17 * *v15;
        *(v11 + 16 * (a3 + v10 * v9)) = vaddq_f64(*(v11 + 16 * (a3 + v10 * v9)), vcvtq_f64_f32(vmul_n_f32(v18, *v15)));
      }

      v15 += 2;
      --v13;
      if (!--v14)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    std::terminate();
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v66 = *(a2 - 1);
        v67 = *v9;
        if (fabsf(*(*a3 + 4 * v66)) > fabsf(*(*a3 + 4 * *v9)))
        {
          *v9 = v66;
          *(a2 - 1) = v67;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v68 = v9 + 1;
      v69 = v9[1];
      v70 = v9 + 2;
      v71 = v9[2];
      v72 = *v9;
      v73 = *a3;
      v74 = fabsf(*(*a3 + 4 * v69));
      v75 = fabsf(*(*a3 + 4 * *v9));
      v76 = fabsf(*(*a3 + 4 * v71));
      if (v74 <= v75)
      {
        if (v76 <= v74)
        {
          goto LABEL_101;
        }

        *v68 = v71;
        *v70 = v69;
        v77 = v9;
        v78 = (v9 + 1);
        result = v69;
        if (v76 > v75)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v77 = v9;
        v78 = (v9 + 2);
        result = *v9;
        if (v76 <= v74)
        {
          *v9 = v69;
          v9[1] = v72;
          v77 = v9 + 1;
          v78 = (v9 + 2);
          result = v72;
          if (v76 <= v75)
          {
LABEL_101:
            v69 = v71;
            goto LABEL_102;
          }
        }

LABEL_97:
        *v77 = v71;
        *v78 = v72;
        v69 = result;
      }

LABEL_102:
      v81 = *(a2 - 1);
      if (fabsf(*(v73 + 4 * v81)) > fabsf(*(v73 + 4 * v69)))
      {
        *v70 = v81;
        *(a2 - 1) = v69;
        v82 = *v70;
        v83 = *v68;
        v84 = fabsf(*(v73 + 4 * v82));
        if (v84 > fabsf(*(v73 + 4 * v83)))
        {
          v9[1] = v82;
          v9[2] = v83;
          v85 = *v9;
          if (v84 > fabsf(*(v73 + 4 * *v9)))
          {
            *v9 = v82;
            v9[1] = v85;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = fabsf(*(*a3 + 4 * v16));
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = fabsf(*(v15 + 4 * *v13));
      v21 = fabsf(*(v15 + 4 * *v9));
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v9;
          if (fabsf(*(v15 + 4 * *v13)) > fabsf(*(v15 + 4 * *v9)))
          {
            *v9 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v28 = *(a2 - 1);
        if (fabsf(*(v15 + 4 * v28)) > v21)
        {
          *v13 = v28;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v29 = v13 - 1;
      v30 = *(v13 - 1);
      v31 = v9[1];
      v32 = fabsf(*(v15 + 4 * v30));
      v33 = fabsf(*(v15 + 4 * v31));
      v34 = *(a2 - 2);
      v35 = fabsf(*(v15 + 4 * v34));
      if (v32 <= v33)
      {
        if (v35 > v32)
        {
          *v29 = v34;
          *(a2 - 2) = v30;
          v36 = v9[1];
          if (fabsf(*(v15 + 4 * *v29)) > fabsf(*(v15 + 4 * v36)))
          {
            v9[1] = *v29;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v35 > v32)
        {
          v9[1] = v34;
          goto LABEL_43;
        }

        v9[1] = v30;
        *v29 = v31;
        v38 = *(a2 - 2);
        if (fabsf(*(v15 + 4 * v38)) > v33)
        {
          *v29 = v38;
LABEL_43:
          *(a2 - 2) = v31;
        }
      }

      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[2];
      v43 = fabsf(*(v15 + 4 * v41));
      v44 = fabsf(*(v15 + 4 * v42));
      v45 = *(a2 - 3);
      v46 = fabsf(*(v15 + 4 * v45));
      if (v43 <= v44)
      {
        if (v46 > v43)
        {
          *v39 = v45;
          *(a2 - 3) = v40;
          v47 = v9[2];
          if (fabsf(*(v15 + 4 * *v39)) > fabsf(*(v15 + 4 * v47)))
          {
            v9[2] = *v39;
            *v39 = v47;
          }
        }
      }

      else
      {
        if (v46 > v43)
        {
          v9[2] = v45;
          goto LABEL_52;
        }

        v9[2] = v40;
        *v39 = v42;
        v48 = *(a2 - 3);
        if (fabsf(*(v15 + 4 * v48)) > v44)
        {
          *v39 = v48;
LABEL_52:
          *(a2 - 3) = v42;
        }
      }

      v49 = *v14;
      v50 = *v29;
      v51 = fabsf(*(v15 + 4 * *v14));
      v52 = fabsf(*(v15 + 4 * *v29));
      v53 = *v39;
      v54 = fabsf(*(v15 + 4 * *v39));
      if (v51 <= v52)
      {
        if (v54 > v51)
        {
          *v14 = v53;
          *v39 = v49;
          v39 = v14;
          v49 = v50;
          if (v54 > v52)
          {
            goto LABEL_59;
          }

          v49 = v53;
        }
      }

      else
      {
        if (v54 <= v51)
        {
          *v29 = v49;
          *v14 = v50;
          v29 = v14;
          v49 = v53;
          if (v54 <= v52)
          {
            v49 = v50;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v29 = v53;
        *v39 = v50;
      }

LABEL_60:
      v55 = *v9;
      *v9 = v49;
      *v14 = v55;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = fabsf(*(v15 + 4 * *v9));
    v25 = fabsf(*(v15 + 4 * *v14));
    if (v24 > v25)
    {
      if (v17 > v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v37 = *(a2 - 1);
      if (fabsf(*(v15 + 4 * v37)) > v25)
      {
        *v9 = v37;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 <= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v27 = *v14;
    if (fabsf(*(v15 + 4 * *v9)) <= fabsf(*(v15 + 4 * *v14)))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v27;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (fabsf(*(v15 + 4 * *(v9 - 1))) <= fabsf(*(v15 + 4 * *v9)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v56 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_67;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, v56, a3);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v56 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v59 = *v9;
  v60 = v9[1];
  v61 = *a3;
  v62 = fabsf(*(*a3 + 4 * v60));
  v63 = fabsf(*(*a3 + 4 * *v9));
  v64 = *(a2 - 1);
  v65 = fabsf(*(*a3 + 4 * v64));
  if (v62 <= v63)
  {
    if (v65 > v62)
    {
      v9[1] = v64;
      *(a2 - 1) = v60;
      v80 = *v9;
      v79 = v9[1];
      if (fabsf(*(v61 + 4 * v79)) > fabsf(*(v61 + 4 * *v9)))
      {
        *v9 = v79;
        v9[1] = v80;
      }
    }
  }

  else
  {
    if (v65 <= v62)
    {
      *v9 = v60;
      v9[1] = v59;
      v86 = *(a2 - 1);
      if (fabsf(*(v61 + 4 * v86)) <= v63)
      {
        return result;
      }

      v9[1] = v86;
    }

    else
    {
      *v9 = v64;
    }

    *(a2 - 1) = v59;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = fabsf(*(*a6 + 4 * *a2));
  v10 = fabsf(*(*a6 + 4 * *result));
  v11 = *a3;
  v12 = fabsf(*(*a6 + 4 * *a3));
  if (v9 <= v10)
  {
    if (v12 <= v9)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v11;
      *a3 = v6;
      v13 = *result;
      if (fabsf(*(v8 + 4 * *a2)) > fabsf(*(v8 + 4 * *result)))
      {
        *result = *a2;
        *a2 = v13;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v12 > v9)
    {
      *result = v11;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (fabsf(*(v8 + 4 * *a3)) > v10)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (fabsf(*(v8 + 4 * *a4)) > fabsf(*(v8 + 4 * v6)))
  {
    *a3 = *a4;
    *a4 = v6;
    v14 = *a2;
    if (fabsf(*(v8 + 4 * *a3)) > fabsf(*(v8 + 4 * *a2)))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (fabsf(*(v8 + 4 * *a2)) > fabsf(*(v8 + 4 * *result)))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  v16 = *a4;
  if (fabsf(*(v8 + 4 * *a5)) > fabsf(*(v8 + 4 * *a4)))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (fabsf(*(v8 + 4 * *a4)) > fabsf(*(v8 + 4 * *a3)))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (fabsf(*(v8 + 4 * *a3)) > fabsf(*(v8 + 4 * *a2)))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (fabsf(*(v8 + 4 * *a2)) > fabsf(*(v8 + 4 * *result)))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      v5 = 8;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = fabsf(*(v4 + 4 * v7));
        if (v9 > fabsf(*(v4 + 4 * v8)))
        {
          v10 = v5;
          while (1)
          {
            *(result + v10) = v8;
            v11 = v10 - 8;
            if (v10 == 8)
            {
              break;
            }

            v8 = *(result + v10 - 16);
            v10 -= 8;
            if (v9 <= fabsf(*(v4 + 4 * v8)))
            {
              v12 = (result + v11);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v7;
        }

        v3 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = fabsf(*(v4 + 4 * v5));
        if (v7 > fabsf(*(v4 + 4 * v6)))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 > fabsf(*(v4 + 4 * v6)));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = fabsf(*(*a3 + 4 * *a1));
  if (v5 <= fabsf(*(*a3 + 4 * *(a2 - 1))))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 <= fabsf(*(v4 + 4 * *v6)));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 <= fabsf(*(v4 + 4 * v7)));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 > fabsf(*(v4 + 4 * v9)));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 <= fabsf(*(v4 + 4 * v12)));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 > fabsf(*(v4 + 4 * v13)));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = fabsf(*(*a3 + 4 * *a1));
  do
  {
    v7 = a1[++v3];
  }

  while (fabsf(*(v5 + 4 * v7)) > v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (fabsf(*(v5 + 4 * v11)) <= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (fabsf(*(v5 + 4 * v10)) <= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = &a1[v3];
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v7;
      do
      {
        v15 = v13[1];
        ++v13;
        v7 = v15;
      }

      while (fabsf(*(v5 + 4 * v15)) > v6);
      do
      {
        v16 = *--v14;
        v12 = v16;
      }

      while (fabsf(*(v5 + 4 * v16)) <= v6);
    }

    while (v13 < v14);
    v9 = v13 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = fabsf(*(*a3 + 4 * v7));
      v10 = fabsf(*(*a3 + 4 * *a1));
      v11 = *(a2 - 1);
      v12 = fabsf(*(*a3 + 4 * v11));
      if (v9 <= v10)
      {
        if (v12 > v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (fabsf(*(v8 + 4 * v35)) > fabsf(*(v8 + 4 * *a1)))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 <= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (fabsf(*(v8 + 4 * v51)) <= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *a3;
    v29 = fabsf(*(*a3 + 4 * v24));
    v30 = fabsf(*(*a3 + 4 * *a1));
    v31 = fabsf(*(*a3 + 4 * v26));
    if (v29 <= v30)
    {
      if (v31 <= v29)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 <= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (fabsf(*(v28 + 4 * v46)) > fabsf(*(v28 + 4 * v24)))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = fabsf(*(v28 + 4 * v47));
          if (v49 > fabsf(*(v28 + 4 * v48)))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 > fabsf(*(v28 + 4 * *a1)))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 <= v29)
      {
        *a1 = v24;
        a1[1] = v27;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v27;
        if (v31 <= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v27;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (fabsf(*(*a3 + 4 * v4)) > fabsf(*(*a3 + 4 * *a1)))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = fabsf(*(*a3 + 4 * v15));
  v19 = fabsf(*(*a3 + 4 * *a1));
  v20 = fabsf(*(*a3 + 4 * v13));
  if (v18 > v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v18)
    {
      *a1 = v15;
      a1[1] = v16;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v16;
    goto LABEL_27;
  }

  if (v20 > v18)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = fabsf(*(v17 + 4 * *v37));
    if (v42 > fabsf(*(v17 + 4 * v41)))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 <= fabsf(*(v17 + 4 * v41)))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (fabsf(*(*a4 + 4 * *v12)) > fabsf(*(*a4 + 4 * *a1)))
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && fabsf(*(v9 + 4 * *v7)) > fabsf(*(v9 + 4 * v7[1])))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = fabsf(*(v9 + 4 * *a4));
      if (fabsf(*(v9 + 4 * *v7)) <= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v4 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && fabsf(*(v9 + 4 * *v7)) > fabsf(*(v9 + 4 * v7[1])))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (fabsf(*(v9 + 4 * *v7)) <= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      if (fabsf(*(v4 + 4 * *(v9 - 1))) > fabsf(*(v4 + 4 * v10)))
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::linear::ThriftyFeatureSelector::Setup(xgboost::gbm::GBLinearModel const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float,int)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *a3;
    v11 = fabsf(*(*a3 + 4 * v9));
    if (fabsf(*(*a3 + 4 * *v5)) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (fabsf(*(v10 + 4 * *v5)) > v11);
      *v12 = v8;
    }
  }

  return result;
}

void xgboost::linear::GreedyFeatureSelector::~GreedyFeatureSelector(xgboost::linear::GreedyFeatureSelector *this)
{
  *this = &unk_2883DEA28;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_2883DEA28;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::linear::GreedyFeatureSelector::Setup(std::vector<unsigned int> *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(*(a2 + 152) + 8);
  if (a5 < 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = a5;
  }

  p_end_cap = &this->__end_cap_;
  value = this->__end_cap_.__value_;
  HIDWORD(this->__end_) = v6;
  if (this[1].__begin_ == value)
  {
    std::vector<float>::resize(&this->__end_cap_, v5);
    std::vector<std::pair<double,double>>::resize(&this[1].__end_cap_.__value_, (*(*(a2 + 152) + 4) * v5));
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = p_end_cap->__value_;

  bzero(v9, 4 * v5);
}

uint64_t xgboost::linear::GreedyFeatureSelector::NextFeature(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v21 = a4;
  v6 = *(a1 + 16);
  v7 = *(v6 + 4 * a4);
  v8 = v7 + 1;
  *(v6 + 4 * a4) = v7 + 1;
  if (v7 < *(a1 + 12))
  {
    v9 = *(a3 + 152);
    if (v8 != *(v9 + 4))
    {
      v13 = *(v9 + 8);
      v19 = *(v9 + 4);
      v20 = v13;
      v14 = *(a1 + 40);
      v15 = *(a1 + 48) - v14;
      if (v15 >= 1)
      {
        bzero(v14, v15);
      }

      (*(*a6 + 80))(&v17, a6);
      v16[2] = v17;
      v16[3] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(v16, 0);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_274CE7A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor<unsigned int,xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda(unsigned int)#1}>(int a1, int a2, int a3, uint64_t a4, __int128 *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = a2;
  v23 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v20, &v23);
  }

  v24.__ptr_ = 0;
  v25.__m_.__sig = 850045863;
  memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        if (a1)
        {
          for (i = 0; i != a1; ++i)
          {
            v14 = a5[1];
            v20 = *a5;
            v21 = v14;
            v22 = a5[2];
            dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, i);
          }
        }
      }

      else if (a1)
      {
        for (j = 0; j != a1; ++j)
        {
          v18 = a5[1];
          v20 = *a5;
          v21 = v18;
          v22 = a5[2];
          dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, j);
        }
      }
    }

    else if (a3 == 3 && a1)
    {
      for (k = 0; k != a1; ++k)
      {
        v10 = a5[1];
        v20 = *a5;
        v21 = v10;
        v22 = a5[2];
        dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, k);
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        if (a1)
        {
          for (m = 0; m != a1; ++m)
          {
            v8 = a5[1];
            v20 = *a5;
            v21 = v8;
            v22 = a5[2];
            dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, m);
          }
        }
      }

      else if (a1)
      {
        for (n = 0; n != a1; ++n)
        {
          v16 = a5[1];
          v20 = *a5;
          v21 = v16;
          v22 = a5[2];
          dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, n);
        }
      }
    }
  }

  else if (a1)
  {
    for (ii = 0; ii != a1; ++ii)
    {
      v12 = a5[1];
      v20 = *a5;
      v21 = v12;
      v22 = a5[2];
      dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda#1},unsigned int>(&v24, &v20, ii);
    }
  }

  dmlc::OMPException::Rethrow(&v24);
  std::mutex::~mutex(&v25);
  std::exception_ptr::~exception_ptr(&v24);
  v19 = *MEMORY[0x277D85DE8];
}

void dmlc::OMPException::Run<xgboost::linear::GreedyFeatureSelector::NextFeature(int,xgboost::gbm::GBLinearModel const&,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,float,float)::{lambda(unsigned int)#1},unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (*(*a2 + 8) + 8 * a3);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v6 = *(*a2 + 24);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  v8 = v5;
  if (v5)
  {
    v9 = **(a2 + 16);
    v10 = a3 + **(a2 + 24) * v9;
    v11 = *(*(a2 + 8) + 40);
    v12 = (v6 + 8 * v4 + 4);
    while (v5)
    {
      v13 = **(a2 + 32) + 8 * (v9 + **(a2 + 40) * *(v12 - 1));
      v14 = *(v13 + 4);
      if (v14 >= 0.0)
      {
        v15.i32[0] = *v13;
        v15.f32[1] = v14 * *v12;
        *(v11 + 16 * v10) = vaddq_f64(*(v11 + 16 * v10), vcvtq_f64_f32(vmul_n_f32(v15, *v12)));
      }

      v12 += 2;
      --v5;
      if (!--v8)
      {
        return;
      }
    }

LABEL_12:
    std::terminate();
  }
}

double xgboost::linear::GetBiasGradientParallel(int a1, int a2, uint64_t a3, uint64_t (***a4)(void), int a5)
{
  v20 = a2;
  v21 = a1;
  v7 = *(**a4)(a4);
  *&v22 = 0;
  std::vector<double>::vector[abi:ne200100](&__p, a5);
  *&v22 = 0;
  std::vector<double>::vector[abi:ne200100](&v16, a5);
  *&v22 = a3;
  *(&v22 + 1) = &v20;
  v23 = &v21;
  p_p = &__p;
  v25 = &v16;
  xgboost::common::ParallelFor<unsigned int,xgboost::linear::GetBiasGradientParallel(int,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,int)::{lambda#1}>(v7, a5, 2, 0, &v22);
  v8 = __p;
  v9 = 0.0;
  if (__p != v19)
  {
    v10 = __p;
    do
    {
      v11 = *v10++;
      v9 = v9 + v11;
    }

    while (v10 != v19);
  }

  if (v16 != v17)
  {
    v12 = 0.0;
    v13 = v16;
    do
    {
      v14 = *v13++;
      v12 = v12 + v14;
    }

    while (v13 != v17);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
    v8 = __p;
  }

  if (v8)
  {
    v19 = v8;
    operator delete(v8);
  }

  return v9;
}

void sub_274CE7FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274CE80EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor<unsigned int,xgboost::linear::GetBiasGradientParallel(int,int,std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,int)::{lambda(unsigned int)#1}>(int a1, int a2, int a3, uint64_t a4, __int128 *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = a2;
  v23 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v20, &v23);
  }

  v24.__ptr_ = 0;
  v25.__m_.__sig = 850045863;
  memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        if (a1)
        {
          for (i = 0; i != a1; ++i)
          {
            v14 = a5[1];
            v20 = *a5;
            v21 = v14;
            v22 = *(a5 + 4);
            _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, i);
          }
        }
      }

      else if (a1)
      {
        for (j = 0; j != a1; ++j)
        {
          v18 = a5[1];
          v20 = *a5;
          v21 = v18;
          v22 = *(a5 + 4);
          _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, j);
        }
      }
    }

    else if (a3 == 3 && a1)
    {
      for (k = 0; k != a1; ++k)
      {
        v10 = a5[1];
        v20 = *a5;
        v21 = v10;
        v22 = *(a5 + 4);
        _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, k);
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        if (a1)
        {
          for (m = 0; m != a1; ++m)
          {
            v8 = a5[1];
            v20 = *a5;
            v21 = v8;
            v22 = *(a5 + 4);
            _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, m);
          }
        }
      }

      else if (a1)
      {
        for (n = 0; n != a1; ++n)
        {
          v16 = a5[1];
          v20 = *a5;
          v21 = v16;
          v22 = *(a5 + 4);
          _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, n);
        }
      }
    }
  }

  else if (a1)
  {
    for (ii = 0; ii != a1; ++ii)
    {
      v12 = a5[1];
      v20 = *a5;
      v21 = v12;
      v22 = *(a5 + 4);
      _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(&v24, &v20, ii);
    }
  }

  dmlc::OMPException::Rethrow(&v24);
  std::mutex::~mutex(&v25);
  std::exception_ptr::~exception_ptr(&v24);
  v19 = *MEMORY[0x277D85DE8];
}

double _ZN4dmlc12OMPException3RunIZN7xgboost6linear23GetBiasGradientParallelEiiRKNSt3__16vectorINS2_6detail20GradientPairInternalIfEENS4_9allocatorIS8_EEEEPNS2_7DMatrixEiEUlT_E_JjEEEvSG_DpT0_(uint64_t a1, uint64_t a2, int a3)
{
  v3 = **a2 + 8 * (**(a2 + 16) + **(a2 + 8) * a3);
  LODWORD(result) = *(v3 + 4);
  if (*&result >= 0.0)
  {
    v5 = *(a2 + 32);
    ***(a2 + 24) = ***(a2 + 24) + *v3;
    result = **v5 + *&result;
    **v5 = result;
  }

  return result;
}

void xgboost::common::ParallelFor<unsigned int,xgboost::linear::UpdateBiasResidualParallel(int,int,float,std::vector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,int)::{lambda(unsigned int)#1}>(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t ***a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = 1;
  v43 = a2;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v43, &v42);
  }

  v44.__ptr_ = 0;
  v45.__m_.__sig = 850045863;
  memset(v45.__m_.__opaque, 0, sizeof(v45.__m_.__opaque));
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        if (a1)
        {
          v23 = *a5[1];
          v24 = *a5[2];
          v25 = ***a5;
          v26 = a1;
          do
          {
            v27 = (v25 + 8 * v24);
            v28 = v27[1];
            if (v28 >= 0.0)
            {
              *v27 = (v28 * *a5[3]) + *v27;
              v27[1] = v28 + 0.0;
            }

            v24 += v23;
            --v26;
          }

          while (v26);
        }
      }

      else if (a1)
      {
        v35 = *a5[1];
        v36 = *a5[2];
        v37 = ***a5;
        v38 = a1;
        do
        {
          v39 = (v37 + 8 * v36);
          v40 = v39[1];
          if (v40 >= 0.0)
          {
            *v39 = (v40 * *a5[3]) + *v39;
            v39[1] = v40 + 0.0;
          }

          v36 += v35;
          --v38;
        }

        while (v38);
      }
    }

    else if (a3 == 3 && a1)
    {
      v11 = *a5[1];
      v12 = *a5[2];
      v13 = ***a5;
      v14 = a1;
      do
      {
        v15 = (v13 + 8 * v12);
        v16 = v15[1];
        if (v16 >= 0.0)
        {
          *v15 = (v16 * *a5[3]) + *v15;
          v15[1] = v16 + 0.0;
        }

        v12 += v11;
        --v14;
      }

      while (v14);
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        if (a1)
        {
          v5 = *a5[1];
          v6 = *a5[2];
          v7 = ***a5;
          v8 = a1;
          do
          {
            v9 = (v7 + 8 * v6);
            v10 = v9[1];
            if (v10 >= 0.0)
            {
              *v9 = (v10 * *a5[3]) + *v9;
              v9[1] = v10 + 0.0;
            }

            v6 += v5;
            --v8;
          }

          while (v8);
        }
      }

      else if (a1)
      {
        v29 = *a5[1];
        v30 = *a5[2];
        v31 = ***a5;
        v32 = a1;
        do
        {
          v33 = (v31 + 8 * v30);
          v34 = v33[1];
          if (v34 >= 0.0)
          {
            *v33 = (v34 * *a5[3]) + *v33;
            v33[1] = v34 + 0.0;
          }

          v30 += v29;
          --v32;
        }

        while (v32);
      }
    }
  }

  else if (a1)
  {
    v17 = *a5[1];
    v18 = *a5[2];
    v19 = ***a5;
    v20 = a1;
    do
    {
      v21 = (v19 + 8 * v18);
      v22 = v21[1];
      if (v22 >= 0.0)
      {
        *v21 = (v22 * *a5[3]) + *v21;
        v21[1] = v22 + 0.0;
      }

      v18 += v17;
      --v20;
    }

    while (v20);
  }

  dmlc::OMPException::Rethrow(&v44);
  std::mutex::~mutex(&v45);
  std::exception_ptr::~exception_ptr(&v44);
  v41 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_274CE8B88(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::target_type()
{
}

{
}

{
}

{
}

{
}

void xgboost::metric::EvalAMS::~EvalAMS(void **this)
{
  *this = &unk_2883DEBF8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2883DEBF8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::Metric::SaveConfig(xgboost::Metric *this, xgboost::Json *a2)
{
  v3 = (*(*this + 48))(this);
  std::string::basic_string[abi:ne200100]<0>(v5, v3);
  v7 = &unk_2883E6F38;
  v8 = 0;
  *v9 = *v5;
  v10 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274CE8DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::metric::EvalAMS::Eval(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v46);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/rank_metric.cc", 107);
    v37 = dmlc::LogMessageFatal::GetEntry(&v46);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Check failed: !distributed", 26);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "metric AMS do not support distributed evaluation", 48);
    dmlc::LogMessageFatal::~LogMessageFatal(&v46);
  }

  v7 = *(a3[3] + 8) - *a3[3];
  v8 = v7 >> 2;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if ((v7 >> 2))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v43, (v7 >> 2));
  }

  v9 = *a2;
  v46.__ptr_ = 0;
  v47[0].__m_.__sig = 850045863;
  memset(v47[0].__m_.__opaque, 0, sizeof(v47[0].__m_.__opaque));
  dmlc::OMPException::Rethrow(&v46);
  std::mutex::~mutex(v47);
  std::exception_ptr::~exception_ptr(&v46);
  v46.__ptr_ = xgboost::common::CmpFirst;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,false>(v43, v44, &v46, 0, 1);
  *&v11 = *(a1 + 40) * v8;
  if (*&v11)
  {
    v12 = *&v11;
  }

  else
  {
    v12 = v8;
  }

  if (v8 - 1 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = (v8 - 1);
  }

  if (v13)
  {
    v40 = v8;
    v14 = 0;
    v15 = a3[3];
    v16 = *v15;
    v17 = (v15[1] - *v15) >> 2;
    v18 = a3[5];
    v19 = a3[9];
    v21 = *v19;
    v20 = v19[1];
    v22 = (v43 + 8);
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      v26 = *(v22 - 1);
      v27 = 1.0;
      if (v20 != v21)
      {
        v27 = *(v21 + 4 * v26);
      }

      v28 = v18 * v26;
      if (v28 >= v17)
      {
        __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
      }

      v29 = v25 + v27;
      v30 = v24 + v27;
      if (*(v16 + 4 * v28) <= 0.5)
      {
        v24 = v30;
      }

      else
      {
        v25 = v29;
      }

      LODWORD(v11) = *(v22 - 2);
      v10.n128_u32[0] = *v22;
      if (*&v11 != *v22)
      {
        v31 = log(v25 / (v24 + 10.0) + 1.0);
        v11 = sqrt(-(v25 - (v25 + v24 + 10.0) * v31) - (v25 - (v25 + v24 + 10.0) * v31));
        if (v23 < v11)
        {
          v23 = v11;
        }
      }

      ++v14;
      v22 += 2;
    }

    while (v13 != v14);
    LODWORD(v8) = v40;
  }

  else
  {
    v25 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
  }

  if (v12 == v8)
  {
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v11, v10) + 4) >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/rank_metric.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v46, __p, 140, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "best-ams-ratio=", 15);
      std::ostream::operator<<();
      xgboost::ConsoleLogger::~ConsoleLogger(&v46);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v32 = log(v25 / (v24 + 10.0) + 1.0);
    v23 = sqrt(-(v25 - (v25 + v24 + 10.0) * v32) - (v25 - (v25 + v24 + 10.0) * v32));
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t xgboost::metric::EvalAMS::Name(xgboost::metric::EvalAMS *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

BOOL xgboost::common::CmpFirst(float *a1, float *a2)
{
  return *a1 > *a2;
}

{
  return *a1 > *a2;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,false>(_DWORD *a1, char *a2, unsigned int (**a3)(uint64_t, uint64_t, float), uint64_t a4, char a5)
{
  while (2)
  {
    v9 = a2 - 8;
    v148 = a2 - 12;
    v149 = a2 - 4;
    v151 = a2 - 24;
    v152 = a2 - 16;
    v147 = a2 - 20;
    v10 = a1;
    v150 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = (a2 - v10) >> 3;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v100 = v10 + 2;
                v101 = (*a3)(v10 + 2, v10);
                v102 = (*a3)(v9, v10 + 2);
                if (v101)
                {
                  v103 = v10 + 1;
                  v104 = *v10;
                  if (v102)
                  {
                    *v10 = *(a2 - 2);
                  }

                  else
                  {
                    *v10 = v10[2];
                    v10[2] = v104;
                    v103 = v10 + 3;
                    v145 = v10[1];
                    v10[1] = v10[3];
                    v10[3] = v145;
                    if (!(*a3)(v9, v10 + 2))
                    {
                      return;
                    }

                    v104 = *v100;
                    *v100 = *(a2 - 2);
                  }

                  *(a2 - 2) = v104;
                }

                else
                {
                  if (!v102)
                  {
                    return;
                  }

                  v137 = v10[2];
                  v10[2] = *(a2 - 2);
                  *(a2 - 2) = v137;
                  v138 = v10[3];
                  v149 = (v10 + 3);
                  v10[3] = *(a2 - 1);
                  *(a2 - 1) = v138;
                  if (!(*a3)(v10 + 2, v10))
                  {
                    return;
                  }

                  v139 = *v10;
                  *v10 = v10[2];
                  v10[2] = v139;
                  v103 = v10 + 1;
                }

                v146 = *v103;
                *v103 = *v149;
                *v149 = v146;
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,0>(v10, v10 + 2, v10 + 4, v9, a3);
                return;
              case 5:
                v88 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,0>(v10, v10 + 2, v10 + 4, v10 + 6, a3);
                if ((*a3)(v9, (v10 + 6), v88))
                {
                  v89 = v10[6];
                  v10[6] = *(a2 - 2);
                  *(a2 - 2) = v89;
                  v90 = v10[7];
                  v10[7] = *(a2 - 1);
                  *(a2 - 1) = v90;
                  if ((*a3)(v10 + 6, v10 + 4))
                  {
                    v91 = v10[4];
                    v10[4] = v10[6];
                    v10[6] = v91;
                    v92 = v10[5];
                    v10[5] = v10[7];
                    v10[7] = v92;
                    if ((*a3)(v10 + 4, v10 + 2))
                    {
                      v93 = v10[2];
                      v10[2] = v10[4];
                      v10[4] = v93;
                      v94 = v10[3];
                      v10[3] = v10[5];
                      v10[5] = v94;
                      if ((*a3)(v10 + 2, v10))
                      {
                        v95 = *v10;
                        *v10 = v10[2];
                        v10[2] = v95;
                        v96 = v10[1];
                        v10[1] = v10[3];
                        v10[3] = v96;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              if ((*a3)(v9, v10))
              {
                v98 = *v10;
                *v10 = *(a2 - 2);
                *(a2 - 2) = v98;
                v99 = v10[1];
                v10[1] = *(a2 - 1);
                *(a2 - 1) = v99;
              }

              return;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v105 = v10 + 2;
                if (v10 + 2 != a2)
                {
                  v106 = 0;
                  v107 = v10;
                  do
                  {
                    v108 = v107;
                    v107 = v105;
                    if ((*a3)(v105, v108))
                    {
                      v155 = *v107;
                      v109 = v106;
                      while (1)
                      {
                        v110 = v10 + v109;
                        *(v110 + 2) = *(v10 + v109);
                        *(v110 + 3) = *(v10 + v109 + 4);
                        if (!v109)
                        {
                          break;
                        }

                        v109 -= 8;
                        if (((*a3)(&v155, v10 + v109) & 1) == 0)
                        {
                          v111 = (v10 + v109 + 8);
                          goto LABEL_128;
                        }
                      }

                      v111 = v10;
LABEL_128:
                      *v111 = v155;
                    }

                    v105 = v107 + 1;
                    v106 += 8;
                  }

                  while (v107 + 1 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v140 = v10 + 2;
              if (v10 + 2 != a2)
              {
                v141 = v10 - 2;
                do
                {
                  v142 = a1;
                  a1 = v140;
                  if ((*a3)(v140, v142))
                  {
                    v155 = *a1;
                    v143 = v141;
                    do
                    {
                      v143[4] = v143[2];
                      v143[5] = v143[3];
                      v144 = (*a3)(&v155, v143);
                      v143 -= 2;
                    }

                    while ((v144 & 1) != 0);
                    *(v143 + 2) = v155;
                  }

                  v140 = a1 + 2;
                  v141 += 2;
                }

                while (a1 + 2 != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v112 = v12 >> 1;
              v113 = v12 >> 1;
              do
              {
                v114 = v113;
                if (v112 >= v113)
                {
                  v115 = (2 * v113) | 1;
                  v116 = &a1[2 * v115];
                  if (2 * v113 + 2 < v11 && (*a3)(&a1[2 * v115], v116 + 2))
                  {
                    v116 += 2;
                    v115 = 2 * v114 + 2;
                  }

                  v117 = &a1[2 * v114];
                  if (((*a3)(v116, v117) & 1) == 0)
                  {
                    v155 = *v117;
                    do
                    {
                      v118 = v116;
                      *v117 = *v116;
                      v117[1] = v116[1];
                      if (v112 < v115)
                      {
                        break;
                      }

                      v119 = (2 * v115) | 1;
                      v116 = &a1[2 * v119];
                      v120 = 2 * v115 + 2;
                      if (v120 < v11 && (*a3)(&a1[2 * v119], v116 + 2))
                      {
                        v116 += 2;
                        v119 = v120;
                      }

                      v117 = v118;
                      v115 = v119;
                    }

                    while (!(*a3)(v116, &v155));
                    *v118 = v155;
                  }
                }

                v113 = v114 - 1;
              }

              while (v114);
              v121 = v150;
              do
              {
                v122 = 0;
                v123 = *a1;
                v154 = a1[1];
                v124 = a1;
                do
                {
                  v125 = &v124[8 * v122];
                  v126 = v125 + 8;
                  v127 = (2 * v122) | 1;
                  v128 = 2 * v122 + 2;
                  if (v128 < v11)
                  {
                    v129 = v125 + 16;
                    if ((*a3)(v125 + 8, v125 + 16))
                    {
                      v126 = v129;
                      v127 = v128;
                    }
                  }

                  *v124 = *v126;
                  *(v124 + 1) = *(v126 + 1);
                  v124 = v126;
                  v122 = v127;
                }

                while (v127 <= ((v11 - 2) >> 1));
                v130 = v121 - 8;
                if (v126 == v121 - 8)
                {
                  *v126 = v123;
                  *(v126 + 1) = v154;
                }

                else
                {
                  *v126 = *(v121 - 2);
                  *(v126 + 1) = *(v121 - 1);
                  *(v121 - 2) = v123;
                  *(v121 - 1) = v154;
                  v131 = (v126 - a1 + 8) >> 3;
                  v132 = v131 < 2;
                  v133 = v131 - 2;
                  if (!v132)
                  {
                    v134 = v133 >> 1;
                    v135 = &a1[2 * (v133 >> 1)];
                    if ((*a3)(v135, v126))
                    {
                      v155 = *v126;
                      do
                      {
                        v136 = v135;
                        *v126 = *v135;
                        *(v126 + 1) = *(v135 + 1);
                        if (!v134)
                        {
                          break;
                        }

                        v134 = (v134 - 1) >> 1;
                        v135 = &a1[2 * v134];
                        v126 = v136;
                      }

                      while (((*a3)(v135, &v155) & 1) != 0);
                      *v136 = v155;
                    }
                  }
                }

                v121 = v130;
                v132 = v11-- <= 2;
              }

              while (!v132);
            }

            return;
          }

          v13 = &v10[2 * (v11 >> 1)];
          v14 = *a3;
          if (v11 >= 0x81)
          {
            v15 = (v14)(&a1[2 * (v11 >> 1)], a1);
            v16 = (*a3)(v9, v13);
            if (v15)
            {
              v17 = a1 + 1;
              v18 = *a1;
              if (v16)
              {
                *a1 = *v9;
              }

              else
              {
                *a1 = *v13;
                *v13 = v18;
                v17 = v13 + 1;
                v31 = a1[1];
                a1[1] = v13[1];
                v13[1] = v31;
                if (!(*a3)(v9, v13))
                {
                  goto LABEL_28;
                }

                v18 = *v13;
                *v13 = *v9;
              }

              *v9 = v18;
              v25 = v149;
            }

            else
            {
              if (!v16 || (v23 = *v13, *v13 = *(a2 - 2), *(a2 - 2) = v23, v25 = (v13 + 1), v24 = v13[1], v13[1] = *(a2 - 1), *(a2 - 1) = v24, !(*a3)(v13, a1)))
              {
LABEL_28:
                v33 = a1 + 2;
                v34 = v13 - 2;
                v35 = (*a3)(v13 - 2, a1 + 2);
                v36 = (*a3)(v152, v13 - 2);
                if (v35)
                {
                  v37 = a1[2];
                  v38 = a1 + 3;
                  if (v36)
                  {
                    *v33 = *v152;
                    *v152 = v37;
                  }

                  else
                  {
                    *v33 = *v34;
                    *v34 = v37;
                    v44 = *v38;
                    *v38 = *(v13 - 1);
                    *(v13 - 1) = v44;
                    if (!(*a3)(v152, v13 - 2))
                    {
                      goto LABEL_41;
                    }

                    v45 = *v34;
                    *v34 = *v152;
                    *v152 = v45;
                    v38 = v13 - 1;
                  }

                  v41 = v148;
                }

                else
                {
                  if (!v36 || (v39 = *v34, *v34 = *(a2 - 4), *(a2 - 4) = v39, v41 = (v13 - 1), v40 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v40, !(*a3)(v13 - 2, a1 + 2)))
                  {
LABEL_41:
                    v47 = a1 + 4;
                    v48 = v13 + 2;
                    v49 = (*a3)(v13 + 2, a1 + 4);
                    v50 = (*a3)(v151, v13 + 2);
                    if (v49)
                    {
                      v51 = a1[4];
                      v52 = a1 + 5;
                      if (v50)
                      {
                        a2 = v150;
                        *v47 = *v151;
                        *v151 = v51;
                      }

                      else
                      {
                        *v47 = *v48;
                        *v48 = v51;
                        v57 = *v52;
                        *v52 = v13[3];
                        v13[3] = v57;
                        a2 = v150;
                        if (!(*a3)(v151, v13 + 2))
                        {
                          goto LABEL_51;
                        }

                        v58 = *v48;
                        *v48 = *v151;
                        *v151 = v58;
                        v52 = v13 + 3;
                      }

                      v55 = v147;
                    }

                    else
                    {
                      a2 = v150;
                      if (!v50 || (v53 = *v48, *v48 = *(v150 - 6), *(v150 - 6) = v53, v55 = (v13 + 3), v54 = v13[3], v13[3] = *(v150 - 5), *(v150 - 5) = v54, !(*a3)(v13 + 2, a1 + 4)))
                      {
LABEL_51:
                        v60 = (*a3)(v13, v13 - 2);
                        v61 = (*a3)(v13 + 2, v13);
                        if (v60)
                        {
                          v62 = *v34;
                          if (v61)
                          {
                            *v34 = *v48;
                            *v48 = v62;
                            v63 = v13 + 3;
                            v64 = *v13;
                            v65 = v13 - 1;
                          }

                          else
                          {
                            *v34 = *v13;
                            *v13 = v62;
                            v70 = *(v13 - 1);
                            *(v13 - 1) = v13[1];
                            v13[1] = v70;
                            v71 = (*a3)(v13 + 2, v13);
                            v64 = *v13;
                            if (!v71)
                            {
LABEL_61:
                              v74 = *a1;
                              *a1 = v64;
                              v21 = a1 + 1;
                              *v13 = v74;
                              v30 = (v13 + 1);
                              goto LABEL_62;
                            }

                            v72 = *v48;
                            *v13 = *v48;
                            *v48 = v64;
                            v63 = v13 + 3;
                            v64 = v72;
                            v65 = v13 + 1;
                          }

                          v67 = v63;
                        }

                        else
                        {
                          v64 = *v13;
                          if (!v61)
                          {
                            goto LABEL_61;
                          }

                          *v13 = *v48;
                          *v48 = v64;
                          v67 = v13 + 1;
                          v66 = v13[1];
                          v13[1] = v13[3];
                          v13[3] = v66;
                          v68 = (*a3)(v13, v13 - 2);
                          v64 = *v13;
                          if (!v68)
                          {
                            goto LABEL_61;
                          }

                          v69 = *v34;
                          *v34 = v64;
                          v65 = v13 - 1;
                          *v13 = v69;
                          v64 = v69;
                        }

                        v73 = *v65;
                        *v65 = *v67;
                        *v67 = v73;
                        goto LABEL_61;
                      }

                      v56 = a1[4];
                      a1[4] = *v48;
                      *v48 = v56;
                      v52 = a1 + 5;
                    }

                    v59 = *v52;
                    *v52 = *v55;
                    *v55 = v59;
                    goto LABEL_51;
                  }

                  v42 = a1[2];
                  a1[2] = *v34;
                  *v34 = v42;
                  v38 = a1 + 3;
                }

                v46 = *v38;
                *v38 = *v41;
                *v41 = v46;
                goto LABEL_41;
              }

              v26 = *a1;
              *a1 = *v13;
              v17 = a1 + 1;
              *v13 = v26;
            }

            v32 = *v17;
            *v17 = *v25;
            *v25 = v32;
            goto LABEL_28;
          }

          v19 = (v14)(a1, &a1[2 * (v11 >> 1)]);
          v20 = (*a3)(v9, a1);
          if (v19)
          {
            v21 = v13 + 1;
            v22 = *v13;
            if (v20)
            {
              *v13 = *v9;
LABEL_36:
              *v9 = v22;
              v30 = v149;
              goto LABEL_62;
            }

            *v13 = *a1;
            *a1 = v22;
            v21 = a1 + 1;
            v43 = v13[1];
            v13[1] = a1[1];
            a1[1] = v43;
            if ((*a3)(v9, a1))
            {
              v22 = *a1;
              *a1 = *v9;
              goto LABEL_36;
            }
          }

          else if (v20)
          {
            v27 = *a1;
            *a1 = *(a2 - 2);
            *(a2 - 2) = v27;
            v28 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v28;
            if ((*a3)(a1, v13))
            {
              v29 = *v13;
              *v13 = *a1;
              *a1 = v29;
              v21 = v13 + 1;
              v30 = (a1 + 1);
LABEL_62:
              v75 = *v21;
              *v21 = *v30;
              *v30 = v75;
            }
          }

          --a4;
          if (a5 & 1) != 0 || ((*a3)(a1 - 2, a1))
          {
            break;
          }

          v155 = *a1;
          if ((*a3)(&v155, v9))
          {
            v10 = a1;
            do
            {
              v10 += 2;
            }

            while (((*a3)(&v155, v10) & 1) == 0);
          }

          else
          {
            v83 = (a1 + 2);
            do
            {
              v10 = v83;
              if (v83 >= a2)
              {
                break;
              }

              v84 = (*a3)(&v155, v83);
              v83 = (v10 + 2);
            }

            while (!v84);
          }

          v85 = a2;
          if (v10 < a2)
          {
            v85 = a2;
            do
            {
              v85 -= 8;
            }

            while (((*a3)(&v155, v85) & 1) != 0);
          }

          while (v10 < v85)
          {
            v86 = *v10;
            *v10 = *v85;
            *v85 = v86;
            v87 = v10[1];
            v10[1] = *(v85 + 1);
            *(v85 + 1) = v87;
            do
            {
              v10 += 2;
            }

            while (!(*a3)(&v155, v10));
            do
            {
              v85 -= 8;
            }

            while (((*a3)(&v155, v85) & 1) != 0);
          }

          if (v10 - 2 != a1)
          {
            *a1 = *(v10 - 2);
            a1[1] = *(v10 - 1);
          }

          a5 = 0;
          *(v10 - 1) = v155;
        }

        v76 = 0;
        v155 = *a1;
        do
        {
          v76 += 2;
        }

        while (((*a3)(&a1[v76], &v155) & 1) != 0);
        v77 = &a1[v76];
        v78 = a2;
        if (v76 == 2)
        {
          v78 = a2;
          do
          {
            if (v77 >= v78)
            {
              break;
            }

            v78 -= 8;
          }

          while (((*a3)(v78, &v155) & 1) == 0);
        }

        else
        {
          do
          {
            v78 -= 8;
          }

          while (!(*a3)(v78, &v155));
        }

        v10 = &a1[v76];
        if (v77 < v78)
        {
          v79 = v78;
          do
          {
            v80 = *v10;
            *v10 = *v79;
            *v79 = v80;
            v81 = v10[1];
            v10[1] = *(v79 + 1);
            *(v79 + 1) = v81;
            do
            {
              v10 += 2;
            }

            while (((*a3)(v10, &v155) & 1) != 0);
            do
            {
              v79 -= 8;
            }

            while (!(*a3)(v79, &v155));
          }

          while (v10 < v79);
        }

        if (v10 - 2 != a1)
        {
          *a1 = *(v10 - 2);
          a1[1] = *(v10 - 1);
        }

        *(v10 - 1) = v155;
        if (v77 >= v78)
        {
          break;
        }

LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,false>(a1, v10 - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      v82 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*>(a1, v10 - 8, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*>(v10, a2, a3))
      {
        break;
      }

      if (!v82)
      {
        goto LABEL_84;
      }
    }

    a2 = (v10 - 2);
    if (!v82)
    {
      continue;
    }

    break;
  }
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v12 = a1 + 1;
    v13 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v13;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v13;
    v12 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*a5)(a3, a2))
    {
      v13 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v12 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v12;
      *v12 = *v16;
      *v16 = v19;
    }
  }

  if ((*a5)(a4, a3))
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    if ((*a5)(a3, a2))
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      if ((*a5)(a2, a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v25 = a1[1];
        a1[1] = a2[1];
        a2[1] = v25;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*>(_DWORD *a1, char *a2, unsigned int (**a3)(uint64_t, uint64_t, float))
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v18 = a1 + 2;
      v19 = (*a3)(a1 + 2, a1);
      v20 = (*a3)(a2 - 8, a1 + 2);
      if (v19)
      {
        v21 = a1 + 1;
        v22 = *a1;
        if (v20)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          *a1 = a1[2];
          a1[2] = v22;
          v21 = a1 + 3;
          v36 = a1[1];
          a1[1] = a1[3];
          a1[3] = v36;
          if (!(*a3)(a2 - 8, a1 + 2))
          {
            return 1;
          }

          v22 = *v18;
          *v18 = *(a2 - 2);
        }

        *(a2 - 2) = v22;
        v30 = a2 - 4;
      }

      else
      {
        if (!v20)
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v28;
        v30 = (a1 + 3);
        v29 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v29;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
        v21 = a1 + 1;
      }

      v37 = *v21;
      *v21 = *v30;
      *v30 = v37;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v9 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)((a2 - 8), (a1 + 6), v9))
        {
          v10 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v10;
          v11 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v11;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v12 = a1[4];
            a1[4] = a1[6];
            a1[6] = v12;
            v13 = a1[5];
            a1[5] = a1[7];
            a1[7] = v13;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v14 = a1[2];
              a1[2] = a1[4];
              a1[4] = v14;
              v15 = a1[3];
              a1[3] = a1[5];
              a1[5] = v15;
              if ((*a3)(a1 + 2, a1))
              {
                v16 = *a1;
                *a1 = a1[2];
                a1[2] = v16;
                v17 = a1[1];
                a1[1] = a1[3];
                a1[3] = v17;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 8, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v23 = a1 + 4;
  v24 = (*a3)(a1 + 2, a1);
  v25 = (*a3)(a1 + 4, a1 + 2);
  if (v24)
  {
    v26 = a1 + 1;
    v27 = *a1;
    if (v25)
    {
      *a1 = a1[4];
    }

    else
    {
      *a1 = a1[2];
      a1[2] = v27;
      v26 = a1 + 3;
      v38 = a1[1];
      a1[1] = a1[3];
      a1[3] = v38;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v27 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v27;
    v34 = a1 + 5;
    goto LABEL_34;
  }

  if (v25)
  {
    v32 = a1[2];
    a1[2] = a1[4];
    a1[4] = v32;
    v34 = a1 + 3;
    v33 = a1[3];
    a1[3] = a1[5];
    a1[5] = v33;
    if ((*a3)(a1 + 2, a1))
    {
      v35 = *a1;
      *a1 = a1[2];
      a1[2] = v35;
      v26 = a1 + 1;
LABEL_34:
      v39 = *v26;
      *v26 = *v34;
      *v34 = v39;
    }
  }

LABEL_35:
  v40 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if ((*a3)(v40, v23))
    {
      v47 = *v40;
      v43 = v41;
      while (1)
      {
        v44 = a1 + v43;
        *(v44 + 6) = *(a1 + v43 + 16);
        *(v44 + 7) = *(a1 + v43 + 20);
        if (v43 == -16)
        {
          break;
        }

        v43 -= 8;
        if (((*a3)(&v47, v44 + 8) & 1) == 0)
        {
          v45 = (a1 + v43 + 24);
          goto LABEL_43;
        }
      }

      v45 = a1;
LABEL_43:
      *v45 = v47;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v23 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

void std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::target_type()
{
}

{
}

{
}

{
}

{
}

xgboost::metric::EvalRank *xgboost::metric::EvalRank::EvalRank(xgboost::metric::EvalRank *this, const char *a2, const char *a3)
{
  *(this + 4) = -1;
  v5 = this + 16;
  *(this + 3) = 0;
  v6 = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *this = &unk_2883DEDA0;
  *(this + 7) = 0;
  if (a3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
    v8 = sscanf(a3, "%u[-]?", v5);
    v9 = strlen(a2);
    if (v8 == 1)
    {
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, a2, v9);
      LOBYTE(v16) = 64;
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v16, 1);
      v12 = strlen(a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a3, v12);
      std::stringbuf::str();
    }

    else
    {
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, a2, v9);
      v14 = strlen(a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a3, v14);
      std::stringbuf::str();
    }

    if (*(this + 47) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v16;
    *(v6 + 2) = v17;
    if (a3[strlen(a3) - 1] == 45)
    {
      *(this + 48) = 1;
    }

    v18 = *MEMORY[0x277D82828];
    *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
    v19 = MEMORY[0x277D82878] + 16;
    if (v21 < 0)
    {
      operator delete(v20[7].__locale_);
    }

    v19 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v20);
    std::ostream::~ostream();
    MEMORY[0x277C690D0](&v22);
  }

  else
  {
    MEMORY[0x277C68BE0](this + 24, a2);
  }

  return this;
}

void sub_274CEAB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::ostringstream::~ostringstream(va);
  v9 = *(v6 + 56);
  *(v6 + 56) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*v7);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalPrecision::~EvalPrecision(xgboost::metric::EvalPrecision *this)
{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x277C69180);
}

double xgboost::metric::EvalRank::Eval(uint64_t *a1, uint64_t **a2, void *a3, uint64_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  __src = (((*a2)[1] - **a2) >> 2);
  v69 = ((*(a3[3] + 8) - *a3[3]) >> 2);
  if (__src != v69)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__src, &v69);
  }

  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v69, 2uLL);
  v8 = v69;
  *(v69 + 1) = ((*a2)[1] - **a2) >> 2;
  v9 = (a3 + 6);
  v10 = a3[6];
  v11 = a3[7];
  if (v11 == v10)
  {
    v9 = &v69;
  }

  else
  {
    v8 = a3[6];
  }

  v64 = v9;
  if (v11 == v10)
  {
    v12 = &v70;
  }

  else
  {
    v12 = (a3 + 7);
  }

  v13 = *v12;
  LODWORD(v67) = 0;
  v14 = v13 - v8;
  __src = (v14 >> 2);
  if (!v14)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&__src, &v67);
  }

  v15 = (*v12 - 4);
  v16 = *v15;
  __src = (((*a2)[1] - **a2) >> 2);
  if (__src != v16)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned long>(v15, &__src);
  }

  v17 = *v12;
  v18 = *v64;
  if ((*(a1[1] + 24) & 0x80000000) != 0)
  {
    v23 = 0.0;
  }

  else
  {
    v19 = a1[7];
    if (v19)
    {
      goto LABEL_19;
    }

    v20 = (*(*a1 + 48))(a1);
    std::string::basic_string[abi:ne200100]<0>(&__p, v20);
    GPUMetric = xgboost::GPUMetric::CreateGPUMetric(&__p, a1[1]);
    v22 = a1[7];
    a1[7] = GPUMetric;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (v75.__m_.__opaque[7] < 0)
    {
      operator delete(__p);
    }

    v19 = a1[7];
    if (v19)
    {
LABEL_19:
      v23 = (*(*v19 + 40))(v19, a2, a3, a4);
    }

    else
    {
      v23 = 0.0;
    }

    if (!a1[1])
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/rank_metric.cc", 192);
      v25 = dmlc::LogMessageFatal::GetEntry(&__p);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: tparam_", 21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }
  }

  *&__p = 0.0;
  v27 = std::vector<double>::vector[abi:ne200100](&v67, 1uLL);
  v63 = ((v17 - v18) >> 2) - 1;
  if (!a1[7] || (*(a1[1] + 24) & 0x80000000) != 0)
  {
    v30 = a3[3];
    v32 = *v30;
    v31 = v30[1];
    v33 = a3[5];
    v66 = *a2;
    *&__p = 0.0;
    v75.__m_.__sig = 850045863;
    memset(v75.__m_.__opaque, 0, sizeof(v75.__m_.__opaque));
    __src = 0;
    v72 = 0;
    v73 = 0;
    if (((v17 - v18) >> 2) != 1)
    {
      v60 = a4;
      v34 = 0;
      v61 = v32;
      v62 = a1;
      v65 = (v31 - v32) >> 2;
      v35 = v33;
      v36 = 4 * v33;
      v37 = v64;
      do
      {
        v38 = __src;
        v72 = __src;
        v39 = *(*v37 + v34++);
        if (v39 < *(*v37 + v34))
        {
          v40 = (v61 + v36 * v39);
          v41 = v35 * (v39 - 1);
          do
          {
            v41 += v35;
            if (v41 >= v65)
            {
              __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
            }

            v42 = *v66;
            v43 = *v40;
            if (v38 >= v73)
            {
              v44 = __src;
              v45 = v38 - __src;
              v46 = (v38 - __src) >> 3;
              v47 = v46 + 1;
              if ((v46 + 1) >> 61)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v48 = v73 - __src;
              if ((v73 - __src) >> 2 > v47)
              {
                v47 = v48 >> 2;
              }

              v49 = v48 >= 0x7FFFFFFFFFFFFFF8;
              v50 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v49)
              {
                v50 = v47;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v50);
              }

              v51 = v46;
              v52 = (8 * v46);
              *v52 = *(v42 + 4 * v39);
              v52[1] = v43;
              v38 = (8 * v46 + 8);
              v53 = &v52[-2 * v51];
              memcpy(v53, v44, v45);
              v54 = __src;
              __src = v53;
              v72 = v38;
              v73 = 0;
              if (v54)
              {
                operator delete(v54);
              }

              v37 = v64;
            }

            else
            {
              *v38 = *(v42 + 4 * v39);
              *(v38 + 1) = v43;
              v38 += 8;
            }

            v40 = (v40 + v36);
            ++v39;
            v72 = v38;
          }

          while (v39 < *(*v37 + v34));
        }

        v55 = (*(*v62 + 56))(v62, &__src);
        *v67 = v55 + *v67;
      }

      while (v34 != v63);
      LODWORD(a4) = v60;
      if (__src)
      {
        v72 = __src;
        operator delete(__src);
      }
    }

    v56 = v67;
    v23 = 0.0;
    while (v56 != v68)
    {
      v57 = *v56++;
      v23 = v23 + v57;
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v75);
    std::exception_ptr::~exception_ptr(&__p);
    if (a4)
    {
      goto LABEL_27;
    }
  }

  else if (a4)
  {
LABEL_27:
    *&__p = v23;
    *&v75.__m_.__sig = v63;
    Engine = rabit::engine::GetEngine(v27);
    (*(*Engine + 8))(Engine, &__p, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v29 = *&__p / *&v75.__m_.__sig;
    goto LABEL_57;
  }

  v29 = v23 / v63;
LABEL_57:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v58 = *MEMORY[0x277D85DE8];
  return v29;
}

void sub_274CEB554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a26);
  if (v26)
  {
    operator delete(v26);
  }

  JUMPOUT(0x274CEB724);
}

void sub_274CEB564(void *a1, int a2)
{
  __cxa_end_catch();
  if (v5[0].__ptr_)
  {
    v5[1] = v5[0];
    operator delete(v5[0].__ptr_);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v7);
    if (!v6.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v6, v5);
      std::exception_ptr::~exception_ptr(v5);
    }

    std::mutex::unlock(v7);
    __cxa_end_catch();
    JUMPOUT(0x274CEB49CLL);
  }

  JUMPOUT(0x274CEB664);
}

void sub_274CEB578(void *a1, int a2)
{
  __cxa_end_catch();
  if (v5[0].__ptr_)
  {
    v5[1] = v5[0];
    operator delete(v5[0].__ptr_);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v7);
    if (!v6.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v6, v5);
      std::exception_ptr::~exception_ptr(v5);
    }

    std::mutex::unlock(v7);
    __cxa_end_catch();
    JUMPOUT(0x274CEB49CLL);
  }

  JUMPOUT(0x274CEB664);
}

void sub_274CEB61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  __cxa_end_catch();
  std::mutex::~mutex(&a27);
  std::exception_ptr::~exception_ptr(&v27);
  JUMPOUT(0x274CEB690);
}

void sub_274CEB63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((a31 & 0x80000000) == 0)
  {
    if (v31)
    {
      operator delete(v31);
    }

    JUMPOUT(0x274CEB724);
  }

  JUMPOUT(0x274CEB69CLL);
}

void sub_274CEB678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v26 = a26;
  a26 = 0;
  if (v26)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a26, v26);
  }

  if (v27)
  {
    operator delete(v27);
  }

  JUMPOUT(0x274CEB724);
}

void sub_274CEB684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = a26;
  a26 = 0;
  if (v27)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a26, v27);
  }

  _Unwind_Resume(a1);
}

void sub_274CEB6A4()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274CEB724);
}

void sub_274CEB6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a22);
  v26 = a26;
  a26 = 0;
  if (v26)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a26);
  }

  JUMPOUT(0x274CEB6E4);
}

void sub_274CEB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CEB6D0);
}

void sub_274CEB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CEB704);
}

void sub_274CEB71C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274CEB724);
  }

  __clang_call_terminate(a1);
}

uint64_t xgboost::metric::EvalRank::Name(xgboost::metric::EvalRank *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

double xgboost::metric::EvalPrecision::EvalGroup(uint64_t a1, uint64_t *a2, float a3)
{
  v5 = *a2;
  v6 = a2[1];
  v16 = xgboost::common::CmpFirst;
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v5, v6, &v16, a3);
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 3;
    v10 = *(a1 + 16);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v11 = (*a2 + 4);
    v12 = *(a1 + 16);
    do
    {
      if (!v12)
      {
        break;
      }

      v13 = *v11;
      v11 += 2;
      if (v13)
      {
        ++v8;
      }

      --v12;
      --v9;
    }

    while (v9);
    v14 = v8;
  }

  else
  {
    v10 = *(a1 + 16);
    v14 = 0.0;
  }

  return v14 / v10;
}

double rabit::op::Reducer<rabit::op::Sum,double>(double *a1, double *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = v4 + *a2;
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(uint64_t a1, void *a2, uint64_t (**a3)(uint64_t *, uint64_t *), float a4)
{
  v7 = (a2 - a1) >> 3;
  if (v7 < 1)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = (a2 - a1) >> 3;
    while (1)
    {
      v10 = operator new(8 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_274CEB908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t a1, void *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5, uint64_t a6, float result)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if ((*a3)(a2 - 1, a1))
      {
        result = *a1;
        *a1 = *(a2 - 2);
        *(a2 - 2) = result;
        v10 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, a2, a3);
    }

    else
    {
      v14 = a4 >> 1;
      v15 = (a1 + 8 * (a4 >> 1));
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>((a1 + 8 * (a4 >> 1)), a2, a3, a4 - (a4 >> 1), &a5[v14]);

        return std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,std::pair<float,unsigned int>*,std::__wrap_iter<std::pair<float,unsigned int>*>>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3, v17);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1 + 8 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, (a1 + 8 * (a4 >> 1)), a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v15[7] = v3;
    v15[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15[0] = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 2) = *(v6 + v12);
            *(v13 + 3) = *(v6 + v12 + 4);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v15, v6 + v12);
            if ((result & 1) == 0)
            {
              v14 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        *a5 = *v10;
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *v10;
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(result, a2, a5, a3);
    }
  }

  return result;
}

float std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,std::pair<float,unsigned int>*,std::__wrap_iter<std::pair<float,unsigned int>*>>(float *a1, float *a2, float *a3, float *a4, float *a5, uint64_t (**a6)(float *, float *), float result)
{
  if (a1 == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      result = *a3;
      *a5 = *a3;
      a5[1] = a3[1];
      a3 += 2;
      a5 += 2;
    }
  }

  else
  {
    v12 = a1;
    while (a3 != a4)
    {
      v13 = (*a6)(a3, v12);
      if (v13)
      {
        v14 = a3;
      }

      else
      {
        v14 = v12;
      }

      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = 8;
      }

      v12 = (v12 + v15);
      v16 = *(v14 + 1);
      result = *v14;
      if (v13)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      a3 = (a3 + v17);
      *a5 = result;
      *(a5 + 1) = v16;
      a5 += 2;
      if (v12 == a2)
      {
        goto LABEL_16;
      }
    }

    if (v12 != a2)
    {
      v18 = 0;
      do
      {
        v19 = &v12[v18];
        v20 = &a5[v18];
        result = v12[v18];
        *v20 = result;
        v20[1] = v12[v18 + 1];
        v18 += 2;
      }

      while (v19 + 2 != a2);
    }
  }

  return result;
}

float std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t *a1, int *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  if (a6)
  {
    v10 = a5;
    v11 = a4;
    v12 = a3;
    while (1)
    {
      v14 = v43;
      if (v10 <= a8 || v43 <= a8)
      {
        break;
      }

      if (!v10)
      {
        return result;
      }

      v15 = 0;
      v16 = -v10;
      while (1)
      {
        v17 = &a1[v15 / 8];
        if ((*v11)(a2, &a1[v15 / 8], a3, a4, a5, v14))
        {
          break;
        }

        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v20 = -v16;
      v21 = v43;
      v41 = v11;
      v42 = a8;
      if (-v16 >= v43)
      {
        if (v16 == -1)
        {
          v36 = &a1[v15 / 8];
          result = *&a1[v15 / 8];
          *v36 = *a2;
          *a2 = result;
          v37 = HIDWORD(a1[v15 / 8]);
          v36[1] = a2[1];
          a2[1] = v37;
          return result;
        }

        v25 = v20 / 2;
        v23 = &a1[v20 / 2 + v15 / 8];
        v22 = a2;
        if (a2 != v12)
        {
          v38 = v20 / 2;
          v40 = v12;
          v45 = *v41;
          v26 = (v12 - a2) >> 3;
          v22 = a2;
          do
          {
            v27 = &v22[2 * (v26 >> 1)];
            v28 = v45(v27, v23);
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v22 = v27 + 2;
            }
          }

          while (v26);
          v12 = v40;
          v21 = v43;
          v25 = v38;
        }

        v44 = (v22 - a2) >> 3;
      }

      else
      {
        v44 = v43 / 2;
        v22 = &a2[2 * (v43 / 2)];
        v23 = a2;
        if (a2 - a1 != v15)
        {
          v39 = v12;
          v24 = (a2 - a1 - v15) >> 3;
          v23 = &a1[v15 / 8];
          do
          {
            if ((*v41)(v22, &v23[2 * (v24 >> 1)]))
            {
              v24 >>= 1;
            }

            else
            {
              v23 += 2 * (v24 >> 1) + 2;
              v24 += ~(v24 >> 1);
            }
          }

          while (v24);
          v12 = v39;
          v21 = v43;
        }

        v25 = (v23 - a1 - v15) >> 3;
      }

      v29 = v22;
      if (v23 != a2)
      {
        v29 = v23;
        if (a2 != v22)
        {
          v30 = v25;
          v31 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>>(v23, a2, v22);
          v25 = v30;
          v21 = v43;
          v29 = v31;
        }
      }

      v10 = -(v25 + v16);
      v32 = v21 - v44;
      if (v25 + v44 >= v21 - (v25 + v44) - v16)
      {
        v34 = v12;
        v12 = v29;
        v35 = v25;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(v29, v22, v34, v41, v10, v32, a7, v42);
        v22 = v23;
        v11 = v41;
        v32 = v44;
        v10 = v35;
      }

      else
      {
        v33 = v23;
        v17 = v29;
        v11 = v41;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(&a1[v15 / 8], v33, v29, v41, v25, v44, a7, v42);
      }

      v43 = v32;
      a1 = v17;
      a2 = v22;
      a8 = v42;
      if (!v32)
      {
        return result;
      }
    }

    return std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(a1, a2, v12, v11, v10, v43, a7);
  }

  return result;
}

void *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(void *result, _DWORD *a2, void *a3, uint64_t (**a4)(void, void))
{
  if (result != a2)
  {
    v6 = result;
    v7 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v9 = 0;
      v10 = a3;
      do
      {
        v11 = v7;
        result = (*a4)(v7, v10);
        if (result)
        {
          v10[1] = *v10;
          v12 = a3;
          if (v10 != a3)
          {
            v13 = v9;
            while (1)
            {
              v12 = (a3 + v13);
              result = (*a4)(v11, a3 + v13 - 8);
              if (!result)
              {
                break;
              }

              *v12 = *(a3 + v13 - 8);
              v12[1] = *(v12 - 1);
              v13 -= 8;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }

          *v12 = *v11;
          v12[1] = *(v6 + 3);
        }

        else
        {
          v10[1] = *v11;
        }

        v7 = v11 + 2;
        v9 += 8;
        ++v10;
        v6 = v11;
      }

      while (v11 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(a3, v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

float std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 <= a6)
  {
    v13 = a7;
    if (a1 != a2)
    {
      v13 = a7;
      v14 = a1;
      do
      {
        v15 = *v14++;
        *v13++ = v15;
      }

      while (v14 != a2);
    }

    return std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,std::pair<float,unsigned int>*,std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>>(a7, v13, a2, a3, a1, a4);
  }

  else
  {
    v9 = a7;
    if (a2 != a3)
    {
      v9 = a7;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v16 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>,std::reverse_iterator<std::pair<float,unsigned int>*>,std::reverse_iterator<std::pair<float,unsigned int>*>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>>(v9, v9, a7, a7, a2, a2, a1, a1, a3, a3, &v16);
  }

  return result;
}

float std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&),std::pair<float,unsigned int>*,std::pair<float,unsigned int>*,std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>,std::__wrap_iter<std::pair<float,unsigned int>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v11 = a1;
    while (a3 != a4)
    {
      v12 = (*a6)(a3, v11);
      if (v12)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      if (v12)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 += v14;
      if (v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = 8;
      }

      v16 = *(v13 + 4);
      result = *v13;
      v11 += v15;
      *a5 = *v13;
      a5[1] = v16;
      a5 += 2;
      if (v11 == a2)
      {
        return result;
      }
    }

    v18 = 0;
    do
    {
      v19 = &a5[v18 / 4];
      v20 = v11 + v18;
      result = *(v11 + v18);
      *v19 = result;
      v19[1] = *(v11 + v18 + 4);
      v18 += 8;
    }

    while (v20 + 8 != a2);
  }

  return result;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>,std::reverse_iterator<std::pair<float,unsigned int>*>,std::reverse_iterator<std::pair<float,unsigned int>*>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>,std::reverse_iterator<std::__wrap_iter<std::pair<float,unsigned int>*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (***a11)(uint64_t, uint64_t))
{
  if (a2 != a4)
  {
    v14 = a2;
    v15 = (a10 - 4);
    while (a6 != a8)
    {
      if ((**a11)(v14 - 8, a6 - 8))
      {
        v16 = a6;
        a6 -= 8;
      }

      else
      {
        v16 = v14;
        v14 -= 8;
      }

      v17 = *(v16 - 4);
      *(v15 - 1) = *(v16 - 8);
      *v15 = v17;
      v15 -= 2;
      if (v14 == a4)
      {
        return;
      }
    }

    for (; v14 != a4; v15 -= 2)
    {
      v18 = *(v14 - 8);
      v14 -= 8;
      *(v15 - 1) = v18;
      *v15 = *(v14 + 4);
    }
  }
}

int *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>>(int *a1, int *a2, int *a3)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  result = a1 + 2;
  for (i = a2 + 2; i != a3; i += 2)
  {
    if (result == a2)
    {
      a2 = i;
    }

    v7 = *result;
    *result = *i;
    *i = v7;
    v8 = result[1];
    result[1] = i[1];
    i[1] = v8;
    result += 2;
  }

  if (result != a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      while (1)
      {
        v11 = *v9;
        *v9 = *v10;
        *v10 = v11;
        v12 = v9[1];
        v9[1] = v10[1];
        v10[1] = v12;
        v9 += 2;
        v10 += 2;
        if (v10 == a3)
        {
          break;
        }

        if (v9 == a2)
        {
          a2 = v10;
        }
      }

      v10 = a2;
    }

    while (v9 != a2);
  }

  return result;
}

void std::__function::__func<xgboost::metric::$_2,std::allocator<xgboost::metric::$_2>,xgboost::Metric * ()(char const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::metric::$_2,std::allocator<xgboost::metric::$_2>,xgboost::Metric * ()(char const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::metric::$_2,std::allocator<xgboost::metric::$_2>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::metric::$_2,std::allocator<xgboost::metric::$_2>,xgboost::Metric * ()(char const*)>::target_type()
{
}

{
}

void xgboost::metric::EvalNDCG::~EvalNDCG(xgboost::metric::EvalNDCG *this)
{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x277C69180);
}

void xgboost::metric::EvalNDCG::EvalGroup(uint64_t a1, uint64_t *a2, float a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = xgboost::common::CmpFirst;
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v5, v6, &v10, a3);
  v7 = *a2;
  v8 = a2[1];
  LODWORD(v9) = COERCE_UNSIGNED_INT64(xgboost::metric::EvalNDCG::CalcDCG(a1, *a2, v8));
  v10 = xgboost::common::CmpSecond;
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v7, v8, &v10, v9);
  if (xgboost::metric::EvalNDCG::CalcDCG(a1, *a2, a2[1]) == 0.0)
  {
    *(a1 + 48);
  }
}

double xgboost::metric::EvalNDCG::CalcDCG(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  if (((a3 - a2) >> 3) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (a3 - a2) >> 3;
  }

  v6 = (a2 + 4);
  v7 = 0.0;
  do
  {
    if (v4 == v3)
    {
      break;
    }

    if (*v6)
    {
      v8 = *v6;
      v7 = v7 + ~(-1 << v8) / log2(v3 + 2.0);
    }

    ++v3;
    v6 += 2;
  }

  while (v5 != v3);
  return v7;
}

void std::__function::__func<xgboost::metric::$_3,std::allocator<xgboost::metric::$_3>,xgboost::Metric * ()(char const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::metric::$_3,std::allocator<xgboost::metric::$_3>,xgboost::Metric * ()(char const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::metric::$_3,std::allocator<xgboost::metric::$_3>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::metric::$_3,std::allocator<xgboost::metric::$_3>,xgboost::Metric * ()(char const*)>::target_type()
{
}

{
}

void xgboost::metric::EvalMAP::~EvalMAP(xgboost::metric::EvalMAP *this)
{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_2883DEDA0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x277C69180);
}

double xgboost::metric::EvalMAP::EvalGroup(uint64_t a1, uint64_t *a2, float a3)
{
  v5 = *a2;
  v6 = a2[1];
  v16 = xgboost::common::CmpFirst;
  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v5, v6, &v16, a3);
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = v8 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = (*a2 + 4);
    v13 = 0.0;
    do
    {
      v14 = *v12;
      v12 += 2;
      if (v14)
      {
        ++v10;
        if (v9 < *(a1 + 16))
        {
          v13 = v13 + v10 / (v9 + 1);
        }
      }

      ++v9;
    }

    while (v11 != v9);
    if (v10)
    {
      return v13 / v10;
    }
  }

  result = 1.0;
  if (*(a1 + 48))
  {
    return 0.0;
  }

  return result;
}

void std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::operator()()
{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::target_type()
{
}

{
}

void xgboost::metric::EvalCox::Eval(uint64_t a1, float ***a2, void *a3, int a4)
{
  if (a4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v42);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/rank_metric.cc", 347);
    v39 = dmlc::LogMessageFatal::GetEntry(&v42);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Check failed: !distributed", 26);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Cox metric does not support distributed evaluation", 50);
    dmlc::LogMessageFatal::~LogMessageFatal(&v42);
  }

  v6 = *(a3[3] + 8) - *a3[3];
  v7 = v6 >> 2;
  if (v6 >> 2 != (a3[24] - a3[23]) >> 3)
  {
    std::vector<unsigned long>::resize(a3 + 23, v6 >> 2);
    v8 = a3[23];
    v9 = a3[24];
    if (v8 != v9)
    {
      v10 = 0;
      v11 = (v9 - v8 - 8) >> 3;
      v12 = vdupq_n_s64(v11);
      v13 = (v11 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v14 = xmmword_274E1F3B0;
      v15 = vdupq_n_s64(2uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v12, v14));
        if (v16.i8[0])
        {
          v8[v10] = v10;
        }

        if (v16.i8[4])
        {
          v8[v10 + 1] = v10 + 1;
        }

        v10 += 2;
        v14 = vaddq_s64(v14, v15);
      }

      while (v13 != v10);
    }

    v43 = a3[3];
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1}>(v8, v9, &v43);
  }

  v17 = (v6 >> 2);
  if (v17)
  {
    v18 = **a2;
    v19 = 0.0;
    v20 = v18;
    v21 = v17;
    do
    {
      v22 = *v20++;
      v19 = v19 + v22;
      --v21;
    }

    while (v21);
    v23 = 0;
    v24 = a3[3];
    v25 = *v24;
    v26 = (v24[1] - *v24) >> 2;
    v27 = a3[5];
    v28 = a3[23];
    v29 = (v7 - 1);
    v30 = (v28 + 8);
    v31 = 0.0;
    v32 = 0.0;
    do
    {
      v33 = *(v30 - 1);
      if (v33 * v27 >= v26)
      {
LABEL_26:
        __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
      }

      v34 = *(v25 + 4 * v33 * v27);
      v35 = v18[v33];
      if (v34 > 0.0)
      {
        v36 = logf(v18[v33]);
        v32 = v32 - (v36 - log(v19));
        ++v23;
      }

      v31 = v31 + v35;
      if (!v29)
      {
        goto LABEL_22;
      }

      v37 = *v30 * v27;
      if (v37 >= v26)
      {
        goto LABEL_26;
      }

      if (fabsf(v34) < fabsf(*(v25 + 4 * v37)))
      {
LABEL_22:
        v19 = v19 - v31;
        v31 = 0.0;
      }

      ++v30;
      --v29;
      --v17;
    }

    while (v17);
  }
}

void dmlc::RowBlockIter<unsigned int,float>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned int,float>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CEDB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::~ThreadedIter(a11);
  if (*(v34 + 31) < 0)
  {
    operator delete(*v35);
  }

  MEMORY[0x277C69180](v34, 0x10F3C408E4C9560);
  dmlc::io::URISpec::~URISpec(&a12);
  _Unwind_Resume(a1);
}

void sub_274CEDCB4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CEDCACLL);
}

void dmlc::RowBlockIter<unsigned long long,float>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned long long,float>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CEE710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::~ThreadedIter(a13);
  if (*(v36 + 31) < 0)
  {
    operator delete(*a12);
  }

  MEMORY[0x277C69180](v36, 0x10F3C408E4C9560);
  dmlc::io::URISpec::~URISpec(&a14);
  _Unwind_Resume(a1);
}

void sub_274CEE834(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CEE82CLL);
}

void dmlc::RowBlockIter<unsigned int,int>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned int,int>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CEF284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::~ThreadedIter(a11);
  if (*(v34 + 31) < 0)
  {
    operator delete(*v35);
  }

  MEMORY[0x277C69180](v34, 0x10F3C404D6CCE2ELL);
  dmlc::io::URISpec::~URISpec(&a12);
  _Unwind_Resume(a1);
}

void sub_274CEF3A4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CEF39CLL);
}

void dmlc::RowBlockIter<unsigned long long,int>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned long long,int>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CEFE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::~ThreadedIter(a13);
  if (*(v36 + 31) < 0)
  {
    operator delete(*a12);
  }

  MEMORY[0x277C69180](v36, 0x10F3C404D6CCE2ELL);
  dmlc::io::URISpec::~URISpec(&a14);
  _Unwind_Resume(a1);
}

void sub_274CEFF24(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CEFF1CLL);
}

void dmlc::RowBlockIter<unsigned int,long long>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned int,long long>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CF0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::~ThreadedIter(a11);
  if (*(v34 + 31) < 0)
  {
    operator delete(*v35);
  }

  MEMORY[0x277C69180](v34, 0x10F3C404D6CCE2ELL);
  dmlc::io::URISpec::~URISpec(&a12);
  _Unwind_Resume(a1);
}

void sub_274CF0AA4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CF0A9CLL);
}

void dmlc::RowBlockIter<unsigned long long,long long>::Create(char *__s, uint64_t a2, uint64_t a3, char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::URISpec::URISpec(&v9, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  dmlc::data::CreateParser_<unsigned long long,long long>(v7, a2, a3, a4);
  v8 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v8 = v10;
  }

  if (v8)
  {
    operator new();
  }

  operator new();
}

void sub_274CF1510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(&__p);
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::~ThreadedIter(a13);
  if (*(v36 + 31) < 0)
  {
    operator delete(*a12);
  }

  MEMORY[0x277C69180](v36, 0x10F3C404D6CCE2ELL);
  dmlc::io::URISpec::~URISpec(&a14);
  _Unwind_Resume(a1);
}

void sub_274CF1634(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CF162CLL);
}

void dmlc::data::CreateParser_<unsigned int,float>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get();
  v8 = qword_280AF5F18;
  if (!qword_280AF5F18)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF5F18;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF5F18 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF18C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

void dmlc::data::CreateParser_<unsigned long long,float>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get();
  v8 = qword_280AF60B0;
  if (!qword_280AF60B0)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF60B0;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF60B0 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF1BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

void dmlc::data::CreateParser_<unsigned int,int>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::Get();
  v8 = qword_280AF5FA0;
  if (!qword_280AF5FA0)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF5FA0;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF5FA0 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF1ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

void dmlc::data::CreateParser_<unsigned long long,int>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::Get();
  v8 = qword_280AF6138;
  if (!qword_280AF6138)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF6138;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF6138 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF21E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

void dmlc::data::CreateParser_<unsigned int,long long>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::Get();
  v8 = qword_280AF6028;
  if (!qword_280AF6028)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF6028;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF6028 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF24E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

void dmlc::data::CreateParser_<unsigned long long,long long>(char *a1, uint64_t a2, uint64_t a3, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  dmlc::io::URISpec::URISpec(&v22, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v25.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_9;
    }

    v7 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_9;
    }

    v7 = &v25;
  }

  if (LODWORD(v7->__r_.__value_.__l.__data_) != 1869903201)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v23, &__p.__r_.__value_.__l.__data_);
  v14 = v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_32:
    MEMORY[0x277C68BE0](&v25, "libsvm");
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(&__p, "format");
  v15 = std::map<std::string,xgboost::Json>::at(v23, &__p.__r_.__value_.__l.__data_);
  std::string::operator=(&v25, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::Get();
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::Get();
  v8 = qword_280AF61C0;
  if (!qword_280AF61C0)
  {
    goto LABEL_33;
  }

  v9 = &qword_280AF61C0;
  do
  {
    v10 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, (v8 + 32), &v25.__r_.__value_.__l.__data_);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == &qword_280AF61C0 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, &v25.__r_.__value_.__l.__data_, v9 + 4) || (v12 = v9[7]) == 0)
  {
LABEL_33:
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data.cc", 97);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unknown data type ", 18);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __break(1u);
  }

  else
  {
    (*(v12 + 72))(&v22, v23, a2, a3);
    if (v24 < 0)
    {
      operator delete(v23[3]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274CF27F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  dmlc::io::URISpec::~URISpec(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
        }

        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x10B2C40920FD5BALL);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void dmlc::data::CreateLibSVMParser<unsigned int,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF3018(_Unwind_Exception *a1)
{
  if (*(v2 + 223) < 0)
  {
    operator delete(*v3);
  }

  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateLibSVMParser<unsigned long long,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF32AC(_Unwind_Exception *a1)
{
  if (*(v2 + 231) < 0)
  {
    operator delete(*v3);
  }

  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateLibFMParser<unsigned int,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF3530(_Unwind_Exception *a1)
{
  if (*(v2 + 223) < 0)
  {
    operator delete(*v3);
  }

  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateLibFMParser<unsigned long long,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF37BC(_Unwind_Exception *a1)
{
  if (*(v2 + 231) < 0)
  {
    operator delete(*v3);
  }

  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned int,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF3A88(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned long long,float>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF3D5C(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned int,int>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF4028(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned int,int>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned long long,int>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF42FC(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned long long,int>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned int,long long>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF45C8(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned int,long long>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CreateCSVParser<unsigned long long,long long>(char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  dmlc::InputSplit::Create(a1, 0, a3, a4, "text", 0, 0, 256, 0, v4);
}

void sub_274CF489C(_Unwind_Exception *a1)
{
  dmlc::data::CSVParserParam::~CSVParserParam(v3);
  dmlc::data::TextParserBase<unsigned long long,long long>::~TextParserBase(v2);
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void dmlc::data::CSVParserParam::~CSVParserParam(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void dmlc::io::URISpec::~URISpec(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 3), this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *dmlc::io::URISpec::URISpec(std::string *a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[0] = &a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__r.__words[0] = 0;
  p_data = &a1[2].__r_.__value_.__l.__data_;
  v39 = &a1[1];
  a1[2].__r_.__value_.__l.__size_ = 0;
  a1[2].__r_.__value_.__r.__words[2] = 0;
  dmlc::Split(a2, 0x23u, &v56);
  v7 = v57 - v56;
  v40 = v6;
  if (v57 - v56 == 48)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
    v8 = SHIBYTE(v56[1].__r_.__value_.__r.__words[2]);
    if (v8 >= 0)
    {
      data = v56 + 1;
    }

    else
    {
      data = v56[1].__r_.__value_.__l.__data_;
    }

    if (v8 >= 0)
    {
      size = HIBYTE(v56[1].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56[1].__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, data, size);
    if (a4 != 1)
    {
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ".split", 6);
      v12 = MEMORY[0x277C68E30](v11, a4);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".part", 5);
      MEMORY[0x277C68E30](v13, a3);
    }

    std::stringbuf::str();
    if (SHIBYTE(v6[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*p_data);
    }

    *p_data = *v41;
    p_data[2] = v42[0];
    v44 = *MEMORY[0x277D82828];
    *(&v44 + *(v44 - 3)) = *(MEMORY[0x277D82828] + 24);
    v45 = MEMORY[0x277D82878] + 16;
    if (v48 < 0)
    {
      operator delete(v47[6].__locale_);
    }

    v45 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v46);
    std::ostream::~ostream();
    MEMORY[0x277C690D0](&v50);
  }

  else
  {
    v41[0] = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3));
    LODWORD(v54) = 1;
    if (v7 != 24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v41, &v54);
    }
  }

  dmlc::Split(v56, 0x3Fu, &v54);
  v14 = v55 - v54;
  if (v55 - v54 == 48)
  {
    dmlc::Split(v54 + 1, 0x26u, &v52);
    v15 = v52;
    if (v53 != v52)
    {
      v16 = 0;
      v17 = 0;
      v18 = *MEMORY[0x277D82820];
      v19 = *(MEMORY[0x277D82820] + 24);
      do
      {
        std::istringstream::basic_istringstream[abi:ne200100](&v44, (v15 + v16), 8);
        *v42 = 0u;
        v43 = 0u;
        *v41 = 0u;
        v20 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v44, v41, 0x3Du);
        if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v58);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/uri_spec.h", 64);
          v22 = dmlc::LogMessageFatal::GetEntry(&v58);
          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: std::getline(is, kv.first, '=')", 45);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Invalid uri argument format", 27);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " for key in arg ", 16);
          MEMORY[0x277C68E50](v26, v17 + 1);
          dmlc::LogMessageFatal::~LogMessageFatal(&v58);
        }

        std::ios_base::getloc((&v44 + *(v44 - 3)));
        v27 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
        v28 = (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v58);
        v29 = v28;
        v6 = v40;
        v30 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v44, &v42[1], v29);
        if ((*(v30 + *(*v30 - 24) + 32) & 5) != 0)
        {
          v31 = dmlc::LogMessageFatal::GetEntry(&v58);
          dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/uri_spec.h", 66);
          v32 = dmlc::LogMessageFatal::GetEntry(&v58);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: std::getline(is, kv.second)", 41);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Invalid uri argument format", 27);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " for value in arg ", 18);
          MEMORY[0x277C68E50](v36, v17 + 1);
          dmlc::LogMessageFatal::~LogMessageFatal(&v58);
        }

        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string> &>(v39, v41);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42[1]);
        }

        if (SHIBYTE(v42[0]) < 0)
        {
          operator delete(v41[0]);
        }

        v44 = v18;
        *(&v44 + *(v18 - 3)) = v19;
        v46.__locale_ = (MEMORY[0x277D82878] + 16);
        if (v49 < 0)
        {
          operator delete(v47[7].__locale_);
        }

        v46.__locale_ = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(v47);
        std::istream::~istream();
        MEMORY[0x277C690D0](&v51);
        ++v17;
        v15 = v52;
        v16 += 24;
      }

      while (v17 < 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3));
    }

    v44 = &v52;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  }

  else
  {
    v41[0] = (0xAAAAAAAAAAAAAAABLL * (v14 >> 3));
    LODWORD(v52) = 1;
    if (v14 != 24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v41, &v52);
    }
  }

  std::string::operator=(v6, v54);
  v44 = &v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  v44 = &v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  return v6;
}

void sub_274CF514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v20 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = (v20 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (*(a12 + 71) < 0)
  {
    operator delete(*a10);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a11, *(a12 + 32));
  if (*(a12 + 23) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(a1);
}

void dmlc::Split(const std::string *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v6, a1, 8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  while (1)
  {
    v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v11, a2);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &v11);
  }

  v6[0] = *MEMORY[0x277D82820];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::istream::~istream();
  MEMORY[0x277C690D0](&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_274CF545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 40) = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v10 - 40));
  std::istringstream::~istringstream(&a9);
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x277C68D10](&v11, a1, 1);
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

void sub_274CF55F0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x274CF55B0);
  }

  __cxa_rethrow();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}