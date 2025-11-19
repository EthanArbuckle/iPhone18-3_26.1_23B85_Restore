uint64_t webrtc::CodecVendor::CodecVendor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2)
  {
    webrtc::TypedCodecVendor::TypedCodecVendor(&__p, a2, 0, 1, a3, a4);
    if (&__p != a1)
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(a1, __p, v36, 0x84BDA12F684BDA13 * ((v36 - __p) >> 3));
    }

    v9 = __p;
    if (__p)
    {
      v10 = __p;
      if (v36 != __p)
      {
        v11 = v36 - 216;
        v12 = (v36 - 216);
        v13 = (v36 - 216);
        do
        {
          v14 = *v13;
          v13 -= 27;
          (*v14)(v12);
          v11 -= 216;
          v15 = v12 == v9;
          v12 = v13;
        }

        while (!v15);
        v10 = __p;
      }

      v36 = v9;
      operator delete(v10);
    }

    webrtc::TypedCodecVendor::TypedCodecVendor(&__p, a2, 0, 0, a3, a4);
    if ((a1 + 24) != &__p)
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 24), __p, v36, 0x84BDA12F684BDA13 * ((v36 - __p) >> 3));
    }

    v16 = __p;
    if (__p)
    {
      v17 = __p;
      if (v36 != __p)
      {
        v18 = v36 - 216;
        v19 = (v36 - 216);
        v20 = (v36 - 216);
        do
        {
          v21 = *v20;
          v20 -= 27;
          (*v21)(v19);
          v18 -= 216;
          v15 = v19 == v16;
          v19 = v20;
        }

        while (!v15);
        v17 = __p;
      }

      v36 = v16;
      operator delete(v17);
    }

    webrtc::TypedCodecVendor::TypedCodecVendor(&__p, a2, 1, 1, a3, a4);
    if (v5 != &__p)
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(v5, __p, v36, 0x84BDA12F684BDA13 * ((v36 - __p) >> 3));
    }

    v22 = __p;
    if (__p)
    {
      v23 = __p;
      if (v36 != __p)
      {
        v24 = v36 - 216;
        v25 = (v36 - 216);
        v26 = (v36 - 216);
        do
        {
          v27 = *v26;
          v26 -= 27;
          (*v27)(v25);
          v24 -= 216;
          v15 = v25 == v22;
          v25 = v26;
        }

        while (!v15);
        v23 = __p;
      }

      v36 = v22;
      operator delete(v23);
    }

    webrtc::TypedCodecVendor::TypedCodecVendor(&__p, a2, 1, 0, a3, a4);
    if ((a1 + 72) != &__p)
    {
      std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a1 + 72), __p, v36, 0x84BDA12F684BDA13 * ((v36 - __p) >> 3));
    }

    v28 = __p;
    if (__p)
    {
      v29 = __p;
      if (v36 != __p)
      {
        v30 = v36 - 216;
        v31 = (v36 - 216);
        v32 = (v36 - 216);
        do
        {
          v33 = *v32;
          v32 -= 27;
          (*v33)(v31);
          v30 -= 216;
          v15 = v31 == v28;
          v31 = v32;
        }

        while (!v15);
        v29 = __p;
      }

      v36 = v28;
      operator delete(v29);
    }
  }

  return a1;
}

uint64_t webrtc::CodecVendor::ModifyVideoCodecs(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v3 = result;
    while (1)
    {
      v5 = v3[6];
      v4 = v3[7];
      if (v4 != v5)
      {
        break;
      }

      v6 = v3[9];
      v7 = v3[10];
      result = v7 - v6;
      if (v7 != v6)
      {
        if (0x84BDA12F684BDA13 * (result >> 3) <= 0x12F684BDA12F684)
        {
          operator new();
        }

LABEL_11:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v2 += 432;
      if (v2 == v8)
      {
        return result;
      }
    }

    if (0x84BDA12F684BDA13 * ((v4 - v5) >> 3) <= 0x12F684BDA12F684)
    {
      operator new();
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::GetAssociatedCodecForRed(webrtc::_anonymous_namespace_ *this, const webrtc::CodecList *a2, const webrtc::Codec *a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v23 = 0;
  v21 = 0;
  LOBYTE(__p[0]) = 0;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2 + 168, __p);
  v5 = v4;
  v6 = a2 + 176;
  v7 = (v4 + 7);
  if ((a2 + 176) == v4 || v7 == __dst)
  {
    if (v21 < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  if (*(v4 + 79) < 0)
  {
    std::string::__assign_no_alias<true>(__dst, v4[7], v4[8]);
    if (v21 < 0)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (v6 == v5)
    {
      goto LABEL_26;
    }

LABEL_8:
    if (v23 >= 0)
    {
      v9 = __dst;
    }

    else
    {
      v9 = __dst[0];
    }

    if (v23 >= 0)
    {
      v10 = HIBYTE(v23);
    }

    else
    {
      v10 = __dst[1];
    }

    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        if (i[v9] == 47)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  *__dst = *v7;
  v23 = v4[9];
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  operator delete(__p[0]);
  if (v6 != v5)
  {
    goto LABEL_8;
  }

LABEL_26:
  if (*(a2 + 2))
  {
    if (SHIBYTE(v23) < 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/codec_vendor.cc");
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (SHIBYTE(v23) < 0)
    {
LABEL_31:
      operator delete(__dst[0]);
    }
  }

  return 0;
}

double webrtc::StrJoin<std::vector<std::string>>@<D0>(const std::string::value_type *__src@<X1>, size_t __len@<X2>, std::string **a3@<X0>, std::string *a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  v6 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    if (__src)
    {
      v9 = 1;
    }

    else
    {
      v9 = __len == 0;
    }

    v10 = v9;
    size = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v13 = v6->__r_.__value_.__r.__words[0];
      size = v6->__r_.__value_.__l.__size_;
      v12 = size == 0;
      if (v6->__r_.__value_.__r.__words[0])
      {
        v14 = 1;
      }

      else
      {
        v14 = size == 0;
      }

      if (!v14)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v12 = size == 0;
      v13 = *a3;
    }

    if (size > 0x16)
    {
      if (size - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
      {
        operator new();
      }

LABEL_75:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (!v12)
    {
      v15 = (&__dst + size);
      if (&__dst <= v13 && v15 > v13)
      {
        goto LABEL_74;
      }

      memmove(&__dst, v13, size);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = size;
      }

      v15->__r_.__value_.__s.__data_[0] = 0;
    }

    v16 = v6 + 1;
    if (&v6[1] != v5)
    {
      if (v10)
      {
        while (1)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = 22;
          }

          else
          {
            v17 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = __dst.__r_.__value_.__l.__size_;
          }

          if (v17 - v18 < __len)
          {
            std::string::__grow_by_and_replace(&__dst, v17, v18 + __len - v17, v18, v18, 0, __len, __src);
            v19 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_53;
          }

          if (!__len)
          {
            goto LABEL_50;
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__len & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          if (p_dst + v18 <= __src && p_dst + v18 + __len > __src)
          {
            goto LABEL_74;
          }

          memmove(p_dst + v18, __src, __len);
          v22 = v18 + __len;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          __dst.__r_.__value_.__l.__size_ = v18 + __len;
          p_dst->__r_.__value_.__s.__data_[v22] = 0;
          v19 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
          if ((v19 & 0x8000000000000000) == 0)
          {
LABEL_51:
            v23 = v19 == 0;
            v24 = v16;
            goto LABEL_55;
          }

LABEL_53:
          v24 = v16->__r_.__value_.__r.__words[0];
          v19 = v16->__r_.__value_.__l.__size_;
          v23 = v19 == 0;
          if (!v16->__r_.__value_.__r.__words[0] && v19)
          {
            goto LABEL_74;
          }

LABEL_55:
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

          if (v25 - v26 < v19)
          {
            std::string::__grow_by_and_replace(&__dst, v25, v26 + v19 - v25, v26, v26, 0, v19, v24);
          }

          else if (!v23)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &__dst;
            }

            else
            {
              v27 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            v28 = v27 + v26;
            if (v27 + v26 <= v24 && &v28[v19] > v24)
            {
              goto LABEL_74;
            }

            v29 = v19;
            memmove(v28, v24, v19);
            v30 = v26 + v29;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              __dst.__r_.__value_.__l.__size_ = v26 + v29;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v30 & 0x7F;
            }

            v27->__r_.__value_.__s.__data_[v30] = 0;
          }

          if (++v16 == v5)
          {
            goto LABEL_73;
          }
        }

        *(&__dst.__r_.__value_.__s + 23) = v22 & 0x7F;
        p_dst->__r_.__value_.__s.__data_[v22] = 0;
LABEL_50:
        v19 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_53;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

LABEL_73:
  result = *&__dst.__r_.__value_.__l.__data_;
  *a4 = __dst;
  return result;
}

void webrtc::CodecList::~CodecList(webrtc::CodecList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      v5 = v3 - 27;
      v6 = v3 - 27;
      v7 = v3 - 27;
      do
      {
        v8 = *v7;
        v7 -= 27;
        (*v8)(v6);
        v5 -= 27;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x12F684BDA12F684)
  {
    if (0x97B425ED097B426 * ((a1[2] - v1) >> 3) > v2)
    {
      v2 = 0x97B425ED097B426 * ((a1[2] - v1) >> 3);
    }

    if (0x84BDA12F684BDA13 * ((a1[2] - v1) >> 3) >= 0x97B425ED097B42)
    {
      v2 = 0x12F684BDA12F684;
    }

    if (v2)
    {
      if (v2 <= 0x12F684BDA12F684)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

BOOL webrtc::UsedPayloadTypes::IsIdUsed(webrtc::UsedPayloadTypes *this, int a2)
{
  if ((a2 & 0xFFFFFFE0) == 0x40)
  {
    return 1;
  }

  v5 = *(this + 4);
  v3 = this + 32;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 7) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 7) < a2)];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 7) > a2)
  {
LABEL_10:
    v6 = v3;
  }

  return v6 != v3;
}

uint64_t webrtc::UsedIds<webrtc::Codec>::FindUnusedId(_DWORD *a1)
{
  if ((*(*a1 + 16))(a1, a1[4]))
  {
    do
    {
      v2 = a1[4];
      if (v2 < a1[2])
      {
        break;
      }

      a1[4] = v2 - 1;
    }

    while (((*(*a1 + 16))(a1) & 1) != 0);
  }

  return a1[4];
}

uint64_t webrtc::UsedIds<webrtc::Codec>::~UsedIds(uint64_t a1)
{
  *a1 = &unk_288291480;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 24, *(a1 + 32));
  return a1;
}

void webrtc::UsedIds<webrtc::Codec>::~UsedIds(uint64_t a1)
{
  *a1 = &unk_288291480;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 24, *(a1 + 32));

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::UsedIds<webrtc::Codec>::IsIdUsed(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 28) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x12F684BDA12F684)
  {
    if (0x97B425ED097B426 * ((a1[2] - v1) >> 3) > v2)
    {
      v2 = 0x97B425ED097B426 * ((a1[2] - v1) >> 3);
    }

    if (0x84BDA12F684BDA13 * ((a1[2] - v1) >> 3) >= 0x97B425ED097B42)
    {
      v2 = 0x12F684BDA12F684;
    }

    if (v2)
    {
      if (v2 <= 0x12F684BDA12F684)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NegotiateCodecs(webrtc::CodecList const&,webrtc::CodecList const&,webrtc::CodecList&,BOOL)::$_0 &,webrtc::Codec *,false>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, char a5)
{
  v7 = &v347;
  v368 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v8 = a1;
    v318 = (a2 - 216);
    v315 = (a2 - 204);
    while (1)
    {
      while (1)
      {
        a1 = v8;
        v9 = a2 - v8;
        v10 = 0x84BDA12F684BDA13 * (v9 >> 3);
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              return;
            case 4:
              return;
            case 5:
              return;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            v156 = *a3;
            v347 = (a2 - 204);
            v157 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v156, v315);
            if (!v157)
            {
              goto LABEL_288;
            }

            v160 = *(v157 + 5);
            v161 = *a3;
            v347 = (a1 + 12);
            v162 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v161, (a1 + 12));
            if (!v162)
            {
              goto LABEL_288;
            }

            if (v160 <= *(v162 + 5))
            {
              return;
            }

            v159 = a1;
            v163 = *(a1 + 8);
            v347 = &unk_288291428;
            v348 = v163;
            v164 = *(a1 + 32);
            v349 = *(a1 + 16);
            v350 = v164;
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            *(a1 + 16) = 0;
            v351 = *(a1 + 40);
            LOBYTE(v352) = 0;
            v354 = 0;
            if (*(a1 + 80) == 1)
            {
              v165 = *(a1 + 56);
              v353 = *(a1 + 72);
              v352 = v165;
              *(a1 + 64) = 0;
              *(a1 + 72) = 0;
              *(a1 + 56) = 0;
              v354 = 1;
            }

            v355 = 0;
            v355 = *(a1 + 88);
            v166 = *(a1 + 128);
            v167 = *(a1 + 112);
            v356 = *(a1 + 96);
            v357 = v167;
            v358 = v166;
            *(a1 + 88) = 0;
            LOBYTE(v359) = 0;
            v361 = 0;
            if (*(a1 + 160) == 1)
            {
              v168 = *(a1 + 136);
              v360 = *(a1 + 152);
              v359 = v168;
              *(a1 + 144) = 0;
              *(a1 + 152) = 0;
              *(a1 + 136) = 0;
              v361 = 1;
            }

            v169 = (a1 + 176);
            v170 = *(a1 + 176);
            v158 = &v363;
            v362 = *(a1 + 168);
            v363 = v170;
            v364 = *(a1 + 184);
            if (v364)
            {
              *(v170 + 16) = &v363;
              *(a1 + 168) = v169;
              *v169 = 0;
              *(a1 + 184) = 0;
LABEL_290:
              *(v7 + 192) = 0;
              *(v7 + 200) = 0;
              *(v7 + 208) = 0;
              v313 = *(v159 + 192);
              v314 = *(v159 + 200);
              if (v314 != v313)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((v314 - v313) >> 4) <= 0x555555555555555)
                {
                  operator new();
                }

                goto LABEL_295;
              }

              webrtc::Codec::operator=(a1, v318);
              webrtc::Codec::operator=(v318, &v347);
              webrtc::Codec::~Codec(&v347);
              return;
            }

LABEL_289:
            *(v7 + 168) = v158;
            goto LABEL_290;
          }
        }

        if (v9 <= 5183)
        {
          if (a5)
          {
            if (a1 == a2)
            {
              return;
            }

            v171 = a1 + 216;
            if (a1 + 216 == a2)
            {
              return;
            }

            v172 = 0;
            v173 = a1;
            while (1)
            {
              v175 = v171;
              v176 = *a3;
              v347 = (v173 + 228);
              v177 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v176, (v173 + 228));
              if (!v177)
              {
                break;
              }

              v178 = *(v177 + 5);
              v179 = *a3;
              v347 = (v173 + 12);
              v180 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v179, (v173 + 12));
              if (!v180)
              {
                break;
              }

              if (v178 > *(v180 + 5))
              {
                v181 = *(v175 + 8);
                v347 = &unk_288291428;
                v348 = v181;
                v182 = *(v175 + 32);
                v349 = *(v175 + 16);
                v350 = v182;
                *(v175 + 24) = 0;
                *(v175 + 32) = 0;
                *(v175 + 16) = 0;
                v351 = *(v175 + 40);
                LOBYTE(v352) = 0;
                v354 = 0;
                if (*(v175 + 80) == 1)
                {
                  v183 = *(v175 + 56);
                  v353 = *(v175 + 72);
                  v352 = v183;
                  *(v175 + 64) = 0;
                  *(v175 + 72) = 0;
                  *(v175 + 56) = 0;
                  v354 = 1;
                }

                v355 = 0;
                v355 = *(v175 + 88);
                v184 = *(v175 + 128);
                v185 = *(v175 + 112);
                v356 = *(v175 + 96);
                v357 = v185;
                v358 = v184;
                *(v175 + 88) = 0;
                LOBYTE(v359) = 0;
                v361 = 0;
                if (*(v175 + 160) == 1)
                {
                  v186 = *(v175 + 136);
                  v360 = *(v175 + 152);
                  v359 = v186;
                  *(v175 + 144) = 0;
                  *(v175 + 152) = 0;
                  *(v175 + 136) = 0;
                  v361 = 1;
                }

                v187 = (v175 + 176);
                v188 = *(v175 + 176);
                v362 = *(v175 + 168);
                v363 = v188;
                v364 = *(v175 + 184);
                if (v364)
                {
                  *(v188 + 16) = &v363;
                  *(v175 + 168) = v187;
                  *v187 = 0;
                  *(v175 + 184) = 0;
                  v365 = 0;
                  v366 = 0;
                  v367 = 0;
                  v189 = *(v175 + 192);
                  v7 = *(v175 + 200);
                  v190 = v7 - v189;
                  if (v7 != v189)
                  {
                    goto LABEL_175;
                  }
                }

                else
                {
                  v362 = &v363;
                  v365 = 0;
                  v366 = 0;
                  v367 = 0;
                  v191 = *(v175 + 192);
                  v7 = *(v175 + 200);
                  v190 = v7 - v191;
                  if (v7 != v191)
                  {
LABEL_175:
                    if (0xAAAAAAAAAAAAAAABLL * (v190 >> 4) <= 0x555555555555555)
                    {
                      operator new();
                    }

                    goto LABEL_295;
                  }
                }

                v192 = v172;
                do
                {
                  webrtc::Codec::operator=(a1 + v192 + 216, a1 + v192);
                  if (!v192)
                  {
                    v174 = a1;
                    goto LABEL_162;
                  }

                  v193 = *a3;
                  v326 = &v348 + 1;
                  v194 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v193, &v348 + 1);
                  if (!v194)
                  {
                    goto LABEL_288;
                  }

                  v195 = *(v194 + 5);
                  v196 = *a3;
                  v326 = (a1 + v192 - 204);
                  v197 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v196, v326);
                  if (!v197)
                  {
                    goto LABEL_288;
                  }

                  v192 -= 216;
                }

                while (v195 > *(v197 + 5));
                v174 = a1 + v192 + 216;
LABEL_162:
                v7 = &v347;
                webrtc::Codec::operator=(v174, &v347);
                webrtc::Codec::~Codec(&v347);
              }

              v171 = v175 + 216;
              v172 += 216;
              v173 = v175;
              if (v175 + 216 == a2)
              {
                return;
              }
            }
          }

          else
          {
            if (a1 == a2)
            {
              return;
            }

            v288 = a1 + 216;
            if (a1 + 216 == a2)
            {
              return;
            }

            v289 = 216;
            v290 = a1;
            while (1)
            {
              v291 = *a3;
              v347 = (v290 + 228);
              v292 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v291, (v290 + 228));
              if (!v292)
              {
                break;
              }

              v293 = *(v292 + 5);
              v294 = *a3;
              v347 = (v290 + 12);
              v295 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v294, (v290 + 12));
              if (!v295)
              {
                break;
              }

              if (v293 > *(v295 + 5))
              {
                v296 = *(v288 + 8);
                v347 = &unk_288291428;
                v348 = v296;
                v297 = *(v288 + 32);
                v349 = *(v288 + 16);
                v350 = v297;
                *(v288 + 24) = 0;
                *(v288 + 32) = 0;
                *(v288 + 16) = 0;
                v351 = *(v288 + 40);
                LOBYTE(v352) = 0;
                v354 = 0;
                if (*(v288 + 80) == 1)
                {
                  v298 = *(v288 + 56);
                  v353 = *(v288 + 72);
                  v352 = v298;
                  *(v288 + 64) = 0;
                  *(v288 + 72) = 0;
                  *(v288 + 56) = 0;
                  v354 = 1;
                }

                v355 = 0;
                v355 = *(v288 + 88);
                v299 = *(v288 + 128);
                v300 = *(v288 + 112);
                v356 = *(v288 + 96);
                v357 = v300;
                v358 = v299;
                *(v288 + 88) = 0;
                LOBYTE(v359) = 0;
                v361 = 0;
                if (*(v288 + 160) == 1)
                {
                  v301 = *(v288 + 136);
                  v360 = *(v288 + 152);
                  v359 = v301;
                  *(v288 + 144) = 0;
                  *(v288 + 152) = 0;
                  *(v288 + 136) = 0;
                  v361 = 1;
                }

                v302 = (v288 + 176);
                v303 = *(v288 + 176);
                v362 = *(v288 + 168);
                v363 = v303;
                v364 = *(v288 + 184);
                if (v364)
                {
                  *(v303 + 16) = &v363;
                  *(v288 + 168) = v302;
                  *v302 = 0;
                  *(v288 + 184) = 0;
                  v365 = 0;
                  v366 = 0;
                  v367 = 0;
                  v304 = *(v288 + 192);
                  v7 = *(v288 + 200);
                  v305 = v7 - v304;
                  if (v7 != v304)
                  {
                    goto LABEL_280;
                  }
                }

                else
                {
                  v362 = &v363;
                  v365 = 0;
                  v366 = 0;
                  v367 = 0;
                  v306 = *(v288 + 192);
                  v7 = *(v288 + 200);
                  v305 = v7 - v306;
                  if (v7 != v306)
                  {
LABEL_280:
                    if (0xAAAAAAAAAAAAAAABLL * (v305 >> 4) <= 0x555555555555555)
                    {
                      operator new();
                    }

                    goto LABEL_295;
                  }
                }

                v307 = 0;
                do
                {
                  webrtc::Codec::operator=(v290 + v307 + 216, v290 + v307);
                  if (!(v289 + v307))
                  {
                    goto LABEL_288;
                  }

                  v308 = *a3;
                  v326 = &v348 + 1;
                  v309 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v308, &v348 + 1);
                  if (!v309)
                  {
                    goto LABEL_288;
                  }

                  v310 = *(v309 + 5);
                  v311 = *a3;
                  v326 = (v290 + v307 - 204);
                  v312 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v311, v326);
                  if (!v312)
                  {
                    goto LABEL_288;
                  }

                  v307 -= 216;
                }

                while (v310 > *(v312 + 5));
                webrtc::Codec::operator=(v290 + v307 + 216, &v347);
                webrtc::Codec::~Codec(&v347);
                v7 = &v347;
              }

              v290 += 216;
              v289 += 216;
              v288 = a1 + v289;
              if (a1 + v289 == a2)
              {
                return;
              }
            }
          }

LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        if (!a4)
        {
          if (a1 != a2)
          {
            v198 = (v10 - 2) >> 1;
            v318 = &v363;
            v321 = v198;
            while (1)
            {
              v199 = v198;
              if (v321 >= v198)
              {
                v323 = v198;
                v200 = (2 * v198) | 1;
                v201 = a1 + 216 * v200;
                v202 = 2 * v198 + 2;
                if (v202 < v10)
                {
                  v203 = *a3;
                  v347 = (v201 + 12);
                  v204 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v203, (v201 + 12));
                  if (!v204)
                  {
                    goto LABEL_288;
                  }

                  v205 = *(v204 + 5);
                  v206 = *a3;
                  v347 = (v201 + 228);
                  v207 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v206, (v201 + 228));
                  if (!v207)
                  {
                    goto LABEL_288;
                  }

                  v208 = 216;
                  if (v205 <= *(v207 + 5))
                  {
                    v208 = 0;
                  }

                  v201 += v208;
                  if (v205 > *(v207 + 5))
                  {
                    v200 = v202;
                  }
                }

                v209 = *a3;
                v347 = (v201 + 12);
                v210 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v209, (v201 + 12));
                if (!v210)
                {
                  goto LABEL_288;
                }

                v211 = a1 + 216 * v323;
                v212 = *(v210 + 5);
                v213 = *a3;
                v347 = (v211 + 12);
                v214 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v213, (v211 + 12));
                if (!v214)
                {
                  goto LABEL_288;
                }

                v199 = v323;
                if (v212 <= *(v214 + 5))
                {
                  v347 = &unk_288291428;
                  v348 = *(v211 + 8);
                  v215 = *(v211 + 16);
                  v350 = *(v211 + 32);
                  v349 = v215;
                  *(v211 + 24) = 0;
                  *(v211 + 32) = 0;
                  *(v211 + 16) = 0;
                  v351 = *(v211 + 40);
                  LOBYTE(v352) = 0;
                  v354 = 0;
                  if (*(v211 + 80) == 1)
                  {
                    v216 = *(v211 + 56);
                    v353 = *(v211 + 72);
                    v352 = v216;
                    *(v211 + 64) = 0;
                    *(v211 + 72) = 0;
                    *(v211 + 56) = 0;
                    v354 = 1;
                  }

                  v355 = 0;
                  v355 = *(v211 + 88);
                  v217 = *(v211 + 96);
                  v218 = *(v211 + 112);
                  v358 = *(v211 + 128);
                  v356 = v217;
                  v357 = v218;
                  *(v211 + 88) = 0;
                  LOBYTE(v359) = 0;
                  v361 = 0;
                  if (*(v211 + 160) == 1)
                  {
                    v219 = *(v211 + 136);
                    v360 = *(v211 + 152);
                    v359 = v219;
                    *(v211 + 144) = 0;
                    *(v211 + 152) = 0;
                    *(v211 + 136) = 0;
                    v361 = 1;
                  }

                  v220 = (v211 + 176);
                  v221 = *(v211 + 176);
                  v362 = *(v211 + 168);
                  v363 = v221;
                  v364 = *(v211 + 184);
                  if (v364)
                  {
                    *(v221 + 16) = &v363;
                    *(v211 + 168) = v220;
                    *v220 = 0;
                    *(v211 + 184) = 0;
                    v365 = 0;
                    v366 = 0;
                    v367 = 0;
                    v222 = *(v211 + 192);
                    v223 = *(v211 + 200);
                    v224 = v223 - v222;
                    if (v223 != v222)
                    {
                      goto LABEL_206;
                    }
                  }

                  else
                  {
                    v362 = &v363;
                    v365 = 0;
                    v366 = 0;
                    v367 = 0;
                    v225 = *(v211 + 192);
                    v226 = *(v211 + 200);
                    v224 = v226 - v225;
                    if (v226 != v225)
                    {
LABEL_206:
                      if (0xAAAAAAAAAAAAAAABLL * (v224 >> 4) <= 0x555555555555555)
                      {
                        operator new();
                      }

                      goto LABEL_295;
                    }
                  }

                  v7 = (v10 - 2) >> 1;
                  do
                  {
                    v227 = v201;
                    webrtc::Codec::operator=(v211, v201);
                    if (v321 < v200)
                    {
                      break;
                    }

                    v201 = a1 + 216 * ((2 * v200) | 1);
                    if (2 * v200 + 2 >= v10)
                    {
                      v200 = (2 * v200) | 1;
                    }

                    else
                    {
                      v228 = *a3;
                      v326 = (v201 + 12);
                      v229 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v228, (v201 + 12));
                      if (!v229)
                      {
                        goto LABEL_288;
                      }

                      v230 = *(v229 + 5);
                      v231 = *a3;
                      v326 = (v201 + 228);
                      v232 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v231, (v201 + 228));
                      if (!v232)
                      {
                        goto LABEL_288;
                      }

                      v233 = 216;
                      if (v230 <= *(v232 + 5))
                      {
                        v233 = 0;
                      }

                      v201 += v233;
                      if (v230 <= *(v232 + 5))
                      {
                        v200 = (2 * v200) | 1;
                      }

                      else
                      {
                        v200 = 2 * v200 + 2;
                      }
                    }

                    v234 = *a3;
                    v326 = (v201 + 12);
                    v235 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v234, (v201 + 12));
                    if (!v235)
                    {
                      goto LABEL_288;
                    }

                    v236 = *(v235 + 5);
                    v237 = *a3;
                    v326 = &v348 + 1;
                    v238 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v237, &v348 + 1);
                    if (!v238)
                    {
                      goto LABEL_288;
                    }

                    v211 = v227;
                  }

                  while (v236 <= *(v238 + 5));
                  webrtc::Codec::operator=(v227, &v347);
                  webrtc::Codec::~Codec(&v347);
                  v7 = &v347;
                  v199 = v323;
                }
              }

              v198 = v199 - 1;
              if (!v199)
              {
                v239 = 0x84BDA12F684BDA13 * (v9 >> 3);
                v322 = (a1 + 176);
                v318 = &v348 + 4;
                while (1)
                {
                  v241 = *(a1 + 8);
                  v326 = &unk_288291428;
                  v327 = v241;
                  v242 = *(a1 + 32);
                  v328 = *(a1 + 16);
                  v329 = v242;
                  *(a1 + 24) = 0;
                  *(a1 + 32) = 0;
                  *(a1 + 16) = 0;
                  v330 = *(a1 + 40);
                  LOBYTE(v331) = 0;
                  v333 = 0;
                  if (*(a1 + 80) == 1)
                  {
                    v243 = *(a1 + 56);
                    v332 = *(a1 + 72);
                    v331 = v243;
                    *(a1 + 64) = 0;
                    *(a1 + 72) = 0;
                    *(a1 + 56) = 0;
                    v333 = 1;
                  }

                  v334 = 0;
                  v334 = *(a1 + 88);
                  v244 = *(a1 + 128);
                  v245 = *(a1 + 112);
                  v335 = *(a1 + 96);
                  v336 = v245;
                  v337 = v244;
                  *(a1 + 88) = 0;
                  LOBYTE(v338) = 0;
                  v340 = 0;
                  if (*(a1 + 160) == 1)
                  {
                    v246 = *(a1 + 136);
                    v339 = *(a1 + 152);
                    v338 = v246;
                    *(a1 + 144) = 0;
                    *(a1 + 152) = 0;
                    *(a1 + 136) = 0;
                    v340 = 1;
                  }

                  v247 = *(a1 + 176);
                  v341 = *(a1 + 168);
                  v342 = v247;
                  v343 = *(a1 + 184);
                  if (v343)
                  {
                    *(v247 + 16) = &v342;
                    *(a1 + 168) = v322;
                    *v322 = 0;
                    *(a1 + 184) = 0;
                    v344 = 0;
                    v345 = 0;
                    v346 = 0;
                    v248 = *(a1 + 192);
                    v249 = *(a1 + 200);
                    v250 = v249 - v248;
                    if (v249 != v248)
                    {
                      goto LABEL_234;
                    }
                  }

                  else
                  {
                    v341 = &v342;
                    v344 = 0;
                    v345 = 0;
                    v346 = 0;
                    v251 = *(a1 + 192);
                    v252 = *(a1 + 200);
                    v250 = v252 - v251;
                    if (v252 != v251)
                    {
LABEL_234:
                      if (0xAAAAAAAAAAAAAAABLL * (v250 >> 4) <= 0x555555555555555)
                      {
                        operator new();
                      }

                      goto LABEL_295;
                    }
                  }

                  v253 = 0;
                  v254 = (v239 - 2) >> 1;
                  v255 = a1;
                  do
                  {
                    while (1)
                    {
                      v256 = v255 + 216 * v253;
                      v257 = v256 + 216;
                      v258 = (2 * v253) | 1;
                      v253 = 2 * v253 + 2;
                      if (v253 < v239)
                      {
                        break;
                      }

                      v253 = v258;
                      webrtc::Codec::operator=(v255, v256 + 216);
                      v255 = v256 + 216;
                      if (v258 > v254)
                      {
                        goto LABEL_245;
                      }
                    }

                    v259 = *a3;
                    v347 = (v256 + 228);
                    v260 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v259, (v256 + 228));
                    if (!v260)
                    {
                      goto LABEL_288;
                    }

                    v7 = *(v260 + 5);
                    v261 = *a3;
                    v347 = (v256 + 444);
                    v262 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v261, (v256 + 444));
                    if (!v262)
                    {
                      goto LABEL_288;
                    }

                    if (v7 <= *(v262 + 5))
                    {
                      v253 = v258;
                    }

                    else
                    {
                      v257 = v256 + 432;
                    }

                    v7 = &v347;
                    webrtc::Codec::operator=(v255, v257);
                    v255 = v257;
                  }

                  while (v253 <= v254);
