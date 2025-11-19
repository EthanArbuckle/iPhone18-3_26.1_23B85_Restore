void sub_2725B1584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38)
{
  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  CACFString::~CACFString(&a36);
  CACFString::~CACFString(&a38);
  _Unwind_Resume(a1);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_0::operator()<$_1,unsigned int,$_2>(std::string *a1, char *__s, unsigned int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v12, 0, sizeof(v12));
  if (__s)
  {
    v6 = strlen(__s);
    std::string::append(&v12, __s, v6);
    std::string::append(&v12, "-", 1uLL);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v7 = strlen(__sa);
  std::string::append(&v12, __sa, v7);
  std::string::append(&v12, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v8 = strlen(__sa);
  std::string::append(&v12, __sa, v8);
  std::string::append(&v12, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v9 = strlen(__sa);
  std::string::append(&v12, __sa, v9);
  result = *&v12.__r_.__value_.__l.__data_;
  *a1 = v12;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725B1F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_2::operator()<$_1,unsigned int,$_2,char const*>(std::string *a1, char *__s, unsigned int a3, char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&v25, 0, sizeof(v25));
  if (__s)
  {
    v8 = strlen(__s);
    std::string::append(&v25, __s, v8);
    std::string::append(&v25, "-", 1uLL);
  }

  std::string::append(&v25, "vp-", 3uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v10 = strlen(v9);
  std::string::append(&v25, __sa, v10);
  std::string::basic_string[abi:ne200100]<0>(&v23, a4);
  v11 = std::string::insert(&v23, 0, "-", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v24, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27 = v13->__r_.__value_.__r.__words[2];
  *__sa = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v15 = __sa;
  }

  else
  {
    v15 = *__sa;
  }

  if (v27 >= 0)
  {
    v16 = HIBYTE(v27);
  }

  else
  {
    v16 = *&__sa[8];
  }

  std::string::append(&v25, v15, v16);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*__sa);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v18 = strlen(v17);
  std::string::append(&v25, __sa, v18);
  std::string::append(&v25, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v20 = strlen(v19);
  std::string::append(&v25, __sa, v20);
  result = *&v25.__r_.__value_.__l.__data_;
  *a1 = v25;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725B2138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_3::operator()<$_1,unsigned int,$_2,char const*>(std::string *a1, char *__s, unsigned int a3, char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&v25, 0, sizeof(v25));
  if (__s)
  {
    v8 = strlen(__s);
    std::string::append(&v25, __s, v8);
    std::string::append(&v25, "-", 1uLL);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x61756678u);
  v10 = strlen(v9);
  std::string::append(&v25, __sa, v10);
  std::string::basic_string[abi:ne200100]<0>(&v23, a4);
  v11 = std::string::insert(&v23, 0, "-", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v24, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27 = v13->__r_.__value_.__r.__words[2];
  *__sa = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v15 = __sa;
  }

  else
  {
    v15 = *__sa;
  }

  if (v27 >= 0)
  {
    v16 = HIBYTE(v27);
  }

  else
  {
    v16 = *&__sa[8];
  }

  std::string::append(&v25, v15, v16);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*__sa);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, a3);
  v18 = strlen(v17);
  std::string::append(&v25, __sa, v18);
  std::string::append(&v25, "-", 1uLL);
  CAX4CCStringNoQuote::CAX4CCStringNoQuote(__sa, 0x6170706Cu);
  v20 = strlen(v19);
  std::string::append(&v25, __sa, v20);
  result = *&v25.__r_.__value_.__l.__data_;
  *a1 = v25;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725B2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,unsigned int,$_2,unsigned int,unsigned int,unsigned int>(std::string *a1, char *__s, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v51 = *MEMORY[0x277D85DE8];
  memset(&v49, 0, sizeof(v49));
  if (__s)
  {
    v14 = strlen(__s);
    std::string::append(&v49, __s, v14);
    std::string::append(&v49, "-", 1uLL);
  }

  std::string::append(&v49, "vp", 2uLL);
  strcpy(__sa, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  v15 = std::string::insert(&v46, 0, "-", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v48 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v48 >= 0)
  {
    v18 = HIBYTE(v48);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v49, v17, v18);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v19 = bswap32(a3);
  *__sa = v19;
  if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v46, a3);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  }

  v20 = std::string::insert(&v46, 0, "-", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v48 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v48 >= 0)
  {
    v23 = HIBYTE(v48);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(&v49, v22, v23);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  strcpy(__sa, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  v24 = std::string::insert(&v46, 0, "-", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v48 = v24->__r_.__value_.__r.__words[2];
  *__p = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v48 >= 0)
  {
    v27 = HIBYTE(v48);
  }

  else
  {
    v27 = __p[1];
  }

  std::string::append(&v49, v26, v27);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v28 = bswap32(a4);
  *__sa = v28;
  if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v46, a4);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  }

  v29 = std::string::insert(&v46, 0, "-", 1uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v48 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if (v48 >= 0)
  {
    v32 = HIBYTE(v48);
  }

  else
  {
    v32 = __p[1];
  }

  std::string::append(&v49, v31, v32);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v33 = bswap32(a5);
  *__sa = v33;
  if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v46, a5);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  }

  v34 = std::string::insert(&v46, 0, "-", 1uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v48 = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  if (v48 >= 0)
  {
    v37 = HIBYTE(v48);
  }

  else
  {
    v37 = __p[1];
  }

  std::string::append(&v49, v36, v37);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (a7)
  {
    v38 = "-ulnk";
  }

  else
  {
    v38 = "-dlnk";
  }

  std::string::append(&v49, v38, 5uLL);
  v39 = bswap32(a6);
  *__sa = v39;
  if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v46, a6);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v46, __sa);
  }

  v40 = std::string::insert(&v46, 0, "-", 1uLL);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v48 = v40->__r_.__value_.__r.__words[2];
  *__p = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (v48 >= 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  if (v48 >= 0)
  {
    v43 = HIBYTE(v48);
  }

  else
  {
    v43 = __p[1];
  }

  std::string::append(&v49, v42, v43);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  result = *&v49.__r_.__value_.__l.__data_;
  *a1 = v49;
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725B299C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_4::operator()<$_1,$_7,$_2,unsigned int,unsigned int,unsigned int>(std::string *a1, char *__s, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v48 = *MEMORY[0x277D85DE8];
  memset(&v46, 0, sizeof(v46));
  if (__s)
  {
    v12 = strlen(__s);
    std::string::append(&v46, __s, v12);
    std::string::append(&v46, "-", 1uLL);
  }

  std::string::append(&v46, "vp", 2uLL);
  strcpy(__sa, "aufx");
  std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  v13 = std::string::insert(&v43, 0, "-", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v45 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v45 >= 0)
  {
    v16 = HIBYTE(v45);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::append(&v46, v15, v16);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v17 = bswap32(a3);
  *__sa = v17;
  if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v43, a3);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  }

  v18 = std::string::insert(&v43, 0, "-", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v45 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v45 >= 0)
  {
    v21 = HIBYTE(v45);
  }

  else
  {
    v21 = __p[1];
  }

  std::string::append(&v46, v20, v21);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  strcpy(__sa, "appl");
  std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  v22 = std::string::insert(&v43, 0, "-", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v45 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v45 >= 0)
  {
    v25 = HIBYTE(v45);
  }

  else
  {
    v25 = __p[1];
  }

  std::string::append(&v46, v24, v25);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v26 = bswap32(a4);
  *__sa = v26;
  if ((v26 - 32) > 0x5E || ((v26 >> 8) - 32) > 0x5E || ((v26 << 8 >> 24) - 32) > 0x5E || ((v26 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v43, a4);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  }

  v27 = std::string::insert(&v43, 0, "-", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v45 = v27->__r_.__value_.__r.__words[2];
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v45 >= 0)
  {
    v30 = HIBYTE(v45);
  }

  else
  {
    v30 = __p[1];
  }

  std::string::append(&v46, v29, v30);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v31 = bswap32(a5);
  *__sa = v31;
  if ((v31 - 32) > 0x5E || ((v31 >> 8) - 32) > 0x5E || ((v31 << 8 >> 24) - 32) > 0x5E || ((v31 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v43, a5);
  }

  else
  {
    __sa[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  }

  v32 = std::string::insert(&v43, 0, "-", 1uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v45 = v32->__r_.__value_.__r.__words[2];
  *__p = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if (v45 >= 0)
  {
    v35 = HIBYTE(v45);
  }

  else
  {
    v35 = __p[1];
  }

  std::string::append(&v46, v34, v35);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (a6)
  {
    v36 = "-ulnk";
  }

  else
  {
    v36 = "-dlnk";
  }

  std::string::append(&v46, v36, 5uLL);
  strcpy(__sa, "medc");
  std::string::basic_string[abi:ne200100]<0>(&v43, __sa);
  v37 = std::string::insert(&v43, 0, "-", 1uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v45 = v37->__r_.__value_.__r.__words[2];
  *__p = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  if (v45 >= 0)
  {
    v40 = HIBYTE(v45);
  }

  else
  {
    v40 = __p[1];
  }

  std::string::append(&v46, v39, v40);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  result = *&v46.__r_.__value_.__l.__data_;
  *a1 = v46;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725B2F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_10::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  __p = 0;
  v78 = 0;
  v79 = 0;
  v7 = *(a2 + 23);
  if ((a3 & 0x100000000) != 0)
  {
    v8 = 0;
    v9 = *a2;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v7 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v7 >= 0)
    {
      v10 = *(a2 + 23);
    }

    if (v10 >= 6)
    {
      v12 = &v11[v10];
      v13 = v11;
      do
      {
        v14 = memchr(v13, 45, v10 - 5);
        if (!v14)
        {
          break;
        }

        if (*v14 == 1852597293 && *(v14 + 2) == 11627)
        {
          if (v14 != v12 && v14 - v11 != -1)
          {
            v8 = 0;
            HIBYTE(v79) = 10;
            LOWORD(v78) = 20566;
            __p = *"(DL)-AuxVP";
            goto LABEL_21;
          }

          break;
        }

        v13 = v14 + 1;
        v10 = v12 - v13;
      }

      while (v12 - v13 >= 6);
    }

    HIBYTE(v79) = 10;
    LOWORD(v78) = 20566;
    __p = *"(UL)-AuxVP";
    v8 = 1;
  }

LABEL_21:
  if (v7 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = v9;
  }

  v17 = TuningPListMgr::lookupPlist_(*(v6 + 2744), v16, 1u);
  cf = v17;
  if (v17)
  {
    goto LABEL_111;
  }

  v18 = *(v6 + 2744);
  v73 = *(a1 + 1);
  v83 = CFStringCreateWithCString(0, "AU", 0x600u);
  v84 = 1;
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  v74 = CFStringCreateWithCString(0, v19, 0x600u);
  v75 = 1;
  *buf = v73;
  *&buf[16] = &v83;
  *&buf[24] = &v74;
  *a1[1] = TuningPListMgr::loadTuningInSubdirs_(v18, buf, 4u, 1u);
  CACFString::~CACFString(&v74);
  CACFString::~CACFString(&v83);
  if (*a1[1])
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v83, 0x6D656463u);
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        if ((a3 & 0x100000000) != 0)
        {
          v23 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v23 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v24 = 64;
          if (v8)
          {
            v24 = 71;
          }

          while (*v23 != a3)
          {
            v23 += 18;
            if (!--v24)
            {
              p_p = 0;
              goto LABEL_88;
            }
          }

          p_p = v23 + 2;
        }

        else
        {
          p_p = &__p;
          if (v79 < 0)
          {
            p_p = __p;
          }
        }

LABEL_88:
        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1155;
        *&buf[18] = 2080;
        *&buf[20] = &v83;
        *&buf[28] = 2080;
        *&buf[30] = v22;
        v81 = 2080;
        v82 = p_p;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v37 = *(v6 + 12704);
    if (v37 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
      if (*(a2 + 23) >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      if ((a3 & 0x100000000) != 0)
      {
        v40 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v40 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v41 = 64;
        if (v8)
        {
          v41 = 71;
        }

        while (*v40 != a3)
        {
          v40 += 18;
          if (!--v41)
          {
            v42 = 0;
            goto LABEL_109;
          }
        }

        v42 = (v40 + 2);
      }

      else
      {
        v42 = &__p;
        if (v79 < 0)
        {
          v42 = __p;
        }
      }

LABEL_109:
      CALegacyLog::log(v37, 2, v38, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1155, "operator()", "could not find '%s' override preset %s for %s!", buf, v39, v42);
    }

    v17 = cf;
    if (cf)
    {
      goto LABEL_111;
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    v17 = TuningPListMgr::lookupPlist_(*(v6 + 2744), v26, 1u);
    cf = v17;
    if (v17)
    {
LABEL_111:
      CFRetain(v17);
      v43 = 10928;
      if (v8)
      {
        v43 = 6992;
      }

      v44 = (v6 + v43);
      if ((a3 & 0x100000000) != 0)
      {
        v45 = (v6 + 24 * a3 + 11000);
      }

      else
      {
        v45 = v44;
      }

      AUPropAndParamHelper::AddItemToAUPropsList(v45, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v46 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v83, 0x6D656463u);
          if (*(a2 + 23) >= 0)
          {
            v48 = a2;
          }

          else
          {
            v48 = *a2;
          }

          if ((a3 & 0x100000000) != 0)
          {
            v49 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
            if (v8)
            {
              v49 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
            }

            v50 = 64;
            if (v8)
            {
              v50 = 71;
            }

            while (*v49 != a3)
            {
              v49 += 18;
              if (!--v50)
              {
                v51 = 0;
                goto LABEL_139;
              }
            }

            v51 = v49 + 2;
          }

          else
          {
            v51 = &__p;
            if (v79 < 0)
            {
              v51 = __p;
            }
          }

LABEL_139:
          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1171;
          *&buf[18] = 2080;
          *&buf[20] = &v83;
          *&buf[28] = 2080;
          *&buf[30] = v48;
          v81 = 2080;
          v82 = v51;
          _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
        }
      }

      v52 = *(v6 + 12704);
      if (v52 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v53 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, 0x6D656463u);
        if (*(a2 + 23) >= 0)
        {
          v54 = a2;
        }

        else
        {
          v54 = *a2;
        }

        if ((a3 & 0x100000000) != 0)
        {
          v55 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v55 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v56 = 64;
          if (v8)
          {
            v56 = 71;
          }

          while (*v55 != a3)
          {
            v55 += 18;
            if (!--v56)
            {
              v57 = 0;
              goto LABEL_160;
            }
          }

          v57 = (v55 + 2);
        }

        else
        {
          v57 = &__p;
          if (v79 < 0)
          {
            v57 = __p;
          }
        }

LABEL_160:
        CALegacyLog::log(v52, 4, v53, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1171, "operator()", "found '%s' override preset %s for %s", buf, v54, v57);
      }

      if (v8)
      {
        v58 = 4648;
      }

      else
      {
        v58 = 4608;
      }

      if ((a3 & 0x100000000) != 0)
      {
        v59 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v59 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v60 = 64;
        if (v8)
        {
          v60 = 71;
        }

        while (*v59 != a3)
        {
          v59 += 18;
          if (!--v60)
          {
            v61 = 0;
            goto LABEL_176;
          }
        }

        v61 = (v59 + 2);
      }

      else if (v79 >= 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = __p;
      }

LABEL_176:
      std::string::basic_string[abi:ne200100]<0>(buf, v61);
      v83 = buf;
      v62 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v6 + v58), buf);
      std::string::operator=((v62 + 5), a2);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((a3 & 0x100000000) != 0 && a3 == 15)
      {
        *a1[4] = 1;
      }

      goto LABEL_181;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if (a3 == 15)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v27 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v29 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v30 = 64;
          if (v8)
          {
            v30 = 71;
          }

          while (*v29 != 15)
          {
            v29 += 18;
            if (!--v30)
            {
              v31 = 0;
              goto LABEL_185;
            }
          }

          v31 = v29 + 2;
LABEL_185:
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1189;
          *&buf[18] = 2080;
          *&buf[20] = v31;
          _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> Could not find route specific preset for %s...VP will try loading global preset next", buf, 0x1Cu);
        }
      }

      v64 = *(v6 + 12704);
      if (v64 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v65 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v65 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v66 = 64;
        if (v8)
        {
          v66 = 71;
        }

        while (*v65 != 15)
        {
          v65 += 18;
          if (!--v66)
          {
            v67 = 0;
            goto LABEL_199;
          }
        }

        v67 = (v65 + 2);
LABEL_199:
        CALegacyLog::log(v64, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1189, "operator()", "Could not find route specific preset for %s...VP will try loading global preset next", v67);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
          if (v8)
          {
            v34 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
          }

          v35 = 64;
          if (v8)
          {
            v35 = 71;
          }

          while (*v34 != a3)
          {
            v34 += 18;
            if (!--v35)
            {
              v36 = 0;
              goto LABEL_201;
            }
          }

          v36 = v34 + 2;
LABEL_201:
          *buf = 136315650;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1184;
          *&buf[18] = 2080;
          *&buf[20] = v36;
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> Bypassing %s!\n", buf, 0x1Cu);
        }
      }

      v68 = *(v6 + 12704);
      if (v68 && ((*(v6 + 15881) & 1) != 0 || *(v6 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v69 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
        if (v8)
        {
          v69 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
        }

        v70 = 64;
        if (v8)
        {
          v70 = 71;
        }

        while (*v69 != a3)
        {
          v69 += 18;
          if (!--v70)
          {
            v71 = 0;
            goto LABEL_215;
          }
        }

        v71 = (v69 + 2);
LABEL_215:
        CALegacyLog::log(v68, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1184, "operator()", "Bypassing %s!\n", v71);
      }

      v72 = *a1[5];
      *buf = 1;
      AUPropAndParamHelper::AddItemToAUPropsList((v72 + 24 * a3 + 11000), 0x15u, 0, 0, 4uLL, buf, 1);
    }
  }

