uint64_t *webrtc::callback_list_impl::CallbackListReceivers::Foreach(uint64_t *result, uint64_t a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result + 3;
  if (*(result + 24) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v17);
    std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(v16);
  }

  *(result + 24) = 1;
  v9 = *result;
  v10 = result[1];
  if (*result == v10)
  {
    *v8 = 0;
  }

  else
  {
    v13 = result;
    v14 = 0;
    do
    {
      result = a3(a2, v9 + 1);
      v15 = *v9;
      v9 += 7;
      v14 |= v15 == v8;
    }

    while (v9 != v10);
    *v8 = 0;
    if (v14)
    {

      return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v13, v8);
    }
  }

  return result;
}

void std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(void *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x492492492492492)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
    {
      v2 = 0x492492492492492;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

std::string *webrtc::Candidate::Candidate(webrtc::Candidate *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, size_t a10, int a11, int a12, _BYTE *a13, size_t a14, __int16 a15, __int16 a16)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  {
    *(this + 6) = 1;
    *(this + 2) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = 0u;
    *(this + 12) = 0;
    *(this + 13) = &unk_28828CE50;
    *(this + 144) = 0;
    *(this + 28) = 0;
    *(this + 116) = 0u;
    *(this + 68) = 0;
    *(this + 35) = 0;
    *(this + 38) = 0;
    *(this + 10) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 52) = 0;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 62) = 0;
    *(this + 16) = 0u;
    *(this + 17) = 0u;
    *(this + 18) = 0u;
    *(this + 38) = &unk_28828CE50;
    *(this + 344) = 0;
    memset(v31, 0, sizeof(v31));
    *(this + 78) = 0;
    *(this + 316) = *&v31[4];
    *(this + 168) = 0;
    *(this + 85) = 0;
    *(this + 52) = 0;
    *(this + 53) = 0;
    *(this + 51) = 0;
    *(this + 22) = 0u;
    *(this + 23) = 0u;
    *(this + 24) = 0u;
    *(this + 100) = 0;
    return this;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v17, v18, v19, v20, v30);
    return webrtc::Candidate::Candidate(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

std::string *webrtc::Candidate::Candidate(uint64_t a1, int a2, _BYTE *a3, size_t a4, __int128 *a5, int a6, _BYTE *a7, size_t a8, _BYTE *__src, size_t __len, int a11, int a12, _BYTE *a13, size_t a14, __int16 a15, __int16 a16)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v24, v25, v26, v27, v37);
    return webrtc::Candidate::Candidate(v35, v36);
  }

  *(a1 + 24) = a2;
  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_40;
  }

  if (a4 > 0x16)
  {
    operator new();
  }

  *(a1 + 55) = a4;
  v28 = (a1 + 32 + a4);
  if (a1 + 32 <= a3 && v28 > a3)
  {
    goto LABEL_39;
  }

  if (a4)
  {
    memmove((a1 + 32), a3, a4);
  }

  *v28 = 0;
  *(a1 + 88) = 0u;
  v29 = (a1 + 80);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = &unk_28828CE50;
  *(a1 + 128) = 0;
  if ((a1 + 80) != a5)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(v29, *a5, *(a5 + 1));
    }

    else
    {
      v30 = *a5;
      *(a1 + 96) = *(a5 + 2);
      *v29 = v30;
    }
  }

  *(a1 + 112) = *(a5 + 8);
  *(a1 + 116) = *(a5 + 36);
  *(a1 + 136) = *(a5 + 28);
  *(a1 + 144) = *(a5 + 64);
  *(a1 + 140) = *(a5 + 15);
  *(a1 + 152) = a6;
  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_40;
  }

  if (a8 > 0x16)
  {
    operator new();
  }

  *(a1 + 183) = a8;
  v31 = (a1 + 160 + a8);
  if (a1 + 160 <= a7 && v31 > a7)
  {
    goto LABEL_39;
  }

  if (a8)
  {
    memmove((a1 + 160), a7, a8);
  }

  *v31 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_40;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 207) = __len;
  v32 = (a1 + 184 + __len);
  if (a1 + 184 <= __src && v32 > __src)
  {
    goto LABEL_39;
  }

  if (__len)
  {
    memmove((a1 + 184), __src, __len);
  }

  *v32 = 0;
  *(a1 + 208) = a11;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a12;
  if (a14 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_40:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a14 > 0x16)
  {
    operator new();
  }

  *(a1 + 279) = a14;
  v33 = (a1 + 256 + a14);
  if (a1 + 256 <= a13 && v33 > a13)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a14)
  {
    memmove((a1 + 256), a13, a14);
  }

  *v33 = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_28828CE50;
  *(a1 + 344) = 0;
  memset(v38, 0, sizeof(v38));
  *(a1 + 312) = 0;
  *(a1 + 316) = *&v38[4];
  *(a1 + 336) = 0;
  *(a1 + 340) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = a15;
  *(a1 + 402) = a16;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  return a1;
}

