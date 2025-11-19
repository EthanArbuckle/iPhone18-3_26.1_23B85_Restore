void webrtc::AddAttributeLine(char *a1, size_t a2, absl::numbers_internal *a3, std::string *a4)
{
  memset(&v27, 0, sizeof(v27));
  webrtc::InitLine(97, a1, a2, &v27);
  size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
    v8 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 == v27.__r_.__value_.__l.__size_)
    {
      goto LABEL_5;
    }

    v9 = v27.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) == 22)
    {
      v8 = 22;
LABEL_5:
      std::string::__grow_by_and_replace(&v27, v8, 1uLL, v8, v8, 0, 1uLL, ":");
      goto LABEL_16;
    }

    v9 = &v27;
  }

  if (v9 + size <= ":" && &v9->__r_.__value_.__l.__data_ + size + 1 > ":")
  {
    goto LABEL_58;
  }

  v9->__r_.__value_.__s.__data_[size] = 58;
  v11 = size + 1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    v27.__r_.__value_.__l.__size_ = v11;
  }

  else
  {
    *(&v27.__r_.__value_.__s + 23) = v11 & 0x7F;
  }

  v9->__r_.__value_.__s.__data_[v11] = 0;
LABEL_16:
  webrtc::StringBuilder::operator<<(&v27, a3, v6);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v27;
  }

  else
  {
    v12 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v27.__r_.__value_.__l.__size_;
  }

  if (!a4)
  {
LABEL_52:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_47:
    operator delete(v27.__r_.__value_.__l.__data_);
    return;
  }

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 == 0;
  }

  if (!v14)
  {
    goto LABEL_58;
  }

  v15 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 22;
    v17 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (22 - v15 < v13)
    {
      goto LABEL_30;
    }

LABEL_35:
    if (v13)
    {
      v22 = a4;
      if ((v15 & 0x80000000) != 0)
      {
        v22 = a4->__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      v23 = v22 + v17;
      if ((v22 + v17) <= v12 && &v23[v13] > v12)
      {
        goto LABEL_58;
      }

      v24 = v13;
      memmove(v23, v12, v13);
      v25 = v17 + v24;
      if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
      {
        a4->__r_.__value_.__l.__size_ = v25;
        v22->__r_.__value_.__s.__data_[v25] = 0;
        v18 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_31:
        v18 = a4->__r_.__value_.__l.__size_;
        v19 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v19 - v18 >= 2)
        {
          v20 = a4->__r_.__value_.__r.__words[0];
          v21 = (a4->__r_.__value_.__r.__words[0] + v18);
          if (v21 > "\r\n")
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

LABEL_46:
        std::string::__grow_by_and_replace(a4, v19, v18 - v19 + 2, v18, v18, 0, 2uLL, "\r\n");
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_47;
      }

      *(&a4->__r_.__value_.__s + 23) = v25 & 0x7F;
      v22->__r_.__value_.__s.__data_[v25] = 0;
    }

    v18 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_31;
  }

  v17 = a4->__r_.__value_.__l.__size_;
  v16 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v17 >= v13)
  {
    goto LABEL_35;
  }

LABEL_30:
  std::string::__grow_by_and_replace(a4, v16, v13 - v16 + v17, v17, v17, 0, v13, v12);
  v18 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  if (v18 - 21 < 2)
  {
    v19 = 22;
    goto LABEL_46;
  }

  v20 = a4;
  v21 = a4 + v18;
  if (a4 + v18 > "\r\n")
  {
    goto LABEL_50;
  }

LABEL_49:
  if (v21 + 2 > "\r\n")
  {
LABEL_58:
    __break(1u);
    return;
  }

LABEL_50:
  *v21 = 2573;
  v26 = v18 + 2;
  if ((SHIBYTE(a4->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&a4->__r_.__value_.__s + 23) = v26 & 0x7F;
    v20->__r_.__value_.__s.__data_[v26] = 0;
    goto LABEL_52;
  }

  a4->__r_.__value_.__l.__size_ = v26;
  v20->__r_.__value_.__s.__data_[v26] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }
}

void webrtc::ParseFailedExpectFieldNum(uint64_t a1, unint64_t a2, absl::numbers_internal *this, uint64_t a4)
{
  *&v16.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v16 <= "Expects " && &v16.__r_.__value_.__r.__words[1] > "Expects ")
  {
    goto LABEL_29;
  }

  v16.__r_.__value_.__r.__words[0] = 0x2073746365707845;
  *(&v16.__r_.__value_.__s + 23) = 8;
  v8 = webrtc::StringBuilder::operator<<(&v16, this, this);
  v9 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  if (v9 >= 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v9 >= 0)
  {
    size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8->__r_.__value_.__l.__size_;
  }

  if (v10 - size < 8)
  {
    std::string::__grow_by_and_replace(v8, v10, size - v10 + 8, size, size, 0, 8uLL, " fields.");
    goto LABEL_24;
  }

  v12 = v9 >= 0 ? v8 : v8->__r_.__value_.__r.__words[0];
  if (v12 + size <= " fields." && &v12->__r_.__value_.__r.__words[1] + size > " fields.")
  {
LABEL_29:
    __break(1u);
    return;
  }

  *(v12->__r_.__value_.__r.__words + size) = 0x2E73646C65696620;
  v14 = size + 8;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v8->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
LABEL_24:
  *__p = *&v16.__r_.__value_.__l.__data_;
  *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  memset(&v16, 0, sizeof(v16));
  v18 = v15;
  webrtc::ParseFailed(a1, a2, 0, __p, a4);
  if ((v18 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_28:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*__p);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }
}

BOOL webrtc::HasAttribute(uint64_t a1, unint64_t a2, void *__s2, unint64_t a4)
{
  if (a2 <= 1)
  {
LABEL_21:
    abort();
  }

  v7 = a2 - 2;
  if (a2 - 2 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a2 - 2;
  }

  if (memcmp((a1 + 2), __s2, v8) || a4 > v7)
  {
    return 0;
  }

  v11 = a4 + 2;
  if (a4 + 2 == a2)
  {
    return 1;
  }

  if (a2 <= v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(a1 + v11);
  return v12 == 58 || v12 == 32;
}

uint64_t webrtc::GetValue(unsigned __int8 *a1, size_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (webrtc::tokenize_first(a1, a2, 58, &__p, a5))
  {
    v11 = HIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
    {
      if (v15 >= a4 && !memcmp(__p + v15 - a4, a3, a4))
      {
LABEL_11:
        v12 = 1;
        if ((v11 & 0x80) == 0)
        {
          return v12;
        }

        goto LABEL_9;
      }
    }

    else if (a4 <= SHIBYTE(v16) && !memcmp(&__p + SHIBYTE(v16) - a4, a3, a4))
    {
      goto LABEL_11;
    }
  }

  webrtc::ParseFailedGetValue(a1, a2, a3, a4, a6);
  v12 = 0;
  if (v16 < 0)
  {
LABEL_9:
    operator delete(__p);
  }

  return v12;
}

uint64_t webrtc::ParseIceOptions(unsigned __int8 *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (!webrtc::tokenize_first(a1, a2, 58, &__p, &v18))
  {
    goto LABEL_11;
  }

  v7 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v7 = v22;
    if (v22 < 0xB)
    {
      goto LABEL_11;
    }

    p_p = __p;
  }

  else
  {
    if (HIBYTE(v23) < 0xBu)
    {
      goto LABEL_11;
    }

    p_p = &__p;
  }

  v9 = &p_p[v7];
  v10 = *(v9 - 11);
  v11 = *(v9 - 1);
  if (v10 != 0x6974706F2D656369 || v11 != 0x736E6F6974706F2DLL)
  {
LABEL_11:
    webrtc::ParseFailedGetValue(a1, a2, "ice-options", 0xBuLL, a4);
    v13 = 0;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(__p);
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_16:
    if (v20 >= 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18;
    }

    if (v20 >= 0)
    {
      v15 = HIBYTE(v20);
    }

    else
    {
      v15 = v19;
    }

    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        if (v14[i] == 32)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  v13 = 1;
  if (v23 < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_28:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  return v13;
}

void webrtc::ParseFingerprintAttribute(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 32)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

uint64_t *std::unique_ptr<webrtc::SSLFingerprint>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5 && atomic_fetch_add((v5 + 24), 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v6)
      {
        MEMORY[0x2743DA520](v6, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v5, 0x1010C40EE34DA14);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x2743DA540](v4, 0x1032C40CD05A1E1);
  }

  return a1;
}

uint64_t *std::unique_ptr<webrtc::SSLFingerprint>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        MEMORY[0x2743DA520](v4, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x2743DA540](v2, 0x1032C40CD05A1E1);
  }

  return a1;
}

void webrtc::ParseDtlsSetup(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 58)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

BOOL webrtc::CaseInsensitiveFind(void *__s, char *a2)
{
  v3 = __s;
  v4 = *(__s + 23);
  v5 = __s;
  if (v4 < 0)
  {
    v5 = *__s;
  }

  if (v4 >= 0)
  {
    v6 = *(__s + 23);
  }

  else
  {
    v6 = __s[1];
  }

  for (; v6; --v6)
  {
    *v5 = __tolower(*v5);
    ++v5;
  }

  v7 = a2[23];
  v8 = a2;
  if (v7 < 0)
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  for (; v9; --v9)
  {
    *v8 = __tolower(*v8);
    ++v8;
  }

  v10 = *(v3 + 23);
  if (v10 < 0)
  {
    v11 = v3;
    v3 = *v3;
    v10 = v11[1];
  }

  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = a2[23];
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  if (!v13)
  {
    return 1;
  }

  v14 = v3 + v10;
  if (v10 >= v13)
  {
    v18 = *a2;
    v19 = v3;
    do
    {
      v20 = v10 - v13;
      if (v20 == -1)
      {
        break;
      }

      v21 = memchr(v19, v18, v20 + 1);
      if (!v21)
      {
        break;
      }

      v15 = v21;
      if (!memcmp(v21, a2, v13))
      {
        return v15 != v14 && v15 - v3 != -1;
      }

      v19 = v15 + 1;
      v10 = v14 - (v15 + 1);
    }

    while (v10 >= v13);
  }

  v15 = v14;
  return v15 != v14 && v15 - v3 != -1;
}

void webrtc::ParseExtmap(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 32)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