LABEL_245:
                  v263 = a2 - 216;
                  v264 = v257 == a2 - 216;
                  a2 -= 216;
                  if (v264)
                  {
                    webrtc::Codec::operator=(v257, &v326);
                  }

                  else
                  {
                    webrtc::Codec::operator=(v257, v263);
                    webrtc::Codec::operator=(v263, &v326);
                    v265 = v257 - a1 + 216;
                    if (v265 >= 217)
                    {
                      v266 = (-2 - 0x7B425ED097B425EDLL * (v265 >> 3)) >> 1;
                      v267 = a1 + 216 * v266;
                      v268 = *a3;
                      v347 = (v267 + 12);
                      v269 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v268, (v267 + 12));
                      if (!v269)
                      {
                        goto LABEL_288;
                      }

                      v270 = *(v269 + 5);
                      v271 = *a3;
                      v347 = (v257 + 12);
                      v272 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v271, (v257 + 12));
                      if (!v272)
                      {
                        goto LABEL_288;
                      }

                      if (v270 > *(v272 + 5))
                      {
                        v273 = *(v257 + 8);
                        v347 = &unk_288291428;
                        v348 = v273;
                        v274 = *(v257 + 32);
                        v349 = *(v257 + 16);
                        v350 = v274;
                        *(v257 + 24) = 0;
                        *(v257 + 32) = 0;
                        *(v257 + 16) = 0;
                        v351 = *(v257 + 40);
                        LOBYTE(v352) = 0;
                        v354 = 0;
                        if (*(v257 + 80) == 1)
                        {
                          v275 = *(v257 + 56);
                          v353 = *(v257 + 72);
                          v352 = v275;
                          *(v257 + 64) = 0;
                          *(v257 + 72) = 0;
                          *(v257 + 56) = 0;
                          v354 = 1;
                        }

                        v355 = 0;
                        v355 = *(v257 + 88);
                        v276 = *(v257 + 128);
                        v277 = *(v257 + 112);
                        v356 = *(v257 + 96);
                        v357 = v277;
                        v358 = v276;
                        *(v257 + 88) = 0;
                        LOBYTE(v359) = 0;
                        v361 = 0;
                        if (*(v257 + 160) == 1)
                        {
                          v278 = *(v257 + 136);
                          v360 = *(v257 + 152);
                          v359 = v278;
                          *(v257 + 144) = 0;
                          *(v257 + 152) = 0;
                          *(v257 + 136) = 0;
                          v361 = 1;
                        }

                        v279 = (v257 + 176);
                        v280 = *(v257 + 176);
                        v362 = *(v257 + 168);
                        v363 = v280;
                        v364 = *(v257 + 184);
                        if (!v364)
                        {
                          v362 = &v363;
                          v365 = 0;
                          v366 = 0;
                          v367 = 0;
                          v283 = *(v257 + 192);
                          v7 = *(v257 + 200);
                          v282 = v7 - v283;
                          if (v7 == v283)
                          {
                            goto LABEL_260;
                          }

LABEL_258:
                          if (0xAAAAAAAAAAAAAAABLL * (v282 >> 4) <= 0x555555555555555)
                          {
                            operator new();
                          }

LABEL_295:
                          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                        }

                        *(v280 + 16) = &v363;
                        *(v257 + 168) = v279;
                        *v279 = 0;
                        *(v257 + 184) = 0;
                        v365 = 0;
                        v366 = 0;
                        v367 = 0;
                        v281 = *(v257 + 192);
                        v7 = *(v257 + 200);
                        v282 = v7 - v281;
                        if (v7 != v281)
                        {
                          goto LABEL_258;
                        }

LABEL_260:
                        do
                        {
                          v284 = v267;
                          webrtc::Codec::operator=(v257, v267);
                          if (!v266)
                          {
                            break;
                          }

                          v266 = (v266 - 1) >> 1;
                          v267 = a1 + 216 * v266;
                          v285 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(*a3, (v267 + 12));
                          if (!v285)
                          {
                            goto LABEL_288;
                          }

                          v286 = *(v285 + 5);
                          v287 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(*a3, &v348 + 1);
                          if (!v287)
                          {
                            goto LABEL_288;
                          }

                          v257 = v284;
                        }

                        while (v286 > *(v287 + 5));
                        webrtc::Codec::operator=(v284, &v347);
                        webrtc::Codec::~Codec(&v347);
                        v7 = &v347;
                      }
                    }
                  }

                  webrtc::Codec::~Codec(&v326);
                  if (v239-- <= 2)
                  {
                    return;
                  }
                }
              }
            }
          }

          return;
        }

        v11 = v10 >> 1;
        v12 = a1 + 216 * (v10 >> 1);
        if (v9 >= 0x6C01)
        {
          v13 = 216 * v11;
          v14 = *(a1 + 8);
          v347 = &unk_288291428;
          v348 = v14;
          v15 = *(a1 + 32);
          v349 = *(a1 + 16);
          v350 = v15;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v351 = *(a1 + 40);
          LOBYTE(v352) = 0;
          v354 = 0;
          v16 = a1;
          if (*(a1 + 80) == 1)
          {
            v17 = *(a1 + 56);
            v353 = *(a1 + 72);
            v352 = v17;
            *(a1 + 64) = 0;
            *(a1 + 72) = 0;
            *(a1 + 56) = 0;
            v354 = 1;
          }

          v355 = 0;
          v355 = *(a1 + 88);
          v18 = *(a1 + 128);
          v19 = *(a1 + 112);
          v356 = *(a1 + 96);
          v357 = v19;
          v358 = v18;
          *(a1 + 88) = 0;
          LOBYTE(v359) = 0;
          v361 = 0;
          if (*(a1 + 160) == 1)
          {
            v20 = *(a1 + 136);
            v360 = *(a1 + 152);
            v359 = v20;
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            *(a1 + 136) = 0;
            v361 = 1;
          }

          v21 = (a1 + 176);
          v22 = *(a1 + 176);
          v362 = *(a1 + 168);
          v363 = v22;
          v364 = *(a1 + 184);
          if (v364)
          {
            *(v22 + 16) = &v363;
            *(a1 + 168) = v21;
            *v21 = 0;
            *(a1 + 184) = 0;
            v365 = 0;
            v366 = 0;
            v367 = 0;
            v24 = *(a1 + 192);
            v23 = *(a1 + 200);
            v25 = v23 - v24;
            if (v23 != v24)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v362 = &v363;
            v365 = 0;
            v366 = 0;
            v367 = 0;
            v28 = *(a1 + 192);
            v27 = *(a1 + 200);
            v25 = v27 - v28;
            if (v27 != v28)
            {
LABEL_24:
              if (0xAAAAAAAAAAAAAAABLL * (v25 >> 4) <= 0x555555555555555)
              {
                operator new();
              }

              goto LABEL_295;
            }
          }

          webrtc::Codec::operator=(a1, v12);
          webrtc::Codec::operator=(v12, &v347);
          webrtc::Codec::~Codec(&v347);
          --a4;
          v26 = a2;
          v319 = a4;
          if (a5)
          {
            break;
          }
        }

        else
        {
          v16 = a1;
          --a4;
          v26 = a2;
          v319 = a4;
          if (a5)
          {
            break;
          }
        }

        v29 = *a3;
        v347 = (v16 - 204);
        v30 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v29, (v16 - 204));
        if (!v30)
        {
          goto LABEL_288;
        }

        v31 = *(v30 + 5);
        v32 = *a3;
        v347 = (v16 + 12);
        v33 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v32, (v16 + 12));
        if (!v33)
        {
          goto LABEL_288;
        }

        if (v31 > *(v33 + 5))
        {
          break;
        }

        v96 = *(v16 + 8);
        v326 = &unk_288291428;
        v327 = v96;
        v97 = *(v16 + 32);
        v328 = *(v16 + 16);
        v329 = v97;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 16) = 0;
        v330 = *(v16 + 40);
        LOBYTE(v331) = 0;
        v333 = 0;
        if (*(v16 + 80) == 1)
        {
          v98 = *(v16 + 56);
          v332 = *(v16 + 72);
          v331 = v98;
          *(v16 + 64) = 0;
          *(v16 + 72) = 0;
          *(v16 + 56) = 0;
          v333 = 1;
        }

        v334 = 0;
        v334 = *(v16 + 88);
        v99 = *(v16 + 128);
        v100 = *(v16 + 112);
        v335 = *(v16 + 96);
        v336 = v100;
        v337 = v99;
        *(v16 + 88) = 0;
        LOBYTE(v338) = 0;
        v340 = 0;
        if (*(v16 + 160) == 1)
        {
          v101 = *(v16 + 136);
          v339 = *(v16 + 152);
          v338 = v101;
          *(v16 + 144) = 0;
          *(v16 + 152) = 0;
          *(v16 + 136) = 0;
          v340 = 1;
        }

        v102 = (v16 + 176);
        v103 = *(v16 + 176);
        v341 = *(v16 + 168);
        v342 = v103;
        v343 = *(v16 + 184);
        if (v343)
        {
          *(v103 + 16) = &v342;
          *(v16 + 168) = v102;
          *v102 = 0;
          *(v16 + 184) = 0;
        }

        else
        {
          v341 = &v342;
        }

        v344 = 0;
        v345 = 0;
        v346 = 0;
        v105 = *(v16 + 192);
        v104 = *(v16 + 200);
        if (v104 != v105)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v104 - v105) >> 4) <= 0x555555555555555)
          {
            operator new();
          }

          goto LABEL_295;
        }

        v106 = *a3;
        v347 = &v327 + 1;
        v107 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v106, &v327 + 1);
        if (!v107)
        {
          goto LABEL_288;
        }

        v108 = *(v107 + 5);
        v109 = *a3;
        v347 = (a2 - 204);
        v110 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v109, v315);
        v111 = a1;
        if (!v110)
        {
          goto LABEL_288;
        }

        if (v108 > *(v110 + 5))
        {
          v112 = a1;
          while (1)
          {
            v113 = v112 + 216;
            if (v112 + 216 == v26)
            {
              goto LABEL_288;
            }

            v114 = *a3;
            v347 = &v327 + 1;
            v115 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v114, &v327 + 1);
            if (!v115)
            {
              goto LABEL_288;
            }

            v116 = *(v115 + 5);
            v117 = *a3;
            v347 = (v112 + 228);
            v118 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v117, (v112 + 228));
            if (!v118)
            {
              goto LABEL_288;
            }

            v112 += 216;
            if (v116 > *(v118 + 5))
            {
              goto LABEL_111;
            }
          }
        }

        v119 = (a1 + 228);
        do
        {
          v113 = (v119 - 3);
          if ((v119 - 3) >= v26)
          {
            break;
          }

          v120 = *a3;
          v347 = &v327 + 1;
          v121 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v120, &v327 + 1);
          if (!v121)
          {
            goto LABEL_288;
          }

          v122 = *(v121 + 5);
          v123 = *a3;
          v347 = v119;
          v124 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v123, v119);
          if (!v124)
          {
            goto LABEL_288;
          }

          v119 += 54;
        }

        while (v122 <= *(v124 + 5));
        v111 = a1;
LABEL_111:
        v125 = v26;
        if (v113 < v26)
        {
          do
          {
            if (v26 == v111)
            {
              goto LABEL_288;
            }

            v126 = v26;
            v127 = *a3;
            v347 = &v327 + 1;
            v128 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v127, &v327 + 1);
            if (!v128)
            {
              goto LABEL_288;
            }

            v129 = *(v128 + 5);
            v130 = *a3;
            v347 = (v26 - 204);
            v131 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v130, (v26 - 204));
            if (!v131)
            {
              goto LABEL_288;
            }

            v26 -= 216;
            v111 = a1;
          }

          while (v129 > *(v131 + 5));
          v125 = v126 - 216;
        }

        if (v113 < v125)
        {
          while (1)
          {
            v132 = *(v113 + 8);
            v347 = &unk_288291428;
            v348 = v132;
            v133 = *(v113 + 32);
            v349 = *(v113 + 16);
            v350 = v133;
            *(v113 + 24) = 0;
            *(v113 + 32) = 0;
            *(v113 + 16) = 0;
            v351 = *(v113 + 40);
            LOBYTE(v352) = 0;
            v354 = 0;
            if (*(v113 + 80) == 1)
            {
              v134 = *(v113 + 56);
              v353 = *(v113 + 72);
              v352 = v134;
              *(v113 + 64) = 0;
              *(v113 + 72) = 0;
              *(v113 + 56) = 0;
              v354 = 1;
            }

            v355 = 0;
            v355 = *(v113 + 88);
            v135 = *(v113 + 128);
            v136 = *(v113 + 112);
            v356 = *(v113 + 96);
            v357 = v136;
            v358 = v135;
            *(v113 + 88) = 0;
            LOBYTE(v359) = 0;
            v361 = 0;
            if (*(v113 + 160) == 1)
            {
              v137 = *(v113 + 136);
              v360 = *(v113 + 152);
              v359 = v137;
              *(v113 + 144) = 0;
              *(v113 + 152) = 0;
              *(v113 + 136) = 0;
              v361 = 1;
            }

            v138 = (v113 + 176);
            v139 = *(v113 + 176);
            v362 = *(v113 + 168);
            v363 = v139;
            v364 = *(v113 + 184);
            if (v364)
            {
              *(v139 + 16) = &v363;
              *(v113 + 168) = v138;
              *v138 = 0;
              *(v113 + 184) = 0;
              v365 = 0;
              v366 = 0;
              v367 = 0;
              v141 = *(v113 + 192);
              v140 = *(v113 + 200);
              v142 = v140 - v141;
              if (v140 != v141)
              {
                goto LABEL_126;
              }
            }

            else
            {
              v362 = &v363;
              v365 = 0;
              v366 = 0;
              v367 = 0;
              v144 = *(v113 + 192);
              v143 = *(v113 + 200);
              v142 = v143 - v144;
              if (v143 != v144)
              {
LABEL_126:
                if (0xAAAAAAAAAAAAAAABLL * (v142 >> 4) <= 0x555555555555555)
                {
                  operator new();
                }

                goto LABEL_295;
              }
            }

            webrtc::Codec::operator=(v113, v125);
            webrtc::Codec::operator=(v125, &v347);
            webrtc::Codec::~Codec(&v347);
            do
            {
              v8 = v113 + 216;
              if (v113 + 216 == a2)
              {
                goto LABEL_288;
              }

              v145 = *a3;
              v347 = &v327 + 1;
              v146 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v145, &v327 + 1);
              if (!v146)
              {
                goto LABEL_288;
              }

              v147 = *(v146 + 5);
              v148 = *a3;
              v347 = (v113 + 228);
              v149 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v148, (v113 + 228));
              if (!v149)
              {
                goto LABEL_288;
              }

              v113 += 216;
            }

            while (v147 <= *(v149 + 5));
            do
            {
              if (v125 == a1)
              {
                goto LABEL_288;
              }

              v150 = v125;
              v151 = *a3;
              v347 = &v327 + 1;
              v152 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v151, &v327 + 1);
              if (!v152)
              {
                goto LABEL_288;
              }

              v153 = *(v152 + 5);
              v154 = *a3;
              v347 = (v125 - 204);
              v155 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v154, (v125 - 204));
              if (!v155)
              {
                goto LABEL_288;
              }

              v125 -= 216;
            }

            while (v153 > *(v155 + 5));
            v125 = v150 - 216;
            v113 = v8;
            if (v8 >= v150 - 216)
            {
              goto LABEL_140;
            }
          }
        }

        v8 = v113;
LABEL_140:
        if (v8 - 216 != a1)
        {
          webrtc::Codec::operator=(a1, v8 - 216);
        }

        webrtc::Codec::operator=(v8 - 216, &v326);
        webrtc::Codec::~Codec(&v326);
        a5 = 0;
        a4 = v319;
      }

      v34 = *(v16 + 8);
      v326 = &unk_288291428;
      v327 = v34;
      v35 = *(v16 + 32);
      v328 = *(v16 + 16);
      v329 = v35;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 16) = 0;
      v330 = *(v16 + 40);
      LOBYTE(v331) = 0;
      v333 = 0;
      if (*(v16 + 80) == 1)
      {
        v36 = *(v16 + 56);
        v332 = *(v16 + 72);
        v331 = v36;
        *(v16 + 64) = 0;
        *(v16 + 72) = 0;
        *(v16 + 56) = 0;
        v333 = 1;
      }

      v334 = 0;
      v334 = *(v16 + 88);
      v37 = *(v16 + 128);
      v38 = *(v16 + 112);
      v335 = *(v16 + 96);
      v336 = v38;
      v337 = v37;
      *(v16 + 88) = 0;
      LOBYTE(v338) = 0;
      v340 = 0;
      if (*(v16 + 160) == 1)
      {
        v39 = *(v16 + 136);
        v339 = *(v16 + 152);
        v338 = v39;
        *(v16 + 144) = 0;
        *(v16 + 152) = 0;
        *(v16 + 136) = 0;
        v340 = 1;
      }

      v40 = (v16 + 176);
      v41 = *(v16 + 176);
      v341 = *(v16 + 168);
      v342 = v41;
      v158 = *(v16 + 184);
      v343 = v158;
      if (v158)
      {
        v158 = &v342;
        *(v41 + 16) = &v342;
        *(v16 + 168) = v40;
        *v40 = 0;
        *(v16 + 184) = 0;
        v344 = 0;
        v345 = 0;
        v346 = 0;
        v43 = *(v16 + 192);
        v42 = *(v16 + 200);
        v44 = v42 - v43;
        if (v42 != v43)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v341 = &v342;
        v344 = 0;
        v345 = 0;
        v346 = 0;
        v46 = *(v16 + 192);
        v45 = *(v16 + 200);
        v44 = v45 - v46;
        if (v45 != v46)
        {
LABEL_38:
          if (0xAAAAAAAAAAAAAAABLL * (v44 >> 4) <= 0x555555555555555)
          {
            operator new();
          }

          goto LABEL_295;
        }
      }

      v47 = 0;
      do
      {
        v48 = v16 + v47;
        if (v16 + v47 + 216 == v26)
        {
          goto LABEL_288;
        }

        v49 = *a3;
        v347 = (v48 + 228);
        v50 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v49, (v48 + 228));
        if (!v50)
        {
          goto LABEL_288;
        }

        v51 = *(v50 + 5);
        v52 = *a3;
        v347 = &v327 + 1;
        v53 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v52, &v327 + 1);
        if (!v53)
        {
          goto LABEL_288;
        }

        v47 += 216;
      }

      while (v51 > *(v53 + 5));
      v320 = v16 + v47;
      v54 = v26;
      if (v47 == 216)
      {
        v62 = v16 + 216;
        while (v320 < v26)
        {
          v63 = *a3;
          v347 = (v26 - 204);
          v64 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v63, (v26 - 204));
          if (!v64)
          {
            goto LABEL_288;
          }

          v65 = *(v64 + 5);
          v66 = *a3;
          v347 = &v327 + 1;
          v67 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v66, &v327 + 1);
          if (!v67)
          {
            goto LABEL_288;
          }

          v26 -= 216;
          if (v65 > *(v67 + 5))
          {
            break;
          }
        }
      }

      else
      {
        do
        {
          if (v54 == v16)
          {
            goto LABEL_288;
          }

          v55 = v54;
          v56 = *a3;
          v57 = v54 - 204;
          v347 = (v54 - 204);
          v58 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v56, (v54 - 204));
          if (!v58)
          {
            goto LABEL_288;
          }

          v59 = *(v58 + 5);
          v60 = *a3;
          v347 = &v327 + 1;
          v61 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v60, &v327 + 1);
          if (!v61)
          {
            goto LABEL_288;
          }

          v54 = v57 - 12;
        }

        while (v59 <= *(v61 + 5));
        v26 = v55 - 216;
        v62 = v320;
      }

      v316 = v26;
      if (v62 >= v26)
      {
        v94 = v62 - 216;
        if (v62 - 216 == v16)
        {
          goto LABEL_82;
        }

LABEL_81:
        webrtc::Codec::operator=(v16, v94);
        goto LABEL_82;
      }

      v68 = v62;
      do
      {
        v69 = *(v68 + 8);
        v347 = &unk_288291428;
        v348 = v69;
        v70 = *(v68 + 32);
        v349 = *(v68 + 16);
        v350 = v70;
        *(v68 + 24) = 0;
        *(v68 + 32) = 0;
        *(v68 + 16) = 0;
        v351 = *(v68 + 40);
        LOBYTE(v352) = 0;
        v354 = 0;
        if (*(v68 + 80) == 1)
        {
          v71 = *(v68 + 56);
          v353 = *(v68 + 72);
          v352 = v71;
          *(v68 + 64) = 0;
          *(v68 + 72) = 0;
          *(v68 + 56) = 0;
          v354 = 1;
        }

        v355 = *(v68 + 88);
        v72 = *(v68 + 128);
        v73 = *(v68 + 112);
        v356 = *(v68 + 96);
        v357 = v73;
        v358 = v72;
        *(v68 + 88) = 0;
        LOBYTE(v359) = 0;
        v361 = 0;
        if (*(v68 + 160) == 1)
        {
          v74 = *(v68 + 136);
          v360 = *(v68 + 152);
          v359 = v74;
          *(v68 + 144) = 0;
          *(v68 + 152) = 0;
          *(v68 + 136) = 0;
          v361 = 1;
        }

        v75 = (v68 + 176);
        v76 = *(v68 + 176);
        v362 = *(v68 + 168);
        v363 = v76;
        v364 = *(v68 + 184);
        if (v364)
        {
          *(v76 + 16) = &v363;
          *(v68 + 168) = v75;
          *v75 = 0;
          *(v68 + 184) = 0;
          v365 = 0;
          v366 = 0;
          v367 = 0;
          v77 = *(v68 + 192);
          v78 = *(v68 + 200);
          v79 = v78 - v77;
          if (v78 != v77)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v362 = &v363;
          v365 = 0;
          v366 = 0;
          v367 = 0;
          v80 = *(v68 + 192);
          v81 = *(v68 + 200);
          v79 = v81 - v80;
          if (v81 != v80)
          {
LABEL_66:
            if (0xAAAAAAAAAAAAAAABLL * (v79 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

            goto LABEL_295;
          }
        }

        webrtc::Codec::operator=(v68, v26);
        webrtc::Codec::operator=(v26, &v347);
        webrtc::Codec::~Codec(&v347);
        v7 = &v347;
        do
        {
          v82 = v68 + 216;
          if (v68 + 216 == a2)
          {
            goto LABEL_288;
          }

          v83 = *a3;
          v347 = (v68 + 228);
          v84 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v83, (v68 + 228));
          if (!v84)
          {
            goto LABEL_288;
          }

          v85 = *(v84 + 5);
          v86 = *a3;
          v347 = &v327 + 1;
          v87 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v86, &v327 + 1);
          if (!v87)
          {
            goto LABEL_288;
          }

          v68 += 216;
        }

        while (v85 > *(v87 + 5));
        do
        {
          if (v26 == a1)
          {
            goto LABEL_288;
          }

          v88 = v26;
          v89 = *a3;
          v347 = (v26 - 204);
          v90 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v89, (v26 - 204));
          if (!v90)
          {
            goto LABEL_288;
          }

          v91 = *(v90 + 5);
          v92 = *a3;
          v347 = &v327 + 1;
          v93 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v92, &v327 + 1);
          if (!v93)
          {
            goto LABEL_288;
          }

          v26 -= 216;
        }

        while (v91 <= *(v93 + 5));
        v26 = v88 - 216;
        v68 = v82;
      }

      while (v82 < v88 - 216);
      v94 = v82 - 216;
      v16 = a1;
      a4 = v319;
      if (v94 != a1)
      {
        goto LABEL_81;
      }