std::string *webrtc::Candidate::Candidate(std::string *this, std::string *a2)
{
  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v4 = *&a2->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
    LODWORD(this[1].__r_.__value_.__l.__data_) = a2[1].__r_.__value_.__l.__data_;
    if ((a2[2].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external((this + 32), a2[1].__r_.__value_.__l.__size_, a2[1].__r_.__value_.__r.__words[2]);
    if ((a2[3].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  LODWORD(this[1].__r_.__value_.__l.__data_) = a2[1].__r_.__value_.__l.__data_;
  if (a2[2].__r_.__value_.__s.__data_[7] < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *&a2[1].__r_.__value_.__r.__words[1];
  this[2].__r_.__value_.__r.__words[0] = a2[2].__r_.__value_.__r.__words[0];
  *&this[1].__r_.__value_.__r.__words[1] = v5;
  if ((a2[3].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
LABEL_4:
    v6 = *&a2[2].__r_.__value_.__r.__words[1];
    this[3].__r_.__value_.__r.__words[0] = a2[3].__r_.__value_.__r.__words[0];
    *&this[2].__r_.__value_.__r.__words[1] = v6;
    goto LABEL_8;
  }

LABEL_7:
  std::string::__init_copy_ctor_external((this + 56), a2[2].__r_.__value_.__l.__size_, a2[2].__r_.__value_.__r.__words[2]);
LABEL_8:
  this[3].__r_.__value_.__l.__size_ = 0;
  v7 = &this[3].__r_.__value_.__s.__data_[8];
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = &unk_28828CE50;
  LODWORD(this[5].__r_.__value_.__r.__words[1]) = 0;
  if (this != a2)
  {
    if (a2[4].__r_.__value_.__s.__data_[7] < 0)
    {
      std::string::__assign_no_alias<true>(v7, a2[3].__r_.__value_.__l.__size_, a2[3].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = *&a2[3].__r_.__value_.__r.__words[1];
      this[4].__r_.__value_.__r.__words[0] = a2[4].__r_.__value_.__r.__words[0];
      *v7 = v8;
    }
  }

  LODWORD(this[4].__r_.__value_.__r.__words[2]) = a2[4].__r_.__value_.__r.__words[2];
  *(&this[4].__r_.__value_.__r.__words[2] + 4) = *(&a2[4].__r_.__value_.__r.__words[2] + 4);
  LOWORD(this[5].__r_.__value_.__r.__words[2]) = a2[5].__r_.__value_.__r.__words[2];
  this[6].__r_.__value_.__s.__data_[0] = a2[6].__r_.__value_.__s.__data_[0];
  HIDWORD(this[5].__r_.__value_.__r.__words[2]) = HIDWORD(a2[5].__r_.__value_.__r.__words[2]);
  LODWORD(this[6].__r_.__value_.__r.__words[1]) = a2[6].__r_.__value_.__r.__words[1];
  if (a2[7].__r_.__value_.__s.__data_[15] < 0)
  {
    std::string::__init_copy_ctor_external((this + 160), a2[6].__r_.__value_.__r.__words[2], a2[7].__r_.__value_.__r.__words[0]);
    if ((a2[8].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
    {
LABEL_14:
      v10 = *&a2[7].__r_.__value_.__r.__words[2];
      this[8].__r_.__value_.__l.__size_ = a2[8].__r_.__value_.__l.__size_;
      *&this[7].__r_.__value_.__r.__words[2] = v10;
      LODWORD(this[8].__r_.__value_.__r.__words[2]) = a2[8].__r_.__value_.__r.__words[2];
      if ((SHIBYTE(a2[9].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      std::string::__init_copy_ctor_external(this + 9, a2[9].__r_.__value_.__l.__data_, a2[9].__r_.__value_.__l.__size_);
      v14 = a2[10].__r_.__value_.__r.__words[0];
      LODWORD(this[10].__r_.__value_.__r.__words[1]) = a2[10].__r_.__value_.__r.__words[1];
      this[10].__r_.__value_.__r.__words[0] = v14;
      if ((a2[11].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = *&a2[6].__r_.__value_.__r.__words[2];
    this[7].__r_.__value_.__l.__size_ = a2[7].__r_.__value_.__l.__size_;
    *&this[6].__r_.__value_.__r.__words[2] = v9;
    if ((a2[8].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  std::string::__init_copy_ctor_external((this + 184), a2[7].__r_.__value_.__r.__words[2], a2[8].__r_.__value_.__r.__words[0]);
  LODWORD(this[8].__r_.__value_.__r.__words[2]) = a2[8].__r_.__value_.__r.__words[2];
  if (SHIBYTE(a2[9].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v11 = *&a2[9].__r_.__value_.__l.__data_;
  this[9].__r_.__value_.__r.__words[2] = a2[9].__r_.__value_.__r.__words[2];
  *&this[9].__r_.__value_.__l.__data_ = v11;
  v12 = a2[10].__r_.__value_.__r.__words[0];
  LODWORD(this[10].__r_.__value_.__r.__words[1]) = a2[10].__r_.__value_.__r.__words[1];
  this[10].__r_.__value_.__r.__words[0] = v12;
  if ((a2[11].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
LABEL_16:
    v13 = *&a2[10].__r_.__value_.__r.__words[2];
    this[11].__r_.__value_.__l.__size_ = a2[11].__r_.__value_.__l.__size_;
    *&this[10].__r_.__value_.__r.__words[2] = v13;
    goto LABEL_21;
  }

LABEL_20:
  std::string::__init_copy_ctor_external((this + 256), a2[10].__r_.__value_.__r.__words[2], a2[11].__r_.__value_.__r.__words[0]);
LABEL_21:
  this[11].__r_.__value_.__r.__words[2] = 0;
  this[12].__r_.__value_.__r.__words[0] = 0;
  this[13].__r_.__value_.__r.__words[0] = 0;
  this[13].__r_.__value_.__l.__size_ = 0;
  this[12].__r_.__value_.__l.__size_ = 0;
  this[12].__r_.__value_.__r.__words[2] = &unk_28828CE50;
  LODWORD(this[13].__r_.__value_.__r.__words[2]) = 0;
  if (this != a2)
  {
    v15 = &this[11].__r_.__value_.__s.__data_[16];
    if (a2[12].__r_.__value_.__s.__data_[15] < 0)
    {
      std::string::__assign_no_alias<true>(v15, a2[11].__r_.__value_.__r.__words[2], a2[12].__r_.__value_.__r.__words[0]);
    }

    else
    {
      v16 = *&a2[11].__r_.__value_.__r.__words[2];
      this[12].__r_.__value_.__l.__size_ = a2[12].__r_.__value_.__l.__size_;
      *v15 = v16;
    }
  }

  LODWORD(this[13].__r_.__value_.__l.__data_) = a2[13].__r_.__value_.__l.__data_;
  *(this[13].__r_.__value_.__r.__words + 4) = *(a2[13].__r_.__value_.__r.__words + 4);
  LOWORD(this[14].__r_.__value_.__l.__data_) = a2[14].__r_.__value_.__l.__data_;
  this[14].__r_.__value_.__s.__data_[8] = a2[14].__r_.__value_.__s.__data_[8];
  HIDWORD(this[14].__r_.__value_.__r.__words[0]) = HIDWORD(a2[14].__r_.__value_.__r.__words[0]);
  if ((a2[15].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    v17 = *&a2[14].__r_.__value_.__r.__words[2];
    this[15].__r_.__value_.__l.__size_ = a2[15].__r_.__value_.__l.__size_;
    *&this[14].__r_.__value_.__r.__words[2] = v17;
    v18 = (this + 376);
    if ((a2[16].__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    std::string::__init_copy_ctor_external(v18, a2[15].__r_.__value_.__r.__words[2], a2[16].__r_.__value_.__r.__words[0]);
    LODWORD(this[16].__r_.__value_.__r.__words[2]) = a2[16].__r_.__value_.__r.__words[2];
    v20 = this + 17;
    if ((SHIBYTE(a2[17].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((this + 352), a2[14].__r_.__value_.__r.__words[2], a2[15].__r_.__value_.__r.__words[0]);
  v18 = (this + 376);
  if (a2[16].__r_.__value_.__s.__data_[15] < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v19 = *&a2[15].__r_.__value_.__r.__words[2];
  v18->__r_.__value_.__r.__words[2] = a2[16].__r_.__value_.__l.__size_;
  *&v18->__r_.__value_.__l.__data_ = v19;
  LODWORD(this[16].__r_.__value_.__r.__words[2]) = a2[16].__r_.__value_.__r.__words[2];
  v20 = this + 17;
  if ((SHIBYTE(a2[17].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    v21 = *&a2[17].__r_.__value_.__l.__data_;
    v20->__r_.__value_.__r.__words[2] = a2[17].__r_.__value_.__r.__words[2];
    *&v20->__r_.__value_.__l.__data_ = v21;
    return this;
  }

LABEL_31:
  std::string::__init_copy_ctor_external(v20, a2[17].__r_.__value_.__l.__data_, a2[17].__r_.__value_.__l.__size_);
  return this;
}

void webrtc::Candidate::~Candidate(void **this)
{
  if (*(this + 431) < 0)
  {
    operator delete(this[51]);
    if ((*(this + 399) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 375) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 399) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[47]);
  if ((*(this + 375) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 303) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(this[44]);
  if ((*(this + 303) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(this + 279) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(this[35]);
  if ((*(this + 279) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(this + 239) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(this[32]);
  if ((*(this + 239) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(this + 207) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(this[27]);
  if ((*(this + 207) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(this + 183) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(this[23]);
  if ((*(this + 183) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(this + 103) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(this[20]);
  if ((*(this + 103) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(this[10]);
  if ((*(this + 79) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(this + 55) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(this[7]);
  if ((*(this + 55) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*this);
    return;
  }

LABEL_24:
  operator delete(this[4]);
  if (*(this + 23) < 0)
  {
    goto LABEL_25;
  }
}

BOOL webrtc::Candidate::IsEquivalent(webrtc::Candidate *this, const webrtc::Candidate *a2)
{
  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  v2 = *(this + 55);
  if (v2 >= 0)
  {
    v3 = *(this + 55);
  }

  else
  {
    v3 = *(this + 5);
  }

  v4 = *(a2 + 55);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 5);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = this + 32;
  }

  else
  {
    v7 = *(this + 4);
  }

  if (v5 >= 0)
  {
    v9 = a2 + 32;
  }

  else
  {
    v9 = *(a2 + 4);
  }

  if (memcmp(v7, v9, v3))
  {
    return 0;
  }

  result = webrtc::SocketAddress::operator==(this + 80, a2 + 80);
  if (result)
  {
    v11 = *(this + 183);
    if (v11 >= 0)
    {
      v12 = *(this + 183);
    }

    else
    {
      v12 = *(this + 21);
    }

    v13 = *(a2 + 183);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 21);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? (this + 160) : *(this + 20);
    v16 = v14 >= 0 ? (a2 + 160) : *(a2 + 20);
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }

    v17 = *(this + 207);
    if (v17 >= 0)
    {
      v18 = *(this + 207);
    }

    else
    {
      v18 = *(this + 24);
    }

    v19 = *(a2 + 207);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a2 + 24);
    }

    if (v18 == v19 && (v17 >= 0 ? (v21 = this + 184) : (v21 = *(this + 23)), v20 >= 0 ? (v22 = a2 + 184) : (v22 = *(a2 + 23)), !memcmp(v21, v22, v18) && *(this + 52) == *(a2 + 52) && *(this + 62) == *(a2 + 62)))
    {
      result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(this + 32, a2 + 32);
      if (result)
      {
        result = webrtc::SocketAddress::operator==(this + 280, a2 + 280);
        if (result)
        {
          return *(this + 200) == *(a2 + 200);
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

void webrtc::Candidate::ToStringInternal(webrtc::Candidate *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  memset(&v180, 0, sizeof(v180));
  v5 = (this + 80);
  if (a2)
  {
    webrtc::SocketAddress::ToSensitiveString(v5, v178);
    webrtc::SocketAddress::ToSensitiveString((this + 280), __p);
  }

  else
  {
    webrtc::SocketAddress::ToString(v5, v178);
    webrtc::SocketAddress::ToString((this + 280), __p);
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = 22;
  }

  else
  {
    v7 = (v180.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v180.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v180.__r_.__value_.__l.__size_;
  }

  if (v7 - size >= 5)
  {
    v12 = &v180;
    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v180.__r_.__value_.__r.__words[0];
    }

    v13 = v12 + size;
    if (v12 + size <= "Cand[" && v12->__r_.__value_.__r.__words + size + 5 > "Cand[")
    {
      goto LABEL_412;
    }

    v13[4] = 91;
    *v13 = 1684955459;
    v15 = size + 5;
    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      v180.__r_.__value_.__l.__size_ = size + 5;
      v12->__r_.__value_.__s.__data_[v15] = 0;
      v9 = *(this + 399);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(&v180.__r_.__value_.__s + 23) = v15 & 0x7F;
      v12->__r_.__value_.__s.__data_[v15] = 0;
      v9 = *(this + 399);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v180, v7, size - v7 + 5, size, size, 0, 5uLL, "Cand[");
    v9 = *(this + 399);
    if ((v9 & 0x8000000000000000) == 0)
    {
LABEL_12:
      v10 = this + 376;
      v11 = v9 == 0;
      goto LABEL_23;
    }
  }

  v10 = *(this + 47);
  v9 = *(this + 48);
  v11 = v9 == 0;
  if (!v10 && v9)
  {
    goto LABEL_412;
  }

LABEL_23:
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (v180.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v180.__r_.__value_.__l.__size_;
  }

  if (v16 - v17 >= v9)
  {
    if (!v11)
    {
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v180;
      }

      else
      {
        v18 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v19 = v18 + v17;
      if (v18 + v17 <= v10 && &v19[v9] > v10)
      {
        goto LABEL_412;
      }

      v20 = v9;
      memmove(v19, v10, v9);
      v21 = v17 + v20;
      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
      {
        v180.__r_.__value_.__l.__size_ = v17 + v20;
      }

      else
      {
        *(&v180.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v18->__r_.__value_.__s.__data_[v21] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v180, v16, v17 + v9 - v16, v17, v17, 0, v9, v10);
  }

  v22 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = 22;
  }

  else
  {
    v23 = (v180.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v180.__r_.__value_.__l.__size_;
  }

  if (v23 == v22)
  {
    std::string::__grow_by_and_replace(&v180, v23, 1uLL, v23, v23, 0, 1uLL, ":");
    v24 = *(this + 279);
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_51:
      v25 = this + 256;
      v26 = v24 == 0;
      goto LABEL_60;
    }
  }

  else
  {
    v27 = &v180;
    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v180.__r_.__value_.__r.__words[0];
    }

    v28 = v27 + v22;
    if (v27 + v22 <= ":" && v28 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v28 = 58;
    v29 = v22 + 1;
    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      v180.__r_.__value_.__l.__size_ = v29;
      v27->__r_.__value_.__s.__data_[v29] = 0;
      v24 = *(this + 279);
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *(&v180.__r_.__value_.__s + 23) = v29 & 0x7F;
      v27->__r_.__value_.__s.__data_[v29] = 0;
      v24 = *(this + 279);
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }
    }
  }

  v25 = *(this + 32);
  v24 = *(this + 33);
  v26 = v24 == 0;
  if (!v25 && v24)
  {
    goto LABEL_412;
  }

LABEL_60:
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = 22;
  }

  else
  {
    v30 = (v180.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v180.__r_.__value_.__l.__size_;
  }

  if (v30 - v31 >= v24)
  {
    if (!v26)
    {
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v180;
      }

      else
      {
        v32 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v33 = v32 + v31;
      if (v32 + v31 <= v25 && &v33[v24] > v25)
      {
        goto LABEL_412;
      }

      v34 = v24;
      memmove(v33, v25, v24);
      v35 = v31 + v34;
      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
      {
        v180.__r_.__value_.__l.__size_ = v31 + v34;
      }

      else
      {
        *(&v180.__r_.__value_.__s + 23) = v35 & 0x7F;
      }

      v32->__r_.__value_.__s.__data_[v35] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v180, v30, v31 + v24 - v30, v31, v31, 0, v24, v25);
  }

  v36 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = 22;
  }

  else
  {
    v37 = (v180.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = v180.__r_.__value_.__l.__size_;
  }

  if (v37 == v36)
  {
    std::string::__grow_by_and_replace(&v180, v37, 1uLL, v37, v37, 0, 1uLL, ":");
  }

  else
  {
    v38 = &v180;
    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v180.__r_.__value_.__r.__words[0];
    }

    v39 = v38 + v36;
    if (v38 + v36 <= ":" && v39 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v39 = 58;
    v40 = v36 + 1;
    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      v180.__r_.__value_.__l.__size_ = v40;
    }

    else
    {
      *(&v180.__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    v38->__r_.__value_.__s.__data_[v40] = 0;
  }

  v41 = webrtc::StringBuilder::operator<<(&v180, *(this + 6), v6);
  v43 = v41;
  v44 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
  v45 = v44;
  if ((v44 & 0x80u) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (v41->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v44 & 0x80u) != 0)
  {
    v44 = v41->__r_.__value_.__l.__size_;
  }

  if (v46 == v44)
  {
    std::string::__grow_by_and_replace(v41, v46, 1uLL, v46, v46, 0, 1uLL, ":");
    v47 = *(this + 55);
    if ((v47 & 0x8000000000000000) == 0)
    {
LABEL_103:
      v48 = this + 32;
      v49 = v47 == 0;
      goto LABEL_113;
    }
  }

  else
  {
    if (v45 >= 0)
    {
      v50 = v41;
    }

    else
    {
      v50 = v41->__r_.__value_.__r.__words[0];
    }

    v51 = v50 + v44;
    if (v50 + v44 <= ":" && v51 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v51 = 58;
    v52 = v44 + 1;
    if (SHIBYTE(v41->__r_.__value_.__r.__words[2]) < 0)
    {
      v41->__r_.__value_.__l.__size_ = v52;
      v50->__r_.__value_.__s.__data_[v52] = 0;
      v47 = *(this + 55);
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *(&v41->__r_.__value_.__s + 23) = v52 & 0x7F;
      v50->__r_.__value_.__s.__data_[v52] = 0;
      v47 = *(this + 55);
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_103;
      }
    }
  }

  v48 = *(this + 4);
  v47 = *(this + 5);
  v49 = v47 == 0;
  if (!v48 && v47)
  {
    goto LABEL_412;
  }

LABEL_113:
  v53 = SHIBYTE(v43->__r_.__value_.__r.__words[2]);
  if (v53 >= 0)
  {
    v54 = 22;
  }

  else
  {
    v54 = (v43->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v53 >= 0)
  {
    v55 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v43->__r_.__value_.__l.__size_;
  }

  if (v54 - v55 >= v47)
  {
    if (!v49)
    {
      if (v53 >= 0)
      {
        v56 = v43;
      }

      else
      {
        v56 = v43->__r_.__value_.__r.__words[0];
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v57 = v56 + v55;
      if (v56 + v55 <= v48 && &v57[v47] > v48)
      {
        goto LABEL_412;
      }

      v58 = v47;
      memmove(v57, v48, v47);
      v59 = v55 + v58;
      if (SHIBYTE(v43->__r_.__value_.__r.__words[2]) < 0)
      {
        v43->__r_.__value_.__l.__size_ = v59;
      }

      else
      {
        *(&v43->__r_.__value_.__s + 23) = v59 & 0x7F;
      }

      v56->__r_.__value_.__s.__data_[v59] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v43, v54, v55 + v47 - v54, v55, v55, 0, v47, v48);
  }

  v60 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  v61 = v60;
  if ((v60 & 0x80u) == 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v43->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v60 & 0x80u) != 0)
  {
    v60 = v43->__r_.__value_.__l.__size_;
  }

  if (v62 == v60)
  {
    std::string::__grow_by_and_replace(v43, v62, 1uLL, v62, v62, 0, 1uLL, ":");
  }

  else
  {
    if (v61 >= 0)
    {
      v63 = v43;
    }

    else
    {
      v63 = v43->__r_.__value_.__r.__words[0];
    }

    v64 = v63 + v60;
    if (v63 + v60 <= ":" && v64 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v64 = 58;
    v65 = v60 + 1;
    if (SHIBYTE(v43->__r_.__value_.__r.__words[2]) < 0)
    {
      v43->__r_.__value_.__l.__size_ = v65;
    }

    else
    {
      *(&v43->__r_.__value_.__s + 23) = v65 & 0x7F;
    }

    v63->__r_.__value_.__s.__data_[v65] = 0;
  }

  v66 = webrtc::StringBuilder::operator<<(v43, *(this + 38), v42);
  v67 = v66;
  v68 = HIBYTE(v66->__r_.__value_.__r.__words[2]);
  v69 = v68;
  if ((v68 & 0x80u) == 0)
  {
    v70 = 22;
  }

  else
  {
    v70 = (v66->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v68 & 0x80u) != 0)
  {
    v68 = v66->__r_.__value_.__l.__size_;
  }

  if (v70 == v68)
  {
    std::string::__grow_by_and_replace(v66, v70, 1uLL, v70, v70, 0, 1uLL, ":");
  }

  else
  {
    if (v69 >= 0)
    {
      v71 = v66;
    }

    else
    {
      v71 = v66->__r_.__value_.__r.__words[0];
    }

    v72 = v71 + v68;
    if (v71 + v68 <= ":" && v72 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v72 = 58;
    v73 = v68 + 1;
    if (SHIBYTE(v66->__r_.__value_.__r.__words[2]) < 0)
    {
      v66->__r_.__value_.__l.__size_ = v73;
    }

    else
    {
      *(&v66->__r_.__value_.__s + 23) = v73 & 0x7F;
    }

    v71->__r_.__value_.__s.__data_[v73] = 0;
  }

  if ((v179 & 0x80u) == 0)
  {
    v74 = v178;
  }

  else
  {
    v74 = v178[0];
  }

  if ((v179 & 0x80u) == 0)
  {
    v75 = v179;
  }

  else
  {
    v75 = v178[1];
  }

  if (!v74 && v75)
  {
    goto LABEL_412;
  }

  v76 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
  if (v76 >= 0)
  {
    v77 = 22;
  }

  else
  {
    v77 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v76 >= 0)
  {
    v78 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v78 = v67->__r_.__value_.__l.__size_;
  }

  if (v77 - v78 >= v75)
  {
    if (v75)
    {
      if (v76 >= 0)
      {
        v79 = v67;
      }

      else
      {
        v79 = v67->__r_.__value_.__r.__words[0];
      }

      if ((v75 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v80 = v79 + v78;
      if (v79 + v78 <= v74 && &v80[v75] > v74)
      {
        goto LABEL_412;
      }

      v81 = v75;
      memmove(v80, v74, v75);
      v82 = v78 + v81;
      if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
      {
        v67->__r_.__value_.__l.__size_ = v82;
      }

      else
      {
        *(&v67->__r_.__value_.__s + 23) = v82 & 0x7F;
      }

      v79->__r_.__value_.__s.__data_[v82] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v67, v77, v78 + v75 - v77, v78, v78, 0, v75, v74);
  }

  v83 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v84 = v83;
  if ((v83 & 0x80u) == 0)
  {
    v85 = 22;
  }

  else
  {
    v85 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v83 & 0x80u) != 0)
  {
    v83 = v67->__r_.__value_.__l.__size_;
  }

  if (v85 != v83)
  {
    if (v84 >= 0)
    {
      v93 = v67;
    }

    else
    {
      v93 = v67->__r_.__value_.__r.__words[0];
    }

    v94 = v93 + v83;
    if (v93 + v83 <= ":" && v94 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v94 = 58;
    v95 = v83 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v95;
      v93->__r_.__value_.__s.__data_[v95] = 0;
      v86 = *(this + 52) - 1;
      if (v86 > 2)
      {
        goto LABEL_211;
      }
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v95 & 0x7F;
      v93->__r_.__value_.__s.__data_[v95] = 0;
      v86 = *(this + 52) - 1;
      if (v86 > 2)
      {
        goto LABEL_211;
      }
    }

LABEL_200:
    v87 = off_279E93A38[v86];
    v88 = 5;
    v89 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
    if ((v89 & 0x8000000000000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_212;
  }

  std::string::__grow_by_and_replace(v67, v85, 1uLL, v85, v85, 0, 1uLL, ":");
  v86 = *(this + 52) - 1;
  if (v86 <= 2)
  {
    goto LABEL_200;
  }

LABEL_211:
  v87 = "host";
  v88 = 4;
  v89 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
  if ((v89 & 0x8000000000000000) == 0)
  {
LABEL_201:
    v90 = 22;
    v91 = v67;
    if (22 - v89 >= v88)
    {
      v92 = v67 + v89;
      if (v67 + v89 > v87)
      {
        goto LABEL_216;
      }

LABEL_215:
      if (&v92[v88] > v87)
      {
        goto LABEL_412;
      }

      goto LABEL_216;
    }

LABEL_213:
    std::string::__grow_by_and_replace(v67, v90, v89 + v88 - v90, v89, v89, 0, v88, v87);
    goto LABEL_222;
  }

LABEL_212:
  v89 = v67->__r_.__value_.__l.__size_;
  v90 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v90 - v89 < v88)
  {
    goto LABEL_213;
  }

  v91 = v67->__r_.__value_.__r.__words[0];
  v92 = (v67->__r_.__value_.__r.__words[0] + v89);
  if (v92 <= v87)
  {
    goto LABEL_215;
  }

LABEL_216:
  memcpy(v92, v87, v88);
  v97 = v89 + v88;
  if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
  {
    v67->__r_.__value_.__l.__size_ = v97;
  }

  else
  {
    *(&v67->__r_.__value_.__s + 23) = v97 & 0x7F;
  }

  v91->__r_.__value_.__s.__data_[v97] = 0;
LABEL_222:
  v98 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v99 = v98;
  if ((v98 & 0x80u) == 0)
  {
    v100 = 22;
  }

  else
  {
    v100 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v98 & 0x80u) != 0)
  {
    v98 = v67->__r_.__value_.__l.__size_;
  }

  if (v100 == v98)
  {
    std::string::__grow_by_and_replace(v67, v100, 1uLL, v100, v100, 0, 1uLL, ":");
  }

  else
  {
    if (v99 >= 0)
    {
      v101 = v67;
    }

    else
    {
      v101 = v67->__r_.__value_.__r.__words[0];
    }

    v102 = v101 + v98;
    if (v101 + v98 <= ":" && v102 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v102 = 58;
    v103 = v98 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v103;
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v103 & 0x7F;
    }

    v101->__r_.__value_.__s.__data_[v103] = 0;
  }

  if ((v177 & 0x80u) == 0)
  {
    v104 = __p;
  }

  else
  {
    v104 = __p[0];
  }

  if ((v177 & 0x80u) == 0)
  {
    v105 = v177;
  }

  else
  {
    v105 = __p[1];
  }

  if (!v104 && v105)
  {
    goto LABEL_412;
  }

  v106 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
  if (v106 >= 0)
  {
    v107 = 22;
  }

  else
  {
    v107 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v106 >= 0)
  {
    v108 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v108 = v67->__r_.__value_.__l.__size_;
  }

  if (v107 - v108 >= v105)
  {
    if (v105)
    {
      if (v106 >= 0)
      {
        v109 = v67;
      }

      else
      {
        v109 = v67->__r_.__value_.__r.__words[0];
      }

      if ((v105 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v110 = v109 + v108;
      if (v109 + v108 <= v104 && &v110[v105] > v104)
      {
        goto LABEL_412;
      }

      v111 = v105;
      memmove(v110, v104, v105);
      v112 = v108 + v111;
      if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
      {
        v67->__r_.__value_.__l.__size_ = v112;
      }

      else
      {
        *(&v67->__r_.__value_.__s + 23) = v112 & 0x7F;
      }

      v109->__r_.__value_.__s.__data_[v112] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v67, v107, v108 + v105 - v107, v108, v108, 0, v105, v104);
  }

  v113 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v114 = v113;
  if ((v113 & 0x80u) == 0)
  {
    v115 = 22;
  }

  else
  {
    v115 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v113 & 0x80u) != 0)
  {
    v113 = v67->__r_.__value_.__l.__size_;
  }

  if (v115 == v113)
  {
    std::string::__grow_by_and_replace(v67, v115, 1uLL, v115, v115, 0, 1uLL, ":");
    v116 = *(this + 183);
    if ((v116 & 0x8000000000000000) == 0)
    {
LABEL_272:
      v117 = this + 160;
      v118 = v116 == 0;
      goto LABEL_282;
    }
  }

  else
  {
    if (v114 >= 0)
    {
      v119 = v67;
    }

    else
    {
      v119 = v67->__r_.__value_.__r.__words[0];
    }

    v120 = v119 + v113;
    if (v119 + v113 <= ":" && v120 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v120 = 58;
    v121 = v113 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v121;
      v119->__r_.__value_.__s.__data_[v121] = 0;
      v116 = *(this + 183);
      if ((v116 & 0x8000000000000000) == 0)
      {
        goto LABEL_272;
      }
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v121 & 0x7F;
      v119->__r_.__value_.__s.__data_[v121] = 0;
      v116 = *(this + 183);
      if ((v116 & 0x8000000000000000) == 0)
      {
        goto LABEL_272;
      }
    }
  }

  v117 = *(this + 20);
  v116 = *(this + 21);
  v118 = v116 == 0;
  if (!v117 && v116)
  {
    goto LABEL_412;
  }

LABEL_282:
  v122 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
  if (v122 >= 0)
  {
    v123 = 22;
  }

  else
  {
    v123 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v122 >= 0)
  {
    v124 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v124 = v67->__r_.__value_.__l.__size_;
  }

  if (v123 - v124 >= v116)
  {
    if (!v118)
    {
      if (v122 >= 0)
      {
        v125 = v67;
      }

      else
      {
        v125 = v67->__r_.__value_.__r.__words[0];
      }

      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v126 = v125 + v124;
      if (v125 + v124 <= v117 && &v126[v116] > v117)
      {
        goto LABEL_412;
      }

      v127 = v116;
      memmove(v126, v117, v116);
      v128 = v124 + v127;
      if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
      {
        v67->__r_.__value_.__l.__size_ = v128;
      }

      else
      {
        *(&v67->__r_.__value_.__s + 23) = v128 & 0x7F;
      }

      v125->__r_.__value_.__s.__data_[v128] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v67, v123, v124 + v116 - v123, v124, v124, 0, v116, v117);
  }

  v129 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v130 = v129;
  if ((v129 & 0x80u) == 0)
  {
    v131 = 22;
  }

  else
  {
    v131 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v129 & 0x80u) != 0)
  {
    v129 = v67->__r_.__value_.__l.__size_;
  }

  if (v131 == v129)
  {
    std::string::__grow_by_and_replace(v67, v131, 1uLL, v131, v131, 0, 1uLL, ":");
    v132 = *(this + 207);
    if ((v132 & 0x8000000000000000) == 0)
    {
LABEL_310:
      v133 = this + 184;
      v134 = v132 == 0;
      goto LABEL_320;
    }
  }

  else
  {
    if (v130 >= 0)
    {
      v135 = v67;
    }

    else
    {
      v135 = v67->__r_.__value_.__r.__words[0];
    }

    v136 = v135 + v129;
    if (v135 + v129 <= ":" && v136 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v136 = 58;
    v137 = v129 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v137;
      v135->__r_.__value_.__s.__data_[v137] = 0;
      v132 = *(this + 207);
      if ((v132 & 0x8000000000000000) == 0)
      {
        goto LABEL_310;
      }
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v137 & 0x7F;
      v135->__r_.__value_.__s.__data_[v137] = 0;
      v132 = *(this + 207);
      if ((v132 & 0x8000000000000000) == 0)
      {
        goto LABEL_310;
      }
    }
  }

  v133 = *(this + 23);
  v132 = *(this + 24);
  v134 = v132 == 0;
  if (!v133 && v132)
  {
    goto LABEL_412;
  }

LABEL_320:
  v138 = SHIBYTE(v67->__r_.__value_.__r.__words[2]);
  if (v138 >= 0)
  {
    v139 = 22;
  }

  else
  {
    v139 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v138 >= 0)
  {
    v140 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v140 = v67->__r_.__value_.__l.__size_;
  }

  if (v139 - v140 >= v132)
  {
    if (!v134)
    {
      if (v138 >= 0)
      {
        v141 = v67;
      }

      else
      {
        v141 = v67->__r_.__value_.__r.__words[0];
      }

      if ((v132 & 0x8000000000000000) != 0)
      {
        goto LABEL_412;
      }

      v142 = v141 + v140;
      if (v141 + v140 <= v133 && &v142[v132] > v133)
      {
        goto LABEL_412;
      }

      v143 = v132;
      memmove(v142, v133, v132);
      v144 = v140 + v143;
      if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
      {
        v67->__r_.__value_.__l.__size_ = v144;
      }

      else
      {
        *(&v67->__r_.__value_.__s + 23) = v144 & 0x7F;
      }

      v141->__r_.__value_.__s.__data_[v144] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v67, v139, v140 + v132 - v139, v140, v140, 0, v132, v133);
  }

  v145 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v146 = v145;
  if ((v145 & 0x80u) == 0)
  {
    v147 = 22;
  }

  else
  {
    v147 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v145 & 0x80u) != 0)
  {
    v145 = v67->__r_.__value_.__l.__size_;
  }

  if (v147 == v145)
  {
    std::string::__grow_by_and_replace(v67, v147, 1uLL, v147, v147, 0, 1uLL, ":");
  }

  else
  {
    if (v146 >= 0)
    {
      v148 = v67;
    }

    else
    {
      v148 = v67->__r_.__value_.__r.__words[0];
    }

    v149 = v148 + v145;
    if (v148 + v145 <= ":" && v149 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v149 = 58;
    v150 = v145 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v150;
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v150 & 0x7F;
    }

    v148->__r_.__value_.__s.__data_[v150] = 0;
  }

  v151 = webrtc::StringBuilder::operator<<(v67, *(this + 200), v96);
  v153 = HIBYTE(v151->__r_.__value_.__r.__words[2]);
  v154 = v153;
  if ((v153 & 0x80u) == 0)
  {
    v155 = 22;
  }

  else
  {
    v155 = (v151->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v153 & 0x80u) != 0)
  {
    v153 = v151->__r_.__value_.__l.__size_;
  }

  if (v155 == v153)
  {
    v156 = v151;
    std::string::__grow_by_and_replace(v151, v155, 1uLL, v155, v155, 0, 1uLL, ":");
    v151 = v156;
  }

  else
  {
    if (v154 >= 0)
    {
      v157 = v151;
    }

    else
    {
      v157 = v151->__r_.__value_.__r.__words[0];
    }

    v158 = v157 + v153;
    if (v157 + v153 <= ":" && v158 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v158 = 58;
    v159 = v153 + 1;
    if (SHIBYTE(v151->__r_.__value_.__r.__words[2]) < 0)
    {
      v151->__r_.__value_.__l.__size_ = v159;
    }

    else
    {
      *(&v151->__r_.__value_.__s + 23) = v159 & 0x7F;
    }

    v157->__r_.__value_.__s.__data_[v159] = 0;
  }

  v160 = webrtc::StringBuilder::operator<<(v151, *(this + 201), v152);
  v162 = HIBYTE(v160->__r_.__value_.__r.__words[2]);
  v163 = v162;
  if ((v162 & 0x80u) == 0)
  {
    v164 = 22;
  }

  else
  {
    v164 = (v160->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v162 & 0x80u) != 0)
  {
    v162 = v160->__r_.__value_.__l.__size_;
  }

  if (v164 == v162)
  {
    v165 = v160;
    std::string::__grow_by_and_replace(v160, v164, 1uLL, v164, v164, 0, 1uLL, ":");
    v160 = v165;
  }

  else
  {
    if (v163 >= 0)
    {
      v166 = v160;
    }

    else
    {
      v166 = v160->__r_.__value_.__r.__words[0];
    }

    v167 = v166 + v162;
    if (v166 + v162 <= ":" && v167 + 1 > ":")
    {
      goto LABEL_412;
    }

    *v167 = 58;
    v168 = v162 + 1;
    if (SHIBYTE(v160->__r_.__value_.__r.__words[2]) < 0)
    {
      v160->__r_.__value_.__l.__size_ = v168;
    }

    else
    {
      *(&v160->__r_.__value_.__s + 23) = v168 & 0x7F;
    }

    v166->__r_.__value_.__s.__data_[v168] = 0;
  }

  v169 = webrtc::StringBuilder::operator<<(v160, *(this + 62), v161);
  v170 = HIBYTE(v169->__r_.__value_.__r.__words[2]);
  v171 = v170;
  if ((v170 & 0x80u) == 0)
  {
    v172 = 22;
  }

  else
  {
    v172 = (v169->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v170 & 0x80u) != 0)
  {
    v170 = v169->__r_.__value_.__l.__size_;
  }

  if (v172 == v170)
  {
    std::string::__grow_by_and_replace(v169, v172, 1uLL, v172, v172, 0, 1uLL, "]");
    goto LABEL_405;
  }

  if (v171 >= 0)
  {
    v173 = v169;
  }

  else
  {
    v173 = v169->__r_.__value_.__r.__words[0];
  }

  v174 = v173 + v170;
  if (v173 + v170 <= "]" && v174 + 1 > "]")
  {
LABEL_412:
    __break(1u);
    return;
  }

  *v174 = 93;
  v175 = v170 + 1;
  if (SHIBYTE(v169->__r_.__value_.__r.__words[2]) < 0)
  {
    v169->__r_.__value_.__l.__size_ = v175;
  }

  else
  {
    *(&v169->__r_.__value_.__s + 23) = v175 & 0x7F;
  }

  v173->__r_.__value_.__s.__data_[v175] = 0;
LABEL_405:
  *a3 = v180;
  memset(&v180, 0, sizeof(v180));
  if (v177 < 0)
  {
    operator delete(__p[0]);
    if ((v179 & 0x80000000) == 0)
    {
LABEL_407:
      if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_411:
      operator delete(v180.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((v179 & 0x80000000) == 0)
  {
    goto LABEL_407;
  }

  operator delete(v178[0]);
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_411;
  }
}

BOOL webrtc::Candidate::operator==(void *a1, void *a2)
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

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  if (*(v7 + 6) != *(v6 + 6))
  {
    return 0;
  }

  v9 = *(v7 + 55);
  if (v9 >= 0)
  {
    v10 = *(v7 + 55);
  }

  else
  {
    v10 = v7[5];
  }

  v11 = *(v6 + 55);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[5];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 + 4 : v7[4];
  v14 = v12 >= 0 ? v6 + 4 : v6[4];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(v7 + 79);
  if (v15 >= 0)
  {
    v16 = *(v7 + 79);
  }

  else
  {
    v16 = v7[8];
  }

  v17 = *(v6 + 79);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[8];
  }

  if (v16 != v17)
  {
    return 0;
  }

  v19 = v15 >= 0 ? v7 + 7 : v7[7];
  v20 = v18 >= 0 ? v6 + 7 : v6[7];
  if (memcmp(v19, v20, v16))
  {
    return 0;
  }

  result = webrtc::SocketAddress::operator==((v7 + 10), (v6 + 10));
  if (result)
  {
    if (*(v7 + 38) != *(v6 + 38))
    {
      return 0;
    }

    result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 20, v6 + 20);
    if (result)
    {
      result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 23, v6 + 23);
      if (result)
      {
        if (*(v7 + 52) != *(v6 + 52))
        {
          return 0;
        }

        result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 27, v6 + 27);
        if (result)
        {
          if (*(v7 + 60) != *(v6 + 60) || *(v7 + 62) != *(v6 + 62))
          {
            return 0;
          }

          result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 32, v6 + 32);
          if (result)
          {
            result = webrtc::SocketAddress::operator==((v7 + 35), (v6 + 35));
            if (result)
            {
              result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 44, v6 + 44);
              if (result)
              {
                result = std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 47, v6 + 47);
                if (result)
                {
                  return *(v7 + 200) == *(v6 + 200);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void webrtc::Candidate::ToSanitizedCopy(std::string *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  webrtc::Candidate::Candidate(a5, this);
  if (!a2)
  {
LABEL_58:
    if (!a3)
    {
      goto LABEL_71;
    }

LABEL_59:
    v28 = *(a5 + 112);
    __src[1] = 0;
    v36 = 0;
    __src[0] = 0;
    v37 = &unk_28828CE50;
    v41 = 0;
    if (v28 == 30)
    {
      LODWORD(v38[0]) = 30;
      *(v38 + 4) = *MEMORY[0x277D85EE8];
    }

    else
    {
      if (v28 != 2)
      {
        v28 = 0;
        *&__p[8] = 0;
        *&__p[16] = 0;
        v45 = 0;
        memset(v38, 0, 20);
        v39 = 0;
        v40 = 0;
        v29 = (a5 + 280);
        if ((a5 + 280) == __src)
        {
LABEL_70:
          *(a5 + 312) = v28;
          *(a5 + 316) = *(v38 + 4);
          *(a5 + 336) = 0;
          *(a5 + 344) = 0;
          *(a5 + 340) = 0;
          goto LABEL_71;
        }

LABEL_68:
        if (*(a5 + 303) < 0)
        {
          std::string::__assign_no_alias<false>(v29, __src, 0);
          v31 = v39;
          v32 = v41;
          v33 = v40;
          v34 = SHIBYTE(v36);
          *(a5 + 312) = v38[0];
          *(a5 + 316) = *(v38 + 4);
          *(a5 + 336) = v31;
          *(a5 + 344) = v32;
          *(a5 + 340) = v33;
          if (v34 < 0)
          {
            operator delete(__src[0]);
          }

          goto LABEL_71;
        }

        v29->__r_.__value_.__r.__words[0] = 0;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        goto LABEL_70;
      }

      LODWORD(v38[0]) = 2;
      *(v38 + 4) = 0uLL;
    }

    v40 = 0;
    v39 = 0;
    v29 = (a5 + 280);
    if ((a5 + 280) == __src)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  memset(v43, 0, sizeof(v43));
  v42 = &unk_28828CE50;
  p_size = &this[3].__r_.__value_.__l.__size_;
  v11 = this[4].__r_.__value_.__s.__data_[7];
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = this[3].__r_.__value_.__r.__words[2];
    if (v11)
    {
      v12 = *p_size;
LABEL_7:
      if (webrtc::inet_pton(2, v12, v11, &v46))
      {
        *v43 = 2;
        *&v43[4] = v46;
        *&v43[8] = 0;
        *&v43[16] = 0;
      }

      else
      {
        if (!webrtc::inet_pton(30, v12, v11, __p))
        {
          __src[1] = 0;
          v36 = 0;
          LODWORD(v37) = 0;
          memset(v43, 0, sizeof(v43));
          v21 = this[4].__r_.__value_.__s.__data_[7];
          if ((v21 & 0x8000000000000000) != 0)
          {
            p_size = this[3].__r_.__value_.__l.__size_;
            v21 = this[3].__r_.__value_.__r.__words[2];
          }

          v22 = this[5].__r_.__value_.__r.__words[2];
          __src[1] = 0;
          v36 = 0;
          __src[0] = 0;
          memset(v38, 0, 20);
          v37 = &unk_28828CE50;
          webrtc::SocketAddress::SetIP(__src, p_size, v21);
          v39 = v22;
          v17 = (a5 + 80);
          if ((a5 + 80) == __src)
          {
            goto LABEL_46;
          }

          v18 = HIBYTE(v36);
          if ((*(a5 + 103) & 0x80000000) == 0)
          {
            if ((v36 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_38;
          }

LABEL_39:
          if (v18 >= 0)
          {
            v23 = __src;
          }

          else
          {
            v23 = __src[0];
          }

          if (v18 >= 0)
          {
            v24 = v18;
          }

          else
          {
            v24 = __src[1];
          }

          std::string::__assign_no_alias<false>(v17, v23, v24);
          goto LABEL_46;
        }

        *v43 = 30;
        *&v43[4] = *__p;
      }

      v16 = this[5].__r_.__value_.__r.__words[2];
      __src[1] = 0;
      v36 = 0;
      __src[0] = 0;
      memset(v38, 0, 20);
      v37 = &unk_28828CE50;
      webrtc::SocketAddress::SetIP(__src, "redacted-literal.invalid", 0x18uLL);
      v39 = v16;
      v17 = (a5 + 80);
      if ((a5 + 80) == __src)
      {
LABEL_46:
        *(a5 + 112) = v38[0];
        v25 = *(v38 + 4);
        goto LABEL_57;
      }

      v18 = HIBYTE(v36);
      if ((*(a5 + 103) & 0x80000000) == 0)
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
LABEL_21:
          *&v17->__r_.__value_.__l.__data_ = *__src;
          v17->__r_.__value_.__r.__words[2] = v36;
          goto LABEL_46;
        }

LABEL_38:
        std::string::__assign_no_alias<true>(v17, __src[0], __src[1]);
        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  else if (this[4].__r_.__value_.__s.__data_[7])
  {
    v12 = &this[3].__r_.__value_.__l.__size_;
    goto LABEL_7;
  }

  v13 = this[5].__r_.__value_.__r.__words[2];
  memset(v38, 0, 20);
  v37 = &unk_28828CE50;
  __p[23] = 19;
  if (__p <= "redacted-ip.invalid" && &__p[19] > "redacted-ip.invalid")
  {
    goto LABEL_79;
  }

  strcpy(__p, "redacted-ip.invalid");
  v36 = *&__p[16];
  *__src = *"redacted-ip.invalid";
  __p[23] = 19;
  if (__p <= "redacted-ip.invalid" && &__p[19] > "redacted-ip.invalid")
  {
    goto LABEL_79;
  }

  strcpy(__p, "redacted-ip.invalid");
  v14 = inet_pton(2, __p, &v47);
  v15 = v14;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else if (v14)
  {
LABEL_15:
    LODWORD(v38[0]) = 2;
    HIDWORD(v38[0]) = v47;
    v38[1] = 0;
    LODWORD(v38[2]) = 0;
    goto LABEL_29;
  }

  __p[23] = 19;
  if (__p <= "redacted-ip.invalid" && &__p[19] > "redacted-ip.invalid")
  {
LABEL_79:
    __break(1u);
    return;
  }

  strcpy(__p, "redacted-ip.invalid");
  v19 = inet_pton(30, __p, &v46);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v19)
  {
    LODWORD(v38[0]) = 30;
    *(v38 + 4) = v46;
LABEL_29:
    v41 = 1;
    v40 = 0;
    v39 = v13;
    v20 = (a5 + 80);
    if ((a5 + 80) != __src)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

  v41 = 0;
  *&__p[8] = 0;
  *&__p[16] = 0;
  v45 = 0;
  memset(v38, 0, 20);
  v40 = 0;
  v39 = v13;
  v20 = (a5 + 80);
  if ((a5 + 80) != __src)
  {
LABEL_30:
    if (*(a5 + 103) < 0)
    {
      if (v36 >= 0)
      {
        v26 = __src;
      }

      else
      {
        v26 = __src[0];
      }

      if (v36 >= 0)
      {
        v27 = HIBYTE(v36);
      }

      else
      {
        v27 = __src[1];
      }

      std::string::__assign_no_alias<false>(v20, v26, v27);
    }

    else if (v36 < 0)
    {
      std::string::__assign_no_alias<true>(v20, __src[0], __src[1]);
    }

    else
    {
      *&v20->__r_.__value_.__l.__data_ = *__src;
      v20->__r_.__value_.__r.__words[2] = v36;
    }
  }

LABEL_56:
  *(a5 + 112) = v38[0];
  v25 = *(v38 + 4);
LABEL_57:
  *(a5 + 116) = v25;
  *(a5 + 136) = v39;
  *(a5 + 144) = v41;
  *(a5 + 140) = v40;
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(__src[0]);
  if (a3)
  {
    goto LABEL_59;
  }

LABEL_71:
  if (a4)
  {
    if (*(a5 + 183) < 0)
    {
      *(a5 + 168) = 0;
      v30 = *(a5 + 160);
    }

    else
    {
      v30 = (a5 + 160);
      *(a5 + 183) = 0;
    }

    *v30 = 0;
  }
}

void webrtc::Candidate::ComputeFoundation(webrtc::Candidate *this, const webrtc::SocketAddress *a2, unint64_t a3)
{
  memset(&__dst, 0, sizeof(__dst));
  v6 = &__dst.__r_.__value_.__s.__data_[5];
  v7 = "host";
  v8 = *(this + 52);
  v9 = &__dst.__r_.__value_.__s.__data_[4];
  v10 = 4;
  if (v8 == 1)
  {
    v9 = &__dst.__r_.__value_.__s.__data_[5];
    v10 = 5;
    v7 = "srflx";
  }

  if (v8 == 2)
  {
    v9 = &__dst.__r_.__value_.__s.__data_[5];
    v10 = 5;
    v7 = "prflx";
  }

  if (v8 == 3)
  {
    v11 = 5;
  }

  else
  {
    v6 = v9;
    v11 = v10;
  }

  if (v8 == 3)
  {
    v12 = "relay";
  }

  else
  {
    v12 = v7;
  }

  if (&__dst <= v12 && v6 > v12)
  {
    goto LABEL_151;
  }

  memcpy(&__dst, v12, v11);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v11;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v11;
  }

  *(&__dst | v11) = 0;
  webrtc::IPAddress::ToString(a2 + 24, __p);
  v14 = v62 >= 0 ? __p : __p[0];
  v15 = v62 >= 0 ? HIBYTE(v62) : __p[1];
  if (!v14 && v15)
  {
    goto LABEL_151;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (v16 - size < v15)
  {
    std::string::__grow_by_and_replace(&__dst, v16, size + v15 - v16, size, size, 0, v15, v14);
    v18 = *(this + 55);
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_43:
    v23 = this + 32;
    v24 = v18 == 0;
    goto LABEL_47;
  }

  if (v15)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_151;
    }

    v20 = p_dst + size;
    if (p_dst + size <= v14 && &v20[v15] > v14)
    {
      goto LABEL_151;
    }

    v21 = v15;
    memmove(v20, v14, v15);
    v22 = size + v21;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size + v21;
      p_dst->__r_.__value_.__s.__data_[v22] = 0;
      v18 = *(this + 55);
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    *(&__dst.__r_.__value_.__s + 23) = v22 & 0x7F;
    p_dst->__r_.__value_.__s.__data_[v22] = 0;
  }

  v18 = *(this + 55);
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v23 = *(this + 4);
  v18 = *(this + 5);
  v24 = v18 == 0;
  if (!v23 && v18)
  {
    goto LABEL_151;
  }

LABEL_47:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __dst.__r_.__value_.__l.__size_;
  }

  if (v25 - v26 < v18)
  {
    std::string::__grow_by_and_replace(&__dst, v25, v26 + v18 - v25, v26, v26, 0, v18, v23);
    v27 = *(this + 79);
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_66:
    v32 = this + 56;
    v33 = v27 == 0;
    goto LABEL_70;
  }

  if (!v24)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &__dst;
    }

    else
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_151;
    }

    v29 = v28 + v26;
    if (v28 + v26 <= v23 && &v29[v18] > v23)
    {
      goto LABEL_151;
    }

    v30 = v18;
    memmove(v29, v23, v18);
    v31 = v26 + v30;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v26 + v30;
      v28->__r_.__value_.__s.__data_[v31] = 0;
      v27 = *(this + 79);
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_68;
    }

    *(&__dst.__r_.__value_.__s + 23) = v31 & 0x7F;
    v28->__r_.__value_.__s.__data_[v31] = 0;
  }

  v27 = *(this + 79);
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_68:
  v32 = *(this + 7);
  v27 = *(this + 8);
  v33 = v27 == 0;
  if (!v32 && v27)
  {
    goto LABEL_151;
  }

LABEL_70:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = 22;
  }

  else
  {
    v34 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = __dst.__r_.__value_.__l.__size_;
  }

  if (v34 - v35 >= v27)
  {
    if (!v33)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &__dst;
      }

      else
      {
        v36 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_151;
      }

      v37 = v36 + v35;
      if (v36 + v35 <= v32 && &v37[v27] > v32)
      {
        goto LABEL_151;
      }

      v38 = v27;
      memmove(v37, v32, v27);
      v39 = v35 + v38;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = v35 + v38;
        v36->__r_.__value_.__s.__data_[v39] = 0;
        if ((SHIBYTE(v62) & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      *(&__dst.__r_.__value_.__s + 23) = v39 & 0x7F;
      v36->__r_.__value_.__s.__data_[v39] = 0;
    }

    if (SHIBYTE(v62) < 0)
    {
LABEL_89:
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&__dst, v34, v35 + v27 - v34, v35, v35, 0, v27, v32);
    if (SHIBYTE(v62) < 0)
    {
      goto LABEL_89;
    }
  }

LABEL_90:
  __p[1] = 0;
  v62 = 0x1600000000000000;
  __p[0] = 0;
  v40 = absl::numbers_internal::FastIntToBuffer(a3, __p, v13);
  v42 = (v40 - __p);
  if ((SHIBYTE(v62) & 0x8000000000000000) != 0)
  {
    if (__p[1] < v42)
    {
      goto LABEL_152;
    }

    v43 = __p[0];
    __p[1] = (v40 - __p);
  }

  else
  {
    if (v42 > SHIBYTE(v62))
    {
      goto LABEL_152;
    }

    HIBYTE(v62) = v40 - __p;
    v43 = __p;
  }

  v42[v43] = 0;
  if (v62 >= 0)
  {
    v44 = __p;
  }

  else
  {
    v44 = __p[0];
  }

  if (v62 >= 0)
  {
    v45 = HIBYTE(v62);
  }

  else
  {
    v45 = __p[1];
  }

  if (!v44 && v45)
  {
    goto LABEL_151;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = __dst.__r_.__value_.__l.__size_;
  }

  if (v46 - v47 < v45)
  {
    std::string::__grow_by_and_replace(&__dst, v46, v47 + v45 - v46, v47, v47, 0, v45, v44);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  if (!v45)
  {
LABEL_121:
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  v48 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
  if ((v45 & 0x8000000000000000) != 0 || (v49 = v48 + v47, v48 + v47 <= v44) && &v49[v45] > v44)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v50 = v45;
  memmove(v49, v44, v45);
  v51 = v47 + v50;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&__dst.__r_.__value_.__s + 23) = v51 & 0x7F;
    v48->__r_.__value_.__s.__data_[v51] = 0;
    goto LABEL_121;
  }

  __dst.__r_.__value_.__l.__size_ = v47 + v50;
  v48->__r_.__value_.__s.__data_[v51] = 0;
  if (SHIBYTE(v62) < 0)
  {
LABEL_122:
    operator delete(__p[0]);
  }

LABEL_123:
  v60 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v60;
  }

  else
  {
    v52 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v60.__r_.__value_.__l.__size_;
  }

  {
    if (v59)
    {
      webrtc::LoadCrc32Table(v59);
      webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
    }
  }

  if (v53)
  {
    v54 = -1;
    do
    {
      v55 = v52->__r_.__value_.__s.__data_[0];
      v52 = (v52 + 1);
      v54 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v55 ^ v54)) ^ (v54 >> 8);
      --v53;
    }

    while (v53);
    v56 = ~v54;
  }

  else
  {
    v56 = 0;
  }

  __p[1] = 0;
  v62 = 0x1600000000000000;
  __p[0] = 0;
  v57 = absl::numbers_internal::FastIntToBuffer(v56, __p, v41);
  v58 = (v57 - __p);
  if ((SHIBYTE(v62) & 0x8000000000000000) == 0)
  {
    if (v58 <= SHIBYTE(v62))
    {
      HIBYTE(v62) = v57 - __p;
      *v57 = 0;
      if ((*(this + 279) & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_138;
    }

LABEL_152:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__p[1] < v58)
  {
    goto LABEL_152;
  }

  __p[1] = (v57 - __p);
  *(__p[0] + v58) = 0;
  if (*(this + 279) < 0)
  {
LABEL_138:
    operator delete(*(this + 32));
  }

LABEL_139:
  *(this + 16) = *__p;
  *(this + 34) = v62;
  HIBYTE(v62) = 0;
  LOBYTE(__p[0]) = 0;
  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_146:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v60.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_146;
  }
}

double webrtc::Candidate::ComputePrflxFoundation(webrtc::Candidate *this, uint64_t a2, char *a3)
{
  v4 = *(this + 23);
  if (v4 < 0)
  {
    v5 = *this;
    v4 = *(this + 1);
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = this;
    {
      goto LABEL_5;
    }
  }

  v13 = v5;
  v14 = v4;
  v5 = v13;
  v4 = v14;
  if (v12)
  {
    webrtc::LoadCrc32Table(v12);
    webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
    v5 = v13;
    v4 = v14;
  }

LABEL_5:
  if (v4)
  {
    v6 = -1;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v7 ^ v6)) ^ (v6 >> 8);
      --v4;
    }

    while (v4);
    v8 = ~v6;
  }

  else
  {
    v8 = 0;
  }

  v16 = 0x1600000000000000;
  v15 = 0uLL;
  v9 = absl::numbers_internal::FastIntToBuffer(v8, &v15, a3);
  v10 = v9 - &v15;
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    if (*(&v15 + 1) >= v10)
    {
      *(&v15 + 1) = v9 - &v15;
      *(v15 + v10) = 0;
      if ((*(this + 279) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v10 > SHIBYTE(v16))
  {
    goto LABEL_20;
  }

  HIBYTE(v16) = v9 - &v15;
  *v9 = 0;
  if (*(this + 279) < 0)
  {
LABEL_13:
    operator delete(*(this + 32));
  }

LABEL_14:
  result = *&v15;
  *(this + 16) = v15;
  *(this + 34) = v16;
  return result;
}

void *std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v6 = 0x8E38E38E38E38E39 * ((v2 - *result) >> 2) + 1;
    if (v6 > 0x71C71C71C71C71CLL)
    {
      goto LABEL_13;
    }

    v7 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v6 = 0x71C71C71C71C71CLL;
    }

    if (v6)
    {
      if (v6 <= 0x71C71C71C71C71CLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  v5 = a2[1];
  *(v2 + 32) = *(a2 + 8);
  *v2 = v4;
  *(v2 + 16) = v5;
  result[1] = v2 + 36;
  return result;
}

float **webrtc::CascadedBiQuadFilter::Process(float **result, float *a2, uint64_t a3, float *__dst, uint64_t a5)
{
  v5 = *result;
  v6 = result[1] - *result;
  if (v6)
  {
    v7 = 0x8E38E38E38E38E39 * (v6 >> 2);
    if (a3)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    if (a5)
    {
      v9 = __dst;
    }

    else
    {
      v9 = 0;
    }

    v10 = v5[5];
    v11 = v5[6];
    v12 = v5[7];
    v13 = v5[8];
    if (a3)
    {
      v14 = *v5;
      v15 = v5[1];
      v16 = v5[2];
      v17 = -v5[3];
      v18 = -v5[4];
      v19 = v9;
      do
      {
        v20 = v10;
        v21 = v12;
        v22 = *v8++;
        v10 = v22;
        v12 = ((((v15 * v20) + (v14 * v22)) + (v16 * v11)) + (v17 * v12)) + (v18 * v13);
        *v19++ = v12;
        v13 = v21;
        v11 = v20;
        --a3;
      }

      while (a3);
      v5[5] = v10;
      v5[6] = v20;
      v5[7] = v12;
      v5[8] = v21;
      if (v7 < 2)
      {
        return result;
      }
    }

    else
    {
      v5[5] = v10;
      v5[6] = v11;
      v5[7] = v12;
      v5[8] = v13;
      if (v7 < 2)
      {
        return result;
      }
    }

    if (a5)
    {
      for (i = 1; i != v7; ++i)
      {
        v24 = &v5[9 * i];
        v25 = *v24;
        v26 = v24[1];
        v28 = v24[7];
        v27 = v24[8];
        v30 = v24[5];
        v29 = v24[6];
        v31 = v24[2];
        v32 = -v24[3];
        v33 = -v24[4];
        v34 = v9;
        v35 = a5;
        do
        {
          v36 = v29;
          v37 = v27;
          v29 = v30;
          v27 = v28;
          v30 = *v34;
          v28 = ((((v26 * v29) + (v25 * *v34)) + (v31 * v36)) + (v32 * v28)) + (v33 * v37);
          *v34++ = v28;
          --v35;
        }

        while (v35);
        v24[5] = v30;
        v24[6] = v29;
        v24[7] = v28;
        v24[8] = v27;
      }
    }
  }

  else if (a3)
  {
    return memmove(__dst, a2, 4 * a3);
  }

  return result;
}

unint64_t *webrtc::ChainDiffCalculator::ChainDiffs@<X0>(unint64_t *this@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  v4 = a3 + 1;
  v5 = *this;
  if (*this >= 0xA)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v6 = this + 1;
  if (v5)
  {
    v6 = *v6;
  }

  if (v5 >= 2)
  {
    v7 = 16 * (v5 >> 1);
    for (i = v6 + 1; ; i += 16)
    {
      v9 = *i == 1 ? a2 - *(i - 2) : 0;
      v10 = *a3;
      v11 = a3[1];
      if (*a3)
      {
        v12 = a3[2];
      }

      else
      {
        v11 = v4;
        v12 = 4;
      }

      if (v10 >> 1 == v12)
      {
        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::EmplaceBackSlow<int>(a3);
      }

      if (!v11)
      {
        break;
      }

      *(v11 + (v10 >> 1)) = v9;
      *a3 = v10 + 2;
      v7 -= 16;
      if (!v7)
      {
        return this;
      }
    }

    __break(1u);
LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::ChainDiffCalculator::From(unint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  webrtc::ChainDiffCalculator::ChainDiffs(a1, a2, a4);
  v7 = a3[1];
  v8 = v7;
  if (v7 != *a1 >> 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/chain_diff_calculator.cc");
    }

    v8 = a3[1];
    v7 = *a1 >> 1;
  }

  if (v8 < v7)
  {
    v7 = v8;
  }

  if (v7)
  {
    v16 = 0;
    v17 = 0;
    while (a3[1] > v17)
    {
      if ((*(*a3 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
      {
        if (v17 >= *a1 >> 1)
        {
          break;
        }

        v19 = a1 + 1;
        if (*a1)
        {
          v19 = a1[1];
        }

        v18 = &v19[v16];
        *v18 = a2;
        *(v18 + 8) = 1;
      }

      ++v17;
      v16 += 2;
      if (v7 == v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t *absl::inlined_vector_internal::Storage<std::optional<long long>,4ul,std::allocator<std::optional<long long>>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<std::optional<long long>>>>(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  if ((*result & 1) == 0)
  {
    v3 = 4;
    v4 = result + 1;
    v5 = v2 >> 1;
    v6 = a2 - (v2 >> 1);
    if (a2 <= v2 >> 1)
    {
      goto LABEL_25;
    }

LABEL_5:
    if (v3 < a2)
    {
      v7 = 2 * v3;
      if (v7 <= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v7;
      }

      if (!(v8 >> 60))
      {
        operator new();
      }

LABEL_31:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (!v4)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v6 >= 2 && ((v9 = ~v5 + a2, &v4[2 * v5 + 2 * v9] >= &v4[2 * v5]) ? (v10 = &v4[2 * v5 + 1 + 2 * v9] >= &v4[2 * v5 + 1]) : (v10 = 0), v10 ? (v11 = v9 >> 60 == 0) : (v11 = 0), v11))
    {
      v12 = v6 & 0xFFFFFFFFFFFFFFFELL;
      v15 = &v4[2 * v5 + 2];
      v16 = v6 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v15 - 16) = 0;
        *v15 = 0;
        *(v15 - 8) = 0;
        v15[8] = 0;
        v15 += 32;
        v16 -= 2;
      }

      while (v16);
      if (v6 == v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 + v5 - a2;
    v14 = &v4[2 * v12 + 1 + 2 * v5];
    do
    {
      *(v14 - 8) = 0;
      *v14 = 0;
      v14 += 16;
      v10 = __CFADD__(v13++, 1);
    }

    while (!v10);
LABEL_24:
    v2 = *result;
    goto LABEL_25;
  }

  v4 = result[1];
  v3 = result[2];
  v5 = v2 >> 1;
  v6 = a2 - (v2 >> 1);
  if (a2 > v2 >> 1)
  {
    goto LABEL_5;
  }

LABEL_25:
  *result = v2 & 1 | (2 * a2);
  return result;
}

void absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::EmplaceBackSlow<int>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 61) & 3) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::RtpSendParametersFromMediaDescription(uint64_t a1, int a2, uint64_t a3)
{
  webrtc::RtpExtension::DeduplicateHeaderExtensions((a1 + 64), a2, &__p);
  *(a3 + 80) = (*(a1 + 124) & 0xFFFFFFFD) == 0;
  if (a3 + 32 != a1 + 280)
  {
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a3 + 32), *(a1 + 280), *(a1 + 288), 0x84BDA12F684BDA13 * ((*(a1 + 288) - *(a1 + 280)) >> 3));
  }

  v5 = (a3 + 56);
  if (*(a1 + 88) == 1 && v5 != &__p)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(v5, __p, v12, (v12 - __p) >> 5);
  }

  *(a3 + 81) = *(a1 + 33);
  *(a3 + 84) = *(a1 + 36);
  *(a3 + 88) = *(a1 + 200) != 0;
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = v8[-1].__r_.__value_.__s.__data_[15];
        v8 = (v8 - 32);
        if (v10 < 0)
        {
          operator delete(v8->__r_.__value_.__l.__data_);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }
}

void webrtc::BaseChannel::~BaseChannel(webrtc::BaseChannel *this)
{
  *this = &unk_288290840;
  *(this + 1) = &unk_288290938;
  *(this + 2) = &unk_288290970;
  *(*(this + 8) + 4) = 0;
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
    if ((*(this + 335) & 0x80000000) == 0)
    {
LABEL_7:
      v4 = *(this + 36);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((*(this + 335) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(this + 39));
  v4 = *(this + 36);
  if (!v4)
  {
LABEL_8:
    v5 = *(this + 33);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_34:
  v17 = *(this + 37);
  if (v17 == v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
    v5 = *(this + 33);
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_9:
    *(this + 34) = v5;
    operator delete(v5);
    goto LABEL_10;
  }

  do
  {
    v18 = *(v17 - 9);
    v17 -= 4;
    if (v18 < 0)
    {
      operator delete(*v17);
    }
  }

  while (v17 != v4);
  v19 = *(this + 36);
  *(this + 37) = v4;
  operator delete(v19);
  v5 = *(this + 33);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = *(this + 29);
  if (v6)
  {
    v7 = *(this + 30);
    v8 = *(this + 29);
    if (v7 != v6)
    {
      do
      {
        webrtc::StreamParams::~StreamParams((v7 - 144));
      }

      while (v7 != v6);
      v8 = *(this + 29);
    }

    *(this + 30) = v6;
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    v10 = *(this + 27);
    v11 = *(this + 26);
    if (v10 != v9)
    {
      do
      {
        webrtc::StreamParams::~StreamParams((v10 - 144));
      }

      while (v10 != v9);
      v11 = *(this + 26);
    }

    *(this + 27) = v9;
    operator delete(v11);
  }

  v12 = *(this + 21);
  if (v12)
  {
    *(this + 22) = v12;
    operator delete(v12);
  }

  v13 = *(this + 18);
  if (v13)
  {
    *(this + 19) = v13;
    operator delete(v13);
  }

  v14 = *(this + 16);
  if (v14 == (this + 104))
  {
    (*(*v14 + 32))(v14);
    v15 = *(this + 12);
    if (v15 != (this + 72))
    {
      goto LABEL_28;
    }

LABEL_43:
    (*(*v15 + 32))(v15);
    v16 = *(this + 8);
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v15 = *(this + 12);
  if (v15 == (this + 72))
  {
    goto LABEL_43;
  }

LABEL_28:
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v16 = *(this + 8);
  if (v16)
  {
LABEL_44:
    if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }

LABEL_46:
  v20 = *(this + 4);
  *(this + 4) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 3);
  *(this + 3) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }
}

uint64_t webrtc::BaseChannel::SetRtpTransport(webrtc::BaseChannel *this, webrtc::RtpTransportInternal *a2)
{
  v3 = *(this + 17);
  if (v3 == a2)
  {
    return 1;
  }

  if (v3)
  {
    (*(*v3 + 112))(v3, this + 16);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 17) + 56), this);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 17) + 152), this);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 17) + 184), this);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 17) + 216), this);
    *(this + 17) = 0;
    v4 = (*(*this + 40))(this);
    (*(*v4 + 88))(v4, 0);
    v5 = (*(*this + 64))(this);
    (*(*v5 + 64))(v5, 0);
    v6 = *(this + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
    }

    operator new();
  }

  *(this + 17) = a2;
  if (!a2)
  {
    return 1;
  }

  result = (*(*a2 + 104))(a2, this + 312, this + 16);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t webrtc::BaseChannel::Enable(uint64_t this, int a2)
{
  if (*(this + 201) != a2)
  {
    v9 = v5;
    v10 = v4;
    v11 = v3;
    v12 = v2;
    v13 = v6;
    v14 = v7;
    *(this + 201) = a2;
    v8 = *(this + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
    }

    operator new();
  }

  return this;
}

uint64_t webrtc::BaseChannel::SetPayloadTypeDemuxingEnabled(webrtc::BaseChannel *this, int a2)
{
  if (*(this + 202) == a2)
  {
    return 1;
  }

  *(this + 202) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = (*(*this + 64))(this);
    (*(*v7 + 56))(v7);
    v8 = *(this + 48);
    if (v8 != *(this + 49))
    {
      *(this + 49) = v8;
      goto LABEL_44;
    }

    return 1;
  }

  v4 = *(this + 33);
  v5 = *(this + 34);
  if (v4 == v5)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v10 = *(this + 48);
    v9 = *(this + 49);
    v11 = (v9 - v10);
    if (v9 != v10)
    {
      break;
    }

    v13 = *(this + 48);
LABEL_21:
    v19 = *(this + 50);
    if (v9 >= v19)
    {
LABEL_26:
      v22 = (v11 + 1);
      if ((v11 + 1) < 0)
      {
        goto LABEL_55;
      }

      v23 = v19 - v10;
      v24 = 2 * (v19 - v10);
      if (v24 > v22)
      {
        v22 = v24;
      }

      if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v22;
      }

      if (v25)
      {
        operator new();
      }

      v26 = (v13 - v10);
      if (v13 == v10)
      {
        operator new();
      }

      *v26 = *v4;
      memcpy(v26 + 1, v13, *(this + 49) - v13);
      v27 = *(this + 48);
      v28 = 1 - v10 + *(this + 49);
      *(this + 49) = v13;
      v29 = (v27 - v10);
      memcpy((v27 - v10), v27, v13 - v27);
      v30 = *(this + 48);
      *(this + 48) = v29;
      *(this + 49) = v28;
      *(this + 50) = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
LABEL_22:
      if (v13 == v9)
      {
        if (!v10)
        {
          __break(1u);
LABEL_55:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *v9 = *v4;
        *(this + 49) = v9 + 1;
      }

      else
      {
        v20 = *v4;
        if (v9)
        {
          *v9 = *(v9 - 1);
          v21 = v9 + 1;
        }

        else
        {
          v21 = 0;
        }

        *(this + 49) = v21;
        if (v9 != v13 + 1)
        {
          memmove(v13 + 1, v13, v9 - (v13 + 1));
        }

        *v13 = v20;
      }
    }

    ++v4;
    v6 = 1;
  }

  while (v4 != v5);
  do
  {
    v12 = *v4;
    v13 = *(this + 48);
    v14 = v9 - v10;
    do
    {
      v15 = (v14 >> 1);
      v16 = &v13[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (v18 < v12)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v9 == v13)
    {
      v13 = *(this + 49);
      v19 = *(this + 50);
      if (v9 < v19)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (v12 < *v13)
    {
      goto LABEL_21;
    }

    ++v4;
  }

  while (v4 != v5);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

LABEL_44:
  v31 = (*(*this + 64))(this);
  (*(*v31 + 96))(v31);
  v32 = *(this + 6);
  v36 = this;
  webrtc::RtpDemuxerCriteria::RtpDemuxerCriteria(&v37, (this + 312));
  v45 = 0;
  v44[0] = &v45;
  v44[1] = &v36;
  (*(*v32 + 96))(v32, v44, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0,BOOL,void>(webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v35);
  v2 = v45;
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    operator delete(v37.__r_.__value_.__l.__data_);
  }

LABEL_50:
  v33 = (*(*this + 64))(this);
  (*(*v33 + 104))(v33);
  return v2;
}

uint64_t webrtc::BaseChannel::SendPacket(webrtc::BaseChannel *this, int a2, webrtc::CopyOnWriteBuffer *a3, const webrtc::AsyncSocketPacketOptions *a4)
{
  v5 = *(this + 17);
  if (!v5 || !(*(*v5 + 64))(v5))
  {
    return 0;
  }

  v9 = *(a3 + 2);
  v10 = 12;
  if (a2)
  {
    v10 = 4;
  }

  if (v9 > 0x800 || v10 > v9)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v12 = (*(*this + 96))(this);
      if (*(v12 + 23) >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = *v12;
      }

      result = (*(**(this + 3) + 32))(*(this + 3));
      if (result == 2)
      {
        v32 = 4;
        v15 = (v31 + 4);
        if (v31 > "data" || v31 + 4 <= "data")
        {
          LODWORD(v31[0]) = 1635017060;
          goto LABEL_34;
        }
      }

      else
      {
        if (result == 1)
        {
          v32 = 5;
          v15 = (v31 + 5);
          v16 = "video";
        }

        else
        {
          if (result)
          {
            v32 = 0;
            v15 = v31;
            goto LABEL_34;
          }

          v32 = 5;
          v15 = (v31 + 5);
          v16 = "audio";
        }

        if (v31 > v16 || v31 + 5 <= v16)
        {
          LODWORD(v31[0]) = *v16;
          BYTE4(v31[0]) = v16[4];
LABEL_34:
          *v15 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v13, v31);
          if (v32 < 0)
          {
            operator delete(v31[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
          if (v30 < 0)
          {
            operator delete(__p);
          }

          return 0;
        }
      }

      __break(1u);
      return result;
    }

    return 0;
  }

  v17 = *(this + 17);
  if (!v17 || ((*(*v17 + 96))(v17) & 1) == 0) && (*(this + 195))
  {
    return 0;
  }

  v18 = *(this + 16);
  if (v18 && *(a4 + 66) == 1)
  {
    (*(*v18 + 48))(v18);
    v19 = *(this + 16);
    *(this + 16) = 0;
    if (v19 == (this + 104))
    {
      (*(*v19 + 32))(v19);
    }

    else if (v19)
    {
      (*(*v19 + 40))(v19);
    }
  }

  v27 = **(this + 17);
  if (a2)
  {
    v28 = *(v27 + 80);
  }

  else
  {
    v28 = *(v27 + 72);
  }

  return v28();
}

uint64_t webrtc::BaseChannel::SetOption(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2 == 1)
  {
    v8 = __PAIR64__(a4, a3);
    std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 168), &v8);
    v5 = *(**(a1 + 136) + 40);

    return v5();
  }

  if (!a2)
  {
    v8 = __PAIR64__(a4, a3);
    std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 144), &v8);
    v5 = *(**(a1 + 136) + 32);

    return v5();
  }

  return 0xFFFFFFFFLL;
}

void *std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_13;
    }

    v6 = v2 - *result;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5)
    {
      v7 = (v4 >> 3) + 1;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t non-virtual thunk towebrtc::BaseChannel::SetOption(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2 == 1)
  {
    v8 = __PAIR64__(a4, a3);
    std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 160), &v8);
    v5 = *(**(a1 + 128) + 40);

    return v5();
  }

  if (!a2)
  {
    v8 = __PAIR64__(a4, a3);
    std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 136), &v8);
    v5 = *(**(a1 + 128) + 32);

    return v5();
  }

  return 0xFFFFFFFFLL;
}

void webrtc::BaseChannel::ChannelWritable_n(webrtc::BaseChannel *this)
{
  if (*(this + 192))
  {
    return;
  }

  *(this + 192) = 1;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v2 = (*(*this + 96))(this);
    if (*(v2 + 23) >= 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = *v2;
    }

    v4 = (*(**(this + 3) + 32))(*(this + 3));
    if (v4 == 2)
    {
      v19 = 4;
      v5 = (v18 + 4);
      if (v18 > "data" || v18 + 4 <= "data")
      {
        LODWORD(v18[0]) = 1635017060;
        goto LABEL_20;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v19 = 5;
        v5 = (v18 + 5);
        v6 = "video";
        if (v18 > "video")
        {
LABEL_13:
          LODWORD(v18[0]) = *v6;
          BYTE4(v18[0]) = v6[4];
LABEL_20:
          *v5 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v3, v18);
          if (v19 < 0)
          {
            operator delete(v18[0]);
          }

          webrtc::webrtc_logging_impl::Log("\r\t\n\t\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
          if (v17 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (v4)
        {
          v19 = 0;
          v5 = v18;
          goto LABEL_20;
        }

        v19 = 5;
        v5 = (v18 + 5);
        v6 = "audio";
        if (v18 > "audio")
        {
          goto LABEL_13;
        }
      }

      if (v18 + 5 <= v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
  if ((*(this + 193) & 1) == 0)
  {
    v15 = *(this + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
    }

    operator new();
  }

  *(this + 193) = 1;
}

void webrtc::BaseChannel::ChannelNotWritable_n(webrtc::BaseChannel *this)
{
  if (*(this + 192) != 1)
  {
    return;
  }

  *(this + 192) = 0;
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    return;
  }

  v2 = (*(*this + 96))(this);
  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  v4 = (*(**(this + 3) + 32))(*(this + 3));
  if (v4 == 2)
  {
    v18 = 4;
    v5 = (v17 + 4);
    if (v17 > "data" || v17 + 4 <= "data")
    {
      LODWORD(v17[0]) = 1635017060;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      v18 = 0;
      v5 = v17;
      goto LABEL_20;
    }

    v18 = 5;
    v5 = (v17 + 5);
    v6 = "audio";
    if (v17 > "audio")
    {
      goto LABEL_13;
    }

LABEL_12:
    if (v17 + 5 <= v6)
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v18 = 5;
  v5 = (v17 + 5);
  v6 = "video";
  if (v17 <= "video")
  {
    goto LABEL_12;
  }

LABEL_13:
  LODWORD(v17[0]) = *v6;
  BYTE4(v17[0]) = v6[4];
LABEL_20:
  *v5 = 0;
  webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v3, v17);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  webrtc::webrtc_logging_impl::Log("\r\t\n\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
  if (v16 < 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::BaseChannel::SetFirstPacketReceivedCallback(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 72;
  result = *(a1 + 96);
  *(a1 + 96) = 0;
  if (result != v4)
  {
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    *(a1 + 96) = 0;
    return result;
  }

  result = (*(*result + 32))(result);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v6 == a2)
  {
    *(a1 + 96) = v4;
    v7 = *(**(a2 + 24) + 24);

    return v7();
  }

  else
  {
    *(a1 + 96) = v6;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t webrtc::BaseChannel::SetFirstPacketSentCallback(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 104;
  result = *(a1 + 128);
  *(a1 + 128) = 0;
  if (result != v4)
  {
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    *(a1 + 128) = 0;
    return result;
  }

  result = (*(*result + 32))(result);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v6 == a2)
  {
    *(a1 + 128) = v4;
    v7 = *(**(a2 + 24) + 24);

    return v7();
  }

  else
  {
    *(a1 + 128) = v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void webrtc::BaseChannel::OnRtpPacket(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v3 == a1 + 72)
    {
      (*(*v3 + 32))(v3);
      v4 = *(a1 + 136);
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = *(a1 + 136);
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((*(*v4 + 96))(v4))
  {
    goto LABEL_19;
  }

LABEL_9:
  if (*(a1 + 195) != 1)
  {
LABEL_19:
    v10 = *(*(*(*a1 + 64))(a1) + 72);

    v10();
    return;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    return;
  }

  v5 = (*(*a1 + 96))(a1);
  if (*(v5 + 23) >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  v7 = (*(**(a1 + 24) + 32))(*(a1 + 24));
  if (v7 == 2)
  {
    v21 = 4;
    v8 = (__p + 4);
    if (__p > "data" || __p + 4 <= "data")
    {
      LODWORD(__p[0]) = 1635017060;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v7 != 1)
  {
    if (v7)
    {
      v21 = 0;
      v8 = __p;
      goto LABEL_29;
    }

    v21 = 5;
    v8 = (__p + 5);
    v9 = "audio";
    if (__p > "audio")
    {
      goto LABEL_24;
    }

LABEL_23:
    if (__p + 5 <= v9)
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
    return;
  }

  v21 = 5;
  v8 = (__p + 5);
  v9 = "video";
  if (__p <= "video")
  {
    goto LABEL_23;
  }

LABEL_24:
  LODWORD(__p[0]) = *v9;
  BYTE4(__p[0]) = v9[4];
LABEL_29:
  *v8 = 0;
  webrtc::StringFormat("{mid: %s, media_type: %s}", &v18, v6, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
  if (v19 < 0)
  {
    operator delete(v18);
  }
}

uint64_t webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  if (*(a3 + 24) == 1)
  {
    v9 = *(a1 + 288);
    v8 = *(a1 + 296);
    v10 = *a3;
    v11 = *(a3 + 8);
    v12 = v11 - *a3;
    if (v8 - v9 == v12)
    {
      if (v9 == v8)
      {
LABEL_21:
        if (v10)
        {
          v21 = v10;
          if (v11 != v10)
          {
            do
            {
              v22 = v11[-1].__r_.__value_.__s.__data_[15];
              v11 = (v11 - 32);
              if (v22 < 0)
              {
                operator delete(v11->__r_.__value_.__l.__data_);
              }
            }

            while (v11 != v10);
            v21 = *a3;
          }

          *(a3 + 8) = v10;
          operator delete(v21);
        }

        *(a3 + 24) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }

      v13 = 0;
      while (1)
      {
        v14 = v10 + v13;
        v15 = *(v9 + v13 + 23);
        if (v15 >= 0)
        {
          v16 = *(v9 + v13 + 23);
        }

        else
        {
          v16 = *(v9 + v13 + 8);
        }

        v17 = v14[23];
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v14 + 1);
        }

        if (v16 != v17)
        {
          break;
        }

        v19 = v15 >= 0 ? (v9 + v13) : *(v9 + v13);
        v20 = v18 >= 0 ? v10 + v13 : *v14;
        if (memcmp(v19, v20, v16) || *(v9 + v13 + 24) != *(&v10[1].__r_.__value_.__l.__data_ + v13) || *(v9 + v13 + 28) != v10[1].__r_.__value_.__s.__data_[v13 + 4])
        {
          break;
        }

        v13 += 32;
        if (v9 + v13 == v8)
        {
          goto LABEL_21;
        }
      }
    }

    if (a1 + 288 != a3)
    {
      std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 288), v10, v11, v12 >> 5);
    }
  }

  if (a2)
  {
LABEL_30:
    v23 = (*(*a1 + 64))(a1);
    (*(*v23 + 96))(v23);
    goto LABEL_35;
  }

LABEL_34:
  if ((*(a3 + 24) & 1) == 0)
  {
    return 1;
  }

LABEL_35:
  v24 = *(a1 + 48);
  v29[0] = a1;
  v29[1] = a3;
  v29[2] = &v30;
  v29[3] = a4;
  v32 = 0;
  v31[0] = &v32;
  v31[1] = v29;
  (*(*v24 + 96))(v24, v31, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(BOOL,std::optional<std::vector<webrtc::RtpExtension>>,std::string &)::$_0,BOOL,void>(webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(BOOL,std::optional<std::vector<webrtc::RtpExtension>>,std::string &)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v28);
  result = v32;
  if (v30 == 1)
  {
    v26 = v32;
    v27 = (*(*a1 + 64))(a1);
    (*(*v27 + 104))(v27);
    return v26;
  }

  return result;
}

uint64_t webrtc::BaseChannel::DisableMedia_w(uint64_t this)
{
  if (*(this + 200) == 1)
  {
    v1 = this;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
LABEL_24:
      *(v1 + 200) = 0;
      return ((*v1)[26])(v1);
    }

    v2 = ((*v1)[12])(v1);
    if (*(v2 + 23) >= 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = *v2;
    }

    this = (*(*v1[3] + 32))(v1[3]);
    if (this == 2)
    {
      v17 = 4;
      v4 = (__p + 4);
      if (__p > "data" || __p + 4 <= "data")
      {
        LODWORD(__p[0]) = 1635017060;
        goto LABEL_20;
      }
    }

    else
    {
      if (this == 1)
      {
        v17 = 5;
        v4 = (__p + 5);
        v5 = "video";
        if (__p > "video")
        {
LABEL_13:
          LODWORD(__p[0]) = *v5;
          BYTE4(__p[0]) = v5[4];
LABEL_20:
          *v4 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &v14, v3, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
          if (v15 < 0)
          {
            operator delete(v14);
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (this)
        {
          v17 = 0;
          v4 = __p;
          goto LABEL_20;
        }

        v17 = 5;
        v4 = (__p + 5);
        v5 = "audio";
        if (__p > "audio")
        {
          goto LABEL_13;
        }
      }

      if (__p + 5 <= v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return this;
}

std::string *webrtc::BaseChannel::UpdateLocalStreams_w(uint64_t a1, const webrtc::StreamParams **a2, uint64_t a3)
{
  v5 = *(a1 + 208);
  v102 = (a1 + 208);
  v6 = *(a1 + 216);
  if (v5 != v6)
  {
    v104 = 1;
    while (1)
    {
      v7 = v5[3];
      if (v7 == v5[4])
      {
        goto LABEL_4;
      }

      v8 = a2[1];
      v9 = *a2;
      if (*a2 != v8)
      {
        break;
      }

LABEL_33:
      if (v9 == v8 || !v9)
      {
LABEL_35:
        v22 = (*(*a1 + 40))(a1);
        v23 = v5[3];
        if (v23 == v5[4])
        {
          v24 = a3;
          if (((*(*v22 + 56))(v22, 0) & 1) == 0)
          {
LABEL_39:
            v25 = v5[3];
            if (v25 == v5[4])
            {
              v26 = 0;
            }

            else
            {
              v26 = *v25;
            }

            v27 = (*(*a1 + 96))(a1);
            if (*(v27 + 23) >= 0)
            {
              v28 = v27;
            }

            else
            {
              v28 = *v27;
            }

            webrtc::StringFormat("Failed to remove send stream with ssrc %u from m-section with mid='%s'.", &v112, v26, v28);
            if (*(v24 + 23) < 0)
            {
              operator delete(*v24);
            }

            v104 = 0;
            *v24 = v112;
            *(v24 + 16) = v113;
          }
        }

        else
        {
          v24 = a3;
          if (((*(*v22 + 56))(v22, *v23) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_4:
      v5 += 18;
      if (v5 == v6)
      {
        goto LABEL_48;
      }
    }

    while (1)
    {
      v10 = *(v9 + 4);
      v11 = *(v9 + 3);
      if (v11 == v10)
      {
        v13 = v5[15];
        v12 = v5[16];
        if (v13 == v12)
        {
          v14 = *(v9 + 15);
          v15 = *(v9 + 16);
          if (v14 == v15)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v14 = *(v9 + 15);
          v15 = *(v9 + 16);
        }

        if (v15 - v14 == v12 - v13)
        {
          if (v14 == v15)
          {
            goto LABEL_33;
          }

          while (1)
          {
            v16 = *(v14 + 23);
            if (v16 >= 0)
            {
              v17 = *(v14 + 23);
            }

            else
            {
              v17 = *(v14 + 8);
            }

            v18 = *(v13 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(v13 + 8);
            }

            if (v17 != v18)
            {
              break;
            }

            v20 = v16 >= 0 ? v14 : *v14;
            v21 = v19 >= 0 ? v13 : *v13;
            if (memcmp(v20, v21, v17))
            {
              break;
            }

            v14 += 80;
            v13 += 80;
            if (v14 == v15)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else
      {
        while (*v11 != *v7)
        {
          if (++v11 == v10)
          {
            goto LABEL_9;
          }
        }

        if (v11 != v10)
        {
          goto LABEL_33;
        }
      }

LABEL_9:
      v9 = (v9 + 144);
      if (v9 == v8)
      {
        goto LABEL_35;
      }
    }
  }

  v104 = 1;
LABEL_48:
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v29 = *a2;
  v106 = a2[1];
  if (*a2 != v106)
  {
    v31 = &v112 <= "data" && &v112 + 4 > "data";
    v101 = v31;
    v33 = &v112 <= "video" && &v112 + 5 > "video";
    v100 = v33;
    v35 = &v112 <= "audio" && &v112 + 5 > "audio";
    v99 = v35;
    while (1)
    {
      v36 = *(a1 + 208);
      v37 = *(a1 + 216);
      if (v36 != v37)
      {
        v38 = *(v29 + 3);
        if (v38 == *(v29 + 4))
        {
          v39 = *(v29 + 15);
          v40 = *(v29 + 16);
          while (1)
          {
            if (v39 == v40)
            {
              v54 = *(v36 + 15);
              v53 = *(v36 + 16);
              if (v54 == v53)
              {
                goto LABEL_99;
              }
            }

            else
            {
              v54 = *(v36 + 15);
              v53 = *(v36 + 16);
            }

            if (v53 - v54 == v40 - v39)
            {
              if (v54 == v53)
              {
                goto LABEL_120;
              }

              v55 = v39;
              while (1)
              {
                v56 = *(v54 + 23);
                if (v56 >= 0)
                {
                  v57 = *(v54 + 23);
                }

                else
                {
                  v57 = *(v54 + 8);
                }

                v58 = *(v55 + 23);
                v59 = v58;
                if ((v58 & 0x80u) != 0)
                {
                  v58 = *(v55 + 8);
                }

                if (v57 != v58)
                {
                  break;
                }

                v60 = v56 >= 0 ? v54 : *v54;
                v61 = v59 >= 0 ? v55 : *v55;
                if (memcmp(v60, v61, v57))
                {
                  break;
                }

                v54 += 80;
                v55 += 80;
                if (v54 == v53)
                {
                  goto LABEL_120;
                }
              }
            }

LABEL_99:
            v36 = (v36 + 144);
            if (v36 == v37)
            {
              goto LABEL_127;
            }
          }
        }

        while (2)
        {
          v41 = *(v36 + 4);
          v42 = *(v36 + 3);
          if (v42 == v41)
          {
            v44 = *(v29 + 15);
            v43 = *(v29 + 16);
            if (v44 == v43)
            {
              v45 = *(v36 + 15);
              v46 = *(v36 + 16);
              if (v45 == v46)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v45 = *(v36 + 15);
              v46 = *(v36 + 16);
            }

            if (v46 - v45 == v43 - v44)
            {
              if (v45 == v46)
              {
                break;
              }

              while (1)
              {
                v47 = *(v45 + 23);
                if (v47 >= 0)
                {
                  v48 = *(v45 + 23);
                }

                else
                {
                  v48 = *(v45 + 8);
                }

                v49 = *(v44 + 23);
                v50 = v49;
                if ((v49 & 0x80u) != 0)
                {
                  v49 = *(v44 + 8);
                }

                if (v48 != v49)
                {
                  break;
                }

                v51 = v47 >= 0 ? v45 : *v45;
                v52 = v50 >= 0 ? v44 : *v44;
                if (memcmp(v51, v52, v48))
                {
                  break;
                }

                v45 += 80;
                v44 += 80;
                if (v45 == v46)
                {
                  goto LABEL_120;
                }
              }
            }
          }

          else
          {
            while (*v42 != *v38)
            {
              if (++v42 == v41)
              {
                goto LABEL_74;
              }
            }

            if (v42 != v41)
            {
              break;
            }
          }

LABEL_74:
          v36 = (v36 + 144);
          if (v36 == v37)
          {
LABEL_127:
            result = v110;
            v63 = v111;
            goto LABEL_128;
          }

          continue;
        }
      }

LABEL_120:
      result = v110;
      v63 = v111;
      if (v36 != v37 && v36 != 0)
      {
        if (v110 >= v111)
        {
          std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>(&v109);
        }

        if (!v110)
        {
          goto LABEL_183;
        }

        v110 = webrtc::StreamParams::StreamParams(v110, v36) + 6;
        goto LABEL_69;
      }

LABEL_128:
      if (result >= v63)
      {
        std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>(&v109);
      }

      if (!result || (result = webrtc::StreamParams::StreamParams(result, v29), v65 = result + 6, v110 = result + 6, v109 == v65))
      {
LABEL_183:
        __break(1u);
        return result;
      }

      data = result[1].__r_.__value_.__l.__data_;
      v67 = result[5].__r_.__value_.__l.__data_;
      size = result[5].__r_.__value_.__l.__size_;
      if (data == result[1].__r_.__value_.__l.__size_)
      {
        if (v67 == size)
        {
          goto LABEL_69;
        }

        webrtc::StreamParams::GenerateSsrcs(result, -858993459 * ((size - v67) >> 4), 1, 0, *(a1 + 408));
      }

      else if (v67 != size)
      {
        v69 = *data;
        v70 = (*(*a1 + 96))(a1);
        if (*(v70 + 23) >= 0)
        {
          v71 = v70;
        }

        else
        {
          v71 = *v70;
        }

        webrtc::StringFormat("Failed to add send stream: %u into m-section with mid='%s'. Stream has both SSRCs and RIDs.", &v112, v69, v71);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        v104 = 0;
        *a3 = v112;
        *(a3 + 16) = v113;
        goto LABEL_69;
      }

      v72 = (*(*a1 + 40))(a1);
      if (!(*(*v72 + 48))(v72, v65 - 6))
      {
        v79 = v65[-5].__r_.__value_.__l.__data_;
        if (v79 == v65[-5].__r_.__value_.__l.__size_)
        {
          v80 = 0;
        }

        else
        {
          v80 = *v79;
        }

        v81 = (*(*a1 + 96))(a1);
        if (*(v81 + 23) >= 0)
        {
          v82 = v81;
        }

        else
        {
          v82 = *v81;
        }

        webrtc::StringFormat("Failed to add send stream ssrc: %u into m-section with mid='%s'", &v112, v80, v82, v95, v96, v97, v98);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        v104 = 0;
        *a3 = v112;
        *(a3 + 16) = v113;
        goto LABEL_69;
      }

      result = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      if ((result & 1) == 0)
      {
        v73 = v65[-5].__r_.__value_.__l.__data_;
        if (v65[-5].__r_.__value_.__l.__size_ == v73)
        {
          goto LABEL_183;
        }

        v74 = *v73;
        v75 = (*(*a1 + 96))(a1);
        if (*(v75 + 23) >= 0)
        {
          v76 = v75;
        }

        else
        {
          v76 = *v75;
        }

        result = (*(**(a1 + 24) + 32))(*(a1 + 24));
        if (result == 2)
        {
          HIBYTE(v113) = 4;
          v77 = v103;
          if (v101)
          {
            goto LABEL_183;
          }

          LODWORD(v112) = 1635017060;
          v83 = (&v112 + 4);
        }

        else
        {
          v77 = v103;
          if (result == 1)
          {
            HIBYTE(v113) = 5;
            if (v100)
            {
              goto LABEL_183;
            }

            v78 = "video";
LABEL_165:
            LODWORD(v112) = *v78;
            BYTE4(v112) = v78[4];
            v83 = (&v112 + 5);
          }

          else
          {
            if (!result)
            {
              HIBYTE(v113) = 5;
              if (v99)
              {
                goto LABEL_183;
              }

              v78 = "audio";
              goto LABEL_165;
            }

            HIBYTE(v113) = 0;
            v83 = &v112;
          }
        }

        *v83 = 0;
        webrtc::StringFormat("{mid: %s, media_type: %s}", __p, v76, &v112);
        if (SHIBYTE(v113) < 0)
        {
          operator delete(v112);
        }

        v98 = __p;
        v96 = v74;
        v97 = " into ";
        v95 = "Add send stream ssrc: ";
        v103 = v77 & 0xFFFFFFFF00000000 | 0x15F9;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v84, v85, v86, v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
        if (v108 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_69:
      v29 = (v29 + 144);
      if (v29 == v106)
      {
        v91 = v109;
        v92 = v102;
        if (v102 != &v109)
        {
          goto LABEL_174;
        }

        goto LABEL_175;
      }
    }
  }

  v91 = 0;
  v92 = v102;
  if (v102 != &v109)
  {
LABEL_174:
    std::vector<webrtc::StreamParams>::__assign_with_size[abi:sn200100]<webrtc::StreamParams*,webrtc::StreamParams*>(v92, v91, v110, 0x8E38E38E38E38E39 * ((v110 - v91) >> 4));
    v91 = v109;
  }

LABEL_175:
  if (v91)
  {
    v93 = v110;
    v94 = v91;
    if (v110 != v91)
    {
      do
      {
        webrtc::StreamParams::~StreamParams(&v93[-6]);
      }

      while (v93 != v91);
      v94 = v109;
    }

    v110 = v91;
    operator delete(v94);
  }

  return (v104 & 1);
}

uint64_t webrtc::BaseChannel::UpdateRemoteStreams_w(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a2 + 124) < 2u || (v6 = *(a1 + 384), v7 = *(a1 + 392), *(a1 + 392) = v6, *(a1 + 272) = *(a1 + 264), v6 == v7))
  {
    v185 = 0;
  }

  else
  {
    v185 = *(a1 + 202);
  }

  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = v8;
  v187 = a2 + 96;
  if (v8 != v9)
  {
    v10 = *(a2 + 96);
    while (*(v10 + 24) != *(v10 + 32))
    {
      v10 += 144;
      if (v10 == v9)
      {
        v11 = 0;
        goto LABEL_16;
      }
    }
  }

  v11 = v10 != v9 && v10 != 0;
LABEL_16:
  v13 = *(a1 + 232);
  v186 = a1 + 232;
  v14 = *(a1 + 240);
  v15 = v13;
  if (v13 != v14)
  {
    v15 = *(a1 + 232);
    while (v15[3] != v15[4])
    {
      v15 += 18;
      if (v15 == v14)
      {
        v16 = 0;
        goto LABEL_27;
      }
    }
  }

  v16 = v15 != v14 && v15 != 0;
LABEL_27:
  v195 = v16;
  if (v13 == v14)
  {
    goto LABEL_129;
  }

  v18 = &v214 <= "data" && &v214 + 4 > "data";
  v19 = v18;
  v206 = v19;
  v21 = &v214 <= "video" && &v214 + 5 > "video";
  v204 = v21;
  v23 = &v214 <= "audio" && &v214 + 5 > "audio";
  v202 = v23;
  v25 = &v214 <= "data" && &v214 + 4 > "data";
  v198 = v25;
  v27 = &v214 <= "video" && &v214 + 5 > "video";
  v196 = v27;
  v29 = &v214 <= "audio" && &v214 + 5 > "audio";
  v193 = v29;
  do
  {
    v31 = v13[3];
    v30 = v13[4];
    v32 = v31 == v30;
    if (v31 == v30)
    {
      v33 = v11;
    }

    else
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      v39 = (*(*v5 + 64))(v5);
      (*(*v39 + 56))(v39);
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_66;
      }

      v40 = (*(*v5 + 96))(v5);
      v41 = v5;
      if (*(v40 + 23) >= 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v40;
      }

      v43 = (*(**(v41 + 24) + 32))(*(v41 + 24));
      if (v43 == 2)
      {
        HIBYTE(v215) = 4;
        if (v206)
        {
          goto LABEL_349;
        }

        LODWORD(v214) = 1635017060;
        v49 = (&v214 + 4);
        goto LABEL_105;
      }

      if (v43 == 1)
      {
        HIBYTE(v215) = 5;
        if (v204)
        {
          goto LABEL_349;
        }

        v44 = "video";
      }

      else
      {
        if (v43)
        {
          HIBYTE(v215) = 0;
          v49 = &v214;
          goto LABEL_105;
        }

        HIBYTE(v215) = 5;
        if (v202)
        {
          goto LABEL_349;
        }

        v44 = "audio";
      }

      LODWORD(v214) = *v44;
      BYTE4(v214) = v44[4];
      v49 = (&v214 + 5);
LABEL_105:
      *v49 = 0;
      webrtc::StringFormat("{mid: %s, media_type: %s}", &v211, v42, &v214, v180, v181, v182, p_p, v184);
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v214);
      }

      v8 = v8 & 0xFFFFFFFF00000000 | 0x1721;
      v181 = &v211;
      v182 = ".";
      v179 = v8;
      v180 = "Reset unsignaled remote stream for ";
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
      v5 = a1;
      if (SHIBYTE(v212) < 0)
      {
        operator delete(v211);
      }

      goto LABEL_66;
    }

    if (v32)
    {
      goto LABEL_66;
    }

    v34 = *(v4 + 96);
    v35 = *(v4 + 104);
    if (v34 == v35)
    {
LABEL_90:
      if (v34 != v35 && v34)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v36 = *v31;
      v37 = *(v34 + 24);
      v38 = *(v34 + 32);
      if (v37 != v38)
      {
        goto LABEL_78;
      }

LABEL_76:
      while (1)
      {
        v34 += 144;
        if (v34 == v35)
        {
          break;
        }

        v37 = *(v34 + 24);
        v38 = *(v34 + 32);
        if (v37 != v38)
        {
LABEL_78:
          while (*v37 != v36)
          {
            if (++v37 == v38)
            {
              goto LABEL_76;
            }
          }

          if (v37 != v38)
          {
            goto LABEL_90;
          }
        }
      }
    }

    v45 = (*(*v5 + 64))(v5);
    v46 = v13[3];
    if (v46 == v13[4])
    {
      if (!(*(*v45 + 48))(v45, 0))
      {
LABEL_306:
        v167 = v13[3];
        if (v167 == v13[4])
        {
          v168 = 0;
        }

        else
        {
          v168 = *v167;
        }

        v173 = (*(*a1 + 96))(a1);
        if (*(v173 + 23) >= 0)
        {
          v174 = v173;
        }

        else
        {
          v174 = *v173;
        }

        webrtc::StringFormat("Failed to remove remote stream with ssrc %u from m-section with mid='%s'.", &v214, v168, v174);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        v156 = 0;
        *a3 = v214;
        *(a3 + 16) = v215;
        return v156;
      }
    }

    else if (!(*(*v45 + 48))(v45, *v46))
    {
      goto LABEL_306;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | 0x1749;
      *&v211 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc";
      *(&v211 + 1) = v3;
      v212 = v208;
      v47 = v13[3];
      if (v47 == v13[4])
      {
        v48 = 0;
      }

      else
      {
        v48 = *v47;
      }

      v57 = (*(*a1 + 96))(a1);
      if (*(v57 + 23) >= 0)
      {
        v58 = v57;
      }

      else
      {
        v58 = *v57;
      }

      v59 = (*(**(a1 + 24) + 32))(*(a1 + 24));
      if (v59 == 2)
      {
        HIBYTE(v215) = 4;
        if (v198)
        {
          goto LABEL_349;
        }

        LODWORD(v214) = 1635017060;
        v61 = (&v214 + 4);
        v4 = a2;
      }

      else if (v59 == 1)
      {
        HIBYTE(v215) = 5;
        v4 = a2;
        if (v196)
        {
          goto LABEL_349;
        }

        v60 = "video";
LABEL_120:
        LODWORD(v214) = *v60;
        BYTE4(v214) = v60[4];
        v61 = (&v214 + 5);
      }

      else
      {
        v4 = a2;
        if (!v59)
        {
          HIBYTE(v215) = 5;
          if (v193)
          {
            goto LABEL_349;
          }

          v60 = "audio";
          goto LABEL_120;
        }

        HIBYTE(v215) = 0;
        v61 = &v214;
      }

      *v61 = 0;
      webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v58, &v214, v180, v181, v182);
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v214);
      }

      p_p = &__p;
      v184 = ".";
      v181 = v48;
      v182 = " from ";
      v180 = "Remove remote ssrc: ";
      v179 = *(&v211 + 1);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v62, v63, v64, v65, v66, v67, v68, v211);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = a1;
    }

LABEL_66:
    v13 += 18;
  }

  while (v13 != v14);
  v8 = *(v4 + 96);
  v9 = *(v4 + 104);
  v16 = v195;
LABEL_129:
  v212 = 0;
  v69 = 0uLL;
  v211 = 0u;
  if (v8 == v9)
  {
    v146 = 0;
LABEL_270:
    v147 = *(v5 + 360);
    v148 = *(v5 + 368) - v147;
    if (v148 == v146 - v69 && (v207 = v69, v149 = memcmp(*(v5 + 360), v69, v148), v69 = v207, !v149))
    {
      if ((v185 & 1) == 0)
      {
        goto LABEL_282;
      }
    }

    else
    {
      v150 = v5;
      v151 = (v5 + 360);
      if (v147)
      {
        *(v150 + 368) = v147;
        operator delete(v147);
        v69 = v211;
      }

      *v151 = v69;
      *(v150 + 376) = v212;
      v212 = 0;
      v211 = 0uLL;
      v5 = v150;
    }

    v152 = (*(*v5 + 64))(v5);
    (*(*v152 + 96))(v152);
    v153 = *(v5 + 48);
    *&v214 = v5;
    webrtc::RtpDemuxerCriteria::RtpDemuxerCriteria((&v214 + 8), (v5 + 312));
    LOBYTE(v208[0]) = 0;
    __p.__r_.__value_.__r.__words[0] = v208;
    __p.__r_.__value_.__l.__size_ = &v214;
    (*(*v153 + 96))(v153, &__p, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0,BOOL,void>(webrtc::BaseChannel::RegisterRtpDemuxerSink_w(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v213);
    v154 = v208[0];
    if (v221)
    {
      v222 = v221;
      operator delete(v221);
    }

    if (v219)
    {
      v220 = v219;
      operator delete(v219);
    }

    v5 = a1;
    if (v218 < 0)
    {
      operator delete(v217);
      if ((v216 & 0x80000000) == 0)
      {
        goto LABEL_281;
      }
    }

    else if ((v216 & 0x80000000) == 0)
    {
      goto LABEL_281;
    }

    operator delete(*(&v214 + 1));
LABEL_281:
    v155 = (*(*a1 + 64))(a1);
    (*(*v155 + 104))(v155);
    if ((v154 & 1) == 0)
    {
      v158 = (*(*a1 + 96))(a1);
      if (*(v158 + 23) >= 0)
      {
        v159 = v158;
      }

      else
      {
        v159 = *v158;
      }

      webrtc::StringFormat("Failed to set up audio demuxing for mid='%s'.", &v214, v159, v179, v180, v181, v182, p_p);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v156 = 0;
      *a3 = v214;
      *(a3 + 16) = v215;
      v157 = v211;
      if (v211)
      {
        goto LABEL_362;
      }

      return v156;
    }

LABEL_282:
    if (v186 != v187)
    {
      std::vector<webrtc::StreamParams>::__assign_with_size[abi:sn200100]<webrtc::StreamParams*,webrtc::StreamParams*>(v186, *(v4 + 96), *(v4 + 104), 0x8E38E38E38E38E39 * ((*(v4 + 104) - *(v4 + 96)) >> 4));
    }

    *(v5 + 260) = *(v4 + 124);
    (*(*v5 + 208))(v5);
    v156 = 1;
    v157 = v211;
    if (v211)
    {
      goto LABEL_362;
    }

    return v156;
  }

  v71 = &__p <= "unsignaled" && &__p.__r_.__value_.__r.__words[1] + 2 > "unsignaled";
  v192 = v71;
  v73 = &v214 <= "data" && &v214 + 4 > "data";
  v190 = v73;
  v75 = &v214 <= "video" && &v214 + 5 > "video";
  v189 = v75;
  v194 = v9;
  v77 = &v214 <= "audio" && &v214 + 5 > "audio";
  v188 = v77;
  while (1)
  {
    v79 = *(v8 + 24);
    v78 = *(v8 + 32);
    if (((v79 == v78) & ~v16) != 0)
    {
      break;
    }

    if (v79 == v78)
    {
      v80 = 0;
      v81 = *(v5 + 232);
      v82 = *(v5 + 240);
      if (v81 != v82)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v80 = *v79;
      v81 = *(v5 + 232);
      v82 = *(v5 + 240);
      if (v81 != v82)
      {
LABEL_171:
        while (1)
        {
          v85 = *(v81 + 24);
          v86 = *(v81 + 32);
          if (v85 != v86)
          {
            while (*v85 != v80)
            {
              if (++v85 == v86)
              {
                goto LABEL_170;
              }
            }

            if (v85 != v86)
            {
              break;
            }
          }

LABEL_170:
          v81 += 144;
          if (v81 == v82)
          {
            goto LABEL_165;
          }
        }
      }
    }

    if (v81 == v82 || !v81)
    {
      break;
    }

LABEL_196:
    if (v79 != v78)
    {
      v13 = *(&v211 + 1);
      if (v79 + 1 != v78)
      {
        v197 = v14;
        v199 = v8;
        v100 = v211;
        v101 = *(&v211 + 1) - v211;
        v102 = (*(&v211 + 1) - v211) >> 2;
        v11 = *(&v211 + 1);
        v103 = v211;
        v104 = v211;
        v203 = *(&v211 + 1) - v211;
        v205 = v102;
        do
        {
          v105 = (v104 + v101);
          if (v13 == v100)
          {
            goto LABEL_214;
          }

          v106 = *v79;
          v107 = v104;
          v108 = v205;
          do
          {
            v109 = v108 >> 1;
            v110 = &v107[v108 >> 1];
            v112 = *v110;
            v111 = v110 + 1;
            v108 += ~(v108 >> 1);
            if (v112 < v106)
            {
              v107 = v111;
            }

            else
            {
              v108 = v109;
            }
          }

          while (v108);
          if (v105 == v107 || (v105 = v107, v106 < *v107))
          {
LABEL_214:
            if (v11 >= v212)
            {
              v113 = ((v11 - v104) >> 2) + 1;
              if (v113 >> 62)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v114 = v212 - v104;
              if ((v212 - v104) >> 1 > v113)
              {
                v113 = v114 >> 1;
              }

              v115 = v114 >= 0x7FFFFFFFFFFFFFFCLL;
              v116 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v115)
              {
                v116 = v113;
              }

              if (v116)
              {
                if (!(v116 >> 62))
                {
                  operator new();
                }

                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              goto LABEL_349;
            }

            if (!v11)
            {
              goto LABEL_349;
            }

            *v11 = *v79;
            v11 += 4;
            *(&v211 + 1) = v11;
            if (v105 - v103 < v102)
            {
              v102 = v105 - v103;
            }

            v104 = v103;
          }

          ++v79;
        }

        while (v79 != v78);
        v117 = (v103 + v101);
        v118 = v11 - (v103 + v101);
        v119 = v118 >> 2;
        if (v118 >> 2 < 129)
        {
          v122 = 0;
LABEL_233:
          std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v117, v11, v119, 0, v122, v118);
          if (v117 != v11)
          {
LABEL_244:
            v128 = v117 + 1;
            while (v128 != v11)
            {
              v130 = *(v128 - 1);
              v129 = *v128++;
              if (v130 >= v129)
              {
                v131 = v128 - 2;
                if (v128 - 2 == v11)
                {
                  break;
                }

                while (v128 != v11)
                {
                  v142 = *v128;
                  if (v130 < *v128)
                  {
                    v131[1] = v142;
                    ++v131;
                    v130 = v142;
                  }

                  ++v128;
                }

                v143 = v131 + 1;
                if ((v131 + 1) <= v11)
                {
                  v133 = *(&v211 + 1);
                  v132 = v211;
                  if (v143 != v11)
                  {
                    v144 = v11;
                    v145 = *(&v211 + 1) - v11;
                    if (v145)
                    {
                      memmove(v131 + 1, v144, v145);
                      v132 = v211;
                    }

                    v133 = v143 + v145;
                    *(&v211 + 1) = v143 + v145;
                  }

                  goto LABEL_249;
                }

                goto LABEL_349;
              }
            }
          }
        }

        else
        {
          v120 = v118 >> 2;
          while (1)
          {
            v121 = operator new(4 * v120, MEMORY[0x277D826F0]);
            if (v121)
            {
              break;
            }

            v122 = v120 >> 1;
            v18 = v120 > 1;
            v120 >>= 1;
            if (!v18)
            {
              goto LABEL_233;
            }
          }

          v13 = v121;
          std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>(v117, v11, v119, v121, v120, v118);
          operator delete(v13);
          if (v117 != v11)
          {
            goto LABEL_244;
          }
        }

        v133 = *(&v211 + 1);
        v132 = v211;
LABEL_249:
        v134 = 4 * v102;
        v135 = (v203 + v132);
        v11 = (v203 - v134) >> 2;
        v136 = &v133[-v203 - v132];
        v137 = v136 >> 2;
        if (v136 >> 2 >= v11)
        {
          v138 = (v203 - v134) >> 2;
        }

        else
        {
          v138 = v136 >> 2;
        }

        if (v138 < 1)
        {
          v141 = v138;
          v9 = v194;
LABEL_262:
          std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>((v134 + v132), v135, v133, v11, v137, 0, v141);
        }

        else
        {
          v9 = v194;
          v139 = MEMORY[0x277D826F0];
          while (1)
          {
            v140 = operator new(4 * v138, v139);
            if (v140)
            {
              break;
            }

            v141 = v138 >> 1;
            v18 = v138 > 1;
            v138 >>= 1;
            if (!v18)
            {
              goto LABEL_262;
            }
          }

          v13 = v140;
          std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<unsigned int,std::identity,std::less<void>,std::vector<unsigned int>>::value_compare &,std::__wrap_iter<unsigned int *>>((v134 + v132), v135, v133, v11, v137, v140, v138);
          operator delete(v13);
        }

        v4 = a2;
        v5 = a1;
        v16 = v195;
        v14 = v197;
        v8 = v199;
        goto LABEL_157;
      }

      v98 = v211;
      if (v211 == *(&v211 + 1) || (v99 = *v79, *(*(&v211 + 1) - 4) < *v79))
      {
        v98 = *(&v211 + 1);
      }

      else
      {
        v123 = (*(&v211 + 1) - v211) >> 2;
        do
        {
          v124 = v123 >> 1;
          v125 = &v98[4 * (v123 >> 1)];
          v127 = *v125;
          v126 = v125 + 4;
          v123 += ~(v123 >> 1);
          if (v127 < v99)
          {
            v98 = v126;
          }

          else
          {
            v123 = v124;
          }
        }

        while (v123);
        if (*(&v211 + 1) != v98 && v99 >= *v98)
        {
          goto LABEL_157;
        }
      }

      std::vector<unsigned int>::emplace<unsigned int const&>(&v211, v98, v79);
    }

LABEL_157:
    v8 += 144;
    if (v8 == v9)
    {
      v69 = v211;
      v146 = *(&v211 + 1);
      goto LABEL_270;
    }
  }

LABEL_165:
  v83 = (*(*v5 + 64))(v5);
  if ((*(*v83 + 40))(v83, v8))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v84 = *(v8 + 24);
      if (v84 == *(v8 + 32))
      {
        *(&__p.__r_.__value_.__s + 23) = 10;
        if (v192)
        {
          goto LABEL_349;
        }

        strcpy(&__p, "unsignaled");
      }

      else
      {
        std::to_string(&__p, *v84);
      }

      v87 = (*(*v5 + 96))(v5);
      if (*(v87 + 23) >= 0)
      {
        v11 = v87;
      }

      else
      {
        v11 = *v87;
      }

      v88 = (*(**(v5 + 24) + 32))(*(v5 + 24));
      switch(v88)
      {
        case 2:
          HIBYTE(v215) = 4;
          if (v190)
          {
            goto LABEL_349;
          }

          LODWORD(v214) = 1635017060;
          v90 = (&v214 + 4);
          break;
        case 1:
          HIBYTE(v215) = 5;
          if (v189)
          {
            goto LABEL_349;
          }

          v89 = "video";
LABEL_187:
          LODWORD(v214) = *v89;
          BYTE4(v214) = v89[4];
          v90 = (&v214 + 5);
          break;
        case 0:
          HIBYTE(v215) = 5;
          if (v188)
          {
            goto LABEL_349;
          }

          v89 = "audio";
          goto LABEL_187;
        default:
          HIBYTE(v215) = 0;
          v90 = &v214;
          break;
      }

      *v90 = 0;
      webrtc::StringFormat("{mid: %s, media_type: %s}", v208, v11, &v214, v180, v181, v182, p_p);
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v214);
      }

      v14 = v14 & 0xFFFFFFFF00000000 | 0x17F1;
      p_p = v208;
      v181 = &__p;
      v182 = " to ";
      v179 = v14;
      v180 = "Add remote ssrc: ";
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v91, v92, v93, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
      if (v209 < 0)
      {
        operator delete(v208[0]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_195;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_195;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_195:
    v79 = *(v8 + 24);
    v78 = *(v8 + 32);
    goto LABEL_196;
  }

  v160 = *(v8 + 24);
  v13 = a3;
  if (v160 == *(v8 + 32))
  {
    v169 = (*(*v5 + 96))(v5);
    if (*(v169 + 23) >= 0)
    {
      v11 = v169;
    }

    else
    {
      v11 = *v169;
    }

    v170 = (*(**(v5 + 24) + 32))(*(v5 + 24));
    if (v170 == 2)
    {
      HIBYTE(v215) = 4;
      v171 = (&v214 + 4);
      if (&v214 <= "data" && &v214 + 4 > "data")
      {
        goto LABEL_349;
      }

      LODWORD(v214) = 1635017060;
      goto LABEL_351;
    }

    if (v170 == 1)
    {
      HIBYTE(v215) = 5;
      v171 = (&v214 + 5);
      v172 = "video";
      if (&v214 > "video")
      {
LABEL_345:
        LODWORD(v214) = *v172;
        BYTE4(v214) = v172[4];
        goto LABEL_351;
      }
    }

    else
    {
      if (v170)
      {
        goto LABEL_350;
      }

      HIBYTE(v215) = 5;
      v171 = (&v214 + 5);
      v172 = "audio";
      if (&v214 > "audio")
      {
        goto LABEL_345;
      }
    }

    if (&v214 + 5 > v172)
    {
      goto LABEL_349;
    }

    goto LABEL_345;
  }

  v11 = &__p;
  std::to_string(&__p, *v160);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  v161 = (*(*v5 + 96))(v5);
  v162 = v5;
  if (*(v161 + 23) >= 0)
  {
    v163 = v161;
  }

  else
  {
    v163 = *v161;
  }

  v164 = (*(**(v162 + 24) + 32))(*(v162 + 24));
  switch(v164)
  {
    case 2:
      HIBYTE(v215) = 4;
      v165 = (&v214 + 4);
      if (&v214 <= "data" && &v214 + 4 > "data")
      {
        goto LABEL_349;
      }

      LODWORD(v214) = 1635017060;
      break;
    case 1:
      HIBYTE(v215) = 5;
      v165 = (&v214 + 5);
      v166 = "video";
      if (&v214 > "video")
      {
        goto LABEL_327;
      }

      goto LABEL_326;
    case 0:
      HIBYTE(v215) = 5;
      v165 = (&v214 + 5);
      v166 = "audio";
      if (&v214 > "audio")
      {
LABEL_327:
        LODWORD(v214) = *v166;
        BYTE4(v214) = v166[4];
        break;
      }

LABEL_326:
      if (&v214 + 5 <= v166)
      {
        goto LABEL_327;
      }

LABEL_349:
      __break(1u);
LABEL_350:
      HIBYTE(v215) = 0;
      v171 = &v214;
LABEL_351:
      *v171 = 0;
      webrtc::StringFormat("{mid: %s, media_type: %s}", v208, v11, &v214, v180, v181, v182, p_p);
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v214);
      }

      if (v209 >= 0)
      {
        v177 = v208;
      }

      else
      {
        v177 = v208[0];
      }

      webrtc::StringFormat("Failed to add remote stream ssrc: %s to %s", &v214, "unsignaled", v177);
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = v214;
      v13[2] = v215;
      HIBYTE(v215) = 0;
      LOBYTE(v214) = 0;
      if (v209 < 0)
      {
        v176 = v208[0];
LABEL_360:
        operator delete(v176);
      }

      goto LABEL_361;
    default:
      HIBYTE(v215) = 0;
      v165 = &v214;
      break;
  }

  *v165 = 0;
  webrtc::StringFormat("{mid: %s, media_type: %s}", v208, v163, &v214, v180, v181, v182, p_p);
  if (SHIBYTE(v215) < 0)
  {
    operator delete(v214);
  }

  if (v209 >= 0)
  {
    v175 = v208;
  }

  else
  {
    v175 = v208[0];
  }

  webrtc::StringFormat("Failed to add remote stream ssrc: %s to %s", &v214, v11, v175);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v214;
  *(a3 + 16) = v215;
  HIBYTE(v215) = 0;
  LOBYTE(v214) = 0;
  if (v209 < 0)
  {
    operator delete(v208[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v176 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_360;
  }

LABEL_361:
  v156 = 0;
  v157 = v211;
  if (v211)
  {
LABEL_362:
    *(&v211 + 1) = v157;
    operator delete(v157);
  }

  return v156;
}

uint64_t webrtc::BaseChannel::MaybeAddHandledPayloadType(webrtc::BaseChannel *this, unsigned __int8 a2)
{
  if (*(this + 202))
  {
    v2 = a2;
    v21 = a2;
    v3 = *(this + 48);
    v4 = *(this + 49);
    v5 = v4 - v3;
    if (v4 != v3)
    {
      do
      {
        v6 = v5 >> 1;
        v7 = &v3[v5 >> 1];
        v9 = *v7;
        v8 = v7 + 1;
        v5 += ~(v5 >> 1);
        if (v9 < v2)
        {
          v3 = v8;
        }

        else
        {
          v5 = v6;
        }
      }

      while (v5);
    }

    if (v4 == v3 || *v3 > v2)
    {
      v10 = this;
      std::vector<unsigned char>::emplace<unsigned char>(this + 48, v3, &v21);
      this = v10;
      v11 = 1;
      v20 = v2;
      v12 = *(this + 33);
      v13 = *(this + 34);
      v14 = v13 - v12;
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      v20 = v2;
      v12 = *(this + 33);
      v13 = *(this + 34);
      v14 = v13 - v12;
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = 0;
    v2 = a2;
    v20 = a2;
    v12 = *(this + 33);
    v13 = *(this + 34);
    v14 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v15 = v14 >> 1;
    v16 = &v12[v14 >> 1];
    v18 = *v16;
    v17 = v16 + 1;
    v14 += ~(v14 >> 1);
    if (v18 < v2)
    {
      v12 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
LABEL_16:
  if (v13 == v12 || *v12 > v2)
  {
    std::vector<unsigned char>::emplace<unsigned char>(this + 33, v12, &v20);
  }

  return v11;
}

void webrtc::VoiceChannel::VoiceChannel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *a5;
  *a5 = 0;
  v11 = *a6;
  *a6 = 0;
  v13 = *(a10 + 8);
  v12 = *(a10 + 16);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a1 = &unk_288290840;
  a1[1] = &unk_288290938;
  a1[2] = &unk_288290970;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  operator new();
}

void webrtc::VoiceChannel::~VoiceChannel(webrtc::VoiceChannel *this)
{
  *this = &unk_288290998;
  *(this + 1) = &unk_288290A90;
  *(this + 2) = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 592));
  *(this + 52) = &unk_288295F10;
  if (*(this + 576) == 1 && *(this + 575) < 0)
  {
    operator delete(*(this + 69));
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 416));
    v2 = this;
  }

  else
  {
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 416));
    v2 = this;
  }

  webrtc::BaseChannel::~BaseChannel(v2);
}

{
  *this = &unk_288290998;
  *(this + 1) = &unk_288290A90;
  *(this + 2) = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 592));
  v2 = (this + 416);
  *(this + 52) = &unk_288295F10;
  if (*(this + 576) == 1 && *(this + 575) < 0)
  {
    operator delete(*(this + 69));
    v2 = (this + 416);
  }

  webrtc::MediaChannelParameters::~MediaChannelParameters(v2);
  webrtc::BaseChannel::~BaseChannel(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::VoiceChannel::~VoiceChannel(webrtc::VoiceChannel *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_288290998;
  *this = &unk_288290A90;
  *(this + 1) = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this - 8);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 584));
  *(this + 51) = &unk_288295F10;
  if (*(this + 568) == 1 && *(this + 567) < 0)
  {
    operator delete(*(this + 68));
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 408));
    v3 = v2;
  }

  else
  {
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 408));
    v3 = v2;
  }

  webrtc::BaseChannel::~BaseChannel(v3);
}

{
  v2 = (this - 16);
  *(this - 2) = &unk_288290998;
  *(this - 1) = &unk_288290A90;
  *this = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this - 16);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 576));
  *(this + 50) = &unk_288295F10;
  if (*(this + 560) == 1 && *(this + 559) < 0)
  {
    operator delete(*(this + 67));
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 400));
    v3 = v2;
  }

  else
  {
    webrtc::MediaChannelParameters::~MediaChannelParameters((this + 400));
    v3 = v2;
  }

  webrtc::BaseChannel::~BaseChannel(v3);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_288290998;
  *this = &unk_288290A90;
  *(this + 1) = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this - 8);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 584));
  v3 = (this + 408);
  *(this + 51) = &unk_288295F10;
  if (*(this + 568) == 1 && *(this + 567) < 0)
  {
    operator delete(*(this + 68));
    v3 = (this + 408);
  }

  webrtc::MediaChannelParameters::~MediaChannelParameters(v3);
  webrtc::BaseChannel::~BaseChannel(v2);

  JUMPOUT(0x2743DA540);
}

{
  v2 = (this - 16);
  *(this - 2) = &unk_288290998;
  *(this - 1) = &unk_288290A90;
  *this = &unk_288290AC8;
  webrtc::BaseChannel::DisableMedia_w(this - 16);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 576));
  v3 = (this + 400);
  *(this + 50) = &unk_288295F10;
  if (*(this + 560) == 1 && *(this + 559) < 0)
  {
    operator delete(*(this + 67));
    v3 = (this + 400);
  }

  webrtc::MediaChannelParameters::~MediaChannelParameters(v3);
  webrtc::BaseChannel::~BaseChannel(v2);

  JUMPOUT(0x2743DA540);
}

void webrtc::VoiceChannel::UpdateMediaSendRecvState_w(webrtc::VoiceChannel *this)
{
  v2 = *(this + 200) == 1 && (*(this + 64) & 0xFFFFFFFD) == 0;
  v3 = (*(*this + 64))(this);
  (*(*v3 + 176))(v3, v2);
  if (*(this + 200) != 1 || (*(this + 65) & 0xFFFFFFFD) != 0 || *(this + 64) > 1u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 194);
  }

  v5 = (*(*this + 40))(this);
  (*(*v5 + 192))(v5, v4 & 1);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v21[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc";
    v21[1] = 7033;
    v21[2] = &v20;
    v21[3] = "Changing voice state, recv=";
    v22 = v21;
    v6 = (*(*this + 96))(this);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    v8 = (*(**(this + 3) + 32))(*(this + 3));
    if (v8 == 2)
    {
      v24 = 4;
      v9 = (v23 + 4);
      if (v23 > "data" || v23 + 4 <= "data")
      {
        LODWORD(v23[0]) = 1635017060;
        goto LABEL_25;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v24 = 5;
        v9 = (v23 + 5);
        v10 = "video";
        if (v23 > "video")
        {
LABEL_20:
          LODWORD(v23[0]) = *v10;
          BYTE4(v23[0]) = v10[4];
LABEL_25:
          *v9 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v7, v23);
          if (v24 < 0)
          {
            operator delete(v23[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, *v22);
          if (v19 < 0)
          {
            operator delete(__p);
          }

          return;
        }
      }

      else
      {
        if (v8)
        {
          v24 = 0;
          v9 = v23;
          goto LABEL_25;
        }

        v24 = 5;
        v9 = (v23 + 5);
        v10 = "audio";
        if (v23 > "audio")
        {
          goto LABEL_20;
        }
      }

      if (v23 + 5 <= v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }
}

uint64_t webrtc::VoiceChannel::SetLocalContent_w(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  webrtc::RtpExtension::DeduplicateHeaderExtensions((a2 + 64), a1[49], &v45);
  v7 = (*(*a1 + 40))(a1);
  (*(*v7 + 104))(v7, *(a2 + 200) != 0);
  v8 = (a1 + 148);
  webrtc::MediaChannelParameters::MediaChannelParameters(&v38, (a1 + 148));
  v38 = &unk_288290C48;
  v44[0] = (*(a2 + 124) & 0xFFFFFFFD) == 0;
  if (&v40 != (a2 + 280))
  {
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v40, *(a2 + 280), *(a2 + 288), 0x84BDA12F684BDA13 * ((*(a2 + 288) - *(a2 + 280)) >> 3));
  }

  if (*(a2 + 88) == 1)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(&v42, v45, *(&v45 + 1), (*(&v45 + 1) - v45) >> 5);
  }

  *&v44[1] = *(a2 + 33);
  v9 = (*(*a1 + 96))(a1);
  if (&v39 != v9)
  {
    v10 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v10 >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = v9->__r_.__value_.__r.__words[0];
      }

      if (v10 >= 0)
      {
        size = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v9->__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v39, v12, size);
    }

    else if ((*(&v9->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&v39, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = *&v9->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v11;
    }
  }

  v14 = (*(*a1 + 64))(a1);
  if ((*(*v14 + 144))(v14, &v38))
  {
    if ((*(a2 + 124) & 0xFFFFFFFD) != 0 || (v20 = *(a2 + 280), v21 = *(a2 + 288), v20 == v21))
    {
      LOBYTE(v15) = 0;
      if (v8 == &v38)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = 0;
      do
      {
        v15 |= webrtc::BaseChannel::MaybeAddHandledPayloadType(a1, *(v20 + 12));
        v20 += 216;
      }

      while (v20 != v21);
      if (v8 == &v38)
      {
        goto LABEL_44;
      }
    }

    v22 = (a1 + 150);
    if (*(a1 + 623) < 0)
    {
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v39;
      }

      else
      {
        v23 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v39.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(v22, v23, v24);
    }

    else if ((*(&v39.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v22, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v22->__r_.__value_.__l.__data_ = *&v39.__r_.__value_.__l.__data_;
      *(a1 + 77) = *(&v39.__r_.__value_.__l + 2);
    }

    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(a1 + 78, v40, v41, 0x84BDA12F684BDA13 * ((v41 - v40) >> 3));
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(a1 + 81, v42, v43, (v43 - v42) >> 5);
LABEL_44:
    *(a1 + 336) = *v44;
    *(a1 + 674) = v44[2];
    if (webrtc::BaseChannel::UpdateLocalStreams_w(a1, (a2 + 96), a4))
    {
      a1[64] = *(a2 + 124);
      (*(*a1 + 208))(a1);
      *__p = v45;
      v34 = v46;
      v46 = 0;
      v45 = 0uLL;
      v35 = 1;
      updated = webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(a1, v15 & 1, __p, a4);
      if (v35 == 1)
      {
        v25 = __p[0];
        if (__p[0])
        {
          v26 = __p[1];
          v27 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v28 = *(v26 - 9);
              v26 -= 4;
              if (v28 < 0)
              {
                operator delete(*v26);
              }
            }

            while (v26 != v25);
            v27 = __p[0];
          }

          __p[1] = v25;
          operator delete(v27);
          webrtc::MediaChannelParameters::~MediaChannelParameters(&v38);
          v19 = v45;
          if (!v45)
          {
            return updated;
          }

LABEL_54:
          v29 = *(&v45 + 1);
          v30 = v19;
          if (*(&v45 + 1) != v19)
          {
            do
            {
              v31 = *(v29 - 9);
              v29 -= 4;
              if (v31 < 0)
              {
                operator delete(*v29);
              }
            }

            while (v29 != v19);
            v30 = v45;
          }

          *(&v45 + 1) = v19;
          operator delete(v30);
          return updated;
        }
      }
    }

    else
    {
      updated = 0;
    }

    webrtc::MediaChannelParameters::~MediaChannelParameters(&v38);
    v19 = v45;
    if (!v45)
    {
      return updated;
    }

    goto LABEL_54;
  }

  v16 = (*(*a1 + 96))(a1);
  if (*(v16 + 23) >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = *v16;
  }

  webrtc::StringFormat("Failed to set local audio description recv parameters for m-section with mid='%s'.", &v36, v17);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  updated = 0;
  *a4 = v36;
  *(a4 + 16) = v37;
  webrtc::MediaChannelParameters::~MediaChannelParameters(&v38);
  v19 = v45;
  if (v45)
  {
    goto LABEL_54;
  }

  return updated;
}

uint64_t webrtc::VoiceChannel::SetRemoteContent_w(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_26;
  }

  v7 = (*(*a1 + 96))(a1);
  if (*(v7 + 23) >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  result = (*(**(a1 + 24) + 32))(*(a1 + 24));
  if (result == 2)
  {
    v47.__r_.__value_.__s.__data_[15] = 4;
    p_p = (&__p + 4);
    if (&__p <= "data" && &__p + 4 > "data")
    {
      goto LABEL_71;
    }

    LODWORD(__p) = 1635017060;
    goto LABEL_22;
  }

  if (result == 1)
  {
    v47.__r_.__value_.__s.__data_[15] = 5;
    p_p = (&__p + 5);
    v11 = "video";
    if (&__p <= "video" && &__p + 5 > "video")
    {
      goto LABEL_71;
    }

    goto LABEL_15;
  }

  if (result)
  {
    v47.__r_.__value_.__s.__data_[15] = 0;
    p_p = &__p;
    goto LABEL_22;
  }

  v47.__r_.__value_.__s.__data_[15] = 5;
  p_p = (&__p + 5);
  v11 = "audio";
  if (&__p > "audio" || &__p + 5 <= "audio")
  {
LABEL_15:
    LODWORD(__p) = *v11;
    BYTE4(__p) = v11[4];
LABEL_22:
    *p_p = 0;
    webrtc::StringFormat("{mid: %s, media_type: %s}", &v62, v8, &__p);
    if (v47.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }

    v44 = "Setting remote voice description for ";
    v45 = &v62;
    v43 = 7593;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

LABEL_26:
    webrtc::MediaChannelParameters::MediaChannelParameters(&__p, (a1 + 416));
    v54 = *(a1 + 500);
    v55 = *(a1 + 504);
    __p = &unk_288295F10;
    v21 = *(a1 + 528);
    v56 = *(a1 + 512);
    v57 = v21;
    v58 = *(a1 + 544);
    v59.__r_.__value_.__s.__data_[0] = 0;
    v60 = 0;
    if (*(a1 + 576) == 1)
    {
      if (*(a1 + 575) < 0)
      {
        std::string::__init_copy_ctor_external(&v59, *(a1 + 552), *(a1 + 560));
      }

      else
      {
        v59 = *(a1 + 552);
      }

      v60 = 1;
    }

    v61 = *(a1 + 584);
    webrtc::RtpSendParametersFromMediaDescription(a2, *(a1 + 196), &__p);
    v22 = (*(*a1 + 96))(a1);
    if (&v47 != v22)
    {
      v23 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v23 >= 0)
        {
          v25 = v22;
        }

        else
        {
          v25 = v22->__r_.__value_.__r.__words[0];
        }

        if (v23 >= 0)
        {
          size = HIBYTE(v22->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22->__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(&v47, v25, size);
      }

      else if ((*(&v22->__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&v47, v22->__r_.__value_.__l.__data_, v22->__r_.__value_.__l.__size_);
      }

      else
      {
        v24 = *&v22->__r_.__value_.__l.__data_;
        v47.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v47.__r_.__value_.__l.__data_ = v24;
      }
    }

    v27 = (*(*a1 + 40))(a1);
    if ((*(*v27 + 184))(v27, &__p))
    {
      v28 = (*(*a1 + 64))(a1);
      if (*(a2 + 33))
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      (*(*v28 + 232))(v28, v29);
      v30 = (*(*a1 + 64))(a1);
      v31 = (*(*a1 + 40))(a1);
      v32 = (*(*v31 + 232))(v31);
      (*(*v30 + 240))(v30, v32);
      v33 = (*(*a1 + 64))(a1);
      v34 = (*(*a1 + 40))(a1);
      v35 = (*(*v34 + 240))(v34);
      (*(*v33 + 248))(v33, v35);
      if ((a1 + 416) != &__p)
      {
        v36 = (a1 + 424);
        if (*(a1 + 447) < 0)
        {
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v47;
          }

          else
          {
            v40 = v47.__r_.__value_.__r.__words[0];
          }

          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v41 = v47.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v36, v40, v41);
        }

        else if ((*(&v47.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v36, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v36->__r_.__value_.__l.__data_ = *&v47.__r_.__value_.__l.__data_;
          *(a1 + 440) = *(&v47.__r_.__value_.__l + 2);
        }

        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 448), v48, v49, 0x84BDA12F684BDA13 * ((v49 - v48) >> 3));
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 472), v50, v51, (v51 - v50) >> 5);
      }

      *(a1 + 496) = v52;
      *(a1 + 498) = v53;
      *(a1 + 500) = v54;
      *(a1 + 504) = v55;
      v42 = v57;
      *(a1 + 512) = v56;
      *(a1 + 528) = v42;
      *(a1 + 544) = v58;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 552, &v59);
      *(a1 + 584) = v61;
      updated = webrtc::BaseChannel::UpdateRemoteStreams_w(a1, a2, a4);
      __p = &unk_288295F10;
      if (v60 != 1)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v37 = (*(*a1 + 96))(a1);
      if (*(v37 + 23) >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = *v37;
      }

      webrtc::StringFormat("Failed to set remote audio description send parameters for m-section with mid='%s'.", &v62, v38, v43, v44, v45, __p);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      updated = 0;
      *a4 = v62;
      *(a4 + 16) = v63;
      __p = &unk_288295F10;
      if (v60 != 1)
      {
        goto LABEL_70;
      }
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

LABEL_70:
    webrtc::MediaChannelParameters::~MediaChannelParameters(&__p);
    return updated;
  }

LABEL_71:
  __break(1u);
  return result;
}

void webrtc::VideoChannel::VideoChannel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *a5;
  *a5 = 0;
  v11 = *a6;
  *a6 = 0;
  v13 = *(a10 + 8);
  v12 = *(a10 + 16);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a1 = &unk_288290840;
  a1[1] = &unk_288290938;
  a1[2] = &unk_288290970;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  operator new();
}

void webrtc::VideoChannel::~VideoChannel(webrtc::VideoChannel *this)
{
  *this = &unk_288290AF0;
  *(this + 1) = &unk_288290BE8;
  *(this + 2) = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 512));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 416));

  webrtc::BaseChannel::~BaseChannel(this);
}

{
  *this = &unk_288290AF0;
  *(this + 1) = &unk_288290BE8;
  *(this + 2) = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 512));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 416));
  webrtc::BaseChannel::~BaseChannel(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::VideoChannel::~VideoChannel(webrtc::VideoChannel *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_288290AF0;
  *this = &unk_288290BE8;
  *(this + 1) = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this - 8);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 504));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 408));

  webrtc::BaseChannel::~BaseChannel(v2);
}