LABEL_181:
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_2725B3BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoadAUDataPreset(char const*,char const*,char const*)::$_13::operator()(uint64_t a1, const std::string *a2, uint64_t a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = *(v8 + 2744);
  v47 = *(a1 + 16);
  v53 = CFStringCreateWithCString(0, "AU", 0x600u);
  v54 = 1;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2->__r_.__value_.__r.__words[0];
  }

  cf = CFStringCreateWithCString(0, v10, 0x600u);
  v49 = 1;
  *buf = v47;
  *&buf[16] = &v53;
  *&buf[24] = &cf;
  **a1 = TuningPListMgr::loadTuningInSubdirs_(v9, buf, 4u, 1u);
  CACFString::~CACFString(&cf);
  CACFString::~CACFString(&v53);
  if (**a1)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v53, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1559;
        *&buf[18] = 2080;
        *&buf[20] = &v53;
        *&buf[28] = 2080;
        *&buf[30] = v13;
        v51 = 2080;
        v52 = v14;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> could not find '%s' override preset %s for %s!", buf, 0x30u);
      }
    }

    v15 = *(v8 + 12704);
    if (v15 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v16 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      CALegacyLog::log(v15, 1, v16, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1559, "operator()", "could not find '%s' override preset %s for %s!", buf, v17, v18);
    }
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2->__r_.__value_.__r.__words[0];
    }

    v20 = TuningPListMgr::lookupPlist_(*(v8 + 2744), v19, 1u);
    cf = v20;
    if (v20)
    {
      CFRetain(v20);
      AUPropAndParamHelper::AddItemToAUPropsList(a4, 0, 0, 0, 8uLL, &cf, 1);
      CFRelease(cf);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v21 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v22 = (*v21 ? *v21 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v53, *(v8 + 96));
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = a2->__r_.__value_.__r.__words[0];
          }

          if (*(a3 + 23) >= 0)
          {
            v24 = a3;
          }

          else
          {
            v24 = *a3;
          }

          *buf = 136316162;
          *&buf[4] = "vpTuningHelper.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1568;
          *&buf[18] = 2080;
          *&buf[20] = &v53;
          *&buf[28] = 2080;
          *&buf[30] = v23;
          v51 = 2080;
          v52 = v24;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> found '%s' override preset %s for %s", buf, 0x30u);
        }
      }

      v25 = *(v8 + 12704);
      if (v25 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v26 = VPLogScope(void)::scope;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v28 = a3;
        }

        else
        {
          v28 = *a3;
        }

        CALegacyLog::log(v25, 4, v26, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1568, "operator()", "found '%s' override preset %s for %s", buf, v27, v28);
      }

      v29 = std::__string_hash<char>::operator()[abi:ne200100](a3);
      v30 = v29;
      v31 = *(v8 + 4616);
      if (!*&v31)
      {
        goto LABEL_107;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      v33 = v32.u32[0];
      if (v32.u32[0] > 1uLL)
      {
        v34 = v29;
        if (v29 >= *&v31)
        {
          v34 = v29 % *&v31;
        }
      }

      else
      {
        v34 = (*&v31 - 1) & v29;
      }

      v43 = *(*(v8 + 4608) + 8 * v34);
      if (!v43 || (v44 = *v43) == 0)
      {
LABEL_107:
        operator new();
      }

      while (1)
      {
        v45 = v44[1];
        if (v45 == v30)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v44 + 2, a3))
          {
            std::string::operator=((v44 + 5), a2);
            goto LABEL_108;
          }
        }

        else
        {
          if (v33 > 1)
          {
            if (v45 >= *&v31)
            {
              v45 %= *&v31;
            }
          }

          else
          {
            v45 &= *&v31 - 1;
          }

          if (v45 != v34)
          {
            goto LABEL_107;
          }
        }

        v44 = *v44;
        if (!v44)
        {
          goto LABEL_107;
        }
      }
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v35 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v53, *(v8 + 96));
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = a2;
        }

        else
        {
          v37 = a2->__r_.__value_.__r.__words[0];
        }

        if (*(a3 + 23) >= 0)
        {
          v38 = a3;
        }

        else
        {
          v38 = *a3;
        }

        *buf = 136316162;
        *&buf[4] = "vpTuningHelper.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1574;
        *&buf[18] = 2080;
        *&buf[20] = &v53;
        *&buf[28] = 2080;
        *&buf[30] = v37;
        v51 = 2080;
        v52 = v38;
        _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> Not found '%s' override preset %s for %s", buf, 0x30u);
      }
    }

    v39 = *(v8 + 12704);
    if (v39 && ((*(v8 + 15881) & 1) != 0 || *(v8 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v40 = VPLogScope(void)::scope;
      CAX4CCStringNoQuote::CAX4CCStringNoQuote(buf, *(v8 + 96));
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = a2;
      }

      else
      {
        v41 = a2->__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) >= 0)
      {
        v42 = a3;
      }

      else
      {
        v42 = *a3;
      }

      CALegacyLog::log(v39, 4, v40, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpTuningHelper.cpp", 1574, "operator()", "Not found '%s' override preset %s for %s", buf, v41, v42);
    }
  }

LABEL_108:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_2725B4538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StartVPWirelessChargingMatStateListener()
{
  if (!gNotifyDispatchQueue)
  {
    v0 = dispatch_queue_create("vpWirelessChargingNotificationQueue", 0);
    v1 = gNotifyDispatchQueue;
    gNotifyDispatchQueue = v0;

    if (!gNotifyDispatchQueue)
    {
      __assert_rtn("StartVPWirelessChargingMatStateListener", "vpWirelessCharging.mm", 54, "gNotifyDispatchQueue != nil");
    }

    atomic_store(__StartVPWirelessChargingMatStateListener_block_invoke(), gWirelessChargingMatIsAttached);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __StartVPWirelessChargingMatStateListener_block_invoke_6;
    handler[3] = &unk_279E4A040;
    v4 = &__block_literal_global_4725;
    if (notify_register_dispatch("com.apple.system.powersources.source", &gNotifyToken, gNotifyDispatchQueue, handler))
    {
      v2 = gNotifyDispatchQueue;
      gNotifyDispatchQueue = 0;

      gNotifyToken = 0;
      atomic_store(0, gWirelessChargingMatIsAttached);
    }
  }
}

uint64_t __StartVPWirelessChargingMatStateListener_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = IOPSCopyExternalPowerAdapterDetails();
  v1 = v0;
  if (v0)
  {
    v2 = [(__CFDictionary *)v0 objectForKey:@"IsWireless"];
    if ([v2 BOOLValue])
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if (VPLogScope(void)::scope)
      {
        v3 = *VPLogScope(void)::scope;
        if (!v3)
        {
LABEL_22:
          v4 = 1;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v3 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "vpWirelessCharging.mm";
        v11 = 1024;
        v12 = 61;
        _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat is attached", &v9, 0x12u);
      }

      goto LABEL_22;
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  if (!VPLogScope(void)::scope)
  {
    v2 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
    goto LABEL_15;
  }

  v2 = *VPLogScope(void)::scope;
  if (v2)
  {
LABEL_15:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "vpWirelessCharging.mm";
      v11 = 1024;
      v12 = 66;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat is not attached", &v9, 0x12u);
    }

    v4 = 0;
    goto LABEL_23;
  }

  v4 = 0;
LABEL_24:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __StartVPWirelessChargingMatStateListener_block_invoke_6(uint64_t result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gNotifyToken == a2)
  {
    v2 = result;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v3 = *VPLogScope(void)::scope;
      if (!v3)
      {
LABEL_11:
        result = (*(*(v2 + 32) + 16))();
        atomic_store(result, gWirelessChargingMatIsAttached);
        goto LABEL_12;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "vpWirelessCharging.mm";
      v8 = 1024;
      v9 = 74;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d wireless charging mat state changed", &v6, 0x12u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void StopVPWirelessChargingMatStateListener()
{
  if (!notify_cancel(gNotifyToken))
  {
    v0 = gNotifyDispatchQueue;
    gNotifyDispatchQueue = 0;

    gNotifyToken = 0;
  }
}

void CADeprecated::AudioRingBuffer::~AudioRingBuffer(CADeprecated::AudioRingBuffer *this)
{
  CADeprecated::AudioRingBuffer::~AudioRingBuffer(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2460;
  CADeprecated::AudioRingBuffer::Deallocate(this);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x2743CBFA0](v2, 0x1080C404ACF7207);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x2743CBFA0](v3, 0x1080C404ACF7207);
  }
}

OpaqueAudioConverter *CADeprecated::AudioRingBuffer::Deallocate(CADeprecated::AudioRingBuffer *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  result = *(this + 16);
  if (result)
  {
    result = AudioConverterDispose(result);
    *(this + 16) = 0;
  }

  return result;
}

uint64_t CADeprecated::AudioRingBuffer::ConvertAndStore(uint64_t this, int a2, const AudioBufferList *a3, int a4, UInt32 inNumberPCMFrames)
{
  if (inNumberPCMFrames)
  {
    v6 = *(this + 96);
    mNumberBuffers = v6->mNumberBuffers;
    if (mNumberBuffers)
    {
      v8 = *(this + 72) * inNumberPCMFrames;
      p_mData = &v6->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *v10;
        v10 += 2;
        *p_mData = &v11[a4];
        *(p_mData - 1) = v8;
        p_mData += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v12 = *(this + 88);
    v13 = v12->mNumberBuffers;
    if (v13)
    {
      v14 = *(this + 32) * inNumberPCMFrames;
      v15 = *(this + 104);
      v16 = &v12->mBuffers[0].mData;
      do
      {
        v17 = *v15++;
        *v16 = (v17 + a2);
        *(v16 - 1) = v14;
        v16 += 2;
        --v13;
      }

      while (v13);
    }

    return AudioConverterConvertComplexBuffer(*(this + 128), inNumberPCMFrames, v6, v12);
  }

  return this;
}

uint64_t CADeprecated::AudioRingBuffer::CheckTimeBounds(CADeprecated::AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    v6 = *(v4 + 17);
    v7 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  if (v7 > a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 >= a3)
  {
    v9 = 0;
  }

  if (v6 >= a3)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (v7 >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3;
  }

  if (v6 > a2)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t CADeprecated::AudioRingBuffer::Fetch(const void ***this, AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  v8 = a4 + a3;
  result = CADeprecated::AudioRingBuffer::CheckTimeBounds(this, a4, v8);
  if (!result)
  {
    if (a3)
    {
      v10 = this[13];
      v11 = *(this + 29);
      v12 = *(this + 30);
      v13 = ((((a4 % v12) >> 63) & v12) + a4 % v12) * v11;
      v14 = ((((v8 % v12) >> 63) & v12) + v8 % v12) * v11;
      v15 = v14 - v13;
      if (v14 <= v13)
      {
        if (a2->mNumberBuffers >= 1)
        {
          v43 = v14;
          v44 = a2;
          v29 = *(this + 31) - v13;
          v30 = v13;
          v31 = v29;
          v32 = a2->mNumberBuffers + 1;
          p_mData = &a2->mBuffers[0].mData;
          v34 = this[13];
          while (v29 <= *(p_mData - 1))
          {
            v36 = *p_mData;
            p_mData += 2;
            v35 = v36;
            v37 = *v34++;
            memcpy(v35, (v37 + v30), v29);
            if (--v32 <= 1)
            {
              a2 = v44;
              if (v44->mNumberBuffers < 1)
              {
                goto LABEL_29;
              }

              v15 = v29 + v43;
              v38 = v44->mNumberBuffers + 1;
              v39 = &v44->mBuffers[0].mData;
              while (v15 <= *(v39 - 1))
              {
                v41 = *v39;
                v39 += 2;
                v40 = v41;
                v42 = *v10++;
                memcpy(&v40[v31], v42, v43);
                if (--v38 <= 1)
                {
                  goto LABEL_10;
                }
              }

              return 5;
            }
          }

          return 5;
        }
      }

      else if (a2->mNumberBuffers >= 1)
      {
        v16 = v13;
        v17 = a2->mNumberBuffers + 1;
        v18 = &a2->mBuffers[0].mData;
        while (v15 <= *(v18 - 1))
        {
          v20 = *v18;
          v18 += 2;
          v19 = v20;
          v21 = *v10++;
          memcpy(v19, (v21 + v16), v15);
          if (--v17 <= 1)
          {
            goto LABEL_10;
          }
        }

        return 5;
      }
    }

    else
    {
      v15 = 0;
LABEL_10:
      mNumberBuffers = a2->mNumberBuffers;
      if (mNumberBuffers >= 1)
      {
        v23 = 0;
        v24 = vdupq_n_s64(mNumberBuffers - 1);
        v25 = (mNumberBuffers + 3) & 0xFFFFFFFC;
        v26 = &a2[1].mBuffers[0].mData + 1;
        do
        {
          v27 = vdupq_n_s64(v23);
          v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_2727564E0)));
          if (vuzp1_s16(v28, *v24.i8).u8[0])
          {
            *(v26 - 8) = v15;
          }

          if (vuzp1_s16(v28, *&v24).i8[2])
          {
            *(v26 - 4) = v15;
          }

          if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_2727564D0)))).i32[1])
          {
            *v26 = v15;
            v26[4] = v15;
          }

          v23 += 4;
          v26 += 16;
        }

        while (v25 != v23);
      }
    }

LABEL_29:

    return CADeprecated::AudioRingBuffer::CheckTimeBounds(this, a4, v8);
  }

  return result;
}

void BlockBuffer::Alloc(BlockBuffer *this, const unsigned int *a2)
{
  *(this + 4) = 0;
  *this = malloc_type_malloc(8 * *(this + 2), 0x2004093837F09uLL);
  if (*(this + 2))
  {
    v4 = 0;
    v5 = (4 * *(this + 3));
    do
    {
      v6 = malloc_type_malloc((16 * a2[v4]) | 8, 0x10800404ACF7207uLL);
      *(*this + 8 * v4) = v6;
      v7 = a2[v4];
      *v6 = v7;
      if (v7)
      {
        v8 = v6;
        v9 = 0;
        v10 = v6 + 4;
        do
        {
          *(v10 - 2) = 1;
          *(v10 - 1) = v5;
          v11 = malloc_type_malloc(v5, 0x2365AC71uLL);
          v12 = v11;
          if (v5)
          {
            if (!v11)
            {
              exception = __cxa_allocate_exception(8uLL);
              v14 = std::bad_alloc::bad_alloc(exception);
            }
          }

          bzero(v11, v5);
          *v10 = v12;
          v10 += 2;
          ++v9;
        }

        while (v9 < *v8);
      }

      ++v4;
    }

    while (v4 < *(this + 2));
  }
}