LABEL_82:
      webrtc::Codec::operator=(v94, &v326);
      webrtc::Codec::~Codec(&v326);
      if (v320 < v316)
      {
        goto LABEL_85;
      }

      v8 = v94 + 216;
      {
        break;
      }

      if (!v95)
      {
LABEL_85:
        a5 = 0;
        v8 = v94 + 216;
      }
    }

    a2 = v94;
    if (!v95)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NegotiateCodecs(webrtc::CodecList const&,webrtc::CodecList const&,webrtc::CodecList&,BOOL)::$_0 &,webrtc::Codec *,0>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = (a2 + 12);
  v83 = (a2 + 12);
  v10 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v8, (a2 + 12));
  if (!v10)
  {
    goto LABEL_71;
  }

  v11 = *(v10 + 5);
  v12 = *a4;
  v83 = (a1 + 12);
  v13 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v12, (a1 + 12));
  if (!v13)
  {
    goto LABEL_71;
  }

  v14 = *(v13 + 5);
  v15 = *a4;
  v16 = (a3 + 12);
  if (v11 <= v14)
  {
    v83 = (a3 + 12);
    v28 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v15, (a3 + 12));
    if (!v28)
    {
      goto LABEL_71;
    }

    v29 = *(v28 + 5);
    v30 = *a4;
    v83 = v9;
    v31 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v30, v9);
    if (!v31)
    {
      goto LABEL_71;
    }

    if (v29 <= *(v31 + 5))
    {
      return;
    }

    v32 = *(a2 + 8);
    v83 = &unk_288291428;
    v84 = v32;
    v85 = *(a2 + 16);
    v86 = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v87 = *(a2 + 40);
    LOBYTE(v88) = 0;
    v90 = 0;
    if (*(a2 + 80) == 1)
    {
      v88 = *(a2 + 56);
      v89 = *(a2 + 72);
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 56) = 0;
      v90 = 1;
    }

    v91 = *(a2 + 88);
    v33 = *(a2 + 112);
    v92 = *(a2 + 96);
    v93 = v33;
    v94 = *(a2 + 128);
    *(a2 + 88) = 0;
    LOBYTE(v95) = 0;
    v97 = 0;
    if (*(a2 + 160) == 1)
    {
      v95 = *(a2 + 136);
      v96 = *(a2 + 152);
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 136) = 0;
      v97 = 1;
    }

    v34 = (a2 + 176);
    v35 = *(a2 + 176);
    v98 = *(a2 + 168);
    v99 = v35;
    v100 = *(a2 + 184);
    v81 = a3;
    if (v100)
    {
      *(v35 + 16) = &v99;
      *(a2 + 168) = v34;
      *v34 = 0;
      *(a2 + 184) = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v37 = *(a2 + 192);
      v36 = *(a2 + 200);
      v38 = v36 - v37;
      if (v36 == v37)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v98 = &v99;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v50 = *(a2 + 192);
      v49 = *(a2 + 200);
      v38 = v49 - v50;
      if (v49 == v50)
      {
LABEL_38:
        webrtc::Codec::operator=(a2, v81);
        webrtc::Codec::operator=(v81, &v83);
        webrtc::Codec::~Codec(&v83);
        v51 = *a4;
        v83 = v9;
        v52 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v51, v9);
        if (!v52)
        {
          goto LABEL_71;
        }

        v53 = *(v52 + 5);
        v54 = *a4;
        v83 = (a1 + 12);
        v55 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v54, (a1 + 12));
        if (!v55)
        {
          goto LABEL_71;
        }

        if (v53 <= *(v55 + 5))
        {
          return;
        }

        v56 = *(a1 + 8);
        v83 = &unk_288291428;
        v84 = v56;
        v85 = *(a1 + 16);
        v86 = *(a1 + 32);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v87 = *(a1 + 40);
        LOBYTE(v88) = 0;
        v90 = 0;
        if (*(a1 + 80) == 1)
        {
          v88 = *(a1 + 56);
          v89 = *(a1 + 72);
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          *(a1 + 56) = 0;
          v90 = 1;
        }

        v91 = *(a1 + 88);
        v57 = *(a1 + 112);
        v92 = *(a1 + 96);
        v93 = v57;
        v94 = *(a1 + 128);
        *(a1 + 88) = 0;
        LOBYTE(v95) = 0;
        v97 = 0;
        if (*(a1 + 160) == 1)
        {
          v95 = *(a1 + 136);
          v96 = *(a1 + 152);
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 136) = 0;
          v97 = 1;
        }

        v58 = (a1 + 176);
        v59 = *(a1 + 176);
        v98 = *(a1 + 168);
        v99 = v59;
        v100 = *(a1 + 184);
        if (v100)
        {
          *(v59 + 16) = &v99;
          *(a1 + 168) = v58;
          *v58 = 0;
          *(a1 + 184) = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v60 = *(a1 + 192);
          v61 = *(a1 + 200);
          v62 = v61 - v60;
          if (v61 == v60)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v98 = &v99;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v77 = *(a1 + 192);
          v78 = *(a1 + 200);
          v62 = v78 - v77;
          if (v78 == v77)
          {
LABEL_64:
            webrtc::Codec::operator=(a1, a2);
            v48 = a2;
            goto LABEL_69;
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * (v62 >> 4) <= 0x555555555555555)
        {
          operator new();
        }

        goto LABEL_72;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v38 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_72;
  }

  v83 = (a3 + 12);
  v17 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v15, (a3 + 12));
  if (!v17)
  {
    goto LABEL_71;
  }

  v18 = *(v17 + 5);
  v19 = *a4;
  v83 = v9;
  v20 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v19, v9);
  if (!v20)
  {
    goto LABEL_71;
  }

  if (v18 <= *(v20 + 5))
  {
    v39 = *(a1 + 8);
    v83 = &unk_288291428;
    v84 = v39;
    v85 = *(a1 + 16);
    v86 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v87 = *(a1 + 40);
    LOBYTE(v88) = 0;
    v90 = 0;
    if (*(a1 + 80) == 1)
    {
      v88 = *(a1 + 56);
      v89 = *(a1 + 72);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = 0;
      v90 = 1;
    }

    v91 = *(a1 + 88);
    v40 = *(a1 + 112);
    v92 = *(a1 + 96);
    v93 = v40;
    v94 = *(a1 + 128);
    *(a1 + 88) = 0;
    LOBYTE(v95) = 0;
    v97 = 0;
    if (*(a1 + 160) == 1)
    {
      v95 = *(a1 + 136);
      v96 = *(a1 + 152);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 136) = 0;
      v97 = 1;
    }

    v41 = (a1 + 176);
    v42 = *(a1 + 176);
    v98 = *(a1 + 168);
    v99 = v42;
    v100 = *(a1 + 184);
    v82 = a3;
    if (v100)
    {
      *(v42 + 16) = &v99;
      *(a1 + 168) = v41;
      *v41 = 0;
      *(a1 + 184) = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v44 = *(a1 + 192);
      v43 = *(a1 + 200);
      v45 = v43 - v44;
      if (v43 == v44)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v98 = &v99;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v64 = *(a1 + 192);
      v63 = *(a1 + 200);
      v45 = v63 - v64;
      if (v63 == v64)
      {
LABEL_51:
        webrtc::Codec::operator=(a1, a2);
        webrtc::Codec::operator=(a2, &v83);
        webrtc::Codec::~Codec(&v83);
        v65 = *a4;
        v83 = v16;
        v66 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v65, v16);
        if (v66)
        {
          v67 = *(v66 + 5);
          v68 = *a4;
          v83 = v9;
          v69 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v68, v9);
          if (v69)
          {
            if (v67 <= *(v69 + 5))
            {
              return;
            }

            v70 = *(a2 + 8);
            v83 = &unk_288291428;
            v84 = v70;
            v85 = *(a2 + 16);
            v86 = *(a2 + 32);
            *(a2 + 16) = 0;
            *(a2 + 24) = 0;
            *(a2 + 32) = 0;
            v87 = *(a2 + 40);
            LOBYTE(v88) = 0;
            v90 = 0;
            if (*(a2 + 80) == 1)
            {
              v88 = *(a2 + 56);
              v89 = *(a2 + 72);
              *(a2 + 64) = 0;
              *(a2 + 72) = 0;
              *(a2 + 56) = 0;
              v90 = 1;
            }

            v91 = *(a2 + 88);
            v71 = *(a2 + 112);
            v92 = *(a2 + 96);
            v93 = v71;
            v94 = *(a2 + 128);
            *(a2 + 88) = 0;
            LOBYTE(v95) = 0;
            v97 = 0;
            if (*(a2 + 160) == 1)
            {
              v95 = *(a2 + 136);
              v96 = *(a2 + 152);
              *(a2 + 144) = 0;
              *(a2 + 152) = 0;
              *(a2 + 136) = 0;
              v97 = 1;
            }

            v72 = (a2 + 176);
            v73 = *(a2 + 176);
            v98 = *(a2 + 168);
            v99 = v73;
            v100 = *(a2 + 184);
            if (v100)
            {
              *(v73 + 16) = &v99;
              *(a2 + 168) = v72;
              *v72 = 0;
              *(a2 + 184) = 0;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v75 = *(a2 + 192);
              v74 = *(a2 + 200);
              v76 = v74 - v75;
              if (v74 == v75)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v98 = &v99;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v80 = *(a2 + 192);
              v79 = *(a2 + 200);
              v76 = v79 - v80;
              if (v79 == v80)
              {
LABEL_68:
                webrtc::Codec::operator=(a2, v82);
                v48 = v82;
                goto LABEL_69;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * (v76 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

LABEL_72:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

LABEL_71:
        __break(1u);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v45 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_72;
  }

  v21 = *(a1 + 8);
  v83 = &unk_288291428;
  v84 = v21;
  v85 = *(a1 + 16);
  v86 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v87 = *(a1 + 40);
  LOBYTE(v88) = 0;
  v90 = 0;
  if (*(a1 + 80) == 1)
  {
    v88 = *(a1 + 56);
    v89 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    v90 = 1;
  }

  v91 = *(a1 + 88);
  v22 = *(a1 + 112);
  v92 = *(a1 + 96);
  v93 = v22;
  v94 = *(a1 + 128);
  *(a1 + 88) = 0;
  LOBYTE(v95) = 0;
  v97 = 0;
  if (*(a1 + 160) == 1)
  {
    v95 = *(a1 + 136);
    v96 = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    v97 = 1;
  }

  v23 = (a1 + 176);
  v24 = *(a1 + 176);
  v98 = *(a1 + 168);
  v99 = v24;
  v100 = *(a1 + 184);
  if (v100)
  {
    *(v24 + 16) = &v99;
    *(a1 + 168) = v23;
    *v23 = 0;
    *(a1 + 184) = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v26 = *(a1 + 192);
    v25 = *(a1 + 200);
    v27 = v25 - v26;
    if (v25 == v26)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v98 = &v99;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v47 = *(a1 + 192);
  v46 = *(a1 + 200);
  v27 = v46 - v47;
  if (v46 != v47)
  {
LABEL_32:
    if (0xAAAAAAAAAAAAAAABLL * (v27 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_72;
  }

LABEL_34:
  webrtc::Codec::operator=(a1, a3);
  v48 = a3;
LABEL_69:
  webrtc::Codec::operator=(v48, &v83);
  webrtc::Codec::~Codec(&v83);
}

void std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NegotiateCodecs(webrtc::CodecList const&,webrtc::CodecList const&,webrtc::CodecList&,BOOL)::$_0 &,webrtc::Codec *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v53 = (a4 + 12);
  v11 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v10, (a4 + 12));
  if (!v11 || (v12 = *(v11 + 5), v13 = *a5, v53 = (a3 + 12), (v14 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v13, (a3 + 12))) == 0))
  {
LABEL_42:
    __break(1u);
  }

  if (v12 <= *(v14 + 5))
  {
    return;
  }

  v15 = *(a3 + 8);
  v53 = &unk_288291428;
  v54 = v15;
  v55 = *(a3 + 16);
  v56 = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v57 = *(a3 + 40);
  LOBYTE(v58) = 0;
  v60 = 0;
  if (*(a3 + 80) == 1)
  {
    v58 = *(a3 + 56);
    v59 = *(a3 + 72);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    v60 = 1;
  }

  v61 = *(a3 + 88);
  v16 = *(a3 + 112);
  v62 = *(a3 + 96);
  v63 = v16;
  v64 = *(a3 + 128);
  *(a3 + 88) = 0;
  LOBYTE(v65) = 0;
  v67 = 0;
  if (*(a3 + 160) == 1)
  {
    v65 = *(a3 + 136);
    v66 = *(a3 + 152);
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0;
    v67 = 1;
  }

  v17 = (a3 + 176);
  v18 = *(a3 + 176);
  v68 = *(a3 + 168);
  v69 = v18;
  v70 = *(a3 + 184);
  v52 = a1;
  if (v70)
  {
    *(v18 + 16) = &v69;
    *(a3 + 168) = v17;
    *v17 = 0;
    *(a3 + 184) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v19 = *(a3 + 192);
    v20 = *(a3 + 200);
    v21 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (0xAAAAAAAAAAAAAAABLL * (v21 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

LABEL_43:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v68 = &v69;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v22 = *(a3 + 192);
  v23 = *(a3 + 200);
  v21 = v23 - v22;
  if (v23 != v22)
  {
    goto LABEL_12;
  }

LABEL_14:
  webrtc::Codec::operator=(a3, a4);
  webrtc::Codec::operator=(a4, &v53);
  webrtc::Codec::~Codec(&v53);
  v24 = *a5;
  v53 = (a3 + 12);
  v25 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v24, (a3 + 12));
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = *(v25 + 5);
  v27 = *a5;
  v53 = (a2 + 12);
  v28 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v27, (a2 + 12));
  if (!v28)
  {
    goto LABEL_42;
  }

  if (v26 <= *(v28 + 5))
  {
    return;
  }

  v29 = *(a2 + 8);
  v53 = &unk_288291428;
  v54 = v29;
  v55 = *(a2 + 16);
  v56 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v57 = *(a2 + 40);
  LOBYTE(v58) = 0;
  v60 = 0;
  if (*(a2 + 80) == 1)
  {
    v58 = *(a2 + 56);
    v59 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v60 = 1;
  }

  v61 = *(a2 + 88);
  v30 = *(a2 + 112);
  v62 = *(a2 + 96);
  v63 = v30;
  v64 = *(a2 + 128);
  *(a2 + 88) = 0;
  LOBYTE(v65) = 0;
  v67 = 0;
  if (*(a2 + 160) == 1)
  {
    v65 = *(a2 + 136);
    v66 = *(a2 + 152);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v67 = 1;
  }

  v31 = (a2 + 176);
  v32 = *(a2 + 176);
  v68 = *(a2 + 168);
  v69 = v32;
  v70 = *(a2 + 184);
  if (v70)
  {
    *(v32 + 16) = &v69;
    *(a2 + 168) = v31;
    *v31 = 0;
    *(a2 + 184) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v33 = *(a2 + 192);
    v34 = *(a2 + 200);
    v35 = v34 - v33;
    if (v34 == v33)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v68 = &v69;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v36 = *(a2 + 192);
  v37 = *(a2 + 200);
  v35 = v37 - v36;
  if (v37 != v36)
  {
LABEL_25:
    if (0xAAAAAAAAAAAAAAABLL * (v35 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_43;
  }

LABEL_27:
  webrtc::Codec::operator=(a2, a3);
  webrtc::Codec::operator=(a3, &v53);
  webrtc::Codec::~Codec(&v53);
  v38 = *a5;
  v53 = (a2 + 12);
  v39 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v38, (a2 + 12));
  if (!v39)
  {
    goto LABEL_42;
  }

  v40 = *(v39 + 5);
  v41 = *a5;
  v53 = (v52 + 12);
  v42 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v41, (v52 + 12));
  if (!v42)
  {
    goto LABEL_42;
  }

  if (v40 <= *(v42 + 5))
  {
    return;
  }

  v43 = *(v52 + 8);
  v53 = &unk_288291428;
  v54 = v43;
  v55 = *(v52 + 16);
  v56 = *(v52 + 32);
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  v57 = *(v52 + 40);
  LOBYTE(v58) = 0;
  v60 = 0;
  if (*(v52 + 80) == 1)
  {
    v58 = *(v52 + 56);
    v59 = *(v52 + 72);
    *(v52 + 64) = 0;
    *(v52 + 72) = 0;
    *(v52 + 56) = 0;
    v60 = 1;
  }

  v61 = *(v52 + 88);
  v44 = *(v52 + 112);
  v62 = *(v52 + 96);
  v63 = v44;
  v64 = *(v52 + 128);
  *(v52 + 88) = 0;
  LOBYTE(v65) = 0;
  v67 = 0;
  if (*(v52 + 160) == 1)
  {
    v65 = *(v52 + 136);
    v66 = *(v52 + 152);
    *(v52 + 144) = 0;
    *(v52 + 152) = 0;
    *(v52 + 136) = 0;
    v67 = 1;
  }

  v45 = (v52 + 176);
  v46 = *(v52 + 176);
  v68 = *(v52 + 168);
  v69 = v46;
  v70 = *(v52 + 184);
  if (v70)
  {
    *(v46 + 16) = &v69;
    *(v52 + 168) = v45;
    *v45 = 0;
    *(v52 + 184) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v47 = *(v52 + 192);
    v48 = *(v52 + 200);
    v49 = v48 - v47;
    if (v48 == v47)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v68 = &v69;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v50 = *(v52 + 192);
  v51 = *(v52 + 200);
  v49 = v51 - v50;
  if (v51 != v50)
  {
LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * (v49 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_43;
  }

LABEL_40:
  webrtc::Codec::operator=(v52, a2);
  webrtc::Codec::operator=(a2, &v53);
  webrtc::Codec::~Codec(&v53);
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NegotiateCodecs(webrtc::CodecList const&,webrtc::CodecList const&,webrtc::CodecList&,BOOL)::$_0 &,webrtc::Codec *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v12 = *a6;
  v70 = (a5 + 12);
  v13 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v12, (a5 + 12));
  if (!v13 || (v14 = *(v13 + 5), v15 = *a6, v70 = (a4 + 12), (v16 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v15, (a4 + 12))) == 0))
  {
LABEL_55:
    __break(1u);
  }

  if (v14 <= *(v16 + 5))
  {
    return;
  }

  v17 = *(a4 + 8);
  v70 = &unk_288291428;
  v71 = v17;
  v72 = *(a4 + 16);
  v73 = *(a4 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v74 = *(a4 + 40);
  LOBYTE(v75) = 0;
  v77 = 0;
  if (*(a4 + 80) == 1)
  {
    v75 = *(a4 + 56);
    v76 = *(a4 + 72);
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 56) = 0;
    v77 = 1;
  }

  v78 = *(a4 + 88);
  v18 = *(a4 + 112);
  v79 = *(a4 + 96);
  v80 = v18;
  v81 = *(a4 + 128);
  *(a4 + 88) = 0;
  LOBYTE(v82) = 0;
  v84 = 0;
  if (*(a4 + 160) == 1)
  {
    v82 = *(a4 + 136);
    v83 = *(a4 + 152);
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 136) = 0;
    v84 = 1;
  }

  v19 = (a4 + 176);
  v20 = *(a4 + 176);
  v85 = *(a4 + 168);
  v86 = v20;
  v87 = *(a4 + 184);
  v69 = a2;
  if (v87)
  {
    *(v20 + 16) = &v86;
    *(a4 + 168) = v19;
    *v19 = 0;
    *(a4 + 184) = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v21 = *(a4 + 192);
    v22 = *(a4 + 200);
    v23 = v22 - v21;
    v68 = a1;
    if (v22 == v21)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (0xAAAAAAAAAAAAAAABLL * (v23 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

LABEL_56:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v85 = &v86;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v24 = *(a4 + 192);
  v25 = *(a4 + 200);
  v23 = v25 - v24;
  v68 = a1;
  if (v25 != v24)
  {
    goto LABEL_12;
  }

LABEL_14:
  webrtc::Codec::operator=(a4, a5);
  webrtc::Codec::operator=(a5, &v70);
  webrtc::Codec::~Codec(&v70);
  v26 = *a6;
  v70 = (a4 + 12);
  v27 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v26, (a4 + 12));
  if (!v27)
  {
    goto LABEL_55;
  }

  v28 = *(v27 + 5);
  v29 = *a6;
  v70 = (a3 + 12);
  v30 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v29, (a3 + 12));
  if (!v30)
  {
    goto LABEL_55;
  }

  if (v28 <= *(v30 + 5))
  {
    return;
  }

  v31 = *(a3 + 8);
  v70 = &unk_288291428;
  v71 = v31;
  v72 = *(a3 + 16);
  v73 = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v74 = *(a3 + 40);
  LOBYTE(v75) = 0;
  v77 = 0;
  if (*(a3 + 80) == 1)
  {
    v75 = *(a3 + 56);
    v76 = *(a3 + 72);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    v77 = 1;
  }

  v78 = *(a3 + 88);
  v32 = *(a3 + 112);
  v79 = *(a3 + 96);
  v80 = v32;
  v81 = *(a3 + 128);
  *(a3 + 88) = 0;
  LOBYTE(v82) = 0;
  v84 = 0;
  if (*(a3 + 160) == 1)
  {
    v82 = *(a3 + 136);
    v83 = *(a3 + 152);
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0;
    v84 = 1;
  }

  v33 = (a3 + 176);
  v34 = *(a3 + 176);
  v85 = *(a3 + 168);
  v86 = v34;
  v87 = *(a3 + 184);
  if (v87)
  {
    *(v34 + 16) = &v86;
    *(a3 + 168) = v33;
    *v33 = 0;
    *(a3 + 184) = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v35 = *(a3 + 192);
    v36 = *(a3 + 200);
    v37 = v36 - v35;
    if (v36 == v35)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v85 = &v86;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v38 = *(a3 + 192);
  v39 = *(a3 + 200);
  v37 = v39 - v38;
  if (v39 != v38)
  {
LABEL_25:
    if (0xAAAAAAAAAAAAAAABLL * (v37 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_56;
  }

LABEL_27:
  webrtc::Codec::operator=(a3, a4);
  webrtc::Codec::operator=(a4, &v70);
  webrtc::Codec::~Codec(&v70);
  v40 = *a6;
  v70 = (a3 + 12);
  v41 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v40, (a3 + 12));
  if (!v41)
  {
    goto LABEL_55;
  }

  v42 = *(v41 + 5);
  v43 = *a6;
  v70 = (v69 + 12);
  v44 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v43, (v69 + 12));
  if (!v44)
  {
    goto LABEL_55;
  }

  if (v42 <= *(v44 + 5))
  {
    return;
  }

  v45 = *(v69 + 8);
  v70 = &unk_288291428;
  v71 = v45;
  v72 = *(v69 + 16);
  v73 = *(v69 + 32);
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  v74 = *(v69 + 40);
  LOBYTE(v75) = 0;
  v77 = 0;
  if (*(v69 + 80) == 1)
  {
    v75 = *(v69 + 56);
    v76 = *(v69 + 72);
    *(v69 + 64) = 0;
    *(v69 + 72) = 0;
    *(v69 + 56) = 0;
    v77 = 1;
  }

  v78 = *(v69 + 88);
  v46 = *(v69 + 112);
  v79 = *(v69 + 96);
  v80 = v46;
  v81 = *(v69 + 128);
  *(v69 + 88) = 0;
  LOBYTE(v82) = 0;
  v84 = 0;
  if (*(v69 + 160) == 1)
  {
    v82 = *(v69 + 136);
    v83 = *(v69 + 152);
    *(v69 + 144) = 0;
    *(v69 + 152) = 0;
    *(v69 + 136) = 0;
    v84 = 1;
  }

  v47 = (v69 + 176);
  v48 = *(v69 + 176);
  v85 = *(v69 + 168);
  v86 = v48;
  v87 = *(v69 + 184);
  if (v87)
  {
    *(v48 + 16) = &v86;
    *(v69 + 168) = v47;
    *v47 = 0;
    *(v69 + 184) = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v49 = *(v69 + 192);
    v50 = *(v69 + 200);
    v51 = v50 - v49;
    if (v50 == v49)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v85 = &v86;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v52 = *(v69 + 192);
  v53 = *(v69 + 200);
  v51 = v53 - v52;
  if (v53 != v52)
  {
LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * (v51 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_56;
  }

LABEL_40:
  webrtc::Codec::operator=(v69, a3);
  webrtc::Codec::operator=(a3, &v70);
  webrtc::Codec::~Codec(&v70);
  v54 = *a6;
  v70 = (v69 + 12);
  v55 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v54, (v69 + 12));
  if (!v55)
  {
    goto LABEL_55;
  }

  v56 = *(v55 + 5);
  v57 = *a6;
  v70 = (v68 + 12);
  v58 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v57, (v68 + 12));
  if (!v58)
  {
    goto LABEL_55;
  }

  if (v56 <= *(v58 + 5))
  {
    return;
  }

  v59 = *(v68 + 8);
  v70 = &unk_288291428;
  v71 = v59;
  v72 = *(v68 + 16);
  v73 = *(v68 + 32);
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  v74 = *(v68 + 40);
  LOBYTE(v75) = 0;
  v77 = 0;
  if (*(v68 + 80) == 1)
  {
    v75 = *(v68 + 56);
    v76 = *(v68 + 72);
    *(v68 + 64) = 0;
    *(v68 + 72) = 0;
    *(v68 + 56) = 0;
    v77 = 1;
  }

  v78 = *(v68 + 88);
  v60 = *(v68 + 112);
  v79 = *(v68 + 96);
  v80 = v60;
  v81 = *(v68 + 128);
  *(v68 + 88) = 0;
  LOBYTE(v82) = 0;
  v84 = 0;
  if (*(v68 + 160) == 1)
  {
    v82 = *(v68 + 136);
    v83 = *(v68 + 152);
    *(v68 + 144) = 0;
    *(v68 + 152) = 0;
    *(v68 + 136) = 0;
    v84 = 1;
  }

  v61 = (v68 + 176);
  v62 = *(v68 + 176);
  v85 = *(v68 + 168);
  v86 = v62;
  v87 = *(v68 + 184);
  if (v87)
  {
    *(v62 + 16) = &v86;
    *(v68 + 168) = v61;
    *v61 = 0;
    *(v68 + 184) = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v63 = *(v68 + 192);
    v64 = *(v68 + 200);
    v65 = v64 - v63;
    if (v64 == v63)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v85 = &v86;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v66 = *(v68 + 192);
  v67 = *(v68 + 200);
  v65 = v67 - v66;
  if (v67 != v66)
  {
LABEL_51:
    if (0xAAAAAAAAAAAAAAABLL * (v65 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_56;
  }

LABEL_53:
  webrtc::Codec::operator=(v68, v69);
  webrtc::Codec::operator=(v69, &v70);
  webrtc::Codec::~Codec(&v70);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NegotiateCodecs(webrtc::CodecList const&,webrtc::CodecList const&,webrtc::CodecList&,BOOL)::$_0 &,webrtc::Codec *>(uint64_t a1, uint64_t a2, void **a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v45 = (a2 - 204);
    v8 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v7, (a2 - 204));
    if (!v8 || (v9 = *(v8 + 5), v10 = *a3, v45 = (a1 + 12), (v11 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v10, (a1 + 12))) == 0))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v9 <= *(v11 + 5))
    {
      return 1;
    }

    v12 = *(a1 + 8);
    v45 = &unk_288291428;
    v46 = v12;
    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v49 = *(a1 + 40);
    LOBYTE(v50) = 0;
    v52 = 0;
    if (*(a1 + 80) == 1)
    {
      v50 = *(a1 + 56);
      v51 = *(a1 + 72);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = 0;
      v52 = 1;
    }

    v53 = *(a1 + 88);
    v13 = *(a1 + 112);
    v54 = *(a1 + 96);
    v55 = v13;
    v56 = *(a1 + 128);
    *(a1 + 88) = 0;
    LOBYTE(v57) = 0;
    v59 = 0;
    if (*(a1 + 160) == 1)
    {
      v57 = *(a1 + 136);
      v58 = *(a1 + 152);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 136) = 0;
      v59 = 1;
    }

    v14 = (a1 + 176);
    v15 = *(a1 + 176);
    v60 = *(a1 + 168);
    v61 = v15;
    v62 = *(a1 + 184);
    if (v62)
    {
      *(v15 + 16) = &v61;
      *(a1 + 168) = v14;
      *v14 = 0;
      *(a1 + 184) = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v16 = *(a1 + 192);
      v17 = *(a1 + 200);
      v18 = v17 - v16;
      if (v17 == v16)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v60 = &v61;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v41 = *(a1 + 192);
      v42 = *(a1 + 200);
      v18 = v42 - v41;
      if (v42 == v41)
      {
LABEL_48:
        webrtc::Codec::operator=(a1, a2 - 216);
        webrtc::Codec::operator=(a2 - 216, &v45);
        webrtc::Codec::~Codec(&v45);
        return 1;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v18 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_53;
  }

LABEL_19:
  v19 = a1 + 432;
  v20 = a1 + 648;
  result = 1;
  if (a1 + 648 != a2)
  {
    v44 = 0;
    v43 = 0;
    while (1)
    {
      v22 = *a3;
      v45 = (v20 + 12);
      v23 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v22, (v20 + 12));
      if (!v23)
      {
        goto LABEL_52;
      }

      v24 = *(v23 + 5);
      v25 = *a3;
      v45 = (v19 + 12);
      v26 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v25, (v19 + 12));
      if (!v26)
      {
        goto LABEL_52;
      }

      if (v24 > *(v26 + 5))
      {
        v27 = *(v20 + 8);
        v45 = &unk_288291428;
        v46 = v27;
        v47 = *(v20 + 16);
        v48 = *(v20 + 32);
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        v49 = *(v20 + 40);
        LOBYTE(v50) = 0;
        v52 = 0;
        if (*(v20 + 80) == 1)
        {
          v50 = *(v20 + 56);
          v51 = *(v20 + 72);
          *(v20 + 64) = 0;
          *(v20 + 72) = 0;
          *(v20 + 56) = 0;
          v52 = 1;
        }

        v53 = *(v20 + 88);
        v28 = *(v20 + 112);
        v54 = *(v20 + 96);
        v55 = v28;
        v56 = *(v20 + 128);
        *(v20 + 88) = 0;
        LOBYTE(v57) = 0;
        v59 = 0;
        if (*(v20 + 160) == 1)
        {
          v57 = *(v20 + 136);
          v58 = *(v20 + 152);
          *(v20 + 144) = 0;
          *(v20 + 152) = 0;
          *(v20 + 136) = 0;
          v59 = 1;
        }

        v29 = (v20 + 176);
        v30 = *(v20 + 176);
        v60 = *(v20 + 168);
        v61 = v30;
        v62 = *(v20 + 184);
        if (v62)
        {
          *(v30 + 16) = &v61;
          *(v20 + 168) = v29;
          *v29 = 0;
          *(v20 + 184) = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v32 = *(v20 + 192);
          v31 = *(v20 + 200);
          v33 = v31 - v32;
          if (v31 != v32)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v60 = &v61;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v35 = *(v20 + 192);
          v34 = *(v20 + 200);
          v33 = v34 - v35;
          if (v34 != v35)
          {
LABEL_33:
            if (0xAAAAAAAAAAAAAAABLL * (v33 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

LABEL_53:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        v36 = v44;
        while (1)
        {
          webrtc::Codec::operator=(a1 + v36 + 648, a1 + v36 + 432);
          if (v36 == -432)
          {
            break;
          }

          v37 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(*a3, &v46 + 1);
          if (!v37)
          {
            goto LABEL_52;
          }

          v38 = *(v37 + 5);
          v39 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(*a3, (a1 + v36 + 228));
          if (!v39)
          {
            goto LABEL_52;
          }

          v36 -= 216;
          if (v38 <= *(v39 + 5))
          {
            v40 = a1 + v36 + 648;
            goto LABEL_42;
          }
        }

        v40 = a1;
LABEL_42:
        webrtc::Codec::operator=(v40, &v45);
        if (v43 == 7)
        {
          webrtc::Codec::~Codec(&v45);
          return v20 + 216 == a2;
        }

        ++v43;
        webrtc::Codec::~Codec(&v45);
      }

      v19 = v20;
      v44 += 216;
      v20 += 216;
      if (v20 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 webrtc::ColorSpace::ColorSpace(__n128 *this, const ColorSpace *a2)
{
  *this = *&a2->var0;
  result = *&a2->var6.var0.var0;
  v3 = *&a2->var6.var0.var1.var0.var2.var0;
  v4 = *&a2->var6.var0.var1.var0.var4;
  this[4].n128_u8[0] = a2->var6.var1;
  this[2] = v3;
  this[3] = v4;
  this[1] = result;
  return result;
}

uint64_t webrtc::ComfortNoise::UpdateParameters(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 16) + 88))(*(a1 + 16), *(a2 + 6)))
  {
    return 1;
  }

  v5 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  if (!v7)
  {
    v6 = 0;
  }

  if (v7 >= 0xD)
  {
    LODWORD(v7) = 13;
  }

  *(v5 + 116) = v7 - 1;
  v8 = *v6;
  if (v8 >= 0x5D)
  {
    v8 = 93;
  }

  if (v7 == 1)
  {
    LODWORD(v11) = 0;
  }

  else if (v7 == 13)
  {
    v9 = 0;
    v10 = v6 + 1;
    do
    {
      *(v5 + 12 + 2 * v9) = v10[v9] << 8;
      v11 = *(v5 + 116);
      ++v9;
    }

    while (v9 < v11);
    if (v11 > 0xB)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = v6 + 1;
    do
    {
      *(v5 + 12 + 2 * v12) = (v13[v12] << 8) - 32512;
      v14 = *(v5 + 116);
      ++v12;
    }

    while (v12 < v14);
    LODWORD(v11) = *(v5 + 116);
    if (v14 > 0xB)
    {
      return 0;
    }
  }

  bzero((v5 + (2 * v11) + 12), 24 - (2 * v11));
  return 0;
}

uint64_t webrtc::ComfortNoise::Generate(uint64_t this, unint64_t a2, webrtc::AudioMultiVector *a3)
{
  v4 = *(a3 + 1);
  v3 = *(a3 + 2);
  if (v3 - v4 == 8)
  {
    v5 = this;
    v6 = a2;
    if (*(this + 4) == 1)
    {
      v6 = *(this + 8) + a2;
    }

    if (v3 == v4)
    {
      __break(1u);
    }

    else
    {
      v7 = (*(*v4 + 1) + *(*v4 + 3) - *(*v4 + 2)) % *(*v4 + 1);
      v8 = v6 - v7;
      if (v6 > v7)
      {
        do
        {
          v9 = *v4++;
          webrtc::AudioVector::InsertZerosByPushBack(v9, v8, (*(v9 + 1) + *(v9 + 3) - *(v9 + 2)) % *(v9 + 1));
        }

        while (v4 != v3);
      }

      if ((*(**(v5 + 16) + 96))(*(v5 + 16)))
      {
        operator new[]();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/comfort_noise.cc");
      }

      return 1;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/comfort_noise.cc");
    }

    return 3;
  }

  return this;
}

void webrtc::ComfortNoiseGenerator::ComfortNoiseGenerator(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 4) = 42;
  *(a1 + 8) = a4;
  *(a1 + 16) = __exp10f((*(a2 + 384) + 90.309) * 0.1) * 64.0;
  operator new();
}

uint64_t webrtc::ComfortNoiseGenerator::Compute(uint64_t result, char a2, unint64_t a3, int32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 8);
  if (a2)
  {
    if (*(result + 24))
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = (result + 56);
    }

    if (!v9)
    {
      return result;
    }

LABEL_92:
    v129 = 0;
    v130 = *v10;
    v132 = a6;
    v131 = a8;
    v146 = v10;
    v147 = v9;
    v145 = *v10;
    while (0xFC0FC0FC0FC0FC1 * ((v10[1] - v130) >> 2) > v129)
    {
      v133 = (a6 + 520 * v129);
      v134 = (a8 + 520 * v129);
      result = memcpy(__dst, (v130 + 260 * v129), 0x104uLL);
      v135 = 0;
      v134[64] = 0;
      *v134 = 0;
      __dst[0] = vsqrtq_f32(__dst[0]);
      __dst[1] = vsqrtq_f32(__dst[1]);
      __dst[2] = vsqrtq_f32(__dst[2]);
      __dst[3] = vsqrtq_f32(__dst[3]);
      __dst[4] = vsqrtq_f32(__dst[4]);
      __dst[5] = vsqrtq_f32(__dst[5]);
      __dst[6] = vsqrtq_f32(__dst[6]);
      __dst[7] = vsqrtq_f32(__dst[7]);
      __dst[8] = vsqrtq_f32(__dst[8]);
      __dst[9] = vsqrtq_f32(__dst[9]);
      __dst[10] = vsqrtq_f32(__dst[10]);
      __dst[11] = vsqrtq_f32(__dst[11]);
      __dst[12] = vsqrtq_f32(__dst[12]);
      __dst[13] = vsqrtq_f32(__dst[13]);
      __dst[14] = vsqrtq_f32(__dst[14]);
      __dst[15] = vsqrtq_f32(__dst[15]);
      __dst[16].i32[0] = sqrtf(__dst[16].f32[0]);
      v136 = (((((((((((((((((((((((((((((((((__dst[8].f32[0] + 0.0) + __dst[8].f32[1]) + __dst[8].f32[2]) + __dst[8].f32[3]) + __dst[9].f32[0]) + __dst[9].f32[1]) + __dst[9].f32[2]) + __dst[9].f32[3]) + __dst[10].f32[0]) + __dst[10].f32[1]) + __dst[10].f32[2]) + __dst[10].f32[3]) + __dst[11].f32[0]) + __dst[11].f32[1]) + __dst[11].f32[2]) + __dst[11].f32[3]) + __dst[12].f32[0]) + __dst[12].f32[1]) + __dst[12].f32[2]) + __dst[12].f32[3]) + __dst[13].f32[0]) + __dst[13].f32[1]) + __dst[13].f32[2]) + __dst[13].f32[3]) + __dst[14].f32[0]) + __dst[14].f32[1]) + __dst[14].f32[2]) + __dst[14].f32[3]) + __dst[15].f32[0]) + __dst[15].f32[1]) + __dst[15].f32[2]) + __dst[15].f32[3]) + __dst[16].f32[0]) * 0.030303;
      v133[64] = 0;
      *v133 = 0;
      v137 = *(v8 + 4);
      do
      {
        v138 = 69069 * v137 + 1;
        v137 = v138 & 0x7FFFFFFF;
        v139 = (v138 >> 26) & 0x1F;
        v142 = __dst[0].f32[v135 + 1];
        v143 = v132 + v135 * 4;
        *(v143 + 4) = v140 * v142;
        *(v143 + 264) = v141 * v142;
        v144 = v131 + v135 * 4;
        *(v144 + 4) = v136 * v140;
        *(v144 + 264) = v136 * v141;
        ++v135;
      }

      while (v135 != 63);
      *(v8 + 4) = v137;
      ++v129;
      v131 += 520;
      v132 += 520;
      v10 = v146;
      v130 = v145;
      if (v129 == v147)
      {
        return result;
      }
    }

LABEL_98:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v11 = 0;
    v12 = *(result + 32);
    v13 = 0xFC0FC0FC0FC0FC1 * ((*(result + 40) - v12) >> 2);
    v14 = 260 * v9;
    v16 = v12 < a3 + 260 * v9 && v12 + 260 * v9 > a3;
    a4 = vdupq_n_s32(0x3DCCCCCDu);
    v17 = *(result + 32);
    while (v11 != v13)
    {
      v18 = (v12 + 260 * v11);
      v19 = (a3 + 260 * v11);
      if (v16)
      {
        v20 = 0;
      }

      else
      {
        v21 = vmlaq_f32(v18[1], a4, vsubq_f32(v19[1], v18[1]));
        *v18 = vmlaq_f32(*v18, a4, vsubq_f32(*v19, *v18));
        v18[1] = v21;
        v22 = vmlaq_f32(v18[3], a4, vsubq_f32(v19[3], v18[3]));
        v18[2] = vmlaq_f32(v18[2], a4, vsubq_f32(v19[2], v18[2]));
        v18[3] = v22;
        v23 = vmlaq_f32(v18[5], a4, vsubq_f32(v19[5], v18[5]));
        v18[4] = vmlaq_f32(v18[4], a4, vsubq_f32(v19[4], v18[4]));
        v18[5] = v23;
        v24 = vmlaq_f32(v18[7], a4, vsubq_f32(v19[7], v18[7]));
        v18[6] = vmlaq_f32(v18[6], a4, vsubq_f32(v19[6], v18[6]));
        v18[7] = v24;
        v25 = vmlaq_f32(v18[9], a4, vsubq_f32(v19[9], v18[9]));
        v18[8] = vmlaq_f32(v18[8], a4, vsubq_f32(v19[8], v18[8]));
        v18[9] = v25;
        v26 = vmlaq_f32(v18[11], a4, vsubq_f32(v19[11], v18[11]));
        v18[10] = vmlaq_f32(v18[10], a4, vsubq_f32(v19[10], v18[10]));
        v18[11] = v26;
        v27 = vmlaq_f32(v18[12], a4, vsubq_f32(v19[12], v18[12]));
        v28 = vmlaq_f32(v18[13], a4, vsubq_f32(v19[13], v18[13]));
        v29 = vmlaq_f32(v18[14], a4, vsubq_f32(v19[14], v18[14]));
        v30 = vmlaq_f32(v18[15], a4, vsubq_f32(v19[15], v18[15]));
        v19 += 16;
        v18[12] = v27;
        v18[13] = v28;
        v18[14] = v29;
        v18[15] = v30;
        v18 += 16;
        v20 = 256;
      }

      do
      {
        v31 = v19->f32[0];
        v19 = (v19 + 4);
        v18->f32[0] = *(v17 + v20) + ((v31 - *(v17 + v20)) * 0.1);
        v18 = (v18 + 4);
        v20 += 4;
      }

      while (v20 != 260);
      ++v11;
      v17 += 260;
      if (v11 == v9)
      {
        v32 = (result + 80);
        v33 = *(result + 80);
        if (v33 >= 51)
        {
          v34 = 0;
          v35 = *(result + 56);
          v36 = 0xFC0FC0FC0FC0FC1 * ((*(result + 64) - v35) >> 2);
          v38 = v35 < v12 + v14 && v12 < v35 + v14;
          result = 1063675494;
          a4 = vdupq_n_s32(0x3DCCCCCDu);
          v39 = vdupq_n_s32(0x3F666666u);
          v40 = vdupq_n_s32(0x3F80068Eu);
          v41 = *(v8 + 56);
          while (v34 != v36 && v34 != v13)
          {
            v42 = v35 + 260 * v34;
            v43 = (v12 + 260 * v34);
            if (v38)
            {
              v44 = 0;
            }

            else
            {
              v45 = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 16), v43[1]), vmlaq_f32(vmulq_f32(*(v42 + 16), a4), v39, v43[1]), *(v42 + 16)), v40);
              v46 = *(v42 + 32);
              v47 = *(v42 + 48);
              v48 = v43[2];
              v49 = v43[3];
              *v42 = vmulq_f32(vbslq_s8(vcgtq_f32(*v42, *v43), vmlaq_f32(vmulq_f32(*v42, a4), v39, *v43), *v42), v40);
              *(v42 + 16) = v45;
              *(v42 + 32) = vmulq_f32(vbslq_s8(vcgtq_f32(v46, v48), vmlaq_f32(vmulq_f32(v46, a4), v39, v48), v46), v40);
              *(v42 + 48) = vmulq_f32(vbslq_s8(vcgtq_f32(v47, v49), vmlaq_f32(vmulq_f32(v47, a4), v39, v49), v47), v40);
              v50 = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 80), v43[5]), vmlaq_f32(vmulq_f32(*(v42 + 80), a4), v39, v43[5]), *(v42 + 80)), v40);
              *(v42 + 64) = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 64), v43[4]), vmlaq_f32(vmulq_f32(*(v42 + 64), a4), v39, v43[4]), *(v42 + 64)), v40);
              *(v42 + 80) = v50;
              v51 = vbslq_s8(vcgtq_f32(*(v42 + 96), v43[6]), vmlaq_f32(vmulq_f32(*(v42 + 96), a4), v39, v43[6]), *(v42 + 96));
              v52 = vbslq_s8(vcgtq_f32(*(v42 + 112), v43[7]), vmlaq_f32(vmulq_f32(*(v42 + 112), a4), v39, v43[7]), *(v42 + 112));
              v53 = vbslq_s8(vcgtq_f32(*(v42 + 128), v43[8]), vmlaq_f32(vmulq_f32(*(v42 + 128), a4), v39, v43[8]), *(v42 + 128));
              v54 = vbslq_s8(vcgtq_f32(*(v42 + 144), v43[9]), vmlaq_f32(vmulq_f32(*(v42 + 144), a4), v39, v43[9]), *(v42 + 144));
              v55 = v43[10];
              v56 = v43[11];
              v57 = v43[12];
              v58 = v43[13];
              v59 = v43[14];
              v60 = v43[15];
              v43 += 16;
              *(v42 + 96) = vmulq_f32(v51, v40);
              *(v42 + 112) = vmulq_f32(v52, v40);
              *(v42 + 128) = vmulq_f32(v53, v40);
              *(v42 + 144) = vmulq_f32(v54, v40);
              v61 = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 176), v56), vmlaq_f32(vmulq_f32(*(v42 + 176), a4), v39, v56), *(v42 + 176)), v40);
              v62 = *(v42 + 192);
              v63 = *(v42 + 208);
              *(v42 + 160) = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 160), v55), vmlaq_f32(vmulq_f32(*(v42 + 160), a4), v39, v55), *(v42 + 160)), v40);
              *(v42 + 176) = v61;
              *(v42 + 192) = vmulq_f32(vbslq_s8(vcgtq_f32(v62, v57), vmlaq_f32(vmulq_f32(v62, a4), v39, v57), v62), v40);
              *(v42 + 208) = vmulq_f32(vbslq_s8(vcgtq_f32(v63, v58), vmlaq_f32(vmulq_f32(v63, a4), v39, v58), v63), v40);
              v64 = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 240), v60), vmlaq_f32(vmulq_f32(*(v42 + 240), a4), v39, v60), *(v42 + 240)), v40);
              *(v42 + 224) = vmulq_f32(vbslq_s8(vcgtq_f32(*(v42 + 224), v59), vmlaq_f32(vmulq_f32(*(v42 + 224), a4), v39, v59), *(v42 + 224)), v40);
              *(v42 + 240) = v64;
              v42 += 256;
              v44 = 256;
            }

            do
            {
              v65 = *(v41 + v44);
              v66 = v43->f32[0];
              v43 = (v43 + 4);
              v67 = (v65 * 0.1) + (v66 * 0.9);
              if (v66 < v65)
              {
                v65 = v67;
              }

              *v42 = v65 * 1.0002;
              v42 += 4;
              v44 += 4;
            }

            while (v44 != 260);
            ++v34;
            v41 += 260;
            if (v34 == v9)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_98;
        }