{
  v2 = (this - 16);
  *(this - 2) = &unk_288290AF0;
  *(this - 1) = &unk_288290BE8;
  *this = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this - 16);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 496));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 400));

  webrtc::BaseChannel::~BaseChannel(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_288290AF0;
  *this = &unk_288290BE8;
  *(this + 1) = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this - 8);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 504));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 408));
  webrtc::BaseChannel::~BaseChannel(v2);

  JUMPOUT(0x2743DA540);
}

{
  v2 = (this - 16);
  *(this - 2) = &unk_288290AF0;
  *(this - 1) = &unk_288290BE8;
  *this = &unk_288290C20;
  webrtc::BaseChannel::DisableMedia_w(this - 16);
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 496));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 400));
  webrtc::BaseChannel::~BaseChannel(v2);

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoChannel::UpdateMediaSendRecvState_w(webrtc::VideoChannel *this)
{
  v2 = *(this + 200) == 1 && (*(this + 64) & 0xFFFFFFFD) == 0;
  v3 = (*(*this + 64))(this);
  (*(*v3 + 160))(v3, v2);
  if (*(this + 200) != 1 || (*(this + 65) & 0xFFFFFFFD) != 0 || *(this + 64) > 1u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 194);
  }

  v5 = (*(*this + 40))(this);
  (*(*v5 + 192))(v5, v4 & 1);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v21[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc";
    v21[1] = 8217;
    v21[2] = &v20;
    v21[3] = "Changing video state, recv=";
    v22 = v21;
    v6 = (*(*this + 96))(this);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    v8 = (*(**(this + 3) + 32))(*(this + 3));
    if (v8 == 2)
    {
      v24 = 4;
      v9 = (v23 + 4);
      if (v23 > "data" || v23 + 4 <= "data")
      {
        LODWORD(v23[0]) = 1635017060;
        goto LABEL_25;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v24 = 5;
        v9 = (v23 + 5);
        v10 = "video";
        if (v23 > "video")
        {
LABEL_20:
          LODWORD(v23[0]) = *v10;
          BYTE4(v23[0]) = v10[4];
LABEL_25:
          *v9 = 0;
          webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v7, v23);
          if (v24 < 0)
          {
            operator delete(v23[0]);
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, *v22);
          if (v19 < 0)
          {
            operator delete(__p);
          }

          return;
        }
      }

      else
      {
        if (v8)
        {
          v24 = 0;
          v9 = v23;
          goto LABEL_25;
        }

        v24 = 5;
        v9 = (v23 + 5);
        v10 = "audio";
        if (v23 > "audio")
        {
          goto LABEL_20;
        }
      }

      if (v23 + 5 <= v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }
}