unint64_t webrtc::GetLine(unint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = result;
  v5 = *a4;
  v6 = (a3 - *a4);
  if (a3 <= *a4)
  {
    goto LABEL_17;
  }

  v8 = (a2 + v5);
  result = memchr((a2 + v5), 10, a3 - *a4);
  v10 = (result - a2);
  if (!result || v10 + 1 == 0)
  {
    goto LABEL_17;
  }

  v12 = &v10[-v5];
  if (v6 < &v10[-v5])
  {
    v12 = v6;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = &v12[-(v12[v8 - 1] == 13)];
  if (v13 < 3)
  {
    goto LABEL_17;
  }

  v14 = *v8;
  if (v14 < 0)
  {
    result = __maskrune(*v8, 0x1000uLL);
    if (!result)
    {
LABEL_17:
      *v4 = 0;
      *(v4 + 16) = 0;
      return result;
    }
  }

  else
  {
    result = *(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x1000;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  if (v8[1] != 61 || *v8 != 115 && v8[2] == 32)
  {
    goto LABEL_17;
  }

  *a4 = (v10 + 1);
  *v4 = v8;
  *(v4 + 8) = v13;
  *(v4 + 16) = 1;
  return result;
}

void webrtc::ParseFailedGetValue(uint64_t a1, unint64_t a2, const std::string::value_type *a3, std::string::size_type a4, uint64_t a5)
{
  memset(&v16, 0, sizeof(v16));
  std::string::__grow_by_and_replace(&v16, 0x16uLL, 0x10uLL, 0, 0, 0, 0x26uLL, "Failed to get the value of attribute: ");
  if (!a3 && a4)
  {
    goto LABEL_27;
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (v10 - size < a4)
  {
    std::string::__grow_by_and_replace(&v16, v10, size + a4 - v10, size, size, 0, a4, a3);
    goto LABEL_22;
  }

  if (a4)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16.__r_.__value_.__r.__words[0];
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v13 = v12 + size;
      if (v12 + size > a3 || &v13[a4] <= a3)
      {
        memmove(v13, a3, a4);
        v14 = size + a4;
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = size + a4;
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = v14 & 0x7F;
        }

        v12->__r_.__value_.__s.__data_[v14] = 0;
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_22:
  *__p = *&v16.__r_.__value_.__l.__data_;
  *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  memset(&v16, 0, sizeof(v16));
  v18 = v15;
  webrtc::ParseFailed(a1, a2, 0, __p, a5);
  if ((v18 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*__p);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void *std::vector<webrtc::RtpExtension>::emplace_back<webrtc::RtpExtension const&>(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (v3 >= result[2])
  {
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(result);
  }

  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      v5 = a2;
      std::string::__init_copy_ctor_external(result[1], *a2, *(a2 + 1));
      a2 = v5;
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    v6 = *(a2 + 6);
    *(v3 + 28) = *(a2 + 28);
    *(v3 + 24) = v6;
    result = (v3 + 32);
    v2[1] = v3 + 32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::ParseContent(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, char *a5, uint64_t a6, unsigned int **a7, unint64_t *a8, uint64_t a9, _BYTE *a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a1;
  v16 = a12;
  v555 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (a12)
    {
      v153 = *a7;
      v154 = a7[1];
      if (*a7 != v154)
      {
        do
        {
          v155 = *v153;
          v156 = *(v16 + 280);
          v157 = *(v16 + 288);
          if (v156 != v157)
          {
            while (1)
            {
              webrtc::Codec::Codec(__p, v156);
              v158 = *&__p[12];
              webrtc::Codec::~Codec(__p);
              if (v158 == v155)
              {
                break;
              }

              v156 = (v156 + 216);
              if (v156 == v157)
              {
                v156 = v157;
                break;
              }
            }

            v157 = *(a12 + 288);
          }

          if (v155 <= 0x12 && v156 == v157)
          {
            v160 = &(&webrtc::kStaticPayloadAudioCodecs)[3 * v155];
            v161 = *v160;
            if (!*v160)
            {
              goto LABEL_1171;
            }

            v162 = strlen(*v160);
            if (v162 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_1151;
            }

            if (v162 > 0x16)
            {
              operator new();
            }

            v554[23] = v162;
            v163 = &v554[v162];
            if (v554 <= v161 && v163 > v161)
            {
              goto LABEL_1171;
            }

            if (v162)
            {
              memmove(v554, v161, v162);
            }

            *v163 = 0;
            v165 = *(v160 + 2);
            v166 = v160[2];
            *__p = &unk_288291428;
            *&__p[8] = 0;
            *&__p[12] = v155;
            if ((v554[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&__p[16], *v554, *&v554[8]);
            }

            else
            {
              *&__p[16] = *v554;
              *&__p[32] = *&v554[16];
            }

            v15 = a1;
            *&__p[40] = v165;
            *&__p[48] = v166;
            __p[56] = 0;
            LOBYTE(v525[2]) = 0;
            v525[3] = 0;
            LOBYTE(v527[3]) = 0;
            LOBYTE(v530) = 0;
            v531 = 0uLL;
            *(&v530 + 1) = &v531;
            v533 = 0;
            v532 = 0uLL;
            v167 = *(a12 + 288);
            if (v167 >= *(a12 + 296))
            {
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>((a12 + 280));
            }

            if (!v167)
            {
              goto LABEL_1171;
            }

            *(a12 + 288) = webrtc::Codec::Codec(v167, __p) + 216;
            webrtc::Codec::~Codec(__p);
            if ((v554[23] & 0x80000000) != 0)
            {
              operator delete(*v554);
            }
          }

          ++v153;
          v16 = a12;
        }

        while (v153 != v154);
      }
    }
  }

  v475 = (v16 + 128);
  v520 = 0;
  v519 = 0;
  v521 = 0;
  v517 = 0uLL;
  v471 = (v16 + 40);
  v518 = 0;
  v515 = 0;
  v514 = 0;
  v516 = 0;
  v512 = 0;
  v511 = 0;
  v513 = 0;
  v509 = 0;
  v508 = 0;
  v510 = 0;
  v506 = 0;
  v505 = 0;
  v507 = 0;
  v503 = 0;
  v502 = 0;
  v504 = 0;
  v500 = 0;
  v499 = 0;
  v501 = 0;
  memset(&v498, 0, sizeof(v498));
  v496 = 0;
  v495 = 0;
  v497 = 0;
  memset(v494, 0, sizeof(v494));
  v476 = &__p[24];
  v17 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
                      while (1)
                      {
                        while (1)
                        {
                          v19 = *a8;
                          if (v17 >= *a8 + 2)
                          {
                            if (v17 <= v19)
                            {
                              goto LABEL_1171;
                            }

                            if (*(v15 + v19) == 109)
                            {
                              if (v17 <= v19 + 1)
                              {
                                goto LABEL_1171;
                              }

                              if (*(v15 + v19 + 1) == 61)
                              {
                                goto LABEL_424;
                              }
                            }
                          }

                          if (v17 <= v19)
                          {
                            goto LABEL_418;
                          }

                          v20 = (v15 + v19);
                          v21 = memchr((v15 + v19), 10, v17 - v19);
                          v22 = &v21[-v15];
                          v23 = !v21 || v22 + 1 == 0;
                          if (v23)
                          {
                            goto LABEL_418;
                          }

                          v24 = &v22[-v19];
                          if (v17 - v19 < &v22[-v19])
                          {
                            v24 = (v17 - v19);
                          }

                          if (!v24)
                          {
                            goto LABEL_418;
                          }

                          v25 = &v24[-(v24[v20 - 1] == 13)];
                          if (v25 < 3)
                          {
                            goto LABEL_418;
                          }

                          v26 = *v20;
                          if (v26 < 0)
                          {
                            if (!__maskrune(*v20, 0x1000uLL))
                            {
                              goto LABEL_418;
                            }
                          }

                          else if ((*(MEMORY[0x277D85DE0] + 4 * v26 + 60) & 0x1000) == 0)
                          {
                            goto LABEL_418;
                          }

                          if (v20[1] != 61 || *v20 != 115 && v20[2] == 32)
                          {
LABEL_418:
                            __s1.__r_.__value_.__s.__data_[0] = 0;
                            __s1.__r_.__value_.__s.__data_[16] = 0;
                            v148 = *a8;
                            if (*a8 < v17)
                            {
                              v493[1].n128_u8[7] = 17;
                              if (v493 <= "Invalid SDP line." && v493[1].n128_u64 + 1 > "Invalid SDP line.")
                              {
                                goto LABEL_1171;
                              }

                              strcpy(v493, "Invalid SDP line.");
                              webrtc::ParseFailed(v15, v17, v148, v493, a15);
                              if (v493[1].n128_i8[7] < 0)
                              {
                                operator delete(v493[0].n128_u64[0]);
                              }

                              goto LABEL_1077;
                            }

LABEL_424:
                            *&__p[16] = 0;
                            *&__p[8] = 0;
                            *__p = &__p[8];
                            *&v554[8] = 0uLL;
                            *v554 = &v554[8];
                            v149 = v495;
                            v150 = v496;
                            if (v495 == v496)
                            {
                              goto LABEL_537;
                            }

                            v151 = v495;
                            do
                            {
                              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v554, v151);
                              if ((v152 & 1) == 0)
                              {
                                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v151);
                              }

                              v151 += 10;
                            }

                            while (v151 != v150);
                            if (!*&__p[16])
                            {
                              goto LABEL_537;
                            }

                            v168 = *&__p[8];
                            if (!*&__p[8])
                            {
                              v149 += 10 * ((v150 - v149 - 80) / 0x50uLL) + 10;
LABEL_491:
                              if (v149 == v150)
                              {
                                goto LABEL_537;
                              }

                              v179 = v149 + 10;
                              if (v149 + 10 == v150)
                              {
                                goto LABEL_523;
                              }

                              v180 = v149;
                              while (1)
                              {
                                v181 = v149;
                                v149 = v179;
                                v182 = *&__p[8];
                                if (*&__p[8])
                                {
                                  break;
                                }

LABEL_494:
                                webrtc::RidDescription::operator=(v180, v149);
                                v180 += 80;
LABEL_495:
                                v179 = v149 + 10;
                                if (v149 + 10 == v150)
                                {
                                  v150 = v496;
                                  v149 = v180;
LABEL_523:
                                  if (v149 > v150)
                                  {
                                    goto LABEL_1171;
                                  }

                                  if (v149 != v150)
                                  {
                                    do
                                    {
                                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v150 - 3), *(v150 - 2));
                                      v193 = *(v150 - 6);
                                      if (v193)
                                      {
                                        v194 = *(v150 - 5);
                                        v195 = *(v150 - 6);
                                        if (v194 != v193)
                                        {
                                          v196 = v194 - 27;
                                          v197 = v194 - 27;
                                          v198 = v194 - 27;
                                          do
                                          {
                                            v199 = *v198;
                                            v198 -= 27;
                                            (*v199)(v197);
                                            v196 -= 27;
                                            v23 = v197 == v193;
                                            v197 = v198;
                                          }

                                          while (!v23);
                                          v195 = *(v150 - 6);
                                        }

                                        *(v150 - 5) = v193;
                                        operator delete(v195);
                                      }

                                      v200 = (v150 - 10);
                                      if (*(v150 - 57) < 0)
                                      {
                                        operator delete(*v200);
                                      }

                                      v150 -= 10;
                                    }

                                    while (v200 != v149);
                                    v496 = v149;
LABEL_538:
                                    std::__tree<webrtc::SocketAddress>::destroy(v554, *&v554[8]);
                                    std::__tree<webrtc::SocketAddress>::destroy(__p, *&__p[8]);
                                    memset(&v492, 0, sizeof(v492));
                                    v481 = 0;
                                    v482 = 0;
                                    v483 = 0;
                                    if (v494[0].__r_.__value_.__r.__words[0] == v494[0].__r_.__value_.__l.__size_ && v494[1].__r_.__value_.__r.__words[0] == v494[1].__r_.__value_.__l.__size_)
                                    {
                                      v302 = a12;
                                      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
                                      {
                                        webrtc::webrtc_logging_impl::Log("\r\t", v352, v353, v354, v355, v356, v357, v358, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                                      }

                                      goto LABEL_788;
                                    }

                                    *&__p[16] = 0;
                                    *&__p[8] = 0;
                                    *__p = &__p[8];
                                    webrtc::SimulcastLayerList::GetAllLayers(v494, v554);
                                    webrtc::SimulcastLayerList::GetAllLayers(&v494[1], &__s1);
                                    v202 = *&v554[8];
                                    v201 = *v554;
                                    if (*v554 != *&v554[8] && __s1.__r_.__value_.__r.__words[0] != __s1.__r_.__value_.__l.__size_)
                                    {
                                      do
                                      {
                                        size = __s1.__r_.__value_.__l.__size_;
                                        v203 = __s1.__r_.__value_.__r.__words[0];
                                        if (__s1.__r_.__value_.__r.__words[0] != __s1.__r_.__value_.__l.__size_)
                                        {
                                          if (*(v201 + 23) >= 0)
                                          {
                                            v205 = *(v201 + 23);
                                          }

                                          else
                                          {
                                            v205 = *(v201 + 8);
                                          }

                                          if ((*(v201 + 23) & 0x80) != 0)
                                          {
                                            while (1)
                                            {
                                              v209 = *(v203 + 23);
                                              v210 = v209;
                                              if ((v209 & 0x80u) != 0)
                                              {
                                                v209 = *(v203 + 8);
                                              }

                                              if (v209 == v205)
                                              {
                                                v211 = v210 >= 0 ? v203 : *v203;
                                                if (!memcmp(v211, *v201, v205))
                                                {
                                                  break;
                                                }
                                              }

                                              v203 += 32;
                                              if (v203 == size)
                                              {
                                                goto LABEL_544;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            while (1)
                                            {
                                              v206 = *(v203 + 23);
                                              v207 = v206;
                                              if ((v206 & 0x80u) != 0)
                                              {
                                                v206 = *(v203 + 8);
                                              }

                                              if (v206 == v205)
                                              {
                                                v208 = v207 >= 0 ? v203 : *v203;
                                                if (!memcmp(v208, v201, v205))
                                                {
                                                  break;
                                                }
                                              }

                                              v203 += 32;
                                              if (v203 == size)
                                              {
                                                goto LABEL_544;
                                              }
                                            }
                                          }

                                          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v201);
                                        }

LABEL_544:
                                        v201 += 32;
                                      }

                                      while (v201 != v202);
                                      v202 = *&v554[8];
                                      v201 = *v554;
                                    }

                                    if (v201 != v202)
                                    {
                                      v212 = v495;
                                      do
                                      {
                                        if (v212 == v149)
                                        {
LABEL_572:
                                          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v201);
                                        }

                                        else
                                        {
                                          if (*(v201 + 23) >= 0)
                                          {
                                            v213 = *(v201 + 23);
                                          }

                                          else
                                          {
                                            v213 = *(v201 + 8);
                                          }

                                          v214 = v212;
                                          if ((*(v201 + 23) & 0x80) != 0)
                                          {
                                            v215 = v212;
                                            while (1)
                                            {
                                              v219 = *(v215 + 23);
                                              v220 = v219;
                                              if (v219 < 0)
                                              {
                                                v219 = v215[1];
                                              }

                                              if (v213 == v219)
                                              {
                                                v221 = v220 >= 0 ? v215 : *v215;
                                                if (!(memcmp(*v201, v221, v213) | *(v215 + 6)))
                                                {
                                                  break;
                                                }
                                              }

                                              v215 += 10;
                                              if (v215 == v149)
                                              {
                                                goto LABEL_572;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            while (1)
                                            {
                                              v216 = *(v214 + 23);
                                              v217 = v216;
                                              if (v216 < 0)
                                              {
                                                v216 = v214[1];
                                              }

                                              if (v213 == v216)
                                              {
                                                v218 = v217 >= 0 ? v214 : *v214;
                                                if (!(memcmp(v201, v218, v213) | *(v214 + 6)))
                                                {
                                                  break;
                                                }
                                              }

                                              v214 += 10;
                                              if (v214 == v149)
                                              {
                                                goto LABEL_572;
                                              }
                                            }
                                          }
                                        }

                                        v201 += 32;
                                      }

                                      while (v201 != v202);
                                    }

                                    v223 = __s1.__r_.__value_.__l.__size_;
                                    v222 = __s1.__r_.__value_.__r.__words[0];
                                    if (__s1.__r_.__value_.__r.__words[0] != __s1.__r_.__value_.__l.__size_)
                                    {
                                      v224 = v495;
                                      do
                                      {
                                        if (v224 == v149)
                                        {
LABEL_600:
                                          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v222);
                                        }

                                        else
                                        {
                                          if (*(v222 + 23) >= 0)
                                          {
                                            v225 = *(v222 + 23);
                                          }

                                          else
                                          {
                                            v225 = *(v222 + 8);
                                          }

                                          v226 = v224;
                                          if ((*(v222 + 23) & 0x80) != 0)
                                          {
                                            v227 = v224;
                                            while (1)
                                            {
                                              v232 = *(v227 + 23);
                                              v233 = v232;
                                              if (v232 < 0)
                                              {
                                                v232 = v227[1];
                                              }

                                              if (v225 == v232)
                                              {
                                                v234 = v233 >= 0 ? v227 : *v227;
                                                if (!memcmp(*v222, v234, v225) && *(v227 + 6) == 1)
                                                {
                                                  break;
                                                }
                                              }

                                              v227 += 10;
                                              if (v227 == v149)
                                              {
                                                goto LABEL_600;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            while (1)
                                            {
                                              v228 = *(v226 + 23);
                                              v229 = v228;
                                              if (v228 < 0)
                                              {
                                                v228 = v226[1];
                                              }

                                              if (v225 == v228)
                                              {
                                                v230 = v229 >= 0 ? v226 : *v226;
                                                if (!memcmp(v222, v230, v225) && *(v226 + 6) == 1)
                                                {
                                                  break;
                                                }
                                              }

                                              v226 += 10;
                                              if (v226 == v149)
                                              {
                                                goto LABEL_600;
                                              }
                                            }
                                          }
                                        }

                                        v222 += 32;
                                      }

                                      while (v222 != v223);
                                    }

                                    webrtc::RemoveRidsFromSimulcastLayerList(&__s, __p, v494[0].__r_.__value_.__l.__data_, v494[0].__r_.__value_.__l.__size_);
                                    v236 = v494[0].__r_.__value_.__r.__words[0];
                                    if (v494[0].__r_.__value_.__r.__words[0])
                                    {
                                      v237 = v494[0].__r_.__value_.__l.__size_;
                                      v238 = v494[0].__r_.__value_.__r.__words[0];
                                      if (v494[0].__r_.__value_.__l.__size_ != v494[0].__r_.__value_.__r.__words[0])
                                      {
                                        v239 = v494[0].__r_.__value_.__l.__size_;
                                        do
                                        {
                                          v242 = *(v239 - 3);
                                          v239 -= 3;
                                          v241 = v242;
                                          if (v242)
                                          {
                                            v243 = *(v237 - 16);
                                            v240 = v241;
                                            if (v243 != v241)
                                            {
                                              do
                                              {
                                                v244 = *(v243 - 9);
                                                v243 -= 4;
                                                if (v244 < 0)
                                                {
                                                  operator delete(*v243);
                                                }
                                              }

                                              while (v243 != v241);
                                              v240 = *v239;
                                            }

                                            *(v237 - 16) = v241;
                                            operator delete(v240);
                                          }

                                          v237 = v239;
                                        }

                                        while (v239 != v236);
                                        v238 = v494[0].__r_.__value_.__r.__words[0];
                                      }

                                      v494[0].__r_.__value_.__l.__size_ = v236;
                                      operator delete(v238);
                                    }

                                    v494[0] = __s;
                                    webrtc::RemoveRidsFromSimulcastLayerList(&__s, __p, v494[1].__r_.__value_.__l.__data_, v494[1].__r_.__value_.__l.__size_);
                                    data = v494[1].__r_.__value_.__l.__data_;
                                    if (v494[1].__r_.__value_.__r.__words[0])
                                    {
                                      v246 = v494[1].__r_.__value_.__l.__size_;
                                      v247 = v494[1].__r_.__value_.__l.__data_;
                                      if (v494[1].__r_.__value_.__l.__size_ != v494[1].__r_.__value_.__r.__words[0])
                                      {
                                        v248 = v494[1].__r_.__value_.__l.__size_;
                                        do
                                        {
                                          v251 = *(v248 - 3);
                                          v248 -= 3;
                                          v250 = v251;
                                          if (v251)
                                          {
                                            v252 = *(v246 - 16);
                                            v249 = v250;
                                            if (v252 != v250)
                                            {
                                              do
                                              {
                                                v253 = *(v252 - 9);
                                                v252 -= 4;
                                                if (v253 < 0)
                                                {
                                                  operator delete(*v252);
                                                }
                                              }

                                              while (v252 != v250);
                                              v249 = *v248;
                                            }

                                            *(v246 - 16) = v250;
                                            operator delete(v249);
                                          }

                                          v246 = v248;
                                        }

                                        while (v248 != data);
                                        v247 = v494[1].__r_.__value_.__l.__data_;
                                      }

                                      v494[1].__r_.__value_.__l.__size_ = data;
                                      operator delete(v247);
                                    }

                                    v494[1] = __s;
                                    v254 = __s1.__r_.__value_.__r.__words[0];
                                    if (__s1.__r_.__value_.__r.__words[0])
                                    {
                                      v255 = __s1.__r_.__value_.__l.__size_;
                                      v256 = __s1.__r_.__value_.__r.__words[0];
                                      if (__s1.__r_.__value_.__l.__size_ != __s1.__r_.__value_.__r.__words[0])
                                      {
                                        do
                                        {
                                          v257 = *(v255 - 9);
                                          v255 -= 4;
                                          if (v257 < 0)
                                          {
                                            operator delete(*v255);
                                          }
                                        }

                                        while (v255 != v254);
                                        v256 = __s1.__r_.__value_.__r.__words[0];
                                      }

                                      __s1.__r_.__value_.__l.__size_ = v254;
                                      operator delete(v256);
                                    }

                                    v258 = *v554;
                                    if (*v554)
                                    {
                                      v259 = *&v554[8];
                                      v260 = *v554;
                                      if (*&v554[8] != *v554)
                                      {
                                        do
                                        {
                                          v261 = *(v259 - 9);
                                          v259 -= 4;
                                          if (v261 < 0)
                                          {
                                            operator delete(*v259);
                                          }
                                        }

                                        while (v259 != v258);
                                        v260 = *v554;
                                      }

                                      *&v554[8] = v258;
                                      operator delete(v260);
                                    }

                                    std::__tree<webrtc::SocketAddress>::destroy(__p, *&__p[8]);
                                    *&__p[16] = 0;
                                    *&__p[8] = 0;
                                    *__p = &__p[8];
                                    if (v495 != v149)
                                    {
                                      operator new();
                                    }

                                    webrtc::SimulcastLayerList::GetAllLayers(v494, v554);
                                    v263 = *&v554[8];
                                    v262 = *v554;
                                    if (*v554 == *&v554[8])
                                    {
                                      if (*v554)
                                      {
                                        goto LABEL_727;
                                      }

                                      goto LABEL_734;
                                    }

LABEL_684:
                                    v264 = *&__p[8];
                                    if (!*&__p[8])
                                    {
                                      goto LABEL_719;
                                    }

                                    v265 = *(v262 + 23);
                                    if (v265 >= 0)
                                    {
                                      v266 = v262;
                                    }

                                    else
                                    {
                                      v266 = *v262;
                                    }

                                    if (v265 >= 0)
                                    {
                                      v267 = *(v262 + 23);
                                    }

                                    else
                                    {
                                      v267 = v262[1];
                                    }

                                    v268 = &__p[8];
                                    while (1)
                                    {
                                      v269 = *(v264 + 55);
                                      if (v269 >= 0)
                                      {
                                        v270 = v264 + 4;
                                      }

                                      else
                                      {
                                        v270 = v264[4];
                                      }

                                      if (v269 >= 0)
                                      {
                                        v271 = *(v264 + 55);
                                      }

                                      else
                                      {
                                        v271 = v264[5];
                                      }

                                      if (v267 >= v271)
                                      {
                                        v272 = v271;
                                      }

                                      else
                                      {
                                        v272 = v267;
                                      }

                                      v273 = memcmp(v270, v266, v272);
                                      if (v273)
                                      {
                                        if (v273 < 0)
                                        {
                                          goto LABEL_692;
                                        }
                                      }

                                      else if (v271 < v267)
                                      {
LABEL_692:
                                        v264 = v264[1];
                                        if (!v264)
                                        {
                                          goto LABEL_707;
                                        }

                                        continue;
                                      }

                                      v268 = v264;
                                      v264 = *v264;
                                      if (!v264)
                                      {
LABEL_707:
                                        if (v268 == &__p[8])
                                        {
                                          goto LABEL_719;
                                        }

                                        v274 = v268[55];
                                        if (v274 >= 0)
                                        {
                                          v275 = v268 + 32;
                                        }

                                        else
                                        {
                                          v275 = *(v268 + 4);
                                        }

                                        if (v274 >= 0)
                                        {
                                          v276 = v268[55];
                                        }

                                        else
                                        {
                                          v276 = *(v268 + 5);
                                        }

                                        if (v276 >= v267)
                                        {
                                          v277 = v267;
                                        }

                                        else
                                        {
                                          v277 = v276;
                                        }

                                        v278 = memcmp(v266, v275, v277);
                                        if (v278)
                                        {
                                          if (v278 < 0)
                                          {
                                            goto LABEL_719;
                                          }
                                        }

                                        else if (v267 < v276)
                                        {
LABEL_719:
                                          v268 = &__p[8];
                                        }

                                        if (v492.__r_.__value_.__l.__size_ >= v492.__r_.__value_.__r.__words[2])
                                        {
                                          std::vector<webrtc::RidDescription>::__emplace_back_slow_path<webrtc::RidDescription const&>(&v492);
                                        }

                                        if (!v492.__r_.__value_.__l.__size_)
                                        {
                                          goto LABEL_1171;
                                        }

                                        v492.__r_.__value_.__l.__size_ = &webrtc::RidDescription::RidDescription(v492.__r_.__value_.__l.__size_, (v268 + 56))[3].__r_.__value_.__l.__size_;
                                        v262 += 4;
                                        if (v262 == v263)
                                        {
                                          v262 = *v554;
                                          if (*v554)
                                          {
LABEL_727:
                                            v279 = *&v554[8];
                                            v280 = v262;
                                            if (*&v554[8] != v262)
                                            {
                                              do
                                              {
                                                v281 = *(v279 - 9);
                                                v279 -= 4;
                                                if (v281 < 0)
                                                {
                                                  operator delete(*v279);
                                                }
                                              }

                                              while (v279 != v262);
                                              v280 = *v554;
                                            }

                                            *&v554[8] = v262;
                                            operator delete(v280);
                                          }

LABEL_734:
                                          webrtc::SimulcastLayerList::GetAllLayers(&v494[1], v554);
                                          v283 = *&v554[8];
                                          v282 = *v554;
                                          if (*v554 == *&v554[8])
                                          {
                                            if (!*v554)
                                            {
                                              goto LABEL_785;
                                            }

                                            goto LABEL_736;
                                          }

LABEL_742:
                                          v287 = *&__p[8];
                                          if (!*&__p[8])
                                          {
                                            goto LABEL_777;
                                          }

                                          v288 = *(v282 + 23);
                                          if (v288 >= 0)
                                          {
                                            v289 = v282;
                                          }

                                          else
                                          {
                                            v289 = *v282;
                                          }

                                          if (v288 >= 0)
                                          {
                                            v290 = *(v282 + 23);
                                          }

                                          else
                                          {
                                            v290 = v282[1];
                                          }

                                          v291 = &__p[8];
                                          while (1)
                                          {
                                            v292 = *(v287 + 55);
                                            if (v292 >= 0)
                                            {
                                              v293 = v287 + 4;
                                            }

                                            else
                                            {
                                              v293 = v287[4];
                                            }

                                            if (v292 >= 0)
                                            {
                                              v294 = *(v287 + 55);
                                            }

                                            else
                                            {
                                              v294 = v287[5];
                                            }

                                            if (v290 >= v294)
                                            {
                                              v295 = v294;
                                            }

                                            else
                                            {
                                              v295 = v290;
                                            }

                                            v296 = memcmp(v293, v289, v295);
                                            if (v296)
                                            {
                                              if (v296 < 0)
                                              {
                                                goto LABEL_750;
                                              }
                                            }

                                            else if (v294 < v290)
                                            {
LABEL_750:
                                              v287 = v287[1];
                                              if (!v287)
                                              {
                                                goto LABEL_765;
                                              }

                                              continue;
                                            }

                                            v291 = v287;
                                            v287 = *v287;
                                            if (!v287)
                                            {
LABEL_765:
                                              if (v291 == &__p[8])
                                              {
                                                goto LABEL_777;
                                              }

                                              v297 = v291[55];
                                              if (v297 >= 0)
                                              {
                                                v298 = v291 + 32;
                                              }

                                              else
                                              {
                                                v298 = *(v291 + 4);
                                              }

                                              if (v297 >= 0)
                                              {
                                                v299 = v291[55];
                                              }

                                              else
                                              {
                                                v299 = *(v291 + 5);
                                              }

                                              if (v299 >= v290)
                                              {
                                                v300 = v290;
                                              }

                                              else
                                              {
                                                v300 = v299;
                                              }

                                              v301 = memcmp(v289, v298, v300);
                                              if (v301)
                                              {
                                                if (v301 < 0)
                                                {
                                                  goto LABEL_777;
                                                }
                                              }

                                              else if (v290 < v299)
                                              {
LABEL_777:
                                                v291 = &__p[8];
                                              }

                                              if (v482 >= v483)
                                              {
                                                std::vector<webrtc::RidDescription>::__emplace_back_slow_path<webrtc::RidDescription const&>(&v481);
                                              }

                                              if (!v482)
                                              {
                                                goto LABEL_1171;
                                              }

                                              v482 = (webrtc::RidDescription::RidDescription(v482, (v291 + 56)) + 80);
                                              v282 += 4;
                                              if (v282 == v283)
                                              {
                                                v282 = *v554;
                                                if (!*v554)
                                                {
LABEL_785:
                                                  v302 = a12;
                                                  v303 = a12 + 208;
                                                  if ((a12 + 208) != v494)
                                                  {
                                                    goto LABEL_786;
                                                  }

                                                  goto LABEL_787;
                                                }

LABEL_736:
                                                v284 = *&v554[8];
                                                v285 = v282;
                                                if (*&v554[8] != v282)
                                                {
                                                  do
                                                  {
                                                    v286 = *(v284 - 9);
                                                    v284 -= 4;
                                                    if (v286 < 0)
                                                    {
                                                      operator delete(*v284);
                                                    }
                                                  }

                                                  while (v284 != v282);
                                                  v285 = *v554;
                                                }

                                                *&v554[8] = v282;
                                                operator delete(v285);
                                                v302 = a12;
                                                v303 = a12 + 208;
                                                if ((a12 + 208) != v494)
                                                {
LABEL_786:
                                                  std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(v303, v494[0].__r_.__value_.__l.__data_, v494[0].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v494[0].__r_.__value_.__l.__size_ - v494[0].__r_.__value_.__r.__words[0]) >> 3));
                                                  std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(v302 + 232, v494[1].__r_.__value_.__l.__data_, v494[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v494[1].__r_.__value_.__l.__size_ - v494[1].__r_.__value_.__r.__words[0]) >> 3));
                                                }

LABEL_787:
                                                std::__tree<std::__value_type<std::string,webrtc::RidDescription>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RidDescription>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RidDescription>>>::destroy(*&__p[8]);
LABEL_788:
                                                if ((v302 + 256) != &v481)
                                                {
                                                  std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>((v302 + 256), v481, v482, 0xCCCCCCCCCCCCCCCDLL * ((v482 - v481) >> 4));
                                                }

                                                v304 = v511;
                                                v478 = v512;
                                                if (v511 != v512)
                                                {
                                                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v305 = &v498;
                                                  }

                                                  else
                                                  {
                                                    v305 = v498.__r_.__value_.__r.__words[0];
                                                  }

                                                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v306 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                                                  }

                                                  else
                                                  {
                                                    v306 = v498.__r_.__value_.__l.__size_;
                                                  }

                                                  v307 = *a11;
                                                  v309 = __p <= "default" && &__p[7] > "default";
                                                  v473 = v309;
                                                  while (2)
                                                  {
                                                    if ((v304[31] & 0x8000000000000000) != 0)
                                                    {
                                                      if (!*(v304 + 2))
                                                      {
LABEL_811:
                                                        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                                        {
                                                          v476 = v476 & 0xFFFFFFFF00000000 | 0x1522;
                                                          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v311, v312, v313, v314, v315, v316, v317, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                                                        }
                                                      }
                                                    }

                                                    else if (!v304[31])
                                                    {
                                                      goto LABEL_811;
                                                    }

                                                    memset(v554, 0, 24);
                                                    memset(&__s1, 0, sizeof(__s1));
                                                    if (v307)
                                                    {
                                                      std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(v554, v499, v500, 0xAAAAAAAAAAAAAAABLL * ((v500 - v499) >> 3));
                                                      if (v306 > 0x7FFFFFFFFFFFFFF7)
                                                      {
                                                        goto LABEL_1151;
                                                      }

                                                      if (v306 > 0x16)
                                                      {
                                                        operator new();
                                                      }

                                                      __p[23] = v306;
                                                      v318 = &__p[v306];
                                                      if (__p <= v305 && v318 > v305)
                                                      {
                                                        goto LABEL_1171;
                                                      }

                                                      if (v306)
                                                      {
                                                        memmove(__p, v305, v306);
                                                      }

                                                      v318->__r_.__value_.__s.__data_[0] = 0;
                                                      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(__s1.__r_.__value_.__l.__data_);
                                                      }

                                                      __s1 = *__p;
                                                    }

                                                    else
                                                    {
                                                      if ((v307 & 2) != 0)
                                                      {
                                                        operator new();
                                                      }

                                                      if (!v307)
                                                      {
                                                        __p[23] = 7;
                                                        if (v473)
                                                        {
                                                          goto LABEL_1171;
                                                        }

                                                        strcpy(__p, "default");
                                                        std::vector<std::string>::push_back[abi:sn200100](v554, __p);
                                                        if ((__p[23] & 0x80000000) != 0)
                                                        {
                                                          operator delete(*__p);
                                                        }
                                                      }
                                                    }

                                                    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      std::string::__init_copy_ctor_external(&__s, __s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
                                                    }

                                                    else
                                                    {
                                                      __s = __s1;
                                                    }

                                                    v319 = v514;
                                                    v320 = v515;
                                                    *__p = __s;
                                                    memset(&__s, 0, sizeof(__s));
                                                    if (v514 == v515)
                                                    {
                                                      if ((__p[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*__p);
                                                        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                                                        {
                                                          goto LABEL_909;
                                                        }
                                                      }

                                                      goto LABEL_860;
                                                    }

                                                    if (__p[23] >= 0)
                                                    {
                                                      v321 = __p[23];
                                                    }

                                                    else
                                                    {
                                                      v321 = *&__p[8];
                                                    }

                                                    if ((__p[23] & 0x80000000) != 0)
                                                    {
                                                      v322 = *__p;
                                                      do
                                                      {
                                                        v326 = *(v319 + 23);
                                                        v327 = v326;
                                                        if ((v326 & 0x80u) != 0)
                                                        {
                                                          v326 = *(v319 + 1);
                                                        }

                                                        if (v326 == v321)
                                                        {
                                                          v328 = v327 >= 0 ? v319 : *v319;
                                                          if (!memcmp(v328, v322, v321))
                                                          {
                                                            operator delete(v322);
                                                            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                                                            {
                                                              goto LABEL_909;
                                                            }

                                                            goto LABEL_860;
                                                          }
                                                        }

                                                        v319 = (v319 + 144);
                                                      }

                                                      while (v319 != v320);
                                                      v319 = v320;
                                                      operator delete(v322);
                                                      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
                                                        goto LABEL_860;
                                                      }

LABEL_909:
                                                      operator delete(__s.__r_.__value_.__l.__data_);
LABEL_860:
                                                      v329 = v515;
                                                      if (v319 == v515)
                                                      {
LABEL_863:
                                                        memset(v527, 0, sizeof(v527));
                                                        v526 = 0u;
                                                        memset(v525, 0, sizeof(v525));
                                                        memset(__p, 0, sizeof(__p));
                                                        if (v319 >= v516)
                                                        {
                                                          v331 = 1 - 0x71C71C71C71C71C7 * ((v319 - v514) >> 4);
                                                          if (v331 <= 0x1C71C71C71C71C7)
                                                          {
                                                            if (0x1C71C71C71C71C72 * ((v516 - v514) >> 4) > v331)
                                                            {
                                                              v331 = 0x1C71C71C71C71C72 * ((v516 - v514) >> 4);
                                                            }

                                                            if (0x8E38E38E38E38E39 * ((v516 - v514) >> 4) >= 0xE38E38E38E38E3)
                                                            {
                                                              v331 = 0x1C71C71C71C71C7;
                                                            }

                                                            if (v331)
                                                            {
                                                              if (v331 <= 0x1C71C71C71C71C7)
                                                              {
                                                                operator new();
                                                              }

LABEL_1149:
                                                              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                                            }

LABEL_1171:
                                                            __break(1u);
                                                            return;
                                                          }

LABEL_1153:
                                                          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                                        }

                                                        if (!v319)
                                                        {
                                                          goto LABEL_1171;
                                                        }

                                                        v329->__r_.__value_.__r.__words[2] = 0;
                                                        v329[1].__r_.__value_.__r.__words[0] = 0;
                                                        v329->__r_.__value_.__r.__words[0] = 0;
                                                        v329->__r_.__value_.__l.__size_ = 0;
                                                        memset(__p, 0, 24);
                                                        v329[1].__r_.__value_.__l.__size_ = 0;
                                                        v329[1].__r_.__value_.__r.__words[2] = 0;
                                                        *&v329[1].__r_.__value_.__l.__data_ = *&__p[24];
                                                        *&__p[24] = 0;
                                                        *&__p[32] = 0;
                                                        v329[1].__r_.__value_.__r.__words[2] = *&__p[40];
                                                        v329[2].__r_.__value_.__r.__words[0] = 0;
                                                        v329[2].__r_.__value_.__l.__size_ = 0;
                                                        v329[2].__r_.__value_.__r.__words[2] = 0;
                                                        *&v329[2].__r_.__value_.__l.__data_ = *&__p[48];
                                                        v329[2].__r_.__value_.__r.__words[2] = v525[0];
                                                        memset(&__p[40], 0, 24);
                                                        v525[0] = 0;
                                                        v330 = *&v525[1];
                                                        v329[3].__r_.__value_.__r.__words[2] = v525[3];
                                                        v329[4].__r_.__value_.__r.__words[0] = 0;
                                                        *&v329[3].__r_.__value_.__l.__data_ = v330;
                                                        v525[1] = 0;
                                                        v525[2] = 0;
                                                        v329[4].__r_.__value_.__l.__size_ = 0;
                                                        v329[4].__r_.__value_.__r.__words[2] = 0;
                                                        *&v329[4].__r_.__value_.__l.__data_ = v526;
                                                        v329[4].__r_.__value_.__r.__words[2] = v527[0];
                                                        v329[5].__r_.__value_.__r.__words[0] = 0;
                                                        v525[3] = 0;
                                                        v526 = 0uLL;
                                                        v527[0] = 0;
                                                        v329[5].__r_.__value_.__l.__size_ = 0;
                                                        v329[5].__r_.__value_.__r.__words[2] = 0;
                                                        *&v329[5].__r_.__value_.__l.__data_ = *&v527[1];
                                                        v329[5].__r_.__value_.__r.__words[2] = v527[3];
                                                        memset(&v527[1], 0, 24);
                                                        v515 = v329 + 6;
                                                        webrtc::StreamParams::~StreamParams(__p);
                                                        v319 = &v515[-6];
                                                      }
                                                    }

                                                    else
                                                    {
                                                      do
                                                      {
                                                        v323 = *(v319 + 23);
                                                        v324 = v323;
                                                        if ((v323 & 0x80u) != 0)
                                                        {
                                                          v323 = *(v319 + 1);
                                                        }

                                                        if (v323 == v321)
                                                        {
                                                          v325 = v324 >= 0 ? v319 : *v319;
                                                          if (!memcmp(v325, __p, v321))
                                                          {
                                                            goto LABEL_860;
                                                          }
                                                        }

                                                        v319 = (v319 + 144);
                                                      }

                                                      while (v319 != v320);
                                                      v319 = v320;
                                                      v329 = v515;
                                                      if (v320 == v515)
                                                      {
                                                        goto LABEL_863;
                                                      }
                                                    }

                                                    *__p = *v304;
                                                    std::vector<unsigned int>::push_back[abi:sn200100](v319 + 3, __p);
                                                    v332 = (v319 + 72);
                                                    if (v319 + 72 != v304 + 8)
                                                    {
                                                      v333 = v304[31];
                                                      if ((*(v319 + 95) & 0x80000000) == 0)
                                                      {
                                                        if ((v304[31] & 0x80) == 0)
                                                        {
                                                          v334 = *(v304 + 8);
                                                          *(v319 + 11) = *(v304 + 3);
                                                          *&v332->__r_.__value_.__l.__data_ = v334;
                                                          v335 = (v319 + 96);
                                                          if (v319 + 96 == v554)
                                                          {
                                                            goto LABEL_888;
                                                          }

LABEL_887:
                                                          std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(v335, *v554, *&v554[8], 0xAAAAAAAAAAAAAAABLL * ((*&v554[8] - *v554) >> 3));
                                                          goto LABEL_888;
                                                        }

                                                        std::string::__assign_no_alias<true>(v332, *(v304 + 1), *(v304 + 2));
                                                        v335 = (v319 + 96);
                                                        if (v319 + 96 != v554)
                                                        {
                                                          goto LABEL_887;
                                                        }

LABEL_888:
                                                        if (v319 != &__s1)
                                                        {
                                                          if ((*(v319 + 23) & 0x80000000) == 0)
                                                          {
                                                            if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) == 0)
                                                            {
                                                              v338 = *&__s1.__r_.__value_.__l.__data_;
                                                              *(v319 + 2) = *(&__s1.__r_.__value_.__l + 2);
                                                              *v319 = v338;
                                                              if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                                                              {
                                                                goto LABEL_892;
                                                              }

LABEL_902:
                                                              v339 = *v554;
                                                              if (*v554)
                                                              {
LABEL_903:
                                                                v342 = *&v554[8];
                                                                v310 = v339;
                                                                if (*&v554[8] != v339)
                                                                {
                                                                  do
                                                                  {
                                                                    v343 = *(v342 - 1);
                                                                    v342 -= 3;
                                                                    if (v343 < 0)
                                                                    {
                                                                      operator delete(*v342);
                                                                    }
                                                                  }

                                                                  while (v342 != v339);
                                                                  v310 = *v554;
                                                                }

                                                                *&v554[8] = v339;
                                                                operator delete(v310);
                                                              }

LABEL_806:
                                                              v304 += 80;
                                                              if (v304 != v478)
                                                              {
                                                                continue;
                                                              }

                                                              v344 = v514;
                                                              v345 = v515;
                                                              v346 = a13;
                                                              if (v514 != v515)
                                                              {
                                                                while (2)
                                                                {
                                                                  if ((*(v344 + 23) & 0x8000000000000000) != 0)
                                                                  {
                                                                    if (!*(v344 + 1))
                                                                    {
                                                                      goto LABEL_924;
                                                                    }
                                                                  }

                                                                  else if (!*(v344 + 23))
                                                                  {
LABEL_924:
                                                                    memset(__p, 0, 24);
                                                                    {
                                                                      goto LABEL_1152;
                                                                    }

                                                                    if (*(v344 + 23) < 0)
                                                                    {
                                                                      operator delete(*v344);
                                                                    }

                                                                    v347 = *__p;
                                                                    *(v344 + 2) = *&__p[16];
                                                                    *v344 = v347;
                                                                  }

                                                                  v344 = (v344 + 144);
                                                                  if (v344 == v345)
                                                                  {
                                                                    break;
                                                                  }

                                                                  continue;
                                                                }
                                                              }

LABEL_965:
                                                              v362 = v508;
                                                              v363 = v509;
                                                              v479 = v509;
                                                              while (v362 != v363)
                                                              {
                                                                v364 = v362[3];
                                                                if (v364 != v362[4])
                                                                {
                                                                  v365 = v514;
                                                                  v366 = v515;
                                                                  if (v514 != v515)
                                                                  {
                                                                    v367 = *v364;
                                                                    v368 = *(v514 + 3);
                                                                    v369 = *(v514 + 4);
                                                                    if (v368 != v369)
                                                                    {
                                                                      goto LABEL_975;
                                                                    }

                                                                    while (1)
                                                                    {
                                                                      do
                                                                      {
                                                                        do
                                                                        {
LABEL_973:
                                                                          v365 = (v365 + 144);
                                                                          if (v365 == v366)
                                                                          {
                                                                            goto LABEL_966;
                                                                          }

                                                                          v368 = *(v365 + 3);
                                                                          v369 = *(v365 + 4);
                                                                        }

                                                                        while (v368 == v369);
LABEL_975:
                                                                        while (*v368 != v367)
                                                                        {
                                                                          if (++v368 == v369)
                                                                          {
                                                                            goto LABEL_973;
                                                                          }
                                                                        }
                                                                      }

                                                                      while (v368 == v369);
                                                                      v371 = *(v365 + 7);
                                                                      v370 = *(v365 + 8);
                                                                      if (v371 >= v370)
                                                                      {
                                                                        break;
                                                                      }

                                                                      if (!v371)
                                                                      {
                                                                        goto LABEL_1171;
                                                                      }

                                                                      if (*(v362 + 23) < 0)
                                                                      {
                                                                        std::string::__init_copy_ctor_external(*(v365 + 7), *v362, v362[1]);
                                                                        *(v371 + 24) = 0;
                                                                        *(v371 + 32) = 0;
                                                                        *(v371 + 40) = 0;
                                                                        v381 = v362[3];
                                                                        v380 = v362[4];
                                                                        v375 = v380 - v381;
                                                                        if (v380 != v381)
                                                                        {
LABEL_994:
                                                                          if ((v375 & 0x8000000000000000) == 0)
                                                                          {
                                                                            operator new();
                                                                          }

                                                                          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v372 = *v362;
                                                                        *(v371 + 16) = v362[2];
                                                                        *v371 = v372;
                                                                        *(v371 + 24) = 0;
                                                                        *(v371 + 32) = 0;
                                                                        *(v371 + 40) = 0;
                                                                        v374 = v362[3];
                                                                        v373 = v362[4];
                                                                        v375 = v373 - v374;
                                                                        if (v373 != v374)
                                                                        {
                                                                          goto LABEL_994;
                                                                        }
                                                                      }

                                                                      *(v365 + 7) = v371 + 48;
                                                                    }

                                                                    v376 = *(v365 + 6);
                                                                    v377 = 1 - 0x5555555555555555 * ((v371 - v376) >> 4);
                                                                    if (v377 > 0x555555555555555)
                                                                    {
                                                                      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                                                    }

                                                                    v378 = 0xAAAAAAAAAAAAAAABLL * ((v370 - v376) >> 4);
                                                                    if (2 * v378 > v377)
                                                                    {
                                                                      v377 = 2 * v378;
                                                                    }

                                                                    if (v378 >= 0x2AAAAAAAAAAAAAALL)
                                                                    {
                                                                      v379 = 0x555555555555555;
                                                                    }

                                                                    else
                                                                    {
                                                                      v379 = v377;
                                                                    }

                                                                    if (v379)
                                                                    {
                                                                      if (v379 <= 0x555555555555555)
                                                                      {
                                                                        operator new();
                                                                      }

                                                                      goto LABEL_1149;
                                                                    }

                                                                    goto LABEL_1171;
                                                                  }
                                                                }

LABEL_966:
                                                                v362 += 6;
                                                                v363 = v479;
                                                              }

                                                              v382 = v514;
                                                              v383 = v515;
                                                              if (v514 != v515)
                                                              {
                                                                v384 = *(a12 + 104);
                                                                do
                                                                {
                                                                  if (v384 >= *(a12 + 112))
                                                                  {
                                                                    std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>((a12 + 96));
                                                                  }

                                                                  if (!v384)
                                                                  {
                                                                    goto LABEL_1171;
                                                                  }

                                                                  v384 = webrtc::StreamParams::StreamParams(v384, v382) + 6;
                                                                  *(a12 + 104) = v384;
                                                                  v382 = (v382 + 144);
                                                                }

                                                                while (v382 != v383);
                                                              }

                                                              v385 = *(a12 + 280);
                                                              v386 = *(a12 + 288);
                                                              if (v386 != v385)
                                                              {
                                                                if (0x84BDA12F684BDA13 * ((v386 - v385) >> 3) < 0x12F684BDA12F685)
                                                                {
                                                                  operator new();
                                                                }

                                                                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                                              }

                                                              while (v385 != v386)
                                                              {
                                                                webrtc::Codec::Codec(__p, v385);
                                                                if (__p[39] >= 0)
                                                                {
                                                                  v387 = __p[39];
                                                                }

                                                                else
                                                                {
                                                                  v387 = *&__p[24];
                                                                }

                                                                webrtc::Codec::~Codec(__p);
                                                                if (!v387)
                                                                {
                                                                  operator new();
                                                                }

                                                                v385 = (v385 + 216);
                                                              }

                                                              if (!a3)
                                                              {
                                                                __p[23] = 8;
                                                                if (__p <= "maxptime" && &__p[8] > "maxptime")
                                                                {
                                                                  goto LABEL_1171;
                                                                }

                                                                strcpy(__p, "maxptime");
                                                                if (v507 >= 0)
                                                                {
                                                                  v389 = &v505;
                                                                }

                                                                else
                                                                {
                                                                  v389 = v505;
                                                                }

                                                                if (v507 >= 0)
                                                                {
                                                                  v390 = HIBYTE(v507);
                                                                }

                                                                else
                                                                {
                                                                  v390 = v506;
                                                                }

                                                                webrtc::AddAudioAttribute(__p, v389, v390, a12);
                                                                if ((__p[23] & 0x80000000) != 0)
                                                                {
                                                                  operator delete(*__p);
                                                                  __p[23] = 5;
                                                                  if (__p <= "ptime")
                                                                  {
                                                                    goto LABEL_1027;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  __p[23] = 5;
                                                                  if (__p > "ptime")
                                                                  {
                                                                    goto LABEL_1028;
                                                                  }

LABEL_1027:
                                                                  if (&__p[5] > "ptime")
                                                                  {
                                                                    goto LABEL_1171;
                                                                  }
                                                                }

LABEL_1028:
                                                                *__p = *"ptime";
                                                                *&__p[4] = webrtc::kCodecParamPTime[4];
                                                                if (v504 >= 0)
                                                                {
                                                                  v391 = &v502;
                                                                }

                                                                else
                                                                {
                                                                  v391 = v502;
                                                                }

                                                                if (v504 >= 0)
                                                                {
                                                                  v392 = HIBYTE(v504);
                                                                }

                                                                else
                                                                {
                                                                  v392 = v503;
                                                                }

                                                                webrtc::AddAudioAttribute(__p, v391, v392, a12);
                                                                if ((__p[23] & 0x80000000) != 0)
                                                                {
                                                                  operator delete(*__p);
                                                                }
                                                              }

                                                              v393 = v519;
                                                              if (v519 != v520)
                                                              {
                                                                v394 = *(v346 + 47);
                                                                v395 = (a13 + 24);
                                                                if ((v394 & 0x8000000000000000) == 0 || ((v395 = *(v346 + 24), v394 = *(v346 + 32), !v395) ? (v396 = v394 == 0) : (v396 = 1), v396))
                                                                {
                                                                  std::string::__assign_external((v519 + 160), v395, v394);
                                                                  v397 = *(v346 + 71);
                                                                  v398 = (a13 + 48);
                                                                  if ((v397 & 0x8000000000000000) == 0 || (v398 = *(v346 + 48), v397 = *(v346 + 56), v398) || !v397)
                                                                  {
                                                                    std::string::__assign_external((v393 + 184), v398, v397);
                                                                    operator new();
                                                                  }
                                                                }

                                                                goto LABEL_1171;
                                                              }

                                                              v399 = v481;
                                                              if (v481)
                                                              {
                                                                v400 = v482;
                                                                v401 = v481;
                                                                if (v482 != v481)
                                                                {
                                                                  do
                                                                  {
                                                                    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v400[-1], v400[-1].__r_.__value_.__l.__size_);
                                                                    v402 = v400[-2].__r_.__value_.__l.__data_;
                                                                    if (v402)
                                                                    {
                                                                      v403 = v400[-2].__r_.__value_.__l.__size_;
                                                                      v404 = v400[-2].__r_.__value_.__l.__data_;
                                                                      if (v403 != v402)
                                                                      {
                                                                        v405 = v403 - 216;
                                                                        v406 = (v403 - 216);
                                                                        v407 = (v403 - 216);
                                                                        do
                                                                        {
                                                                          v408 = *v407;
                                                                          v407 -= 27;
                                                                          (*v408)(v406);
                                                                          v405 -= 216;
                                                                          v23 = v406 == v402;
                                                                          v406 = v407;
                                                                        }

                                                                        while (!v23);
                                                                        v404 = v400[-2].__r_.__value_.__l.__data_;
                                                                      }

                                                                      v400[-2].__r_.__value_.__l.__size_ = v402;
                                                                      operator delete(v404);
                                                                    }

                                                                    v409 = &v400[-4].__r_.__value_.__r.__words[2];
                                                                    if (v400[-3].__r_.__value_.__s.__data_[15] < 0)
                                                                    {
                                                                      operator delete(*v409);
                                                                    }

                                                                    v400 = (v400 - 80);
                                                                  }

                                                                  while (v409 != v399);
                                                                  v401 = v481;
                                                                }

                                                                v482 = v399;
                                                                operator delete(v401);
                                                              }

                                                              v410 = v492.__r_.__value_.__r.__words[0];
                                                              if (v492.__r_.__value_.__r.__words[0])
                                                              {
                                                                v411 = v492.__r_.__value_.__l.__size_;
                                                                v412 = v492.__r_.__value_.__r.__words[0];
                                                                if (v492.__r_.__value_.__l.__size_ != v492.__r_.__value_.__r.__words[0])
                                                                {
                                                                  do
                                                                  {
                                                                    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v411 - 24, *(v411 - 16));
                                                                    v413 = *(v411 - 48);
                                                                    if (v413)
                                                                    {
                                                                      v414 = *(v411 - 40);
                                                                      v415 = *(v411 - 48);
                                                                      if (v414 != v413)
                                                                      {
                                                                        v416 = v414 - 27;
                                                                        v417 = v414 - 27;
                                                                        v418 = v414 - 27;
                                                                        do
                                                                        {
                                                                          v419 = *v418;
                                                                          v418 -= 27;
                                                                          (*v419)(v417);
                                                                          v416 -= 27;
                                                                          v23 = v417 == v413;
                                                                          v417 = v418;
                                                                        }

                                                                        while (!v23);
                                                                        v415 = *(v411 - 48);
                                                                      }

                                                                      *(v411 - 40) = v413;
                                                                      operator delete(v415);
                                                                    }

                                                                    v420 = (v411 - 80);
                                                                    if (*(v411 - 57) < 0)
                                                                    {
                                                                      operator delete(*v420);
                                                                    }

                                                                    v411 -= 80;
                                                                  }

                                                                  while (v420 != v410);
                                                                  v412 = v492.__r_.__value_.__r.__words[0];
                                                                }

                                                                v492.__r_.__value_.__l.__size_ = v410;
                                                                operator delete(v412);
                                                              }

                                                              goto LABEL_1077;
                                                            }

                                                            std::string::__assign_no_alias<true>(v319, __s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
                                                            if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                            {
                                                              goto LABEL_902;
                                                            }

LABEL_892:
                                                            operator delete(__s1.__r_.__value_.__l.__data_);
                                                            v339 = *v554;
                                                            if (*v554)
                                                            {
                                                              goto LABEL_903;
                                                            }

                                                            goto LABEL_806;
                                                          }

                                                          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                          {
                                                            p_s1 = &__s1;
                                                          }

                                                          else
                                                          {
                                                            p_s1 = __s1.__r_.__value_.__r.__words[0];
                                                          }

                                                          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                          {
                                                            v341 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
                                                          }

                                                          else
                                                          {
                                                            v341 = __s1.__r_.__value_.__l.__size_;
                                                          }

                                                          std::string::__assign_no_alias<false>(v319, p_s1, v341);
                                                        }

                                                        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                        {
                                                          goto LABEL_902;
                                                        }

                                                        goto LABEL_892;
                                                      }

                                                      if (v333 >= 0)
                                                      {
                                                        v336 = v304 + 8;
                                                      }

                                                      else
                                                      {
                                                        v336 = *(v304 + 1);
                                                      }

                                                      if (v333 >= 0)
                                                      {
                                                        v337 = v304[31];
                                                      }

                                                      else
                                                      {
                                                        v337 = *(v304 + 2);
                                                      }

                                                      std::string::__assign_no_alias<false>(v332, v336, v337);
                                                    }

                                                    break;
                                                  }

                                                  v335 = (v319 + 96);
                                                  if (v319 + 96 == v554)
                                                  {
                                                    goto LABEL_888;
                                                  }

                                                  goto LABEL_887;
                                                }

                                                v346 = a13;
                                                if (a3 == 2 || (*a11 & 1) == 0)
                                                {
                                                  goto LABEL_965;
                                                }

                                                v348 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                                                LOBYTE(v349) = *(&v498.__r_.__value_.__s + 23);
                                                v350 = v498.__r_.__value_.__l.__size_;
                                                if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                {
                                                  v351 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                                                }

                                                else
                                                {
                                                  v351 = v498.__r_.__value_.__l.__size_;
                                                }

                                                if (!v351)
                                                {
                                                  webrtc::CreateRandomString(8, __p);
                                                  if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(v498.__r_.__value_.__l.__data_);
                                                  }

                                                  v498 = *__p;
                                                  v348 = HIBYTE(*&__p[16]);
                                                  v350 = *&__p[8];
                                                  v349 = HIBYTE(*&__p[16]);
                                                }

                                                memset(v527, 0, sizeof(v527));
                                                if ((v349 & 0x80u) == 0)
                                                {
                                                  v359 = &v498;
                                                }

                                                else
                                                {
                                                  v359 = v498.__r_.__value_.__r.__words[0];
                                                }

                                                if ((v349 & 0x80u) == 0)
                                                {
                                                  v360 = v348;
                                                }

                                                else
                                                {
                                                  v360 = v350;
                                                }

                                                v526 = 0uLL;
                                                memset(v525, 0, sizeof(v525));
                                                memset(__p, 0, sizeof(__p));
                                                if (!v360)
                                                {
                                                  if (v492.__r_.__value_.__r.__words[0] != v492.__r_.__value_.__l.__size_)
                                                  {
                                                    std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(&v526, v499, v500, 0xAAAAAAAAAAAAAAABLL * ((v500 - v499) >> 3));
                                                    v554[23] = 0;
                                                    v361 = v554;
                                                    goto LABEL_958;
                                                  }

                                                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                                                  {
                                                    webrtc::webrtc_logging_impl::Log("\r\t", v447, v448, v449, v450, v451, v452, v453, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                                                  }

LABEL_964:
                                                  webrtc::StreamParams::~StreamParams(__p);
                                                  goto LABEL_965;
                                                }

                                                std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(&v526, v499, v500, 0xAAAAAAAAAAAAAAABLL * ((v500 - v499) >> 3));
                                                if (v360 <= 0x7FFFFFFFFFFFFFF7)
                                                {
                                                  if (v360 >= 0x17)
                                                  {
                                                    operator new();
                                                  }

                                                  v554[23] = v360;
                                                  v361 = &v554[v360];
                                                  if (v554 <= v359 && v361 > v359)
                                                  {
                                                    goto LABEL_1171;
                                                  }

                                                  memmove(v554, v359, v360);
LABEL_958:
                                                  v361->__r_.__value_.__s.__data_[0] = 0;
                                                  if ((__p[23] & 0x80000000) != 0)
                                                  {
                                                    operator delete(*__p);
                                                  }

                                                  *__p = *v554;
                                                  *&__p[16] = *&v554[16];
                                                  std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(&v527[1], v492.__r_.__value_.__l.__data_, v492.__r_.__value_.__l.__size_, 0xCCCCCCCCCCCCCCCDLL * ((v492.__r_.__value_.__l.__size_ - v492.__r_.__value_.__r.__words[0]) >> 4));
                                                  if (v515 >= v516)
                                                  {
                                                    std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>(&v514);
                                                  }

                                                  if (!v515)
                                                  {
                                                    goto LABEL_1171;
                                                  }

                                                  v515 = webrtc::StreamParams::StreamParams(v515, __p) + 6;
                                                  goto LABEL_964;
                                                }

LABEL_1151:
                                                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                                              }

                                              goto LABEL_742;
                                            }
                                          }
                                        }

                                        goto LABEL_684;
                                      }
                                    }
                                  }

LABEL_537:
                                  v149 = v150;
                                  goto LABEL_538;
                                }
                              }

                              v183 = *(v181 + 103);
                              v184 = v181[11];
                              if ((v183 & 0x80u) == 0)
                              {
                                v185 = v149;
                              }

                              else
                              {
                                v185 = *v149;
                              }

                              if ((v183 & 0x80u) == 0)
                              {
                                v186 = v183;
                              }

                              else
                              {
                                v186 = v184;
                              }

                              while (1)
                              {
                                v187 = *(v182 + 55);
                                if (v187 >= 0)
                                {
                                  v188 = (v182 + 4);
                                }

                                else
                                {
                                  v188 = v182[4];
                                }

                                if (v187 >= 0)
                                {
                                  v189 = *(v182 + 55);
                                }

                                else
                                {
                                  v189 = v182[5];
                                }

                                if (v189 >= v186)
                                {
                                  v190 = v186;
                                }

                                else
                                {
                                  v190 = v189;
                                }

                                v191 = memcmp(v185, v188, v190);
                                if (v191)
                                {
                                  if (v191 < 0)
                                  {
                                    goto LABEL_505;
                                  }
                                }

                                else if (v186 < v189)
                                {
                                  goto LABEL_505;
                                }

                                v192 = memcmp(v188, v185, v190);
                                if (v192)
                                {
                                  if ((v192 & 0x80000000) == 0)
                                  {
                                    goto LABEL_495;
                                  }
                                }

                                else if (v189 >= v186)
                                {
                                  goto LABEL_495;
                                }

                                ++v182;
LABEL_505:
                                v182 = *v182;
                                if (!v182)
                                {
                                  goto LABEL_494;
                                }
                              }
                            }

LABEL_466:
                            v169 = *(v149 + 23);
                            if (v169 >= 0)
                            {
                              v170 = v149;
                            }

                            else
                            {
                              v170 = *v149;
                            }

                            if (v169 >= 0)
                            {
                              v171 = *(v149 + 23);
                            }

                            else
                            {
                              v171 = v149[1];
                            }

                            v172 = v168;
                            while (1)
                            {
                              v173 = *(v172 + 55);
                              if (v173 >= 0)
                              {
                                v174 = (v172 + 4);
                              }

                              else
                              {
                                v174 = v172[4];
                              }

                              if (v173 >= 0)
                              {
                                v175 = *(v172 + 55);
                              }

                              else
                              {
                                v175 = v172[5];
                              }

                              if (v175 >= v171)
                              {
                                v176 = v171;
                              }

                              else
                              {
                                v176 = v175;
                              }

                              v177 = memcmp(v170, v174, v176);
                              if (v177)
                              {
                                if ((v177 & 0x80000000) == 0)
                                {
                                  goto LABEL_489;
                                }
                              }

                              else if (v171 >= v175)
                              {
LABEL_489:
                                v178 = memcmp(v174, v170, v176);
                                if (v178)
                                {
                                  if ((v178 & 0x80000000) == 0)
                                  {
                                    goto LABEL_491;
                                  }
                                }

                                else if (v175 >= v171)
                                {
                                  goto LABEL_491;
                                }

                                ++v172;
                              }

                              v172 = *v172;
                              if (!v172)
                              {
                                v149 += 10;
                                if (v149 == v150)
                                {
                                  goto LABEL_537;
                                }

                                goto LABEL_466;
                              }
                            }
                          }

                          *a8 = (v22 + 1);
                          __s1.__r_.__value_.__r.__words[0] = v15 + v19;
                          __s1.__r_.__value_.__l.__size_ = v25;
                          __s1.__r_.__value_.__s.__data_[16] = 1;
                          v27 = *v20;
                          if (v27 == 98)
                          {
                            if (v20[1] != 61)
                            {
                              goto LABEL_93;
                            }

                            memset(v554, 0, 24);
                            memset(&__s, 0, sizeof(__s));
                            if ((webrtc::tokenize_first(v20 + 2, v25 - 2, 58, &__s, v554) & 1) == 0)
                            {
                              if (__s1.__r_.__value_.__s.__data_[16])
                              {
                                operator new();
                              }

                              goto LABEL_1171;
                            }

                            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                            {
                              if (__s.__r_.__value_.__l.__size_ != 2)
                              {
                                if (__s.__r_.__value_.__l.__size_ != 4)
                                {
                                  goto LABEL_173;
                                }

                                p_s = __s.__r_.__value_.__r.__words[0];
LABEL_48:
                                if (LODWORD(p_s->__r_.__value_.__l.__data_) != *"TIAS")
                                {
                                  goto LABEL_173;
                                }

                                goto LABEL_97;
                              }

                              if (*__s.__r_.__value_.__l.__data_ != *"AS")
                              {
                                goto LABEL_173;
                              }
                            }

                            else
                            {
                              if (HIBYTE(__s.__r_.__value_.__r.__words[2]) != 2)
                              {
                                if (HIBYTE(__s.__r_.__value_.__r.__words[2]) != 4)
                                {
                                  v29 = 2;
                                  if ((v554[23] & 0x80000000) == 0)
                                  {
                                    goto LABEL_5;
                                  }

                                  goto LABEL_194;
                                }

                                p_s = &__s;
                                goto LABEL_48;
                              }

                              if (LOWORD(__s.__r_.__value_.__l.__data_) != *"AS")
                              {
                                goto LABEL_173;
                              }
                            }

LABEL_97:
                            LODWORD(v481) = 0;
                            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                            {
                              goto LABEL_1171;
                            }

                            if (v554[23] >= 0)
                            {
                              v54 = v554;
                            }

                            else
                            {
                              v54 = *v554;
                            }

                            if (v554[23] >= 0)
                            {
                              v55 = v554[23];
                            }

                            else
                            {
                              v55 = *&v554[8];
                            }

                            if (!webrtc::GetValueFromString<int>(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, v54, v55, &v481, a15))
                            {
                              goto LABEL_190;
                            }

                            v56 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
                            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                            {
                              if (__s.__r_.__value_.__l.__size_ == 2)
                              {
                                v57 = __s.__r_.__value_.__r.__words[0];
                                goto LABEL_110;
                              }
                            }

                            else if (HIBYTE(__s.__r_.__value_.__r.__words[2]) == 2)
                            {
                              v57 = &__s;
LABEL_110:
                              data_low = LOWORD(v57->__r_.__value_.__l.__data_);
                              v59 = v481;
                              if (data_low == *"AS" && v481 == -1)
                              {
                                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                                {
                                  v467 = v467 & 0xFFFFFFFF00000000 | 0x5ECA;
                                  webrtc::webrtc_logging_impl::Log("\r\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                                  v29 = 2;
                                  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    goto LABEL_193;
                                  }

LABEL_191:
                                  if ((v554[23] & 0x80000000) == 0)
                                  {
                                    goto LABEL_5;
                                  }

                                  goto LABEL_194;
                                }

                                goto LABEL_173;
                              }

                              goto LABEL_116;
                            }

                            v59 = v481;
LABEL_116:
                            if ((v59 & 0x80000000) == 0)
                            {
                              if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
                              {
                                v72 = __s.__r_.__value_.__l.__size_;
                                if (__s.__r_.__value_.__l.__size_ != 2)
                                {
                                  *(a12 + 36) = v59;
LABEL_154:
                                  std::string::__init_copy_ctor_external(&v491, __s.__r_.__value_.__l.__data_, v72);
                                  if (v471 != &v491)
                                  {
LABEL_155:
                                    if (*(a12 + 63) < 0)
                                    {
                                      if ((v491.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v79 = &v491;
                                      }

                                      else
                                      {
                                        v79 = v491.__r_.__value_.__r.__words[0];
                                      }

                                      if ((v491.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v80 = HIBYTE(v491.__r_.__value_.__r.__words[2]);
                                      }

                                      else
                                      {
                                        v80 = v491.__r_.__value_.__l.__size_;
                                      }

                                      std::string::__assign_no_alias<false>(v471, v79, v80);
                                    }

                                    else
                                    {
                                      if ((*(&v491.__r_.__value_.__s + 23) & 0x80) == 0)
                                      {
                                        *v471 = v491;
                                        v29 = 2;
                                        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                        {
                                          goto LABEL_191;
                                        }

                                        goto LABEL_193;
                                      }

                                      std::string::__assign_no_alias<true>(v471, v491.__r_.__value_.__l.__data_, v491.__r_.__value_.__l.__size_);
                                    }
                                  }

LABEL_171:
                                  if (SHIBYTE(v491.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v491.__r_.__value_.__l.__data_);
                                  }

LABEL_173:
                                  v29 = 2;
                                  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_191;
                                  }

LABEL_193:
                                  operator delete(__s.__r_.__value_.__l.__data_);
                                  if ((v554[23] & 0x80000000) == 0)
                                  {
                                    goto LABEL_5;
                                  }

LABEL_194:
                                  v18 = *v554;
                                  goto LABEL_4;
                                }

                                v67 = __s.__r_.__value_.__r.__words[0];
                              }

                              else
                              {
                                if (HIBYTE(__s.__r_.__value_.__r.__words[2]) != 2)
                                {
                                  *(a12 + 36) = v59;
                                  goto LABEL_138;
                                }

                                v67 = &__s;
                              }

                              if (LOWORD(v67->__r_.__value_.__l.__data_) == *"AS")
                              {
                                if (v59 >= 0x20C49B)
                                {
                                  v59 = 2147483;
                                }

                                v59 *= 1000;
                                LODWORD(v481) = v59;
                              }

                              *(a12 + 36) = v59;
                              if (v56 < 0)
                              {
                                v72 = __s.__r_.__value_.__l.__size_;
                                goto LABEL_154;
                              }

LABEL_138:
                              v491 = __s;
                              if (v471 != &v491)
                              {
                                goto LABEL_155;
                              }

                              goto LABEL_171;
                            }

                            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                            {
                              goto LABEL_1171;
                            }

                            v68 = *&__s1.__r_.__value_.__l.__data_;
                            std::operator+<char>();
                            v69 = v492.__r_.__value_.__r.__words[2];
                            if ((v492.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v70 = 22;
                            }

                            else
                            {
                              v70 = (v492.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                            }

                            if ((v492.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v71 = HIBYTE(v492.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v71 = v492.__r_.__value_.__l.__size_;
                            }

                            if (v70 - v71 >= 0x19)
                            {
                              v73 = &v492;
                              if ((v492.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v73 = v492.__r_.__value_.__r.__words[0];
                              }

                              v74 = v73 + v71;
                              if (v73 + v71 <= " value can't be negative." && v74 + 25 > " value can't be negative.")
                              {
                                goto LABEL_1171;
                              }

                              qmemcpy(v74, " value can't be negative.", 25);
                              v75 = v71 + 25;
                              if ((v69 & 0x8000000000000000) != 0)
                              {
                                v492.__r_.__value_.__l.__size_ = v71 + 25;
                              }

                              else
                              {
                                *(&v492.__r_.__value_.__s + 23) = v75 & 0x7F;
                              }

                              v73->__r_.__value_.__s.__data_[v75] = 0;
                            }

                            else
                            {
                              std::string::__grow_by_and_replace(&v492, v70, v71 - v70 + 25, v71, v71, 0, 0x19uLL, " value can't be negative.");
                            }

                            v86 = v492.__r_.__value_.__r.__words[0];
                            *(v553 + 7) = *(&v492.__r_.__value_.__r.__words[1] + 7);
                            v553[0] = v492.__r_.__value_.__l.__size_;
                            v87 = HIBYTE(v492.__r_.__value_.__r.__words[2]);
                            memset(&v492, 0, sizeof(v492));
                            *__p = v86;
                            *&__p[8] = v553[0];
                            *&__p[15] = *(v553 + 7);
                            __p[23] = v87;
                            *(v553 + 7) = 0;
                            v553[0] = 0;
                            webrtc::ParseFailed(v68, *(&v68 + 1), 0, __p, a15);
                            if ((__p[23] & 0x80000000) != 0)
                            {
                              operator delete(*__p);
                            }

                            if (SHIBYTE(v492.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v492.__r_.__value_.__l.__data_);
                            }

LABEL_190:
                            v29 = 1;
                            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_193;
                            }

                            goto LABEL_191;
                          }

                          if (v27 != 99)
                          {
                            break;
                          }

                          if (v20[1] == 61)
                          {
                            memset(__p, 0, 24);
                            *&__p[24] = &unk_28828CE50;
                            LOBYTE(v525[0]) = 0;
                            memset(&v554[8], 0, 20);
                            *&__p[32] = 0;
                            *&__p[36] = *&v554[12];
                            *&__p[56] = 0;
                            *&__p[60] = 0;
                            if (webrtc::ParseConnectionData(v20, v25, __p, a15))
                            {
                              if (v475 != __p)
                              {
                                if (*(a12 + 151) < 0)
                                {
                                  if (__p[23] >= 0)
                                  {
                                    v30 = __p;
                                  }

                                  else
                                  {
                                    v30 = *__p;
                                  }

                                  if (__p[23] >= 0)
                                  {
                                    v31 = __p[23];
                                  }

                                  else
                                  {
                                    v31 = *&__p[8];
                                  }

                                  std::string::__assign_no_alias<false>(v475, v30, v31);
                                }

                                else if ((__p[23] & 0x80) != 0)
                                {
                                  std::string::__assign_no_alias<true>(v475, *__p, *&__p[8]);
                                }

                                else
                                {
                                  *&v475->__r_.__value_.__l.__data_ = *__p;
                                  v475->__r_.__value_.__r.__words[2] = *&__p[16];
                                }
                              }

                              *(a12 + 160) = *&__p[32];
                              *(a12 + 164) = *&__p[36];
                              *(a12 + 184) = *&__p[56];
                              *(a12 + 192) = v525[0];
                              *(a12 + 188) = *&__p[60];
                              v29 = 2;
                              if ((__p[23] & 0x80000000) == 0)
                              {
                                goto LABEL_5;
                              }
                            }

                            else
                            {
                              v29 = 1;
                              if ((__p[23] & 0x80000000) == 0)
                              {
                                goto LABEL_5;
                              }
                            }

                            v18 = *__p;
LABEL_4:
                            operator delete(v18);
LABEL_5:
                            if (v29 != 2)
                            {
                              goto LABEL_1077;
                            }
                          }

                          else
                          {
LABEL_93:
                            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
                            {
                              if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                              {
                                goto LABEL_1171;
                              }

                              v468 = v468 & 0xFFFFFFFF00000000 | 0x5FC0;
                              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                            }
                          }
                        }

                        if (v27 != 97 || v20[1] != 61)
                        {
                          goto LABEL_93;
                        }

                        v32 = v25 - 2;
                        v33 = v25 - 2 >= 3 ? 3 : v25 - 2;
                        v34 = memcmp(v20 + 2, "mid", v33);
                        if (v32 < 3 || v34 != 0)
                        {
                          break;
                        }

                        if (v25 != 5)
                        {
                          v76 = v20[5];
                          if (v76 != 58 && v76 != 32)
                          {
                            break;
                          }
                        }

                        memset(__p, 0, 24);
                        if (!webrtc::tokenize_first(v20, v25, 58, __p, &v517))
                        {
                          goto LABEL_213;
                        }

                        v77 = __p[23];
                        if ((__p[23] & 0x8000000000000000) != 0)
                        {
                          v77 = *&__p[8];
                          if (*&__p[8] < 3uLL)
                          {
                            goto LABEL_213;
                          }

                          v78 = *__p;
                        }

                        else
                        {
                          if (__p[23] < 3u)
                          {
                            goto LABEL_213;
                          }

                          v78 = __p;
                        }

                        v93 = &v78[v77];
                        v94 = *(v93 - 3);
                        v95 = *(v93 - 1);
                        if (v94 != 26989 || v95 != 100)
                        {
LABEL_213:
                          webrtc::ParseFailedGetValue(v20, v25, "mid", 3uLL, a15);
                          v97 = 0;
                          if ((__p[23] & 0x80) == 0)
                          {
                            goto LABEL_215;
                          }

LABEL_214:
                          operator delete(*__p);
                          goto LABEL_215;
                        }

                        v97 = 1;
                        if ((__p[23] & 0x80) != 0)
                        {
                          goto LABEL_214;
                        }

LABEL_215:
                        if (!v97)
                        {
                          goto LABEL_1077;
                        }

                        v98 = HIBYTE(v518);
                        v99 = &v517;
                        if (v518 < 0)
                        {
                          v98 = *(&v517 + 1);
                          v99 = v517;
                        }

                        v100 = v98;
                        for (i = v99; v100; --v100)
                        {
                          v102 = *i;
                          if (v102 > 0x2E || ((1 << v102) & 0x6CFA00000000) == 0)
                          {
                            v104 = v102 - 94 >= 0x21 && v102 - 48 >= 0xA;
                            if (v104 && v102 - 65 >= 0x1A)
                            {
                              operator new();
                            }
                          }

                          ++i;
                        }

                        if (&v517 != a9)
                        {
                          if (*(a9 + 23) < 0)
                          {
                            std::string::__assign_no_alias<false>(a9, v99, v98);
                          }

                          else if (SHIBYTE(v518) < 0)
                          {
                            std::string::__assign_no_alias<true>(a9, v517, *(&v517 + 1));
                          }

                          else
                          {
                            *a9 = v517;
                            *(a9 + 16) = v518;
                          }
                        }
                      }

                      v36 = v32 >= 0xB ? 11 : v25 - 2;
                      v466 = v36;
                      v37 = memcmp(v20 + 2, "bundle-only", v36);
                      if (v32 < 0xB || v37 != 0)
                      {
                        break;
                      }

                      if (v25 != 13)
                      {
                        v81 = v20[13];
                        if (v81 != 58 && v81 != 32)
                        {
                          break;
                        }
                      }

                      *a10 = 1;
                    }

                    v39 = v32 >= 9 ? 9 : v25 - 2;
                    __n = v39;
                    v40 = memcmp(v20 + 2, "candidate", v39);
                    if (v32 < 9)
                    {
                      break;
                    }

                    if (v40)
                    {
                      break;
                    }

                    if (v25 != 11)
                    {
                      v41 = v20[11];
                      if (v41 != 58 && v41 != 32)
                      {
                        break;
                      }
                    }

                    memset(__p, 0, 24);
                    {
LABEL_1152:
                      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v42, v43, v44, v45, v460);
                      goto LABEL_1153;
                    }

                    *&__p[24] = 1;
                    memset(&__p[32], 0, 32);
                    memset(v525, 0, sizeof(v525));
                    *&v526 = 0;
                    *(&v526 + 1) = &unk_28828CE50;
                    v528 = 0;
                    memset(v527, 0, 20);
                    LOWORD(v527[3]) = 0;
                    HIDWORD(v527[3]) = 0;
                    v529 = 0;
                    v530 = 0u;
                    v531 = 0u;
                    v532 = 0u;
                    LODWORD(v533) = 0;
                    v534 = 0u;
                    v535 = 0u;
                    v536 = 0;
                    v537 = 0u;
                    v538 = 0u;
                    v539 = 0u;
                    v540 = &unk_28828CE50;
                    v545 = 0;
                    memset(&v554[8], 0, 20);
                    v541 = 0;
                    v542 = *&v554[12];
                    v543 = 0;
                    v544 = 0;
                    v551 = 0;
                    v552 = 0;
                    v550 = 0;
                    v546 = 0u;
                    v547 = 0u;
                    v548 = 0u;
                    v549 = 0;
                    if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                    {
                      goto LABEL_1171;
                    }

                    if (!webrtc::ParseCandidate(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, __p, a15, 0))
                    {
                      webrtc::Candidate::~Candidate(__p);
                      goto LABEL_1077;
                    }

                    if (SBYTE7(v531) < 0)
                    {
                      *(&v530 + 1) = 0;
                      v46 = v530;
                    }

                    else
                    {
                      BYTE7(v531) = 0;
                      v46 = &v530;
                    }

                    *v46 = 0;
                    if (SHIBYTE(v532) < 0)
                    {
                      *&v532 = 0;
                      v108 = *(&v531 + 1);
                    }

                    else
                    {
                      HIBYTE(v532) = 0;
                      v108 = &v531 + 8;
                    }

                    *v108 = 0;
                    if (v520 >= v521)
                    {
                      std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(&v519);
                    }

                    if (!v520)
                    {
                      goto LABEL_1171;
                    }

                    v520 = webrtc::Candidate::Candidate(v520, __p) + 18;
                    webrtc::Candidate::~Candidate(__p);
                  }

                  v82 = memcmp(v20 + 2, "ice-ufrag", __n);
                  if (v32 < 9)
                  {
                    break;
                  }

                  if (v82)
                  {
                    break;
                  }

                  if (v25 != 11)
                  {
                    v83 = v20[11];
                    if (v83 != 58 && v83 != 32)
                    {
                      break;
                    }
                  }

                  memset(__p, 0, 24);
                  if (!webrtc::tokenize_first(v20, v25, 58, __p, a13 + 24))
                  {
                    goto LABEL_272;
                  }

                  v84 = __p[23];
                  if ((__p[23] & 0x8000000000000000) != 0)
                  {
                    v84 = *&__p[8];
                    if (*&__p[8] < 9uLL)
                    {
                      goto LABEL_272;
                    }

                    v85 = *__p;
                  }

                  else
                  {
                    if (__p[23] < 9u)
                    {
                      goto LABEL_272;
                    }

                    v85 = __p;
                  }

                  v110 = &v85[v84];
                  v111 = *(v110 - 9);
                  v112 = *(v110 - 1);
                  if (v111 == 0x617266752D656369 && v112 == 103)
                  {
                    v114 = 1;
                    if ((__p[23] & 0x80) == 0)
                    {
                      goto LABEL_274;
                    }

LABEL_273:
                    operator delete(*__p);
                    goto LABEL_274;
                  }

LABEL_272:
                  webrtc::ParseFailedGetValue(v20, v25, "ice-ufrag", 9uLL, a15);
                  v114 = 0;
                  if ((__p[23] & 0x80) != 0)
                  {
                    goto LABEL_273;
                  }

LABEL_274:
                  if ((v114 & 1) == 0)
                  {
                    goto LABEL_1077;
                  }
                }

                v88 = v32 >= 7 ? 7 : v25 - 2;
                v89 = memcmp(v20 + 2, "ice-pwd", v88);
                if (v32 < 7)
                {
                  break;
                }

                if (v89)
                {
                  break;
                }

                if (v25 != 9)
                {
                  v90 = v20[9];
                  if (v90 != 58 && v90 != 32)
                  {
                    break;
                  }
                }

                memset(__p, 0, 24);
                if (!webrtc::tokenize_first(v20, v25, 58, __p, a13 + 48))
                {
                  goto LABEL_287;
                }

                v91 = __p[23];
                if ((__p[23] & 0x8000000000000000) != 0)
                {
                  v91 = *&__p[8];
                  if (*&__p[8] < 7uLL)
                  {
                    goto LABEL_287;
                  }

                  v92 = *__p;
                }

                else
                {
                  if (__p[23] < 7u)
                  {
                    goto LABEL_287;
                  }

                  v92 = __p;
                }

                v116 = &v92[v91];
                v117 = *(v116 - 7);
                v118 = *(v116 - 1);
                if (v117 == 761619305 && v118 == 1685549101)
                {
                  v120 = 1;
                  if ((__p[23] & 0x80) == 0)
                  {
                    goto LABEL_289;
                  }

LABEL_288:
                  operator delete(*__p);
                  goto LABEL_289;
                }

LABEL_287:
                webrtc::ParseFailedGetValue(v20, v25, "ice-pwd", 7uLL, a15);
                v120 = 0;
                if ((__p[23] & 0x80) != 0)
                {
                  goto LABEL_288;
                }

LABEL_289:
                if ((v120 & 1) == 0)
                {
                  goto LABEL_1077;
                }
              }

              v106 = memcmp(v20 + 2, "ice-options", v466);
              if (v32 < 0xB)
              {
                break;
              }

              if (v106)
              {
                break;
              }

              if (v25 != 13)
              {
                v107 = v20[13];
                if (v107 != 58 && v107 != 32)
                {
                  break;
                }
              }

              if ((webrtc::ParseIceOptions(v20, v25, a13, a15) & 1) == 0)
              {
                goto LABEL_1077;
              }
            }

            if (!webrtc::HasAttribute(v20, v25, "fmtp", 4uLL))
            {
              break;
            }

            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            if ((webrtc::ParseFmtpAttributes(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, a3, a12, a15) & 1) == 0)
            {
              goto LABEL_1077;
            }
          }

          if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
          {
            goto LABEL_1171;
          }

          if (!webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "fingerprint", 0xBuLL))
          {
            break;
          }

          *__p = 0;
          if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
          {
            goto LABEL_1171;
          }

          webrtc::ParseFingerprintAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
          if (!v109)
          {
            std::unique_ptr<webrtc::SSLFingerprint>::~unique_ptr[abi:sn200100](__p);
            goto LABEL_1077;
          }

          std::unique_ptr<webrtc::SSLFingerprint>::operator=[abi:sn200100]((a13 + 80), __p);
          std::unique_ptr<webrtc::SSLFingerprint>::~unique_ptr[abi:sn200100](__p);
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (!webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "setup", 5uLL))
        {
          break;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        webrtc::ParseDtlsSetup(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
        if ((v115 & 1) == 0)
        {
          goto LABEL_1077;
        }
      }

      IsDtlsSctp = webrtc::IsDtlsSctp(a5, a6);
      if (a3 == 2 && IsDtlsSctp)
      {
        break;
      }

      if (!webrtc::IsRtpProtocol(a5, a6))
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
        {
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        v464 = v464 & 0xFFFFFFFF00000000 | 0x6620;
        goto LABEL_310;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rtcp-mux", 8uLL))
      {
        *(a12 + 32) = 1;
        goto LABEL_324;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rtcp-rsize", 0xAuLL))
      {
        *(a12 + 33) = 1;
        goto LABEL_324;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "remote-net-estimate", 0x13uLL))
      {
        *(a12 + 34) = 1;
        goto LABEL_324;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "ssrc-group", 0xAuLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        webrtc::ParseSsrcGroupAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
        goto LABEL_350;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "ssrc", 4uLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        Value = webrtc::ParseSsrcAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, &v511, a11, a15);
        goto LABEL_350;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rtpmap", 6uLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        webrtc::ParseRtpmapAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
        goto LABEL_350;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "maxptime", 8uLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        v135 = __s1.__r_.__value_.__l.__size_;
        v134 = __s1.__r_.__value_.__r.__words[0];
        v136 = &v505;
        v137 = "maxptime";
        v138 = 8;
        goto LABEL_341;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "packetization", 0xDuLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        Value = webrtc::ParsePacketizationAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, a3);
        goto LABEL_350;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rtcp-fb", 7uLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        Value = webrtc::ParseRtcpFbAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, a3);
        goto LABEL_350;
      }

      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "ptime", 5uLL))
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        v135 = __s1.__r_.__value_.__l.__size_;
        v134 = __s1.__r_.__value_.__r.__words[0];
        v136 = &v502;
        v137 = "ptime";
        v138 = 5;