LABEL_38:
        v68 = *(v8 + 24);
        if (v68)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    goto LABEL_98;
  }

  v32 = (result + 80);
  v33 = *(result + 80);
  v68 = *(result + 24);
  if (!v68)
  {
LABEL_39:
    if (!v9)
    {
      return result;
    }

    goto LABEL_46;
  }

LABEL_42:
  *v32 = v33 + 1;
  if (v33 != 999)
  {
    if (!v9)
    {
      return result;
    }

    v72 = 0;
    v70 = *(v8 + 56);
    v71 = 0xFC0FC0FC0FC0FC1 * ((*(v8 + 64) - v70) >> 2);
    v73 = vdupq_n_s32(0x3A83126Fu);
    v74 = v70;
    while (v72 != v71 && 0xFC0FC0FC0FC0FC1 * ((v68[1] - *v68) >> 2) > v72)
    {
      v75 = (*v68 + 260 * v72);
      if (v75 >= v70 + 260 * v9 || v70 >= v75[16].u64 + 4)
      {
        v77 = (v70 + 260 * v72);
        v78 = vbslq_s8(vcgtq_f32(v77[1], v75[1]), vmlaq_f32(v75[1], v73, vsubq_f32(v77[1], v75[1])), v77[1]);
        *v75 = vbslq_s8(vcgtq_f32(*v77, *v75), vmlaq_f32(*v75, v73, vsubq_f32(*v77, *v75)), *v77);
        v75[1] = v78;
        v79 = vbslq_s8(vcgtq_f32(v77[3], v75[3]), vmlaq_f32(v75[3], v73, vsubq_f32(v77[3], v75[3])), v77[3]);
        v75[2] = vbslq_s8(vcgtq_f32(v77[2], v75[2]), vmlaq_f32(v75[2], v73, vsubq_f32(v77[2], v75[2])), v77[2]);
        v75[3] = v79;
        v80 = vbslq_s8(vcgtq_f32(v77[5], v75[5]), vmlaq_f32(v75[5], v73, vsubq_f32(v77[5], v75[5])), v77[5]);
        v75[4] = vbslq_s8(vcgtq_f32(v77[4], v75[4]), vmlaq_f32(v75[4], v73, vsubq_f32(v77[4], v75[4])), v77[4]);
        v75[5] = v80;
        v81 = vbslq_s8(vcgtq_f32(v77[7], v75[7]), vmlaq_f32(v75[7], v73, vsubq_f32(v77[7], v75[7])), v77[7]);
        v75[6] = vbslq_s8(vcgtq_f32(v77[6], v75[6]), vmlaq_f32(v75[6], v73, vsubq_f32(v77[6], v75[6])), v77[6]);
        v75[7] = v81;
        v82 = vbslq_s8(vcgtq_f32(v77[9], v75[9]), vmlaq_f32(v75[9], v73, vsubq_f32(v77[9], v75[9])), v77[9]);
        v75[8] = vbslq_s8(vcgtq_f32(v77[8], v75[8]), vmlaq_f32(v75[8], v73, vsubq_f32(v77[8], v75[8])), v77[8]);
        v75[9] = v82;
        v83 = vbslq_s8(vcgtq_f32(v77[11], v75[11]), vmlaq_f32(v75[11], v73, vsubq_f32(v77[11], v75[11])), v77[11]);
        v75[10] = vbslq_s8(vcgtq_f32(v77[10], v75[10]), vmlaq_f32(v75[10], v73, vsubq_f32(v77[10], v75[10])), v77[10]);
        v75[11] = v83;
        v84 = vbslq_s8(vcgtq_f32(v77[13], v75[13]), vmlaq_f32(v75[13], v73, vsubq_f32(v77[13], v75[13])), v77[13]);
        v75[12] = vbslq_s8(vcgtq_f32(v77[12], v75[12]), vmlaq_f32(v75[12], v73, vsubq_f32(v77[12], v75[12])), v77[12]);
        v75[13] = v84;
        v85 = vbslq_s8(vcgtq_f32(v77[15], v75[15]), vmlaq_f32(v75[15], v73, vsubq_f32(v77[15], v75[15])), v77[15]);
        v75[14] = vbslq_s8(vcgtq_f32(v77[14], v75[14]), vmlaq_f32(v75[14], v73, vsubq_f32(v77[14], v75[14])), v77[14]);
        v75[15] = v85;
        v75 += 16;
        v86 = 256;
      }

      else
      {
        v86 = 0;
      }

      do
      {
        v87 = *(v74 + v86);
        if (v87 > v75->f32[0])
        {
          v87 = v75->f32[0] + ((v87 - v75->f32[0]) * 0.001);
        }

        v75->f32[0] = v87;
        v75 = (v75 + 4);
        v86 += 4;
      }

      while (v86 != 260);
      ++v72;
      v74 += 260;
      if (v72 == v9)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_98;
  }

  *(v8 + 24) = 0;
  v69 = *v68;
  if (*v68)
  {
    v68[1] = v69;
    operator delete(v69);
  }

  result = MEMORY[0x2743DA540](v68, 0x20C40960023A9, a4);
  v9 = *(v8 + 8);
  if (v9)
  {
LABEL_46:
    v70 = *(v8 + 56);
    v71 = 0xFC0FC0FC0FC0FC1 * ((*(v8 + 64) - v70) >> 2);
LABEL_61:
    v88 = 0;
    v89 = 0;
    v90 = (v8 + 16);
    v92 = v70 < v8 + 20 && v90 < v70 + 260 * v9;
    v93 = v70;
    while (v89 != v71)
    {
      if (v92)
      {
        v94 = 0;
      }

      else
      {
        v95 = (v70 + 260 * v89);
        v96 = vld1q_dup_f32(v90);
        v97 = vbslq_s8(vcgtq_f32(v96, v95[1]), v96, v95[1]);
        *v95 = vbslq_s8(vcgtq_f32(v96, *v95), v96, *v95);
        v95[1] = v97;
        v98 = vbslq_s8(vcgtq_f32(v96, v95[3]), v96, v95[3]);
        v95[2] = vbslq_s8(vcgtq_f32(v96, v95[2]), v96, v95[2]);
        v95[3] = v98;
        v99 = vbslq_s8(vcgtq_f32(v96, v95[5]), v96, v95[5]);
        v95[4] = vbslq_s8(vcgtq_f32(v96, v95[4]), v96, v95[4]);
        v95[5] = v99;
        v100 = vbslq_s8(vcgtq_f32(v96, v95[7]), v96, v95[7]);
        v95[6] = vbslq_s8(vcgtq_f32(v96, v95[6]), v96, v95[6]);
        v95[7] = v100;
        v101 = vbslq_s8(vcgtq_f32(v96, v95[9]), v96, v95[9]);
        v95[8] = vbslq_s8(vcgtq_f32(v96, v95[8]), v96, v95[8]);
        v95[9] = v101;
        v102 = vld1q_dup_f32(v90);
        v103 = vbslq_s8(vcgtq_f32(v102, v95[11]), v102, v95[11]);
        v95[10] = vbslq_s8(vcgtq_f32(v102, v95[10]), v102, v95[10]);
        v95[11] = v103;
        v104 = vld1q_dup_f32(v90);
        v105 = vbslq_s8(vcgtq_f32(v104, v95[12]), v104, v95[12]);
        v106 = vbslq_s8(vcgtq_f32(v104, v95[13]), v104, v95[13]);
        v95[12] = v105;
        v95[13] = v106;
        v107 = vld1q_dup_f32(v90);
        v108 = vbslq_s8(vcgtq_f32(v107, v95[15]), v107, v95[15]);
        v95[14] = vbslq_s8(vcgtq_f32(v107, v95[14]), v107, v95[14]);
        v95[15] = v108;
        v94 = 256;
      }

      do
      {
        v109 = *(v93 + v94);
        if (v109 < *v90)
        {
          v109 = *v90;
        }

        *(v93 + v94) = v109;
        v94 += 4;
      }

      while (v94 != 260);
      result = *(v8 + 24);
      if (result)
      {
        v110 = *result;
        if (0xFC0FC0FC0FC0FC1 * ((*(result + 8) - *result) >> 2) <= v89)
        {
          goto LABEL_98;
        }

        v111 = (v110 + 260 * v89);
        if (v111 >= v8 + 20 || v90 >= v110 + 260 * v89 + 260)
        {
          v113 = vld1q_dup_f32(v90);
          v114 = vbslq_s8(vcgtq_f32(v113, v111[1]), v113, v111[1]);
          *v111 = vbslq_s8(vcgtq_f32(v113, *v111), v113, *v111);
          v111[1] = v114;
          v115 = vbslq_s8(vcgtq_f32(v113, v111[3]), v113, v111[3]);
          v111[2] = vbslq_s8(vcgtq_f32(v113, v111[2]), v113, v111[2]);
          v111[3] = v115;
          v116 = vbslq_s8(vcgtq_f32(v113, v111[5]), v113, v111[5]);
          v111[4] = vbslq_s8(vcgtq_f32(v113, v111[4]), v113, v111[4]);
          v111[5] = v116;
          v117 = vbslq_s8(vcgtq_f32(v113, v111[7]), v113, v111[7]);
          v111[6] = vbslq_s8(vcgtq_f32(v113, v111[6]), v113, v111[6]);
          v111[7] = v117;
          v118 = vbslq_s8(vcgtq_f32(v113, v111[9]), v113, v111[9]);
          v111[8] = vbslq_s8(vcgtq_f32(v113, v111[8]), v113, v111[8]);
          v111[9] = v118;
          v119 = vld1q_dup_f32(v90);
          v120 = vbslq_s8(vcgtq_f32(v119, v111[11]), v119, v111[11]);
          v111[10] = vbslq_s8(vcgtq_f32(v119, v111[10]), v119, v111[10]);
          v111[11] = v120;
          v121 = vld1q_dup_f32(v90);
          v122 = vbslq_s8(vcgtq_f32(v121, v111[12]), v121, v111[12]);
          v123 = vbslq_s8(vcgtq_f32(v121, v111[13]), v121, v111[13]);
          v111[12] = v122;
          v111[13] = v123;
          v124 = vld1q_dup_f32(v90);
          v125 = vbslq_s8(vcgtq_f32(v124, v111[15]), v124, v111[15]);
          v111[14] = vbslq_s8(vcgtq_f32(v124, v111[14]), v124, v111[14]);
          v111[15] = v125;
          v126 = 256;
        }

        else
        {
          v126 = 0;
        }

        v127 = v110 + v88;
        do
        {
          v128 = *(v127 + v126);
          if (v128 < *v90)
          {
            v128 = *v90;
          }

          *(v127 + v126) = v128;
          v126 += 4;
        }

        while (v126 != 260);
      }

      ++v89;
      v93 += 260;
      v88 += 260;
      if (v89 == v9)
      {
        if (result)
        {
          v10 = result;
        }

        else
        {
          v10 = (v8 + 56);
        }

        goto LABEL_92;
      }
    }

    goto LABEL_98;
  }

  return result;
}

uint64_t webrtc::rtcp::CommonHeader::Parse(webrtc::rtcp::CommonHeader *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 <= 3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/common_header.cc");
    }

    return 0;
  }

  v11 = *a2;
  if (v11 >> 6 == 2)
  {
    *(this + 1) = v11 & 0x1F;
    *this = a2[1];
    v12 = (a2[2] << 10) | (4 * a2[3]);
    *(this + 1) = v12;
    *(this + 1) = a2 + 4;
    *(this + 2) = 0;
    if (v12 + 4 > a3)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }

      v27 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
      goto LABEL_15;
    }

    if ((v11 & 0x20) == 0)
    {
      return 1;
    }

    if (v12)
    {
      v28 = a2[v12 + 3];
      *(this + 2) = v28;
      if (v28)
      {
        v29 = v12 >= v28;
        v30 = v12 - v28;
        if (v29)
        {
          *(this + 1) = v30;
          return 1;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          return 0;
        }

        v27 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_15:
        webrtc::webrtc_logging_impl::Log(v27, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/common_header.cc");
        return 0;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }
    }

    else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/common_header.cc");
    return 0;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/common_header.cc");
  }

  return 0;
}

uint64_t WebRtcSpl_ComplexFFT(__int16 *a1, char a2, int a3)
{
  v3 = (1 << a2);
  if (v3 > 1024)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (v3 >= 2)
    {
      v5 = 1;
      v6 = 9;
      do
      {
        v7 = 2 * v5;
        if (v5 >= 1)
        {
          v8 = 0;
          v9 = 2 * v5;
          v10 = a1;
          do
          {
            if (v3 > v8)
            {
              v11 = (&kSinTable1024 + 2 * (v8 << v6));
              v12 = -*v11;
              v13 = v11[256];
              v14 = v10;
              v15 = v8;
              do
              {
                v16 = &v14[v9];
                v17 = v14[2 * v5];
                v18 = v14[v9 + 1];
                v19 = (v17 * v13 - v12 * v18 + 1) >> 1;
                v20 = (v18 * v13 + v17 * v12 + 1) >> 1;
                v21 = v14[1] << 14;
                v22 = (*v14 << 14) + 0x4000;
                *v16 = (v22 - v19) >> 15;
                v16[1] = (v21 - v20 + 0x4000) >> 15;
                *v14 = (v22 + v19) >> 15;
                v14[1] = (v20 + v21 + 0x4000) >> 15;
                v15 += v7;
                v14 += 2 * v7;
              }

              while (v15 < v3);
            }

            ++v8;
            v10 += 2;
          }

          while (v8 != v5);
        }

        --v6;
        v5 *= 2;
      }

      while (v7 < v3);
    }
  }

  else if (v3 >= 2)
  {
    v23 = 1;
    v24 = 9;
    do
    {
      v25 = 2 * v23;
      if (v23 >= 1)
      {
        v26 = 0;
        v27 = 2 * v23;
        v28 = a1;
        do
        {
          if (v3 > v26)
          {
            v29 = (&kSinTable1024 + 2 * (v26 << v24));
            v30 = -*v29;
            v31 = v29[256];
            v32 = v28;
            v33 = v26;
            do
            {
              v34 = &v32[v27];
              v35 = v32[2 * v23];
              v36 = v32[v27 + 1];
              v37 = (v35 * v31 - v36 * v30) >> 15;
              v38 = (v35 * v30 + v36 * v31) >> 15;
              v39 = *v32;
              v40 = v32[1];
              *v34 = (v39 - v37) >> 1;
              v34[1] = (v40 - v38) >> 1;
              *v32 = (v37 + v39) >> 1;
              v32[1] = (v38 + v40) >> 1;
              v33 += v25;
              v32 += 2 * v25;
            }

            while (v33 < v3);
          }

          ++v26;
          v28 += 2;
        }

        while (v26 != v23);
      }

      --v24;
      v23 *= 2;
    }

    while (v25 < v3);
  }

  return 0;
}

uint64_t WebRtcSpl_ComplexIFFT(int16x8_t *a1, unsigned int a2, int a3)
{
  if (a2 > 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = 1 << a2;
  v6 = WebRtcSpl_MaxAbsValueW16;
  v7 = 2 << a2;
  LODWORD(v3) = 0;
  if (a3)
  {
    v8 = 9;
    v9 = 1;
    do
    {
      v11 = v9;
      v12 = v6(a1, v7);
      v13 = 0;
      if (v12 <= 13573)
      {
        v14 = 0x2000;
      }

      else
      {
        v14 = 0x4000;
      }

      if (v12 <= 13573)
      {
        v15 = 14;
      }

      else
      {
        v15 = 15;
      }

      v16 = v12 > 27146;
      v17 = v14 << v16;
      v9 = 2 * v11;
      v18 = v8;
      if (v12 > 27146)
      {
        v15 = 16;
      }

      if (v11 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v11;
      }

      v20 = 8 * v11;
      v21 = 2 * v11;
      v22 = a1;
      do
      {
        if (v13 < v5)
        {
          v23 = (&kSinTable1024 + 2 * (v13 << v18));
          v24 = *v23;
          v25 = v23[256];
          v26 = v22;
          v27 = v13;
          do
          {
            v28 = &v26->i16[v21];
            v29 = v26->i16[v21];
            v30 = v26->i16[v21 + 1];
            v31 = (v29 * v25 - v24 * v30 + 1) >> 1;
            v32 = (v30 * v25 + v29 * v24 + 1) >> 1;
            v33 = v26->i16[1] << 14;
            v34 = v17 + (v26->i16[0] << 14);
            *v28 = (v34 - v31) >> v15;
            v28[1] = (v17 - v32 + v33) >> v15;
            v26->i16[0] = (v34 + v31) >> v15;
            v26->i16[1] = (v32 + v17 + v33) >> v15;
            v27 += v9;
            v26 = (v26 + v20);
          }

          while (v27 < v5);
        }

        ++v13;
        v22 = (v22 + 4);
      }

      while (v13 != v19);
      if (v12 <= 13573)
      {
        v10 = v3;
      }

      else
      {
        v10 = v3 + 1;
      }

      v3 = (v10 + v16);
      v8 = v18 - 1;
    }

    while (v9 < v5);
  }

  else
  {
    v36 = 9;
    v37 = 1;
    do
    {
      v39 = v37;
      v40 = v6(a1, v7);
      v41 = 0;
      v37 = 2 * v39;
      if (v40 <= 27146)
      {
        v42 = v40 > 13573;
      }

      else
      {
        v42 = 2;
      }

      if (v39 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v39;
      }

      v44 = 8 * v39;
      v45 = 2 * v39;
      v46 = a1;
      do
      {
        if (v41 < v5)
        {
          v47 = (&kSinTable1024 + 2 * (v41 << v36));
          v48 = *v47;
          v49 = v47[256];
          v50 = v46;
          v51 = v41;
          do
          {
            v52 = &v50->i16[v45];
            v53 = v50->i16[v45];
            v54 = v50->i16[v45 + 1];
            v55 = (v53 * v49 - v54 * v48) >> 15;
            v56 = (v53 * v48 + v54 * v49) >> 15;
            v57 = v50->i16[0];
            v58 = v50->i16[1];
            *v52 = (v57 - v55) >> v42;
            v52[1] = (v58 - v56) >> v42;
            v50->i16[0] = (v55 + v57) >> v42;
            v50->i16[1] = (v56 + v58) >> v42;
            v51 += v37;
            v50 = (v50 + v44);
          }

          while (v51 < v5);
        }

        ++v41;
        v46 = (v46 + 4);
      }

      while (v41 != v43);
      v38 = v3 + (v40 > 13573);
      if (v40 <= 27146)
      {
        v3 = v38;
      }

      else
      {
        v3 = v38 + 1;
      }

      --v36;
    }

    while (v37 < v5);
  }

  return v3;
}

uint64_t webrtc::rtcp::CongestionControlFeedback::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    (*(*a1 + 16))(a1);
    v13 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -117;
    *(a2 + *a3 + 1) = -51;
    *(a2 + *a3 + 2) = (v13 - 4) >> 10;
    *(a2 + *a3 + 3) = (v13 - 4) >> 2;
    v14 = *a3 + 4;
    *a3 = v14;
    *(a2 + v14) = bswap32(*(a1 + 8));
    v15 = *a3 + 4;
    *a3 = v15;
    v16 = *(a1 + 16);
    v17 = *(a1 + 24) - v16;
    if (v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      do
      {
        v19 = 0;
        if (v18)
        {
          v20 = 24 * v18;
          v21 = v16;
          while (*v21 == *v16)
          {
            ++v19;
            v21 += 6;
            v20 -= 24;
            if (!v20)
            {
              v19 = v18;
              break;
            }
          }
        }

        v22 = v18 - v19;
        if (v18 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v18;
        }

        if (v19)
        {
          v24 = v16;
        }

        else
        {
          v24 = 0;
        }

        *(a2 + v15) = bswap32(*v24);
        v25 = *a3 + 4;
        *a3 = v25;
        *(a2 + v25) = bswap32(*(v24 + 2)) >> 16;
        v15 = *a3 + 2;
        *a3 = v15;
        if (v23 <= 0x4000u)
        {
          *(a2 + v15) = bswap32(v23) >> 16;
          v15 = *a3 + 2;
          *a3 = v15;
          if (v19)
          {
            v26 = &v24[6 * v23];
            v27 = v16;
            do
            {
              v31 = *(v27 + 1);
              if (v31 + 0x7FFFFFFFFFFFFFFFLL > 0xFFFFFFFFFFFFFFFDLL)
              {
                LOBYTE(v28) = 0;
                LOBYTE(v29) = 0;
              }

              else
              {
                v32 = v27[4];
                if (v32 >= 4)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v32 << 13;
                }

                if ((v31 & 0x8000000000000000) != 0)
                {
                  LODWORD(v28) = 0x1FFF;
                }

                else
                {
                  v28 = vcvts_n_s32_f32(v31 * 0.000001, 0xAuLL);
                  if (v28 >= 8190)
                  {
                    LODWORD(v28) = 8190;
                  }
                }

                v29 = ((v28 | v33) >> 8) | 0xFFFFFF80;
              }

              v30 = (a2 + v15);
              *v30 = v29;
              v30[1] = v28;
              v15 = *a3 + 2;
              *a3 = v15;
              v27 += 6;
            }

            while (v27 != v26);
            if (v23)
            {
              *(a2 + v15) = 0;
              v15 = *a3 + 2;
              *a3 = v15;
            }
          }
        }

        if (v22 >= v18)
        {
          v22 = v18;
        }

        v16 += 6 * v19;
        if (v18 <= v19)
        {
          break;
        }

        v18 = v22;
      }

      while (v22);
    }

    *(a2 + v15) = bswap32(*(a1 + 40));
    *a3 += 4;
    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