uint64_t webrtc::VideoChannel::SetLocalContent_w(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  webrtc::RtpExtension::DeduplicateHeaderExtensions((a2 + 64), *(a1 + 196), &v102);
  v8 = (*(*a1 + 40))(a1);
  (*(*v8 + 104))(v8, *(v6 + 200) != 0);
  v70 = (a1 + 512);
  webrtc::MediaChannelParameters::MediaChannelParameters(&v94, (a1 + 512));
  v94 = &unk_288290C70;
  v101[0] = (*(v6 + 124) & 0xFFFFFFFD) == 0;
  if (&v97 != (v6 + 280))
  {
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v97, *(v6 + 280), *(v6 + 288), 0x84BDA12F684BDA13 * ((*(v6 + 288) - *(v6 + 280)) >> 3));
  }

  if (*(v6 + 88) == 1)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(&v99, v102, *(&v102 + 1), (*(&v102 + 1) - v102) >> 5);
  }

  *&v101[1] = *(v6 + 33);
  webrtc::MediaChannelParameters::MediaChannelParameters(&v83, (a1 + 416));
  v92 = *(a1 + 500);
  v93 = *(a1 + 504);
  v83 = &unk_288295F38;
  v72 = a4;
  if ((a3 - 1) > 1 || (__p[0] = 0, __p[1] = 0, v82 = 0, v11 = v86, v10 = v87, v86 == v87))
  {
    v42 = 0;
    goto LABEL_79;
  }

  v69 = v6;
  v71 = 0;
  v73 = v87;
  do
  {
    v12 = __p[1];
    v13 = __p[0];
    v14 = __p[0];
    if (__p[0] != __p[1])
    {
      do
      {
        webrtc::MatchesWithCodecRules(v11, *v14, v9);
        if (v15)
        {
          goto LABEL_8;
        }

        ++v14;
      }

      while (v14 != v12);
    }

    webrtc::FindAllMatchingCodecs(&v97, v11, &v79);
    v17 = v79;
    v16 = v80;
    if (v79 == v80)
    {
      v32 = 7;
      if (!v79)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v18 = *(v11 + 80);
      if ((v18 & 1) == 0)
      {
        while (1)
        {
          v30 = *(*v17 + 80);
          if (v30 == v18 && v30 == 0)
          {
            break;
          }

          v17 += 8;
          if (v17 == v80)
          {
LABEL_47:
            v33 = *(v11 + 3);
            v34 = (*(*a1 + 96))(a1);
            if (*(v34 + 23) >= 0)
            {
              v35 = v34;
            }

            else
            {
              v35 = *v34;
            }

            webrtc::StringFormat("Failed to set local answer due to incompatible codec packetization for pt='%d' specified in m-section with mid='%s'.", &v77, v33, v35);
            if (*(v72 + 23) < 0)
            {
              operator delete(*v72);
            }

            *v72 = v77;
            *(v72 + 16) = v78;
            v32 = 1;
            v10 = v73;
            goto LABEL_69;
          }
        }

LABEL_57:
        *&v77 = v11;
        if (v13 != v12)
        {
          v36 = (v12 - v13) >> 3;
          v10 = v73;
          do
          {
            v37 = v36 >> 1;
            v38 = &v13[8 * (v36 >> 1)];
            v40 = *v38;
            v39 = v38 + 8;
            v36 += ~(v36 >> 1);
            if (v40 < v11)
            {
              v13 = v39;
            }

            else
            {
              v36 = v37;
            }
          }

          while (v36);
          if (v12 == v13 || v11 < *v13)
          {
LABEL_67:
            std::vector<webrtc::Codec const*>::emplace<webrtc::Codec const*>(__p, v13, &v77);
          }

          v32 = 0;
          goto LABEL_69;
        }

        v13 = v12;
        v10 = v73;
        goto LABEL_67;
      }

      v19 = 0;
      v20 = (v11 + 56);
      do
      {
        while (1)
        {
          v21 = *v17;
          if (*(*v17 + 80) == 1)
          {
            break;
          }

          v17 += 8;
          v19 = 1;
          if (v17 == v16)
          {
            goto LABEL_44;
          }
        }

        v22 = *(v21 + 79);
        if (v22 >= 0)
        {
          v9 = *(v21 + 79);
        }

        else
        {
          v9 = *(v21 + 64);
        }

        v23 = *(v11 + 79);
        v24 = v23;
        if ((v23 & 0x80u) != 0)
        {
          v23 = *(v11 + 8);
        }

        if (v9 == v23)
        {
          v27 = *(v21 + 56);
          v25 = v21 + 56;
          v26 = v27;
          v28 = (v22 >= 0 ? v25 : v26);
          v29 = v24 >= 0 ? v11 + 56 : *v20;
          if (!memcmp(v28, v29, v9))
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_57;
            }

            v19 = 0;
            if ((*(v11 + 79) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_55;
          }
        }

        v17 += 8;
      }

      while (v17 != v16);
      if ((v19 & 1) == 0)
      {
        goto LABEL_47;
      }

      v71 = 1;
      if (!v18)
      {
        goto LABEL_56;
      }

      v19 = 1;
LABEL_44:
      if ((*(v11 + 79) & 0x80000000) == 0)
      {
LABEL_45:
        *(v11 + 80) = 0;
        v71 = 1;
        if ((v19 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(*v20);
      *(v11 + 80) = 0;
      v71 = 1;
      if ((v19 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_56:
      v32 = 0;
      v10 = v73;
LABEL_69:
      v17 = v79;
      if (!v79)
      {
        goto LABEL_71;
      }
    }

    v80 = v17;
    operator delete(v17);
LABEL_71:
    if (v32 != 7 && v32)
    {
      v41 = __p[0];
      if (__p[0])
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

LABEL_8:
    v11 = (v11 + 216);
  }

  while (v11 != v10);
  v32 = 6;
  v41 = __p[0];
  if (__p[0])
  {
LABEL_74:
    operator delete(v41);
  }

LABEL_75:
  v6 = v69;
  v42 = v71;
  if (v32 == 6)
  {
LABEL_79:
    v45 = (*(*a1 + 64))(a1);
    if (((*(*v45 + 144))(v45, &v94) & 1) == 0)
    {
      v52 = (*(*a1 + 96))(a1);
      if (*(v52 + 23) >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = *v52;
      }

      webrtc::StringFormat("Failed to set local video description recv parameters for m-section with mid='%s'.", __p, v53);
      v47 = v72;
      if (*(v72 + 23) < 0)
      {
LABEL_95:
        operator delete(*v47);
      }

LABEL_96:
      updated = 0;
      *v47 = *__p;
      *(v47 + 16) = v82;
      webrtc::MediaChannelParameters::~MediaChannelParameters(&v83);
      webrtc::MediaChannelParameters::~MediaChannelParameters(&v94);
      v44 = v102;
      if (!v102)
      {
        return updated;
      }

      goto LABEL_141;
    }

    if ((*(v6 + 124) & 0xFFFFFFFD) != 0 || (v54 = *(v6 + 280), v55 = *(v6 + 288), v54 == v55))
    {
      LOBYTE(v46) = 0;
      v47 = v72;
      if (v70 != &v94)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v46 = 0;
      do
      {
        v46 |= webrtc::BaseChannel::MaybeAddHandledPayloadType(a1, *(v54 + 12));
        v54 += 216;
      }

      while (v54 != v55);
      v47 = v72;
      if (v70 != &v94)
      {
LABEL_104:
        v56 = (a1 + 520);
        if (*(a1 + 543) < 0)
        {
          if (v96 >= 0)
          {
            v57 = &v95;
          }

          else
          {
            v57 = v95;
          }

          if (v96 >= 0)
          {
            v58 = HIBYTE(v96);
          }

          else
          {
            v58 = *(&v95 + 1);
          }

          std::string::__assign_no_alias<false>(v56, v57, v58);
        }

        else if (v96 < 0)
        {
          std::string::__assign_no_alias<true>(v56, v95, *(&v95 + 1));
        }

        else
        {
          *&v56->__r_.__value_.__l.__data_ = v95;
          *(a1 + 536) = v96;
        }

        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 544), v97, v98, 0x84BDA12F684BDA13 * ((v98 - v97) >> 3));
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 568), v99, v100, (v100 - v99) >> 5);
        *(a1 + 592) = *v101;
        *(a1 + 594) = v101[2];
        if (v42)
        {
LABEL_116:
          v59 = (*(*a1 + 40))(a1);
          if ((*(*v59 + 184))(v59, &v83))
          {
            if ((a1 + 416) != &v83)
            {
              v60 = (a1 + 424);
              if (*(a1 + 447) < 0)
              {
                if (v85 >= 0)
                {
                  v63 = &v84;
                }

                else
                {
                  v63 = v84;
                }

                if (v85 >= 0)
                {
                  v64 = HIBYTE(v85);
                }

                else
                {
                  v64 = *(&v84 + 1);
                }

                std::string::__assign_no_alias<false>(v60, v63, v64);
              }

              else if (v85 < 0)
              {
                std::string::__assign_no_alias<true>(v60, v84, *(&v84 + 1));
              }

              else
              {
                *&v60->__r_.__value_.__l.__data_ = v84;
                *(a1 + 440) = v85;
              }

              std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 448), v86, v87, 0x84BDA12F684BDA13 * ((v87 - v86) >> 3));
              std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 472), v88, v89, (v89 - v88) >> 5);
            }

            *(a1 + 496) = v90;
            *(a1 + 498) = v91;
            *(a1 + 500) = v92;
            *(a1 + 504) = v93;
            v47 = v72;
            if (!webrtc::BaseChannel::UpdateLocalStreams_w(a1, (v6 + 96), v72))
            {
              goto LABEL_139;
            }

            goto LABEL_84;
          }

          v61 = (*(*a1 + 96))(a1);
          if (*(v61 + 23) >= 0)
          {
            v62 = v61;
          }

          else
          {
            v62 = *v61;
          }

          webrtc::StringFormat("Failed to set send parameters for m-section with mid='%s'.", __p, v62);
          if (*(v47 + 23) < 0)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }

LABEL_83:
        if (!webrtc::BaseChannel::UpdateLocalStreams_w(a1, (v6 + 96), v47))
        {
LABEL_139:
          updated = 0;
          goto LABEL_140;
        }

LABEL_84:
        *(a1 + 256) = *(v6 + 124);
        (*(*a1 + 208))(a1);
        *v74 = v102;
        v75 = v103;
        v103 = 0;
        v102 = 0uLL;
        v76 = 1;
        updated = webrtc::BaseChannel::MaybeUpdateDemuxerAndRtpExtensions_w(a1, v46 & 1, v74, v47);
        if (v76 == 1)
        {
          v48 = v74[0];
          if (v74[0])
          {
            v49 = v74[1];
            v50 = v74[0];
            if (v74[1] != v74[0])
            {
              do
              {
                v51 = *(v49 - 9);
                v49 -= 4;
                if (v51 < 0)
                {
                  operator delete(*v49);
                }
              }

              while (v49 != v48);
              v50 = v74[0];
            }

            v74[1] = v48;
            operator delete(v50);
            webrtc::MediaChannelParameters::~MediaChannelParameters(&v83);
            webrtc::MediaChannelParameters::~MediaChannelParameters(&v94);
            v44 = v102;
            if (v102)
            {
              goto LABEL_141;
            }

            return updated;
          }
        }

LABEL_140:
        webrtc::MediaChannelParameters::~MediaChannelParameters(&v83);
        webrtc::MediaChannelParameters::~MediaChannelParameters(&v94);
        v44 = v102;
        if (v102)
        {
          goto LABEL_141;
        }

        return updated;
      }
    }

    *(a1 + 592) = *v101;
    *(a1 + 594) = v101[2];
    if (v42)
    {
      goto LABEL_116;
    }

    goto LABEL_83;
  }

  updated = 0;
  webrtc::MediaChannelParameters::~MediaChannelParameters(&v83);
  webrtc::MediaChannelParameters::~MediaChannelParameters(&v94);
  v44 = v102;
  if (!v102)
  {
    return updated;
  }