void BlockBuffer::Free(BlockBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 2))
    {
      v3 = 0;
      do
      {
        v4 = *(*this + 8 * v3);
        if (*v4)
        {
          v5 = 0;
          v6 = 4;
          do
          {
            free(*&v4[v6]);
            ++v5;
            v6 += 4;
          }

          while (v5 < *v4);
        }

        free(v4);
        ++v3;
      }

      while (v3 < *(this + 2));
      v2 = *this;
    }

    free(v2);
    *this = 0;
  }
}

unsigned int *BlockProcessor::Process(unsigned int *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v5 = this;
  v6 = 0;
  v7 = this[3];
  do
  {
    v8 = v5[4];
    while (v8 == v7)
    {
      this = (*(v5 + 6))(*(v5 + 7), v7, *v5, *(v5 + 3));
      v8 = 0;
      v5[4] = 0;
      v5[10] = 0;
      if (this)
      {
        return this;
      }
    }

    v9 = v5[2];
    v31 = v6;
    v32 = a2;
    v30 = v5[3] - v8;
    if (v30 >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v5[3] - v8;
    }

    v11 = (4 * v6);
    v33 = v10;
    if (v9)
    {
      v12 = 0;
      v13 = 4 * v8;
      v14 = 4 * v10;
      do
      {
        v15 = *(*v5 + 8 * v12);
        if (*v15)
        {
          v16 = 0;
          v17 = a3[v12];
          v18 = 4;
          do
          {
            this = memcpy((*&v15[v18] + v13), (*(&v17->mNumberBuffers + v18 * 4) + v11), v14);
            ++v16;
            v18 += 4;
          }

          while (v16 < *v15);
          v9 = v5[2];
        }

        ++v12;
      }

      while (v12 < v9);
      v8 = v5[4];
      v10 = v33;
    }

    v5[4] = v8 + v10;
    v19 = v5[10];
    v20 = v5[8];
    v21 = v5[9] - v19;
    if (v21 >= v10)
    {
      v21 = v10;
    }

    if (v20)
    {
      v22 = 0;
      v23 = 4 * v19;
      v29 = v21;
      v24 = 4 * v21;
      do
      {
        v25 = *(*(v5 + 3) + 8 * v22);
        if (*v25)
        {
          v26 = 0;
          v27 = a4[v22];
          v28 = 4;
          do
          {
            this = memcpy((*(&v27->mNumberBuffers + v28 * 4) + v11), (*&v25[v28] + v23), v24);
            ++v26;
            v28 += 4;
          }

          while (v26 < *v25);
          v20 = v5[8];
        }

        ++v22;
      }

      while (v22 < v20);
      v19 = v5[10];
      v10 = v33;
      v21 = v29;
    }

    v5[10] = v19 + v21;
    a2 = v32 - v10;
    v6 = v10 + v31;
  }

  while (v32 > v30);
  return this;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F0] + 16);
  return result;
}

void *CAAudioChannelLayout::RefCountedLayout::operator new(CAAudioChannelLayout::RefCountedLayout *this)
{
  result = malloc_type_malloc(this + 16, 0x72B6561FuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
  }

  return result;
}

uint64_t CAReferenceCounted::releaseObject(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, atomic_uint *a2)
{
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 + 4 != a2)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

LABEL_5:
    if (a2)
    {
      if (((20 * a2[2]) & 0xFFFFFFFF00000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
      }

      else
      {
        v5 = 20 * a2[2];
        v6 = v5 + 12;
        if (v5 < 0xFFFFFFF4)
        {
          v7 = CAAudioChannelLayout::RefCountedLayout::operator new((v5 + 12));
          v7[2] = 1;
          v7[3] = v6;
          *v7 = &unk_2881B2480;
          bzero(v7 + 4, v6);
          memcpy(v7 + 4, a2, v6);
LABEL_10:
          *a1 = v7;
          return a1;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
      }
    }

    v7 = CAAudioChannelLayout::RefCountedLayout::operator new(0xC);
    *v7 = &unk_2881B2480;
    *(v7 + 1) = 0xC00000001;
    *(v7 + 2) = 0;
    v7[6] = 0;
    goto LABEL_10;
  }

  return a1;
}

void CAAudioChannelLayout::~CAAudioChannelLayout(atomic_uint **this)
{
  v2 = *this;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *this = 0;
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(const UInt8 **a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(&v11, v3 + 32, (v3 + 56));
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v5, v3 + 32, (v3 + 56));
        v5 += 2;
      }

      v12 = v5;
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_2725B5640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_4786()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  return a1;
}

void sub_2725B59A8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v3), a2, a3);
  v16 = (16 * v3 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void sub_2725B5AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CAAudioStatisticsSendMessage(uint64_t *a1, unsigned int a2, const UInt8 **a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    do
    {
      if (*a1)
      {
        v8 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(a3);
        v9 = *a1;
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_4781);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v9, v8, 8, a4);
        }

        CFRelease(v8);
      }

      ++a1;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(a3);
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_4781);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v10, 8, a4);
    }

    CFRelease(v10);
  }
}

void sub_2725B5C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    *(this + 24);
    operator new[]();
  }

  return this;
}

uint64_t CACFDictionary::GetFloat32(uint64_t this, const __CFString *a2, float *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      if (v5 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v4, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    if (v1)
    {
      CASmartPreferences::CASmartPreferences(v1);
    }
  }
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  CASmartPreferences::instance(void)::global = 850045863;
  unk_28133C0D8 = 0u;
  unk_28133C0E8 = 0u;
  unk_28133C0F8 = 0u;
  qword_28133C108 = 0;
  qword_28133C110 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  global_queue = dispatch_get_global_queue(0, 0);
  *&qword_28133C118 = 0u;
  *&qword_28133C128 = 0u;
  qword_28133C130 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, global_queue);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_4855;
  handler[4] = &CASmartPreferences::instance(void)::global;
  dispatch_source_set_event_handler(qword_28133C130, handler);
  dispatch_resume(qword_28133C130);
}

void ___ZN18CASmartPreferencesC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), SynchronizePrefDomain, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

double CASmartPreferences::InterpretFloat(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(v5);
    }

    else if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else if (v6 != CFStringGetTypeID() || (CFStringGetCString(v5, buffer, 64, 0x600u), sscanf(buffer, "%d", &valuePtr) != 1))
    {
LABEL_13:
      v7 = valuePtr;
      CFRelease(v5);
      goto LABEL_14;
    }

    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.coreaudio");
  v5 = v4;
  valuePtr = 0;
  if (a2)
  {
    LOBYTE(a2->isa) = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v5);
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      Value = valuePtr != 0;
      if (a2)
      {
LABEL_10:
        LOBYTE(a2->isa) = 1;
      }
    }

    else
    {
      if (v6 != CFStringGetTypeID())
      {
        Value = 0;
        goto LABEL_17;
      }

      CFStringGetCString(v5, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        if (a2)
        {
          LOBYTE(a2->isa) = 1;
        }

        Value = valuePtr != 0;
        goto LABEL_17;
      }

      v10 = buffer[0];
      if (buffer[0])
      {
        v11 = &buffer[1];
        do
        {
          *(v11 - 1) = __tolower(v10);
          v12 = *v11++;
          v10 = v12;
        }

        while (v12);
      }

      if (*buffer ^ 0x6F6E | buffer[2])
      {
        if (*buffer != 1936482662 || v16 != 101)
        {
          if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v16))
          {
            Value = 1;
            if (a2)
            {
              LOBYTE(a2->isa) = 1;
            }
          }

          else
          {
            Value = valuePtr;
          }

          goto LABEL_17;
        }
      }

      Value = 0;
      if (a2)
      {
        goto LABEL_10;
      }
    }

LABEL_17:
    CFRelease(v5);
    result = Value != 0;
    goto LABEL_18;
  }

  result = 0;
LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void CASmartPreferences::_RegisterFirstHandler(const void *a1, const void *a2, uint64_t a3)
{
  std::mutex::lock(&CASmartPreferences::instance(void)::global);
  v7 = qword_28133C118;
  v6 = qword_28133C120;
  while (v7 != v6)
  {
    if (CFEqual(a1, *v7) && CFEqual(a2, v7[1]))
    {
      goto LABEL_29;
    }

    v7 += 6;
  }

  CFRetain(a1);
  CFRetain(a2);
  v8 = qword_28133C120;
  if (qword_28133C120 >= qword_28133C128)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((qword_28133C120 - qword_28133C118) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x5555555555555556 * ((qword_28133C128 - qword_28133C118) >> 4);
    if (v11 <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((qword_28133C128 - qword_28133C118) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v28 = &qword_28133C118;
    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = 0;
    v26 = (16 * ((qword_28133C120 - qword_28133C118) >> 4));
    std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(v26, a1, a2, a3);
    v14 = qword_28133C118;
    v13 = qword_28133C120;
    v15 = 48 * v10 - (qword_28133C120 - qword_28133C118);
    v27 = (v26 + 6);
    if (qword_28133C120 == qword_28133C118)
    {
LABEL_27:
      v22 = qword_28133C118;
      qword_28133C118 = v15;
      v23 = qword_28133C128;
      v24 = v27;
      *&qword_28133C120 = v27;
      *&v27 = v22;
      *(&v27 + 1) = v23;
      v25 = v22;
      v26 = v22;
      std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v25);
      v9 = v24;
      goto LABEL_28;
    }

    v16 = &v26[-2 * ((qword_28133C120 - qword_28133C118) >> 4) + 5];
    v17 = qword_28133C118 + 40;
    v18 = v15;
    while (1)
    {
      *(v16 - 5) = *(v17 - 40);
      v19 = *v17;
      if (*v17)
      {
        if (v17 - 24 == v19)
        {
          *v16 = v16 - 3;
          (*(**v17 + 24))();
          goto LABEL_25;
        }

        *v16 = v19;
        v20 = v17;
      }

      else
      {
        v20 = (v18 + 40);
      }

      *v20 = 0;
LABEL_25:
      v18 += 48;
      v16 += 6;
      v21 = v17 + 8;
      v17 += 48;
      if (v21 == v13)
      {
        do
        {
          std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v14 + 16);
          v14 += 48;
        }

        while (v14 != v13);
        goto LABEL_27;
      }
    }
  }

  std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(qword_28133C120, a1, a2, a3);
  v9 = v8 + 48;
  qword_28133C120 = v8 + 48;
LABEL_28:
  qword_28133C120 = v9;
  CFSetAddValue(qword_28133C110, a2);
  CASmartPreferences::Pref::Load((qword_28133C120 - 48));
LABEL_29:
  std::mutex::unlock(&CASmartPreferences::instance(void)::global);
}

void sub_2725B67B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  std::mutex::unlock(&CASmartPreferences::instance(void)::global);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v9, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v9);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2725B6878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2881B24E0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B24E0;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2881B24E0;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t PrefValueToPriority(const __CFString *a1, BOOL *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = valuePtr + 3;
  }

  else
  {
    if (v4 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(a1, @"error"))
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"warning"))
    {
      v5 = 2;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"note") || CFEqual(a1, @"notice"))
    {
      v5 = 3;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"info"))
    {
      v5 = 4;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"details"))
    {
      v5 = 5;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"minutiae"))
    {
      v5 = 6;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"spew"))
    {
      v5 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v5 = -1;
      goto LABEL_23;
    }

    v10 = 0;
    v6 = sscanf(buffer, "%d", &v10);
    v5 = v10 + 3;
    if (v6 != 1)
    {
      v5 = -1;
    }
  }

LABEL_23:
  *a2 = v5 > 0;
  v7 = *MEMORY[0x277D85DE8];
  return v5 & ~(v5 >> 31);
}

uint64_t std::__function::__func<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  if (*a2 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a2;
  }

  if ((*(v3 + 48) & 0x20) != 0)
  {
    v2 = v4;
  }

  *(v3 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALegacyLog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B2528;
  a2[1] = v2;
  return result;
}

uint64_t CALegacyLog::RegisterScope(CALegacyLog *this, BOOL a2, unint64_t a3, const char *a4, const char *a5, const char *a6)
{
  v6 = this;
  v12 = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock(&sLock);
  if (!gScopes || (v7 = *gScopes, v8 = *(gScopes + 8), *gScopes == v8))
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    while (*v7 != v6)
    {
      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    v9 = v7[1];
  }

  pthread_rwlock_unlock(&sLock);
  if (!v9)
  {
    operator new();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2725B7338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CALegacyLog::LogEnabled(int a1, uint64_t a2, unint64_t a3)
{
  if (a1 > 5)
  {
    goto LABEL_13;
  }

  if (a2)
  {
    if (!*a2)
    {
LABEL_14:
      if (!HIDWORD(a3))
      {
        return *(a2 + 8) >= a1;
      }

      if ((*(a2 + 8 * (a1 - 1) + 72) & HIDWORD(a3)) == 0)
      {
        if ((~*(a2 + 16) & HIDWORD(a3)) == 0)
        {
          return 0;
        }

        return *(a2 + 8) >= a1;
      }

      return 1;
    }

    if ((a1 - 1) < 3)
    {
      return 1;
    }

    v6 = *a2;
  }

  else
  {
    if (gUseOSLogInDefaultScope != 1)
    {
      return a1 < 4;
    }

    if ((a1 - 1) < 3)
    {
      return 1;
    }

    v6 = MEMORY[0x277D86220];
  }

  v7 = 1;
  v8 = a1 == 4 ? OS_LOG_TYPE_INFO : OS_LOG_TYPE_DEBUG;
  if (!os_log_type_enabled(v6, v8))
  {
LABEL_13:
    if (a2)
    {
      goto LABEL_14;
    }

    return a1 < 4;
  }

  return v7;
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v11[0] = HIBYTE(v6);
      v11[1] = BYTE2(v6);
      v11[2] = BYTE1(v6);
      v9 = v6;
      v11[3] = v6;
      v11[4] = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "CAMutex.cpp";
        v14 = 1024;
        v15 = 224;
        v16 = 1024;
        v17 = v9;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v9;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "CAMutex.cpp";
        v9 = 1024;
        v10 = 152;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "CAMutex.cpp";
    v9 = 1024;
    v10 = 160;
    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v7 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "CAMutex.cpp";
        v11 = 1024;
        v12 = 106;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v7;
    }

    atomic_store(v2, this + 2);
  }

  result = v3 == 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2570;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B2570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAMutex.cpp";
      v10 = 1024;
      v11 = 56;
      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2881B25F8;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2)
{
  return *this == a2->mSampleRate && *(this + 2) == a2->mFormatID && *(this + 3) == a2->mFormatFlags && *(this + 4) == a2->mBytesPerPacket && *(this + 5) == a2->mFramesPerPacket && *(this + 6) == a2->mBytesPerFrame && *(this + 7) == a2->mChannelsPerFrame && *(this + 8) == a2->mBitsPerChannel;
}