LABEL_341:
        Value = webrtc::GetValue(v134, v135, v137, v138, v136, a15);
LABEL_350:
        v17 = a2;
        v15 = a1;
        if ((Value & 1) == 0)
        {
          goto LABEL_1077;
        }
      }

      else
      {
        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "sendonly", 8uLL))
        {
          *(a12 + 124) = 1;
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "recvonly", 8uLL))
        {
          *(a12 + 124) = 2;
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "inactive", 8uLL))
        {
          *(a12 + 124) = 3;
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "sendrecv", 8uLL))
        {
          *(a12 + 124) = 0;
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "extmap-allow-mixed", 0x12uLL))
        {
          if (*(a12 + 200) != 1)
          {
            *(a12 + 200) = 2;
          }

          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "extmap", 6uLL))
        {
          *&__p[8] = 0;
          *__p = 0;
          *&__p[21] = 0;
          *&__p[16] = 0;
          if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
          {
            goto LABEL_1171;
          }

          webrtc::ParseExtmap(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
          if (!v139)
          {
LABEL_1144:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            goto LABEL_1077;
          }

          std::vector<webrtc::RtpExtension>::emplace_back<webrtc::RtpExtension const&>((a12 + 64), __p);
          *(a12 + 88) = 1;
          goto LABEL_383;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "x-google-flag", 0xDuLL))
        {
          memset(__p, 0, 24);
          if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
          {
            goto LABEL_1171;
          }

          if (!webrtc::GetValue(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "x-google-flag", 0xDuLL, __p, a15))
          {
            goto LABEL_1144;
          }

          if (!std::string::compare(__p, "conference"))
          {
            *(a12 + 120) = 1;
          }

LABEL_383:
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        if (!webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "msid", 4uLL))
        {
          if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
          {
            goto LABEL_1171;
          }

          if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rid", 3uLL))
          {
            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            if (__s1.__r_.__value_.__l.__size_ > 6)
            {
              webrtc::SimulcastSdpSerializer::DeserializeRidDescription((__s1.__r_.__value_.__r.__words[0] + 6), __s1.__r_.__value_.__l.__size_ - 6, __p);
              if (*__p)
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                {
                  if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                  {
                    goto LABEL_1171;
                  }

                  v462 = v462 & 0xFFFFFFFF00000000 | 0x64D9;
                  webrtc::webrtc_logging_impl::Log("\r\t\v\t\t", v141, v142, v143, v144, v145, v146, v147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
                }
              }

              else
              {
                if ((v527[1] & 1) == 0)
                {
                  goto LABEL_1171;
                }

                webrtc::RidDescription::RidDescription(v554, &__p[40]);
                std::vector<webrtc::RidDescription>::emplace_back<webrtc::RidDescription>(&v495, v554);
                webrtc::RidDescription::~RidDescription(v554);
              }

              webrtc::RTCErrorOr<webrtc::RidDescription>::~RTCErrorOr(__p);
              goto LABEL_324;
            }

            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
            {
              goto LABEL_324;
            }

            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            v463 = v463 & 0xFFFFFFFF00000000 | 0x6491;
          }

          else
          {
            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "simulcast", 9uLL))
            {
              if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
              {
                goto LABEL_1171;
              }

              v140 = __s1.__r_.__value_.__l.__size_;
              if (__s1.__r_.__value_.__l.__size_ <= 0xC)
              {
                v455 = __s1.__r_.__value_.__r.__words[0];
                std::string::basic_string[abi:sn200100]<0>(v487, "Simulcast attribute is empty.");
                webrtc::ParseFailed(v455, v140, v487, a15);
                if (v488 < 0)
                {
                  operator delete(v487[0]);
                }

                goto LABEL_1077;
              }

              if (v494[0].__r_.__value_.__r.__words[0] != v494[0].__r_.__value_.__l.__size_ || v494[1].__r_.__value_.__r.__words[0] != v494[1].__r_.__value_.__l.__size_)
              {
                v456 = __s1.__r_.__value_.__r.__words[0];
                std::string::basic_string[abi:sn200100]<0>(v485, "Multiple Simulcast attributes specified.");
                webrtc::ParseFailed(v456, v140, v485, a15);
                if (v486 < 0)
                {
                  operator delete(v485[0]);
                }

                goto LABEL_1077;
              }

              webrtc::SimulcastSdpSerializer::DeserializeSimulcastDescription((__s1.__r_.__value_.__r.__words[0] + 12), __s1.__r_.__value_.__l.__size_ - 12, __p);
              if (*__p)
              {
                if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
                {
                  goto LABEL_1171;
                }

                v457 = *&__s1.__r_.__value_.__l.__data_;
                std::string::basic_string[abi:sn200100]<0>(v554, "Malformed simulcast line: ");
                if (__p[31] >= 0)
                {
                  v458 = &__p[8];
                }

                else
                {
                  v458 = *&__p[8];
                }

                v459 = std::string::append(v554, v458);
                v484 = *v459;
                v459->__r_.__value_.__r.__words[0] = 0;
                v459->__r_.__value_.__l.__size_ = 0;
                v459->__r_.__value_.__r.__words[2] = 0;
                webrtc::ParseFailed(v457, *(&v457 + 1), &v484, a15);
                if (SHIBYTE(v484.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v484.__r_.__value_.__l.__data_);
                }

                if ((v554[23] & 0x80000000) != 0)
                {
                  operator delete(*v554);
                }

                webrtc::RTCErrorOr<webrtc::SimulcastDescription>::~RTCErrorOr(__p);
                goto LABEL_1077;
              }

              if ((v525[3] & 1) == 0)
              {
                goto LABEL_1171;
              }

              webrtc::SimulcastDescription::operator=(v494, &__p[40]);
              webrtc::RTCErrorOr<webrtc::SimulcastDescription>::~RTCErrorOr(__p);
              goto LABEL_324;
            }

            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "rtcp", 4uLL) || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) != 0)
            {
              goto LABEL_324;
            }

            if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_1171;
            }

            v461 = v461 & 0xFFFFFFFF00000000 | 0x65F8;
          }