LABEL_141:
  v65 = *(&v102 + 1);
  v66 = v44;
  if (*(&v102 + 1) != v44)
  {
    do
    {
      v67 = *(v65 - 9);
      v65 -= 4;
      if (v67 < 0)
      {
        operator delete(*v65);
      }
    }

    while (v65 != v44);
    v66 = v102;
  }

  *(&v102 + 1) = v44;
  operator delete(v66);
  return updated;
}

uint64_t webrtc::VideoChannel::SetRemoteContent_w(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_26;
  }

  v7 = (*(*a1 + 96))(a1);
  if (*(v7 + 23) >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  result = (*(**(a1 + 24) + 32))(*(a1 + 24));
  if (result == 2)
  {
    v106.__r_.__value_.__s.__data_[15] = 4;
    v10 = (&v105 + 4);
    if (&v105 <= "data" && &v105 + 4 > "data")
    {
      goto LABEL_156;
    }

    LODWORD(v105) = 1635017060;
    goto LABEL_22;
  }

  if (result == 1)
  {
    v106.__r_.__value_.__s.__data_[15] = 5;
    v10 = (&v105 + 5);
    v11 = "video";
    if (&v105 <= "video" && &v105 + 5 > "video")
    {
      goto LABEL_156;
    }
  }

  else
  {
    if (result)
    {
      v106.__r_.__value_.__s.__data_[15] = 0;
      v10 = &v105;
      goto LABEL_22;
    }

    v106.__r_.__value_.__s.__data_[15] = 5;
    v10 = (&v105 + 5);
    v11 = "audio";
    if (&v105 <= "audio" && &v105 + 5 > "audio")
    {
LABEL_156:
      __break(1u);
      return result;
    }
  }

  LODWORD(v105) = *v11;
  BYTE4(v105) = v11[4];
LABEL_22:
  *v10 = 0;
  webrtc::StringFormat("{mid: %s, media_type: %s}", &__p, v8, &v105);
  if (v106.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v105);
  }

  v85 = "Setting remote video description for ";
  p_p = &__p;
  v84 = 9249;
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/channel.cc");
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  webrtc::MediaChannelParameters::MediaChannelParameters(&v105, (a1 + 416));
  v113 = *(a1 + 500);
  v114 = *(a1 + 504);
  v105 = &unk_288295F38;
  webrtc::RtpSendParametersFromMediaDescription(a2, *(a1 + 196), &v105);
  v21 = (*(*a1 + 96))(a1);
  if (&v106 != v21)
  {
    v22 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v22 >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = v21->__r_.__value_.__r.__words[0];
      }

      if (v22 >= 0)
      {
        size = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21->__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v106, v24, size);
    }

    else if ((*(&v21->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&v106, v21->__r_.__value_.__l.__data_, v21->__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = *&v21->__r_.__value_.__l.__data_;
      v106.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v106.__r_.__value_.__l.__data_ = v23;
    }
  }

  HIBYTE(v114) = *(a2 + 120);
  webrtc::MediaChannelParameters::MediaChannelParameters(&__p, (a1 + 512));
  __p = &unk_288290C70;
  if ((a3 - 1) > 1 || (v94[0] = 0, v94[1] = 0, v95 = 0, v27 = v99, v28 = v100, v99 == v100))
  {
    v88 = 0;
LABEL_107:
    v59 = (*(*a1 + 40))(a1);
    if ((*(*v59 + 184))(v59, &v105))
    {
      v60 = (*(*a1 + 64))(a1);
      v61 = (*(*a1 + 40))(a1);
      v62 = (*(*v61 + 240))(v61);
      v63 = (*(*a1 + 40))(a1);
      v64 = (*(*v63 + 160))(v63);
      v65 = (*(*a1 + 40))(a1);
      v66 = (*(*v65 + 232))(v65);
      v67 = (*(*a1 + 40))(a1);
      v68 = (*(*v67 + 248))(v67);
      (*(*v60 + 232))(v60, v62, v64, v66, v68 & 0xFFFFFFFFFFLL);
      if ((a1 + 416) != &v105)
      {
        v69 = (a1 + 424);
        if (*(a1 + 447) < 0)
        {
          if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &v106;
          }

          else
          {
            v76 = v106.__r_.__value_.__r.__words[0];
          }

          if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v77 = v106.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v69, v76, v77);
        }

        else if ((*(&v106.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v69, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v69->__r_.__value_.__l.__data_ = *&v106.__r_.__value_.__l.__data_;
          *(a1 + 440) = *(&v106.__r_.__value_.__l + 2);
        }

        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 448), v107, v108, 0x84BDA12F684BDA13 * ((v108 - v107) >> 3));
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 472), v109, v110, (v110 - v109) >> 5);
      }

      *(a1 + 496) = v111;
      *(a1 + 498) = v112;
      *(a1 + 500) = v113;
      *(a1 + 504) = v114;
      if ((v88 & 1) == 0)
      {
        goto LABEL_154;
      }

      v78 = (*(*a1 + 64))(a1);
      if ((*(*v78 + 144))(v78, &__p))
      {
        if ((a1 + 512) != &__p)
        {
          v79 = (a1 + 520);
          if (*(a1 + 543) < 0)
          {
            if (v98 >= 0)
            {
              v82 = &v97;
            }

            else
            {
              v82 = v97;
            }

            if (v98 >= 0)
            {
              v83 = HIBYTE(v98);
            }

            else
            {
              v83 = *(&v97 + 1);
            }

            std::string::__assign_no_alias<false>(v79, v82, v83);
          }

          else if (v98 < 0)
          {
            std::string::__assign_no_alias<true>(v79, v97, *(&v97 + 1));
          }

          else
          {
            *&v79->__r_.__value_.__l.__data_ = v97;
            *(a1 + 536) = v98;
          }

          std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 544), v99, v100, 0x84BDA12F684BDA13 * ((v100 - v99) >> 3));
          std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 568), v101, v102, (v102 - v101) >> 5);
        }

        *(a1 + 592) = v103;
        *(a1 + 594) = v104;