{
  if (*this != 0.0 && a2->mSampleRate != 0.0 && *this != a2->mSampleRate)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    mFormatID = a2->mFormatID;
    if (mFormatID && v3 != mFormatID)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    mBytesPerPacket = a2->mBytesPerPacket;
    if (mBytesPerPacket)
    {
      if (v6 != mBytesPerPacket)
      {
        return 0;
      }
    }
  }

  v8 = *(this + 5);
  if (v8)
  {
    mFramesPerPacket = a2->mFramesPerPacket;
    if (mFramesPerPacket)
    {
      if (v8 != mFramesPerPacket)
      {
        return 0;
      }
    }
  }

  v10 = *(this + 6);
  if (v10)
  {
    mBytesPerFrame = a2->mBytesPerFrame;
    if (mBytesPerFrame)
    {
      if (v10 != mBytesPerFrame)
      {
        return 0;
      }
    }
  }

  v12 = *(this + 7);
  if (v12)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if (mChannelsPerFrame)
    {
      if (v12 != mChannelsPerFrame)
      {
        return 0;
      }
    }
  }

  v14 = *(this + 8);
  v15 = v14 == 0;
  if (v14)
  {
    mBitsPerChannel = a2->mBitsPerChannel;
    if (mBitsPerChannel)
    {
      if (v14 != mBitsPerChannel)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = a2->mFormatID;
    if (v19)
    {
      v20 = *(this + 3);
      if (v20)
      {
        mFormatFlags = a2->mFormatFlags;
        if (mFormatFlags)
        {
          if (v3 != 1819304813)
          {
            return v20 == mFormatFlags;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(this + 3);
          }

          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v23 = 1;
            }

            else
            {
              v23 = *(this + 7);
            }

            if (v23)
            {
              v23 = 8 * (v10 / v23);
              v15 = v23 == v14;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v15)
          {
            v22 |= 8u;
          }

          if ((v14 & 7) == 0 && v23 == v14)
          {
            v22 &= ~0x10u;
          }

          if (v22)
          {
            v22 &= ~4u;
          }

          if ((v22 & 8) != 0 && v14 <= 8)
          {
            v22 &= 2u;
          }

          if (v12 == 1)
          {
            v22 &= ~0x20u;
          }

          if (!v22)
          {
            v22 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v22 == mFormatFlags;
          }

          if ((mFormatFlags & 0x7FFFFFFF) != 0)
          {
            v27 = mFormatFlags & 0x7FFFFFFF;
          }

          else
          {
            v27 = a2->mFormatFlags;
          }

          v28 = a2->mBytesPerFrame;
          if (v28)
          {
            v29 = a2->mChannelsPerFrame;
            if ((mFormatFlags & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = a2->mChannelsPerFrame;
            }

            if (v30)
            {
              v30 = 8 * (v28 / v30);
              v31 = a2->mBitsPerChannel;
              v32 = v27 | 8;
              v33 = v30 == v31;
LABEL_77:
              if (v33)
              {
                v27 = v32;
              }

              v34 = (v31 & 7) == 0 && v30 == v31;
              v35 = v27 & 0xFFFFFFEF;
              if (!v34)
              {
                v35 = v27;
              }

              if (v35)
              {
                v35 &= ~4u;
              }

              v36 = (v35 & 8) == 0 || v31 > 8;
              v37 = v35 & 2;
              if (v36)
              {
                v37 = v35;
              }

              if (v29 == 1)
              {
                v38 = v37 & 0xFFFFFFDF;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                mFormatFlags = v38;
              }

              else
              {
                mFormatFlags = 0x80000000;
              }

              return v22 == mFormatFlags;
            }

            v31 = a2->mBitsPerChannel;
            v32 = v27 | 8;
          }

          else
          {
            v30 = 0;
            v32 = v27 | 8;
            v29 = a2->mChannelsPerFrame;
            v31 = a2->mBitsPerChannel;
          }

          v33 = v31 == 0;
          goto LABEL_77;
        }
      }
    }
  }

  return v17;
}

uint64_t CATimeUtilities::GetCurrentGregorianDate(CATimeUtilities *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v2 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(Current, v2);
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x2743CBFA0](v2, 0x1060C40CA828048);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B2620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    abort();
  }

  v5 = **this;
  MEMORY[0x28223BE20]();
  v7 = (&v13 - ((v6 + 15) & 0x7FFFFFFF0));
  __Z.realp = v7;
  __Z.imagp = (v7 + ((2 * v8) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(v9 + 16), *v10, v10[1], v7, __Z.imagp);
  if (*this)
  {
    v11 = **this >> 1;
  }

  else
  {
    v11 = 0;
  }

  vDSP_ztoc(&__Z, 1, a3, 2, v11);
  v12 = *MEMORY[0x277D85DE8];
}

CFIndex PlatformUtilities_iOS::IsTelephonyCaptureAllowed(PlatformUtilities_iOS *this)
{
  result = CFPreferencesGetAppIntegerValue(@"EnableTelephonyMonitor", @"com.apple.coreaudio", 0);
  if (result)
  {
    return CFPreferencesGetAppIntegerValue(@"EnableVPTelephonyMonitor", @"com.apple.coreaudio", 0) != 0;
  }

  return result;
}