LABEL_310:
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v124, v125, v126, v127, v128, v129, v130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
          goto LABEL_324;
        }

        if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_1171;
        }

        v17 = a2;
        v15 = a1;
        if (!webrtc::ParseMsidAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, &v499, &v498, a15))
        {
          goto LABEL_1077;
        }

        *a11 |= 1u;
      }
    }

    if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      goto LABEL_1171;
    }

    if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "sctp-port", 9uLL))
    {
      break;
    }

    if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      goto LABEL_1171;
    }

    if (webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "max-message-size", 0x10uLL))
    {
      *__p = 0;
      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      webrtc::ParseSctpMaxMessageSize(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
      if (!v131)
      {
        goto LABEL_1077;
      }

      v132 = (*(*a12 + 56))(a12);
      *(v132 + 312) = *__p;
    }

    else
    {
      if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_1171;
      }

      webrtc::HasAttribute(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_, "sctpmap", 7uLL);
    }

LABEL_324:
    v17 = a2;
    v15 = a1;
  }

  if (*((*(*a12 + 56))(a12) + 304) == 1)
  {
    if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      goto LABEL_1171;
    }

    v454 = *&__s1.__r_.__value_.__l.__data_;
    std::string::basic_string[abi:sn200100]<0>(v489, "sctp-port attribute can't be used with sctpmap.");
    webrtc::ParseFailed(v454, *(&v454 + 1), v489, a15);
    if (v490 < 0)
    {
      operator delete(v489[0]);
    }

    goto LABEL_1077;
  }

  *__p = 0;
  if ((__s1.__r_.__value_.__s.__data_[16] & 1) == 0)
  {
    goto LABEL_1171;
  }

  webrtc::ParseSctpPort(__s1.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_);
  if (v122)
  {
    v123 = (*(*a12 + 56))(a12);
    *(v123 + 308) = *__p;
    goto LABEL_324;
  }

