uint64_t sub_29A2334B4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 0x13uLL)
  {
    return 0;
  }

  v2 = *v1 == 0x7553786966667573 && v1[1] == 0x6974757469747362;
  if (!v2 || *(v1 + 11) != 0x736E6F6974757469)
  {
    return 0;
  }

  v5 = a1[2] + 19;
  a1[1] = v1 + 19;
  a1[2] = v5;
  a1[4] += 19;
  return 1;
}

uint64_t sub_29A23353C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2335B4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2335B4(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[1];
  if (a1[5] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "specializes", 11);
  if (*v1 != 0x696C616963657073 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[2] + 11;
  a1[1] = v1 + 11;
  a1[2] = v4;
  a1[4] += 11;
  return 1;
}

uint64_t sub_29A233670(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2336E8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2336E8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1768714355 || *(v1 + 4) != 25966)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A23375C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2337D4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2337D4(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0x11)
  {
    return 0;
  }

  v2 = *v1 == 0x797274656D6D7973 && *(v1 + 8) == 0x746E656D75677241;
  if (!v2 || *(v1 + 16) != 115)
  {
    return 0;
  }

  v5 = a1[2] + 17;
  a1[1] = v1 + 17;
  a1[2] = v5;
  a1[4] += 17;
  return 1;
}

uint64_t sub_29A233850(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2338C8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2338C8(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 0x10uLL)
  {
    return 0;
  }

  if (*v1 != 0x797274656D6D7973 || v1[1] != 0x6E6F6974636E7546)
  {
    return 0;
  }

  v4 = a1[2] + 16;
  a1[1] = v1 + 2;
  a1[2] = v4;
  a1[4] += 16;
  return 1;
}