uint64_t webrtc::rtcp::CongestionControlFeedback::BlockLength(uint64_t this)
{
  v2 = *(this + 16);
  v1 = *(this + 24);
  if (v2 == v1)
  {
    return 12;
  }

  v3 = v2 + 1;
  v4 = *(v2 + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3);
  v6 = *v2;
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3);
  }

  v8 = -1;
  v9 = 12;
  while (*(v3 - 1) == v6)
  {
LABEL_6:
    v3 += 12;
    ++v8;
    if (!--v7)
    {
      v11 = 2 * (*(v1 - 10) - v4 + 1);
      return v9 + v11 + (v11 & 2u) + 8;
    }
  }

  if (v5 > v8)
  {
    v10 = 2 * (*(v3 - 12) - v4 + 1);
    v9 += v10 + (v10 & 2u) + 8;
    v4 = *v3;
    v6 = *(v3 - 1);
    goto LABEL_6;
  }

  __break(1u);
  return this;
}

BOOL webrtc::rtcp::CongestionControlFeedback::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = v2 >= 8 && (v2 & 3) == 0;
  if (!v3)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = v5 + 1;
  *(a1 + 8) = bswap32(*v5);
  v7 = (v5 + v2 - 4);
  *(a1 + 40) = bswap32(*v7);
  if (v2 >= 0x11)
  {
    v8 = v5 + 3;
    v26 = v7;
    while (1)
    {
      v10 = __rev16(*(v6 + 3));
      if ((v8 + 2 * v10) > v7)
      {
        return 0;
      }

      if (v10)
      {
        v11 = 0;
        v27 = bswap32(*v6);
        v12 = bswap32(*(v6 + 2)) >> 16;
        v9 = v8;
        do
        {
          v14 = *v9;
          v9 = (v9 + 2);
          v13 = v14;
          v15 = v14 << 8;
          if (((v14 << 8) & 0x8000) != 0)
          {
            v21 = v15 & 0x1F00 | *(v8 + 1);
            if (v21 == 8190)
            {
              v16 = 0x7FFFFFFFFFFFFFFFLL;
              v17 = v12 + v11;
              v18 = (v13 >> 5) & 3;
              v19 = *(a1 + 24);
              v20 = *(a1 + 32);
              if (v19 >= v20)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v3 = v21 == 0x1FFF;
              v22 = (1000000 * v21) >> 10;
              if (v3)
              {
                v16 = 0x8000000000000000;
              }

              else
              {
                v16 = v22;
              }

              v17 = v12 + v11;
              v18 = (v13 >> 5) & 3;
              v19 = *(a1 + 24);
              v20 = *(a1 + 32);
              if (v19 >= v20)
              {
LABEL_23:
                v23 = *(a1 + 16);
                v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v23) >> 3) + 1;
                if (v24 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                }

                v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 3);
                if (2 * v25 > v24)
                {
                  v24 = 2 * v25;
                }

                if (v25 >= 0x555555555555555)
                {
                  v24 = 0xAAAAAAAAAAAAAAALL;
                }

                if (v24)
                {
                  if (v24 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }
                }

                else
                {
LABEL_34:
                  __break(1u);
                }

                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }
            }
          }

          else
          {
            v16 = 0x8000000000000000;
            v17 = v12 + v11;
            v18 = (v13 >> 5) & 3;
            v19 = *(a1 + 24);
            v20 = *(a1 + 32);
            if (v19 >= v20)
            {
              goto LABEL_23;
            }
          }

          if (!v19)
          {
            goto LABEL_34;
          }

          *v19 = v27;
          *(v19 + 4) = v17;
          *(v19 + 8) = v16;
          *(v19 + 16) = v18;
          *(a1 + 24) = v19 + 24;
          ++v11;
          v8 = v9;
        }

        while (v10 != v11);
      }

      else
      {
        v9 = v8;
      }

      v6 = (v9 + 2 * (v10 & 1));
      v8 = v6 + 2;
      v7 = v26;
      if ((v6 + 2) >= v26)
      {
        return v6 == v7;
      }
    }
  }

  return v6 == v7;
}

void *std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5)
    {
      if (v5 <= 0xAAAAAAAAAAAAAAALL)
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
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

void webrtc::rtcp::CongestionControlFeedback::~CongestionControlFeedback(webrtc::rtcp::CongestionControlFeedback *this)
{
  *this = &unk_2882914B0;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882914B0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::CongestionControlFeedbackGenerator::CongestionControlFeedbackGenerator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *a1 = &unk_2882914E0;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      *(a1 + 80) = a1 + 56;
      v7 = a2;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 56);
      a2 = v7;
    }

    else
    {
      *(a1 + 80) = v6;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 143) = 14;
  if (a1 + 120 <= "min_send_delta" && a1 + 134 > "min_send_delta" || (strcpy((a1 + 120), "min_send_delta"), *(a1 + 144) = 0, *(a1 + 88) = &unk_28828FFD0, *(a1 + 152) = 25000, *(a1 + 176) = 0, *(a1 + 184) = 0, *(a1 + 168) = 0, *(a1 + 215) = 19, a1 + 192 <= "max_wait_for_marker") && a1 + 211 > "max_wait_for_marker" || (strcpy((a1 + 192), "max_wait_for_marker"), *(a1 + 216) = 0, *(a1 + 160) = &unk_28828FFD0, *(a1 + 224) = 25000, *(a1 + 248) = 0, *(a1 + 256) = 0, *(a1 + 240) = 0, *(a1 + 287) = 14, a1 + 264 <= "max_send_delta") && a1 + 278 > "max_send_delta")
  {
    __break(1u);
  }

  strcpy((a1 + 264), "max_send_delta");
  *(a1 + 288) = 0;
  *(a1 + 232) = &unk_28828FFD0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 296) = 500000;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v13[0] = a1 + 88;
  v13[1] = a1 + 160;
  v13[2] = a1 + 232;
  (*(*a2[1] + 16))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  webrtc::ParseFieldTrial(v13, 3, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void webrtc::CongestionControlFeedbackGenerator::OnReceivedPacket(uint64_t a1, uint64_t a2)
{
  *(a1 + 368) |= *a2;
  if (*(a1 + 360))
  {
    v4 = *(a2 + 12);
    v5 = *(a1 + 328);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator new();
  }

  v6 = *(a2 + 112);
  *(a1 + 360) = 1;
  *(a1 + 352) = v6;
  v4 = *(a2 + 12);
  v5 = *(a1 + 328);
  if (!v5)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v4 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_10;
      }
    }

    if (v8 >= v4)
    {
      break;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  webrtc::CongestionControlFeedbackTracker::ReceivedPacket((v7 + 5), a2);
  if (*(a1 + 360))
  {
    if (*(a1 + 368))
    {
      if (*(a1 + 376) >= *(a2 + 112))
      {
        return;
      }

LABEL_27:
      v15.var0 = (*(**(a1 + 24) + 16))(*(a1 + 24));

      webrtc::CongestionControlFeedbackGenerator::SendFeedback(a1, v15);
    }

    v16 = *(a1 + 224);
    v17 = *(a1 + 352);
    v18 = 0x8000000000000000;
    if (v16 != 0x8000000000000000 && v17 != 0x8000000000000000)
    {
      v18 = v17 + v16;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(a1 + 376) > v20)
    {
      v20 = *(a1 + 376);
    }

    if (v20 < *(a2 + 112))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v9 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v10 = *(a1 + 152);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x8000000000000000;
      v13 = v10 == 0x8000000000000000 || v9 == 0x8000000000000000;
      v14 = v10 + v9;
      if (!v13)
      {
        v11 = v14;
      }
    }

    if (v11 <= *(a1 + 376))
    {
      v11 = *(a1 + 376);
    }

    if (v11 < *(a2 + 112))
    {
      goto LABEL_27;
    }
  }
}

void webrtc::CongestionControlFeedbackGenerator::SendFeedback(webrtc::CongestionControlFeedbackGenerator *this, Timestamp a2)
{
  (*(**(this + 3) + 24))(*(this + 3));
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v4 = *(this + 40);
  if (v4 != (this + 328))
  {
    do
    {
      webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback((v4 + 40), a2.var0, v8);
      v5 = *(v4 + 1);
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
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 328));
  }

  *(this + 368) = 0;
  if (*(this + 360) == 1)
  {
    *(this + 360) = 0;
  }

  operator new();
}

uint64_t webrtc::CongestionControlFeedbackGenerator::Process(webrtc::CongestionControlFeedbackGenerator *this, Timestamp a2)
{
  if (*(this + 360))
  {
    if (*(this + 368))
    {
      if (*(this + 47) > a2.var0)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10.var0 = a2.var0;
      webrtc::CongestionControlFeedbackGenerator::SendFeedback(this, v10);
    }

    v17 = *(this + 28);
    v18 = *(this + 44);
    v19 = 0x8000000000000000;
    if (v17 != 0x8000000000000000 && v18 != 0x8000000000000000)
    {
      v19 = v18 + v17;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v19;
    }

    if (*(this + 47) > v22)
    {
      v22 = *(this + 47);
    }

    if (v22 <= a2.var0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = (*(**(this + 3) + 16))(*(this + 3));
    v5 = *(this + 19);
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x8000000000000000;
      v8 = v5 == 0x8000000000000000 || v4 == 0x8000000000000000;
      v9 = v5 + v4;
      if (!v8)
      {
        v6 = v9;
      }
    }

    if (v6 <= *(this + 47))
    {
      v6 = *(this + 47);
    }

    if (v6 <= a2.var0)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (*(this + 360))
  {
    if (*(this + 368))
    {
      v11 = *(this + 47);
    }

    else
    {
      v23 = *(this + 28);
      v24 = *(this + 44);
      v25 = 0x8000000000000000;
      if (v23 != 0x8000000000000000 && v24 != 0x8000000000000000)
      {
        v25 = v24 + v23;
      }

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v25;
      }

      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (*(this + 47) > v11)
      {
        v11 = *(this + 47);
      }
    }
  }

  else
  {
    v12 = (*(**(this + 3) + 16))(*(this + 3));
    v13 = *(this + 19);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x8000000000000000;
      v15 = v13 == 0x8000000000000000 || v12 == 0x8000000000000000;
      v16 = v13 + v12;
      if (!v15)
      {
        v11 = v16;
      }
    }

    if (v11 <= *(this + 47))
    {
      v11 = *(this + 47);
    }
  }

  v27 = v11 - a2.var0;
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x8000000000000000)
  {
    v27 = 0x8000000000000000;
  }

  if (a2.var0 == 0x8000000000000000)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v27;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v29;
  }
}

void webrtc::CongestionControlFeedbackTracker::ReceivedPacket(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = (a1 + 32);
  if ((v5 - v4) <= 0x80000)
  {
    v13 = *(a2 + 4);
    v14 = *(a2 + 4);
    if (*(a1 + 26))
    {
      v15 = *(a1 + 24);
      v16 = v13 >= v15;
      LODWORD(v17) = v13 - v15;
      v18 = v17 != 0 && v16;
      v19 = (v17 & 0x8000u) == 0;
      if (v17 == 0x8000)
      {
        v19 = v18;
      }

      if (v19)
      {
        v17 = v17;
      }

      else
      {
        v17 |= 0xFFFFFFFFFFFF0000;
      }

      v14 = v17 + *(a1 + 16);
    }

    *(a1 + 16) = v14;
    *(a1 + 24) = v13;
    *(a1 + 26) = 1;
    if (*(a1 + 8) == 1 && v14 <= *a1)
    {
      v20 = a2;
      v21 = v3;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          __break(1u);
          return;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/congestion_control_feedback_tracker.cc");
      }

      *a1 = v14 - 1;
      *(a1 + 8) = 1;
      v3 = v21;
      a2 = v20;
    }

    LODWORD(v30) = *(a2 + 12);
    v29 = *(a2 + 112);
    *(&v30 + 1) = v14;
    v31 = v29;
    v32 = *(a2 + 120);
    std::vector<webrtc::CongestionControlFeedbackTracker::PacketInfo>::push_back[abi:sn200100](v3, &v30);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/congestion_control_feedback_tracker.cc");
  }
}