CFStringRef PlatformUtilities_iOS::CopyProductTypeFilePrefix(int a1)
{
  v20 = *MEMORY[0x277D85DE8];
  __str[0] = 0;
  switch(a1)
  {
    case 1:
      v18 = 0;
      goto LABEL_39;
    case 2:
      v18 = 97;
LABEL_39:
      v3 = 238;
      goto LABEL_40;
    case 3:
      v18 = 0;
      v3 = 520;
      goto LABEL_40;
    case 4:
      v18 = 0;
      v3 = 620;
LABEL_40:
      v12 = 98;
      goto LABEL_89;
    case 5:
      v18 = 0;
      v3 = 16;
      goto LABEL_58;
    case 6:
      v18 = 0;
      v3 = 17;
      goto LABEL_58;
    case 7:
      v18 = 0;
      v3 = 79;
      goto LABEL_58;
    case 8:
      v18 = 0;
      v3 = 42;
      goto LABEL_58;
    case 9:
      v18 = 0;
      v3 = 43;
      goto LABEL_58;
    case 10:
      v18 = 0;
      v3 = 49;
      goto LABEL_58;
    case 11:
      v18 = 103;
      v3 = 52;
      goto LABEL_58;
    case 12:
      v9 = 103;
      goto LABEL_29;
    case 13:
      v9 = 112;
LABEL_29:
      v18 = v9;
      v3 = 53;
      goto LABEL_58;
    case 14:
      v18 = 112;
      v3 = 54;
      goto LABEL_58;
    case 15:
      v18 = 0;
      v3 = 63;
      goto LABEL_58;
    case 16:
      v18 = 0;
      v3 = 64;
LABEL_58:
      v12 = 100;
      goto LABEL_89;
    case 17:
      v18 = 0;
      v3 = 104;
      goto LABEL_88;
    case 18:
      v18 = 97;
      v3 = 171;
      goto LABEL_78;
    case 19:
      v18 = 0;
      v3 = 181;
      goto LABEL_78;
    case 20:
      v18 = 0;
      v3 = 182;
      goto LABEL_78;
    case 21:
      v18 = 0;
      v3 = 210;
      goto LABEL_78;
    case 22:
      v18 = 0;
      v3 = 217;
      goto LABEL_78;
    case 23:
      v18 = 0;
      v3 = 271;
      goto LABEL_78;
    case 24:
      v18 = 0;
      v3 = 272;
      goto LABEL_78;
    case 25:
      v18 = 0;
      v3 = 307;
      goto LABEL_78;
    case 26:
      v18 = 0;
      v3 = 308;
      goto LABEL_78;
    case 27:
      v18 = 0;
      v3 = 310;
      goto LABEL_78;
    case 28:
      v18 = 0;
      v3 = 311;
      goto LABEL_78;
    case 29:
      v18 = 0;
      v3 = 317;
      goto LABEL_78;
    case 30:
      v18 = 0;
      v3 = 320;
      goto LABEL_78;
    case 31:
      v18 = 0;
      v3 = 407;
      goto LABEL_78;
    case 32:
      v18 = 0;
      v3 = 408;
      goto LABEL_78;
    case 33:
      v18 = 0;
      v3 = 417;
      goto LABEL_78;
    case 34:
      v18 = 0;
      v3 = 420;
      goto LABEL_78;
    case 35:
      v18 = 0;
      v3 = 517;
      goto LABEL_78;
    case 36:
      v18 = 0;
      v3 = 522;
      goto LABEL_78;
    case 37:
      v18 = 0;
      v3 = 617;
      goto LABEL_78;
    case 38:
      v18 = 0;
      v3 = 620;
LABEL_78:
      v12 = 106;
      goto LABEL_89;
    case 39:
      v14 = 115;
      goto LABEL_76;
    case 40:
      v14 = 98;
LABEL_76:
      v18 = v14;
      v3 = 140;
      goto LABEL_88;
    case 41:
      v10 = 115;
      goto LABEL_44;
    case 42:
      v10 = 98;
LABEL_44:
      v18 = v10;
      v3 = 142;
      goto LABEL_88;
    case 43:
      v2 = 98;
      goto LABEL_69;
    case 44:
      v2 = 115;
LABEL_69:
      v18 = v2;
      v3 = 143;
      goto LABEL_88;
    case 45:
      v7 = 98;
      goto LABEL_62;
    case 46:
      v7 = 115;
LABEL_62:
      v18 = v7;
      v3 = 149;
      goto LABEL_88;
    case 47:
      v5 = 115;
      goto LABEL_85;
    case 48:
      v5 = 98;
LABEL_85:
      v18 = v5;
      v3 = 157;
      goto LABEL_88;
    case 49:
      v8 = 115;
      goto LABEL_23;
    case 50:
      v8 = 98;
LABEL_23:
      v18 = v8;
      v3 = 158;
      goto LABEL_88;
    case 51:
      v1 = 115;
      goto LABEL_87;
    case 52:
      v1 = 98;
LABEL_87:
      v18 = v1;
      v3 = 187;
      goto LABEL_88;
    case 53:
      v4 = 115;
      goto LABEL_83;
    case 54:
      v4 = 98;
LABEL_83:
      v18 = v4;
      v3 = 188;
      goto LABEL_88;
    case 55:
      v15 = 115;
      goto LABEL_81;
    case 56:
      v15 = 98;
LABEL_81:
      v18 = v15;
      v3 = 197;
      goto LABEL_88;
    case 57:
      v6 = 115;
      goto LABEL_67;
    case 58:
      v6 = 98;
LABEL_67:
      v18 = v6;
      v3 = 198;
      goto LABEL_88;
    case 59:
      v18 = 0;
      v3 = 199;
      goto LABEL_88;
    case 60:
      v11 = 115;
      goto LABEL_71;
    case 61:
      v11 = 98;
LABEL_71:
      v18 = v11;
      v3 = 207;
      goto LABEL_88;
    case 62:
      v13 = 115;
      goto LABEL_51;
    case 63:
      v13 = 98;
LABEL_51:
      v18 = v13;
      v3 = 208;
      goto LABEL_88;
    case 64:
      v18 = 0;
      v3 = 210;
LABEL_88:
      v12 = 110;
      goto LABEL_89;
    case 65:
      v18 = 0;
      v3 = 720;
      goto LABEL_49;
    case 66:
      v18 = 0;
      v3 = 742;
      goto LABEL_49;
    case 67:
      v18 = 0;
      v3 = 1125;
      goto LABEL_49;
    case 68:
      v18 = 0;
      v3 = 1251;
LABEL_49:
      v12 = 116;
LABEL_89:
      snprintf(__str, 0x18uLL, "%c%d%c", v12, v3, v18);
      if (!__str[0])
      {
        goto LABEL_91;
      }

      result = CFStringCreateWithCString(0, __str, 0x600u);
      break;
    default:
LABEL_91:
      result = 0;
      break;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t logSubsystem(void)
{
  if (atomic_load_explicit(&logSubsystem(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&logSubsystem(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<logSubsystem(void)::$_0 &&>>);
  }

  return logSubsystem(void)::scope;
}

uint64_t TuningPListMgr::loadTuningInSubdirs_(const __CFString **a1, const __CFString ***a2, unsigned int a3, unsigned int a4)
{
  v8 = **a2;
  if (v8 && CFStringHasPrefix(v8, @"/"))
  {
    v9 = &stru_2881C8580;
  }

  else
  {
    v9 = *a1;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v9);
  theString = MutableCopy;
  v37 = 1;
  v11 = a3 - 1;
  v12 = a2;
  if (!MutableCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  CFStringAppend(MutableCopy, @"/");
  if (theString)
  {
    CFStringAppend(theString, **v12);
  }

LABEL_8:
  while (v11)
  {
    MutableCopy = theString;
    --v11;
    ++v12;
    if (theString)
    {
      goto LABEL_6;
    }
  }

  v35 = a1;
  v13 = *MEMORY[0x277CBECE8];
  v14 = strlen(TuningPListMgr::kTuningFileTypeSuffixMap[a4]);
  v15 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], TuningPListMgr::kTuningFileTypeSuffixMap[a4], v14, 0x600u, 0, *MEMORY[0x277CBED00]);
  if (theString)
  {
    v16 = theString;
    if (!CFStringHasSuffix(theString, v15))
    {
      CFStringAppend(theString, v15);
      v16 = theString;
    }
  }

  else
  {
    v16 = 0;
  }

  Mutable = CFStringCreateMutable(v13, 512);
  v18 = CFURLCreateWithFileSystemPath(v13, v16, kCFURLPOSIXPathStyle, 0);
  if (v18 && (v19 = CFReadStreamCreateWithFile(v13, v18), CFRelease(v18), v19) && (CFReadStreamOpen(v19), v20 = CFPropertyListCreateWithStream(v13, v19, 0, 0, 0, 0), CFReadStreamClose(v19), CFRelease(v19), v20))
  {
    CFRelease(Mutable);
    v21 = a2[a3 - 1];
    v22 = *v21;
    if (a4)
    {
      v34 = *v21;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v34 = theString;
      v38 = 0;
      do
      {
        v27 = *(&kLegacyStripNameKeys + v26);
        if (!CFDictionaryContainsKey(v20, v27))
        {
          if (!v25)
          {
            Count = CFDictionaryGetCount(v20);
            v24 = CFDictionaryCreateMutableCopy(v13, Count + 2, v20);
            v38 = v24;
          }

          CFDictionaryAddValue(v24, v27, v22);
          v25 = v24;
        }

        v26 += 8;
      }

      while (v26 != 16);
      if (v24)
      {
        CFRelease(v20);
      }

      else
      {
        v24 = v20;
      }

      v20 = v24;
    }

    Value = CFDictionaryGetValue(v20, @"name");
    if (Value)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(Value) && CFDictionaryGetCount(v35[a4 + 2]) >= 1)
      {
        operator new[]();
      }
    }

    CFDictionarySetValue(v35[a4 + 2], v34, v20);
    v32 = v35[6];
    if (v32)
    {
      PListLogger::logItemEntry(v35[a4 + 2], "@@ Strips Oct 11 2025 00:40:29", v32, v31);
    }

    v23 = 0;
    if (v15)
    {
LABEL_41:
      CFRelease(v15);
    }
  }

  else
  {
    if (Mutable)
    {
      CFStringAppend(Mutable, @"Error loading plist file ");
      CFStringAppend(Mutable, v16);
      CFStringAppend(Mutable, @"\n");
    }

    CFRelease(Mutable);
    v20 = 0;
    v23 = 0xFFFFFFFFLL;
    if (v15)
    {
      goto LABEL_41;
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  CACFMutableString::~CACFMutableString(&theString);
  return v23;
}

void sub_2725B8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(va1);
  CACFMutableString::~CACFMutableString(va);
  _Unwind_Resume(a1);
}

void CACFMutableString::~CACFMutableString(CACFMutableString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void PListLogger::logItemEntry(const __CFString *this, const char *a2, char *a3, void *a4)
{
  valuePtr[16] = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(this);
  if (CFStringGetTypeID() == v7)
  {
    v8 = *(a3 + 1);
    if (v8 >= 127)
    {
      v9 = 127;
    }

    else
    {
      v9 = v8;
    }

    *(valuePtr + v9) = 0;
    if (v8)
    {
      memset(valuePtr + v9 - (v9 - 1) - 1, 32, v9);
    }

    PListLogger::log(a3, "%s", valuePtr);
    CFGetRetainCount(this);
    CFStringGetCStringPtr(this, 0);
    PListLogger::log(a3, "'%s' | String{%d} | %s\n");
  }

  else if (CFNumberGetTypeID() == v7)
  {
    Type = CFNumberGetType(this);
    v12 = *(a3 + 1);
    if (v12 >= 127)
    {
      v13 = 127;
    }

    else
    {
      v13 = v12;
    }

    *(valuePtr + v13) = 0;
    if (v12)
    {
      memset(valuePtr + v13 - (v13 - 1) - 1, 32, v13);
    }

    PListLogger::log(a3, "%s", valuePtr);
    if (Type > kCFNumberDoubleType)
    {
      goto LABEL_55;
    }

    if (((1 << Type) & 0x3060) != 0)
    {
      valuePtr[0] = 0;
      CFNumberGetValue(this, Type, valuePtr);
      CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(float){%d} | %f\n");
      goto LABEL_8;
    }

    if (((1 << Type) & 0x82) != 0)
    {
      LOBYTE(valuePtr[0]) = 0;
      CFNumberGetValue(this, Type, valuePtr);
      CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(SInt8){%d} | 0x%02x\n");
      goto LABEL_8;
    }

    if (((1 << Type) & 0x104) == 0)
    {
LABEL_55:
      LODWORD(valuePtr[0]) = 0;
      CFNumberGetValue(this, Type, valuePtr);
      v30 = CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(SInt32){%d} | %-6d 0x%08x %c%c%c%c\n", a2, v30);
      goto LABEL_8;
    }

    LOWORD(valuePtr[0]) = 0;
    CFNumberGetValue(this, Type, valuePtr);
    CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Number(SInt16){%d} | 0x%04x\n");
  }

  else if (CFDictionaryGetTypeID() == v7)
  {
    v14 = *(a3 + 1);
    if (v14 >= 127)
    {
      v15 = 127;
    }

    else
    {
      v15 = v14;
    }

    *(valuePtr + v15) = 0;
    if (v14)
    {
      memset(valuePtr + v15 - (v15 - 1) - 1, 32, v15);
    }

    PListLogger::log(a3, "%s", valuePtr);
    v16 = CFGetRetainCount(this);
    Count = CFDictionaryGetCount(this);
    PListLogger::log(a3, "'%s' | Dictionary{%d} | %d key/value pairs\n", a2, v16, Count);
    if (!strcmp("aupreset", a2))
    {
      a3[8] = 1;
    }

    *(a3 + 1) += 4;
    CFDictionaryApplyFunction(this, PListLogger::logDictEntry, a3);
    *(a3 + 1) -= 4;
    a3[8] = 0;
  }

  else if (CFArrayGetTypeID() == v7)
  {
    v18 = CFArrayGetCount(this);
    v19 = *(a3 + 1);
    if (v19 >= 127)
    {
      v20 = 127;
    }

    else
    {
      v20 = v19;
    }

    *(valuePtr + v20) = 0;
    if (v19)
    {
      memset(valuePtr + v20 - (v20 - 1) - 1, 32, v20);
    }

    PListLogger::log(a3, "%s", valuePtr);
    v21 = CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Array{%d} | %d ordered objects\n", a2, v21, v18);
    v22 = *(a3 + 1);
    *(a3 + 1) = v22 + 4;
    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(this, i);
        snprintf(valuePtr, 0x10uLL, "[%u]", i);
        PListLogger::logItemEntry(ValueAtIndex, valuePtr, a3, v25);
      }

      v22 = *(a3 + 1) - 4;
    }

    *(a3 + 1) = v22;
  }

  else if (CFDataGetTypeID() == v7)
  {
    v26 = *(a3 + 1);
    if (v26 >= 127)
    {
      v27 = 127;
    }

    else
    {
      v27 = v26;
    }

    *(valuePtr + v27) = 0;
    if (v26)
    {
      memset(valuePtr + v27 - (v27 - 1) - 1, 32, v27);
    }

    PListLogger::log(a3, "%s", valuePtr);
    a3[8];
    CFGetRetainCount(this);
    CFDataGetLength(this);
    PListLogger::log(a3, "'%s' | %sData{%d} | %d bytes\n");
  }

  else
  {
    v28 = *(a3 + 1);
    if (v28 >= 127)
    {
      v29 = 127;
    }

    else
    {
      v29 = v28;
    }

    *(valuePtr + v29) = 0;
    if (v28)
    {
      memset(valuePtr + v29 - (v29 - 1) - 1, 32, v29);
    }

    PListLogger::log(a3, "%s", valuePtr);
    PListLogger::log(a3, "'%s' | <unknown type id: %d)>\n");
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t PListLogger::logDictEntry(const __CFString *this, PListLogger *a2, const char *a3, void *a4)
{
  CStringPtr = CFStringGetCStringPtr(this, 0);

  return PListLogger::logItemEntry(a2, CStringPtr, a3, v7);
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *TuningPListMgr::getAUPresetFromUnit(TuningPListMgr *this, const __CFDictionary *a2)
{
  result = CFDictionaryGetValue(this, @"aupreset");
  if (result)
  {
    v3 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *TuningPListMgr::lookupPlist_(uint64_t a1, const char *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1 + 16;
  if (!*(a1 + 16 + 8 * a3))
  {
    goto LABEL_17;
  }

  v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0, *MEMORY[0x277CBED00]);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *(v3 + 8 * a3);
  if (a3 - 1 > 2)
  {
    if (CFDictionaryGetCount(v7) > 0)
    {
      operator new[]();
    }

    CFRelease(v6);
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(v7, v6);
  if (!Value || (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v9)))
  {
    CFRelease(v6);
    v11 = logSubsystem();
    if (v11)
    {
      v12 = *v11;
      if (!*v11)
      {
LABEL_17:
        v9 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "TuningPListMgr.cpp";
      v17 = 1024;
      v18 = 435;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d return dictionary is null", &v15, 0x12u);
    }

    goto LABEL_17;
  }

  CFRelease(v6);
LABEL_18:
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

const void *TuningPListMgr::getEffect(TuningPListMgr *this, const __CFDictionary *a2)
{
  result = CFDictionaryGetValue(this, @"strips");
  if (result)
  {
    v3 = result;
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(v3) || CFArrayGetCount(v3) < 1)
    {
      return 0;
    }

    result = CFArrayGetValueAtIndex(v3, 0);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = CFDictionaryGetTypeID();
    if (v6 == CFGetTypeID(v5))
    {
      result = CFDictionaryGetValue(v5, @"effects");
      if (result)
      {
        v7 = result;
        v8 = CFArrayGetTypeID();
        if (v8 == CFGetTypeID(v7))
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *TuningPListMgr::getUnitByName(TuningPListMgr *this, const __CFArray *a2, const char *a3)
{
  Count = CFArrayGetCount(this);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0, *MEMORY[0x277CBED00]);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this, v9);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        Value = CFDictionaryGetValue(v11, @"displayname");
        if (Value)
        {
          v14 = Value;
          v15 = CFStringGetTypeID();
          if (v15 == CFGetTypeID(v14) && CFStringCompare(v8, v14, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    if (v6 == ++v9)
    {
      v11 = 0;
      break;
    }
  }

  CFRelease(v8);
  return v11;
}

uint64x2_t CreateMagicalWindow(uint64_t a1, int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = xmmword_2727564D0;
    result = xmmword_2727564E0;
    v5 = xmmword_272756540;
    v6 = (a1 + 8);
    __asm { FMOV            V1.4S, #4.0 }

    v43 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v51 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v41 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v42 = _Q4;
    v39 = vdupq_n_s64(4uLL);
    v40 = vdupq_n_s32(0x3FC90FDBu);
    do
    {
      v49 = result;
      v50 = v4;
      v14 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v4)));
      v48 = v5;
      v15 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v43), v44);
      v16 = vmovn_s32(vcgtq_f32(v51, v15));
      v17 = vbic_s8(v14, v16);
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v15));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v42, v15));
      v22 = vbic_s8(v20, v21);
      v23 = vsubq_f32(v18, v15);
      v24 = vand_s8(v20, v21);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v17, v19);
      v47 = vorr_s8(vorr_s8(v22, vorr_s8(vand_s8(v14, v16), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vaddq_f32(v23, v18), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v15, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), v23, v15)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v24, v26))), 0x1FuLL));
      v55 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v27.f32), v41)), vmulq_f64(vcvt_hight_f64_f32(v27), v41)), v40);
      v52 = cosf(v55.f32[1]);
      v28.f32[0] = cosf(v55.f32[0]);
      v28.f32[1] = v52;
      v53 = v28;
      v29 = cosf(v55.f32[2]);
      v30 = v53;
      v30.f32[2] = v29;
      v54 = v30;
      v31 = cosf(v55.f32[3]);
      v32 = v54;
      v32.f32[3] = v31;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      v34.i64[0] = 0xBF000000BF000000;
      v34.i64[1] = 0xBF000000BF000000;
      v35 = vmlaq_f32(v33, v34, v32);
      v36 = vmulq_f32(v35, v35);
      v37 = vsqrtq_f32(vbslq_s8(v46, v36, vsubq_f32(v51, v36)));
      if (v47.i8[0])
      {
        *(v6 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v6 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v6 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v6[1] = v37.i32[3];
      }

      v4 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v5 = vaddq_s32(v48, v38);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
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
    v7 = a1[2];
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

        std::allocator<float>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void VPTimeFreqConverter::VPTimeFreqConverter(VPTimeFreqConverter *this, int a2, int a3)
{
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  *(this + 169) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v3 = 2 * a3;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  if (2 * a3)
  {
    *this = 0;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a3;
    *(this + 4) = v3;
    *(this + 5) = v3;
    *(this + 6) = 1.0 / v3;
    *(this + 7) = a3 & 0x7FFFFFFF;
    operator new[]();
  }
}

void sub_2725B9FC0(_Unwind_Exception *a1)
{
  v5 = v1[20];
  if (v5)
  {
    v1[21] = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v1[18] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = v1[5];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void VPTimeFreqConverter::~VPTimeFreqConverter(VPTimeFreqConverter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x2743CBF70](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x2743CBF70](v3, 0x1000C8052888210);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t VPTimeFreqConverter::Synthesize(VPTimeFreqConverter *this, const DSPSplitComplex *a2, float *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(this + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 117;
      v5 = MEMORY[0x277D86220];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for conversion";
LABEL_9:
      _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, v6, &v9, 0x12u);
    }

LABEL_10:
    result = 4294956433;
    goto LABEL_11;
  }

  if ((*(this + 1) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 124;
      v5 = MEMORY[0x277D86220];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for synthesis";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (*this)
  {
    result = 4294967292;
  }

  else
  {
    MultiRadixRealFFT::RealOutOfPlaceInverseTransform((this + 32), a2, *(this + 11));
    MEMORY[0x2743CCDD0](*(this + 11), 1, *(this + 20), 1, *(this + 11), 1, *(this + 4));
    MEMORY[0x2743CCD80](*(this + 11), 1, *(this + 14), 1, *(this + 14), 1, *(this + 4));
    memcpy(a3, *(this + 14), 4 * *(this + 3));
    memmove(*(this + 14), (*(this + 14) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
    bzero((*(this + 14) + 4 * (*(this + 4) - *(this + 3))), 4 * *(this + 3));
    result = 0;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void VPTimeFreqConverter_Analyze(uint64_t a1, const void *a2, const DSPSplitComplex *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 136315394;
    v11 = "vpTimeFreqConverter.cpp";
    v12 = 1024;
    v13 = 69;
    v7 = MEMORY[0x277D86220];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for conversion";
LABEL_11:
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 0x12u);
    goto LABEL_12;
  }

  if ((*(a1 + 4) | 2) != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 136315394;
    v11 = "vpTimeFreqConverter.cpp";
    v12 = 1024;
    v13 = 76;
    v7 = MEMORY[0x277D86220];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for analysis";
    goto LABEL_11;
  }

  if (!*a1)
  {
    memcpy(*(a1 + 64), (*(a1 + 64) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
    memcpy((*(a1 + 64) + 4 * (*(a1 + 16) - *(a1 + 12))), a2, 4 * *(a1 + 12));
    MEMORY[0x2743CCDD0](*(a1 + 136), 1, *(a1 + 64), 1, *(a1 + 88), 1, *(a1 + 16));
    MEMORY[0x2743CCE20](*(a1 + 88), 1, a1 + 24, *(a1 + 88), 1, *(a1 + 16));
    vDSP_ctoz(*(a1 + 88), 2, a3, 1, **(a1 + 32) >> 1);
    v6 = *(a1 + 32);
    if (!v6)
    {
      abort();
    }

    vDSP_DFT_Execute(*(v6 + 8), a3->realp, a3->imagp, a3->realp, a3->imagp);
    v10 = 1056964608;
    MEMORY[0x2743CCE20](a3->realp, 1, &v10, a3->realp, 1, **(a1 + 32) >> 1);
    MEMORY[0x2743CCE20](a3->imagp, 1, &v10, a3->imagp, 1, **(a1 + 32) >> 1);
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
}

void **std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](void **result, void *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return (*(**v3 + 24))(*v3, v3, v3[1], v3[2]);
  }

  return result;
}

void **vp::Audio_Buffer::create(void **a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = 0;
  v7 = *(a2 + 28);
  v8 = *(a2 + 24) * a3;
  v9 = *(a2 + 12);
  if (((*(a2 + 24) * a3) & 0x3F) != 0)
  {
    v10 = (*(a2 + 24) * a3) - ((*(a2 + 24) * a3) & 0x3F) + 64;
  }

  else
  {
    v10 = (*(a2 + 24) * a3);
  }

  v11 = (*(a2 + 12) & 0x20) == 0;
  if ((v9 & 0x20) != 0)
  {
    v12 = (16 * v7) | 8;
  }

  else
  {
    v12 = 24;
  }

  if ((v9 & 0x20) != 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = 1;
  }

  if ((*(a2 + 12) & 0x20) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a2 + 28);
  }

  v15 = 8 * v13;
  v31 = v15 + 88;
  v16 = v15 + 88 + v12;
  if ((v16 & 0x38) != 0)
  {
    v16 = (v16 + 64) & 0x3FFFFFFFC0;
  }

  v29 = v16;
  v30 = v13;
  v17 = v16 + v10 * v13;
  v18 = (*(*a4 + 16))(a4, (v17 + 7) & 0xFFFFFFFFFFFFFFF8, 64);
  bzero(v18, v17);
  *v18 = a4;
  v18[1] = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18[2] = 64;
  *(v18 + 6) = a3;
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  *(v18 + 2) = *a2;
  *(v18 + 3) = v19;
  v18[8] = v20;
  v18[9] = v18 + 11;
  if (v30)
  {
    v21 = 0;
    v22 = v18 + v29;
    do
    {
      if (a3)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      *(v18[9] + v21) = v23;
      v21 += 8;
      v22 += v10;
    }

    while (v15 != v21);
    v24 = 0;
    v25 = 0;
    v18[10] = v18 + v31;
    *(v18 + v31) = v30;
    do
    {
      v26 = *(v18[9] + v25);
      v27 = v18[10] + v24;
      *(v27 + 8) = v14;
      *(v27 + 12) = v8;
      *(v27 + 16) = v26;
      v25 += 8;
      v24 += 16;
    }

    while (8 * v30 != v25);
  }

  else
  {
    v18[10] = v18 + v31;
    *(v18 + v31) = 0;
  }

  v35 = 0;
  v36 = 0;
  v37 = 1;
  v34 = 1;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v36, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v35, 0);
  v33 = 0;
  v36 = 0;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](a1, v18);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v36, 0);
  return std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v33, 0);
}

void sub_2725BA810(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BA7DCLL);
}

uint64_t *vp::Audio_Buffer::prepare(uint64_t *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*this)
  {
    _os_crash();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(v2 + 24) < a2)
  {
    goto LABEL_11;
  }

  v3 = *(v2 + 56);
  v4 = *(v2 + 60);
  v5 = *(v2 + 80);
  if ((*(v2 + 44) & 0x20) != 0)
  {
    *v5 = v4;
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    *v5 = 1;
    v6 = v4;
    v4 = 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = v3 * a2;
  do
  {
    v10 = *(*(*this + 72) + 8 * v8);
    v11 = *(*this + 80) + v7;
    *(v11 + 8) = v6;
    *(v11 + 12) = v9;
    *(v11 + 16) = v10;
    ++v8;
    v7 += 16;
  }

  while (v4 != v8);
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2725BA9B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

vp::utility::Audio_Buffer_Fader *vp::utility::Audio_Buffer_Fader::Audio_Buffer_Fader(vp::utility::Audio_Buffer_Fader *this, uint64_t a2, const CA::StreamDescription *a3)
{
  *this = 0xC00000000;
  *(this + 2) = 0;
  *(this + 12) = 1;
  *(this + 2) = 0;
  v5 = (this + 16);
  default_resource = std::pmr::get_default_resource(this);
  vp::Audio_Buffer::create(&v9, a2, 4096, default_resource);
  v7 = v9;
  v9 = 0;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v5, v7);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v9, 0);
  return this;
}