LABEL_1077:
  webrtc::SimulcastDescription::~SimulcastDescription(v494);
  v421 = v495;
  if (v495)
  {
    v422 = v496;
    if (v496 != v495)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v422 - 3), *(v422 - 2));
        v423 = *(v422 - 6);
        if (v423)
        {
          v424 = *(v422 - 5);
          v425 = *(v422 - 6);
          if (v424 != v423)
          {
            v426 = v424 - 27;
            v427 = v424 - 27;
            v428 = v424 - 27;
            do
            {
              v429 = *v428;
              v428 -= 27;
              (*v429)(v427);
              v426 -= 27;
              v23 = v427 == v423;
              v427 = v428;
            }

            while (!v23);
            v425 = *(v422 - 6);
          }

          *(v422 - 5) = v423;
          operator delete(v425);
        }

        v430 = (v422 - 10);
        if (*(v422 - 57) < 0)
        {
          operator delete(*v430);
        }

        v422 -= 10;
      }

      while (v430 != v421);
      v421 = v495;
    }

    operator delete(v421);
  }

  if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v498.__r_.__value_.__l.__data_);
  }

  v431 = v499;
  if (v499)
  {
    v432 = v500;
    v433 = v499;
    if (v500 != v499)
    {
      do
      {
        v434 = SHIBYTE(v432[-1].__r_.__value_.__r.__words[2]);
        --v432;
        if (v434 < 0)
        {
          operator delete(v432->__r_.__value_.__l.__data_);
        }
      }

      while (v432 != v431);
      v433 = v499;
    }

    v500 = v431;
    operator delete(v433);
  }

  if (SHIBYTE(v504) < 0)
  {
    operator delete(v502);
    if (SHIBYTE(v507) < 0)
    {
      goto LABEL_1122;
    }

LABEL_1104:
    v435 = v508;
    if (v508)
    {
      goto LABEL_1105;
    }

LABEL_1123:
    v437 = v511;
    if (v511)
    {
      goto LABEL_1124;
    }

LABEL_1107:
    v438 = v514;
    if (!v514)
    {
      goto LABEL_1135;
    }

LABEL_1108:
    v439 = v515;
    v440 = v438;
    if (v515 != v438)
    {
      do
      {
        webrtc::StreamParams::~StreamParams(&v439[-6]);
      }

      while (v439 != v438);
      v440 = v514;
    }

    v515 = v438;
    operator delete(v440);
    if (SHIBYTE(v518) < 0)
    {
      goto LABEL_1112;
    }

LABEL_1136:
    v441 = v519;
    if (!v519)
    {
      return;
    }

LABEL_1137:
    v445 = v520;
    v446 = v441;
    if (v520 != v441)
    {
      do
      {
        webrtc::Candidate::~Candidate(&v445[-18].__r_.__value_.__l.__data_);
      }

      while (v445 != v441);
      v446 = v519;
    }

    v520 = v441;
    operator delete(v446);
    return;
  }

  if ((SHIBYTE(v507) & 0x80000000) == 0)
  {
    goto LABEL_1104;
  }

LABEL_1122:
  operator delete(v505);
  v435 = v508;
  if (!v508)
  {
    goto LABEL_1123;
  }

LABEL_1105:
  v436 = v509;
  if (v509 == v435)
  {
    v509 = v435;
    operator delete(v435);
    v437 = v511;
    if (!v511)
    {
      goto LABEL_1107;
    }
  }

  else
  {
    do
    {
      v442 = *(v436 - 3);
      if (v442)
      {
        *(v436 - 2) = v442;
        operator delete(v442);
      }

      v443 = v436 - 6;
      if (*(v436 - 25) < 0)
      {
        operator delete(*v443);
      }

      v436 -= 6;
    }

    while (v443 != v435);
    v509 = v435;
    operator delete(v508);
    v437 = v511;
    if (!v511)
    {
      goto LABEL_1107;
    }
  }

LABEL_1124:
  v444 = v512;
  while (2)
  {
    if (v444 != v437)
    {
      if (*(v444 - 1) < 0)
      {
        operator delete(*(v444 - 3));
        if (*(v444 - 25) < 0)
        {
          goto LABEL_1125;
        }
      }

      else if (*(v444 - 25) < 0)
      {
LABEL_1125:
        operator delete(*(v444 - 6));
        if ((*(v444 - 49) & 0x80000000) == 0)
        {
LABEL_1126:
          v444 -= 10;
          continue;
        }

LABEL_1133:
        operator delete(*(v444 - 9));
        goto LABEL_1126;
      }

      if ((*(v444 - 49) & 0x80000000) == 0)
      {
        goto LABEL_1126;
      }

      goto LABEL_1133;
    }

    break;
  }

  operator delete(v437);
  v438 = v514;
  if (v514)
  {
    goto LABEL_1108;
  }

LABEL_1135:
  if ((SHIBYTE(v518) & 0x80000000) == 0)
  {
    goto LABEL_1136;
  }

LABEL_1112:
  operator delete(v517);
  v441 = v519;
  if (v519)
  {
    goto LABEL_1137;
  }
}

uint64_t webrtc::ParseFmtpAttributes(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 <= 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    __p = 0;
    v24 = 0;
    v25 = 0;
    if (a2 <= 1)
    {
      abort();
    }

    if ((webrtc::tokenize_first((a1 + 2), a2 - 2, 32, &v26, &__p) & 1) == 0)
    {
      webrtc::ParseFailedExpectMinFieldNum(a1, a2, 2, a5);
      v5 = 0;
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_17;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (v28 >= 0)
    {
      v9 = &v26;
    }

    else
    {
      v9 = v26;
    }

    if (v28 >= 0)
    {
      v10 = HIBYTE(v28);
    }

    else
    {
      v10 = v27;
    }

    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    if (webrtc::tokenize_first(v9, v10, 58, v29, &v20))
    {
      if ((SHIBYTE(v30) & 0x8000000000000000) != 0)
      {
        if (v29[1] >= 4 && *(v29[1] + v29[0] - 4) == 1886678374)
        {
LABEL_24:
          v5 = 1;
          if (v30 < 0)
          {
LABEL_25:
            operator delete(v29[0]);
            if (!v5)
            {
              goto LABEL_53;
            }

            goto LABEL_26;
          }

LABEL_22:
          if (!v5)
          {
            goto LABEL_53;
          }

LABEL_26:
          v19 = 0;
          if (v28 >= 0)
          {
            v11 = &v26;
          }

          else
          {
            v11 = v26;
          }

          if (v28 >= 0)
          {
            v12 = HIBYTE(v28);
          }

          else
          {
            v12 = v27;
          }

          if (v22 >= 0)
          {
            v13 = &v20;
          }

          else
          {
            v13 = v20;
          }

          if (v22 >= 0)
          {
            v14 = HIBYTE(v22);
          }

          else
          {
            v14 = v21;
          }

          if (webrtc::GetValueFromString<int>(v11, v12, v13, v14, &v19, a5) && v19 <= 0x7F)
          {
            if (v25 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v25 >= 0)
            {
              v16 = HIBYTE(v25);
            }

            else
            {
              v16 = v24;
            }

            if (v16)
            {
              for (i = 0; i != v16; ++i)
              {
                if (p_p[i] == 59)
                {
                  operator new();
                }
              }
            }

            operator new();
          }

          v5 = 0;
LABEL_53:
          if (SHIBYTE(v22) < 0)
          {
            operator delete(v20);
            if ((SHIBYTE(v25) & 0x80000000) == 0)
            {
LABEL_55:
              if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                return v5;
              }

              goto LABEL_18;
            }
          }

          else if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_17:
          operator delete(__p);
          if ((SHIBYTE(v28) & 0x80000000) == 0)
          {
            return v5;
          }

LABEL_18:
          operator delete(v26);
          return v5;
        }
      }

      else if (HIBYTE(v30) >= 4u && *(v29 + SHIBYTE(v30) - 4) == 1886678374)
      {
        goto LABEL_24;
      }
    }

    webrtc::ParseFailedGetValue(v9, v10, "fmtp", 4uLL, a5);
    v5 = 0;
    if (v30 < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  return 1;
}

void webrtc::ParseSsrcGroupAttribute(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 32)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

uint64_t webrtc::ParseSsrcAttribute(uint64_t a1, unint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  v59 = a1;
  v60 = a2;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  __p = 0;
  v54 = 0;
  v55 = 0;
  if (a2 <= 1)
  {
    goto LABEL_122;
  }

  v10 = &v56;
  if ((webrtc::tokenize_first((a1 + 2), a2 - 2, 32, &v56, &__p) & 1) == 0)
  {
    webrtc::ParseFailedExpectFieldNum(a1, a2, 2, a5);
    v12 = 0;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_12;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (v58 >= 0)
  {
    v11 = HIBYTE(v58);
  }

  else
  {
    v10 = v56;
    v11 = v57;
  }

  v61 = 0uLL;
  v62 = 0;
  if (!webrtc::tokenize_first(v10, v11, 58, &v61, &v50))
  {
    goto LABEL_16;
  }

  if ((SHIBYTE(v62) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v62) >= 4u && *(&v61 + SHIBYTE(v62) - 4) == 1668445043)
    {
      goto LABEL_19;
    }

LABEL_16:
    webrtc::ParseFailedGetValue(v10, v11, "ssrc", 4uLL, a5);
    v12 = 0;
    if (v62 < 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (!v12)
    {
      goto LABEL_78;
    }

    goto LABEL_21;
  }

  if (*(&v61 + 1) < 4uLL || *(*(&v61 + 1) + v61 - 4) != 1668445043)
  {
    goto LABEL_16;
  }

LABEL_19:
  v12 = 1;
  if ((v62 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  operator delete(v61);
  if (!v12)
  {
    goto LABEL_78;
  }

LABEL_21:
  v49 = 0;
  if (v52 >= 0)
  {
    v13 = &v50;
  }

  else
  {
    v13 = v50;
  }

  if (v52 >= 0)
  {
    v14 = HIBYTE(v52);
  }

  else
  {
    v14 = v51;
  }

  v12 = 0;
  if (webrtc::GetValueFromString<unsigned int>(a1, a2, v13, v14, &v49, a5))
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v44[0] = 0;
    v44[1] = 0;
    v45 = 0;
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v55 >= 0)
    {
      v16 = HIBYTE(v55);
    }

    else
    {
      v16 = v54;
    }

    if ((webrtc::tokenize_first(p_p, v16, 58, &v46, v44) & 1) == 0)
    {
      memset(&v43, 0, sizeof(v43));
      operator new();
    }

    v18 = *a3;
    v17 = a3[1];
    v19 = *a3;
    if (*a3 != v17)
    {
      while (*v19 != v49)
      {
        v19 += 80;
        if (v19 == v17)
        {
          goto LABEL_41;
        }
      }
    }

    if (v19 != v17)
    {
LABEL_52:
      if (SHIBYTE(v48) < 0)
      {
        if (v47 != 4)
        {
          if (v47 != 5 || (*v46 == 1835101795 ? (v24 = *(v46 + 4) == 101) : (v24 = 0), !v24))
          {
LABEL_86:
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
            }

            goto LABEL_88;
          }

LABEL_68:
          v25 = (v19 + 8);
          if ((v19 + 8) != v44)
          {
            if (*(v19 + 31) < 0)
            {
              if (v45 >= 0)
              {
                v39 = v44;
              }

              else
              {
                v39 = v44[0];
              }

              if (v45 >= 0)
              {
                v40 = HIBYTE(v45);
              }

              else
              {
                v40 = v44[1];
              }

              std::string::__assign_no_alias<false>(v25, v39, v40);
              v12 = 1;
              if ((SHIBYTE(v45) & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

              goto LABEL_75;
            }

            if ((v45 & 0x8000000000000000) == 0)
            {
              v26 = *v44;
              *(v19 + 24) = v45;
              *&v25->__r_.__value_.__l.__data_ = v26;
              v12 = 1;
              if ((SHIBYTE(v45) & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

              goto LABEL_75;
            }

            std::string::__assign_no_alias<true>(v25, v44[0], v44[1]);
            v12 = 1;
            if (SHIBYTE(v45) < 0)
            {
LABEL_75:
              operator delete(v44[0]);
            }

LABEL_76:
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v46);
            }

            goto LABEL_78;
          }

LABEL_88:
          v12 = 1;
          if (SHIBYTE(v45) < 0)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        }

        v27 = v46;
      }

      else
      {
        if (HIBYTE(v48) != 4)
        {
          if (HIBYTE(v48) != 5)
          {
            goto LABEL_86;
          }

          if (v46 != 1835101795 || BYTE4(v46) != 101)
          {
            goto LABEL_86;
          }

          goto LABEL_68;
        }

        v27 = &v46;
      }

      if (*v27 == 1684632429)
      {
        if (v45 >= 0)
        {
          v36 = v44;
        }

        else
        {
          v36 = v44[0];
        }

        if (v45 >= 0)
        {
          v37 = HIBYTE(v45);
        }

        else
        {
          v37 = v44[1];
        }

        webrtc::split(v36, v37, 0x20u, &v61);
        if (*(&v61 + 1) == v61 || *(&v61 + 1) - v61 >= 0x21uLL)
        {
          std::string::basic_string[abi:sn200100]<0>(v41, "Expected format msid:<identifier>[ <appdata>].");
          webrtc::ParseFailed(a1, a2, v41, a5);
          if (v42 < 0)
          {
            operator delete(v41[0]);
          }

          if (v61)
          {
            *(&v61 + 1) = v61;
            operator delete(v61);
          }

          v12 = 0;
          if ((SHIBYTE(v45) & 0x80000000) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        std::string::basic_string<std::string_view,0>(&v43, *v61, *(v61 + 8));
        if (*(v19 + 55) < 0)
        {
          operator delete(*(v19 + 32));
        }

        *(v19 + 32) = v43;
        v38 = v61;
        if (*(&v61 + 1) - v61 == 32)
        {
          std::string::basic_string<std::string_view,0>(&v43, *(v61 + 16), *(v61 + 24));
          if (*(v19 + 79) < 0)
          {
            operator delete(*(v19 + 56));
          }

          *(v19 + 56) = v43;
          v38 = v61;
        }

        *a4 |= 2u;
        if (v38)
        {
          *(&v61 + 1) = v38;
          operator delete(v38);
          v12 = 1;
          if (SHIBYTE(v45) < 0)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        }

        goto LABEL_88;
      }

      goto LABEL_86;
    }

LABEL_41:
    v20 = a3[2];
    if (v17 >= v20)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v18) >> 4) + 1;
      if (v21 > 0x333333333333333)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v18) >> 4);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x199999999999999)
      {
        v21 = 0x333333333333333;
      }

      if (v21)
      {
        if (v21 <= 0x333333333333333)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v17)
    {
      *v17 = v49;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      *(v17 + 40) = 0u;
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0;
      a3[1] = v17 + 80;
      v19 = v17;
      goto LABEL_52;
    }

    __break(1u);
LABEL_122:
    abort();
  }

LABEL_78:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
LABEL_80:
      if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        return v12;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v55) & 0x80000000) == 0)
  {
    goto LABEL_80;
  }

LABEL_12:
  operator delete(__p);
  if (SHIBYTE(v58) < 0)
  {
LABEL_13:
    operator delete(v56);
  }

  return v12;
}

void webrtc::ParseRtpmapAttribute(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 32)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

uint64_t webrtc::ParsePacketizationAttribute(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        if (*(a1 + i) == 32)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  return 1;
}

uint64_t webrtc::ParseRtcpFbAttribute(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1)
  {
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        if (*(a1 + i) == 32)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  return 1;
}

uint64_t webrtc::ParseMsidAttribute(uint64_t a1, unint64_t a2, std::string **a3, std::string *a4, uint64_t a5)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (a2 <= 1)
  {
LABEL_132:
    abort();
  }

  v10 = webrtc::tokenize(a1 + 2, a2 - 2, 0x20u, &v58);
  if (v10 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    operator new();
  }

  if (v10 != 1)
  {
LABEL_36:
    v19 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (*(a1 + a2 - 1) == 32)
  {
    operator new();
  }

  v16 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v16 & 0x8000000000000000) == 0)
  {
    if (*(&a4->__r_.__value_.__s + 23))
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (!a4->__r_.__value_.__l.__size_)
  {
LABEL_24:
    HIBYTE(v62) = 0;
    LOBYTE(__p) = 0;
    std::vector<std::string>::push_back[abi:sn200100](&v58, &__p);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
      v19 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_18:
  v17 = v59;
  if (v59 >= v60)
  {
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3) + 1;
    if (v21 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v22 = 0x5555555555555556 * ((v60 - v58) >> 3);
    if (v22 <= v21)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3) + 1;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v60 - v58) >> 3) >= 0x555555555555555)
    {
      v23 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_131;
  }

  if (!v59)
  {
    goto LABEL_131;
  }

  if ((v16 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v59, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
    v59 = v17 + 1;
    v19 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *&a4->__r_.__value_.__l.__data_;
    v59->__r_.__value_.__r.__words[2] = a4->__r_.__value_.__r.__words[2];
    *&v17->__r_.__value_.__l.__data_ = v18;
    v59 = v17 + 1;
    v19 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_22:
      size = a4->__r_.__value_.__l.__size_;
      goto LABEL_38;
    }
  }

LABEL_37:
  size = v19;