void *std::vector<webrtc::CongestionControlFeedbackTracker::PacketInfo>::push_back[abi:sn200100](void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = ((v2 - *result) >> 5) + 1;
    if (v5 >> 59)
    {
      goto LABEL_13;
    }

    v6 = v3 - *result;
    if (v6 >> 4 > v5)
    {
      v5 = v6 >> 4;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFE0)
    {
      v5 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (!(v5 >> 59))
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

  v4 = a2[1];
  *v2 = *a2;
  v2[1] = v4;
  result[1] = v2 + 2;
  return result;
}

void webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(__n128 *a1, uint64_t a2, void *a3)
{
  v6 = a1[2];
  v7 = a1[2].n128_u64[1];
  v8 = a1[2].n128_i64[0];
  if (v8 == v7)
  {
    return;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,false>(v8, v7, 126 - 2 * __clz((v7 - v8) >> 5), 1, v6);
  v10 = a1[2].n128_u64[0];
  if (a1->n128_u8[8])
  {
    v11 = a1[2].n128_u64[1];
  }

  else
  {
    v11 = a1[2].n128_u64[1];
    if (v10 == v11)
    {
LABEL_38:
      __break(1u);
      return;
    }

    a1->n128_u64[0] = *(v10 + 8) - 1;
    a1->n128_u8[8] = 1;
  }

  if (v10 == v11)
  {
    goto LABEL_38;
  }

  v12 = a1->n128_u64[0];
  v13 = *(v11 - 24);
  if (a1->n128_u64[0] < v13)
  {
    v14 = *v10;
    v15 = v10;
    while ((a1->n128_u8[8] & 1) != 0)
    {
      if (v12 >= (a1->n128_u64[0] + 0x4000))
      {
        goto LABEL_36;
      }

      if (++v12 == *(v10 + 8))
      {
        v16 = *(v10 + 16);
        v17 = a2 - v16;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL || a2 == 0x8000000000000000)
        {
          v17 = 0x8000000000000000;
        }

        if (v16 == 0x8000000000000000 || a2 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v17;
        }

        v21 = *(v10 + 24);
        v10 += 32;
        if (v10 != v11)
        {
          do
          {
            if (*(v10 + 8) != v12)
            {
              break;
            }

            if (*(v10 + 24) == 3)
            {
              v21 = 3;
            }

            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              v3 = v3 & 0xFFFFFFFF00000000 | 0x34A;
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/congestion_control_feedback_tracker.cc");
            }

            v10 += 32;
          }

          while (v10 != a1[2].n128_u64[1]);
        }
      }

      else
      {
        v21 = 0;
        v20 = 0x8000000000000000;
      }

      LODWORD(v29) = v14;
      WORD2(v29) = v12;
      *(&v29 + 1) = v20;
      v30 = v21;
      std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo>::push_back[abi:sn200100](a3, &v29);
      v15 = a1[2].n128_u64[0];
      v11 = a1[2].n128_u64[1];
      if (v15 == v11)
      {
        break;
      }

      v13 = *(v11 - 24);
      if (v12 >= v13)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_38;
  }

  v15 = v10;
LABEL_36:
  a1->n128_u64[0] = v13;
  a1->n128_u8[8] = 1;
  a1[2].n128_u64[1] = v15;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
  while (1)
  {
    v9 = (a2 - 32);
    v10 = (a2 - 64);
    v11 = (a2 - 96);
    for (i = a1; ; *(i - 8) = v137)
    {
LABEL_2:
      a1 = i;
      v13 = (a2 - i) >> 5;
      if (v13 <= 2)
      {
        if (v13 < 2)
        {
          return result;
        }

        if (v13 == 2)
        {
          v168 = *(a2 - 24);
          v169 = *(i + 8);
          v170 = v168 == v169;
          v171 = v168 < v169;
          if (v170)
          {
            v171 = *(a2 - 16) < *(i + 16);
          }

          if (v171)
          {
            *v315 = *i;
            *&v315[16] = *(i + 16);
            v172 = *(a2 - 32);
            *(i + 12) = *(a2 - 20);
            *i = v172;
            result = *v315;
            *(a2 - 20) = *&v315[12];
            *(a2 - 32) = *v315;
          }

          return result;
        }

        goto LABEL_9;
      }

      switch(v13)
      {
        case 3:
          v160 = *(i + 40);
          v161 = *(i + 48);
          v162 = *(i + 8);
          v170 = v160 == v162;
          v163 = v160 < v162;
          if (v170)
          {
            v163 = v161 < *(i + 16);
          }

          v164 = *(a2 - 24);
          v165 = *(a2 - 16) < v161;
          v170 = v164 == v160;
          v166 = v164 < v160;
          if (v170)
          {
            v166 = v165;
          }

          if (v163)
          {
            if (!v166)
            {
              goto LABEL_293;
            }

            *v314 = *i;
            *&v314[16] = *(i + 16);
            v167 = *v9;
            *(i + 12) = *(a2 - 20);
            *i = v167;
            result = *v314;
LABEL_297:
            *(a2 - 20) = *&v314[12];
            *v9 = result;
            return result;
          }

          if (!v166)
          {
            return result;
          }

          *v318 = *(i + 32);
          result = *v318;
          *&v318[16] = *(i + 48);
          v255 = *(a2 - 20);
          *(i + 32) = *v9;
          *(i + 44) = v255;
          *(a2 - 20) = *&v318[12];
          *v9 = *v318;
          goto LABEL_310;
        case 4:
          v173 = *(i + 40);
          v174 = *(i + 48);
          v175 = *(i + 8);
          v170 = v173 == v175;
          v176 = v173 < v175;
          if (v170)
          {
            v177 = v174 < *(i + 16);
          }

          else
          {
            v177 = v176;
          }

          v178 = *(i + 72);
          v179 = *(i + 80);
          v180 = v179 < v174;
          v170 = v178 == v173;
          v181 = v178 < v173;
          if (v170)
          {
            v181 = v180;
          }

          if (v177)
          {
            if (v181)
            {
              *v316 = *i;
              *&v316[16] = *(i + 16);
              *i = *(i + 64);
              *(i + 12) = *(i + 76);
              v182 = *v316;
              goto LABEL_302;
            }

            *v322 = *i;
            *&v322[16] = *(i + 16);
            *i = *(i + 32);
            *(i + 12) = *(i + 44);
            *(i + 32) = *v322;
            result = *&v322[12];
            *(i + 44) = *&v322[12];
            v278 = *(i + 40);
            v279 = v179 < *(i + 48);
            v170 = v178 == v278;
            v280 = v178 < v278;
            if (v170)
            {
              v280 = v279;
            }

            if (v280)
            {
              v182 = *(i + 32);
              *&v316[12] = HIDWORD(v182);
              *&v316[16] = *(i + 48);
              *(i + 32) = *(i + 64);
              *(i + 44) = *(i + 76);
LABEL_302:
              *(i + 64) = v182;
              result = *&v316[12];
              *(i + 76) = *&v316[12];
            }
          }

          else if (v181)
          {
            *v319 = *(i + 32);
            *&v319[16] = *(i + 48);
            *(i + 32) = *(i + 64);
            *(i + 44) = *(i + 76);
            *(i + 64) = *v319;
            result = *&v319[12];
            *(i + 76) = *&v319[12];
            v256 = *(i + 40);
            v257 = *(i + 8);
            v170 = v256 == v257;
            v258 = v256 < v257;
            if (v170)
            {
              v258 = *(i + 48) < *(i + 16);
            }

            if (v258)
            {
              *v320 = *i;
              *&v320[16] = *(i + 16);
              *i = *(i + 32);
              *(i + 12) = *(i + 44);
              *(i + 32) = *v320;
              result = *&v320[12];
              *(i + 44) = *&v320[12];
            }
          }

          v281 = *(a2 - 24);
          v282 = *(i + 72);
          v170 = v281 == v282;
          v283 = v281 < v282;
          if (v170)
          {
            v283 = *(a2 - 16) < *(i + 80);
          }

          if (!v283)
          {
            return result;
          }

          *v323 = *(i + 64);
          result = *v323;
          *&v323[16] = *(i + 80);
          v284 = *(a2 - 20);
          *(i + 64) = *v9;
          *(i + 76) = v284;
          *(a2 - 20) = *&v323[12];
          *v9 = *v323;
          v285 = *(i + 72);
          v286 = *(i + 40);
          v170 = v285 == v286;
          v287 = v285 < v286;
          if (v170)
          {
            v287 = *(i + 80) < *(i + 48);
          }

          if (!v287)
          {
            return result;
          }

          *v324 = *(i + 32);
          *&v324[16] = *(i + 48);
          *(i + 32) = *(i + 64);
          *(i + 44) = *(i + 76);
          *(i + 64) = *v324;
          result = *&v324[12];
          *(i + 76) = *&v324[12];
LABEL_310:
          v288 = *(i + 40);
          v289 = *(i + 8);
          v170 = v288 == v289;
          v290 = v288 < v289;
          if (v170)
          {
            v290 = *(i + 48) < *(i + 16);
          }

          if (v290)
          {
            *v325 = *i;
            *&v325[16] = *(i + 16);
            *i = *(i + 32);
            *(i + 12) = *(i + 44);
            *(i + 32) = *v325;
            result = *&v325[12];
            *(i + 44) = *&v325[12];
          }

          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,0>(i, (i + 32), (i + 64), (i + 96), (a2 - 32), result).n128_u64[0];
          return result;
      }

LABEL_9:
      if (v13 <= 23)
      {
        v183 = (i + 32);
        v185 = i == a2 || v183 == a2;
        if (a4)
        {
          if (!v185)
          {
            v186 = 0;
            v187 = i;
            do
            {
              v189 = v183;
              v190 = v187[5];
              v191 = v187[6];
              v192 = v187[1];
              v170 = v190 == v192;
              v193 = v190 < v192;
              if (v170)
              {
                v193 = v191 < v187[2];
              }

              if (v193)
              {
                v194 = *v189;
                v195 = *(v187 + 14);
                v196 = v186;
                do
                {
                  v197 = i + v196;
                  *(v197 + 32) = *(i + v196);
                  result = *(i + v196 + 12);
                  *(v197 + 44) = result;
                  if (!v196)
                  {
                    v188 = i;
                    goto LABEL_210;
                  }

                  v198 = *(v197 - 24);
                  v199 = v191 < *(v197 - 16);
                  v170 = v190 == v198;
                  v200 = v190 < v198;
                  if (!v170)
                  {
                    v199 = v200;
                  }

                  v196 -= 32;
                }

                while (v199);
                v188 = i + v196 + 32;
LABEL_210:
                *v188 = v194;
                *(v188 + 8) = v190;
                *(v188 + 16) = v191;
                *(v188 + 24) = v195;
              }

              v183 = v189 + 4;
              v186 += 32;
              v187 = v189;
            }

            while (v189 + 4 != a2);
          }
        }

        else if (!v185)
        {
          v259 = 0;
          v260 = 32;
          v261 = i;
          do
          {
            v263 = v260;
            v264 = *(v261 + 40);
            v265 = *(v261 + 48);
            v266 = *(v261 + 8);
            v170 = v264 == v266;
            v267 = v264 < v266;
            if (v170)
            {
              v267 = v265 < *(v261 + 16);
            }

            if (v267)
            {
              v268 = *v183;
              v269 = *(v261 + 56);
              do
              {
                v270 = i + v259;
                *(v270 + 32) = *(i + v259);
                result = *(i + v259 + 12);
                *(v270 + 44) = result;
                if (v259 == -32)
                {
                  goto LABEL_292;
                }

                v259 -= 32;
                v271 = *(v270 - 24);
                v272 = v265 < *(v270 - 16);
                v170 = v264 == v271;
                v273 = v264 < v271;
                if (!v170)
                {
                  v272 = v273;
                }
              }

              while (v272);
              v262 = i + v259;
              *(v262 + 32) = v268;
              *(v262 + 40) = v264;
              *(v262 + 48) = v265;
              *(v262 + 56) = v269;
            }

            v261 = i + v263;
            v260 = v263 + 32;
            v183 = (i + v263 + 32);
            v259 = v263;
          }

          while (v183 != a2);
        }

        return result;
      }

      if (!a3)
      {
        if (i != a2)
        {
          v201 = (v13 - 2) >> 1;
          v202 = v201;
          do
          {
            v203 = v202;
            if (v201 >= v202)
            {
              v204 = (2 * v202) | 1;
              v205 = i + 32 * v204;
              if (2 * v203 + 2 < v13)
              {
                v206 = *(v205 + 8);
                v207 = *(v205 + 40);
                v170 = v206 == v207;
                v208 = v206 < v207;
                if (v170)
                {
                  v208 = *(v205 + 16) < *(v205 + 48);
                }

                v209 = !v208;
                if (v208)
                {
                  v210 = 32;
                }

                else
                {
                  v210 = 0;
                }

                v205 += v210;
                if (!v209)
                {
                  v204 = 2 * v203 + 2;
                }
              }

              v211 = i + 32 * v203;
              v212 = *(v205 + 8);
              v213 = *(v211 + 8);
              v214 = *(v211 + 16);
              v170 = v212 == v213;
              v215 = v212 < v213;
              if (v170)
              {
                v215 = *(v205 + 16) < v214;
              }

              if (!v215)
              {
                v216 = *v211;
                v217 = *(v211 + 24);
                do
                {
                  v221 = v211;
                  v211 = v205;
                  v222 = *v205;
                  *(v221 + 12) = *(v205 + 12);
                  *v221 = v222;
                  if (v201 < v204)
                  {
                    break;
                  }

                  v223 = (2 * v204) | 1;
                  v205 = i + 32 * v223;
                  v224 = 2 * v204 + 2;
                  if (v224 < v13)
                  {
                    v225 = *(v205 + 8);
                    v226 = *(v205 + 40);
                    v170 = v225 == v226;
                    v227 = v225 < v226;
                    if (v170)
                    {
                      v227 = *(v205 + 16) < *(v205 + 48);
                    }

                    v228 = !v227;
                    if (v227)
                    {
                      v229 = 32;
                    }

                    else
                    {
                      v229 = 0;
                    }

                    v205 += v229;
                    if (!v228)
                    {
                      v223 = v224;
                    }
                  }

                  v218 = *(v205 + 8);
                  v219 = *(v205 + 16) < v214;
                  v170 = v218 == v213;
                  v220 = v218 < v213;
                  if (!v170)
                  {
                    v219 = v220;
                  }

                  v204 = v223;
                }

                while (!v219);
                *v211 = v216;
                *(v211 + 8) = v213;
                *(v211 + 16) = v214;
                *(v211 + 24) = v217;
              }
            }

            v202 = v203 - 1;
          }

          while (v203);
          do
          {
            v231 = 0;
            *v317 = *i;
            *&v317[16] = *(i + 16);
            v232 = i;
            do
            {
              v239 = &v232[2 * v231];
              v237 = v239 + 4;
              v240 = (2 * v231) | 1;
              v231 = 2 * v231 + 2;
              if (v231 < v13)
              {
                v233 = v239[5];
                v234 = v239[9];
                v170 = v233 == v234;
                v235 = v233 < v234;
                if (v170)
                {
                  v235 = v239[6] < v239[10];
                }

                v236 = v239 + 8;
                if (v235)
                {
                  v237 = v236;
                }

                else
                {
                  v231 = v240;
                }
              }

              else
              {
                v231 = v240;
              }

              v238 = *v237;
              *(v232 + 12) = *(v237 + 12);
              *v232 = v238;
              v232 = v237;
            }

            while (v231 <= ((v13 - 2) >> 1));
            a2 -= 32;
            if (v237 == a2)
            {
              result = *v317;
              *(v237 + 12) = *&v317[12];
              *v237 = *v317;
            }

            else
            {
              v241 = *a2;
              *(v237 + 12) = *(a2 + 12);
              *v237 = v241;
              result = *v317;
              *(a2 + 12) = *&v317[12];
              *a2 = *v317;
              v242 = (v237 - i + 32) >> 5;
              v230 = v242 < 2;
              v243 = v242 - 2;
              if (!v230)
              {
                v244 = v243 >> 1;
                v245 = i + 32 * v244;
                v246 = *(v245 + 8);
                v247 = v237[1];
                v248 = v237[2];
                v170 = v246 == v247;
                v249 = v246 < v247;
                if (v170)
                {
                  v249 = *(v245 + 16) < v248;
                }

                if (v249)
                {
                  v250 = *v237;
                  v251 = *(v237 + 6);
                  do
                  {
                    v252 = v237;
                    v237 = v245;
                    result = *v245;
                    *(v252 + 12) = *(v245 + 12);
                    *v252 = result;
                    if (!v244)
                    {
                      break;
                    }

                    v244 = (v244 - 1) >> 1;
                    v245 = i + 32 * v244;
                    v253 = *(v245 + 8);
                    v170 = v253 == v247;
                    v254 = v253 < v247;
                    if (v170)
                    {
                      v254 = *(v245 + 16) < v248;
                    }
                  }

                  while (v254);
                  *v237 = v250;
                  v237[1] = v247;
                  v237[2] = v248;
                  *(v237 + 6) = v251;
                }
              }
            }

            v230 = v13-- <= 2;
          }

          while (!v230);
        }

        return result;
      }

      v14 = i + 32 * (v13 >> 1);
      v15 = *(a2 - 24);
      v16 = *(a2 - 16);
      if (v13 >= 0x81)
      {
        break;
      }

      v24 = *(i + 8);
      v25 = *(i + 16);
      v26 = *(v14 + 8);
      v170 = v24 == v26;
      v27 = v24 < v26;
      if (v170)
      {
        v27 = v25 < *(v14 + 16);
      }

      v28 = v16 < v25;
      v170 = v15 == v24;
      v29 = v15 < v24;
      if (v170)
      {
        v29 = v28;
      }

      if (v27)
      {
        if (v29)
        {
          *v292 = *v14;
          *&v292[16] = *(v14 + 16);
          v30 = *v9;
          *(v14 + 12) = *(a2 - 20);
          *v14 = v30;
LABEL_58:
          result = *v292;
          *(a2 - 20) = *&v292[12];
          *v9 = *v292;
          goto LABEL_59;
        }

        *v301 = *v14;
        *&v301[16] = *(v14 + 16);
        v61 = *i;
        *(v14 + 12) = *(i + 12);
        *v14 = v61;
        result = *v301;
        *(i + 12) = *&v301[12];
        *i = *v301;
        v62 = *(a2 - 24);
        v63 = *(i + 8);
        v170 = v62 == v63;
        v64 = v62 < v63;
        if (v170)
        {
          v64 = *(a2 - 16) < *(i + 16);
        }

        if (v64)
        {
          *v292 = *i;
          *&v292[16] = *(i + 16);
          v65 = *v9;
          *(i + 12) = *(a2 - 20);
          *i = v65;
          goto LABEL_58;
        }
      }

      else if (v29)
      {
        *v295 = *i;
        *&v295[16] = *(i + 16);
        v36 = *v9;
        *(i + 12) = *(a2 - 20);
        *i = v36;
        result = *v295;
        *(a2 - 20) = *&v295[12];
        *v9 = *v295;
        v37 = *(i + 8);
        v38 = *(v14 + 8);
        v170 = v37 == v38;
        v39 = v37 < v38;
        if (v170)
        {
          v39 = *(i + 16) < *(v14 + 16);
        }

        if (v39)
        {
          *v296 = *v14;
          *&v296[16] = *(v14 + 16);
          v40 = *i;
          *(v14 + 12) = *(i + 12);
          *v14 = v40;
          result = *v296;
          *(i + 12) = *&v296[12];
          *i = *v296;
          --a3;
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

LABEL_59:
      --a3;
      if (a4)
      {
        goto LABEL_60;
      }

LABEL_101:
      v106 = *(i - 24);
      v66 = *(i + 8);
      v67 = *(i + 16);
      v170 = v106 == v66;
      v107 = v106 < v66;
      if (v170)
      {
        v107 = *(i - 16) < v67;
      }

      if (v107)
      {
        goto LABEL_104;
      }

      v136 = *i;
      v137 = *(i + 24);
      v138 = *(a2 - 24);
      v170 = v66 == v138;
      v139 = v66 < v138;
      if (v170)
      {
        v139 = v67 < *(a2 - 16);
      }

      if (v139)
      {
        v140 = i + 32;
        do
        {
          if (v140 == a2)
          {
            goto LABEL_292;
          }

          v141 = *(v140 + 8);
          v170 = v66 == v141;
          v142 = v66 < v141;
          if (v170)
          {
            v142 = v67 < *(v140 + 16);
          }

          v140 += 32;
        }

        while (!v142);
        i = v140 - 32;
      }

      else
      {
        v143 = i + 32;
        do
        {
          i = v143;
          if (v143 >= a2)
          {
            break;
          }

          v144 = *(v143 + 8);
          v145 = v67 < *(i + 16);
          v170 = v66 == v144;
          v146 = v66 < v144;
          if (!v170)
          {
            v145 = v146;
          }

          v143 = i + 32;
        }

        while (!v145);
      }

      v147 = a2;
      if (i < a2)
      {
        v148 = a2;
        do
        {
          if (v148 == a1)
          {
            goto LABEL_292;
          }

          v147 = v148 - 2;
          v149 = *(v148 - 3);
          v150 = v67 < *(v148 - 2);
          v170 = v66 == v149;
          v151 = v66 < v149;
          if (v170)
          {
            v151 = v150;
          }

          v148 = v147;
        }

        while (v151);
      }

      if (i < v147)
      {
        do
        {
          *v313 = *i;
          *&v313[16] = *(i + 16);
          v152 = *v147;
          *(i + 12) = *(v147 + 12);
          *i = v152;
          result = *v313;
          *(v147 + 12) = *&v313[12];
          *v147 = *v313;
          v153 = i + 32;
          do
          {
            if (v153 == a2)
            {
              goto LABEL_292;
            }

            v154 = *(v153 + 8);
            v170 = v66 == v154;
            v155 = v66 < v154;
            if (v170)
            {
              v155 = v67 < *(v153 + 16);
            }

            v153 += 32;
          }

          while (!v155);
          i = v153 - 32;
          do
          {
            if (v147 == a1)
            {
              goto LABEL_292;
            }

            v156 = v147 - 2;
            v157 = *(v147 - 3);
            v158 = v67 < *(v147 - 2);
            v170 = v66 == v157;
            v159 = v66 < v157;
            if (v170)
            {
              v159 = v158;
            }

            v147 = v156;
          }

          while (v159);
          v147 = v156;
        }

        while (i < v156);
      }

      if (i - 32 != a1)
      {
        result = *(i - 32);
        *(a1 + 12) = *(i - 20);
        *a1 = result;
      }

      a4 = 0;
      *(i - 32) = v136;
      *(i - 24) = v66;
      *(i - 16) = v67;
    }

    v17 = *(v14 + 8);
    v18 = *(v14 + 16);
    v19 = *(i + 8);
    v170 = v17 == v19;
    v20 = v17 < v19;
    if (v170)
    {
      v20 = v18 < *(i + 16);
    }

    v21 = v16 < v18;
    v170 = v15 == v17;
    v22 = v15 < v17;
    if (v170)
    {
      v22 = v21;
    }

    if (v20)
    {
      if (v22)
      {
        *v291 = *i;
        *&v291[16] = *(i + 16);
        v23 = *v9;
        *(i + 12) = *(a2 - 20);
        *i = v23;
        goto LABEL_41;
      }

      *v297 = *i;
      *&v297[16] = *(i + 16);
      v41 = *v14;
      *(i + 12) = *(v14 + 12);
      *i = v41;
      *(v14 + 12) = *&v297[12];
      *v14 = *v297;
      v42 = *(a2 - 24);
      v43 = *(v14 + 8);
      v170 = v42 == v43;
      v44 = v42 < v43;
      if (v170)
      {
        v44 = *(a2 - 16) < *(v14 + 16);
      }

      if (v44)
      {
        *v291 = *v14;
        *&v291[16] = *(v14 + 16);
        v45 = *v9;
        *(v14 + 12) = *(a2 - 20);
        *v14 = v45;
LABEL_41:
        *(a2 - 20) = *&v291[12];
        *v9 = *v291;
      }
    }

    else if (v22)
    {
      *v293 = *v14;
      *&v293[16] = *(v14 + 16);
      v31 = *v9;
      *(v14 + 12) = *(a2 - 20);
      *v14 = v31;
      *(a2 - 20) = *&v293[12];
      *v9 = *v293;
      v32 = *(v14 + 8);
      v33 = *(i + 8);
      v170 = v32 == v33;
      v34 = v32 < v33;
      if (v170)
      {
        v34 = *(v14 + 16) < *(i + 16);
      }

      if (v34)
      {
        *v294 = *i;
        *&v294[16] = *(i + 16);
        v35 = *v14;
        *(i + 12) = *(v14 + 12);
        *i = v35;
        *(v14 + 12) = *&v294[12];
        *v14 = *v294;
      }
    }

    v46 = (v14 - 32);
    v47 = *(v14 - 24);
    v48 = *(v14 - 16);
    v49 = *(i + 40);
    v170 = v47 == v49;
    v50 = v47 < v49;
    if (v170)
    {
      v50 = v48 < *(i + 48);
    }

    v51 = *(a2 - 56);
    v52 = *(a2 - 48) < v48;
    v170 = v51 == v47;
    v53 = v51 < v47;
    if (v170)
    {
      v53 = v52;
    }

    if (v50)
    {
      if (v53)
      {
        v54 = *(i + 32);
        *&v298[12] = HIDWORD(v54);
        *&v298[16] = *(i + 48);
        v55 = *(a2 - 52);
        *(i + 32) = *v10;
        *(i + 44) = v55;
        goto LABEL_65;
      }

      *v302 = *(i + 32);
      *&v302[16] = *(i + 48);
      v68 = *(v14 - 20);
      *(i + 32) = *v46;
      *(i + 44) = v68;
      *(v14 - 20) = *&v302[12];
      *v46 = *v302;
      v69 = *(a2 - 56);
      v70 = *(v14 - 24);
      v170 = v69 == v70;
      v71 = v69 < v70;
      if (v170)
      {
        v71 = *(a2 - 48) < *(v14 - 16);
      }

      if (v71)
      {
        *v298 = *v46;
        *&v298[16] = *(v14 - 16);
        v72 = *v10;
        *(v14 - 20) = *(a2 - 52);
        *v46 = v72;
        v54 = *v298;
LABEL_65:
        *(a2 - 52) = *&v298[12];
        *v10 = v54;
      }
    }

    else if (v53)
    {
      *v299 = *v46;
      *&v299[16] = *(v14 - 16);
      v56 = *v10;
      *(v14 - 20) = *(a2 - 52);
      *v46 = v56;
      *(a2 - 52) = *&v299[12];
      *v10 = *v299;
      v57 = *(v14 - 24);
      v58 = *(i + 40);
      v170 = v57 == v58;
      v59 = v57 < v58;
      if (v170)
      {
        v59 = *(v14 - 16) < *(i + 48);
      }

      if (v59)
      {
        *v300 = *(i + 32);
        *&v300[16] = *(i + 48);
        v60 = *(v14 - 20);
        *(i + 32) = *v46;
        *(i + 44) = v60;
        *(v14 - 20) = *&v300[12];
        *v46 = *v300;
      }
    }

    v73 = *(v14 + 40);
    v74 = *(v14 + 48);
    v75 = *(i + 72);
    v170 = v73 == v75;
    v76 = v73 < v75;
    if (v170)
    {
      v76 = v74 < *(i + 80);
    }

    v77 = *(a2 - 88);
    v78 = *(a2 - 80) < v74;
    v170 = v77 == v73;
    v79 = v77 < v73;
    if (v170)
    {
      v79 = v78;
    }

    if (v76)
    {
      if (v79)
      {
        v80 = *(i + 64);
        *&v303[12] = HIDWORD(v80);
        *&v303[16] = *(i + 80);
        v81 = *(a2 - 84);
        *(i + 64) = *v11;
        *(i + 76) = v81;
        goto LABEL_82;
      }

      *v306 = *(i + 64);
      *&v306[16] = *(i + 80);
      v87 = *(v14 + 44);
      *(i + 64) = *(v14 + 32);
      *(i + 76) = v87;
      *(v14 + 44) = *&v306[12];
      *(v14 + 32) = *v306;
      v88 = *(a2 - 88);
      v89 = *(v14 + 40);
      v170 = v88 == v89;
      v90 = v88 < v89;
      if (v170)
      {
        v90 = *(a2 - 80) < *(v14 + 48);
      }

      if (v90)
      {
        *v303 = *(v14 + 32);
        *&v303[16] = *(v14 + 48);
        v91 = *v11;
        *(v14 + 44) = *(a2 - 84);
        *(v14 + 32) = v91;
        v80 = *v303;
LABEL_82:
        *(a2 - 84) = *&v303[12];
        *v11 = v80;
      }
    }

    else if (v79)
    {
      *v304 = *(v14 + 32);
      *&v304[16] = *(v14 + 48);
      v82 = *v11;
      *(v14 + 44) = *(a2 - 84);
      *(v14 + 32) = v82;
      *(a2 - 84) = *&v304[12];
      *v11 = *v304;
      v83 = *(v14 + 40);
      v84 = *(i + 72);
      v170 = v83 == v84;
      v85 = v83 < v84;
      if (v170)
      {
        v85 = *(v14 + 48) < *(i + 80);
      }

      if (v85)
      {
        *v305 = *(i + 64);
        *&v305[16] = *(i + 80);
        v86 = *(v14 + 44);
        *(i + 64) = *(v14 + 32);
        *(i + 76) = v86;
        *(v14 + 44) = *&v305[12];
        *(v14 + 32) = *v305;
      }
    }

    v92 = *(v14 + 8);
    v93 = *(v14 + 16);
    v94 = *(v14 - 24);
    v170 = v92 == v94;
    v95 = v92 < v94;
    if (v170)
    {
      v95 = v93 < *(v14 - 16);
    }

    v96 = *(v14 + 40);
    v97 = *(v14 + 48) < v93;
    v170 = v96 == v92;
    v98 = v96 < v92;
    if (v170)
    {
      v98 = v97;
    }

    if (v95)
    {
      if (v98)
      {
        *v307 = *v46;
        *&v307[16] = *(v14 - 16);
        *v46 = *(v14 + 32);
        *(v14 - 20) = *(v14 + 44);
        goto LABEL_99;
      }

      *v310 = *v46;
      *&v310[16] = *(v14 - 16);
      *v46 = *v14;
      *(v14 - 20) = *(v14 + 12);
      *(v14 + 12) = *&v310[12];
      *v14 = *v310;
      v102 = *(v14 + 40);
      v103 = *(v14 + 8);
      v170 = v102 == v103;
      v104 = v102 < v103;
      if (v170)
      {
        v104 = *(v14 + 48) < *(v14 + 16);
      }

      if (v104)
      {
        *v307 = *v14;
        *&v307[16] = *(v14 + 16);
        *v14 = *(v14 + 32);
        *(v14 + 12) = *(v14 + 44);
LABEL_99:
        *(v14 + 44) = *&v307[12];
        *(v14 + 32) = *v307;
      }
    }

    else if (v98)
    {
      *v308 = *v14;
      *&v308[16] = *(v14 + 16);
      *v14 = *(v14 + 32);
      *(v14 + 12) = *(v14 + 44);
      *(v14 + 44) = *&v308[12];
      *(v14 + 32) = *v308;
      v99 = *(v14 + 8);
      v100 = *(v14 - 24);
      v170 = v99 == v100;
      v101 = v99 < v100;
      if (v170)
      {
        v101 = *(v14 + 16) < *(v14 - 16);
      }

      if (v101)
      {
        *v309 = *v46;
        *&v309[16] = *(v14 - 16);
        *v46 = *v14;
        *(v14 - 20) = *(v14 + 12);
        *(v14 + 12) = *&v309[12];
        *v14 = *v309;
      }
    }

    *v311 = *i;
    *&v311[16] = *(i + 16);
    v105 = *v14;
    *(i + 12) = *(v14 + 12);
    *i = v105;
    result = *v311;
    *(v14 + 12) = *&v311[12];
    *v14 = *v311;
    --a3;
    if ((a4 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_60:
    v66 = *(i + 8);
    v67 = *(i + 16);
LABEL_104:
    v108 = 0;
    v109 = *i;
    v110 = *(i + 24);
    do
    {
      v111 = i + v108;
      if (i + v108 + 32 == a2)
      {
        goto LABEL_292;
      }

      v112 = *(v111 + 40);
      v113 = *(v111 + 48) < v67;
      v170 = v112 == v66;
      v114 = v112 < v66;
      if (!v170)
      {
        v113 = v114;
      }

      v108 += 32;
    }

    while (v113);
    v115 = i + v108;
    v116 = a2;
    if (v108 != 32)
    {
      break;
    }

    v121 = a2;
    do
    {
      if (v115 >= v121)
      {
        v117 = v121;
        i = v115;
        goto LABEL_135;
      }

      v117 = v121 - 2;
      v122 = *(v121 - 3);
      v123 = *(v121 - 2) < v67;
      v170 = v122 == v66;
      v124 = v122 < v66;
      if (v170)
      {
        v124 = v123;
      }

      v121 = v117;
    }

    while (!v124);
LABEL_120:
    i = v115;
    if (v115 < v117)
    {
      v125 = v117;
LABEL_122:
      *v312 = *i;
      *&v312[16] = *(i + 16);
      v126 = *v125;
      *(i + 12) = *(v125 + 12);
      *i = v126;
      result = *v312;
      *(v125 + 12) = *&v312[12];
      *v125 = *v312;
      v127 = i + 32;
      while (v127 != a2)
      {
        v128 = *(v127 + 8);
        v170 = v128 == v66;
        v129 = v128 < v66;
        if (v170)
        {
          v129 = *(v127 + 16) < v67;
        }

        v127 += 32;
        if (!v129)
        {
          i = v127 - 32;
          while (v125 != a1)
          {
            v130 = v125 - 2;
            v131 = *(v125 - 3);
            v132 = *(v125 - 2) < v67;
            v170 = v131 == v66;
            v133 = v131 < v66;
            if (v170)
            {
              v133 = v132;
            }

            v125 = v130;
            if (v133)
            {
              v125 = v130;
              if (i < v130)
              {
                goto LABEL_122;
              }

              goto LABEL_135;
            }
          }

          goto LABEL_292;
        }
      }

      goto LABEL_292;
    }

LABEL_135:
    if (i - 32 != a1)
    {
      result = *(i - 32);
      *(a1 + 12) = *(i - 20);
      *a1 = result;
    }

    *(i - 32) = v109;
    *(i - 24) = v66;
    *(i - 16) = v67;
    *(i - 8) = v110;
    if (v115 < v117)
    {
      goto LABEL_140;
    }

    v134 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *>(a1, (i - 32), result);
    if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *>(i, a2, v135))
    {
      if (v134)
      {
        goto LABEL_2;
      }

LABEL_140:
      std::__introsort<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,false>(a1, i - 32, a3, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = i - 32;
    if (v134)
    {
      return result;
    }
  }

  while (v116 != i)
  {
    v117 = v116 - 2;
    v118 = *(v116 - 3);
    v119 = *(v116 - 2) < v67;
    v170 = v118 == v66;
    v120 = v118 < v66;
    if (v170)
    {
      v120 = v119;
    }

    v116 = v117;
    if (v120)
    {
      goto LABEL_120;
    }
  }

LABEL_292:
  __break(1u);
LABEL_293:
  *v321 = *a1;
  *&v321[16] = *(a1 + 16);
  *a1 = *(a1 + 32);
  *(a1 + 12) = *(a1 + 44);
  *(a1 + 32) = *v321;
  result = *&v321[12];
  *(a1 + 44) = *&v321[12];
  v274 = *(a2 - 24);
  v275 = *(a1 + 40);
  v170 = v274 == v275;
  v276 = v274 < v275;
  if (v170)
  {
    v276 = *(a2 - 16) < *(a1 + 48);
  }

  if (v276)
  {
    result = *(a1 + 32);
    *&v314[12] = result.n128_u32[3];
    *&v314[16] = *(a1 + 48);
    v277 = *(a2 - 20);
    *(a1 + 32) = *v9;
    *(a1 + 44) = v277;
    goto LABEL_297;
  }

  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a1 + 1);
  v9 = v6 == v8;
  v10 = v6 < v8;
  if (v9)
  {
    v10 = v7 < *(a1 + 2);
  }

  v11 = *(a3 + 1);
  v12 = *(a3 + 2) < v7;
  v9 = v11 == v6;
  v13 = v11 < v6;
  if (v9)
  {
    v13 = v12;
  }

  if (v10)
  {
    if (v13)
    {
      v14 = *a1;
      *v64 = *a1;
      *&v64[16] = a1[1];
      v15 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v15;
LABEL_17:
      *a3 = v14;
      result = *&v64[12];
      *(a3 + 12) = *&v64[12];
      goto LABEL_18;
    }

    *v67 = *a1;
    v23 = *a1;
    *&v67[16] = a1[1];
    v24 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v24;
    *a2 = v23;
    result = *&v67[12];
    *(a2 + 12) = *&v67[12];
    v25 = *(a3 + 1);
    v26 = *(a2 + 1);
    v9 = v25 == v26;
    v27 = v25 < v26;
    if (v9)
    {
      v27 = *(a3 + 2) < *(a2 + 2);
    }

    if (v27)
    {
      v14 = *a2;
      *v64 = *a2;
      *&v64[16] = a2[1];
      v28 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v28;
      goto LABEL_17;
    }
  }

  else if (v13)
  {
    *v65 = *a2;
    v16 = *a2;
    *&v65[16] = a2[1];
    v17 = *(a3 + 12);
    *a2 = *a3;
    *(a2 + 12) = v17;
    *a3 = v16;
    result = *&v65[12];
    *(a3 + 12) = *&v65[12];
    v18 = *(a2 + 1);
    v19 = *(a1 + 1);
    v9 = v18 == v19;
    v20 = v18 < v19;
    if (v9)
    {
      v20 = *(a2 + 2) < *(a1 + 2);
    }

    if (v20)
    {
      *v66 = *a1;
      v21 = *a1;
      *&v66[16] = a1[1];
      v22 = *(a2 + 12);
      *a1 = *a2;
      *(a1 + 12) = v22;
      *a2 = v21;
      result = *&v66[12];
      *(a2 + 12) = *&v66[12];
    }
  }

LABEL_18:
  v29 = *(a4 + 1);
  v30 = *(a3 + 1);
  v9 = v29 == v30;
  v31 = v29 < v30;
  if (v9)
  {
    v31 = *(a4 + 2) < *(a3 + 2);
  }

  if (v31)
  {
    *v68 = *a3;
    v32 = *a3;
    *&v68[16] = a3[1];
    v33 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v33;
    *a4 = v32;
    result = *&v68[12];
    *(a4 + 12) = *&v68[12];
    v34 = *(a3 + 1);
    v35 = *(a2 + 1);
    v9 = v34 == v35;
    v36 = v34 < v35;
    if (v9)
    {
      v36 = *(a3 + 2) < *(a2 + 2);
    }

    if (v36)
    {
      *v69 = *a2;
      v37 = *a2;
      *&v69[16] = a2[1];
      v38 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v38;
      *a3 = v37;
      result = *&v69[12];
      *(a3 + 12) = *&v69[12];
      v39 = *(a2 + 1);
      v40 = *(a1 + 1);
      v9 = v39 == v40;
      v41 = v39 < v40;
      if (v9)
      {
        v41 = *(a2 + 2) < *(a1 + 2);
      }

      if (v41)
      {
        *v70 = *a1;
        v42 = *a1;
        *&v70[16] = a1[1];
        v43 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v43;
        *a2 = v42;
        result = *&v70[12];
        *(a2 + 12) = *&v70[12];
      }
    }
  }

  v44 = *(a5 + 1);
  v45 = *(a4 + 1);
  v9 = v44 == v45;
  v46 = v44 < v45;
  if (v9)
  {
    v46 = *(a5 + 2) < *(a4 + 2);
  }

  if (v46)
  {
    *v71 = *a4;
    v47 = *a4;
    *&v71[16] = a4[1];
    v48 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v48;
    *a5 = v47;
    result = *&v71[12];
    *(a5 + 12) = *&v71[12];
    v49 = *(a4 + 1);
    v50 = *(a3 + 1);
    v9 = v49 == v50;
    v51 = v49 < v50;
    if (v9)
    {
      v51 = *(a4 + 2) < *(a3 + 2);
    }

    if (v51)
    {
      *v72 = *a3;
      v52 = *a3;
      *&v72[16] = a3[1];
      v53 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v53;
      *a4 = v52;
      result = *&v72[12];
      *(a4 + 12) = *&v72[12];
      v54 = *(a3 + 1);
      v55 = *(a2 + 1);
      v9 = v54 == v55;
      v56 = v54 < v55;
      if (v9)
      {
        v56 = *(a3 + 2) < *(a2 + 2);
      }

      if (v56)
      {
        *v73 = *a2;
        v57 = *a2;
        *&v73[16] = a2[1];
        v58 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v58;
        *a3 = v57;
        result = *&v73[12];
        *(a3 + 12) = *&v73[12];
        v59 = *(a2 + 1);
        v60 = *(a1 + 1);
        v9 = v59 == v60;
        v61 = v59 < v60;
        if (v9)
        {
          v61 = *(a2 + 2) < *(a1 + 2);
        }

        if (v61)
        {
          *v74 = *a1;
          v62 = *a1;
          *&v74[16] = a1[1];
          v63 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v63;
          *a2 = v62;
          result = *&v74[12];
          *(a2 + 12) = *&v74[12];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v11 = (a2 - 4);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 8);
      v6 = v12 == v14;
      v15 = v12 < v14;
      if (v6)
      {
        v15 = v13 < *(a1 + 16);
      }

      v16 = *(a2 - 3);
      v17 = *(a2 - 2) < v13;
      v6 = v16 == v12;
      v18 = v16 < v12;
      if (v6)
      {
        v18 = v17;
      }

      if (v15)
      {
        if (v18)
        {
          v19 = *a1;
          *v91 = *a1;
          *&v91[16] = *(a1 + 16);
          v20 = *(a2 - 20);
          *a1 = *v11;
          *(a1 + 12) = v20;
        }

        else
        {
          *v99 = *a1;
          v51 = *a1;
          *&v99[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 12) = *(a1 + 44);
          *(a1 + 32) = v51;
          *(a1 + 44) = *&v99[12];
          v52 = *(a2 - 3);
          v53 = *(a1 + 40);
          v6 = v52 == v53;
          v54 = v52 < v53;
          if (v6)
          {
            v54 = *(a2 - 2) < *(a1 + 48);
          }

          if (!v54)
          {
            return 1;
          }

          v19 = *(a1 + 32);
          *&v91[12] = HIDWORD(v19);
          *&v91[16] = *(a1 + 48);
          v55 = *(a2 - 20);
          *(a1 + 32) = *v11;
          *(a1 + 44) = v55;
        }

        *v11 = v19;
        *(a2 - 20) = *&v91[12];
        return 1;
      }

      if (!v18)
      {
        return 1;
      }

      *v94 = *(a1 + 32);
      *&v94[16] = *(a1 + 48);
      v42 = *(a2 - 20);
      *(a1 + 32) = *v11;
      *(a1 + 44) = v42;
      *v11 = *v94;
      *(a2 - 20) = *&v94[12];
LABEL_84:
      v86 = *(a1 + 40);
      v87 = *(a1 + 8);
      v6 = v86 == v87;
      v88 = v86 < v87;
      if (v6)
      {
        v88 = *(a1 + 48) < *(a1 + 16);
      }

      if (v88)
      {
        *v104 = *a1;
        v89 = *a1;
        *&v104[16] = *(a1 + 16);
        *a1 = *(a1 + 32);
        *(a1 + 12) = *(a1 + 44);
        *(a1 + 32) = v89;
        *(a1 + 44) = *&v104[12];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::CongestionControlFeedbackTracker::AddPacketsToFeedback(webrtc::Timestamp,std::vector<webrtc::rtcp::CongestionControlFeedback::PacketInfo> &)::$_0 &,webrtc::CongestionControlFeedbackTracker::PacketInfo *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 2, a3);
        return 1;
      }

      goto LABEL_19;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v34 = *(a1 + 8);
    v35 = *(a1 + 16);
    if (v32 == v34)
    {
      v36 = v33 < v35;
    }

    else
    {
      v36 = v32 < v34;
    }

    v37 = *(a1 + 72);
    v38 = *(a1 + 80);
    v39 = v38 < v33;
    v6 = v37 == v32;
    v40 = v37 < v32;
    if (v6)
    {
      v40 = v39;
    }

    if (!v36)
    {
      if (v40)
      {
        *v97 = *(a1 + 32);
        *&v97[16] = *(a1 + 48);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 44) = *(a1 + 76);
        *(a1 + 64) = *v97;
        *(a1 + 76) = *&v97[12];
        v47 = *(a1 + 40);
        v48 = *(a1 + 48) < v35;
        v6 = v47 == v34;
        v49 = v47 < v34;
        if (v6)
        {
          v49 = v48;
        }

        if (v49)
        {
          *v98 = *a1;
          v50 = *a1;
          *&v98[16] = *(a1 + 16);
          *a1 = *(a1 + 32);
          *(a1 + 12) = *(a1 + 44);
          *(a1 + 32) = v50;
          *(a1 + 44) = *&v98[12];
        }
      }

      goto LABEL_77;
    }

    if (v40)
    {
      v41 = *a1;
      *v93 = *a1;
      *&v93[16] = *(a1 + 16);
      *a1 = *(a1 + 64);
      *(a1 + 12) = *(a1 + 76);
    }

    else
    {
      *v101 = *a1;
      v75 = *a1;
      *&v101[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 12) = *(a1 + 44);
      *(a1 + 32) = v75;
      *(a1 + 44) = *&v101[12];
      v76 = *(a1 + 40);
      v6 = v37 == v76;
      v77 = v37 < v76;
      if (v6)
      {
        v77 = v38 < *(a1 + 48);
      }

      if (!v77)
      {
        goto LABEL_77;
      }

      v41 = *(a1 + 32);
      *&v93[12] = HIDWORD(v41);
      *&v93[16] = *(a1 + 48);
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 44) = *(a1 + 76);
    }

    *(a1 + 64) = v41;
    *(a1 + 76) = *&v93[12];
LABEL_77:
    v78 = *(a2 - 3);
    v79 = *(a1 + 72);
    v6 = v78 == v79;
    v80 = v78 < v79;
    if (v6)
    {
      v80 = *(a2 - 2) < *(a1 + 80);
    }

    if (!v80)
    {
      return 1;
    }

    v81 = a2 - 4;
    *v102 = *(a1 + 64);
    *&v102[16] = *(a1 + 80);
    v82 = *(a2 - 20);
    *(a1 + 64) = *(a2 - 2);
    *(a1 + 76) = v82;
    *v81 = *v102;
    *(v81 + 12) = *&v102[12];
    v83 = *(a1 + 72);
    v84 = *(a1 + 40);
    v6 = v83 == v84;
    v85 = v83 < v84;
    if (v6)
    {
      v85 = *(a1 + 80) < *(a1 + 48);
    }

    if (!v85)
    {
      return 1;
    }

    *v103 = *(a1 + 32);
    *&v103[16] = *(a1 + 48);
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 44) = *(a1 + 76);
    *(a1 + 64) = *v103;
    *(a1 + 76) = *&v103[12];
    goto LABEL_84;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 3);
    v5 = *(a1 + 8);
    v6 = v4 == v5;
    v7 = v4 < v5;
    if (v6)
    {
      v7 = *(a2 - 2) < *(a1 + 16);
    }

    if (v7)
    {
      *v90 = *a1;
      v8 = *a1;
      *&v90[16] = *(a1 + 16);
      v9 = *(a2 - 20);
      *a1 = *(a2 - 2);
      *(a1 + 12) = v9;
      *(a2 - 2) = v8;
      *(a2 - 20) = *&v90[12];
      return 1;
    }

    return 1;
  }

LABEL_19:
  v21 = (a1 + 64);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  if (v22 == v24)
  {
    v26 = v23 < v25;
  }

  else
  {
    v26 = v22 < v24;
  }

  v27 = *(a1 + 72);
  v28 = *(a1 + 80);
  v29 = v28 < v23;
  v6 = v27 == v22;
  v30 = v27 < v22;
  if (v6)
  {
    v30 = v29;
  }

  if (v26)
  {
    if (v30)
    {
      v31 = *a1;
      *v92 = *a1;
      *&v92[16] = *(a1 + 16);
      *a1 = *v21;
      *(a1 + 12) = *(a1 + 76);
LABEL_56:
      *v21 = v31;
      *(a1 + 76) = *&v92[12];
      goto LABEL_57;
    }

    *v100 = *a1;
    v56 = *a1;
    *&v100[16] = *(a1 + 16);
    *a1 = *(a1 + 32);
    *(a1 + 12) = *(a1 + 44);
    *(a1 + 32) = v56;
    *(a1 + 44) = *&v100[12];
    v57 = *(a1 + 40);
    v6 = v27 == v57;
    v58 = v27 < v57;
    if (v6)
    {
      v58 = v28 < *(a1 + 48);
    }

    if (v58)
    {
      v31 = *(a1 + 32);
      *&v92[12] = HIDWORD(v31);
      *&v92[16] = *(a1 + 48);
      *(a1 + 32) = *v21;
      *(a1 + 44) = *(a1 + 76);
      goto LABEL_56;
    }
  }

  else if (v30)
  {
    *v95 = *(a1 + 32);
    *&v95[16] = *(a1 + 48);
    *(a1 + 32) = *v21;
    *(a1 + 44) = *(a1 + 76);
    *v21 = *v95;
    *(a1 + 76) = *&v95[12];
    v43 = *(a1 + 40);
    v44 = *(a1 + 48) < v25;
    v6 = v43 == v24;
    v45 = v43 < v24;
    if (v6)
    {
      v45 = v44;
    }

    if (v45)
    {
      *v96 = *a1;
      v46 = *a1;
      *&v96[16] = *(a1 + 16);
      *a1 = *(a1 + 32);
      *(a1 + 12) = *(a1 + 44);
      *(a1 + 32) = v46;
      *(a1 + 44) = *&v96[12];
    }
  }

LABEL_57:
  v59 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v60 = 0;
  v61 = 0;
  while (1)
  {
    v62 = v59[1];
    v63 = v59[2];
    v64 = v21[1];
    v65 = v63 < v21[2];
    v6 = v62 == v64;
    v66 = v62 < v64;
    if (!v6)
    {
      v65 = v66;
    }

    if (v65)
    {
      break;
    }

LABEL_70:
    v21 = v59;
    v60 += 32;
    v59 += 4;
    if (v59 == a2)
    {
      return 1;
    }
  }

  v67 = *v59;
  v68 = *(v59 + 6);
  v69 = v60;
  do
  {
    v70 = a1 + v69;
    *(v70 + 96) = *(a1 + v69 + 64);
    *(v70 + 108) = *(a1 + v69 + 76);
    if (v69 == -64)
    {
      *a1 = v67;
      *(a1 + 8) = v62;
      *(a1 + 16) = v63;
      *(a1 + 24) = v68;
      if (++v61 != 8)
      {
        goto LABEL_70;
      }

      return v59 + 4 == a2;
    }

    v71 = *(v70 + 40);
    v72 = v63 < *(v70 + 48);
    v6 = v62 == v71;
    v73 = v62 < v71;
    if (!v6)
    {
      v72 = v73;
    }

    v69 -= 32;
  }

  while (v72);
  v74 = a1 + v69;
  *(v74 + 96) = v67;
  *(v74 + 104) = v62;
  v74 += 96;
  *(v74 + 16) = v63;
  *(v74 + 24) = v68;
  if (++v61 != 8)
  {
    goto LABEL_70;
  }

  return v59 + 4 == a2;
}

void webrtc::CongestionWindowPushbackController::CongestionWindowPushbackController(BOOL *a1, uint64_t a2)
{
  (*(*a2 + 16))(__p, a2, "WebRTC-AddPacingToCongestionWindowPushback", 42);
  v4 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v4 >= 7)
  {
    v6 = __p[0];
    if ((v11 & 0x80u) == 0)
    {
      v6 = __p;
    }

    v7 = *v6;
    v8 = *(v6 + 3);
    v5 = v7 == 1650552389 && v8 == 1684368482;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_16:
      *a1 = v5;
      webrtc::RateControlSettings::RateControlSettings(__p, a2);
    }
  }

  else
  {
    v5 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__p[0]);
  goto LABEL_16;
}