uint64_t sub_29A23396C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2339E4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2339E4(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[1];
  if (a1[5] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "timeSamples", 11);
  if (*v1 != 0x706D6153656D6974 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[2] + 11;
  a1[1] = v1 + 11;
  a1[2] = v4;
  a1[4] += 11;
  return 1;
}

uint64_t sub_29A233AA0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A233B18(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A233B18(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1718185589 || *(v1 + 3) != 1836216166)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A233B98(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A233C10(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A233C10(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x53746E6169726176 || *(v1 + 8) != 29797)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A233CC4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A233D3C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A233D3C(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[1];
  if (a1[5] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "variantSets", 11);
  if (*v1 != 0x53746E6169726176 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[2] + 11;
  a1[1] = v1 + 11;
  a1[2] = v4;
  a1[4] += 11;
  return 1;
}

uint64_t sub_29A233DF8(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A233E70(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A233E70(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 8uLL || *v1 != 0x73746E6169726176)
  {
    return 0;
  }

  v3 = a1[2] + 8;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 8;
  return 1;
}

__n128 sub_29A233F10(uint64_t a1)
{
  if (sub_29A233F64(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A233F64(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 2037539190 || *(v1 + 3) != 1735289209)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

__n128 sub_29A233FE4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (!sub_29A234050(a1) || (result.n128_f64[0] = sub_29A23035C(a1), (v3 & 1) == 0))
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A234044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A234050(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 14906)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

void sub_29A2340B0(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 264);
  v5 = *(v4 - 4);
  if (v5 == 12)
  {
    sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
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

    std::string::append((a2 + 208), p_p, size);
LABEL_9:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v8 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_11;
  }

  if (v5 > 5)
  {
    if (v5 > 8)
    {
      if (v5 == 9)
      {
        sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
        if (*(a2 + 255) < 0)
        {
          operator delete(*(a2 + 232));
        }

        *(a2 + 232) = __p;
      }

      else if (v5 == 10)
      {
        sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
        UnitFromName = pxrInternal__aapl__pxrReserved__::SdfGetUnitFromName(&__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (!*(UnitFromName + 2) && !strcmp((*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(*UnitFromName + 8) & 0x7FFFFFFFFFFFFFFFLL)))
        {
          sub_29A02887C(&v40, *a1, *(*(a1 + 32) + 8) - *a1);
          v34 = std::string::insert(&v40, 0, "'");
          v35 = *&v34->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v36 = std::string::append(&__p, "' is not a valid display unit");
          v37 = *&v36->__r_.__value_.__l.__data_;
          v42 = v36->__r_.__value_.__r.__words[2];
          __dst = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          v38 = *(a1 + 32);
          sub_29A2266C8(&__p, a1, (v38 + 48));
          sub_29A276708(a2, v38, &__p, &__dst);
          if (v45 < 0)
          {
            operator delete(v44);
          }

          exception = __cxa_allocate_exception(0x20uLL);
          sub_29A22DB7C(exception, &__dst, a1);
          __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
        }

        v13 = sub_29A22DD10((a2 + 1024));
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v14)
        {
          v14 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        __p.__r_.__value_.__l.__size_ = &off_2A2048D70;
        v15 = operator new(0x18uLL);
        *v15 = *UnitFromName;
        atomic_store(0, v15 + 4);
        __p.__r_.__value_.__r.__words[0] = v15;
        atomic_fetch_add_explicit(v15 + 4, 1u, memory_order_relaxed);
        (*(*v13 + 152))(v13, a2 + 1032, v14 + 128, &__p);
        sub_29A186B14(&__p);
        pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v16);
      }

      return;
    }

    if (v5 != 6)
    {
      if (v5 != 8)
      {
        return;
      }

      sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
      if (SHIBYTE(v42) < 0)
      {
        if (*(&__dst + 1) != 6 || (*__dst == 1818391920 ? (v21 = *(__dst + 4) == 25449) : (v21 = 0), !v21))
        {
          if (*(&__dst + 1) != 7)
          {
            goto LABEL_79;
          }

          p_dst = __dst;
          goto LABEL_63;
        }
      }

      else
      {
        if (HIBYTE(v42) != 6)
        {
          if (HIBYTE(v42) != 7)
          {
            goto LABEL_79;
          }

          p_dst = &__dst;
LABEL_63:
          v22 = *p_dst;
          v23 = *(p_dst + 3);
          if (v22 != 1986622064 || v23 != 1702125942)
          {
            goto LABEL_79;
          }

          v25 = 1;
          goto LABEL_75;
        }

        if (__dst != 1818391920 || WORD2(__dst) != 25449)
        {
LABEL_79:
          std::operator+<char>();
          v30 = std::string::append(&__p, "' is not a valid permission constant");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v32 = *(a1 + 32);
          sub_29A2266C8(&__p, a1, (v32 + 48));
          sub_29A276708(a2, v32, &__p, &v40);
          if (v45 < 0)
          {
            operator delete(v44);
          }

          v33 = __cxa_allocate_exception(0x20uLL);
          sub_29A22DB7C(v33, &v40, a1);
          __cxa_throw(v33, &unk_2A2048840, sub_29A2265D4);
        }
      }

      v25 = 0;
LABEL_75:
      v27 = sub_29A22DD10((a2 + 1024));
      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v28)
      {
        v28 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      __p.__r_.__value_.__l.__size_ = &off_2A2048CA8 + 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = v25;
      (*(*v27 + 152))(v27, a2 + 1032, v28 + 256, &__p);
      sub_29A186B14(&__p);
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v29);
      if (SHIBYTE(v42) < 0)
      {
        v8 = __dst;
LABEL_11:
        operator delete(v8);
        return;
      }

      return;
    }

LABEL_24:
    v10 = -8;
    if (v5 == 4)
    {
      v10 = -4;
    }

    SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(v10 + v4 - 4));
    sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataStart(&__p, SpecTypeFromContext, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v5 == 4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 5u);
    }

    return;
  }

  switch(v5)
  {
    case 1:
      sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append((a2 + 160), v17, v18);
      goto LABEL_9;
    case 2:
      sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append((a2 + 184), v19, v20);
      goto LABEL_9;
    case 4:
      goto LABEL_24;
  }
}

void sub_29A234708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A234944@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2048CA8 + 3;
  *a2 = *result;
  return result;
}

void *sub_29A234960(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2048D60, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A2349D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2349F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A234A10(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A234A38(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A234A50(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A0FB9C4(&v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unsigned int *sub_29A234B74@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A234BC8(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A234C48(a1);
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Au);
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A234C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A234C48(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 61)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A234CE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A234D4C(a1, a2) & 1) != 0 || (sub_29A23529C(a1, a2))
  {
    return 1;
  }

  return sub_29A236904(a1, a2);
}

uint64_t sub_29A234D4C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A234DCC(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A234E80(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A234DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A234DCC(uint64_t a1)
{
  if (sub_29A234E18(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A234E18(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1701736270)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

void sub_29A234E80(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 264) - 4);
  if ((v3 - 5) > 1)
  {
    if (v3 > 25)
    {
      if (v3 == 26)
      {
        goto LABEL_13;
      }

      if (v3 != 29)
      {
        return;
      }

      __p.__r_.__value_.__l.__size_ = &off_2A2048E28 + 3;
      v7 = (a2 + 328);
      v5 = sub_29A2351D8((a2 + 304), (a2 + 328), &unk_29B4D6118, &v7);
      sub_29A18606C(v5 + 5, &__p);
      p_p = &__p;
    }

    else
    {
      if (v3 != 2)
      {
        if (v3 != 3)
        {
          return;
        }

LABEL_13:
        memset(&__p, 0, sizeof(__p));
        sub_29A235058(a2 + 352, &__p);
        v7 = &__p;
        sub_29A1E234C(&v7);
        return;
      }

      v9 = &off_2A2048E28 + 3;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_SetDefault((a2 + 1032), v8, a2);
      p_p = v8;
    }

    sub_29A186B14(p_p);
    return;
  }

  __p.__r_.__value_.__l.__size_ = 0;
  sub_29A18606C((a2 + 928), &__p);
  sub_29A186B14(&__p);
  if (pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::IsRecordingString((a2 + 624)))
  {
    sub_29A008E78(&__p, "None");
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetRecordedString(a2 + 624, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
}

uint64_t sub_29A235058(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A1E23D4(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *sub_29A2351D8(uint64_t **a1, double *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 4);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v6;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x38uLL);
    v11[4] = **a4;
    v11[6] = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29A23529C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A235328(a1, a2);
  if (v4)
  {
    sub_29A235720(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2368A8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A23531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A235328(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 123)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A2353C0(v6, a2);
  return 1;
}

void sub_29A2353B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2353C0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_29A235478(a2 + 992, &v5);
  if (*(a2 + 231) < 0)
  {
    **(a2 + 208) = 0;
    *(a2 + 216) = 0;
  }

  else
  {
    *(a2 + 208) = 0;
    *(a2 + 231) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xBu);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xCu);
  v4 = 0;
  sub_29A235520((a2 + 944), &v4);
  sub_29A184A10(&v4, 0);
  result = pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::IsRecordingString((a2 + 624));
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StopRecordingString(a2 + 624);
  }

  return result;
}

void sub_29A235478(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_29A00C9A4();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_29A08C784(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void *sub_29A235520(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v15[4] = result;
    if (v11)
    {
      v12 = sub_29A00C9BC(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v15[0] = v12;
    v15[1] = v13;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v15[2] = v13 + 8;
    v15[3] = &v12[8 * v11];
    sub_29A235614(v3, v15);
    v7 = *(v3 + 8);
    result = sub_29A2356CC(v15);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  *(v3 + 8) = v7;
  return result;
}

void sub_29A235600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2356CC(va);
  _Unwind_Resume(a1);
}

void sub_29A235614(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      sub_29A184A10(v4++, 0);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t sub_29A2356CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_29A184A10((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A235720(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A235780(a1, a2);
  if ((sub_29A2367B0(a1, a2) & 1) == 0)
  {
    sub_29A23674C(a1);
  }

  return 1;
}

uint64_t sub_29A235780(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A2357F8(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A2357E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2357F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A235850(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A236604(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A235850(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2358D0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A236504(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2358C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2358D0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A235930(a1, a2))
  {
    sub_29A235B0C(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A235FEC(a1, a2);
  }
}

uint64_t sub_29A235930(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2359B0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A235AB0(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2359A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2359B0(uint64_t a1)
{
  if (sub_29A2359FC(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2359FC(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x616E6F6974636964 || *(v1 + 8) != 31090)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

void sub_29A235AB0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  --*(a2 + 125);
  v4 = 1;
  sub_29A235478(a2 + 992, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v3);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xDu);
}

uint64_t sub_29A235B0C(void *a1, uint64_t a2)
{
  if ((sub_29A235C1C(a1) & 1) == 0)
  {
    sub_29A235BB8(a1);
  }

  if ((sub_29A235CEC(a1, a2) & 1) == 0)
  {
    sub_29A235C88(a1);
  }

  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A23529C(a1, a2) & 1) == 0)
  {
    sub_29A235F88(a1);
  }

  return 1;
}

void sub_29A235BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A235BB8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected spaces", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A235C1C(void *a1)
{
    ;
  }

  v2 = sub_29A2262B0(a1);
  if (v2)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
  }

  return v2;
}

void sub_29A235C88(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected string or identifier", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A235CEC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A235D6C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A235DB8(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A235D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A235D6C(void *a1, uint64_t a2)
{
  if ((sub_29A22E5EC(a1, a2) & 1) == 0)
  {
    result = sub_29A225AEC(a1);
    if (!result)
    {
      return result;
    }

      ;
    }
  }

  return 1;
}

void sub_29A235DB8(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
  if (v14 >= 0)
  {
    v3 = HIBYTE(v14);
  }

  else
  {
    v3 = __p[1];
  }

  if (!v3)
  {
    goto LABEL_33;
  }

  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = *v4;
  if (v5 == 39)
  {
    if (v3 < 3 || (v14 >= 0 ? (v8 = __p) : (v8 = __p[0]), *(v8 + 1) != 39 || (v14 >= 0 ? (v9 = __p) : (v9 = __p[0]), *(v9 + 2) != 39)))
    {
LABEL_29:
      v10 = 1;
      goto LABEL_30;
    }
  }

  else
  {
    if (v5 != 34)
    {
      goto LABEL_33;
    }

    if (v3 < 3)
    {
      goto LABEL_29;
    }

    v6 = __p;
    v7 = v14 >= 0 ? __p : __p[0];
    if (*(v7 + 1) != 34)
    {
      goto LABEL_29;
    }

    if (v14 < 0)
    {
      v6 = __p[0];
    }

    if (*(v6 + 2) != 34)
    {
      goto LABEL_29;
    }
  }

  v10 = 3;
LABEL_30:
  pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v4, v3, v10, 0, &v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v11;
  v14 = v12;
LABEL_33:
  sub_29A070BA0(a2 + 968);
}

void sub_29A235F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A235F24(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected =", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A235F88(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected dictionary", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A235FEC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A236070(a1, a2) || !sub_29A235C1C(a1) || !sub_29A235CEC(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A236904(a1, a2);
}

uint64_t sub_29A236070(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A230290(a1, a2);
  if (v4)
  {
    sub_29A2360FC(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A236384(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2360F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2360FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  if ((sub_29A236174(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A236164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236174(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = sub_29A23620C(a1);
  if (v4)
  {
    v5 = *(*(a2 + 264) - 4);
    if (v5 == 12)
    {
      v6 = 208;
      goto LABEL_7;
    }

    if (v5 == 2)
    {
      v6 = 184;
LABEL_7:
      std::string::append((a2 + v6), "[]");
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v4;
}

void sub_29A236200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23620C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 91)
  {
    return 0;
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  sub_29A23626C(a1);
  return 1;
}

uint64_t sub_29A23626C(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);

  return sub_29A2362C4(a1);
}

uint64_t sub_29A2362C4(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 93)
  {
    sub_29A236320(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A236320(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A236384(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  if ((pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetupFactory(a2 + 624, a2 + 208) & 1) == 0)
  {
    std::operator+<char>();
    v4 = std::string::append(&__p, "' for dictionary");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12 = v4->__r_.__value_.__r.__words[2];
    v11 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v6 = *(a1 + 32);
    sub_29A2266C8(&__p, a1, (v6 + 48));
    sub_29A276708(a2, v6, &__p, &v11);
    if (v10 < 0)
    {
      operator delete(v9);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, &v11, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xDu);
}

void sub_29A2364A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A236504(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1000) - 1;
  v4 = *(*(a2 + 992) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v5 = *(a2 + 952);
  v6 = *(a2 + 944);
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((v5 - 16), (*(a2 + 976) - 24));
  if ((v4 >> v3))
  {
    v8 = v5 - v6 - 8;
    sub_29A18562C(v7, (*(a2 + 944) + v8));
    pxrInternal__aapl__pxrReserved__::VtDictionary::clear((*(a2 + 944) + v8));
  }

  else
  {
    sub_29A1854E8(v7, (a2 + 928));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xCu);
  --*(a2 + 1000);
  v9 = *(a2 + 976);
  v10 = (v9 - 24);
  if (*(v9 - 1) < 0)
  {
    operator delete(*v10);
  }

  *(a2 + 976) = v10;
  if (*(a2 + 231) < 0)
  {
    **(a2 + 208) = 0;
    *(a2 + 216) = 0;
  }

  else
  {
    *(a2 + 208) = 0;
    *(a2 + 231) = 0;
  }

  v11 = 0;
  sub_29A235478(a2 + 992, &v11);
}

__n128 sub_29A236604(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A235850(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A236664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236670(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22DED0(a1) & 1) != 0);
  v2 = sub_29A2366E0(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A2366E0(void *a1)
{
  if (sub_29A22DE78(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 59)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    return 1;
  }

  return 0;
}

void sub_29A23674C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A2367B0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 125)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A236848(v6, a2);
  return 1;
}

void sub_29A23683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A236848(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  --*(a2 + 125);
  v3 = (*(a2 + 119) - 8);
  sub_29A184A10(v3, 0);
  *(a2 + 119) = v3;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
}

void sub_29A2368A8(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 264) - 4) == 5)
  {
    sub_29A18562C((a2 + 928), *(a2 + 944));
    pxrInternal__aapl__pxrReserved__::VtDictionary::clear(*(a2 + 944));

    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  }
}

uint64_t sub_29A236904(uint64_t a1, char *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A236984(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A23B6A4(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A236978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236984(uint64_t a1, char *a2)
{
  if (sub_29A236A08(a1, a2) & 1) != 0 || (sub_29A2380E8(a1, a2, v4) & 1) != 0 || (sub_29A238970(a1, a2) & 1) != 0 || (sub_29A238C1C(a1, a2))
  {
    return 1;
  }

  return sub_29A23940C(a1, a2);
}

uint64_t sub_29A236A08(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A236A88(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A237FD0(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A236A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

double sub_29A236A88(uint64_t a1, uint64_t a2)
{
  *&result = sub_29A236AFC(a1, a2).n128_u64[0];
  if ((v5 & 1) == 0 && (sub_29A2374F0(a1, a2) & 1) == 0 && (sub_29A237668(a1, a2) & 1) == 0)
  {

    *&result = sub_29A2378B0(a1, a2).n128_u64[0];
  }

  return result;
}

__n128 sub_29A236AFC(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A237304(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A236B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A236B80(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (v6.n128_u64[0] != *(a1 + 64) && *v6.n128_u64[0] == 45)
  {
    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v6.n128_u64[0] + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
  }

  result.n128_f64[0] = sub_29A236C04(a1, a2);
  if ((v5 & 1) == 0)
  {
    result = v6;
    *v2 = v6;
    v2[1] = v7;
  }

  return result;
}

void sub_29A236BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

double sub_29A236C04(uint64_t a1, uint64_t a2)
{
  *&result = sub_29A236C68(a1, a2).n128_u64[0];
  if ((v5 & 1) == 0)
  {
    *&result = sub_29A2370D0(a1, a2).n128_u64[0];
    if ((v6 & 1) == 0)
    {

      *&result = sub_29A237194(a1).n128_u64[0];
    }
  }

  return result;
}

__n128 sub_29A236C68(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236CE0(a1) || (sub_29A236D68(a1, a2), (sub_29A236EA8(a1) & 1) == 0))
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A236CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236CE0(void *a1)
{
  v1 = a1[4];
  v2 = a1[8];
  if (v1 == v2 || *v1 - 48 > 9)
  {
    return 0;
  }

  v3 = v1 + 1;
  v4 = a1[5];
  a1[4] = v3;
  a1[5] = v4 + 1;
  v5 = a1[7];
  a1[7] = v5 + 1;
  if (v3 != v2)
  {
    v6 = v5 + 2;
    v7 = v4 + 2;
    do
    {
      if (*v3 - 48 > 9)
      {
        break;
      }

      a1[4] = ++v3;
      a1[5] = v7;
      a1[7] = v6++;
      ++v7;
    }

    while (v3 != v2);
  }

  return 1;
}

__n128 sub_29A236D68(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if (sub_29A236E04(a1, a2))
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    if (v5 != v4)
    {
      v6 = *(a1 + 56) + 1;
      v7 = *(a1 + 40) + 1;
      do
      {
        if (*v5 - 48 > 9)
        {
          break;
        }

        *(a1 + 32) = ++v5;
        *(a1 + 40) = v7;
        *(a1 + 56) = v6++;
        ++v7;
      }

      while (v5 != v4);
    }
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A236DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236E04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 46)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  if (*(*(a2 + 264) - 4) == 1)
  {
    std::string::append((a2 + 160), ".");
  }

  return 1;
}

void sub_29A236E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A236EA8(void *a1)
{
  v1 = a1[4];
  if (v1 != a1[8] && (*v1 & 0xDF) == 0x45)
  {
    v2 = a1[5] + 1;
    a1[4] = v1 + 1;
    a1[5] = v2;
    ++a1[7];
    sub_29A236F04(a1);
  }

  return 1;
}

uint64_t sub_29A236F04(void *a1)
{
  sub_29A236F4C(a1);
  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A236F9C(a1);
  }

  return 1;
}

uint64_t sub_29A236F4C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 45 && v2 != 43)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  return 1;
}

void sub_29A236F9C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485100;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::plus<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Digit>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A237070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A2370D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (!sub_29A23713C(a1, a2) || (sub_29A236EA8(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A237130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23713C(void *a1, uint64_t a2)
{
  v3 = sub_29A236E04(a1, a2);
  if (v3 && (sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A236F9C(a1);
  }

  return v3;
}

__n128 sub_29A237194(uint64_t a1)
{
  if (sub_29A2371E0(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2371E0(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28265 || *(v1 + 2) != 102)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

__n128 sub_29A23724C(uint64_t a1)
{
  if (sub_29A237298(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A237298(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 24942 || *(v1 + 2) != 110)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A237304(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v5);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue((a2 + 624), v6);
  return sub_29A224BA0(v6);
}

void sub_29A237360(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X2>, char *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetNumericValueFromString(*a1, *(*(a1 + 32) + 8) - *a1, a3, a4);
  if (*a4 == 1)
  {
    v19[0] = "sdf/textFileFormatParser.cpp";
    v19[1] = "_HelperGetNumericValueFromString";
    v19[2] = 541;
    v19[3] = "std::pair<BOOL, Sdf_ParserHelpers::Value> pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_HelperGetNumericValueFromString(const Input &, Sdf_TextParserContext &) [Input = PXR_INTERNAL_NS_pegtl::internal::action_input<PXR_INTERNAL_NS_pegtl::memory_input<>>]";
    v20 = 0;
    v7 = __dst;
    sub_29A02887C(__dst, *a1, *(*(a1 + 32) + 8) - *a1);
    if (v18 < 0)
    {
      v7 = __dst[0];
    }

    sub_29A2266C8(v13, a1, (*(a1 + 32) + 48));
    v9 = *(a2 + 71);
    if (v9 < 0)
    {
      v11 = " in file ";
      v12 = "";
      if (*(a2 + 56))
      {
        v12 = *(a2 + 48);
      }

      else
      {
        v11 = "";
      }
    }

    else
    {
      v10 = v9 == 0;
      if (*(a2 + 71))
      {
        v11 = " in file ";
      }

      else
      {
        v11 = "";
      }

      if (v10)
      {
        v12 = "";
      }

      else
      {
        v12 = (a2 + 48);
      }
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v19, "Integer literal '%s' on line %zu%s%s out of range, parsing as double.  Consider exponential notation for large floating point values.", v8, v7, v14, v11, v12);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_29A2374AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_29A224BA0(v27 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2374F0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A230310(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A237570(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A237564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A237570(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6);
  v7[0] = v6;
  if ((v6 & 7) != 0)
  {
    v3 = v6 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v7[0] = v3;
    }
  }

  v8 = 4;
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue((a2 + 624), v7);
  sub_29A224BA0(v7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A237624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_29A224BA0(&a17);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A237668(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E66C(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2376E8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2376DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2376E8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*(*(a1 + 32) + 8) - *a1);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(*(a1 + 32) + 8) - *a1;
  }

  if (v4 >= 3 && (!memcmp(*a1, "", v5) || !memcmp(v3, "'''", v5)))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v3, v4, v6, 0, &v13);
  if (sub_29A1D9440(5))
  {
    std::operator+<char>();
    v7 = std::string::append(&v12, "\n");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_29A008D14(__p, v13, *(&v13 + 1));
  }

  else
  {
    *__p = v13;
    v10 = v14;
  }

  v11 = 3;
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue((a2 + 624), __p);
  sub_29A224BA0(__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_29A23784C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A2378B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A237934(a1) & 1) != 0 || sub_29A237C84(a1))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A237EC0(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A237928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A237934(__n128 *a1)
{
  v2 = sub_29A23798C(a1);
  if (v2 && (sub_29A2379F8(a1) & 1) == 0)
  {
    sub_29A237B64(a1);
  }

  return v2;
}

uint64_t sub_29A23798C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 16448 || *(v1 + 2) != 64)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A2379F8(__n128 *a1)
{
  sub_29A237A58(a1);
  if (v2)
  {
    return 1;
  }

  while (1)
  {
    sub_29A237AE0(a1);
    if ((v3 & 1) == 0)
    {
      result = sub_29A22EB74(a1);
      if (!result)
      {
        break;
      }
    }

    sub_29A237A58(a1);
    if (v5)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_29A237A58(uint64_t a1)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if (sub_29A23798C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
    v5 = *(a1 + 56) + 1;
    v6 = *(a1 + 40) + 1;
    v7 = 2;
    do
    {
      if (v3 == v4)
      {
        break;
      }

      if (*v3 != 64)
      {
        break;
      }

      *(a1 + 32) = ++v3;
      *(a1 + 40) = v6;
      *(a1 + 56) = v5++;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

__n128 sub_29A237AE0(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 92 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A23798C(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A237B64(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x190uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485160;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::AtAtAt, PXR_INTERNAL_NS_pegtl::rep_opt<2, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::At>>, PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::EscapeAtAtAt, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A237C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A237C84(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 64)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A237D00(a1) & 1) == 0)
  {
    sub_29A237D78(a1);
  }

  return 1;
}

uint64_t sub_29A237D00(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 64)
    {
      break;
    }

    if ((sub_29A22EB74(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

void sub_29A237D78(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xA8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485170;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::At, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A237E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A237EC0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*(*(a1 + 32) + 8) - v4);
  v7 = v5 >= 3 && *v4 == 16448 && *(v4 + 2) == 64;
  pxrInternal__aapl__pxrReserved__::Sdf_EvalAssetPath(v4, v5, v7, &v14);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v8);
  sub_29A224F18(__dst, v8);
  v13 = 5;
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue((a2 + 624), __dst);
  sub_29A224BA0(__dst);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_29A237F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A224BA0(&a15);
  sub_29A0D2850(&a9);
  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_29A237FD0(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (!pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_ValueSetAtomic(a2, __p))
  {
    v4 = *(a1 + 32);
    sub_29A2266C8(v6, a1, (v4 + 48));
    sub_29A276708(a2, v4, v6, __p);
    if (v7 < 0)
    {
      operator delete(v6[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2380A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A2380E8(uint64_t a1, const char *a2, char *a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = sub_29A238174(a1, a2, a3);
  if (v5)
  {
    sub_29A2381FC(a1, a2);
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A238858(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A238168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A238174(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 32);
  if (v5 == *(a1 + 64) || *v5 != 40)
  {
    return 0;
  }

  v3 = *(a1 + 40) + 1;
  *(a1 + 32) = v5 + 1;
  *(a1 + 40) = v3;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginTuple((a2 + 624), a2, a3);
  return 1;
}

void sub_29A2381F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2381FC(void *a1, const char *a2)
{
  if ((sub_29A238254(a1, a2) & 1) == 0)
  {
    sub_29A2386FC(a1);
  }

  if ((sub_29A23838C(a1, a2, v4) & 1) == 0)
  {
    sub_29A238414(a1);
  }

  return 1;
}

uint64_t sub_29A238254(void *a1, const char *a2)
{
    ;
  }

  v4 = sub_29A2382B8(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A2382B8(uint64_t a1, const char *a2)
{
  v4 = sub_29A238310(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A238540(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A238310(uint64_t a1, const char *a2)
{
  sub_29A236AFC(a1, a2);
  if ((v4 & 1) == 0 && (sub_29A2374F0(a1, a2) & 1) == 0 && (sub_29A237668(a1, a2) & 1) == 0)
  {
    sub_29A2378B0(a1, a2);
    if ((v6 & 1) == 0)
    {
      result = sub_29A238174(a1, a2, v5);
      if (!result)
      {
        return result;
      }

      sub_29A2381FC(a1, a2);
    }
  }

  return 1;
}

uint64_t sub_29A23838C(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 32);
  if (v5 == *(a1 + 64) || *v5 != 41)
  {
    return 0;
  }

  v3 = *(a1 + 40) + 1;
  *(a1 + 32) = v5 + 1;
  *(a1 + 40) = v3;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndTuple((a2 + 624), a2, a3);
  return 1;
}

void sub_29A238408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A238414(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485180;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TupleValueClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2384E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A238540(uint64_t a1, const char *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A238310(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A2385A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2385AC(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 44)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

__n128 sub_29A238640(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = *(a1 + 32);
  if (v2 == *(a1 + 64) || *v2 != 44)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  else
  {
    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v2 + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
      ;
    }
  }

  return result;
}

void sub_29A2386EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2386FC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x100uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485190;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TupleValueItem>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2387F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A238858(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_ValueSetTuple(a2, __p) & 1) == 0)
  {
    v4 = *(a1 + 32);
    sub_29A2266C8(v6, a1, (v4 + 48));
    sub_29A276708(a2, v4, v6, __p);
    if (v7 < 0)
    {
      operator delete(v6[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A238928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A238970(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2389F0(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A238AB8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2389E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2389F0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  if (*v1 != 91)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v4 = a1[4];
  if (v4 == a1[8] || *v4 != 93)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v4 + 1;
  a1[5] = v5;
  ++a1[7];
  return 1;
}

void sub_29A238AB8(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::IsRecordingString((a2 + 624)))
  {
    sub_29A008E78(&__p, "[]");
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetRecordedString(a2 + 624, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_ValueSetShaped(a2, v9) & 1) == 0)
  {
    v4 = *(a1 + 32);
    sub_29A2266C8(&__p, a1, (v4 + 48));
    sub_29A276708(a2, v4, &__p, v9);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, v9, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A238BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A238C1C(uint64_t a1, char *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A238CA8(a1, a2);
  if (v4)
  {
    sub_29A238D30(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2392D8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A238C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A238CA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 91)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginList((a2 + 624));
  return 1;
}

void sub_29A238D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A238D30(void *a1, const char *a2)
{
  if ((sub_29A238D88(a1, a2) & 1) == 0)
  {
    sub_29A238FC8(a1);
  }

  if ((sub_29A239124(a1, a2) & 1) == 0)
  {
    sub_29A2391AC(a1);
  }

  return 1;
}

uint64_t sub_29A238D88(void *a1, const char *a2)
{
    ;
  }

  v4 = sub_29A238DEC(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A238DEC(void *a1, const char *a2)
{
  v4 = sub_29A238E44(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A238F5C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A238E44(void *a1, const char *a2)
{
  sub_29A236AFC(a1, a2);
  if ((v4 & 1) == 0 && (sub_29A2374F0(a1, a2) & 1) == 0 && (sub_29A237668(a1, a2) & 1) == 0)
  {
    sub_29A2378B0(a1, a2);
    if ((v5 & 1) == 0)
    {
      if (sub_29A238CA8(a1, a2))
      {
        sub_29A238EE0(a1, a2, v6, v7);
      }

      else
      {
        result = sub_29A238174(a1, a2, v6);
        if (!result)
        {
          return result;
        }

        sub_29A2381FC(a1, a2);
      }
    }
  }

  return 1;
}

uint64_t sub_29A238EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_29A238D88(a1, a2, a3, a4) & 1) == 0)
  {
    sub_29A238FC8(a1);
  }

  if ((sub_29A239124(a1, a2) & 1) == 0)
  {
    sub_29A2391AC(a1);
  }

  return 1;
}

void sub_29A238F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A238F5C(uint64_t a1, const char *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A238E44(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A238FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A238FC8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851A0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListValueItem>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2390C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A239124(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 93)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndList((a2 + 624));
  return 1;
}

void sub_29A2391A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A2391AC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851B0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListValueClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A239278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A2392D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_ValueSetList(a2, __p) & 1) == 0)
  {
    v5 = *(a1 + 32);
    sub_29A2266C8(v7, a1, (v5 + 48));
    sub_29A276708(a2, v5, v7, __p);
    if (v8 < 0)
    {
      operator delete(v7[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  if (*(*(a2 + 33) - 4) == 6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2393C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A23940C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A23948C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A23B470(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A239480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23948C(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 60)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  if ((sub_29A239508(a1, a2) & 1) == 0)
  {
    sub_29A23B350(a1);
  }

  return 1;
}

uint64_t sub_29A239508(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 62)
  {
    return sub_29A23954C(a1, a2);
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  return 1;
}

uint64_t sub_29A23954C(void *a1, uint64_t a2)
{
  result = sub_29A2395B8(a1, a2);
  if (result)
  {
    v4 = a1[4];
    if (v4 == a1[8] || *v4 != 62)
    {
      return 0;
    }

    else
    {
      v5 = a1[5] + 1;
      a1[4] = v4 + 1;
      a1[5] = v5;
      ++a1[7];
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A2395B8(void *a1, uint64_t a2)
{
  if (sub_29A239648(a1, a2))
  {
    return 1;
  }

  if (sub_29A23AFE4(a1, a2))
  {
    return 1;
  }

  sub_29A23B2D4(a1, a2);
  if (v4)
  {
    return 1;
  }

  v5 = a1[4];
  if (v5 != a1[8] && *v5 == 46)
  {
    v6 = a1[5] + 1;
    a1[4] = v5 + 1;
    a1[5] = v6;
    ++a1[7];
    return 1;
  }

  return 0;
}

uint64_t sub_29A239648(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 47)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  sub_29A2396CC(a1, a2);
  return 1;
}

void sub_29A2396C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2396CC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A239748(a1);
  if (v4)
  {
    sub_29A23A100(a1);
    sub_29A23A174(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A23973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A239748(void *a1)
{
  v2 = sub_29A225AEC(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A2397A0(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A2397A0(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = sub_29A239848(a1);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  if (v2 && sub_29A239E8C(a1) && sub_29A225AEC(a1))
  {
      ;
    }
  }

  else
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A23982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A239848(void *a1)
{
  result = sub_29A239894(a1);
  if (result)
  {
    result = sub_29A225AEC(a1);
    if (result)
    {
        ;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_29A239894(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 47)
  {
    return sub_29A2398D8(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A2398D8(void *a1)
{
  v2 = sub_29A226234(a1);
  if (v2)
  {
    sub_29A23994C(a1);
    sub_29A2275B4(a1);
    if (v3)
    {
      do
      {
        sub_29A239DE4(a1);
        sub_29A2275B4(a1);
      }

      while ((v4 & 1) != 0);
    }
  }

  return v2;
}

uint64_t sub_29A23994C(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A2399CC(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A239AF0(a1);
  }

  sub_29A239C24(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A239CB8(a1);
  }

  return 1;
}

void sub_29A2399CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C80;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VariantSetName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A239A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A239AF0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C90;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<PXR_INTERNAL_NS_pegtl::one<'='>, PXR_INTERNAL_NS_pegtl::blank>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A239BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A239C24(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 64) && *v4 == 46)
  {
    v2 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v2;
    ++*(a1 + 56);
  }

  do
  {
      ;
    }
  }

  while ((sub_29A2273BC(a1) & 1) != 0);
  return 1;
}

void sub_29A239CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A239CB8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VarSelClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A239D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A239DE4(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A2399CC(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A239AF0(a1);
  }

  sub_29A239C24(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A239CB8(a1);
  }

  return 1;
}

void sub_29A239E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A239E8C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 47)
  {
    return sub_29A239ED0(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A239ED0(void *a1)
{
  v2 = sub_29A226234(a1);
  if (v2)
  {
    sub_29A239F44(a1);
    sub_29A2275B4(a1);
    if (v3)
    {
      do
      {
        sub_29A23A058(a1);
        sub_29A2275B4(a1);
      }

      while ((v4 & 1) != 0);
    }
  }

  return v2;
}

uint64_t sub_29A239F44(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A2399CC(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A239AF0(a1);
  }

  sub_29A239FC4(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A239CB8(a1);
  }

  return 1;
}

uint64_t sub_29A239FC4(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 64) && *v4 == 46)
  {
    v2 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v2;
    ++*(a1 + 56);
  }

  do
  {
      ;
    }
  }

  while ((sub_29A2273BC(a1) & 1) != 0);
  return 1;
}

void sub_29A23A04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23A058(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A2399CC(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A239AF0(a1);
  }

  sub_29A239FC4(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A239CB8(a1);
  }

  return 1;
}

void sub_29A23A0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23A100(void *a1)
{
  sub_29A2275B4(a1);
  v3 = v2;
  if (v2)
  {
    sub_29A23A058(a1);
    sub_29A2275B4(a1);
    if (v4)
    {
      do
      {
        sub_29A23A058(a1);
        sub_29A2275B4(a1);
      }

      while ((v5 & 1) != 0);
    }
  }

  return v3;
}

__n128 sub_29A23A174(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v7.n128_u64[0] != *(a1 + 64) && *v7.n128_u64[0] == 46 && (v5 = *(a1 + 40) + 1, *(a1 + 32) = v7.n128_u64[0] + 1, *(a1 + 40) = v5, ++*(a1 + 56), sub_29A23A220(a1)))
  {
    sub_29A23A31C(a1, a2);
  }

  else
  {
    result = v7;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void sub_29A23A214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23A220(__n128 *a1)
{
  v2 = sub_29A225AEC(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A23A278(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A23A278(__n128 *a1)
{
  v1 = a1 + 2;
  v5 = a1[2];
  v6 = a1[3];
  if (v5.n128_u64[0] != a1[4].n128_u64[0] && *v5.n128_u64[0] == 58 && (v3 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v5.n128_u64[0] + 1, a1[2].n128_u64[1] = v3, ++a1[3].n128_u64[1], sub_29A225AEC(a1)))
  {
      ;
    }
  }

  else
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A23A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23A31C(uint64_t a1, uint64_t a2)
{
  if (sub_29A23A38C(a1, a2))
  {
    return 1;
  }

  sub_29A23AA04(a1, a2);
  if (v4)
  {
    sub_29A23AA70(a1, a2);
    return 1;
  }

  return sub_29A23AE60(a1, a2);
}

uint64_t sub_29A23A38C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  if (v6 == *(a1 + 64) || *v6 != 91)
  {
    return 0;
  }

  v4 = *(a1 + 40) + 1;
  *(a1 + 32) = v6 + 1;
  *(a1 + 40) = v4;
  ++*(a1 + 56);
  if ((sub_29A2395B8() & 1) == 0)
  {
    sub_29A23A44C(a1);
  }

  sub_29A23A578(a1);
  sub_29A23A6F0(a1, a2);
  return 1;
}

void sub_29A23A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A23A44C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23A518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A23A578(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 93)
  {
    sub_29A23A5C8(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A23A5C8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CC0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPathClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23A690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A23A6F0(__n128 *a1, uint64_t a2)
{
  v2 = a1[2].n128_u64[0];
  if (v2 == a1[4].n128_u64[0] || *v2 != 46)
  {
    return 0;
  }

  v3 = a1[2].n128_u64[1] + 1;
  a1[2].n128_u64[0] = (v2 + 1);
  a1[2].n128_u64[1] = v3;
  ++a1[3].n128_u64[1];
  sub_29A23A750(a1, a2);
  return 1;
}

uint64_t sub_29A23A750(__n128 *a1, uint64_t a2)
{
  if ((sub_29A23A220(a1) & 1) == 0)
  {
    sub_29A23A7B8(a1);
  }

  sub_29A23A8E4(a1, a2);
  return 1;
}

void sub_29A23A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A23A7B8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CD0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::RelationalAttributeName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23A884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A23A8E4(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4 != a1[8] && *v4 == 91)
  {
    v5 = a1[5] + 1;
    a1[4] = v4 + 1;
    a1[5] = v5;
    ++a1[7];
    sub_29A23A994(a1);
    return 1;
  }

  sub_29A23AA04(a1, a2);
  if (v6)
  {
    sub_29A23AA70(a1, a2);
    return 1;
  }

  return sub_29A23AE60(a1, a2);
}

__n128 sub_29A23A994(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if ((sub_29A2395B8() & 1) == 0)
  {
    sub_29A23A44C(a1);
  }

  if ((sub_29A23A578(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

void sub_29A23A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23AA04(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236E04(a1, a2) || (result.n128_u64[0] = sub_29A228BF4(a1).n128_u64[0], (v4 & 1) == 0))
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A23AA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23AA70(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A23AAE0(a1);
  if (v4)
  {
    sub_29A23ADF0(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A23AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23AAE0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 91)
  {
    sub_29A23ACB4(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  sub_29A23AB38(a1);
  return 1;
}

uint64_t sub_29A23AB38(void *a1)
{
  if ((sub_29A2395B8() & 1) == 0)
  {
    sub_29A23AB88(a1);
  }

  return sub_29A23A578(a1);
}

void sub_29A23AB88(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23AC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A23ACB4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x80uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CE0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::BracketPath<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23AD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A23ADF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (sub_29A236E04(a1, a2) && sub_29A2291D4(a1))
  {
      ;
    }
  }

  else
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A23AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23AE60(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A236E04(a1, a2);
  if (v3)
  {
    sub_29A229510(a1);
    if ((v4 & 1) == 0)
    {
      sub_29A23AEB8(a1);
    }
  }

  return v3;
}

void sub_29A23AEB8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Expression");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23AF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A23AFE4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = sub_29A2297B8(a1);
  if (v4)
  {
    do
    {
      sub_29A23B068(a1);
    }

    while ((v5 & 1) != 0);
    sub_29A23B0EC(a1, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v4;
}

void sub_29A23B058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23B068(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 47 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A2297B8(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

__n128 sub_29A23B0EC(__n128 *a1, uint64_t a2)
{
  v2 = a1 + 2;
  v5 = a1[2];
  v6 = a1[3];
  if (v5.n128_u64[0] == a1[4].n128_u64[0] || *v5.n128_u64[0] != 47 || (v3 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v5.n128_u64[0] + 1, a1[2].n128_u64[1] = v3, ++a1[3].n128_u64[1], (sub_29A23B17C(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A23B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23B17C(__n128 *a1, uint64_t a2)
{
  if (sub_29A23B1DC(a1))
  {
    sub_29A23A174(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A23B24C(a1, a2);
  }
}

uint64_t sub_29A23B1DC(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = sub_29A239748(a1);
  if (v2)
  {
    sub_29A23A100(a1);
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A23B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23B24C(__n128 *a1, uint64_t a2)
{
  v2 = a1[2].n128_u64[0];
  if (v2 == a1[4].n128_u64[0])
  {
    return 0;
  }

  if (*v2 != 46)
  {
    return 0;
  }

  v5 = a1[2].n128_u64[1] + 1;
  a1[2].n128_u64[0] = (v2 + 1);
  a1[2].n128_u64[1] = v5;
  ++a1[3].n128_u64[1];
  result = sub_29A23A220(a1);
  if (result)
  {
    sub_29A23A31C(a1, a2);
    return 1;
  }

  return result;
}

__n128 sub_29A23B2D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (sub_29A23B1DC(a1))
  {
    result.n128_u64[0] = sub_29A23A174(a1, a2).n128_u64[0];
  }

  else if ((sub_29A23B24C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A23B344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A23B350(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x110uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851C0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RightAngleBracket, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Path, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RightAngleBracket>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A23B470(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(__dst, *a1, *(*(a1 + 32) + 8) - *a1);
  if ((v10 & 0x80u) == 0)
  {
    v3 = __dst;
  }

  else
  {
    v3 = __dst[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = __dst[1];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v3, v4, 1, 0, __p);
  v5 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v6, __p);
  }

  else
  {
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
  }

  sub_29A23B5AC(a2 + 928, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
  sub_29A1DE3A4(&v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A23B564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A23B5AC(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A20470E8 + 1;
  sub_29A1E21F4(a1, a2);
  sub_29A1E2240((a1 + 4), a2 + 1);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A23B650(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A23B65C(uint64_t a1, _DWORD *a2)
{
  *(a1 + 8) = &off_2A20470E8 + 1;
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  return a1;
}

void sub_29A23B6A4(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 264) - 4);
  switch(v3)
  {
    case 2:
      sub_29A186EF4(v6, (a2 + 928));
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_SetDefault((a2 + 1032), v6, a2);
      sub_29A186B14(v6);
      break;
    case 29:
      v5 = (a2 + 328);
      v4 = sub_29A2351D8((a2 + 304), (a2 + 328), &unk_29B4D6118, &v5);
      sub_29A1854E8(v4 + 5, (a2 + 928));
      break;
    case 5:

      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
      break;
  }
}

void sub_29A23B7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A23B7C4(uint64_t a1, uint64_t a2)
{
  SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(*(a2 + 264) - 8));
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataEnd(SpecTypeFromContext, a2, __p) & 1) == 0)
  {
    v5 = *(a1 + 32);
    sub_29A2266C8(v7, a1, (v5 + 48));
    sub_29A276708(a2, v5, v7, __p);
    if (v8 < 0)
    {
      operator delete(v7[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A23B8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A23B8EC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = sub_29A23B958(a1, a2);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A23B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23B958(uint64_t a1, uint64_t a2)
{
  if (!sub_29A23B9BC(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A22E5EC(a1, a2);
}

uint64_t sub_29A23B9BC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A23BA2C(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 7u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A23BA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23BA2C(uint64_t a1)
{
  if (sub_29A23BA78(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23BA78(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28516 || *(v1 + 2) != 99)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A23BAE4(uint64_t a1, char *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A23BB64(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A23C350(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A23BB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23BB64(void *a1, char *a2)
{
  result = sub_29A23BBF8(a1, a2);
  if (result)
  {
    result = sub_29A235C1C(a1);
    if (result)
    {
      result = sub_29A230290(a1, a2);
      if (result)
      {
        result = sub_29A234BC8(a1, a2);
        if (result)
        {
          if (sub_29A234D4C(a1, a2))
          {
            return 1;
          }

          else
          {

            return sub_29A238C1C(a1, a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A23BBF8(uint64_t a1, uint64_t a2)
{
  if (sub_29A23BC7C(a1, a2) & 1) != 0 || (sub_29A23BDD0(a1, a2) & 1) != 0 || (sub_29A23BF28(a1, a2) & 1) != 0 || (sub_29A23C084(a1, a2))
  {
    return 1;
  }

  return sub_29A23C1E8(a1, a2);
}

uint64_t sub_29A23BC7C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A23BD18(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 1;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v5;
}

void sub_29A23BD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23BD18(uint64_t a1)
{
  if (sub_29A23BD64(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23BD64(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25697 || *(v1 + 2) != 100)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A23BDD0(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A23BE68(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 2;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 2;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v5;
}

void sub_29A23BE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23BE68(uint64_t a1)
{
  if (sub_29A23BEB4(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23BEB4(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701602660 || *(v1 + 4) != 25972)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A23BF28(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A23BFC4(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 5;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 5;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v5;
}

void sub_29A23BFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23BFC4(uint64_t a1)
{
  if (sub_29A23C010(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23C010(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701867617 || *(v1 + 4) != 25710)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A23C084(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A23C11C(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 4;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 4;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v5;
}

void sub_29A23C110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23C11C(uint64_t a1)
{
  if (sub_29A23C168(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23C168(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1885696624 || *(v1 + 3) != 1684956528)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

uint64_t sub_29A23C1E8(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A23C284(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 3;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 3;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return v5;
}

void sub_29A23C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23C284(uint64_t a1)
{
  if (sub_29A23C2D0(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23C2D0(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1919903090 || *(v1 + 3) != 1919247474)
  {
    return 0;
  }

  v4 = a1[5] + 7;
  a1[4] = v1 + 7;
  a1[5] = v4;
  a1[7] += 7;
  return 1;
}

void sub_29A23C350(uint64_t a1, uint64_t a2)
{
  SpecTypeFromContext = pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_GetSpecTypeFromContext(*(*(a2 + 264) - 8));
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_KeyValueMetadataEnd(SpecTypeFromContext, a2, __p) & 1) == 0)
  {
    v5 = *(a1 + 32);
    sub_29A2266C8(v7, a1, (v5 + 48));
    sub_29A276708(a2, v5, v7, __p);
    if (v8 < 0)
    {
      operator delete(v7[3]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, __p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  *(a2 + 616) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A23C430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A23C478(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_29A23C4F8(a1);
  if (result)
  {
    sub_29A23C5F0();
  }

  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

void sub_29A23C4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23C4F8(uint64_t a1)
{
  if (sub_29A23C544(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23C544(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x657461636F6C6572 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[5] + 9;
  a1[4] = v1 + 9;
  a1[5] = v4;
  a1[7] += 9;
  return 1;
}

void sub_29A23C5F0()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v0 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A23C674(void *a1, uint64_t a2)
{
  if ((sub_29A234BC8(a1, a2) & 1) == 0)
  {
    sub_29A235F24(a1);
  }

  if ((sub_29A23C6EC(a1, a2) & 1) == 0)
  {
    sub_29A23FCF0(a1);
  }

  return 1;
}

void sub_29A23C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23C6EC(void *a1, uint64_t a2)
{
  v4 = sub_29A23C760(a1);
  if (v4)
  {
      ;
    }

    sub_29A23C820(a1, a2);
    if ((sub_29A23EC00(a1, a2) & 1) == 0)
    {
      sub_29A23EB9C(a1);
    }
  }

  return v4;
}

uint64_t sub_29A23C760(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 123)
  {
    sub_29A23C7BC(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A23C7BC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A23C820(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A23C898(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A23C888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23C898(void *a1, uint64_t a2)
{
  v4 = sub_29A23C8F0(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A23EB30(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A23C8F0(void *a1, uint64_t a2)
{
  if (!sub_29A23C954(a1, a2) || !sub_29A23EA90(a1))
  {
    return 0;
  }

  return sub_29A23C954(a1, a2);
}

uint64_t sub_29A23C954(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A23948C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A23C9D4(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A23C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A23C9D4(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v4 = *(*(a2 + 264) - 4);
  if (v4 <= 19)
  {
    if ((v4 - 18) < 2)
    {
      sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
      v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v18 = __p.__r_.__value_.__r.__words[0];
      sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v18;
      }

      if (v50 >= 0)
      {
        v20 = HIBYTE(v50);
      }

      else
      {
        v20 = *(&__dst + 1);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(p_p, v20, 1, 0, v47);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v42, v47);
      pxrInternal__aapl__pxrReserved__::SdfPath::IsEmpty(&v42);
    }

    if (v4 != 3)
    {
      if (v4 == 14)
      {
        sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
        v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v10 = __p.__r_.__value_.__r.__words[0];
        sub_29A02887C(v47, *a1, *(*(a1 + 32) + 8) - *a1);
        if (v9 >= 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = v10;
        }

        if (v48 >= 0)
        {
          v12 = HIBYTE(v48);
        }

        else
        {
          v12 = v47[1];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v11, v12, 1, 0, &__dst);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&__p, &__dst);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      return;
    }

    goto LABEL_30;
  }

  if (v4 > 25)
  {
    if ((v4 - 26) >= 2)
    {
      if (v4 != 28)
      {
        return;
      }

      sub_29A02887C(v47, *a1, *(*(a1 + 32) + 8) - *a1);
      v25 = SHIBYTE(v48);
      v26 = v47[0];
      sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
      if (v25 >= 0)
      {
        v27 = v47;
      }

      else
      {
        v27 = v26;
      }

      if (v50 >= 0)
      {
        v28 = HIBYTE(v50);
      }

      else
      {
        v28 = *(&__dst + 1);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v27, v28, 1, 0, &__p);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47[0]);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v43, &__p);
      }

      else
      {
        v43 = 0;
        sub_29A225424(&v43);
      }

      v31 = sub_29A22DD10((a2 + 1024));
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v32)
      {
        v32 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      sub_29A23B65C(v47, &v43);
      (*(*v31 + 152))(v31, a2 + 1032, v32 + 88, v47);
      sub_29A186B14(v47);
      if (*(a2 + 384) != *(a2 + 392))
      {
        v34 = sub_29A22DD10((a2 + 1024));
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
        {
          sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        }

        __dst = 0uLL;
        v50 = 0;
        sub_29A23DC84(v34, v47);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v33);
      sub_29A1DCEA8(&v43);
      goto LABEL_95;
    }

LABEL_30:
    sub_29A02887C(v47, *a1, *(*(a1 + 32) + 8) - *a1);
    v13 = SHIBYTE(v48);
    v14 = v47[0];
    sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
    if (v13 >= 0)
    {
      v15 = v47;
    }

    else
    {
      v15 = v14;
    }

    if (v50 >= 0)
    {
      v16 = HIBYTE(v50);
    }

    else
    {
      v16 = *(&__dst + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v15, v16, 1, 0, &__p);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v42, &__p);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v42))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((a2 + 1032), &__dst);
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v42, &__dst, v47);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if ((*(a2 + 376) & 1) == 0)
    {
      v47[0] = 0;
      v47[1] = 0;
      v48 = 0;
      sub_29A235058(a2 + 352, v47);
      *&__dst = v47;
      sub_29A1E234C(&__dst);
    }

    sub_29A1E28B4(a2 + 352, &v42);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v42.__r_.__value_.__r.__words + 1);
    sub_29A1DE3A4(&v42);
LABEL_95:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v30 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_97;
  }

  if ((v4 - 20) < 2)
  {
    sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
    v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v6 = __p.__r_.__value_.__r.__words[0];
    sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
    if (v5 >= 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = v6;
    }

    if (v50 >= 0)
    {
      v8 = HIBYTE(v50);
    }

    else
    {
      v8 = *(&__dst + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v7, v8, 1, 0, v47);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&__p, v47);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v4 == 24)
  {
    sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v22 = __p.__r_.__value_.__r.__words[0];
    sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
    if (v21 >= 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = v22;
    }

    if (v50 >= 0)
    {
      v24 = HIBYTE(v50);
    }

    else
    {
      v24 = *(&__dst + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v23, v24, 1, 0, v47);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v43, v47);
    if (*(a2 + 568))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::IsEmpty(&v43);
    }

    sub_29A2258F0((a2 + 560), &v43);
    sub_29A225948((a2 + 564), &v43 + 1);
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesSourcePath((a2 + 560), &__p);
    if (v45 == 1)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString((a2 + 560), &v42);
      v36 = std::string::insert(&v42, 0, "'");
      v37 = *&v36->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&__p, "' is not a valid relocates source path");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v50 = v38->__r_.__value_.__r.__words[2];
      __dst = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      v40 = *(a1 + 32);
      sub_29A2266C8(&__p, a1, (v40 + 48));
      sub_29A276708(a2, v40, &__p, &__dst);
      if (v46 < 0)
      {
        operator delete(v45);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, &__dst, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    *(a2 + 568) = 1;
    sub_29A1DCEA8(&v43);
    if (SHIBYTE(v48) < 0)
    {
      v30 = v47[0];
LABEL_97:
      operator delete(v30);
    }
  }
}

void sub_29A23D8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  sub_29A1DCEA8(&a19);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A23DC84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  (*(*a1 + 136))(&v3);
  if (sub_29A23DDC0(&v3))
  {
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(&v3);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

_DWORD *sub_29A23DD74(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    v5 = sub_29A23E6C4(a1, a2, a3);
  }

  else
  {
    v5 = sub_29A23E7D8(v4, a2, a3) + 4;
  }

  *(a1 + 8) = v5;
  return v5 - 4;
}

uint64_t sub_29A23DDC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4855AFLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2048EF0);
}

int *sub_29A23DE4C(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 3;
      if (v19 >= a5)
      {
        sub_29A23DFE4(a1, a2, a1[1], a2 + 8 * a5);
        v20 = &a3[2 * a5];
      }

      else
      {
        a1[1] = sub_29A1E2158(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A23DFE4(a1, v5, v10, &v5[2 * a5]);
        v20 = (a3 + v18);
      }

      sub_29A23E240(&v22, a3, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A00C9BC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[8 * v16];
    v24 = v23;
    v25 = &v17[8 * v15];
    sub_29A23E08C(&v22, a3, a5);
    v5 = sub_29A23E100(a1, &v22, v5);
    sub_29A1E29E8(&v22);
  }

  return v5;
}

uint64_t sub_29A23DFE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = v6 + a2 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + a2 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_29A1DDD84(v8, v10);
      sub_29A1DDDC0(v8 + 1, v10 + 1);
      v10 += 2;
      v8 += 2;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A23E1BC(&v12, a2, v7);
}

_DWORD *sub_29A23E08C(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[2 * a3];
    do
    {
      sub_29A1E21F4(v4, a2);
      result = sub_29A1E2240(v4 + 1, a2 + 1);
      v4 += 2;
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t sub_29A23E100(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A1E291C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A1E291C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_29A23E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

_DWORD *sub_29A23E240(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5);
    sub_29A225948(a4 + 1, v5 + 1);
    a4 += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t *sub_29A23E2B0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A23E2D0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A23E4A4(a1);
}

BOOL sub_29A23E310(uint64_t **a1, uint64_t ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_29A23E36C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void sub_29A23E4A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A1E234C(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A23E4FC(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2;
      if (v4)
      {
        v7 += (v5 + v7 + (v5 + v7) * (v5 + v7)) >> 1;
      }

      v5 = *(v2 + 1) + ((v7 + *(v2 + 1) + (v7 + *(v2 + 1)) * (v7 + *(v2 + 1))) >> 1);
      v2 += 8;
      v4 = 1;
      --v6;
    }

    while (v6);
    v8 = 0x9E3779B97F4A7C55 * v5;
  }

  else
  {
    v8 = 0;
  }

  return bswap64(v8);
}

uint64_t sub_29A23E56C(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29A23E5D4();
  }

  return *a1;
}

void sub_29A23E5D4()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A23E64C()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

uint64_t sub_29A23E6C4(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A017BD4(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[16 * v3];
  *(&v19 + 1) = &v10[16 * v9];
  sub_29A23E7D8(v18, a2, a3);
  *&v19 = v18 + 16;
  v11 = *(a1 + 8);
  v12 = &v18[*a1 - v11];
  sub_29A23E834(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A23EA14(&v17);
  return v16;
}

void sub_29A23E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A23EA14(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A23E7D8(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29A1E21F4(a1 + 2, a3);
  sub_29A1E2240(a1 + 3, a3 + 1);
  return a1;
}

uint64_t sub_29A23E834(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A23E8E4(a4, v7);
      v7 += 4;
      a4 = v12 + 4;
      v12 += 4;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A23E934(a1, v5);
      v5 += 4;
    }
  }

  return sub_29A23E988(v9);
}

_DWORD *sub_29A23E8E4(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, a2 + 1);
  sub_29A1DDD84(a1 + 2, a2 + 2);
  sub_29A1DDDC0(a1 + 3, a2 + 3);
  return a1;
}

_DWORD *sub_29A23E934(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29A23E988(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A23E9C0(a1);
  }

  return a1;
}

uint64_t *sub_29A23E9C0(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 4;
      result = sub_29A23E934(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A23EA14(void **a1)
{
  sub_29A23EA48(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A23EA48(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29A23E934(v4, (v1 - 16));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A23EA90(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 58)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  do
  {
      ;
    }
  }

  while ((sub_29A22E154(a1) & 1) != 0);
  return 1;
}

__n128 sub_29A23EB30(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A23C8F0(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A23EB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A23EB9C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A23EC00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 125)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A23EC98(v6, a2);
  return 1;
}

void sub_29A23EC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A23EC98(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 264) - 12);
  if (!v3)
  {
    sub_29A22DD10((a2 + 1024));
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v14 = &off_2A2049080;
    sub_29A23FC78();
  }

  if (v3 == 1)
  {
    sub_29A23EF34(&v13, *(a2 + 536), *(a2 + 544));
    v4 = sub_29A22DD10((a2 + 1024));
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    __p[1] = &off_2A2048FB8;
    sub_29A23F794(__p, &v13);
    (*(*v4 + 152))(v4, a2 + 1032, v5 + 296, __p);
    sub_29A186B14(__p);
    sub_29A1EF938(&v13, v14);
  }

  else
  {
    v8 = *(a1 + 32);
    sub_29A2266C8(&v13, a1, (v8 + 48));
    sub_29A008E78(__p, "Unable to parse relocates data, unknown context!");
    sub_29A276708(a2, v8, &v13, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  v9 = *(a2 + 544);
  v10 = *(a2 + 536);
  while (v9 != v10)
  {
    v9 -= 4;
    sub_29A23E934(a2 + 536, v9);
  }

  *(a2 + 544) = v10;
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v6);
}

void sub_29A23EEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A186B14(&__p);
  sub_29A1EF938(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A23EF34(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A23EFB8(a1, v4, v6, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_29A23EFB8(uint64_t **a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v6 = sub_29A23F044(a1, a2, &v10);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    sub_29A23E8E4(v7 + 7, a4);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

void *sub_29A23F044(void *a1, void *a2, void *a3)
{
  if (a1 + 1 != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  if (*a1 != a2)
  {
    v3 = *a2;
    if (*a2)
    {
      do
      {
        v3 = *(v3 + 8);
      }

      while (v3);
    }

    else
    {
      v4 = a2;
      do
      {
        v5 = *v4[2] == v4;
        v4 = v4[2];
      }

      while (v5);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  if (*a2)
  {
    *a3 = a2;
    return a2 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *sub_29A23F1D8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A23F1F8(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A23F350(a1);
}

unint64_t sub_29A23F210(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A23F3B8(&v3, *v1, (v1 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t *sub_29A23F338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2048FB8;
  return sub_29A23F794(a2, v2);
}

void sub_29A23F350(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A1EF938(v1, *(v1 + 8));

    operator delete(v1);
  }
}

uint64_t sub_29A23F3B8(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      sub_29A1E33B4(v5, v4 + 7);
      result = sub_29A1E33B4(v5, v4 + 9);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t sub_29A23F448(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 1;
  }

  v5 = *a2;
  do
  {
    v6 = *(v3 + 28) == *(v5 + 28) && *(v3 + 36) == *(v5 + 36);
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = v3[1];
    v9 = v3;
    if (v8)
    {
      do
      {
        v3 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v3 = v9[2];
        v6 = *v3 == v9;
        v9 = v3;
      }

      while (!v6);
    }

    v10 = v5[1];
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
        v11 = v5[2];
        v6 = *v11 == v5;
        v5 = v11;
      }

      while (!v6);
    }

    v5 = v11;
  }

  while (v3 != v2);
  return v7;
}

uint64_t sub_29A23F508(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29A23F570(*a1, &v4);
    sub_29A23F350(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A23F350(&v4);
  }

  return *a1;
}

uint64_t *sub_29A23F570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  result = sub_29A23F5D8(v4, a1);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A23F5D8(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A23F630(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29A23F630(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A23F6B8(v5, v5 + 1, v4 + 28, v4 + 7);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A23F6B8(uint64_t **a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v6 = sub_29A23F044(a1, a2, &v10);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    sub_29A23F744(v7 + 7, a4);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

_DWORD *sub_29A23F744(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29A1E21F4(a1 + 2, a2 + 2);
  sub_29A1E2240(a1 + 3, a2 + 3);
  return a1;
}

uint64_t *sub_29A23F794(void *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  result = sub_29A23F5D8(v4, a2);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A23F7FC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A23F81C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A23F97C(a1);
}

unint64_t sub_29A23F834(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A23FA5C(&v3, *v1, (*(v1 + 8) - *v1) >> 4);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

void sub_29A23F97C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A23F9D4(&v2);
      operator delete(v1);
    }
  }
}

void sub_29A23F9D4(void ***a1)
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
        v4 -= 4;
        sub_29A23E934(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A23FA5C(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      --v3;
      sub_29A1E33B4(v5, a2);
      result = sub_29A1E33B4(v5, a2 + 2);
      a2 += 4;
    }

    while (v3);
  }

  return result;
}

BOOL sub_29A23FAB8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *v3;
    v6 = v3[1];
    v3 += 2;
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result = v5 == v7 && v6 == v8;
  }

  while (result && v3 != v2);
  return result;
}

uint64_t sub_29A23FB0C(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29A23FB74();
  }

  return *a1;
}

void sub_29A23FB74()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
}

_DWORD *sub_29A23FBEC(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A23F744(v4, v6);
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A23E988(v8);
  return v4;
}

void sub_29A23FC78()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
}

void sub_29A23FCF0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x2C8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851D0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelocatesMapOpen, PXR_INTERNAL_NS_pegtl::pad_opt<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef, PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NamespaceSeparator, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef>>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelocatesMapClose>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A23FDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A23FE10(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A23FEC8(a1, a2);
  if (result)
  {
    result = sub_29A234BC8(a1, a2);
    if (result)
    {
      v5 = a1[4];
      if (v5 == a1[8] || *v5 != 91)
      {
        return 0;
      }

      else
      {
        v6 = a1[5] + 1;
        a1[4] = v5 + 1;
        a1[5] = v6;
        ++a1[7];
          ;
        }

        sub_29A240040(a1, a2);
        if ((sub_29A240CC8(a1, a2) & 1) == 0)
        {
          sub_29A240C64(a1);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_29A23FEC8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A23FF48(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A012CE4((a2 + 112));
    *(a2 + 144) = *(a2 + 136);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Fu);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A23FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A23FF48(uint64_t a1)
{
  if (sub_29A23FF94(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A23FF94(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x726579614C627573 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[5] + 9;
  a1[4] = v1 + 9;
  a1[5] = v4;
  a1[7] += 9;
  return 1;
}

uint64_t sub_29A240040(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A2400B8(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A2400A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2400B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A240110(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A240BF8(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

uint64_t sub_29A240110(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A24018C(a1, a2);
  if (v4)
  {
    sub_29A070BA0(a2 + 112);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A240180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A24018C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A2401F0(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A22E154(a1) & 1) != 0);
    sub_29A240524(a1, a2);
  }

  return v5;
}

__n128 sub_29A2401F0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A237934(a1) & 1) != 0 || sub_29A237C84(a1))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A240274(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A240268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A240274(pxrInternal__aapl__pxrReserved__ **a1, uint64_t a2)
{
  v4 = *(*(a2 + 264) - 4);
  if ((v4 - 18) >= 2)
  {
    if (v4 == 47)
    {
      v9 = *a1;
      v10 = (*(a1[4] + 1) - *a1);
      v12 = v10 >= 3 && *v9 == 16448 && *(v9 + 2) == 64;
      pxrInternal__aapl__pxrReserved__::Sdf_EvalAssetPath(v9, v10, v12, &__p);
      if (*(a2 + 95) < 0)
      {
        operator delete(*(a2 + 72));
      }

      *(a2 + 72) = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v23, 0.0, 1.0);
      *(a2 + 96) = *&v23.__r_.__value_.__l.__data_;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v16 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = *a1;
    v6 = (*(a1[4] + 1) - *a1);
    v8 = v6 >= 3 && *v5 == 16448 && *(v5 + 2) == 64;
    pxrInternal__aapl__pxrReserved__::Sdf_EvalAssetPath(v5, v6, v8, &v23);
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      sub_29A008E78(v22, "Reference / payload asset path must not be empty. If this is intended to be an internal reference / payload, remove the '@' delimiters.");
      v17 = a1[4];
      sub_29A2266C8(&__p, a1, v17 + 3);
      sub_29A276708(a2, v17, &__p, v22);
      if (v21 < 0)
      {
        operator delete(v20);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(exception, v22, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 72) = v23;
    *(&v23.__r_.__value_.__s + 23) = 0;
    v23.__r_.__value_.__s.__data_[0] = 0;
    v14 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p, 0.0, 1.0);
    *(a2 + 96) = *&__p.__r_.__value_.__l.__data_;
    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v14);
    sub_29A2258F0((a2 + 336), v15);
    sub_29A225948((a2 + 340), v15 + 1);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v16 = v23.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v16);
    }
  }
}

void sub_29A2404A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A240524(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = (a1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v7.n128_u64[0] == *(a1 + 64))
  {
    goto LABEL_6;
  }

  if (*v7.n128_u64[0] != 40)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 40) + 1;
  *(a1 + 32) = v7.n128_u64[0] + 1;
  *(a1 + 40) = v5;
  ++*(a1 + 56);
    ;
  }

  sub_29A2405EC(a1, a2);
  if ((sub_29A240B38(a1) & 1) == 0)
  {
LABEL_6:
    result = v7;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void sub_29A2405DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2405EC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A240664(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A240654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A240664(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A2406BC(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
      sub_29A240ACC(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v5;
}

void sub_29A2406BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (((sub_29A240730(a1, a2) & 1) != 0 || sub_29A240860(a1, a2)) && sub_29A234BC8(a1, a2))
  {

    sub_29A240990(a1, a2);
  }
}

uint64_t sub_29A240730(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2407A0(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x29u);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A240794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2407A0(uint64_t a1)
{
  if (sub_29A2407EC(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A2407EC(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1936090735 || *(v1 + 4) != 29797)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A240860(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2408D0(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Au);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2408C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2408D0(uint64_t a1)
{
  if (sub_29A24091C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A24091C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1818321779 || *(v1 + 4) != 101)
  {
    return 0;
  }

  v4 = a1[5] + 5;
  a1[4] = v1 + 5;
  a1[5] = v4;
  a1[7] += 5;
  return 1;
}

__n128 sub_29A240990(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_29A236B80(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A23724C(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1 + 24;
    sub_29A240A14(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A240A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A240A14(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2, BOOL *a3)
{
  sub_29A237360(a1, a2, a3, v10);
  v4 = *(*(a2 + 33) - 4);
  switch(v4)
  {
    case 42:
      sub_29A2123CC(v11);
      v8 = 104;
      goto LABEL_7;
    case 41:
      sub_29A2123CC(v11);
      v8 = 96;
LABEL_7:
      *(a2 + v8) = v7;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v6);
      return sub_29A224BA0(v11);
    case 29:
      sub_29A2123CC(v11);
      *(a2 + 41) = v5;
      break;
  }

  return sub_29A224BA0(v11);
}

void sub_29A240AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A224BA0(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A240ACC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A2406BC(a1, a2), (v5 & 1) == 0))
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A240B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A240B38(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 41)
  {
    sub_29A240B94(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A240B94(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected)", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

__n128 sub_29A240BF8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A240110(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A240C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A240C64(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A240CC8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 93)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A240D60(v6, a2);
  return 1;
}

void sub_29A240D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A240D60(uint64_t a1, uint64_t *a2)
{
  if (a2[14] != a2[15])
  {
    v2 = sub_29A22DD10(a2 + 128);
    pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A22C0F0();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
}

void sub_29A240EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A240F1C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A236670(a1) || (sub_29A22E4C0(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A240F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A240F88(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  do
  {
      ;
    }
  }

  while ((sub_29A22DED0(a1) & 1) != 0);
  v2 = sub_29A2366E0(a1);
  if (v2)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A241014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A241028(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22CB90(exception, "Expected)", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A24108C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 41)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  return 1;
}

void sub_29A241108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A241114(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A241178(a1, a2);
  if (v4)
  {
    return 1;
  }

  sub_29A243164(a1, a2);
  if (v5)
  {
    return 1;
  }

  return sub_29A22DE18(a1);
}

__n128 sub_29A241178(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if (!sub_29A23C1E8(a1, a2))
  {
    goto LABEL_12;
  }

  if (!sub_29A235C1C(a1))
  {
    goto LABEL_12;
  }

  if (!sub_29A241254(a1, a2))
  {
    goto LABEL_12;
  }

  if (!sub_29A234BC8(a1, a2))
  {
    goto LABEL_12;
  }

  sub_29A2413BC(a1, a2);
  if (!v4)
  {
    goto LABEL_12;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A22DED0(a1) & 1) != 0);
  v5 = sub_29A2366E0(a1);
  v7 = *(a1 + 32) == *(a1 + 64) ? 1 : v5;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    result = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  return result;
}

void sub_29A241244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A241254(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A2412C4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xFu);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A2412B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2412C4(uint64_t a1)
{
  if (sub_29A241310(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A241310(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x6D697250746F6F72 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[5] + 9;
  a1[4] = v1 + 9;
  a1[5] = v4;
  a1[7] += 9;
  return 1;
}

__n128 sub_29A2413BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A22E5EC(a1, a2) & 1) != 0 || sub_29A241440(a1, a2))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A24176C(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A241434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A241440(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 91)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A2414A0(a1, a2);
  return 1;
}

uint64_t sub_29A2414A0(void *a1, uint64_t a2)
{
  if ((sub_29A2414F0(a1, a2) & 1) == 0)
  {
    sub_29A241618(a1);
  }

  return sub_29A2362C4(a1);
}

uint64_t sub_29A2414F0(void *a1, uint64_t a2)
{
    ;
  }

  v4 = sub_29A241554(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A241554(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A22E5EC(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A2415AC(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A238640(a1);
  }

  return v4;
}

__n128 sub_29A2415AC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2385AC(a1) || (sub_29A22E5EC(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A24160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A241618(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851E0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::String>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A24170C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A24176C(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 264) - 4);
  if (v3 == 23)
  {
    memset(v34, 0, sizeof(v34));
    v6 = sub_29A0925E4(v34, (*(a2 + 288) - *(a2 + 280)) >> 3);
    v7 = *(a2 + 280);
    if (v7 != *(a2 + 288))
    {
      if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v7 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(EmptyString, __p);
      if (v33 != 1)
      {
        if ((*v7 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
        }

        sub_29A070BA0(v34);
      }

      v23 = *(a1 + 32);
      sub_29A2266C8(&v35, a1, (v23 + 48));
      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A276708(a2, v23, &v35, WhyNot);
      if (v39 < 0)
      {
        operator delete(v38);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v26 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
      sub_29A22DB7C(exception, v26, a1);
      __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
    }

    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v10)
    {
      v10 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if ((sub_29A241D64(v10 + 61, *(a2 + 616), v34, a2, __p) & 1) == 0)
    {
      v27 = *(a1 + 32);
      sub_29A2266C8(&v35, a1, (v27 + 48));
      sub_29A276708(a2, v27, &v35, __p);
      if (v39 < 0)
      {
        operator delete(v38);
      }

      v28 = __cxa_allocate_exception(0x20uLL);
      sub_29A22DB7C(v28, __p, a1);
      __cxa_throw(v28, &unk_2A2048840, sub_29A2265D4);
    }

    if (*(a2 + 616) <= 1u)
    {
      v12 = *(a2 + 280);
      for (i = *(a2 + 288); v12 != i; ++v12)
      {
        v14 = sub_29A22DD10((a2 + 1024));
        v15 = v14;
        if ((*v12 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v16 = ((*v12 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
        }

        sub_29A008E78(&v35, "");
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection((a2 + 1032), v16, &v35, &v29);
        (*(*v15 + 64))(v15, &v29, 11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30);
        sub_29A1DE3A4(&v29);
        if (v37 < 0)
        {
          operator delete(v35);
        }
      }

      sub_29A22DD10((a2 + 1024));
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
      {
        sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      }

      v36 = &off_2A2049148;
      sub_29A242610();
    }

    v18 = *(a2 + 280);
    for (j = *(a2 + 288); j != v18; j -= 8)
    {
      v21 = *(j - 8);
      v20 = v21;
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(a2 + 288) = v18;
    *(a2 + 616) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v11);
    if (*(*(a2 + 264) - 4) == 6)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v22);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    v35 = v34;
    sub_29A012C90(&v35);
  }

  else if (v3 == 15)
  {
    sub_29A22DD10((a2 + 1024));
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v36 = &off_2A2049148;
    sub_29A242610();
  }
}

void sub_29A241C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, __int16 *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  __cxa_free_exception(v35);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a24 = &a19;
  sub_29A012C90(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_29A241D64(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v36[2] = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v7 = a3[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 3);
  if (v9 < 2)
  {
    goto LABEL_2;
  }

  if (v9 > 0xA)
  {
    if (a3[1] != sub_29A2427B8(v8, v7))
    {
      sub_29A2426CC();
    }

LABEL_2:
    sub_29A22DD10((a4 + 1024));
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
  }

  if (v8 == v7 - 24)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v10 = v8 + 24;
    if (v7 != v8 + 24)
    {
      break;
    }

LABEL_21:
    v8 += 24;
    if (v10 == v7 - 24)
    {
      goto LABEL_2;
    }
  }

  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = v8 + 24;
  while (1)
  {
    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v12 == v14)
    {
      v16 = v11 >= 0 ? v8 : *v8;
      v17 = v15 >= 0 ? v13 : *v13;
      v18 = memcmp(v16, v17, v12);
      if (!v18)
      {
        break;
      }
    }

    v13 += 24;
    if (v13 == v7)
    {
      goto LABEL_21;
    }
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
  }

  std::operator+<char>();
  v19 = std::string::append(&v35, "' at '");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString((a4 + 1032), __p);
  if ((v33 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v22 = v33;
  }

  else
  {
    v22 = __p[1];
  }

  v23 = std::string::append(&v34, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v31, "'");
  v26 = v25->__r_.__value_.__r.__words[0];
  v36[0] = v25->__r_.__value_.__l.__size_;
  *(v36 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v28 = v36[0];
  *a5 = v26;
  *(a5 + 8) = v28;
  *(a5 + 15) = *(v36 + 7);
  *(a5 + 23) = v27;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A2421C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A242270(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A242290(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A242474(a1);
}

BOOL sub_29A2422D0(uint64_t **a1, uint64_t ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

BOOL sub_29A242334(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

void sub_29A242474(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A124AB0(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A2424CC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2++;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if (v5)
      {
        v8 += (v8 + v4 + (v8 + v4) * (v8 + v4)) >> 1;
      }

      v5 = 1;
      v4 = v8;
      --v6;
    }

    while (v6);
    v9 = 0x9E3779B97F4A7C55 * v8;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

uint64_t sub_29A242530(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29A242598();
  }

  return *a1;
}

void sub_29A242598()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A242610()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A2426CC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A2427A0(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_29A012C90((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A2427B8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    v2 = a1 - 24;
    while (1)
    {
      v4 = (v2 + 48);
      if (v2 + 48 == a2)
      {
        break;
      }

      v5 = (v2 + 24);
      v7 = *(v2 + 24);
      v2 += 24;
      v6 = v7;
      v8 = *(v2 + 47);
      v9 = *(v2 + 23);
      if (v9 >= 0)
      {
        v10 = *(v2 + 23);
      }

      else
      {
        v10 = *(v2 + 8);
      }

      if (v9 >= 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = v6;
      }

      if (v8 >= 0)
      {
        v12 = *(v2 + 47);
      }

      else
      {
        v12 = *(v2 + 32);
      }

      if (v8 >= 0)
      {
        v13 = v4;
      }

      else
      {
        v13 = *(v2 + 24);
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v11, v13, v14);
      v16 = v10 >= v12;
      if (v15)
      {
        v16 = v15 >= 0;
      }

      if (v16)
      {
        return v2;
      }
    }

    return a2;
  }

  return v2;
}