LABEL_38:
  v24 = v58;
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3);
  if (size)
  {
    if (v25 <= 1)
    {
      goto LABEL_131;
    }

    v26 = *(v58 + 47);
    v27 = v19;
    v28 = a4;
    if ((v19 & 0x80000000) != 0)
    {
      v28 = a4->__r_.__value_.__r.__words[0];
      v27 = a4->__r_.__value_.__l.__size_;
    }

    if (v26 >= 0)
    {
      v29 = *(v58 + 47);
    }

    else
    {
      v29 = *(v58 + 4);
    }

    if (v26 >= 0)
    {
      v30 = v58 + 24;
    }

    else
    {
      v30 = *(v58 + 3);
    }

    if (v29 >= v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    v32 = memcmp(v28, v30, v31);
    if (v29 != v27 || v32 != 0)
    {
      operator new();
    }
  }

  if (v25 <= 1)
  {
    goto LABEL_131;
  }

  if (v24 + 24 == a4)
  {
    goto LABEL_69;
  }

  v34 = v24[47];
  if ((v19 & 0x80000000) != 0)
  {
    if (v34 >= 0)
    {
      v37 = v24 + 24;
    }

    else
    {
      v37 = *(v24 + 3);
    }

    if (v34 >= 0)
    {
      v38 = v24[47];
    }

    else
    {
      v38 = *(v24 + 4);
    }

    std::string::__assign_no_alias<false>(a4, v37, v38);
LABEL_69:
    __s1 = 0uLL;
    v57 = 0;
    v36 = v58;
    if (v59 != v58)
    {
      goto LABEL_70;
    }

LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v24[47] < 0)
  {
    std::string::__assign_no_alias<true>(a4, *(v24 + 3), *(v24 + 4));
    __s1 = 0uLL;
    v57 = 0;
    v36 = v58;
    if (v59 == v58)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v35 = *(v24 + 24);
    a4->__r_.__value_.__r.__words[2] = *(v24 + 5);
    *&a4->__r_.__value_.__l.__data_ = v35;
    __s1 = 0uLL;
    v57 = 0;
    v36 = v58;
    if (v59 == v58)
    {
      goto LABEL_131;
    }
  }

LABEL_70:
  v39 = v36[23];
  if ((v39 & 0x8000000000000000) != 0)
  {
    v40 = v36;
    v36 = *v36;
    v39 = *(v40 + 1);
  }

  __p = 0;
  v62 = 0uLL;
  if (!webrtc::tokenize_first(v36, v39, 58, &__p, &__s1))
  {
    goto LABEL_79;
  }

  if ((SHIBYTE(v62) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v62) >= 4u && *(&__p + SHIBYTE(v62) - 4) == 1684632429)
    {
      goto LABEL_84;
    }

LABEL_79:
    webrtc::ParseFailedGetValue(v36, v39, "msid", 4uLL, a5);
    v41 = 0;
    if ((HIBYTE(v62) & 0x80) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

  if (v62 < 4 || *(__p + v62 - 4) != 1684632429)
  {
    goto LABEL_79;
  }

LABEL_84:
  v41 = 1;
  if ((HIBYTE(v62) & 0x80) != 0)
  {
LABEL_85:
    operator delete(__p);
    if (v41)
    {
      goto LABEL_86;
    }

    goto LABEL_118;
  }

LABEL_80:
  if (v41)
  {
LABEL_86:
    v42 = SHIBYTE(v57);
    if (v57 < 0)
    {
      if (*(&__s1 + 1))
      {
        p_s1 = __s1;
        if (*(&__s1 + 1) != 1)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    else if (HIBYTE(v57))
    {
      p_s1 = &__s1;
      if (SHIBYTE(v57) != 1)
      {
LABEL_93:
        v45 = *a3;
        v44 = a3[1];
        if (*a3 == v44)
        {
LABEL_120:
          if (v44 >= a3[2])
          {
            std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3);
          }

          if (!v44)
          {
            goto LABEL_131;
          }

          if (v42 < 0)
          {
            std::string::__init_copy_ctor_external(v44, __s1, *(&__s1 + 1));
          }

          else
          {
            v55 = __s1;
            v44->__r_.__value_.__r.__words[2] = v57;
            *&v44->__r_.__value_.__l.__data_ = v55;
          }

          a3[1] = v44 + 1;
        }

        else
        {
          if (v57 >= 0)
          {
            v46 = SHIBYTE(v57);
          }

          else
          {
            v46 = *(&__s1 + 1);
          }

          if (SHIBYTE(v57) < 0)
          {
            v47 = __s1;
            while (1)
            {
              v51 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
              v52 = v51;
              if ((v51 & 0x80u) != 0)
              {
                v51 = v45->__r_.__value_.__l.__size_;
              }

              if (v46 == v51)
              {
                v53 = v52 >= 0 ? v45 : v45->__r_.__value_.__r.__words[0];
                if (!memcmp(v47, v53, v46))
                {
                  break;
                }
              }

              if (++v45 == v44)
              {
                goto LABEL_120;
              }
            }
          }

          else
          {
            while (1)
            {
              v48 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = v45->__r_.__value_.__l.__size_;
              }

              if (v46 == v48)
              {
                v50 = v49 >= 0 ? v45 : v45->__r_.__value_.__r.__words[0];
                if (!memcmp(&__s1, v50, v46))
                {
                  break;
                }
              }

              if (++v45 == v44)
              {
                goto LABEL_120;
              }
            }
          }
        }

LABEL_129:
        v54 = 1;
        if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_130;
      }

LABEL_92:
      if (*p_s1 == 45)
      {
        goto LABEL_129;
      }

      goto LABEL_93;
    }

    operator new();
  }

LABEL_118:
  v54 = 0;
  if ((SHIBYTE(v57) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_130:
  operator delete(__s1);
LABEL_4:
  v11 = v58;
  if (v58)
  {
    v12 = v59;
    v13 = v58;
    if (v59 != v58)
    {
      do
      {
        v14 = SHIBYTE(v12[-1].__r_.__value_.__r.__words[2]);
        --v12;
        if (v14 < 0)
        {
          operator delete(v12->__r_.__value_.__l.__data_);
        }
      }

      while (v12 != v11);
      v13 = v58;
    }

    v59 = v11;
    operator delete(v13);
  }

  return v54;
}

uint64_t webrtc::SimulcastDescription::operator=(uint64_t a1, std::string ***a2)
{
  if (a1 != a2)
  {
    std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(a1 + 24, a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * (a2[4] - a2[3]));
  }

  return a1;
}

uint64_t webrtc::GetValueFromString<unsigned long>(uint64_t a1, unint64_t a2, void **__src, size_t __len, unint64_t *a5, uint64_t a6)
{
  v12 = webrtc::string_to_number_internal::ParseUnsigned(__src, __len, 0xAuLL);
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    v24.__r_.__value_.__r.__words[2] = 0xF00000000000000;
    if (&v24 <= "Invalid value: " && &v24.__r_.__value_.__r.__words[1] + 7 > "Invalid value: ")
    {
      goto LABEL_39;
    }

    strcpy(&v24, "Invalid value: ");
    if (!__src)
    {
      if (__len)
      {
        goto LABEL_39;
      }
    }

    if (__len > 7)
    {
      if (__len - 0x7FFFFFFFFFFFFFE8 > 0x800000000000001ELL)
      {
        operator new();
      }

LABEL_40:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (__len)
    {
      if (&v24.__r_.__value_.__r.__words[1] + 7 <= __src && &v24.__r_.__value_.__r.__words[1] + __len + 7 > __src)
      {
        goto LABEL_39;
      }

      memmove(&v24.__r_.__value_.__r.__words[1] + 7, __src, __len);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        v24.__r_.__value_.__l.__size_ = __len + 15;
      }

      else
      {
        *(&v24.__r_.__value_.__s + 23) = __len + 15;
      }

      v24.__r_.__value_.__s.__data_[__len + 15] = 0;
      v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = 15;
    }

    v16 = v15;
    if ((v15 & 0x80u) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v24.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v15 & 0x80u) == 0)
    {
      size = v15;
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    if (v17 == size)
    {
      std::string::__grow_by_and_replace(&v24, v17, 1uLL, v17, v17, 0, 1uLL, ".");
      goto LABEL_34;
    }

    v19 = v24.__r_.__value_.__r.__words[0];
    if (v16 >= 0)
    {
      v19 = &v24;
    }

    v20 = v19 + size;
    if (v19 + size > "." || v20 + 1 <= ".")
    {
      *v20 = 46;
      v21 = size + 1;
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        v24.__r_.__value_.__l.__size_ = v21;
      }

      else
      {
        *(&v24.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v19->__r_.__value_.__s.__data_[v21] = 0;
LABEL_34:
      *__p = *&v24.__r_.__value_.__l.__data_;
      *&__p[15] = *(&v24.__r_.__value_.__r.__words[1] + 7);
      v22 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      memset(&v24, 0, sizeof(v24));
      v26 = v22;
      webrtc::ParseFailed(a1, a2, 0, __p, a6);
      if (v26 < 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v14 & 1;
        }
      }

      else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v14 & 1;
      }

      operator delete(v24.__r_.__value_.__l.__data_);
      return v14 & 1;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *a5 = v12;
  return v14 & 1;
}

std::string *std::vector<webrtc::RidDescription>::emplace_back<webrtc::RidDescription>(void *a1, const webrtc::RidDescription *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = v3 - *a1;
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4) + 1;
    if (v7 > 0x333333333333333)
    {
      goto LABEL_14;
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4) + 1;
    }

    if (v8 >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x333333333333333)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_13:
    __break(1u);
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  result = webrtc::RidDescription::RidDescription(v3, a2);
  a1[1] = result + 80;
  return result;
}

uint64_t webrtc::RTCErrorOr<webrtc::RidDescription>::~RTCErrorOr(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_10;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
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
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
LABEL_10:
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t webrtc::RTCErrorOr<webrtc::SimulcastDescription>::~RTCErrorOr(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    webrtc::SimulcastDescription::~SimulcastDescription((a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webrtc::RemoveRidsFromSimulcastLayerList(void *a1, uint64_t a2, const void ***a3, const void ***a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 == a4)
  {
    return;
  }

  v4 = a3;
  v5 = (a2 + 8);
  while (2)
  {
    __p = 0;
    v37 = 0;
    v38 = 0;
    v7 = *v4;
    v8 = v4[1];
    if (*v4 == v8)
    {
      goto LABEL_5;
    }

    v35 = v4;
    while (2)
    {
      v9 = *v5;
      if (!*v5)
      {
        goto LABEL_46;
      }

      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = *v7;
      }

      if (v10 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      v13 = v5;
      do
      {
        while (1)
        {
          v14 = *(v9 + 55);
          v15 = v14 >= 0 ? v9 + 4 : v9[4];
          v16 = v14 >= 0 ? *(v9 + 55) : v9[5];
          v17 = v12 >= v16 ? v16 : v12;
          v18 = memcmp(v15, v11, v17);
          if (v18)
          {
            break;
          }

          if (v16 >= v12)
          {
            goto LABEL_31;
          }

LABEL_17:
          v9 = v9[1];
          if (!v9)
          {
            goto LABEL_32;
          }
        }

        if (v18 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v13 = v9;
        v9 = *v9;
      }

      while (v9);
LABEL_32:
      if (v13 == v5)
      {
        goto LABEL_46;
      }

      v21 = v13[4];
      v20 = v13 + 4;
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
        v24 = v20[1];
      }

      if (v24 >= v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = v24;
      }

      v26 = memcmp(v11, v23, v25);
      if (!v26)
      {
        if (v12 >= v24)
        {
          goto LABEL_8;
        }

LABEL_46:
        if (v38)
        {
          goto LABEL_64;
        }

        v27 = (-__p >> 5) + 1;
        if (v27 >> 59)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v28 = (v38 - __p) >> 4;
        if (v28 <= v27)
        {
          v28 = (-__p >> 5) + 1;
        }

        v29 = 0x7FFFFFFFFFFFFFFLL;
        if ((v38 - __p) < 0x7FFFFFFFFFFFFFE0)
        {
          v29 = v28;
        }

        if (!v29)
        {
LABEL_64:
          __break(1u);
        }

        else if (!(v29 >> 59))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v26 < 0)
      {
        goto LABEL_46;
      }

LABEL_8:
      v7 += 4;
      if (v7 != v8)
      {
        continue;
      }

      break;
    }

    v30 = __p;
    if (__p)
    {
      std::vector<std::vector<webrtc::SimulcastLayer>>::push_back[abi:sn200100](a1, &__p);
      v30 = __p;
    }

    v4 = v35;
    if (v30)
    {
      v31 = v37;
      v6 = v30;
      if (v37 != v30)
      {
        do
        {
          v32 = *(v31 - 9);
          v31 -= 4;
          if (v32 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v30);
        v6 = __p;
      }

      v37 = v30;
      operator delete(v6);
    }

LABEL_5:
    v4 += 3;
    if (v4 != a4)
    {
      continue;
    }

    break;
  }
}

void std::__tree<std::__value_type<std::string,webrtc::RidDescription>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RidDescription>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RidDescription>>>::destroy(char *a1)
{
  if (!a1)
  {
    return;
  }

  std::__tree<std::__value_type<std::string,webrtc::RidDescription>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RidDescription>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RidDescription>>>::destroy(*a1);
  std::__tree<std::__value_type<std::string,webrtc::RidDescription>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RidDescription>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RidDescription>>>::destroy(*(a1 + 1));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a1 + 112), *(a1 + 15));
  v2 = *(a1 + 11);
  if (v2)
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 11);
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
      v4 = *(a1 + 11);
    }

    *(a1 + 12) = v2;
    operator delete(v4);
  }

  if (a1[79] < 0)
  {
    operator delete(*(a1 + 7));
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    operator delete(*(a1 + 4));
    goto LABEL_11;
  }

  if (a1[55] < 0)
  {
    goto LABEL_16;
  }

LABEL_11:

  operator delete(a1);
}

unint64_t webrtc::WebRtcSessionDescriptionFactory::CopyCandidatesFromSessionDescription(unint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = (*(*result + 32))(result);
  result = (*(*v5 + 32))(v5);
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = *result;
  v10 = *(result + 8);
  if (*result == v10)
  {
    return result;
  }

  for (i = -v9; ; i -= 40)
  {
    v12 = *(v9 + 31);
    if (v12 < 0)
    {
      break;
    }

    v13 = (v9 + 8);
    if (v8 == v12)
    {
      goto LABEL_12;
    }

LABEL_7:
    v9 += 40;
    if (v9 == v10)
    {
      return result;
    }
  }

  v13 = *(v9 + 8);
  if (v8 != *(v9 + 16))
  {
    goto LABEL_7;
  }

LABEL_12:
  result = memcmp(a2, v13, v8);
  if (result)
  {
    goto LABEL_7;
  }

  if (v6[1] == *v6)
  {
    __break(1u);
  }

  else
  {
    v14 = (-858993459 * ((-i - *v6) >> 3));
    v15 = (*(*v5 + 96))(v5, v14);
    result = (*(*a3 + 96))(a3, v14);
    if (v15)
    {
      v16 = result == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = result;
      result = (*(*v15 + 16))(v15);
      if (result)
      {
        for (j = 0; j < result; ++j)
        {
          v19 = (*(*v15 + 32))(v15, j);
          if (((*(*v17 + 24))(v17, v19) & 1) == 0)
          {
            v20 = (*(*v15 + 32))(v15, j);
            (*(*a3 + 72))(a3, v20);
          }

          result = (*(*v15 + 16))(v15);
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcSessionDescriptionFactory::WebRtcSessionDescriptionFactory(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t *a6, atomic_uint **a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = 0;
  v17 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = a10;
  webrtc::MediaSessionDescriptionFactory::MediaSessionDescriptionFactory(a1 + 80, a2, 0, a2 + 104, a1 + 56, a9);
  v18 = 0;
  *(a1 + 136) = 2;
  if (a5)
  {
    v18 = *a6;
    *a6 = 0;
  }

  *(a1 + 144) = v18;
  *(a1 + 152) = a3;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v19 = *a4;
    *(a1 + 176) = *(a4 + 2);
    *(a1 + 160) = v19;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    v20 = *(a8 + 24);
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = a1;
    if (a5)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  std::string::__init_copy_ctor_external((a1 + 160), *a4, *(a4 + 1));
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  v20 = *(a8 + 24);
  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v20 == a8)
  {
    *(a1 + 264) = a1 + 240;
    (*(**(a8 + 24) + 24))(*(a8 + 24));
    *(a1 + 272) = 0;
    *(a1 + 280) = a1;
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_21:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc");
    }

    *v17 = 1;
    return a1;
  }

  *(a1 + 264) = (*(*v20 + 16))(v20);
  *(a1 + 272) = 0;
  *(a1 + 280) = a1;
  if ((a5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v21 = *a7;
  *(a1 + 184) = 1;
  if (!v21)
  {
    operator new();
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_13;
    }

LABEL_27:
    webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc");
    v47 = *a7;
    v36 = v47;
    if (!v47)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc");
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v47 = *a7;
  v36 = v47;
  if (v47)
  {
LABEL_14:
    atomic_fetch_add_explicit(v36, 1u, memory_order_relaxed);
  }

LABEL_15:
  webrtc::WebRtcSessionDescriptionFactory::SetCertificate(a1, &v47);
  v37 = v47;
  if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
  {
    v38 = *(v37 + 1);
    *(v37 + 1) = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    MEMORY[0x2743DA540](v37, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

uint64_t webrtc::WebRtcSessionDescriptionFactory::SetCertificate(uint64_t a1, uint64_t *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc");
  }

  *(a1 + 184) = 2;
  v11 = *(a1 + 264);
  if (!v11)
  {
    v19 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::WebRtcSessionDescriptionFactory::~WebRtcSessionDescriptionFactory(v19);
  }

  result = (*(*v11 + 48))(v11, a2);
  v13 = *a2;
  *a2 = 0;
  v14 = *(a1 + 64);
  *(a1 + 64) = v13;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    v15 = *(v14 + 8);
    *(v14 + 8) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    result = MEMORY[0x2743DA540](v14, 0x1020C40D5A9D86FLL);
  }

  if (*(a1 + 40))
  {
    v16 = *(*(a1 + 8) + 8 * (*(a1 + 32) / 0x1EuLL)) + 136 * (*(a1 + 32) % 0x1EuLL);
    if (*v16)
    {
      LODWORD(v20[0]) = *v16;
      v17 = *(v16 + 8);
      v20[1] = v17;
      if (v17)
      {
        (**v17)(v17);
      }

      webrtc::MediaSessionOptions::MediaSessionOptions(&v21, (v16 + 16));
      webrtc::WebRtcSessionDescriptionFactory::InternalCreateAnswer(a1, v20);
    }

    LODWORD(v22[0]) = 0;
    v18 = *(v16 + 8);
    v22[1] = v18;
    if (v18)
    {
      (**v18)(v18);
    }

    webrtc::MediaSessionOptions::MediaSessionOptions(&v23, (v16 + 16));
    webrtc::WebRtcSessionDescriptionFactory::InternalCreateOffer(a1, v22);
  }

  return result;
}

void *webrtc::WebRtcSessionDescriptionFactory::FailPendingRequests(void *result)
{
  if (result[5])
  {
    v1 = result;
    v2 = *(*(result[1] + 8 * (result[4] / 0x1EuLL)) + 136 * (result[4] % 0x1EuLL) + 8);
    std::operator+<char>();
    v3 = __len;
    if ((__len & 0x8000000000000000) != 0)
    {
      p_src = __src;
      v3 = v7;
      __len_1 = 10;
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __len_1 = 10;
      p_src = &__src;
    }

    if (v3 > 0x16)
    {
      operator new();
    }

    v11 = v3;
    v5 = (&__p + v3);
    if (&__p > p_src || v5 <= p_src)
    {
      if (v3)
      {
        memmove(&__p, p_src, v3);
      }

      *v5 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(v1, v2, &__len_1);
    }

    __break(1u);
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::WebRtcSessionDescriptionFactory::CreateOffer(uint64_t a1, void (***a2)(void), uint64_t a3, webrtc::_anonymous_namespace_ **a4)
{
  *(&__src.__r_.__value_.__s + 23) = 11;
  if (&__src <= "CreateOffer" && &__src.__r_.__value_.__r.__words[1] + 3 > "CreateOffer")
  {
LABEL_45:
    __break(1u);
LABEL_46:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(&__src, "CreateOffer");
  if (*(a1 + 184) == 3)
  {
    operator new();
  }

  {
    v7 = __src.__r_.__value_.__r.__words[2];
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __src.__r_.__value_.__l.__size_;
    }

    if (v8 - size < 0x24)
    {
      std::string::__grow_by_and_replace(&__src, v8, size - v8 + 36, size, size, 0, 0x24uLL, " called with invalid session options");
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

LABEL_31:
      v21 = 10;
      p_src = &__src;
      if (v10 > 0x16)
      {
        goto LABEL_37;
      }

LABEL_32:
      v23 = v10;
      v15 = (&v22 + v10);
      if (&v22 > p_src || v15 <= p_src)
      {
        if (v10)
        {
          memmove(&v22, p_src, v10);
        }

        v15->__r_.__value_.__s.__data_[0] = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, a2, &v21);
      }

      goto LABEL_45;
    }

    v11 = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = __src.__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    if (v11 + size <= " called with invalid session options" && v12 + 36 > " called with invalid session options")
    {
      goto LABEL_45;
    }

    qmemcpy(v12, " called with invalid session options", 36);
    v13 = size + 36;
    if ((v7 & 0x8000000000000000) != 0)
    {
      __src.__r_.__value_.__l.__size_ = size + 36;
      v11->__r_.__value_.__s.__data_[v13] = 0;
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v13 & 0x7F;
      v11->__r_.__value_.__s.__data_[v13] = 0;
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_35:
    v10 = __src.__r_.__value_.__l.__size_;
    p_src = __src.__r_.__value_.__r.__words[0];
    v21 = 10;
    if (__src.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_46;
    }

    if (__src.__r_.__value_.__l.__size_ > 0x16)
    {
LABEL_37:
      operator new();
    }

    goto LABEL_32;
  }

  v18 = 0;
  v19 = a2;
  if (a2)
  {
    (**a2)(a2);
  }

  webrtc::MediaSessionOptions::MediaSessionOptions(v20, a4);
  if (*(a1 + 184) != 1)
  {
    LODWORD(v16[0]) = v18;
    v16[1] = v19;
    if (v19)
    {
      (**v19)(v19);
    }

    webrtc::MediaSessionOptions::MediaSessionOptions(&v17, v20);
    webrtc::WebRtcSessionDescriptionFactory::InternalCreateOffer(a1, v16);
  }

  std::deque<webrtc::WebRtcSessionDescriptionFactory::CreateSessionDescriptionRequest>::push_back(a1, &v18);
  webrtc::MediaSessionOptions::~MediaSessionOptions(v20);
  if (v19)
  {
    (*v19)[1](v19);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_44;
    }
  }

  else if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_44:
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(uint64_t a1, void (***a2)(void), uint64_t a3)
{
  if (a2)
  {
    (**a2)(a2);
  }

  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  v5[0] = *(a3 + 32);
  *(v5 + 3) = *(a3 + 35);
  operator new();
}

BOOL webrtc::anonymous namespace::ValidMediaSessionOptions(webrtc::_anonymous_namespace_ *this, const webrtc::MediaSessionOptions *a2)
{
  if (this != a2)
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v8 = *(v3 + 5);
      v7 = *(v3 + 6);
      v9 = v7 - v8;
      if (v7 - v8 < 1)
      {
        goto LABEL_3;
      }

      if (-v5 >= v9)
      {
        break;
      }

      v10 = (v5 - v4);
      v11 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3) + 0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3);
      if (v11 > 0x276276276276276)
      {
        goto LABEL_64;
      }

      if (0x9D89D89D89D89D8ALL * (-v4 >> 3) > v11)
      {
        v11 = 0x9D89D89D89D89D8ALL * (-v4 >> 3);
      }

      if ((0x4EC4EC4EC4EC4EC5 * (-v4 >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v12 = 0x276276276276276;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        if (v12 <= 0x276276276276276)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v13 = 8 * ((v5 - v4) >> 3);
      v6 = v13 + v9;
      v14 = v13;
      do
      {
        if (!v14)
        {
          goto LABEL_63;
        }

        v14 = (webrtc::SenderOptions::SenderOptions(v14, v8) + 104);
        v8 = (v8 + 104);
        v9 -= 104;
      }

      while (v9);
      v15 = v13 - v10;
      if (v5 != v4)
      {
        v16 = v4;
        v17 = v15;
        do
        {
          if (!v17)
          {
            goto LABEL_63;
          }

          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *v16 = 0;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          *(v17 + 40) = 0;
          *(v17 + 24) = *(v16 + 24);
          *(v17 + 40) = *(v16 + 40);
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          *(v17 + 48) = 0;
          *(v17 + 56) = 0;
          *(v17 + 64) = 0;
          *(v17 + 48) = *(v16 + 48);
          *(v17 + 64) = *(v16 + 64);
          *(v16 + 48) = 0;
          *(v16 + 56) = 0;
          *(v16 + 64) = 0;
          *(v17 + 72) = 0;
          *(v17 + 80) = 0;
          *(v17 + 88) = 0;
          *(v17 + 72) = *(v16 + 72);
          *(v17 + 88) = *(v16 + 88);
          *(v16 + 72) = 0;
          *(v16 + 80) = 0;
          *(v16 + 88) = 0;
          *(v17 + 96) = *(v16 + 96);
          v16 += 104;
          v17 += 104;
        }

        while (v16 != v5);
        v19 = v4;
        while (v19)
        {
          webrtc::SenderOptions::~SenderOptions(v19);
          v19 = (v20 + 104);
          v10 -= 104;
          if (!v10)
          {
            goto LABEL_31;
          }
        }

LABEL_63:
        __break(1u);
LABEL_64:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_31:
      if (v4)
      {
        operator delete(v4);
      }

      v4 = v15;
LABEL_4:
      v3 = (v3 + 136);
      v5 = v6;
      if (v3 == a2)
      {
        goto LABEL_35;
      }
    }

    if (v8 != v7)
    {
      v6 = v5;
      while (v5)
      {
        webrtc::SenderOptions::SenderOptions(v5, v8);
        v8 = (v8 + 104);
        v5 += 104;
        v6 += 104;
        if (v8 == v7)
        {
          goto LABEL_4;
        }
      }

      goto LABEL_63;
    }

LABEL_3:
    v6 = v5;
    goto LABEL_4;
  }

  v4 = 0;
  v6 = 0;
LABEL_35:
  v21 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v6 - v4) >> 3));
  if (v6 == v4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = v6;
  if (v6 != v4)
  {
    v23 = v6;
    if (v4 + 104 != v6)
    {
      v23 = v4;
      while (1)
      {
        v25 = *(v23 + 23);
        if (v25 >= 0)
        {
          v26 = *(v23 + 23);
        }

        else
        {
          v26 = *(v23 + 8);
        }

        v27 = *(v23 + 127);
        v28 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v27 = *(v23 + 112);
        }

        if (v26 == v27)
        {
          v29 = v25 >= 0 ? v23 : *v23;
          v30 = v28 >= 0 ? (v23 + 104) : *(v23 + 104);
          if (!memcmp(v29, v30, v26))
          {
            break;
          }
        }

        v24 = v23 + 208;
        v23 += 104;
        if (v24 == v6)
        {
          v23 = v6;
          break;
        }
      }
    }
  }

  if (v4)
  {
    if (v6 != v4)
    {
      v31 = v6;
      do
      {
        webrtc::SenderOptions::~SenderOptions((v31 - 104));
      }

      while (v31 != v4);
    }

    operator delete(v4);
  }

  return v23 == v6;
}

void webrtc::WebRtcSessionDescriptionFactory::InternalCreateOffer(uint64_t a1, void *a2)
{
  if ((*(**(a1 + 152) + 24))(*(a1 + 152)))
  {
    v4 = a2[10];
    for (i = a2[11]; v4 != i; v4 += 136)
    {
      if ((*(**(a1 + 152) + 72))(*(a1 + 152), v4 + 8))
      {
        *(v4 + 37) = 1;
      }
    }
  }

  if ((*(**(a1 + 152) + 24))(*(a1 + 152)))
  {
    v6 = (*(**(a1 + 152) + 24))(*(a1 + 152));
    v7 = (*(*v6 + 32))(v6);
  }

  else
  {
    v7 = 0;
  }

  webrtc::MediaSessionDescriptionFactory::CreateOfferOrError((a1 + 80), (a2 + 2), v7);
  if (v23)
  {
    v13 = a2[1];
    v20 = v23;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v24;
    }

    v22[0] = v25[0];
    *(v22 + 3) = *(v25 + 3);
    webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, v13, &v20);
  }

  if (v27)
  {
    v14 = v26;
    v26 = 0;
    if (v14)
    {
      v15 = *(a1 + 136);
      *(a1 + 136) = v15 + 1;
      v29 = 0;
      v30 = 0x1600000000000000;
      v28 = 0;
      v16 = absl::numbers_internal::FastIntToBuffer(v15, &v28, v8);
      v17 = v16 - &v28;
      if ((SHIBYTE(v30) & 0x8000000000000000) != 0)
      {
        if (v29 >= v17)
        {
          v18 = v28;
          v29 = v16 - &v28;
LABEL_22:
          *(v18 + v17) = 0;
          operator new();
        }
      }

      else if (v17 <= SHIBYTE(v30))
      {
        HIBYTE(v30) = v16 - &v28;
        v18 = &v28;
        goto LABEL_22;
      }

LABEL_25:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    __break(1u);
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc", 289, "desc", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v19);
  goto LABEL_25;
}

void webrtc::WebRtcSessionDescriptionFactory::CreateAnswer(uint64_t a1, void (***a2)(void), webrtc::_anonymous_namespace_ **a3)
{
  *(&__src.__r_.__value_.__s + 23) = 12;
  if (&__src <= "CreateAnswer" && &__src.__r_.__value_.__r.__words[1] + 4 > "CreateAnswer")
  {
LABEL_97:
    __break(1u);
LABEL_98:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(&__src, "CreateAnswer");
  if (*(a1 + 184) == 3)
  {
    operator new();
  }

  if (!(*(**(a1 + 152) + 32))(*(a1 + 152)))
  {
    v13 = __src.__r_.__value_.__r.__words[2];
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = 22;
    }

    else
    {
      v14 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __src.__r_.__value_.__l.__size_;
    }

    if (v14 - size < 0x2D)
    {
      std::string::__grow_by_and_replace(&__src, v14, size - v14 + 45, size, size, 0, 0x2DuLL, " can't be called before SetRemoteDescription.");
      v16 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_53:
      v16 = __src.__r_.__value_.__l.__size_;
      v17 = __src.__r_.__value_.__r.__words[0];
      v51 = 10;
      if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_98;
      }

      if (__src.__r_.__value_.__l.__size_ <= 0x16)
      {
        goto LABEL_27;
      }

      goto LABEL_55;
    }

    p_src = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    v23 = p_src + size;
    if (p_src + size <= " can't be called before SetRemoteDescription." && v23 + 45 > " can't be called before SetRemoteDescription.")
    {
      goto LABEL_97;
    }

    qmemcpy(v23, " can't be called before SetRemoteDescription.", 45);
    v24 = size + 45;
    if ((v13 & 0x8000000000000000) != 0)
    {
      __src.__r_.__value_.__l.__size_ = size + 45;
      p_src->__r_.__value_.__s.__data_[v24] = 0;
      v16 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v24 & 0x7F;
      p_src->__r_.__value_.__s.__data_[v24] = 0;
      v16 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }
    }

LABEL_26:
    v51 = 10;
    v17 = &__src;
    if (v16 <= 0x16)
    {
LABEL_27:
      v53 = v16;
      v18 = (&v52 + v16);
      if (&v52 > v17 || v18 <= v17)
      {
        if (v16)
        {
          memmove(&v52, v17, v16);
        }

        v18->__r_.__value_.__s.__data_[0] = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, a2, &v51);
      }

      goto LABEL_97;
    }

LABEL_55:
    operator new();
  }

  v6 = (*(**(a1 + 152) + 32))(*(a1 + 152));
  if ((*(*v6 + 56))(v6))
  {
    v7 = __src.__r_.__value_.__r.__words[2];
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __src.__r_.__value_.__l.__size_;
    }

    if (v8 - v9 < 0x33)
    {
      std::string::__grow_by_and_replace(&__src, v8, v9 - v8 + 51, v9, v9, 0, 0x33uLL, " failed because remote_description is not an offer.");
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_40:
      v10 = __src.__r_.__value_.__l.__size_;
      v11 = __src.__r_.__value_.__r.__words[0];
      v45 = 10;
      if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_98;
      }

      if (__src.__r_.__value_.__l.__size_ <= 0x16)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }

    v19 = &__src;
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __src.__r_.__value_.__r.__words[0];
    }

    v20 = v19 + v9;
    if (v19 + v9 <= " failed because remote_description is not an offer." && v20 + 51 > " failed because remote_description is not an offer.")
    {
      goto LABEL_97;
    }

    qmemcpy(v20, " failed because remote_description is not an offer.", 51);
    v21 = v9 + 51;
    if ((v7 & 0x8000000000000000) != 0)
    {
      __src.__r_.__value_.__l.__size_ = v9 + 51;
      v19->__r_.__value_.__s.__data_[v21] = 0;
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(&__src.__r_.__value_.__s + 23) = v21 & 0x7F;
      v19->__r_.__value_.__s.__data_[v21] = 0;
      v10 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_15:
    v45 = 10;
    v11 = &__src;
    if (v10 <= 0x16)
    {
LABEL_16:
      v47 = v10;
      v12 = (&v46 + v10);
      if (&v46 > v11 || v12 <= v11)
      {
        if (v10)
        {
          memmove(&v46, v11, v10);
        }

        v12->__r_.__value_.__s.__data_[0] = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, a2, &v45);
      }

      goto LABEL_97;
    }

LABEL_42:
    operator new();
  }

  {
    v25 = __src.__r_.__value_.__r.__words[2];
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = 22;
    }

    else
    {
      v26 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = __src.__r_.__value_.__l.__size_;
    }

    if (v26 - v27 >= 0x25)
    {
      v31 = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = __src.__r_.__value_.__r.__words[0];
      }

      v32 = v31 + v27;
      if (v31 + v27 <= " called with invalid session options." && v32 + 37 > " called with invalid session options.")
      {
        goto LABEL_97;
      }

      qmemcpy(v32, " called with invalid session options.", 37);
      v33 = v27 + 37;
      if ((v25 & 0x8000000000000000) != 0)
      {
        __src.__r_.__value_.__l.__size_ = v27 + 37;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v33 & 0x7F;
      }

      v31->__r_.__value_.__s.__data_[v33] = 0;
      v28 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_68:
        v39 = 10;
        v29 = &__src;
        if (v28 <= 0x16)
        {
LABEL_69:
          v41 = v28;
          v30 = (&v40 + v28);
          if (&v40 > v29 || v30 <= v29)
          {
            if (v28)
            {
              memmove(&v40, v29, v28);
            }

            v30->__r_.__value_.__s.__data_[0] = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, a2, &v39);
          }

          goto LABEL_97;
        }