LABEL_154:
        updated = webrtc::BaseChannel::UpdateRemoteStreams_w(a1, a2, a4);
        goto LABEL_155;
      }

      v80 = (*(*a1 + 96))(a1);
      if (*(v80 + 23) >= 0)
      {
        v81 = v80;
      }

      else
      {
        v81 = *v80;
      }

      webrtc::StringFormat("Failed to set recv parameters for m-section with mid='%s'.", v94, v81, v84);
      v72 = a4;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
LABEL_117:
        updated = 0;
        *v72 = *v94;
        *(v72 + 16) = v95;
        goto LABEL_155;
      }
    }

    else
    {
      v70 = (*(*a1 + 96))(a1);
      if (*(v70 + 23) >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = *v70;
      }

      webrtc::StringFormat("Failed to set remote video description send parameters for m-section with mid='%s'.", v94, v71, v84);
      v72 = a4;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_117;
      }
    }

    operator delete(*v72);
    v72 = a4;
    goto LABEL_117;
  }

  v87 = a2;
  v88 = 0;
  do
  {
    v29 = v94[1];
    v30 = v94[0];
    v31 = v94[0];
    if (v94[0] != v94[1])
    {
      do
      {
        webrtc::MatchesWithCodecRules(v27, *v31, v26);
        if (v32)
        {
          goto LABEL_41;
        }

        ++v31;
      }

      while (v31 != v29);
    }

    webrtc::FindAllMatchingCodecs(&v107, v27, &v92);
    v34 = v92;
    v33 = v93;
    if (v92 != v93)
    {
      v35 = *(v27 + 80);
      if (v35)
      {
        v36 = 0;
        v37 = (v27 + 56);
        do
        {
          while (1)
          {
            v38 = *v34;
            if (*(*v34 + 80) == 1)
            {
              break;
            }

            v34 += 8;
            v36 = 1;
            if (v34 == v33)
            {
              goto LABEL_80;
            }
          }

          v39 = *(v38 + 79);
          if (v39 >= 0)
          {
            v26 = *(v38 + 79);
          }

          else
          {
            v26 = *(v38 + 64);
          }

          v40 = *(v27 + 79);
          v41 = v40;
          if ((v40 & 0x80u) != 0)
          {
            v40 = *(v27 + 8);
          }

          if (v26 == v40)
          {
            v44 = *(v38 + 56);
            v42 = v38 + 56;
            v43 = v44;
            v45 = (v39 >= 0 ? v42 : v43);
            v46 = v41 >= 0 ? v27 + 56 : *v37;
            if (!memcmp(v45, v46, v26))
            {
              if ((v36 & 1) == 0)
              {
                goto LABEL_93;
              }

              v36 = 0;
              if ((*(v27 + 79) & 0x80000000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_92;
            }
          }

          v34 += 8;
        }

        while (v34 != v33);
        if ((v36 & 1) == 0)
        {
          goto LABEL_83;
        }

        v88 = 1;
        if (!v35)
        {
          goto LABEL_104;
        }

        v36 = 1;
LABEL_80:
        if ((*(v27 + 79) & 0x80000000) == 0)
        {
LABEL_81:
          *(v27 + 80) = 0;
          v88 = 1;
          if (v36)
          {
            goto LABEL_104;
          }

          goto LABEL_93;
        }

LABEL_92:
        operator delete(*v37);
        *(v27 + 80) = 0;
        v88 = 1;
        if (v36)
        {
          goto LABEL_104;
        }
      }

      else
      {
        while (1)
        {
          v47 = *(*v34 + 80);
          if (v47 == v35 && v47 == 0)
          {
            break;
          }

          v34 += 8;
          if (v34 == v93)
          {
LABEL_83:
            v50 = *(v27 + 3);
            v51 = (*(*a1 + 96))(a1);
            if (*(v51 + 23) >= 0)
            {
              v52 = v51;
            }

            else
            {
              v52 = *v51;
            }

            webrtc::StringFormat("Failed to set remote answer due to incompatible codec packetization for pt='%d' specified in m-section with mid='%s'.", &v90, v50, v52, v85, p_p);
            v53 = a4;
            if (*(a4 + 23) < 0)
            {
              operator delete(*a4);
              v53 = a4;
            }

            *v53 = v90;
            v34 = v92;
            *(v53 + 16) = v91;
            v49 = 1;
            if (v34)
            {
              goto LABEL_73;
            }

            goto LABEL_74;
          }
        }
      }

LABEL_93:
      *&v90 = v27;
      if (v30 == v29)
      {
        v30 = v29;
      }

      else
      {
        v54 = (v29 - v30) >> 3;
        do
        {
          v55 = v54 >> 1;
          v56 = &v30[8 * (v54 >> 1)];
          v58 = *v56;
          v57 = v56 + 8;
          v54 += ~(v54 >> 1);
          if (v58 < v27)
          {
            v30 = v57;
          }

          else
          {
            v54 = v55;
          }
        }

        while (v54);
        if (v29 != v30 && v27 >= *v30)
        {
LABEL_104:
          v49 = 0;
          v34 = v92;
          if (!v92)
          {
            goto LABEL_74;
          }

LABEL_73:
          v93 = v34;
          operator delete(v34);
          goto LABEL_74;
        }
      }

      std::vector<webrtc::Codec const*>::emplace<webrtc::Codec const*>(v94, v30, &v90);
      goto LABEL_104;
    }

    v49 = 5;
    if (v92)
    {
      goto LABEL_73;
    }

LABEL_74:
    if (v49 != 5 && v49)
    {
      v74 = v94[0];
      v75 = v49 & 3;
      a2 = v87;
      if (v94[0])
      {
        goto LABEL_119;
      }

      goto LABEL_122;
    }

LABEL_41:
    v27 = (v27 + 216);
  }

  while (v27 != v28);
  v74 = v94[0];
  v75 = 0;
  a2 = v87;
  if (v94[0])
  {
LABEL_119:
    operator delete(v74);
    if (!v75)
    {
      goto LABEL_107;
    }

    goto LABEL_123;
  }

LABEL_122:
  if (!v75)
  {
    goto LABEL_107;
  }

LABEL_123:
  updated = 0;
LABEL_155:
  webrtc::MediaChannelParameters::~MediaChannelParameters(&__p);
  webrtc::MediaChannelParameters::~MediaChannelParameters(&v105);
  return updated;
}

const char *webrtc::BaseChannel::transport_name(webrtc::BaseChannel *this)
{
  v1 = *(this + 17);
  if (!v1)
  {
    return "";
  }

  result = (*(*v1 + 24))(v1);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(uint64_t *a1, webrtc::Codec *a2, webrtc::Codec *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x84BDA12F684BDA13 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 216;
        v13 = (v10 - 216);
        v14 = (v10 - 216);
        do
        {
          v15 = *v14;
          v14 -= 27;
          (*v15)(v13);
          v12 -= 216;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x12F684BDA12F684)
    {
      v17 = 0x84BDA12F684BDA13 * (v7 >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x97B425ED097B42)
      {
        v19 = 0x12F684BDA12F684;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x12F684BDA12F684)
      {
        operator new();
      }
    }

    goto LABEL_36;
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (0x84BDA12F684BDA13 * ((v20 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::Codec::operator=(v8, v5);
        v5 = (v5 + 216);
        v8 += 216;
      }

      while (v5 != a3);
      v20 = a1[1];
    }

    if (v20 != v8)
    {
      v26 = v20 - 216;
      v27 = (v20 - 216);
      v28 = (v20 - 216);
      do
      {
        v29 = *v28;
        v28 -= 27;
        (*v29)(v27);
        v26 -= 216;
        v16 = v27 == v8;
        v27 = v28;
      }

      while (!v16);
    }

    a1[1] = v8;
  }

  else
  {
    if (v20 != v8)
    {
      v22 = &v21[a2];
      do
      {
        webrtc::Codec::operator=(v8, v5);
        v5 = (v5 + 216);
        v8 += 216;
        v21 -= 216;
      }

      while (v21);
      v20 = a1[1];
      v5 = v22;
    }

    v23 = v20;
    if (v5 != a3)
    {
      v23 = v20;
      v24 = v20;
      while (v24)
      {
        v25 = webrtc::Codec::Codec(v24, v5);
        v5 = (v5 + 216);
        v24 = (v25 + 216);
        v23 += 216;
        if (v5 == a3)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_36:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_26:
    a1[1] = v23;
  }
}

void webrtc::UntypedFunction::PrepareArgs<void ()(BOOL),absl::AnyInvocable<void ()(BOOL)>,absl::AnyInvocable<void ()(BOOL)>,(void *)0>(absl::AnyInvocable<void ()(BOOL)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::webrtc_function_impl::CallHelpers<void ()(std::optional<webrtc::NetworkRoute>)>::CallVoidPtr<absl::AnyInvocable<void ()(std::optional<webrtc::NetworkRoute>)>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v9 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return (*(v5 + 24))(v5, v8, a3, a4, a5);
}

void webrtc::UntypedFunction::PrepareArgs<void ()(std::optional<webrtc::NetworkRoute>),absl::AnyInvocable<void ()(std::optional<webrtc::NetworkRoute>)>,absl::AnyInvocable<void ()(std::optional<webrtc::NetworkRoute>)>,(void *)0>(absl::AnyInvocable<void ()(std::optional<webrtc::NetworkRoute>)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::SentPacketInfo const&),absl::AnyInvocable<void ()(webrtc::SentPacketInfo const&)>,absl::AnyInvocable<void ()(webrtc::SentPacketInfo const&)>,(void *)0>(absl::AnyInvocable<void ()(webrtc::SentPacketInfo const&)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(void *a1)
{
  (*(*a1 + 16))(1, *a1, *a1);

  JUMPOUT(0x2743DA540);
}

std::string *webrtc::RtpDemuxerCriteria::RtpDemuxerCriteria(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      this[2].__r_.__value_.__r.__words[0] = 0;
      this[2].__r_.__value_.__l.__size_ = 0;
      this[2].__r_.__value_.__r.__words[2] = 0;
      v7 = *(a2 + 6);
      v6 = *(a2 + 7);
      v8 = v6 - v7;
      if (v6 == v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v13 = *(a2 + 6);
  v12 = *(a2 + 7);
  v8 = v12 - v13;
  if (v12 != v13)
  {
    goto LABEL_8;
  }

LABEL_4:
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v10 = *(a2 + 9);
  v9 = *(a2 + 10);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}