void *vp::utility::Audio_Buffer_Fader::cache_audio_buffers(void *this, const AudioBufferList *a2)
{
  if (this)
  {
    v2 = this[10];
    if (v2)
    {
      v3 = a2->mNumberBuffers >= *v2 ? *v2 : a2->mNumberBuffers;
      if (v3)
      {
        p_mData = &a2->mBuffers[0].mData;
        v5 = (v2 + 4);
        do
        {
          v6 = *(p_mData - 1);
          v7 = *(v5 - 1);
          if (v6 >= v7)
          {
            v8 = v7;
          }

          else
          {
            v8 = v6;
          }

          this = memcpy(*v5, *p_mData, v8);
          p_mData += 2;
          v5 += 2;
          --v3;
        }

        while (v3);
      }
    }
  }

  return this;
}

uint64_t vp::utility::Audio_Buffer_Fader::fade_out_over_one_frame(uint64_t this, AudioBufferList *a2)
{
  v2 = *(this + 16);
  if (v2 && *(v2 + 80))
  {
    v4 = this;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, a2);
    v5 = (v26 + 2);
    v6 = 16 * *v26;
    for (i = v26 + 2; v6; v6 -= 16)
    {
      v9 = *i;
      v8 = i[1];
      i += 4;
      vp::fill(v5, (v8 >> 2) / v9, 0.0);
      v5 += 2;
    }

    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, v11);
    v12 = v26 + 2;
    for (j = 16 * *v26; j; j -= 16)
    {
      v14 = (v12[1] >> 2) / *v12;
      v15 = *(v4 + 8);
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      vDSP_vrvrs(*(v12 + 1), 1, v16);
      v12 += 4;
    }

    v17 = *(v4 + 16);
    if (v17)
    {
      v18 = *(v17 + 80);
    }

    else
    {
      v18 = 0;
    }

    FadeSrcAToSrcB(v18, a2, a2, 0, 1);
    v19 = *(v4 + 16);
    if (v19)
    {
      v20 = *(v19 + 80);
    }

    else
    {
      v20 = 0;
    }

    this = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, v20);
    v21 = (v26 + 2);
    v22 = 16 * *v26;
    for (k = v26 + 2; v22; v22 -= 16)
    {
      v25 = *k;
      v24 = k[1];
      k += 4;
      this = vp::fill(v21, (v24 >> 2) / v25, 0.0);
      v21 += 2;
    }
  }

  return this;
}

void vp::utility::Audio_Buffer_Fader::fade_in_over_few_frames(vp::utility::Audio_Buffer_Fader *this, AudioBufferList *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      if (a2->mNumberBuffers)
      {
        v6 = 0;
        v7 = a2->mBuffers[0].mDataByteSize >> 2;
        v8 = 0.0;
        v9 = 16;
        do
        {
          __C = 0.0;
          vDSP_svemg(*(&a2->mNumberBuffers + v9), 1, &__C, v7);
          v8 = v8 + __C;
          if (__C != 0.0)
          {
            break;
          }

          ++v6;
          v9 += 16;
        }

        while (v6 < a2->mNumberBuffers);
        if (v8 != 0.0)
        {
          if (*this)
          {
            FadeSrcAToSrcB(v3, a2, a2, *this - 1, *(this + 1));
            v10 = *this;
            v11 = *(this + 1);
            ++*this;
            if (v10 == v11)
            {
              *this = 0;
              *(this + 12) = 1;
            }
          }

          else
          {
            if (a2->mNumberBuffers)
            {
              v12 = 0;
              v13 = 16;
              do
              {
                vDSP_vclr(*(&a2->mNumberBuffers + v13), 1, v7);
                ++v12;
                v13 += 16;
              }

              while (v12 < a2->mNumberBuffers);
              v14 = *this + 1;
            }

            else
            {
              v14 = 1;
            }

            *this = v14;
          }
        }
      }
    }
  }
}

void sub_2725BAE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725BAFD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

vp::utility::Audio_Buffer_Mixer *vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(vp::utility::Audio_Buffer_Mixer *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 2, a3);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](&__p, a2);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 5, a3);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (!*this)
  {
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (!*(this + 1))
  {
LABEL_10:
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*(this + 2))
  {
    return this;
  }

LABEL_11:
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t vp::utility::Audio_Buffer_Mixer::set_gain(uint64_t this, uint64_t a2, unsigned int a3, float a4, unsigned int a5)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 3) <= a5)
  {
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(this + 24 * a5);
  if (a3 >= ((*(this + 24 * a5 + 8) - v5) >> 2))
  {
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v5 + 4 * a3) = a4;
  return this;
}

void virtual thunk tovp::vx::io::ports::Audio_Buffer_Input_Port::~Audio_Buffer_Input_Port(vp::vx::io::ports::Audio_Buffer_Input_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 12) = &unk_2881C6630;
  v2 = *(v1 + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 12) = &unk_2881C6630;
  v2 = *(v1 + 14);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::Object::~Object(vp::vx::io::Object *this)
{
  *this = &unk_2881C6630;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881C6630;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_process_input_data(AudioBufferList *a1@<X2>, uint64_t a2@<X0>, int a3@<W1>, __int128 *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  if (a3)
  {
    *a4 = *a4 + a5;
LABEL_18:
    *a6 = 0;
    a6[48] = 1;
    return;
  }

  v9 = *(a2 + 72);
  if ((v9 & 1) == 0)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v62, a1);
    if (vp::for_each_buffer(v62, vp::fill, a5))
    {
      v40 = *(a2 + 16);
      v41 = *(a2 + 32);
      v42 = *(a2 + 64);
      a4[2] = *(a2 + 48);
      a4[3] = v42;
      *a4 = v40;
      a4[1] = v41;
      goto LABEL_18;
    }

    v62 = 0x17009000000000;
    v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v66 = 0;
    v64 = 0;
    v65 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
    vp::vx::io::operator<<<char const(&)[37]>(v68, &v62, "failed to zero-out audio buffer list");
    v32 = v68;
LABEL_21:
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v32);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v62);
    if (SHIBYTE(v66) < 0)
    {
      v33 = v64;
      v34 = v66;
      v35 = v67[0];
LABEL_23:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v35, v33, v34 & 0x7FFFFFFFFFFFFFFFLL);
      return;
    }

    return;
  }

  if (*(a2 + 92) >= a5)
  {
    v10 = *a4;
    v11 = *(a4 + 24);
    v58 = *(a4 + 8);
    v59 = v11;
    v60 = *(a4 + 40);
    v12 = *(a4 + 6);
    v61 = *(a4 + 7);
    v13 = a4[1];
    v54 = *a4;
    v55 = v13;
    v56 = a4[2];
    v57 = v12;
    v15 = *(a4 + 14);
    v14 = *(a4 + 15);
    if ((v15 & 1) == 0 || *(a2 + 88) == 1)
    {
      v10 = *(a2 + 16);
      v13 = *(a2 + 40);
      v58 = *(a2 + 24);
      v36 = v58;
      v59 = v13;
      v60 = *(a2 + 56);
      v37 = v60;
      v61 = *(a2 + 72);
      v38 = v61;
      *a4 = v10;
      *(a4 + 8) = v36;
      *(a4 + 24) = v13;
      *(a4 + 40) = v37;
      *(a4 + 7) = v38;
      *(a2 + 88) = 0;
      if ((*(a2 + 72) & 2) == 0)
      {
LABEL_9:
        v16 = v10 + a5;
        v17 = *(a2 + 16);
        LODWORD(v13) = *(a2 + 92);
        if (v16 > v17 + v13)
        {
          v48 = 0x1300B900000002;
          v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
          v52 = 0;
          v50 = 0;
          v51 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v53);
          vp::vx::io::operator<<<char const(&)[28]>(&v62, &v48);
          MEMORY[0x2743CBB10](&v65, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          MEMORY[0x2743CBB10](&v65, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is ahead of available time range [", 35);
          MEMORY[0x2743CBB10](&v65, *(a2 + 16));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          LODWORD(v43) = *(a2 + 92);
          MEMORY[0x2743CBB10](&v65, *(a2 + 16) + v43);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
        }

        else
        {
          if (v10 >= v17)
          {
            v18 = *(a2 + 8);
            v19 = **(v18 + 80);
            if (v19 == a1->mNumberBuffers)
            {
              if (v19)
              {
                mBuffers = a1->mBuffers;
                v21 = (*(v18 + 80) + 8);
                v22 = **(v18 + 80);
                do
                {
                  v24 = *v21;
                  v21 += 4;
                  v23 = v24;
                  mNumberChannels = mBuffers->mNumberChannels;
                  ++mBuffers;
                  if (v23 != mNumberChannels)
                  {
                    v31 = v55;
                    *a4 = v54;
                    a4[1] = v31;
                    a4[2] = v56;
                    *(a4 + 6) = v57;
                    *(a4 + 14) = v15;
                    *(a4 + 15) = v14;
                    v62 = 0x1700E900000000;
                    v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
                    v66 = 0;
                    v64 = 0;
                    v65 = 0;
                    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
                    vp::vx::io::operator<<<char const(&)[45]>(v46, &v62, "audio buffer list channel counts don't match");
                    v32 = v46;
                    goto LABEL_21;
                  }

                  --v22;
                }

                while (v22);
                v26 = vabdd_f64(v10, v17);
                p_mData = &a1->mBuffers[0].mData;
                v28 = (*(v18 + 80) + 16);
                do
                {
                  v29 = *(v28 - 2);
                  v30 = *v28;
                  v28 += 2;
                  *p_mData = (v30 + 4 * (v26 * v29));
                  *(p_mData - 1) = 4 * a5 * v29;
                  p_mData += 2;
                  --v19;
                }

                while (v19);
              }

              goto LABEL_18;
            }

            v45 = v55;
            *a4 = v54;
            a4[1] = v45;
            a4[2] = v56;
            *(a4 + 6) = v57;
            *(a4 + 14) = v15;
            *(a4 + 15) = v14;
            v62 = 0x1300D600000000;
            v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
            v66 = 0;
            v64 = 0;
            v65 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
            vp::vx::io::operator<<<char const(&)[45]>(v47, &v62, "audio buffer lists buffer counts don't match");
            v32 = v47;
            goto LABEL_21;
          }

          v48 = 0x1300C300000002;
          v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
          v52 = 0;
          v50 = 0;
          v51 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v53);
          vp::vx::io::operator<<<char const(&)[28]>(&v62, &v48);
          MEMORY[0x2743CBB10](&v65, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          MEMORY[0x2743CBB10](&v65, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is behind of available time range [", 36);
          MEMORY[0x2743CBB10](&v65, *(a2 + 16));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          LODWORD(v44) = *(a2 + 92);
          MEMORY[0x2743CBB10](&v65, *(a2 + 16) + v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
        }

        vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v62);
        _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v48);
        if (SHIBYTE(v52) < 0)
        {
          v33 = v50;
          v34 = v52;
          v35 = v53;
          goto LABEL_23;
        }

        return;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a4 + 14) |= 2u;
    *(a4 + 1) = *(a2 + 24);
    goto LABEL_9;
  }

  *&v58 = 0x13009E00000002;
  *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  *&v60 = 0;
  v59 = 0uLL;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v60 + 1);
  vp::vx::io::operator<<<char const(&)[21]>(&v62, &v58);
  MEMORY[0x2743CBB40](&v65, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is larger than input port's audio buffer capacity ", 51);
  MEMORY[0x2743CBB40](&v65, *(a2 + 92));
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v62);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v58);
  if (SBYTE7(v60) < 0)
  {
    v33 = v59;
    v35 = *(&v60 + 1);
    v34 = v60;
    goto LABEL_23;
  }
}

void vp::vx::io::operator<<<char const(&)[37]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BB994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[21]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "process frame count ", 20);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BBA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[28]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "requested read time range [", 27);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BBAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[45]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BBB48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  *(a1 + 184) = 0;
  *a1 = &unk_2881BF1B0;
  *(a1 + 136) = &unk_2881BF1D8;
  v4 = *a2;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v5 = (a2 + *(v4 - 24));
  std::ios_base::move((a1 + 136), v5);
  *(a1 + 272) = v5[1].__vftable;
  v5[1].__vftable = 0;
  *(a1 + 280) = v5[1].__fmtflags_;
  *a1 = &unk_2881BF070;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743CBDC0](a1 + 32);
  *(a1 + 88) = 0;
  v6 = (a1 + 88);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = &unk_2881BF248;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator((a1 + 112));
  *(a1 + 128) = *(a2 + 32);
  v7 = a2[11];
  if (*(a2 + 111) >= 0)
  {
    v7 = a2 + 11;
  }

  v8 = a2[5];
  if (v8)
  {
    v9 = v8 - v7;
    v22 = a2[6] - v7;
    v23 = a2[7] - v7;
  }

  else
  {
    v22 = -1;
    v23 = -1;
    v9 = -1;
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = v10 - v7;
    v12 = a2[9] - v7;
    v13 = a2[10] - v7;
  }

  else
  {
    v11 = -1;
    v12 = -1;
    v13 = -1;
  }

  v14 = a2[15];
  v15 = v14 - v7;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(a1 + 112);
  if (v17 == a2[14] || ((*(*v17 + 32))(v17) & 1) != 0)
  {
    if (*(a1 + 111) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v18 = *(a2 + 11);
    *(a1 + 104) = a2[13];
    *v6 = v18;
    *(a2 + 111) = 0;
    *(a2 + 88) = 0;
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::operator=((a1 + 88), a2 + 11);
  }

  if (*(a1 + 111) < 0)
  {
    v6 = *v6;
  }

  if (v9 != -1)
  {
    *(a1 + 40) = v6 + v9;
    *(a1 + 48) = v6 + v22;
    *(a1 + 56) = v6 + v23;
  }

  if (v11 != -1)
  {
    *(a1 + 80) = v6 + v13;
    *(a1 + 64) = v6 + v11;
    *(a1 + 72) = v6 + v11 + v12;
  }

  v19 = v6 + v16;
  if (v16 == -1)
  {
    v19 = 0;
  }

  *(a1 + 120) = v19;
  if (*(a2 + 111) >= 0)
  {
    v20 = a2 + 11;
  }

  else
  {
    v20 = a2[11];
  }

  a2[5] = v20;
  a2[6] = v20;
  a2[7] = v20;
  a2[8] = v20;
  a2[9] = v20;
  a2[10] = v20;
  a2[15] = v20;
  std::locale::locale(&v24, a2 + 4);
  (*(*(a1 + 24) + 16))(a1 + 24, &v24);
  std::locale::locale(&v25, (a1 + 32));
  std::locale::operator=((a1 + 32), &v24);
  std::locale::~locale(&v25);
  std::locale::~locale(&v24);
  *(a1 + *(*a1 - 24) + 40) = a1 + 24;
  return a1;
}

void sub_2725BBEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  if (*(v13 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v13 + 112), *(v13 + 88), *(v13 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v13 + 24) = a9;
  std::locale::~locale((v13 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](a10);
  _Unwind_Resume(a1);
}

uint64_t vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(void *a1)
{
  result = MEMORY[0x2743CB700]();
  if (*MEMORY[0x277D7F098])
  {
    *a1 = *MEMORY[0x277D7F098];
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void **std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<false>(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

_BYTE *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<true>(_BYTE *__dst, void *__src, size_t __len)
{
  v5 = __len > 0x16;
  v6 = __len - 22;
  if (v5)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(__dst, 0x16uLL, v6, __dst[23] & 0x7F, __dst[23] & 0x7F, __len, __src);
  }

  else
  {
    __dst[23] = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst[__len] = 0;
  }

  return __dst;
}

void **std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<false>(void **a1, void *__src, size_t __len)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(a1, v5 - 1, __len - v5 + 1, a1[1], a1[1], __len, __src);
  }

  else
  {
    v6 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v6, __src, __len);
    }

    *(v6 + __len) = 0;
  }

  return a1;
}