void *webrtc::Connection::ConnectionRequest::OnErrorResponse(void *this, webrtc::StunMessage *a2)
{
  v2 = this[7];
  v3 = *(v2 + 248);
  if (!v3 || *v3 != 1 || !*(v2 + 256))
  {
    return this;
  }

  v4 = this;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (v5 == v6)
  {
LABEL_7:
    v7 = a2;
    v8 = 600;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_32;
    }
  }

  else
  {
    while (*(*v5 + 8) != 9)
    {
      v5 += 8;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    v7 = a2;
    v8 = *(*v5 + 13) + 100 * *(*v5 + 12);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_32;
    }
  }

  v51.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc";
  v51.__r_.__value_.__l.__size_ = 12562;
  v51.__r_.__value_.__r.__words[2] = &v48;
  webrtc::Connection::ToString(v2, &v47);
  v49[0] = &v47;
  v49[1] = &v51;
  v49[2] = ": Received ";
  v50 = v49;
  webrtc::StunMethodToString(*(v7 + 16), &v45);
  v9 = v4[2];
  v10 = *(v9 + 63);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = (v9 + 40);
    v12 = 2 * v10;
    if ((2 * v10) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_12;
    }

LABEL_25:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(v9 + 40);
  v10 = *(v9 + 48);
  v12 = 2 * v10;
  if ((2 * v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_25;
  }

LABEL_12:
  if (v12 >= 0x17)
  {
    operator new();
  }

  v44 = v12;
  if (v12)
  {
    bzero(&__p, v12);
  }

  *(&__p + v12) = 0;
  p_p = &__p;
  if (v44 < 0)
  {
    p_p = __p;
  }

  if (v10)
  {
    v14 = p_p + 1;
    do
    {
      v15 = *v11++;
      v14 += 2;
      --v10;
    }

    while (v10);
  }

  if (webrtc::g_clock)
  {
    (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    mach_absolute_time();
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v16, v17, v18, v19, v20, v21, v22, *v50[1]);
  if ((v44 & 0x80000000) == 0)
  {
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  operator delete(__p);
  if (v46 < 0)
  {
LABEL_54:
    operator delete(v45);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }

LABEL_32:
    this = *(v2 + 2648);
    *(v2 + 2648) = 0;
    if (!this)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_31:
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_55:
  operator delete(v47.__r_.__value_.__l.__data_);
  this = *(v2 + 2648);
  *(v2 + 2648) = 0;
  if (this)
  {
LABEL_33:
    this = (*(*this + 8))(this);
  }

LABEL_34:
  if (v8 <= 486)
  {
    if (v8 == 401 || v8 == 420)
    {
      return this;
    }

    goto LABEL_44;
  }

  if (v8 == 500)
  {
    return this;
  }

  if (v8 != 487)
  {
LABEL_44:
    if (*(v4[2] + 32) != 512)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::Connection::ToString(v2, &v51);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      v33 = *(v2 + 2560);
      *(v2 + 2560) = 3;
      if (v33 != 3 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::Connection::ToString(v2, &v51);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      return (*(**(v2 + 256) + 200))(*(v2 + 256), v2);
    }

    return this;
  }

  v23 = *(v2 + 248);
  if (v23 && *v23 == 1)
  {
    v24 = *(v2 + 256);
    v25 = (v24 + 10);
    this = v24[11];
    v24[13] = this;
    if (this == v24 + 10)
    {
      return this;
    }
  }

  else
  {
    v24 = 0;
    v25 = 80;
    this = MEMORY[0x58];
    MEMORY[0x68] = MEMORY[0x58];
    if (MEMORY[0x58] == 80)
    {
      return this;
    }
  }

  do
  {
    v42 = this[2];
    v41 = this + 2;
    v24[13] = *(v41 - 1);
    v42(v41, v24);
    this = v24[13];
  }

  while (this != v25);
  return this;
}

void webrtc::Connection::ConnectionRequest::OnTimeout(webrtc::Connection::ConnectionRequest *this)
{
  v2 = *(this + 7);
  v3 = *(v2 + 582) == 0;
  if (!v4 && (webrtc::LogMessage::streams_empty_ & 1) != 0)
  {
    return;
  }

  v5.n128_f64[0] = webrtc::Connection::ToString(v2, &v22);
  v6 = *(this + 2);
  v7 = *(v6 + 63);
  if (v7 < 0)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    v9 = 2 * v7;
    if ((2 * v7) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_8;
    }

LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = (v6 + 40);
  v9 = 2 * v7;
  if ((2 * v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v9 >= 0x17)
  {
    operator new();
  }

  v21 = v9;
  if (v9)
  {
    bzero(&__p, v9);
  }

  *(&__p + v9) = 0;
  p_p = &__p;
  if (v21 < 0)
  {
    p_p = __p;
  }

  if (v7)
  {
    v11 = p_p + 1;
    do
    {
      v12 = *v8++;
      v11 += 2;
      --v7;
    }

    while (v7);
  }

  if (webrtc::g_clock)
  {
    (*(*webrtc::g_clock + 16))(webrtc::g_clock, v5);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    mach_absolute_time();
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
  if ((v21 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }
}

void *webrtc::Connection::ConnectionRequest::OnSent(webrtc::Connection::ConnectionRequest *this)
{
  v2 = *(this + 7);
  v3 = *(v2 + 2328) != 0;
  if (!v4 && (webrtc::LogMessage::streams_empty_ & 1) != 0)
  {
    goto LABEL_21;
  }

  v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc";
  v27 = v3 | 0x3238u;
  v28 = &v25;
  webrtc::Connection::ToString(v2, &v24);
  webrtc::StunMethodToString(*(*(this + 2) + 32), &v22);
  v12 = *(this + 2);
  v13 = *(v12 + 63);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = (v12 + 40);
    v15 = 2 * v13;
    if ((2 * v13) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_8;
    }

LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  v15 = 2 * v13;
  if ((2 * v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_27;
  }

LABEL_8:
  if (v15 >= 0x17)
  {
    operator new();
  }

  v21 = v15;
  if (v15)
  {
    bzero(&__p, v15);
  }

  *(&__p + v15) = 0;
  p_p = __p;
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  if (v13)
  {
    v17 = p_p + 1;
    do
    {
      v18 = *v14++;
      v17 += 2;
      --v13;
    }

    while (v13);
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v5, v6, v7, v8, v9, v10, v11, v26);
  if ((v21 & 0x80000000) == 0)
  {
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  operator delete(__p);
  if (v23 < 0)
  {
LABEL_29:
    operator delete(v22);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_30;
    }

LABEL_21:
    ++*(v2 + 1184);
    result = *(v2 + 2632);
    if (!result)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_20:
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  operator delete(v24.__r_.__value_.__l.__data_);
  ++*(v2 + 1184);
  result = *(v2 + 2632);
  if (result)
  {
LABEL_22:
    result = webrtc::IceEventLog::LogCandidatePairEvent(result);
  }

LABEL_23:
  if (!*(v2 + 1240))
  {
    ++*(v2 + 1192);
  }

  *(this + 36) = 1;
  return result;
}

void webrtc::Connection::Connection(uint64_t a1, uint64_t *a2, unint64_t a3, std::string *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288291560;
  *(a1 + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 16) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 72) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 80) = a1 + 80;
  *(a1 + 88) = a1 + 80;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 80;
  *(a1 + 112) = 0;
  *(a1 + 120) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 128) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 136) = a1 + 136;
  *(a1 + 144) = a1 + 136;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 136;
  *(a1 + 168) = 0;
  *(a1 + 176) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 184) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 192) = a1 + 192;
  *(a1 + 200) = a1 + 192;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 192;
  *(a1 + 224) = 0;
  v8 = (*(*a2[1] + 208))(a2[1]);
  *(a1 + 232) = v8;
  *(a1 + 240) = webrtc::CreateRandomId(v8);
  v9 = *a2;
  *a2 = 0;
  *(a1 + 248) = v9;
  v10 = a2[1];
  *(a1 + 256) = v10;
  v11 = (*(*v10 + 136))(v10);
  if (0x84BDA12F684BDA13 * ((v11[1] - *v11) >> 4) > a3)
  {
    webrtc::Candidate::Candidate((a1 + 264), (*v11 + 432 * a3));
    webrtc::Candidate::Candidate((a1 + 696), a4);
    webrtc::ConnectionInfo::ConnectionInfo((a1 + 1128));
    *(a1 + 2192) = &unk_28829A088;
    *(a1 + 2200) = 100;
    *(a1 + 2208) = 10;
    operator new[]();
  }

  __break(1u);
}

double webrtc::Connection::ToString@<D0>(webrtc::Connection *this@<X0>, std::string *a2@<X8>)
{
  v311 = *MEMORY[0x277D85DE8];
  memset(&v309, 0, sizeof(v309));
  if (&v309 <= "Conn[" && v309.__r_.__value_.__r.__words + 5 > "Conn[")
  {
    goto LABEL_785;
  }

  qmemcpy(&v309, "Conn[", 5);
  *(&v309.__r_.__value_.__s + 23) = 5;
  snprintf(__str, 0x32uLL, "%x", this);
  v4 = strlen(__str);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_786;
  }

  v5 = v4;
  if (v4 > 0x16)
  {
    operator new();
  }

  v308 = v4;
  if (&__p <= __str && &__p + v4 > __str)
  {
    goto LABEL_785;
  }

  if (v4)
  {
    memcpy(&__p, __str, v4);
  }

  *(&__p + v5) = 0;
  v6 = (v308 & 0x80u) == 0 ? &__p : __p;
  v7 = (v308 & 0x80u) == 0 ? v308 : v307;
  if (!v6 && v7)
  {
    goto LABEL_785;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = 22;
  }

  else
  {
    v8 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v309.__r_.__value_.__l.__size_;
  }

  if (v8 - size >= v7)
  {
    if (v7)
    {
      if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v309;
      }

      else
      {
        v11 = v309.__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v12 = v11 + size;
      if (v11 + size <= v6 && &v12[v7] > v6)
      {
        goto LABEL_785;
      }

      v13 = v7;
      memmove(v12, v6, v7);
      v14 = size + v13;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        v309.__r_.__value_.__l.__size_ = size + v13;
        v11->__r_.__value_.__s.__data_[v14] = 0;
        if ((v308 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

LABEL_27:
        operator delete(__p);
        v10 = *(this + 31);
        if (!v10)
        {
          goto LABEL_49;
        }

        goto LABEL_40;
      }

      *(&v309.__r_.__value_.__s + 23) = v14 & 0x7F;
      v11->__r_.__value_.__s.__data_[v14] = 0;
    }

    if ((v308 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  std::string::__grow_by_and_replace(&v309, v8, size + v7 - v8, size, size, 0, v7, v6);
  if (v308 < 0)
  {
    goto LABEL_27;
  }

LABEL_39:
  v10 = *(this + 31);
  if (!v10)
  {
    goto LABEL_49;
  }

LABEL_40:
  if (*v10 == 1 && *(this + 32))
  {
    v15 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = 22;
    }

    else
    {
      v16 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v309.__r_.__value_.__l.__size_;
    }

    if (v16 == v15)
    {
      std::string::__grow_by_and_replace(&v309, v16, 1uLL, v16, v16, 0, 1uLL, ":");
    }

    else
    {
      v22 = &v309;
      if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v309.__r_.__value_.__r.__words[0];
      }

      v23 = v22 + v15;
      if (v22 + v15 <= ":" && v23 + 1 > ":")
      {
        goto LABEL_785;
      }

      *v23 = 58;
      v24 = v15 + 1;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        v309.__r_.__value_.__l.__size_ = v24;
      }

      else
      {
        *(&v309.__r_.__value_.__s + 23) = v24 & 0x7F;
      }

      v22->__r_.__value_.__s.__data_[v24] = 0;
    }

    v25 = (*(**(this + 32) + 248))(*(this + 32));
    v26 = *(v25 + 23);
    if (v26 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    if (v26 >= 0)
    {
      v28 = *(v25 + 23);
    }

    else
    {
      v28 = *(v25 + 8);
    }

    if (!v27 && v28)
    {
      goto LABEL_785;
    }

    v29 = (v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v30 = (v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v309.__r_.__value_.__r.__words[2]) : v309.__r_.__value_.__l.__size_;
    if (v29 - v30 >= v28)
    {
      if (v28)
      {
        if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v309;
        }

        else
        {
          v31 = v309.__r_.__value_.__r.__words[0];
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_785;
        }

        v32 = v31 + v30;
        if (v31 + v30 <= v27 && &v32[v28] > v27)
        {
          goto LABEL_785;
        }

        v33 = v28;
        memmove(v32, v27, v28);
        v34 = v30 + v33;
        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          v309.__r_.__value_.__l.__size_ = v30 + v33;
        }

        else
        {
          *(&v309.__r_.__value_.__s + 23) = v34 & 0x7F;
        }

        v31->__r_.__value_.__s.__data_[v34] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v309, v29, v30 + v28 - v29, v30, v30, 0, v28, v27);
    }

    v35 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = 22;
    }

    else
    {
      v36 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v309.__r_.__value_.__l.__size_;
    }

    if (v36 == v35)
    {
      std::string::__grow_by_and_replace(&v309, v36, 1uLL, v36, v36, 0, 1uLL, ":");
    }

    else
    {
      v37 = &v309;
      if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v37 = v309.__r_.__value_.__r.__words[0];
      }

      v38 = v37 + v35;
      if (v37 + v35 <= ":" && v38 + 1 > ":")
      {
        goto LABEL_785;
      }

      *v38 = 58;
      v39 = v35 + 1;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        v309.__r_.__value_.__l.__size_ = v39;
      }

      else
      {
        *(&v309.__r_.__value_.__s + 23) = v39 & 0x7F;
      }

      v37->__r_.__value_.__s.__data_[v39] = 0;
    }

    v40 = (*(**(this + 32) + 24))(*(this + 32));
    webrtc::Network::ToString(v40, __str);
    v41 = (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __str : __str[0].__r_.__value_.__r.__words[0];
    v42 = (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str[0].__r_.__value_.__r.__words[2]) : __str[0].__r_.__value_.__l.__size_;
    if (!v41 && v42)
    {
      goto LABEL_785;
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = 22;
    }

    else
    {
      v43 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v309.__r_.__value_.__l.__size_;
    }

    if (v43 - v44 >= v42)
    {
      if (v42)
      {
        if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v309;
        }

        else
        {
          v45 = v309.__r_.__value_.__r.__words[0];
        }

        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_785;
        }

        v46 = v45 + v44;
        if ((v45 + v44) <= v41 && &v46[v42] > v41)
        {
          goto LABEL_785;
        }

        v47 = v42;
        memmove(v46, v41, v42);
        v48 = v44 + v47;
        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          v309.__r_.__value_.__l.__size_ = v44 + v47;
        }

        else
        {
          *(&v309.__r_.__value_.__s + 23) = v48 & 0x7F;
        }

        v45->__r_.__value_.__s.__data_[v48] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v309, v43, v44 + v42 - v43, v44, v44, 0, v42, v41);
    }

    v49 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = 22;
    }

    else
    {
      v50 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = v309.__r_.__value_.__l.__size_;
    }

    if (v50 == v49)
    {
      std::string::__grow_by_and_replace(&v309, v50, 1uLL, v50, v50, 0, 1uLL, ":");
      if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v275 = &v309;
      if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v275 = v309.__r_.__value_.__r.__words[0];
      }

      v276 = v275 + v49;
      if (v275 + v49 <= ":" && v276 + 1 > ":")
      {
        goto LABEL_785;
      }

      *v276 = 58;
      v277 = v49 + 1;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        v309.__r_.__value_.__l.__size_ = v277;
        v275->__r_.__value_.__s.__data_[v277] = 0;
        if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_152;
        }
      }

      else
      {
        *(&v309.__r_.__value_.__s + 23) = v277 & 0x7F;
        v275->__r_.__value_.__s.__data_[v277] = 0;
        if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_152;
        }
      }
    }

    operator delete(__str[0].__r_.__value_.__l.__data_);
    goto LABEL_152;
  }

LABEL_49:
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = 22;
  }

  else
  {
    v17 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v309.__r_.__value_.__l.__size_;
  }

  if (v17 - v18 >= 5)
  {
    v19 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v309.__r_.__value_.__r.__words[0];
    }

    v20 = v19 + v18;
    if (v19 + v18 <= ":#:#:" && v20 + 5 > ":#:#:")
    {
      goto LABEL_785;
    }

    v20[4] = 58;
    *v20 = 591012666;
    v21 = v18 + 5;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v18 + 5;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v21 & 0x7F;
    }

    v19->__r_.__value_.__s.__data_[v21] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v309, v17, v18 - v17 + 5, v18, v18, 0, 5uLL, ":#:#:");
  }