LABEL_90:
        operator new();
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&__src, v26, v27 - v26 + 37, v27, v27, 0, 0x25uLL, " called with invalid session options.");
      v28 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }
    }

    v28 = __src.__r_.__value_.__l.__size_;
    v29 = __src.__r_.__value_.__r.__words[0];
    v39 = 10;
    if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_98;
    }

    if (__src.__r_.__value_.__l.__size_ <= 0x16)
    {
      goto LABEL_69;
    }

    goto LABEL_90;
  }

  v36 = 1;
  v37 = a2;
  if (a2)
  {
    (**a2)(a2);
  }

  webrtc::MediaSessionOptions::MediaSessionOptions(v38, a3);
  if (*(a1 + 184) != 1)
  {
    LODWORD(v34[0]) = v36;
    v34[1] = v37;
    if (v37)
    {
      (**v37)(v37);
    }

    webrtc::MediaSessionOptions::MediaSessionOptions(&v35, v38);
    webrtc::WebRtcSessionDescriptionFactory::InternalCreateAnswer(a1, v34);
  }

  std::deque<webrtc::WebRtcSessionDescriptionFactory::CreateSessionDescriptionRequest>::push_back(a1, &v36);
  webrtc::MediaSessionOptions::~MediaSessionOptions(v38);
  if (v37)
  {
    (*v37)[1](v37);
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void webrtc::WebRtcSessionDescriptionFactory::InternalCreateAnswer(uint64_t a1, void *a2)
{
  if ((*(**(a1 + 152) + 32))(*(a1 + 152)))
  {
    v4 = a2[10];
    v5 = a2[11];
    while (v4 != v5)
    {
      *(v4 + 37) = (*(**(a1 + 152) + 80))(*(a1 + 152), v4 + 8);
      v6 = (*(**(a1 + 152) + 88))(*(a1 + 152), v4 + 8);
      if ((v6 & 0x100000000) != 0)
      {
        *(v4 + 38) = v6 == 1;
      }

      v4 += 136;
    }
  }

  if ((*(**(a1 + 152) + 32))(*(a1 + 152)))
  {
    v7 = (*(**(a1 + 152) + 32))(*(a1 + 152));
    v8 = (*(*v7 + 32))(v7);
    if ((*(**(a1 + 152) + 24))(*(a1 + 152)))
    {
LABEL_9:
      v9 = (*(**(a1 + 152) + 24))(*(a1 + 152));
      v10 = (*(*v9 + 32))(v9);
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if ((*(**(a1 + 152) + 24))(*(a1 + 152)))
    {
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_12:
  webrtc::MediaSessionDescriptionFactory::CreateAnswerOrError((a1 + 80), v8, (a2 + 2), v10, &v26);
  if (v26)
  {
    v16 = a2[1];
    v23 = v26;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v27;
    }

    v25[0] = v28[0];
    *(v25 + 3) = *(v28 + 3);
    webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(a1, v16, &v23);
  }

  if (v30)
  {
    v17 = v29;
    v29 = 0;
    if (v17)
    {
      v18 = *(a1 + 136);
      *(a1 + 136) = v18 + 1;
      v32 = 0;
      v33 = 0x1600000000000000;
      v31 = 0;
      v19 = absl::numbers_internal::FastIntToBuffer(v18, &v31, v11);
      v20 = v19 - &v31;
      if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
      {
        if (v32 >= v20)
        {
          v21 = v31;
          v32 = v19 - &v31;
LABEL_24:
          *(v21 + v20) = 0;
          operator new();
        }
      }

      else if (v20 <= SHIBYTE(v33))
      {
        HIBYTE(v33) = v19 - &v31;
        v21 = &v31;
        goto LABEL_24;
      }

LABEL_27:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    __break(1u);
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc", 350, "desc", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v22);
  goto LABEL_27;
}

void *webrtc::WebRtcSessionDescriptionFactory::Post(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[25];
  v5 = result[26];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[29] + result[28])
  {
    result = _ZNSt3__15dequeIN4absl12AnyInvocableIFvvOEEENS_9allocatorIS4_EEE19__add_back_capacityEv(result + 24);
    v4 = v3[25];
    v5 = v3[26];
  }

  if (v5 != v4)
  {
    v7 = v3[29] + v3[28];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      v9 = v8 + 32 * (v7 & 0x7F);
      (*(a2 + 16))(0, a2, v9);
      *(v9 + 16) = *(a2 + 16);
      *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a2 + 24) = 0;
      ++v3[29];
      v10 = v3[34];
      if (!v10 || atomic_load_explicit((v10 + 4), memory_order_acquire) == 1)
      {
        operator new();
      }

      v11 = v3[34];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 4), 1u, memory_order_relaxed);
        atomic_fetch_add_explicit((v11 + 4), 1u, memory_order_relaxed);
        if (atomic_fetch_add((v11 + 4), 0xFFFFFFFF) == 1)
        {
          MEMORY[0x2743DA540](v11, 0x1000C404A09149ALL);
        }
      }

      operator new();
    }
  }

  __break(1u);
  return result;
}

uint64_t webrtc::SenderOptions::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 32) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v10 = (a1 + 48);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 48);
    if (v12 != v11)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v12 - 3), *(v12 - 2));
        v14 = *(v12 - 6);
        if (v14)
        {
          v15 = *(v12 - 5);
          v16 = *(v12 - 6);
          if (v15 != v14)
          {
            v17 = v15 - 27;
            v18 = v15 - 27;
            v19 = v15 - 27;
            do
            {
              v20 = *v19;
              v19 -= 27;
              (*v20)(v18);
              v17 -= 27;
              v21 = v18 == v14;
              v18 = v19;
            }

            while (!v21);
            v16 = *(v12 - 6);
          }

          *(v12 - 5) = v14;
          operator delete(v16);
        }

        v22 = v12 - 10;
        if (*(v12 - 57) < 0)
        {
          operator delete(*v22);
        }

        v12 -= 10;
      }

      while (v22 != v11);
      v13 = *v10;
    }

    *(a1 + 56) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v23 = (a1 + 72);
  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(a1 + 80);
    v26 = *(a1 + 72);
    if (v25 != v24)
    {
      v27 = *(a1 + 80);
      do
      {
        v30 = *(v27 - 3);
        v27 -= 3;
        v29 = v30;
        if (v30)
        {
          v31 = *(v25 - 2);
          v28 = v29;
          if (v31 != v29)
          {
            do
            {
              v32 = *(v31 - 9);
              v31 -= 4;
              if (v32 < 0)
              {
                operator delete(*v31);
              }
            }

            while (v31 != v29);
            v28 = *v27;
          }

          *(v25 - 2) = v29;
          operator delete(v28);
        }

        v25 = v27;
      }

      while (v27 != v24);
      v26 = *v23;
    }

    *(a1 + 80) = v24;
    operator delete(v26);
    *v23 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a1 + 96) = *(a2 + 24);
  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::anonymous namespace::ValidMediaSessionOptions(webrtc::MediaSessionOptions const&)::$_1 &,webrtc::SenderOptions *,false>(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = 104;
LABEL_2:
  __s2 = (a2 - 104);
  i = a1;
LABEL_3:
  v269 = a4;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0x4EC4EC4EC4EC4EC5 * ((a2 - i) >> 3);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          return;
        case 4:
          v4 = a1 + 104;
          v13 = a1 + 208;
          v85 = *(a2 - 104);
          a2 -= 104;
          v84 = v85;
          v86 = *(a2 + 23);
          if (v86 >= 0)
          {
            v87 = a2;
          }

          else
          {
            v87 = v84;
          }

          if (v86 >= 0)
          {
            v9 = *(a2 + 23);
          }

          else
          {
            v9 = *(a2 + 8);
          }

          v88 = *(a1 + 231);
          if (v88 >= 0)
          {
            v89 = (a1 + 208);
          }

          else
          {
            v89 = *(a1 + 208);
          }

          if (v88 >= 0)
          {
            a4 = *(a1 + 231);
          }

          else
          {
            a4 = *(a1 + 216);
          }

          if (a4 >= v9)
          {
            v90 = v9;
          }

          else
          {
            v90 = a4;
          }

          v91 = memcmp(v87, v89, v90);
          if (!v91)
          {
            goto LABEL_535;
          }

          if ((v91 & 0x80000000) == 0)
          {
            return;
          }

LABEL_536:
          v283 = *v13;
          v239 = *(v13 + 16);
          *(v13 + 8) = 0;
          *(v13 + 16) = 0;
          *v13 = 0;
          v285 = *(a1 + 232);
          v240 = *(a1 + 248);
          v284 = v239;
          v286 = v240;
          *(a1 + 232) = 0;
          *(a1 + 240) = 0;
          v287 = *(a1 + 256);
          v241 = *(a1 + 272);
          *(a1 + 264) = 0;
          *(a1 + 272) = 0;
          *(a1 + 248) = 0;
          *(a1 + 256) = 0;
          v289 = *(a1 + 280);
          v242 = *(a1 + 296);
          v288 = v241;
          v290 = v242;
          *(a1 + 280) = 0;
          *(a1 + 288) = 0;
          *(a1 + 296) = 0;
          v291 = *(a1 + 304);
          webrtc::SenderOptions::operator=(v13, a2);
          webrtc::SenderOptions::operator=(a2, &v283);
          webrtc::SenderOptions::~SenderOptions(&v283);
          v243 = *(a1 + 231);
          if (v243 >= 0)
          {
            v244 = v13;
          }

          else
          {
            v244 = *(a1 + 208);
          }

          if (v243 >= 0)
          {
            v245 = *(a1 + 231);
          }

          else
          {
            v245 = *(a1 + 216);
          }

          v246 = *(a1 + 127);
          if (v246 >= 0)
          {
            v247 = v4;
          }

          else
          {
            v247 = *(a1 + 104);
          }

          if (v246 >= 0)
          {
            v248 = *(a1 + 127);
          }

          else
          {
            v248 = *(a1 + 112);
          }

          if (v248 >= v245)
          {
            v249 = v245;
          }

          else
          {
            v249 = v248;
          }

          v250 = memcmp(v244, v247, v249);
          if (v250)
          {
            if ((v250 & 0x80000000) == 0)
            {
              return;
            }
          }

          else if (v245 >= v248)
          {
            return;
          }

          v283 = *v4;
          v253 = *(v4 + 16);
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *v4 = 0;
          v285 = *(a1 + 128);
          v254 = *(a1 + 144);
          v284 = v253;
          v286 = v254;
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          v287 = *(a1 + 152);
          v255 = *(a1 + 168);
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          v289 = *(a1 + 176);
          v256 = *(a1 + 192);
          v288 = v255;
          v290 = v256;
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          *(a1 + 192) = 0;
          v291 = *(a1 + 200);
          webrtc::SenderOptions::operator=(v4, v13);
          webrtc::SenderOptions::operator=(v13, &v283);
          webrtc::SenderOptions::~SenderOptions(&v283);
          v257 = *(a1 + 127);
          if (v257 >= 0)
          {
            v258 = v4;
          }

          else
          {
            v258 = *(a1 + 104);
          }

          if (v257 >= 0)
          {
            v259 = *(a1 + 127);
          }

          else
          {
            v259 = *(a1 + 112);
          }

          v260 = *(a1 + 23);
          if (v260 >= 0)
          {
            v261 = a1;
          }

          else
          {
            v261 = *a1;
          }

          if (v260 >= 0)
          {
            v262 = *(a1 + 23);
          }

          else
          {
            v262 = *(a1 + 8);
          }

          if (v262 >= v259)
          {
            v263 = v259;
          }

          else
          {
            v263 = v262;
          }

          v264 = memcmp(v258, v261, v263);
          if (v264)
          {
            if ((v264 & 0x80000000) == 0)
            {
              return;
            }
          }

          else if (v259 >= v262)
          {
            return;
          }

          v265 = *a1;
          v284 = *(a1 + 16);
          v283 = v265;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v285 = *(a1 + 24);
          v286 = *(a1 + 40);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          v287 = *(a1 + 48);
          v288 = *(a1 + 64);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v289 = *(a1 + 72);
          v290 = *(a1 + 88);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v291 = *(a1 + 96);
          webrtc::SenderOptions::operator=(a1, v4);
          v252 = v4;
LABEL_556:
          webrtc::SenderOptions::operator=(v252, &v283);
          webrtc::SenderOptions::~SenderOptions(&v283);
          return;
        case 5:
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v94 = *(a2 - 104);
        v93 = a2 - 104;
        v92 = v94;
        v95 = *(v93 + 23);
        if (v95 >= 0)
        {
          v96 = v93;
        }

        else
        {
          v96 = v92;
        }

        if (v95 >= 0)
        {
          v97 = *(v93 + 23);
        }

        else
        {
          v97 = *(v93 + 8);
        }

        v98 = *(a1 + 23);
        if (v98 >= 0)
        {
          v99 = a1;
        }

        else
        {
          v99 = *a1;
        }

        if (v98 >= 0)
        {
          v100 = *(a1 + 23);
        }

        else
        {
          v100 = *(a1 + 8);
        }

        if (v100 >= v97)
        {
          v101 = v97;
        }

        else
        {
          v101 = v100;
        }

        v102 = memcmp(v96, v99, v101);
        if (v102)
        {
          if ((v102 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v97 >= v100)
        {
          return;
        }

        v251 = *a1;
        v284 = *(a1 + 16);
        v283 = v251;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v285 = *(a1 + 24);
        v286 = *(a1 + 40);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v287 = *(a1 + 48);
        v288 = *(a1 + 64);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        v289 = *(a1 + 72);
        v290 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v291 = *(a1 + 96);
        webrtc::SenderOptions::operator=(a1, v93);
        v252 = v93;
        goto LABEL_556;
      }
    }

    if (v11 <= 2495)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return;
        }

        v103 = (a1 + 104);
        if (a1 + 104 == a2)
        {
          return;
        }

        v104 = 0;
        v105 = a1;
        while (1)
        {
          v150 = v105;
          v105 = v103;
          v151 = *(v150 + 127);
          if (v151 >= 0)
          {
            v152 = v103;
          }

          else
          {
            v152 = v150[13];
          }

          if (v151 >= 0)
          {
            v153 = *(v150 + 127);
          }

          else
          {
            v153 = v150[14];
          }

          v154 = *(v150 + 23);
          if (v154 >= 0)
          {
            v155 = v150;
          }

          else
          {
            v155 = *v150;
          }

          if (v154 >= 0)
          {
            v156 = *(v150 + 23);
          }

          else
          {
            v156 = v150[1];
          }

          if (v156 >= v153)
          {
            v157 = v153;
          }

          else
          {
            v157 = v156;
          }

          v158 = memcmp(v152, v155, v157);
          if (v158)
          {
            if ((v158 & 0x80000000) == 0)
            {
              goto LABEL_375;
            }
          }

          else if (v153 >= v156)
          {
            goto LABEL_375;
          }

          v159 = *v105;
          v284 = *(v105 + 16);
          v283 = v159;
          *(v105 + 8) = 0;
          *(v105 + 16) = 0;
          *v105 = 0;
          v285 = *(v150 + 8);
          v286 = v150[18];
          v150[16] = 0;
          v150[17] = 0;
          v287 = *(v150 + 19);
          v160 = v150[21];
          v150[18] = 0;
          v150[19] = 0;
          v150[20] = 0;
          v150[21] = 0;
          v289 = *(v150 + 11);
          v161 = v150[24];
          v288 = v160;
          v290 = v161;
          v150[23] = 0;
          v150[24] = 0;
          v150[22] = 0;
          v291 = *(v150 + 50);
          webrtc::SenderOptions::operator=(v105, v150);
          v149 = a1;
          if (v150 == a1)
          {
            goto LABEL_374;
          }

          v162 = v104;
          while (1)
          {
            v163 = a1 + v162;
            v164 = SHIBYTE(v284) >= 0 ? &v283 : v283;
            v165 = SHIBYTE(v284) >= 0 ? HIBYTE(v284) : *(&v283 + 1);
            v166 = *(v163 - 81);
            v167 = v166 >= 0 ? (a1 + v162 - 104) : *(a1 + v162 - 104);
            v168 = v166 >= 0 ? *(v163 - 81) : *(v163 - 96);
            v169 = v168 >= v165 ? v165 : v168;
            v170 = memcmp(v164, v167, v169);
            if (!v170)
            {
              break;
            }

            if ((v170 & 0x80000000) == 0)
            {
              v149 = v150;
              goto LABEL_374;
            }

LABEL_398:
            v150 -= 13;
            webrtc::SenderOptions::operator=(a1 + v162, (a1 + v162 - 104));
            v162 -= 104;
            if (!v162)
            {
              v149 = a1;
              goto LABEL_374;
            }
          }

          if (v165 < v168)
          {
            goto LABEL_398;
          }

          v149 = a1 + v162;
LABEL_374:
          webrtc::SenderOptions::operator=(v149, &v283);
          webrtc::SenderOptions::~SenderOptions(&v283);
LABEL_375:
          v103 = (v105 + 104);
          v104 += 104;
          if (v105 + 104 == a2)
          {
            return;
          }
        }
      }

      if (a1 == a2)
      {
        return;
      }

      v217 = (a1 + 104);
      if (a1 + 104 == a2)
      {
        return;
      }

      v9 = 0;
      v218 = 104;
      a4 = &v283;
      v219 = a1;