_BYTE *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, size_t a6, const void *a7)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = a1;
  if (*(a1 + 23) < 0)
  {
    v13 = *a1;
  }

  v14 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v14 = 2 * a2;
  }

  if ((v14 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (v14 | 7) + 1;
  }

  v16 = v14 >= 0x17;
  v17 = 23;
  if (v16)
  {
    v17 = v15;
  }

  if (a2 > 0x3FFFFFFFFFFFFFF2)
  {
    v18 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v18 = v17;
  }

  result = (*(**(a1 + 24) + 16))(*(a1 + 24), v18, 1);
  v20 = result;
  if (a6)
  {
    result = memmove(result, a7, a6);
  }

  v21 = a4 - a5;
  if (v21)
  {
    result = memmove(&v20[a6], (v13 + a5), v21);
  }

  if (a2 != 22)
  {
    result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 24), v13, a2 + 1);
  }

  *a1 = v20;
  *(a1 + 8) = v21 + a6;
  *(a1 + 16) = v18 | 0x8000000000000000;
  v20[v21 + a6] = 0;
  return result;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::overflow(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 == v6)
  {
    if ((*(a1 + 104) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 96);
    v12 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v14 = *(a1 + 72);
      v13 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 != v13)
      {
LABEL_12:
        v15 = *(a1 + 64);
        *(a1 + 72) = v14 + 1;
LABEL_14:
        *(v15 + v14) = 0;
        if (*(a1 + 87) < 0)
        {
          v16 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        else
        {
          v16 = 22;
        }

        std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize(a1 + 64, v16);
        v17 = &v7[-v10];
        v18 = *(a1 + 87);
        if (v18 < 0)
        {
          v12 = *(a1 + 64);
          v18 = *(a1 + 72);
        }

        v6 = (v12 + v18);
        v7 = &v17[v12];
        *(a1 + 40) = v12;
        *(a1 + 48) = &v17[v12];
        *(a1 + 56) = v6;
        v8 = v12 + v11 - v10;
        goto LABEL_20;
      }
    }

    else
    {
      if (*(a1 + 87) != 22)
      {
        v14 = *(a1 + 87);
        *(a1 + 87) = (*(a1 + 87) + 1) & 0x7F;
        v15 = a1 + 64;
        goto LABEL_14;
      }

      v13 = 22;
    }

    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by((a1 + 64), v13, 1uLL, v13, v13);
    v14 = v13;
    goto LABEL_12;
  }

  v8 = *(a1 + 96);
LABEL_20:
  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 96) = v8;
  if ((*(a1 + 104) & 8) != 0)
  {
    v19 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v19 = *v19;
    }

    *(a1 + 16) = v19;
    *(a1 + 24) = v19 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 == v6)
  {
    v20 = *(*a1 + 104);

    return v20(a1, v2);
  }

  else
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }
}

void sub_2725BC438(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BC2A8);
}

void std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 8);
    v4 = a2 - v7;
    if (a2 > v7)
    {
      v3 = *(a1 + 8);
      v8 = *(a1 + 16);
      v5 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v8);
      goto LABEL_6;
    }

    *(a1 + 8) = a2;
    v2 = *a1;
LABEL_14:
    v11 = &v2[a2];
    goto LABEL_17;
  }

  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 23) = a2;
    goto LABEL_14;
  }

  v5 = 22;
  LOBYTE(v6) = *(a1 + 23);
LABEL_6:
  if (v5 - v3 < v4)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by(a1, v5, v4 - v5 + v3, v3, v3);
    *(v2 + 1) = v3;
    LOBYTE(v6) = v2[23];
  }

  v9 = v2;
  if ((v6 & 0x80) != 0)
  {
    v9 = *v2;
  }

  bzero(&v9[v3], v4);
  v10 = v3 + v4;
  if (v2[23] < 0)
  {
    *(v2 + 1) = v10;
  }

  else
  {
    v2[23] = v10 & 0x7F;
  }

  v11 = &v9[v10];
LABEL_17:
  *v11 = 0;
}

char *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by(char **a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = a1;
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v10 = 2 * a2;
  }

  if ((v10 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v10 | 7) + 1;
  }

  v12 = v10 >= 0x17;
  v13 = 23;
  if (v12)
  {
    v13 = v11;
  }

  if (a2 <= 0x3FFFFFFFFFFFFFF2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFF7;
  }

  result = (*(*a1[3] + 16))(a1[3], v14, 1);
  v16 = result;
  if (a5)
  {
    result = memmove(result, v9, a5);
  }

  if (a4 != a5)
  {
    result = memmove(&v16[a5], &v9[a5], a4 - a5);
  }

  if (a2 != 22)
  {
    result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a1[3], v9, a2 + 1);
  }

  *a1 = v16;
  a1[2] = (v14 | 0x8000000000000000);
  return result;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 96) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v4 - 1;
    *(a1 + 32) = v2;
    return a2;
  }

  if ((*(a1 + 104) & 0x10) == 0 && *(v4 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v4 - 1;
  *(a1 + 32) = v2;
  *(v4 - 1) = a2;
  return a2;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 96) = v2;
    v1 = v2;
  }

  if ((*(a1 + 104) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 96) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = a3;
    goto LABEL_20;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = v5 - v9;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }
  }

LABEL_20:
  v7 = -1;
  v12 = v11 + a2;
  if (v12 >= 0 && v10 >= v12 && (!v12 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + v12;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + v12;
    }

    v7 = v12;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_2881BF248;
  if (*(a1 + 87) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 88), *(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_2881BF248;
  if (*(a1 + 87) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 88), *(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = &unk_2881BF070;
  *(v1 + 17) = &unk_2881BF0C0;
  *(v1 + 2) = &unk_2881BF098;
  *(v1 + 3) = &unk_2881BF248;
  if (v1[111] < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v1 + 14), *(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v1 + 3) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v1 + 136);

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = a1 + *(*a1 - 24);
  *v1 = &unk_2881BF070;
  *(v1 + 17) = &unk_2881BF0C0;
  *(v1 + 2) = &unk_2881BF098;
  *(v1 + 3) = &unk_2881BF248;
  if (v1[111] < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v1 + 14), *(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v1 + 3) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();

  JUMPOUT(0x2743CBE30);
}

void non-virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *(a1 - 16) = &unk_2881BF070;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_2881BF0C0;
  *a1 = &unk_2881BF098;
  *(a1 + 8) = &unk_2881BF248;
  if (*(a1 + 95) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 96), *(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);

  JUMPOUT(0x2743CBFA0);
}

{
  *(a1 - 16) = &unk_2881BF070;
  *(a1 + 120) = &unk_2881BF0C0;
  *a1 = &unk_2881BF098;
  *(a1 + 8) = &unk_2881BF248;
  if (*(a1 + 95) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 96), *(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();

  JUMPOUT(0x2743CBE30);
}

void std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_2881BF070;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = &unk_2881BF248;
  if (*(a1 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_2881BF070;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = &unk_2881BF248;
  if (*(a1 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);
  return a1;
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_set_input_data(uint64_t a1@<X8>)
{
  v6[0] = 0x1000740000000DLL;
  v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  v8 = 0;
  v9 = 0;
  v7 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v6);
  if (SHIBYTE(v9) < 0)
  {
    (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_copy_input_data(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, const AudioBufferList *a2@<X1>, const AudioTimeStamp *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = (this + 8);
  v10 = *(this + 1);
  if (v10)
  {
    v10 = *(v10 + 24) | 0x100000000;
  }

  if (v10 <= 0x100000000)
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v33[0] = 0x13003400000002;
    v33[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v35 = 0;
    v36 = 0;
    v34 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v37);
    vp::vx::io::operator<<<char const(&)[24]>(&v27, v33);
    MEMORY[0x2743CBB40](&v30, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " is larger than input port's audio buffer capacity ", 51);
    v19 = *v11;
    if (*v11)
    {
      v19 = *(v19 + 24) | 0x100000000;
    }

    if (v19 <= 0x100000000)
    {
      v20 = 0x100000000;
    }

    else
    {
      v20 = v19;
    }

    MEMORY[0x2743CBB40](&v30, v20);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v27);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v33);
    if (SHIBYTE(v36) < 0)
    {
      v21 = v34;
      v23 = v36;
      v22 = v37;
LABEL_27:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, v21, v23 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    vp::Audio_Buffer::prepare(this + 1, a4);
    if (a3->mFlags)
    {
      mSampleTime = a3->mSampleTime;
      if (*(this + 10) == a3->mSampleTime)
      {
        mSampleTime = *(this + 10);
      }

      else
      {
        *(this + 88) = 1;
      }

      *(this + 10) = mSampleTime + a4;
      v13 = *(this + 1);
      if (v13)
      {
        v14 = *(v13 + 80);
      }

      else
      {
        v14 = 0;
      }

      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v27, v14);
      v15 = v27;
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v27, a2);
      if (vp::for_each_buffer_pair(v15, v27, vp::copy, a4))
      {
        v16 = *&a3->mSampleTime;
        v17 = *&a3->mRateScalar;
        v18 = *&a3->mSMPTETime.mHours;
        *(this + 3) = *&a3->mSMPTETime.mSubframes;
        *(this + 4) = v18;
        *(this + 1) = v16;
        *(this + 2) = v17;
        *(this + 23) = a4;
        *(a5 + 48) = 0;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 1;
        return;
      }

      vp::Audio_Buffer::prepare(v11, *(this + 23));
      v27 = 0x13006700000000;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v31 = 0;
      v29 = 0;
      v30 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v32);
      vp::vx::io::operator<<<char const(&)[26]>(v25, &v27, "failed to copy input data");
      v24 = v25;
    }

    else
    {
      v27 = 0x13004300000005;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v31 = 0;
      v29 = 0;
      v30 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v32);
      vp::vx::io::operator<<<char const(&)[49]>(v26, &v27, "audio time stamp does not have valid sample time");
      v24 = v26;
    }

    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v24);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v27);
    if (SHIBYTE(v31) < 0)
    {
      v21 = v29;
      v23 = v31;
      v22 = v32[0];
      goto LABEL_27;
    }
  }
}

void vp::vx::io::operator<<<char const(&)[24]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "input data frame count ", 23);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BD3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

__n128 _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 5);
  result = *(a2 + 6);
  v6 = *(a2 + 2);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 2) = 0;
  *a1 = v2;
  *(a1 + 4) = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  return result;
}

void vp::vx::io::operator<<<char const(&)[49]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BD474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[26]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BD510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Buffer_Input_Port::reset@<D0>(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 1);
  v4 = (this + 8);
  v5 = v6;
  if (v6)
  {
    v5 = *(v5 + 24) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  vp::Audio_Buffer::prepare(v4, v7);
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 10) = 0x7FF8000000000000;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Buffer_Input_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D2>)
{
  if (a2 == 1)
  {
    v6 = *(result + 16);
    v7 = *(result + 72);
    if (v7)
    {
      LODWORD(a4) = *(result + 92);
      v6 = v6 + a4;
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 24);
    *(a3 + 24) = *(result + 40);
    *(a3 + 40) = *(result + 56);
    *(a3 + 56) = v7;
  }

  else if (!a2)
  {
    v4 = *(result + 32);
    *a3 = *(result + 16);
    *(a3 + 16) = v4;
    v5 = *(result + 64);
    *(a3 + 32) = *(result + 48);
    *(a3 + 48) = v5;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Buffer_Input_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::~Audio_Buffer_Input_Port(vp::vx::io::ports::Audio_Buffer_Input_Port *this)
{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 12) = &unk_2881C6630;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 12) = &unk_2881C6630;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void virtual thunk tovp::vx::io::ports::Audio_Buffer_Output_Port::~Audio_Buffer_Output_Port(vp::vx::io::ports::Audio_Buffer_Output_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_process_output_data(vp::Audio_Buffer *this@<X0>, int a2@<W1>, _DWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v43[35] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = (this + 8);
    v12 = *(this + 1);
    if (v12)
    {
      v12 = *(v12 + 24) | 0x100000000;
    }

    if (v12 <= 0x100000000)
    {
      LODWORD(v12) = 0;
    }

    if (v12 < a5)
    {
      v32[0] = 0x13016700000002;
      v32[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v34 = 0;
      v35 = 0;
      v33 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v36);
      vp::vx::io::operator<<<char const(&)[21]>(&v42, v32);
      MEMORY[0x2743CBB40](&v43[1], a5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43[1], " is larger than output port's audio buffer capacity ", 52);
      v29 = *v13;
      if (*v13)
      {
        v29 = *(v29 + 24) | 0x100000000;
      }

      if (v29 <= 0x100000000)
      {
        v30 = 0x100000000;
      }

      else
      {
        v30 = v29;
      }

      MEMORY[0x2743CBB40](&v43[1], v30);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v42);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, v32);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v24 = v33;
      v26 = v35;
      v25 = v36;
    }

    else
    {
      vp::Audio_Buffer::prepare(v13, a5);
      v14 = **(*v13 + 80);
      if (v14 == *a3)
      {
        if (v14)
        {
          v15 = a3 + 2;
          v16 = (*(*v13 + 80) + 8);
          v17 = **(*v13 + 80);
          do
          {
            v19 = *v16;
            v16 += 4;
            v18 = v19;
            v20 = *v15;
            v15 += 4;
            if (v18 != v20)
            {
              *&v42 = 0x17018400000000;
              *(&v42 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
              memset(v43, 0, 24);
              vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v43[3]);
              vp::vx::io::operator<<<char const(&)[45]>(v31, &v42, "audio buffer list channel counts don't match");
              v23 = v31;
              goto LABEL_19;
            }

            --v17;
          }

          while (v17);
          v21 = 2;
          do
          {
            *&a3[v21] = *(*(*v13 + 80) + v21 * 4);
            v21 += 4;
            --v14;
          }

          while (v14);
        }

        goto LABEL_16;
      }

      *&v42 = 0x13017500000000;
      *(&v42 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      memset(v43, 0, 24);
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v43[3]);
      vp::vx::io::operator<<<char const(&)[45]>(v37, &v42, "audio buffer lists buffer counts don't match");
      v23 = v37;
LABEL_19:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v23);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v42);
      if ((SHIBYTE(v43[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v24 = v43[0];
      v25 = v43[3];
      v26 = v43[2];
    }

LABEL_21:
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v25, v24, v26 & 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  if (*(a4 + 56))
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    *(this + 72) = a4[3];
    *(this + 56) = v10;
    *(this + 40) = v9;
    *(this + 24) = v8;
    *(this + 4) = a5;
LABEL_16:
    *a6 = 0;
    a6[48] = 1;
LABEL_17:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  v27 = *(this + 1);
  if (v27)
  {
    v28 = *(v27 + 80);
  }

  else
  {
    v28 = 0;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v42, v28);
  if (vp::for_each_buffer(v42, vp::fill, a5))
  {
    v37[0] = 0x13019F00000005;
    v37[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v39 = 0;
    v40 = 0;
    v38 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v41);
    vp::vx::io::operator<<<char const(&)[49]>(&v42, v37, "audio time stamp does not have valid sample time");
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v42);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, v37);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v24 = v38;
    v26 = v40;
    v25 = v41[0];
    goto LABEL_21;
  }

  memset(v43, 0, 64);
  v42 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void sub_2725BDC3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_set_output_data(uint64_t a1@<X8>)
{
  v6[0] = 0x1001510000000CLL;
  v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  v8 = 0;
  v9 = 0;
  v7 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v6);
  if (SHIBYTE(v9) < 0)
  {
    (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_copy_output_data(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, AudioBufferList *a2@<X1>, AudioTimeStamp *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(this + 4) < a4)
  {
    v24[0] = 0x13013600000002;
    v24[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v26 = 0;
    v27 = 0;
    v25 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v28);
    vp::vx::io::operator<<<char const(&)[25]>(v19, v24);
    MEMORY[0x2743CBB40](&v21, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " is larger than output port's audio buffer capacity ", 52);
    MEMORY[0x2743CBB40](&v21, *(this + 4));
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v19);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v24);
    if (SHIBYTE(v27) < 0)
    {
      v15 = v25;
      v17 = v27;
      v16 = v28;
LABEL_12:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v16, v15, v17 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a2);
    v9 = v19[0];
    v10 = *(this + 1);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, v11);
    if (vp::for_each_buffer_pair(v9, v19[0], vp::copy, a4))
    {
      v12 = *(this + 24);
      v13 = *(this + 40);
      v14 = *(this + 72);
      *&a3->mSMPTETime.mSubframes = *(this + 56);
      *&a3->mSMPTETime.mHours = v14;
      *&a3->mSampleTime = v12;
      *&a3->mRateScalar = v13;
      *a5 = a4;
      *(a5 + 48) = 1;
      return;
    }

    v19[0] = 0x13014400000000;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v21 = 0;
    v22 = 0;
    v20 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v23);
    vp::vx::io::operator<<<char const(&)[27]>(v18, v19);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v18);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v19);
    if (SHIBYTE(v22) < 0)
    {
      v15 = v20;
      v17 = v22;
      v16 = v23[0];
      goto LABEL_12;
    }
  }
}