LABEL_152:
  v51 = (*(*this + 16))(this);
  v53 = (*(*this + 24))(this);
  v54 = *(v51 + 23);
  if (v54 >= 0)
  {
    v55 = v51;
  }

  else
  {
    v55 = *v51;
  }

  if (v54 >= 0)
  {
    v56 = *(v51 + 23);
  }

  else
  {
    v56 = *(v51 + 8);
  }

  if (!v55 && v56)
  {
    goto LABEL_785;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = 22;
  }

  else
  {
    v57 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v309.__r_.__value_.__l.__size_;
  }

  if (v57 - v58 >= v56)
  {
    if (v56)
    {
      if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v309;
      }

      else
      {
        v59 = v309.__r_.__value_.__r.__words[0];
      }

      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v60 = v59 + v58;
      if (v59 + v58 <= v55 && &v60[v56] > v55)
      {
        goto LABEL_785;
      }

      v61 = v56;
      memmove(v60, v55, v56);
      v62 = v58 + v61;
      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        v309.__r_.__value_.__l.__size_ = v58 + v61;
      }

      else
      {
        *(&v309.__r_.__value_.__s + 23) = v62 & 0x7F;
      }

      v59->__r_.__value_.__s.__data_[v62] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v309, v57, v58 + v56 - v57, v58, v58, 0, v56, v55);
  }

  v63 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = 22;
  }

  else
  {
    v64 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v63 = v309.__r_.__value_.__l.__size_;
  }

  if (v64 == v63)
  {
    std::string::__grow_by_and_replace(&v309, v64, 1uLL, v64, v64, 0, 1uLL, ":");
  }

  else
  {
    v65 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v309.__r_.__value_.__r.__words[0];
    }

    v66 = v65 + v63;
    if (v65 + v63 <= ":" && v66 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v66 = 58;
    v67 = v63 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v67;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v67 & 0x7F;
    }

    v65->__r_.__value_.__s.__data_[v67] = 0;
  }

  v68 = webrtc::StringBuilder::operator<<(&v309, *(v51 + 24), v52);
  v70 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
  v71 = v70;
  if ((v70 & 0x80u) == 0)
  {
    v72 = 22;
  }

  else
  {
    v72 = (v68->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v70 & 0x80u) != 0)
  {
    v70 = v68->__r_.__value_.__l.__size_;
  }

  if (v72 == v70)
  {
    v73 = v68;
    std::string::__grow_by_and_replace(v68, v72, 1uLL, v72, v72, 0, 1uLL, ":");
    v68 = v73;
  }

  else
  {
    if (v71 >= 0)
    {
      v74 = v68;
    }

    else
    {
      v74 = v68->__r_.__value_.__r.__words[0];
    }

    v75 = v74 + v70;
    if (v74 + v70 <= ":" && v75 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v75 = 58;
    v76 = v70 + 1;
    if (SHIBYTE(v68->__r_.__value_.__r.__words[2]) < 0)
    {
      v68->__r_.__value_.__l.__size_ = v76;
    }

    else
    {
      *(&v68->__r_.__value_.__s + 23) = v76 & 0x7F;
    }

    v74->__r_.__value_.__s.__data_[v76] = 0;
  }

  v77 = webrtc::StringBuilder::operator<<(v68, *(v51 + 248), v69);
  v78 = v77;
  v79 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
  v80 = v79;
  if ((v79 & 0x80u) == 0)
  {
    v81 = 22;
  }

  else
  {
    v81 = (v77->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v79 & 0x80u) != 0)
  {
    v79 = v77->__r_.__value_.__l.__size_;
  }

  if (v81 == v79)
  {
    std::string::__grow_by_and_replace(v77, v81, 1uLL, v81, v81, 0, 1uLL, ":");
    v82 = *(v51 + 208) - 1;
    if (v82 <= 2)
    {
LABEL_217:
      v83 = off_279E93B30[v82];
      v84 = 5;
      goto LABEL_226;
    }
  }

  else
  {
    if (v80 >= 0)
    {
      v85 = v77;
    }

    else
    {
      v85 = v77->__r_.__value_.__r.__words[0];
    }

    v86 = v85 + v79;
    if (v85 + v79 <= ":" && v86 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v86 = 58;
    v87 = v79 + 1;
    if (SHIBYTE(v77->__r_.__value_.__r.__words[2]) < 0)
    {
      v77->__r_.__value_.__l.__size_ = v87;
      v85->__r_.__value_.__s.__data_[v87] = 0;
      v82 = *(v51 + 208) - 1;
      if (v82 <= 2)
      {
        goto LABEL_217;
      }
    }

    else
    {
      *(&v77->__r_.__value_.__s + 23) = v87 & 0x7F;
      v85->__r_.__value_.__s.__data_[v87] = 0;
      v82 = *(v51 + 208) - 1;
      if (v82 <= 2)
      {
        goto LABEL_217;
      }
    }
  }

  v83 = "host";
  v84 = 4;
LABEL_226:
  v88 = SHIBYTE(v78->__r_.__value_.__r.__words[2]);
  if (v88 >= 0)
  {
    v89 = 22;
  }

  else
  {
    v89 = (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v88 >= 0)
  {
    v90 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v90 = v78->__r_.__value_.__l.__size_;
  }

  if (v89 - v90 >= v84)
  {
    if (v88 >= 0)
    {
      v91 = v78;
    }

    else
    {
      v91 = v78->__r_.__value_.__r.__words[0];
    }

    v92 = v91 + v90;
    if (v91 + v90 <= v83 && &v92[v84] > v83)
    {
      goto LABEL_785;
    }

    memcpy(v92, v83, v84);
    v93 = v90 + v84;
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      v78->__r_.__value_.__l.__size_ = v93;
    }

    else
    {
      *(&v78->__r_.__value_.__s + 23) = v93 & 0x7F;
    }

    v91->__r_.__value_.__s.__data_[v93] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v78, v89, v90 + v84 - v89, v90, v90, 0, v84, v83);
  }

  v94 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  v95 = v94;
  if ((v94 & 0x80u) == 0)
  {
    v96 = 22;
  }

  else
  {
    v96 = (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v94 & 0x80u) != 0)
  {
    v94 = v78->__r_.__value_.__l.__size_;
  }

  if (v96 == v94)
  {
    std::string::__grow_by_and_replace(v78, v96, 1uLL, v96, v96, 0, 1uLL, ":");
  }

  else
  {
    if (v95 >= 0)
    {
      v97 = v78;
    }

    else
    {
      v97 = v78->__r_.__value_.__r.__words[0];
    }

    v98 = v97 + v94;
    if (v97 + v94 <= ":" && v98 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v98 = 58;
    v99 = v94 + 1;
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      v78->__r_.__value_.__l.__size_ = v99;
    }

    else
    {
      *(&v78->__r_.__value_.__s + 23) = v99 & 0x7F;
    }

    v97->__r_.__value_.__s.__data_[v99] = 0;
  }

  v100 = *(v51 + 55);
  if (v100 >= 0)
  {
    v101 = (v51 + 32);
  }

  else
  {
    v101 = *(v51 + 32);
  }

  if (v100 >= 0)
  {
    v102 = *(v51 + 55);
  }

  else
  {
    v102 = *(v51 + 40);
  }

  if (!v101 && v102)
  {
    goto LABEL_785;
  }

  v103 = SHIBYTE(v78->__r_.__value_.__r.__words[2]);
  v104 = v103 >= 0 ? 22 : (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v105 = v103 >= 0 ? HIBYTE(v78->__r_.__value_.__r.__words[2]) : v78->__r_.__value_.__l.__size_;
  if (v104 - v105 >= v102)
  {
    if (v102)
    {
      if (v103 >= 0)
      {
        v106 = v78;
      }

      else
      {
        v106 = v78->__r_.__value_.__r.__words[0];
      }

      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v107 = v106 + v105;
      if (v106 + v105 <= v101 && &v107[v102] > v101)
      {
        goto LABEL_785;
      }

      v108 = v102;
      memmove(v107, v101, v102);
      v109 = v105 + v108;
      if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
      {
        v78->__r_.__value_.__l.__size_ = v109;
      }

      else
      {
        *(&v78->__r_.__value_.__s + 23) = v109 & 0x7F;
      }

      v106->__r_.__value_.__s.__data_[v109] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v78, v104, v105 + v102 - v104, v105, v105, 0, v102, v101);
  }

  v110 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  v111 = v110;
  if ((v110 & 0x80u) == 0)
  {
    v112 = 22;
  }

  else
  {
    v112 = (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v110 & 0x80u) != 0)
  {
    v110 = v78->__r_.__value_.__l.__size_;
  }

  if (v112 == v110)
  {
    std::string::__grow_by_and_replace(v78, v112, 1uLL, v112, v112, 0, 1uLL, ":");
  }

  else
  {
    if (v111 >= 0)
    {
      v113 = v78;
    }

    else
    {
      v113 = v78->__r_.__value_.__r.__words[0];
    }

    v114 = v113 + v110;
    if (v113 + v110 <= ":" && v114 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v114 = 58;
    v115 = v110 + 1;
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      v78->__r_.__value_.__l.__size_ = v115;
    }

    else
    {
      *(&v78->__r_.__value_.__s + 23) = v115 & 0x7F;
    }

    v113->__r_.__value_.__s.__data_[v115] = 0;
  }

  webrtc::SocketAddress::ToSensitiveString((v51 + 80), __str);
  v117 = (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __str : __str[0].__r_.__value_.__r.__words[0];
  v118 = (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str[0].__r_.__value_.__r.__words[2]) : __str[0].__r_.__value_.__l.__size_;
  if (!v117 && v118)
  {
    goto LABEL_785;
  }

  v119 = SHIBYTE(v78->__r_.__value_.__r.__words[2]);
  v120 = v119 >= 0 ? 22 : (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v121 = v119 >= 0 ? HIBYTE(v78->__r_.__value_.__r.__words[2]) : v78->__r_.__value_.__l.__size_;
  if (v120 - v121 >= v118)
  {
    if (v118)
    {
      if (v119 >= 0)
      {
        v122 = v78;
      }

      else
      {
        v122 = v78->__r_.__value_.__r.__words[0];
      }

      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v123 = v122 + v121;
      if ((v122 + v121) <= v117 && &v123[v118] > v117)
      {
        goto LABEL_785;
      }

      v124 = v118;
      memmove(v123, v117, v118);
      v125 = v121 + v124;
      if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
      {
        v78->__r_.__value_.__l.__size_ = v125;
      }

      else
      {
        *(&v78->__r_.__value_.__s + 23) = v125 & 0x7F;
      }

      v122->__r_.__value_.__s.__data_[v125] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v78, v120, v121 + v118 - v120, v121, v121, 0, v118, v117);
  }

  v126 = SHIBYTE(v78->__r_.__value_.__r.__words[2]);
  v127 = v126 >= 0 ? 22 : (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v128 = v126 >= 0 ? HIBYTE(v78->__r_.__value_.__r.__words[2]) : v78->__r_.__value_.__l.__size_;
  if (v127 - v128 >= 2)
  {
    if (v126 >= 0)
    {
      v129 = v78;
    }

    else
    {
      v129 = v78->__r_.__value_.__r.__words[0];
    }

    v130 = (v129 + v128);
    if (v129 + v128 <= "->" && v130 + 1 > "->")
    {
      goto LABEL_785;
    }

    *v130 = 15917;
    v131 = v128 + 2;
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      v78->__r_.__value_.__l.__size_ = v131;
    }

    else
    {
      *(&v78->__r_.__value_.__s + 23) = v131 & 0x7F;
    }

    v129->__r_.__value_.__s.__data_[v131] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v78, v127, v128 - v127 + 2, v128, v128, 0, 2uLL, "->");
  }

  v132 = *(v53 + 23);
  v133 = v132 >= 0 ? v53 : *v53;
  v134 = v132 >= 0 ? *(v53 + 23) : *(v53 + 8);
  if (!v133 && v134)
  {
    goto LABEL_785;
  }

  v135 = SHIBYTE(v78->__r_.__value_.__r.__words[2]);
  if (v135 >= 0)
  {
    v136 = 22;
  }

  else
  {
    v136 = (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v135 >= 0)
  {
    v137 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v137 = v78->__r_.__value_.__l.__size_;
  }

  if (v136 - v137 >= v134)
  {
    if (v134)
    {
      if (v135 >= 0)
      {
        v138 = v78;
      }

      else
      {
        v138 = v78->__r_.__value_.__r.__words[0];
      }

      if ((v134 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v139 = v138 + v137;
      if (v138 + v137 <= v133 && &v139[v134] > v133)
      {
        goto LABEL_785;
      }

      v140 = v134;
      memmove(v139, v133, v134);
      v141 = v137 + v140;
      if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
      {
        v78->__r_.__value_.__l.__size_ = v141;
      }

      else
      {
        *(&v78->__r_.__value_.__s + 23) = v141 & 0x7F;
      }

      v138->__r_.__value_.__s.__data_[v141] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v78, v136, v137 + v134 - v136, v137, v137, 0, v134, v133);
  }

  v142 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  v143 = v142;
  if ((v142 & 0x80u) == 0)
  {
    v144 = 22;
  }

  else
  {
    v144 = (v78->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v142 & 0x80u) != 0)
  {
    v142 = v78->__r_.__value_.__l.__size_;
  }

  if (v144 == v142)
  {
    std::string::__grow_by_and_replace(v78, v144, 1uLL, v144, v144, 0, 1uLL, ":");
  }

  else
  {
    if (v143 >= 0)
    {
      v145 = v78;
    }

    else
    {
      v145 = v78->__r_.__value_.__r.__words[0];
    }

    v146 = v145 + v142;
    if (v145 + v142 <= ":" && v146 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v146 = 58;
    v147 = v142 + 1;
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      v78->__r_.__value_.__l.__size_ = v147;
    }

    else
    {
      *(&v78->__r_.__value_.__s + 23) = v147 & 0x7F;
    }

    v145->__r_.__value_.__s.__data_[v147] = 0;
  }

  v148 = webrtc::StringBuilder::operator<<(v78, *(v53 + 24), v116);
  v150 = HIBYTE(v148->__r_.__value_.__r.__words[2]);
  v151 = v150;
  if ((v150 & 0x80u) == 0)
  {
    v152 = 22;
  }

  else
  {
    v152 = (v148->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v150 & 0x80u) != 0)
  {
    v150 = v148->__r_.__value_.__l.__size_;
  }

  if (v152 == v150)
  {
    v153 = v148;
    std::string::__grow_by_and_replace(v148, v152, 1uLL, v152, v152, 0, 1uLL, ":");
    v148 = v153;
  }

  else
  {
    if (v151 >= 0)
    {
      v154 = v148;
    }

    else
    {
      v154 = v148->__r_.__value_.__r.__words[0];
    }

    v155 = v154 + v150;
    if (v154 + v150 <= ":" && v155 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v155 = 58;
    v156 = v150 + 1;
    if (SHIBYTE(v148->__r_.__value_.__r.__words[2]) < 0)
    {
      v148->__r_.__value_.__l.__size_ = v156;
    }

    else
    {
      *(&v148->__r_.__value_.__s + 23) = v156 & 0x7F;
    }

    v154->__r_.__value_.__s.__data_[v156] = 0;
  }

  v157 = webrtc::StringBuilder::operator<<(v148, *(v53 + 152), v149);
  v158 = v157;
  v159 = HIBYTE(v157->__r_.__value_.__r.__words[2]);
  v160 = v159;
  if ((v159 & 0x80u) == 0)
  {
    v161 = 22;
  }

  else
  {
    v161 = (v157->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v159 & 0x80u) != 0)
  {
    v159 = v157->__r_.__value_.__l.__size_;
  }

  if (v161 != v159)
  {
    if (v160 >= 0)
    {
      v165 = v157;
    }

    else
    {
      v165 = v157->__r_.__value_.__r.__words[0];
    }

    v166 = v165 + v159;
    if (v165 + v159 <= ":" && v166 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v166 = 58;
    v167 = v159 + 1;
    if (SHIBYTE(v157->__r_.__value_.__r.__words[2]) < 0)
    {
      v157->__r_.__value_.__l.__size_ = v167;
      v165->__r_.__value_.__s.__data_[v167] = 0;
      v162 = *(v53 + 208) - 1;
      if (v162 <= 2)
      {
        goto LABEL_414;
      }
    }

    else
    {
      *(&v157->__r_.__value_.__s + 23) = v167 & 0x7F;
      v165->__r_.__value_.__s.__data_[v167] = 0;
      v162 = *(v53 + 208) - 1;
      if (v162 <= 2)
      {
        goto LABEL_414;
      }
    }

LABEL_422:
    v163 = "host";
    v164 = 4;
    goto LABEL_423;
  }

  std::string::__grow_by_and_replace(v157, v161, 1uLL, v161, v161, 0, 1uLL, ":");
  v162 = *(v53 + 208) - 1;
  if (v162 > 2)
  {
    goto LABEL_422;
  }

LABEL_414:
  v163 = off_279E93B30[v162];
  v164 = 5;
LABEL_423:
  v168 = SHIBYTE(v158->__r_.__value_.__r.__words[2]);
  if (v168 >= 0)
  {
    v169 = 22;
  }

  else
  {
    v169 = (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v168 >= 0)
  {
    v170 = HIBYTE(v158->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v170 = v158->__r_.__value_.__l.__size_;
  }

  if (v169 - v170 >= v164)
  {
    if (v168 >= 0)
    {
      v171 = v158;
    }

    else
    {
      v171 = v158->__r_.__value_.__r.__words[0];
    }

    v172 = v171 + v170;
    if (v171 + v170 <= v163 && &v172[v164] > v163)
    {
      goto LABEL_785;
    }

    memcpy(v172, v163, v164);
    v173 = v170 + v164;
    if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
    {
      v158->__r_.__value_.__l.__size_ = v173;
    }

    else
    {
      *(&v158->__r_.__value_.__s + 23) = v173 & 0x7F;
    }

    v171->__r_.__value_.__s.__data_[v173] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v158, v169, v170 + v164 - v169, v170, v170, 0, v164, v163);
  }

  v174 = HIBYTE(v158->__r_.__value_.__r.__words[2]);
  v175 = v174;
  if ((v174 & 0x80u) == 0)
  {
    v176 = 22;
  }

  else
  {
    v176 = (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v174 & 0x80u) != 0)
  {
    v174 = v158->__r_.__value_.__l.__size_;
  }

  if (v176 == v174)
  {
    std::string::__grow_by_and_replace(v158, v176, 1uLL, v176, v176, 0, 1uLL, ":");
  }

  else
  {
    if (v175 >= 0)
    {
      v177 = v158;
    }

    else
    {
      v177 = v158->__r_.__value_.__r.__words[0];
    }

    v178 = v177 + v174;
    if (v177 + v174 <= ":" && v178 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v178 = 58;
    v179 = v174 + 1;
    if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
    {
      v158->__r_.__value_.__l.__size_ = v179;
    }

    else
    {
      *(&v158->__r_.__value_.__s + 23) = v179 & 0x7F;
    }

    v177->__r_.__value_.__s.__data_[v179] = 0;
  }

  v180 = *(v53 + 55);
  if (v180 >= 0)
  {
    v181 = (v53 + 32);
  }

  else
  {
    v181 = *(v53 + 32);
  }

  if (v180 >= 0)
  {
    v182 = *(v53 + 55);
  }

  else
  {
    v182 = *(v53 + 40);
  }

  if (!v181 && v182)
  {
    goto LABEL_785;
  }

  v183 = SHIBYTE(v158->__r_.__value_.__r.__words[2]);
  v184 = v183 >= 0 ? 22 : (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v185 = v183 >= 0 ? HIBYTE(v158->__r_.__value_.__r.__words[2]) : v158->__r_.__value_.__l.__size_;
  if (v184 - v185 >= v182)
  {
    if (v182)
    {
      if (v183 >= 0)
      {
        v186 = v158;
      }

      else
      {
        v186 = v158->__r_.__value_.__r.__words[0];
      }

      if ((v182 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v187 = v186 + v185;
      if (v186 + v185 <= v181 && &v187[v182] > v181)
      {
        goto LABEL_785;
      }

      v188 = v182;
      memmove(v187, v181, v182);
      v189 = v185 + v188;
      if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
      {
        v158->__r_.__value_.__l.__size_ = v189;
      }

      else
      {
        *(&v158->__r_.__value_.__s + 23) = v189 & 0x7F;
      }

      v186->__r_.__value_.__s.__data_[v189] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v158, v184, v185 + v182 - v184, v185, v185, 0, v182, v181);
  }

  v190 = HIBYTE(v158->__r_.__value_.__r.__words[2]);
  v191 = v190;
  if ((v190 & 0x80u) == 0)
  {
    v192 = 22;
  }

  else
  {
    v192 = (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v190 & 0x80u) != 0)
  {
    v190 = v158->__r_.__value_.__l.__size_;
  }

  if (v192 == v190)
  {
    std::string::__grow_by_and_replace(v158, v192, 1uLL, v192, v192, 0, 1uLL, ":");
  }

  else
  {
    if (v191 >= 0)
    {
      v193 = v158;
    }

    else
    {
      v193 = v158->__r_.__value_.__r.__words[0];
    }

    v194 = v193 + v190;
    if (v193 + v190 <= ":" && v194 + 1 > ":")
    {
      goto LABEL_785;
    }

    *v194 = 58;
    v195 = v190 + 1;
    if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
    {
      v158->__r_.__value_.__l.__size_ = v195;
    }

    else
    {
      *(&v158->__r_.__value_.__s + 23) = v195 & 0x7F;
    }

    v193->__r_.__value_.__s.__data_[v195] = 0;
  }

  webrtc::SocketAddress::ToSensitiveString((v53 + 80), &__p);
  v197 = (v308 & 0x80u) == 0 ? &__p : __p;
  v198 = (v308 & 0x80u) == 0 ? v308 : v307;
  if (!v197 && v198)
  {
    goto LABEL_785;
  }

  v199 = SHIBYTE(v158->__r_.__value_.__r.__words[2]);
  if (v199 >= 0)
  {
    v200 = 22;
  }

  else
  {
    v200 = (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v199 >= 0)
  {
    v201 = HIBYTE(v158->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v201 = v158->__r_.__value_.__l.__size_;
  }

  if (v200 - v201 >= v198)
  {
    if (v198)
    {
      if (v199 >= 0)
      {
        v202 = v158;
      }

      else
      {
        v202 = v158->__r_.__value_.__r.__words[0];
      }

      if ((v198 & 0x8000000000000000) != 0)
      {
        goto LABEL_785;
      }

      v203 = v202 + v201;
      if (v202 + v201 <= v197 && &v203[v198] > v197)
      {
        goto LABEL_785;
      }

      v204 = v198;
      memmove(v203, v197, v198);
      v205 = v201 + v204;
      if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
      {
        v158->__r_.__value_.__l.__size_ = v205;
      }

      else
      {
        *(&v158->__r_.__value_.__s + 23) = v205 & 0x7F;
      }

      v202->__r_.__value_.__s.__data_[v205] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v158, v200, v201 + v198 - v200, v201, v201, 0, v198, v197);
  }

  v206 = HIBYTE(v158->__r_.__value_.__r.__words[2]);
  v207 = v206;
  if ((v206 & 0x80u) == 0)
  {
    v208 = 22;
  }

  else
  {
    v208 = (v158->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v206 & 0x80u) != 0)
  {
    v206 = v158->__r_.__value_.__l.__size_;
  }

  if (v208 != v206)
  {
    if (v207 >= 0)
    {
      v210 = v158;
    }

    else
    {
      v210 = v158->__r_.__value_.__r.__words[0];
    }

    v211 = v210 + v206;
    if (v210 + v206 <= "|" && v211 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v211 = 124;
    v212 = v206 + 1;
    if (SHIBYTE(v158->__r_.__value_.__r.__words[2]) < 0)
    {
      v158->__r_.__value_.__l.__size_ = v212;
      v210->__r_.__value_.__s.__data_[v212] = 0;
      if (v308 < 0)
      {
        goto LABEL_547;
      }
    }

    else
    {
      *(&v158->__r_.__value_.__s + 23) = v212 & 0x7F;
      v210->__r_.__value_.__s.__data_[v212] = 0;
      if (v308 < 0)
      {
        goto LABEL_547;
      }
    }

LABEL_535:
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_536;
    }

    goto LABEL_548;
  }

  std::string::__grow_by_and_replace(v158, v208, 1uLL, v208, v208, 0, 1uLL, "|");
  if ((v308 & 0x80000000) == 0)
  {
    goto LABEL_535;
  }

LABEL_547:
  operator delete(__p);
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_548:
    operator delete(__str[0].__r_.__value_.__l.__data_);
    v209 = (&off_279E93A50)[2 * *(this + 2333)];
    if (v209)
    {
      goto LABEL_549;
    }

LABEL_785:
    __break(1u);
LABEL_786:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_536:
  v209 = (&off_279E93A50)[2 * *(this + 2333)];
  if (!v209)
  {
    goto LABEL_785;
  }

LABEL_549:
  v213 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v214 = 22;
  }

  else
  {
    v214 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v213 = v309.__r_.__value_.__l.__size_;
  }

  if (v214 == v213)
  {
    std::string::__grow_by_and_replace(&v309, v214, 1uLL, v214, v214, 0, 1uLL, v209);
    v215 = (&off_279E93A70)[2 * *(this + 2332)];
    if (!v215)
    {
      goto LABEL_785;
    }
  }

  else
  {
    v216 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v216 = v309.__r_.__value_.__r.__words[0];
    }

    v217 = v216 + v213;
    if (v216 + v213 <= v209 && v217 + 1 > v209)
    {
      goto LABEL_785;
    }

    *v217 = *v209;
    v218 = v213 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v218;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v218 & 0x7F;
    }

    v216->__r_.__value_.__s.__data_[v218] = 0;
    v215 = (&off_279E93A70)[2 * *(this + 2332)];
    if (!v215)
    {
      goto LABEL_785;
    }
  }

  v219 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v220 = 22;
  }

  else
  {
    v220 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v219 = v309.__r_.__value_.__l.__size_;
  }

  if (v220 == v219)
  {
    std::string::__grow_by_and_replace(&v309, v220, 1uLL, v220, v220, 0, 1uLL, v215);
    v221 = (&off_279E93A90)[2 * *(this + 582)];
    if (!v221)
    {
      goto LABEL_785;
    }
  }

  else
  {
    v222 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v222 = v309.__r_.__value_.__r.__words[0];
    }

    v223 = v222 + v219;
    if (v222 + v219 <= v215 && v223 + 1 > v215)
    {
      goto LABEL_785;
    }

    *v223 = *v215;
    v224 = v219 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v224;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v224 & 0x7F;
    }

    v222->__r_.__value_.__s.__data_[v224] = 0;
    v221 = (&off_279E93A90)[2 * *(this + 582)];
    if (!v221)
    {
      goto LABEL_785;
    }
  }

  v225 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v226 = 22;
  }

  else
  {
    v226 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v225 = v309.__r_.__value_.__l.__size_;
  }

  if (v226 == v225)
  {
    std::string::__grow_by_and_replace(&v309, v226, 1uLL, v226, v226, 0, 1uLL, v221);
    v227 = (&off_279E93AD0)[2 * *(this + 640)];
    if (!v227)
    {
      goto LABEL_785;
    }
  }

  else
  {
    v228 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v228 = v309.__r_.__value_.__r.__words[0];
    }

    v229 = v228 + v225;
    if (v228 + v225 <= v221 && v229 + 1 > v221)
    {
      goto LABEL_785;
    }

    *v229 = *v221;
    v230 = v225 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v230;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v230 & 0x7F;
    }

    v228->__r_.__value_.__s.__data_[v230] = 0;
    v227 = (&off_279E93AD0)[2 * *(this + 640)];
    if (!v227)
    {
      goto LABEL_785;
    }
  }

  v231 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v232 = 22;
  }

  else
  {
    v232 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v231 = v309.__r_.__value_.__l.__size_;
  }

  if (v232 == v231)
  {
    std::string::__grow_by_and_replace(&v309, v232, 1uLL, v232, v232, 0, 1uLL, v227);
  }

  else
  {
    v233 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v233 = v309.__r_.__value_.__r.__words[0];
    }

    v234 = v233 + v231;
    if (v233 + v231 <= v227 && v234 + 1 > v227)
    {
      goto LABEL_785;
    }

    *v234 = *v227;
    v235 = v231 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v235;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v235 & 0x7F;
    }

    v233->__r_.__value_.__s.__data_[v235] = 0;
  }

  v236 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v237 = 22;
  }

  else
  {
    v237 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v236 = v309.__r_.__value_.__l.__size_;
  }

  if (v237 == v236)
  {
    std::string::__grow_by_and_replace(&v309, v237, 1uLL, v237, v237, 0, 1uLL, "|");
    v238 = (&off_279E93B10)[2 * *(this + 2335)];
    if (!v238)
    {
      goto LABEL_785;
    }
  }

  else
  {
    v239 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v239 = v309.__r_.__value_.__r.__words[0];
    }

    v240 = v239 + v236;
    if (v239 + v236 <= "|" && v240 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v240 = 124;
    v241 = v236 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v241;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v241 & 0x7F;
    }

    v239->__r_.__value_.__s.__data_[v241] = 0;
    v238 = (&off_279E93B10)[2 * *(this + 2335)];
    if (!v238)
    {
      goto LABEL_785;
    }
  }

  v242 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v243 = 22;
  }

  else
  {
    v243 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v242 = v309.__r_.__value_.__l.__size_;
  }

  if (v243 == v242)
  {
    std::string::__grow_by_and_replace(&v309, v243, 1uLL, v243, v243, 0, 1uLL, v238);
  }

  else
  {
    v244 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v244 = v309.__r_.__value_.__r.__words[0];
    }

    v245 = v244 + v242;
    if (v244 + v242 <= v238 && v245 + 1 > v238)
    {
      goto LABEL_785;
    }

    *v245 = *v238;
    v246 = v242 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v246;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v246 & 0x7F;
    }

    v244->__r_.__value_.__s.__data_[v246] = 0;
  }

  v247 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v248 = 22;
  }

  else
  {
    v248 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v247 = v309.__r_.__value_.__l.__size_;
  }

  if (v248 == v247)
  {
    std::string::__grow_by_and_replace(&v309, v248, 1uLL, v248, v248, 0, 1uLL, "|");
  }

  else
  {
    v249 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v249 = v309.__r_.__value_.__r.__words[0];
    }

    v250 = v249 + v247;
    if (v249 + v247 <= "|" && v250 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v250 = 124;
    v251 = v247 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v251;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v251 & 0x7F;
    }

    v249->__r_.__value_.__s.__data_[v251] = 0;
  }

  v252 = webrtc::StringBuilder::operator<<(&v309, *(this + 587), v196);
  v254 = HIBYTE(v252->__r_.__value_.__r.__words[2]);
  v255 = v254;
  if ((v254 & 0x80u) == 0)
  {
    v256 = 22;
  }

  else
  {
    v256 = (v252->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v254 & 0x80u) != 0)
  {
    v254 = v252->__r_.__value_.__l.__size_;
  }

  if (v256 == v254)
  {
    v257 = v252;
    std::string::__grow_by_and_replace(v252, v256, 1uLL, v256, v256, 0, 1uLL, "|");
    v252 = v257;
  }

  else
  {
    if (v255 >= 0)
    {
      v258 = v252;
    }

    else
    {
      v258 = v252->__r_.__value_.__r.__words[0];
    }

    v259 = v258 + v254;
    if (v258 + v254 <= "|" && v259 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v259 = 124;
    v260 = v254 + 1;
    if (SHIBYTE(v252->__r_.__value_.__r.__words[2]) < 0)
    {
      v252->__r_.__value_.__l.__size_ = v260;
    }

    else
    {
      *(&v252->__r_.__value_.__s + 23) = v260 & 0x7F;
    }

    v258->__r_.__value_.__s.__data_[v260] = 0;
  }

  v261 = webrtc::StringBuilder::operator<<(v252, *(this + 585), v253);
  v263 = HIBYTE(v261->__r_.__value_.__r.__words[2]);
  v264 = v263;
  if ((v263 & 0x80u) == 0)
  {
    v265 = 22;
  }

  else
  {
    v265 = (v261->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v263 & 0x80u) != 0)
  {
    v263 = v261->__r_.__value_.__l.__size_;
  }

  if (v265 == v263)
  {
    std::string::__grow_by_and_replace(v261, v265, 1uLL, v265, v265, 0, 1uLL, "|");
    v266 = *(this + 31);
    if (!v266)
    {
      goto LABEL_759;
    }
  }

  else
  {
    if (v264 >= 0)
    {
      v267 = v261;
    }

    else
    {
      v267 = v261->__r_.__value_.__r.__words[0];
    }

    v268 = v267 + v263;
    if (v267 + v263 <= "|" && v268 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v268 = 124;
    v269 = v263 + 1;
    if (SHIBYTE(v261->__r_.__value_.__r.__words[2]) < 0)
    {
      v261->__r_.__value_.__l.__size_ = v269;
      v267->__r_.__value_.__s.__data_[v269] = 0;
      v266 = *(this + 31);
      if (!v266)
      {
        goto LABEL_759;
      }
    }

    else
    {
      *(&v261->__r_.__value_.__s + 23) = v269 & 0x7F;
      v267->__r_.__value_.__s.__data_[v269] = 0;
      v266 = *(this + 31);
      if (!v266)
      {
        goto LABEL_759;
      }
    }
  }

  if (*v266 != 1 || !*(this + 32))
  {
LABEL_759:
    v288 = *(this + 604);
    if (v288 <= 2999)
    {
      goto LABEL_760;
    }

    goto LABEL_739;
  }

  v270 = (*(*this + 48))(this);
  __str[0].__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&__str[0].__r_.__value_.__l.__data_ = 0uLL;
  v272 = absl::numbers_internal::FastIntToBuffer(v270, __str, v271);
  v273 = v272 - __str;
  if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v273 <= SHIBYTE(__str[0].__r_.__value_.__r.__words[2]))
    {
      *(&__str[0].__r_.__value_.__s + 23) = v272 - __str;
      v274 = __str;
      goto LABEL_705;
    }

LABEL_787:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__str[0].__r_.__value_.__l.__size_ < v273)
  {
    goto LABEL_787;
  }

  v274 = __str[0].__r_.__value_.__r.__words[0];
  __str[0].__r_.__value_.__l.__size_ = v272 - __str;
LABEL_705:
  v274->__r_.__value_.__s.__data_[v273] = 0;
  if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v278 = __str;
  }

  else
  {
    v278 = __str[0].__r_.__value_.__r.__words[0];
  }

  if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v279 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v279 = __str[0].__r_.__value_.__l.__size_;
  }

  if (!v278 && v279)
  {
    goto LABEL_785;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v280 = 22;
  }

  else
  {
    v280 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v281 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v281 = v309.__r_.__value_.__l.__size_;
  }

  if (v280 - v281 < v279)
  {
    std::string::__grow_by_and_replace(&v309, v280, v281 + v279 - v280, v281, v281, 0, v279, v278);
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_732;
    }

    goto LABEL_721;
  }

  if (!v279)
  {
LABEL_731:
    if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_732;
    }

LABEL_721:
    operator delete(__str[0].__r_.__value_.__l.__data_);
    goto LABEL_732;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v282 = &v309;
  }

  else
  {
    v282 = v309.__r_.__value_.__r.__words[0];
  }

  if ((v279 & 0x8000000000000000) != 0)
  {
    goto LABEL_785;
  }

  v283 = v282 + v281;
  if ((v282 + v281) <= v278 && &v283[v279] > v278)
  {
    goto LABEL_785;
  }

  v284 = v279;
  memmove(v283, v278, v279);
  v285 = v281 + v284;
  if ((SHIBYTE(v309.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v309.__r_.__value_.__s + 23) = v285 & 0x7F;
    v282->__r_.__value_.__s.__data_[v285] = 0;
    goto LABEL_731;
  }

  v309.__r_.__value_.__l.__size_ = v281 + v284;
  v282->__r_.__value_.__s.__data_[v285] = 0;
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_721;
  }

LABEL_732:
  v286 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v287 = 22;
  }

  else
  {
    v287 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v286 = v309.__r_.__value_.__l.__size_;
  }

  if (v287 != v286)
  {
    v299 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v299 = v309.__r_.__value_.__r.__words[0];
    }

    v300 = v299 + v286;
    if (v299 + v286 <= "|" && v300 + 1 > "|")
    {
      goto LABEL_785;
    }

    *v300 = 124;
    v301 = v286 + 1;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v301;
      v299->__r_.__value_.__s.__data_[v301] = 0;
      v288 = *(this + 604);
      if (v288 <= 2999)
      {
        goto LABEL_760;
      }

      goto LABEL_739;
    }

    *(&v309.__r_.__value_.__s + 23) = v301 & 0x7F;
    v299->__r_.__value_.__s.__data_[v301] = 0;
    goto LABEL_759;
  }

  std::string::__grow_by_and_replace(&v309, v287, 1uLL, v287, v287, 0, 1uLL, "|");
  v288 = *(this + 604);
  if (v288 <= 2999)
  {
LABEL_760:
    v292 = webrtc::StringBuilder::operator<<(&v309, v288, v262);
    v302 = HIBYTE(v292->__r_.__value_.__r.__words[2]);
    v303 = v302;
    if ((v302 & 0x80u) == 0)
    {
      v289 = 22;
    }

    else
    {
      v289 = (v292->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v302 & 0x80u) != 0)
    {
      v302 = v292->__r_.__value_.__l.__size_;
    }

    if (v289 == v302)
    {
      v291 = "]";
      v293 = 1;
      v290 = v289;
      v294 = v289;
      v295 = 1;
      goto LABEL_767;
    }

    if (v303 >= 0)
    {
      v296 = v292;
    }

    else
    {
      v296 = v292->__r_.__value_.__r.__words[0];
    }

    v304 = v296 + v302;
    if (v296 + v302 <= "]" && v304 + 1 > "]")
    {
      goto LABEL_785;
    }

    *v304 = 93;
    v298 = v302 + 1;
    if (SHIBYTE(v292->__r_.__value_.__r.__words[2]) < 0)
    {
      v292->__r_.__value_.__l.__size_ = v298;
    }

    else
    {
      *(&v292->__r_.__value_.__s + 23) = v298 & 0x7F;
    }

LABEL_777:
    v296->__r_.__value_.__s.__data_[v298] = 0;
    goto LABEL_778;
  }

LABEL_739:
  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v289 = 22;
  }

  else
  {
    v289 = (v309.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v290 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v290 = v309.__r_.__value_.__l.__size_;
  }

  if (v289 - v290 >= 2)
  {
    v296 = &v309;
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v296 = v309.__r_.__value_.__r.__words[0];
    }

    v297 = (v296 + v290);
    if (v296 + v290 <= "-]" && v297 + 1 > "-]")
    {
      goto LABEL_785;
    }

    *v297 = 23853;
    v298 = v290 + 2;
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v309.__r_.__value_.__l.__size_ = v290 + 2;
    }

    else
    {
      *(&v309.__r_.__value_.__s + 23) = v298 & 0x7F;
    }

    goto LABEL_777;
  }

  v291 = "-]";
  v292 = &v309;
  v293 = v290 - v289 + 2;
  v294 = v290;
  v295 = 2;
LABEL_767:
  std::string::__grow_by_and_replace(v292, v289, v293, v290, v294, 0, v295, v291);
LABEL_778:
  result = *&v309.__r_.__value_.__l.__data_;
  *a2 = v309;
  return result;
}