LABEL_494:
      v220 = v9;
      v9 = v218;
      v221 = *(v219 + 127);
      if (v221 >= 0)
      {
        v222 = v217;
      }

      else
      {
        v222 = *v217;
      }

      if (v221 >= 0)
      {
        v223 = *(v219 + 127);
      }

      else
      {
        v223 = v219[14];
      }

      v224 = *(v219 + 23);
      if (v224 >= 0)
      {
        v225 = v219;
      }

      else
      {
        v225 = *v219;
      }

      if (v224 >= 0)
      {
        v226 = *(v219 + 23);
      }

      else
      {
        v226 = v219[1];
      }

      if (v226 >= v223)
      {
        v227 = v223;
      }

      else
      {
        v227 = v226;
      }

      v228 = memcmp(v222, v225, v227);
      if (v228)
      {
        if ((v228 & 0x80000000) == 0)
        {
          goto LABEL_493;
        }
      }

      else if (v223 >= v226)
      {
        goto LABEL_493;
      }

      v229 = *v217;
      v284 = v217[2];
      v283 = v229;
      v217[1] = 0;
      v217[2] = 0;
      *v217 = 0;
      v285 = *(v219 + 8);
      v286 = v219[18];
      v219[16] = 0;
      v219[17] = 0;
      v287 = *(v219 + 19);
      v230 = v219[21];
      v219[18] = 0;
      v219[19] = 0;
      v219[20] = 0;
      v219[21] = 0;
      v289 = *(v219 + 11);
      v231 = v219[24];
      v288 = v230;
      v290 = v231;
      v219[23] = 0;
      v219[24] = 0;
      v219[22] = 0;
      v291 = *(v219 + 50);
      webrtc::SenderOptions::operator=(v217, (a1 + v220));
      while (1)
      {
        v4 = a1 + v220;
        v13 = a1 + v220 - 104;
        if (SHIBYTE(v284) >= 0)
        {
          v232 = &v283;
        }

        else
        {
          v232 = v283;
        }

        if (SHIBYTE(v284) >= 0)
        {
          v233 = HIBYTE(v284);
        }

        else
        {
          v233 = *(&v283 + 1);
        }

        v234 = *(v4 - 81);
        if (v234 >= 0)
        {
          v235 = (a1 + v220 - 104);
        }

        else
        {
          v235 = *(a1 + v220 - 104);
        }

        if (v234 >= 0)
        {
          v236 = *(v4 - 81);
        }

        else
        {
          v236 = *(v4 - 96);
        }

        if (v236 >= v233)
        {
          v237 = v233;
        }

        else
        {
          v237 = v236;
        }

        v238 = memcmp(v232, v235, v237);
        if (v238)
        {
          if ((v238 & 0x80000000) == 0)
          {
LABEL_492:
            webrtc::SenderOptions::operator=(a1 + v220, &v283);
            webrtc::SenderOptions::~SenderOptions(&v283);
LABEL_493:
            v219 = (a1 + v9);
            v218 = v9 + 104;
            v217 = (a1 + v9 + 104);
            if (v217 == a2)
            {
              return;
            }

            goto LABEL_494;
          }
        }

        else if (v233 >= v236)
        {
          goto LABEL_492;
        }

        v220 -= 104;
        webrtc::SenderOptions::operator=(v4, v13);
        if (v220 == -104)
        {
          goto LABEL_534;
        }
      }
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v106 = (v12 - 2) >> 1;
      v107 = v106;
      v267 = v11;
      v268 = v106;
      v266 = v12;
      while (1)
      {
        v109 = v107;
        if (v106 < v107)
        {
          goto LABEL_289;
        }

        v110 = (2 * v107) | 1;
        v111 = a1 + 104 * v110;
        v112 = 2 * v107 + 2;
        v270 = v107;
        if (v112 >= v12)
        {
          goto LABEL_309;
        }

        v113 = v111 + 104;
        v114 = *(v111 + 23);
        v115 = v114 >= 0 ? (a1 + 104 * v110) : *v111;
        v116 = v114 >= 0 ? *(v111 + 23) : *(v111 + 8);
        v117 = *(v111 + 127);
        v118 = v117 >= 0 ? (v111 + 104) : *(v111 + 104);
        v119 = v117 >= 0 ? *(v111 + 127) : *(v111 + 112);
        v120 = v119 >= v116 ? v116 : v119;
        v121 = memcmp(v115, v118, v120);
        if (v121)
        {
          break;
        }

        v53 = v116 >= v119;
        v106 = v268;
        v109 = v270;
        if (v53)
        {
          goto LABEL_309;
        }

LABEL_310:
        v122 = a1 + 104 * v109;
        v123 = *(v113 + 23);
        if (v123 >= 0)
        {
          v124 = v113;
        }

        else
        {
          v124 = *v113;
        }

        if (v123 >= 0)
        {
          v125 = *(v113 + 23);
        }

        else
        {
          v125 = *(v113 + 8);
        }

        v126 = *(v122 + 23);
        if (v126 >= 0)
        {
          v127 = (a1 + 104 * v109);
        }

        else
        {
          v127 = *v122;
        }

        if (v126 >= 0)
        {
          v128 = *(v122 + 23);
        }

        else
        {
          v128 = *(v122 + 8);
        }

        if (v128 >= v125)
        {
          v129 = v125;
        }

        else
        {
          v129 = v128;
        }

        v130 = memcmp(v124, v127, v129);
        if (v130)
        {
          v109 = v270;
          if ((v130 & 0x80000000) == 0)
          {
            goto LABEL_329;
          }
        }

        else
        {
          v109 = v270;
          if (v125 >= v128)
          {
LABEL_329:
            v131 = *v122;
            v284 = *(v122 + 16);
            v283 = v131;
            *(v122 + 8) = 0;
            *(v122 + 16) = 0;
            *v122 = 0;
            v285 = *(v122 + 24);
            v286 = *(v122 + 40);
            *(v122 + 24) = 0;
            *(v122 + 32) = 0;
            *(v122 + 40) = 0;
            v287 = *(v122 + 48);
            v288 = *(v122 + 64);
            *(v122 + 48) = 0;
            *(v122 + 56) = 0;
            *(v122 + 64) = 0;
            v289 = *(v122 + 72);
            v290 = *(v122 + 88);
            *(v122 + 72) = 0;
            *(v122 + 80) = 0;
            *(v122 + 88) = 0;
            v291 = *(v122 + 96);
            v132 = &v283;
            if (SHIBYTE(v284) < 0)
            {
              v132 = v283;
            }

            __s2a = v132;
            if (SHIBYTE(v284) >= 0)
            {
              v133 = HIBYTE(v284);
            }

            else
            {
              v133 = *(&v283 + 1);
            }

            webrtc::SenderOptions::operator=(v122, v113);
            if (v106 < v112)
            {
LABEL_287:
              v108 = v113;
LABEL_288:
              webrtc::SenderOptions::operator=(v108, &v283);
              webrtc::SenderOptions::~SenderOptions(&v283);
              v109 = v270;
              goto LABEL_289;
            }

            while (2)
            {
              v134 = (2 * v112) | 1;
              v135 = a1 + 104 * v134;
              v112 = 2 * v112 + 2;
              if (v112 < v12)
              {
                v108 = v135 + 104;
                v136 = *(v135 + 23);
                if (v136 >= 0)
                {
                  v137 = (a1 + 104 * v134);
                }

                else
                {
                  v137 = *v135;
                }

                if (v136 >= 0)
                {
                  v138 = *(v135 + 23);
                }

                else
                {
                  v138 = *(v135 + 8);
                }

                v139 = *(v135 + 127);
                if (v139 >= 0)
                {
                  v140 = (v135 + 104);
                }

                else
                {
                  v140 = *(v135 + 104);
                }

                if (v139 >= 0)
                {
                  v141 = *(v135 + 127);
                }

                else
                {
                  v141 = *(v135 + 112);
                }

                if (v141 >= v138)
                {
                  v142 = v138;
                }

                else
                {
                  v142 = v141;
                }

                v143 = memcmp(v137, v140, v142);
                if (v143)
                {
                  v12 = v266;
                  v106 = v268;
                  if ((v143 & 0x80000000) == 0)
                  {
                    break;
                  }

LABEL_357:
                  v144 = *(v108 + 23);
                  if (v144 >= 0)
                  {
                    v145 = v108;
                  }

                  else
                  {
                    v145 = *v108;
                  }

                  if (v144 >= 0)
                  {
                    v146 = *(v108 + 23);
                  }

                  else
                  {
                    v146 = *(v108 + 8);
                  }

                  if (v133 >= v146)
                  {
                    v147 = v146;
                  }

                  else
                  {
                    v147 = v133;
                  }

                  v148 = memcmp(v145, __s2a, v147);
                  if (v148)
                  {
                    if (v148 < 0)
                    {
                      goto LABEL_287;
                    }
                  }

                  else if (v146 < v133)
                  {
                    goto LABEL_287;
                  }

                  webrtc::SenderOptions::operator=(v113, v108);
                  v113 = v108;
                  if (v106 < v112)
                  {
                    goto LABEL_288;
                  }

                  continue;
                }

                v53 = v138 >= v141;
                v12 = v266;
                v106 = v268;
                if (!v53)
                {
                  goto LABEL_357;
                }
              }

              break;
            }

            v108 = a1 + 104 * v134;
            v112 = v134;
            goto LABEL_357;
          }
        }

LABEL_289:
        v107 = v109 - 1;
        if (!v109)
        {
          v171 = 0x4EC4EC4EC4EC4EC5 * (v267 >> 3);
          while (1)
          {
            v173 = 0;
            v174 = *a1;
            v275 = *(a1 + 16);
            v274 = v174;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v276 = *(a1 + 24);
            v277 = *(a1 + 40);
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            v278 = *(a1 + 48);
            v279 = *(a1 + 64);
            *(a1 + 48) = 0;
            *(a1 + 56) = 0;
            *(a1 + 64) = 0;
            v280 = *(a1 + 72);
            v281 = *(a1 + 88);
            *(a1 + 72) = 0;
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            v175 = (v171 - 2) >> 1;
            v282 = *(a1 + 96);
            v176 = a1;
            __s2b = v175;
            do
            {
              v177 = v176;
              v178 = v176 + 104 * v173;
              v176 = v178 + 104;
              v179 = 2 * v173;
              v173 = (2 * v173) | 1;
              v180 = v179 + 2;
              if (v179 + 2 < v171)
              {
                v181 = a1;
                v182 = a2;
                v183 = v171;
                v186 = *(v178 + 208);
                v185 = v178 + 208;
                v184 = v186;
                v187 = *(v185 - 81);
                if (v187 >= 0)
                {
                  v188 = v176;
                }

                else
                {
                  v188 = *(v185 - 104);
                }

                if (v187 >= 0)
                {
                  v189 = *(v185 - 81);
                }

                else
                {
                  v189 = *(v185 - 96);
                }

                v190 = *(v185 + 23);
                if (v190 >= 0)
                {
                  v191 = v185;
                }

                else
                {
                  v191 = v184;
                }

                if (v190 >= 0)
                {
                  v192 = *(v185 + 23);
                }

                else
                {
                  v192 = *(v185 + 8);
                }

                if (v192 >= v189)
                {
                  v193 = v189;
                }

                else
                {
                  v193 = v192;
                }

                v194 = memcmp(v188, v191, v193);
                if (v194)
                {
                  v171 = v183;
                  a2 = v182;
                  a1 = v181;
                  v175 = __s2b;
                  if (v194 < 0)
                  {
                    goto LABEL_422;
                  }
                }

                else
                {
                  v53 = v189 >= v192;
                  v171 = v183;
                  a2 = v182;
                  a1 = v181;
                  v175 = __s2b;
                  if (!v53)
                  {
LABEL_422:
                    v176 = v185;
                    v173 = v180;
                  }
                }
              }

              webrtc::SenderOptions::operator=(v177, v176);
            }

            while (v173 <= v175);
            a2 -= 104;
            if (v176 == a2)
            {
              webrtc::SenderOptions::operator=(v176, &v274);
            }

            else
            {
              webrtc::SenderOptions::operator=(v176, a2);
              webrtc::SenderOptions::operator=(a2, &v274);
              v195 = v176 - a1 + 104;
              if (v195 >= 105)
              {
                v196 = 0x4EC4EC4EC4EC4EC5 * (v195 >> 3) - 2;
                v197 = v196 >> 1;
                v198 = a1 + 104 * (v196 >> 1);
                v199 = *(v198 + 23);
                if (v199 >= 0)
                {
                  v200 = (a1 + 104 * (v196 >> 1));
                }

                else
                {
                  v200 = *v198;
                }

                if (v199 >= 0)
                {
                  v201 = *(v198 + 23);
                }

                else
                {
                  v201 = *(v198 + 8);
                }

                v202 = *(v176 + 23);
                if (v202 >= 0)
                {
                  v203 = v176;
                }

                else
                {
                  v203 = *v176;
                }

                if (v202 >= 0)
                {
                  v204 = *(v176 + 23);
                }

                else
                {
                  v204 = *(v176 + 8);
                }

                if (v204 >= v201)
                {
                  v205 = v201;
                }

                else
                {
                  v205 = v204;
                }

                v206 = memcmp(v200, v203, v205);
                if (v206)
                {
                  if (v206 < 0)
                  {
LABEL_466:
                    v207 = *v176;
                    v284 = *(v176 + 16);
                    v283 = v207;
                    *(v176 + 8) = 0;
                    *(v176 + 16) = 0;
                    *v176 = 0;
                    v285 = *(v176 + 24);
                    v286 = *(v176 + 40);
                    *(v176 + 24) = 0;
                    *(v176 + 32) = 0;
                    *(v176 + 40) = 0;
                    v287 = *(v176 + 48);
                    v288 = *(v176 + 64);
                    *(v176 + 48) = 0;
                    *(v176 + 56) = 0;
                    *(v176 + 64) = 0;
                    v289 = *(v176 + 72);
                    v290 = *(v176 + 88);
                    *(v176 + 72) = 0;
                    *(v176 + 80) = 0;
                    *(v176 + 88) = 0;
                    if (SHIBYTE(v284) >= 0)
                    {
                      v208 = &v283;
                    }

                    else
                    {
                      v208 = v283;
                    }

                    if (SHIBYTE(v284) >= 0)
                    {
                      v209 = HIBYTE(v284);
                    }

                    else
                    {
                      v209 = *(&v283 + 1);
                    }

                    v291 = *(v176 + 96);
                    webrtc::SenderOptions::operator=(v176, (a1 + 104 * (v196 >> 1)));
                    if (v196 >= 2)
                    {
                      while (1)
                      {
                        v210 = v197 - 1;
                        v197 = (v197 - 1) >> 1;
                        v211 = a1 + 104 * v197;
                        v212 = *(v211 + 23);
                        if (v212 >= 0)
                        {
                          v213 = (a1 + 104 * v197);
                        }

                        else
                        {
                          v213 = *v211;
                        }

                        if (v212 >= 0)
                        {
                          v214 = *(v211 + 23);
                        }

                        else
                        {
                          v214 = *(v211 + 8);
                        }

                        if (v209 >= v214)
                        {
                          v215 = v214;
                        }

                        else
                        {
                          v215 = v209;
                        }

                        v216 = memcmp(v213, v208, v215);
                        if (v216)
                        {
                          if ((v216 & 0x80000000) == 0)
                          {
                            break;
                          }
                        }

                        else if (v214 >= v209)
                        {
                          break;
                        }

                        webrtc::SenderOptions::operator=(v198, (a1 + 104 * v197));
                        v198 = a1 + 104 * v197;
                        if (v210 <= 1)
                        {
                          goto LABEL_488;
                        }
                      }
                    }

                    v211 = v198;
LABEL_488:
                    webrtc::SenderOptions::operator=(v211, &v283);
                    webrtc::SenderOptions::~SenderOptions(&v283);
                  }
                }

                else if (v201 < v204)
                {
                  goto LABEL_466;
                }
              }
            }

            webrtc::SenderOptions::~SenderOptions(&v274);
            if (v171-- <= 2)
            {
              return;
            }
          }
        }
      }

      v106 = v268;
      v109 = v270;
      if (v121 < 0)
      {
        goto LABEL_310;
      }

LABEL_309:
      v113 = a1 + 104 * v110;
      v112 = v110;
      goto LABEL_310;
    }

    v13 = v12 >> 1;
    v14 = (a1 + 104 * (v12 >> 1));
    if (v11 < 0x3401)
    {
      v16 = a3 - 1;
      if (a4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4 = 104 * v13;
      v15 = *a1;
      v284 = *(a1 + 16);
      v283 = v15;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v285 = *(a1 + 24);
      v286 = *(a1 + 40);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v287 = *(a1 + 48);
      v288 = *(a1 + 64);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v289 = *(a1 + 72);
      v290 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v291 = *(a1 + 96);
      webrtc::SenderOptions::operator=(a1, v14);
      webrtc::SenderOptions::operator=(v14, &v283);
      webrtc::SenderOptions::~SenderOptions(&v283);
      v16 = a3 - 1;
      if (a4)
      {
        goto LABEL_36;
      }
    }

    v17 = *(a1 - 81);
    if (v17 >= 0)
    {
      v18 = (a1 - 104);
    }

    else
    {
      v18 = *(a1 - 104);
    }

    if (v17 >= 0)
    {
      v13 = *(a1 - 81);
    }

    else
    {
      v13 = *(a1 - 96);
    }

    v19 = *(a1 + 23);
    if (v19 >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    if (v19 >= 0)
    {
      a4 = *(a1 + 23);
    }

    else
    {
      a4 = *(a1 + 8);
    }

    if (a4 >= v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = a4;
    }

    v22 = memcmp(v18, v20, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (v13 >= a4)
    {
LABEL_136:
      v55 = *a1;
      v275 = *(a1 + 16);
      v274 = v55;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v276 = *(a1 + 24);
      v277 = *(a1 + 40);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v278 = *(a1 + 48);
      v279 = *(a1 + 64);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v280 = *(a1 + 72);
      v281 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      if (v275 >= 0)
      {
        v56 = &v274;
      }

      else
      {
        v56 = v274;
      }

      if (v275 >= 0)
      {
        v13 = HIBYTE(v275);
      }

      else
      {
        v13 = *(&v274 + 1);
      }

      v282 = *(a1 + 96);
      v57 = *(a2 - 81);
      if (v57 >= 0)
      {
        v58 = (a2 - 104);
      }

      else
      {
        v58 = *(a2 - 104);
      }

      if (v57 >= 0)
      {
        a4 = *(a2 - 81);
      }

      else
      {
        a4 = *(a2 - 96);
      }

      if (a4 >= v13)
      {
        v59 = v13;
      }

      else
      {
        v59 = a4;
      }

      v60 = memcmp(v56, v58, v59);
      if (v60)
      {
        if (v60 < 0)
        {
          goto LABEL_170;
        }
      }

      else if (v13 < a4)
      {
LABEL_170:
        for (i = a1 + 104; ; i += 104)
        {
          if (i == a2)
          {
            goto LABEL_534;
          }

          v65 = *(i + 23);
          if (v65 >= 0)
          {
            v66 = i;
          }

          else
          {
            v66 = *i;
          }

          if (v65 >= 0)
          {
            a4 = *(i + 23);
          }

          else
          {
            a4 = *(i + 8);
          }

          if (a4 >= v13)
          {
            v67 = v13;
          }

          else
          {
            v67 = a4;
          }

          v68 = memcmp(v56, v66, v67);
          if (v68)
          {
            if (v68 < 0)
            {
              goto LABEL_185;
            }
          }

          else if (v13 < a4)
          {
            goto LABEL_185;
          }
        }
      }

      for (i = a1 + 104; i < a2; i += 104)
      {
        v61 = *(i + 23);
        if (v61 >= 0)
        {
          v62 = i;
        }

        else
        {
          v62 = *i;
        }

        if (v61 >= 0)
        {
          a4 = *(i + 23);
        }

        else
        {
          a4 = *(i + 8);
        }

        if (a4 >= v13)
        {
          v63 = v13;
        }

        else
        {
          v63 = a4;
        }

        v64 = memcmp(v56, v62, v63);
        if (v64)
        {
          if (v64 < 0)
          {
            break;
          }
        }

        else if (v13 < a4)
        {
          break;
        }
      }

LABEL_185:
      v4 = v16;
      v69 = a2;
      if (i < a2)
      {
        v69 = a2 - 104;
        if (a2 == a1)
        {
          goto LABEL_534;
        }

        while (1)
        {
          v70 = *(v69 + 23);
          if (v70 >= 0)
          {
            v71 = v69;
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            a4 = *(v69 + 23);
          }

          else
          {
            a4 = *(v69 + 8);
          }

          if (a4 >= v13)
          {
            v72 = v13;
          }

          else
          {
            v72 = a4;
          }

          v73 = memcmp(v56, v71, v72);
          if (v73)
          {
            if ((v73 & 0x80000000) == 0)
            {
              break;
            }
          }

          else if (v13 >= a4)
          {
            break;
          }

          v69 -= 104;
          if (v69 + 104 == a1)
          {
            goto LABEL_534;
          }
        }
      }

LABEL_237:
      if (i < v69)
      {
        v74 = *i;
        v284 = *(i + 16);
        v283 = v74;
        *(i + 8) = 0;
        *(i + 16) = 0;
        *i = 0;
        v285 = *(i + 24);
        v286 = *(i + 40);
        *(i + 24) = 0;
        *(i + 32) = 0;
        *(i + 40) = 0;
        v287 = *(i + 48);
        v288 = *(i + 64);
        *(i + 48) = 0;
        *(i + 56) = 0;
        *(i + 64) = 0;
        v289 = *(i + 72);
        v290 = *(i + 88);
        *(i + 72) = 0;
        *(i + 80) = 0;
        *(i + 88) = 0;
        v291 = *(i + 96);
        webrtc::SenderOptions::operator=(i, v69);
        webrtc::SenderOptions::operator=(v69, &v283);
        webrtc::SenderOptions::~SenderOptions(&v283);
        i += 104;
        if (i == a2)
        {
          goto LABEL_534;
        }

        if (v275 >= 0)
        {
          v75 = &v274;
        }

        else
        {
          v75 = v274;
        }

        if (v275 >= 0)
        {
          v13 = HIBYTE(v275);
        }

        else
        {
          v13 = *(&v274 + 1);
        }

        while (1)
        {
          v76 = *(i + 23);
          if (v76 >= 0)
          {
            v77 = i;
          }

          else
          {
            v77 = *i;
          }

          if (v76 >= 0)
          {
            a4 = *(i + 23);
          }

          else
          {
            a4 = *(i + 8);
          }

          if (a4 >= v13)
          {
            v78 = v13;
          }

          else
          {
            v78 = a4;
          }

          v79 = memcmp(v75, v77, v78);
          if (v79)
          {
            if (v79 < 0)
            {
LABEL_222:
              if (v69 == a1)
              {
                goto LABEL_534;
              }

              v69 -= 104;
              while (1)
              {
                v80 = *(v69 + 23);
                if (v80 >= 0)
                {
                  v81 = v69;
                }

                else
                {
                  v81 = *v69;
                }

                if (v80 >= 0)
                {
                  a4 = *(v69 + 23);
                }

                else
                {
                  a4 = *(v69 + 8);
                }

                if (a4 >= v13)
                {
                  v82 = v13;
                }

                else
                {
                  v82 = a4;
                }

                v83 = memcmp(v75, v81, v82);
                if (v83)
                {
                  if ((v83 & 0x80000000) == 0)
                  {
                    goto LABEL_237;
                  }
                }

                else if (v13 >= a4)
                {
                  goto LABEL_237;
                }

                v69 -= 104;
                if (v69 + 104 == a1)
                {
                  goto LABEL_534;
                }
              }
            }
          }

          else if (v13 < a4)
          {
            goto LABEL_222;
          }

          i += 104;
          if (i == a2)
          {
            goto LABEL_534;
          }
        }
      }

      if (i - 104 != a1)
      {
        webrtc::SenderOptions::operator=(a1, (i - 104));
      }

      webrtc::SenderOptions::operator=(i - 104, &v274);
      webrtc::SenderOptions::~SenderOptions(&v274);
      a4 = 0;
      a3 = v4;
      goto LABEL_3;
    }

LABEL_36:
    v23 = *a1;
    v275 = *(a1 + 16);
    v274 = v23;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v276 = *(a1 + 24);
    v277 = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v278 = *(a1 + 48);
    v279 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v280 = *(a1 + 72);
    v281 = *(a1 + 88);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v282 = *(a1 + 96);
    if (a1 + 104 == a2)
    {
      goto LABEL_534;
    }

    v13 = 0;
    v24 = v275 >= 0 ? &v274 : v274;
    v25 = v275 >= 0 ? HIBYTE(v275) : *(&v274 + 1);
    while (1)
    {
      v26 = *(a1 + v13 + 127);
      if (v26 >= 0)
      {
        v27 = (a1 + v13 + 104);
      }

      else
      {
        v27 = *(a1 + v13 + 104);
      }

      if (v26 >= 0)
      {
        a4 = *(a1 + v13 + 127);
      }

      else
      {
        a4 = *(a1 + v13 + 112);
      }

      if (v25 >= a4)
      {
        v28 = a4;
      }

      else
      {
        v28 = v25;
      }

      v29 = memcmp(v27, v24, v28);
      if (!v29)
      {
        if (a4 >= v25)
        {
          break;
        }

        goto LABEL_44;
      }

      if ((v29 & 0x80000000) == 0)
      {
        break;
      }

LABEL_44:
      v13 += 104;
      if (a1 + v13 + 104 == a2)
      {
        goto LABEL_534;
      }
    }

    v9 = v16;
    a4 = a1 + v13 + 104;
    if (v13)
    {
      break;
    }

    v13 = a2;
    if (a4 < a2)
    {
      v35 = a2 - 104;
      do
      {
        while (1)
        {
          v13 = v35;
          v36 = *(v35 + 23);
          v37 = (v36 & 0x80u) == 0 ? v13 : *v13;
          v38 = (v36 & 0x80u) == 0 ? v36 : *(v13 + 8);
          v39 = v25 >= v38 ? v38 : v25;
          v40 = memcmp(v37, v24, v39);
          v35 = v13 - 104;
          if (!v40)
          {
            break;
          }

          if (a4 >= v13 || v40 < 0)
          {
            goto LABEL_90;
          }
        }
      }

      while (a4 < v13 && v38 >= v25);
    }

LABEL_90:
    i = a4;
    if (a4 < v13)
    {
      v41 = v13;
      do
      {
        v42 = *i;
        v284 = *(i + 16);
        v283 = v42;
        *(i + 8) = 0;
        *(i + 16) = 0;
        *i = 0;
        v285 = *(i + 24);
        v286 = *(i + 40);
        *(i + 24) = 0;
        *(i + 32) = 0;
        *(i + 40) = 0;
        v287 = *(i + 48);
        v288 = *(i + 64);
        *(i + 48) = 0;
        *(i + 56) = 0;
        *(i + 64) = 0;
        v289 = *(i + 72);
        v290 = *(i + 88);
        *(i + 72) = 0;
        *(i + 80) = 0;
        *(i + 88) = 0;
        v291 = *(i + 96);
        webrtc::SenderOptions::operator=(i, v41);
        webrtc::SenderOptions::operator=(v41, &v283);
        webrtc::SenderOptions::~SenderOptions(&v283);
        i += 104;
        if (i == a2)
        {
          goto LABEL_534;
        }

        if (v275 >= 0)
        {
          v43 = &v274;
        }

        else
        {
          v43 = v274;
        }

        if (v275 >= 0)
        {
          v44 = HIBYTE(v275);
        }

        else
        {
          v44 = *(&v274 + 1);
        }

        while (1)
        {
          v45 = *(i + 23);
          v46 = v45 >= 0 ? i : *i;
          v4 = v45 >= 0 ? *(i + 23) : *(i + 8);
          v47 = v44 >= v4 ? v4 : v44;
          v48 = memcmp(v46, v43, v47);
          if (v48)
          {
            break;
          }

          if (v4 >= v44)
          {
            goto LABEL_113;
          }

LABEL_101:
          i += 104;
          if (i == a2)
          {
            goto LABEL_534;
          }
        }

        if (v48 < 0)
        {
          goto LABEL_101;
        }

LABEL_113:
        if (v41 == a1)
        {
          goto LABEL_534;
        }

        v41 -= 104;
LABEL_117:
        v49 = *(v41 + 23);
        if (v49 >= 0)
        {
          v50 = v41;
        }

        else
        {
          v50 = *v41;
        }

        if (v49 >= 0)
        {
          v4 = *(v41 + 23);
        }

        else
        {
          v4 = *(v41 + 8);
        }

        if (v44 >= v4)
        {
          v51 = v4;
        }

        else
        {
          v51 = v44;
        }

        v52 = memcmp(v50, v43, v51);
        if (!v52)
        {
          if (v4 < v44)
          {
            continue;
          }

LABEL_116:
          v41 -= 104;
          if (v41 + 104 == a1)
          {
            goto LABEL_534;
          }

          goto LABEL_117;
        }

        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_116;
        }
      }

      while (i < v41);
    }

    if (i - 104 != a1)
    {
      webrtc::SenderOptions::operator=(a1, (i - 104));
    }

    webrtc::SenderOptions::operator=(i - 104, &v274);
    webrtc::SenderOptions::~SenderOptions(&v274);
    v53 = a4 >= v13;
    a3 = v9;
    v9 = 104;
    a4 = v269;
    if (!v53)
    {
LABEL_135:
      a4 = 0;
      goto LABEL_3;
    }

    {
      a2 = i - 104;
      if (v54)
      {
        return;
      }

      goto LABEL_2;
    }

    if (!v54)
    {
      goto LABEL_135;
    }
  }

  v13 = a2 - 104;
  if (a2 != a1)
  {
    do
    {
      v30 = *(v13 + 23);
      if (v30 >= 0)
      {
        v31 = v13;
      }

      else
      {
        v31 = *v13;
      }

      if (v30 >= 0)
      {
        v32 = *(v13 + 23);
      }

      else
      {
        v32 = *(v13 + 8);
      }

      if (v25 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v25;
      }

      v34 = memcmp(v31, v24, v33);
      if (v34)
      {
        if (v34 < 0)
        {
          goto LABEL_90;
        }
      }

      else if (v32 < v25)
      {
        goto LABEL_90;
      }

      v13 -= 104;
    }

    while (v13 + 104 != a1);
  }

LABEL_534:
  __break(1u);
LABEL_535:
  if (v9 < a4)
  {
    goto LABEL_536;
  }
}