void vp::vx::io::operator<<<char const(&)[25]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "output data frame count ", 24);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BDF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[27]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to copy output data", 26);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BDFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Buffer_Output_Port::reset@<D0>(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 1);
  v4 = (this + 8);
  v5 = v6;
  if (v6)
  {
    v5 = *(v5 + 24) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  vp::Audio_Buffer::prepare(v4, v7);
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Buffer_Output_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D2>)
{
  if (a2 == 1)
  {
    v6 = *(result + 24);
    v7 = *(result + 80);
    if (v7)
    {
      LODWORD(a4) = *(result + 16);
      v6 = v6 + a4;
    }

    *a3 = v6;
    v8 = *(result + 48);
    *(a3 + 8) = *(result + 32);
    *(a3 + 24) = v8;
    *(a3 + 40) = *(result + 64);
    *(a3 + 56) = v7;
  }

  else if (!a2)
  {
    v4 = *(result + 40);
    *a3 = *(result + 24);
    *(a3 + 16) = v4;
    v5 = *(result + 72);
    *(a3 + 32) = *(result + 56);
    *(a3 + 48) = v5;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Buffer_Output_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::~Audio_Buffer_Output_Port(vp::vx::io::ports::Audio_Buffer_Output_Port *this)
{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<vp::vx::io::Object::Log_Context>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<vp::vx::io::Object::Log_Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C62D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Buffer_Input_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Buffer_Input_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 96) = &unk_2881C6630;
    v4 = *(v2 + 112);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Buffer_Output_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 88) = &unk_2881C6630;
    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Buffer_Input_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Buffer_Input_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Buffer_Input_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 120, 8);
  }

  return a1;
}

uint64_t vp::copy(void **a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (v3 != *a2 || (*(a1 + 1) >> 2) / v3 < a3 || (*(a2 + 4) >> 2) / v3 < a3)
  {
    return 0;
  }

  memcpy(a1[1], *(a2 + 8), 4 * a3 * v3);
  return 1;
}

uint64_t vp::copy(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  if (v5 != *a3 || ((a1[1] >> 2) / v5) - a2 < a5 || ((*(a3 + 4) >> 2) / v5) - a4 < a5)
  {
    return 0;
  }

  memcpy((*(a1 + 1) + 4 * v5 * a2), (*(a3 + 8) + 4 * v5 * a4), 4 * a5 * v5);
  return 1;
}

BOOL vp::fill(float **a1, unint64_t a2, float a3)
{
  __A = a3;
  v4 = *a1;
  v5 = (*(a1 + 1) >> 2) / v4;
  if (v5 >= a2)
  {
    vDSP_vfill(&__A, a1[1], 1, v4 * a2);
  }

  return v5 >= a2;
}

BOOL vp::fill(unsigned int *a1, uint64_t a2, unint64_t a3, float a4)
{
  __A = a4;
  v5 = *a1;
  v6 = (a1[1] >> 2) / v5 - a2;
  if (v6 >= a3)
  {
    vDSP_vfill(&__A, (*(a1 + 1) + 4 * v5 * a2), 1, v5 * a3);
  }

  return v6 >= a3;
}

uint64_t vp::for_each_buffer(unsigned int *a1, unsigned int (*a2)(unsigned int *, uint64_t, double), uint64_t a3)
{
  v3 = *a1;
  if (!v3)
  {
    return 1;
  }

  v6 = a1 + 2;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & a2(v6, a3, 0.0);
    v6 += 4;
    --v3;
  }

  while (v3);
  return v7;
}

uint64_t vp::for_each_buffer(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (!v3)
  {
    return 1;
  }

  v6 = a1 + 2;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & vp::fill(v6, a2, a3, 0.0);
    v6 += 4;
    --v3;
  }

  while (v3);
  return v7;
}

uint64_t vp::for_each_buffer_pair(unsigned int *a1, _DWORD *a2, unsigned int (*a3)(unsigned int *, _DWORD *, uint64_t), uint64_t a4)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v7 = a2 + 2;
  v8 = a1 + 2;
  LODWORD(v9) = 1;
  do
  {
    v9 = v9 & a3(v8, v7, a4);
    v7 += 4;
    v8 += 4;
    --v4;
  }

  while (v4);
  return v9;
}

uint64_t vp::for_each_buffer_pair(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned int (*a5)(unsigned int *, uint64_t, _DWORD *, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *a1;
  if (v6 != *a3)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v11 = a3 + 2;
  v12 = a1 + 2;
  LODWORD(v13) = 1;
  do
  {
    v13 = v13 & a5(v12, a2, v11, a4, a6);
    v11 += 4;
    v12 += 4;
    --v6;
  }

  while (v6);
  return v13;
}

void vp::Audio_Capture::create(uint64_t *a1, std::__fs::filesystem::path *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v8 = v18;
  std::__fs::filesystem::path::extension[abi:ne200100](v18, a2);
  v9 = v19;
  v10 = v18[0];
  if (v19 < 0)
  {
    v8 = v18[0];
  }

  v11 = strlen(v8);
  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = v13;
    if (v11 == 4 && *(&vp::Audio_Capture::create(std::__fs::filesystem::path const&,CA::StreamDescription const&,vp::Audio_Capture::RingBufferMode)::s_file_type_id_lut)[2 * v12] == *v8)
    {
      break;
    }

    v13 = 0;
    v12 = 1;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }
  }

  v15 = *(&vp::Audio_Capture::create(std::__fs::filesystem::path const&,CA::StreamDescription const&,vp::Audio_Capture::RingBufferMode)::s_file_type_id_lut + v12 + 8);
LABEL_9:
  if ((a4 - 1) >= 3)
  {
    v16 = 4096;
  }

  else
  {
    v16 = qword_27275A678[a4 - 1];
  }

  if ((v6->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_5198);
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v17 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v16, 0, v6, v15, 0, a3);
    if (v9 < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if (v9 < 0)
    {
LABEL_20:
      operator delete(v10);
    }
  }

  *a1 = v17;
}

void sub_2725BE9FC(void *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BE9C4);
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
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

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t vp::Audio_Capture::write_async(vp::Audio_Capture *this, const AudioBufferList *a2, uint64_t a3, const AudioTimeStamp *a4, double *a5)
{
  if (!a5)
  {
    result = (*(*&a2->mNumberBuffers + 96))(a2, a4, a3, 0, -1);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    *this = 0;
    v7 = 1;
    goto LABEL_6;
  }

  result = (*(*&a2->mNumberBuffers + 96))(a2, a4, a3, 0, *a5);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
  *this = result;
LABEL_6:
  *(this + 4) = v7;
  return result;
}

uint64_t vp::vx::components::Audio_Capturer::begin_write_data(uint64_t result, int a2)
{
  if (a2 == 3)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

{
  if (a2 == 1)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

uint64_t vp::vx::components::Audio_Capturer::begin_process(uint64_t result, int a2)
{
  if (!a2)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

{
  if (!a2)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

void vp::vx::Component::get_dsp_property_override(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
}

{
  *(a1 + 24) = 0;
}

void vp::vx::Component::get_dsp_parameter_override(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
}

{
  *(a1 + 24) = 0;
}

void vp::vx::components::Audio_Capturer::end_configuration_changes(vp::vx::components::Audio_Capturer *this)
{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v5 = HIBYTE(v17);
    v6 = SHIBYTE(v17);
    v7 = v16;
    v8 = vp::get_log(log_context_info);
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_p = __p;
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v19 = p_p;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%send configuration changes", buf, 0x16u);
      LOBYTE(v6) = HIBYTE(v17);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v3);
  v16 = 0;
  v17 = 0;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v13 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  *(this + 240) = v13 & 1;
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2725BEE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2725BEDD0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<BOOL>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void vp::vx::components::Audio_Capturer::begin_configuration_changes(vp::vx::components::Audio_Capturer *this)
{
  v26 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v5 = HIBYTE(v21);
    v6 = SHIBYTE(v21);
    v7 = v20;
    v8 = vp::get_log(log_context_info);
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_p = __p;
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v23 = p_p;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%sbegin configuration changes", buf, 0x16u);
      LOBYTE(v6) = HIBYTE(v21);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v3);
  v20 = 0;
  v21 = 0;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v13 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  if (v13 == 1)
  {
    if (*(this + 240))
    {
      v14 = atomic_load(this + 92);
      if (v14 > *(this + 93))
      {
        v15 = *(this + 94) + 1;
        *(this + 94) = v15;
        *(*(this + 38) + 112) = v15;
        *(*(this + 42) + 112) = v15;
        v16 = atomic_load(this + 92);
        *(this + 93) = v16;
      }
    }

    else
    {
      v17 = *(this + 37);
      *(*(this + 38) + 56) = v17;
      *(*(this + 42) + 56) = v17;
      *(this + 94) = 0;
      atomic_store(0, this + 92);
      *(this + 93) = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2725BF06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2725BF038);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Audio_Capturer::configure(vp::vx::components::Audio_Capturer *this)
{
  v49 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::Audio_Capturer]", 34);
    v4 = HIBYTE(v47);
    v5 = SHIBYTE(v47);
    v6 = v47;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
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
      *v45 = rep;
      *&v45[8] = 2080;
      *&v45[10] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v47);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = *(this + 32);
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = *(this + 31);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v29 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v14 = *(this + 34);
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = std::__shared_weak_count::lock(v14);
  v32 = v15;
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = *(this + 33);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v16)
  {
    goto LABEL_28;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v17 = *(this + 36);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(this + 35);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        v20 = *(this + 52) | (*(this + 112) << 32);
        (*(*v19 + 24))(&__t, v19, 3);
        LODWORD(v34) = __t.__d_.__rep_;
        *v35 = v47;
        v47 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        (*(*v19 + 24))(&__t, v19, 4);
        v36 = __t.__d_.__rep_;
        v37 = v47;
        v47 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        __t.__d_.__rep_ = &unk_2881B2938;
        *&v47 = v20;
        p_t = &__t;
        v38 = v34;
        v39 = v36;
        vp::vx::data_flow::State_Manager::create_state(buf, (v29 + 48), &__t);
        LODWORD(v41) = *buf;
        v42 = *&v45[4];
        *&v45[4] = 0;
        *&v45[12] = 0;
        vp::vx::data_flow::State<void>::~State(buf);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&__t);
        LODWORD(__t.__d_.__rep_) = v41;
        v47 = v42;
        v42 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v41);
        vp::vx::data_flow::State<void>::~State(this + 54);
        *(this + 54) = __t.__d_.__rep_;
        *(this + 14) = v47;
        v47 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        vp::vx::data_flow::State<void>::~State(&v36);
        vp::vx::data_flow::State<void>::~State(&v34);
        v21 = *(this + 52) - 8;
        if (v21 <= 0xB)
        {
          v31 = dword_27275A690[v21];
        }

        v40 = 0x100000000;
        *&v22 = v16;
        *(&v22 + 1) = v32;
        v30 = v22;
        v23 = *(this + 1);
        v34 = 0;
        *v35 = v23;
        *&v35[8] = xmmword_272756550;
        v24 = (*(*v23 + 16))(v23, 184, 8);
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v25 = *(this + 1);
        *v24 = &unk_2881B8328;
        *(v24 + 8) = v30;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        *(v24 + 56) = std::chrono::system_clock::to_time_t(&__t);
        *(v24 + 64) = 0;
        *(v24 + 72) = 0;
        *(v24 + 80) = 0;
        *(v24 + 88) = 0;
        *(v24 + 96) = 0;
        *(v24 + 104) = 0;
        *(v24 + 112) = 0;
        *(v24 + 120) = v25;
        *(v24 + 128) = 0;
        *(v24 + 136) = 0;
        *(v24 + 144) = 0;
        *(v24 + 152) = v25;
        *(v24 + 160) = 0;
        *(v24 + 168) = 0;
        *(v24 + 176) = 0;
        std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](&v34, v24);
        v26 = v34;
        vp::vx::data_flow::State<void>::State(v33, this + 54);
        v28 = v26[1];
        v27 = v26[2];
        if (v27)
        {
          atomic_fetch_add_explicit(v27 + 2, 1uLL, memory_order_relaxed);
        }

        v41 = &unk_2881B84D0;
        *&v42 = v28;
        *(&v42 + 1) = v27;
        v43 = &v41;
        std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, &v41);
        p_t = 0;
        operator new();
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
LABEL_30:
    _os_crash();
    __break(1u);
LABEL_28:
    _os_crash();
    __break(1u);
  }
}

void sub_2725BFC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void (****std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__2JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5.i32[0] = bswap32(vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*v4));
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v10 = vuzp1_s8(v9, v9).u32[0];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v11);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v10;
  *(result + 23) = 4;
  return result;
}

void sub_2725BFFDC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void vp::utility::exception_match<std::bad_cast>()
{
  std::current_exception();
  v0.__ptr_ = &v1;
  std::rethrow_exception(v0);
  __break(1u);
}

BOOL sub_2725C0050(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::exception_ptr::~exception_ptr(&v17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return a2 == 2;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::compare_value(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *a3;
  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = v3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = **a2;
  }

  if (v7 >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  return memcmp(v8, v9, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::destroy_value(uint64_t a1, void ***a2)
{
  if (*(*a2 + 23) < 0)
  {
    operator delete(**a2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = 0;
  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::copy_value(uint64_t a1, std::string **a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v3->__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&v3->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Output_Port_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__2JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B29C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__1JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5.i32[0] = bswap32(vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*v4));
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v10 = vuzp1_s8(v9, v9).u32[0];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v11);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v10;
  *(result + 23) = 4;
  return result;
}

void sub_2725C03D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Input_Port_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__1JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2980;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 12))
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(a1 + 8) != 0) | *v7 & *v9;
  }

  v11 = v10 & 1;
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, void *a2)
{
  *a2 = &unk_2881B2938;
  a2[1] = *(result + 8);
  return result;
}

void vp::vx::components::Audio_Capturer::set_state_owner(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 280);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 288);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::set_state_observer(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 264);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 272);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::~Audio_Capturer(vp::vx::components::Audio_Capturer *this)
{
  vp::vx::components::Audio_Capturer::~Audio_Capturer(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](this + 42, 0);
  std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](this + 38, 0);
  v11 = *(this + 36);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 34);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 32);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  vp::vx::data_flow::State<void>::~State(this + 54);
  vp::Context::~Context((this + 16));
  v14 = *MEMORY[0x277D85DE8];
}

void vp::Audio_Converter::~Audio_Converter(OpaqueAudioConverter **this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2)
  {
    if (AudioConverterDispose(v2))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *this = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2725C09AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::Audio_Converter::get_property(vp::Audio_Converter *this, AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, unsigned int *a4, UInt32 *a5)
{
  v8 = *a5;
  v9 = a5;
  result = AudioConverterGetProperty(inAudioConverter, inPropertyID, &v8, a4);
  if (result)
  {
    v7 = 0;
    *this = result;
  }

  else
  {
    *this = 0;
    v7 = 1;
  }

  *(this + 4) = v7;
  *v9 = v8;
  return result;
}

uint64_t vp::Audio_Converter::set_property(vp::Audio_Converter *this, AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, const void *a4)
{
  result = AudioConverterSetProperty(inAudioConverter, inPropertyID, 4u, a4);
  if (result)
  {
    v6 = 0;
    *this = result;
  }

  else
  {
    *this = 0;
    v6 = 1;
  }

  *(this + 4) = v6;
  return result;
}

uint64_t caulk::expected<unsigned int,int>::value(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881C1110;
    exception[2] = v3;
  }

  return result;
}