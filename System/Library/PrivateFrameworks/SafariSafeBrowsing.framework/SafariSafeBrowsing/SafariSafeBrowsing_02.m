void Backend::Google::HashListsBatchGetResponseParser::parseDuration(unsigned __int8 *__p)
{
  v2 = __p[112];
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!__p[112])
    {
      goto LABEL_9;
    }

    if (v2 == 1)
    {
      v3 = __p[113];
      v4 = *(__p + 50);
      __p[110] = __p[102];
      *(__p + 54) = v4;
      __p[116] = v3;
    }
  }

  v5 = *(__p + 7);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t BitProvider::nextBit(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
LABEL_3:
      detail::lazy_promise<ReadResult<unsigned char>>::result((v2 + 2));
      v4 = *v3;
      v5 = v3[1];
      v6 = *(a1 + 48);
      if (v6)
      {
        (*(v6 + 8))();
      }

      if (v5)
      {
        if (v5 != 1)
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 64) = 2;
          _Unwind_Resume(v15);
        }

        v7 = *(a1 + 56);
        *(v7 + 16) = v4;
        v8 = 1;
        *(v7 + 17) = 1;
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 32) = v4 & 1;
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v9 = *(a1 + 56);
  v10 = *(v9 + 17);
  if (v10 > 3)
  {
    if (*(v9 + 17) > 5u)
    {
      if (v10 == 6)
      {
        *(v9 + 17) = 7;
        v11 = (*(v9 + 16) >> 6) & 1;
        goto LABEL_30;
      }

      if (v10 == 7)
      {
        *(v9 + 17) = 0;
        v11 = *(v9 + 16) >> 7;
        goto LABEL_30;
      }
    }

    else
    {
      if (v10 == 4)
      {
        *(v9 + 17) = 5;
        v11 = (*(v9 + 16) >> 4) & 1;
        goto LABEL_30;
      }

      if (v10 == 5)
      {
        *(v9 + 17) = 6;
        v11 = (*(v9 + 16) >> 5) & 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (*(v9 + 17) <= 1u)
    {
      if (!*(v9 + 17))
      {
        ReadStream::readByte(*v9, (a1 + 48));
        v2 = *(a1 + 48);
        *(a1 + 40) = v2;
        if (v2)
        {
          if (*v2)
          {
            *(a1 + 64) = 1;
            v2[2] = a1;
            v12 = *(a1 + 40);
            goto LABEL_33;
          }

          goto LABEL_3;
        }

LABEL_36:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      *(v9 + 17) = 2;
      v11 = (*(v9 + 16) >> 1) & 1;
LABEL_30:
      *(a1 + 32) = v11;
      v8 = 1;
LABEL_31:
      *(a1 + 36) = v8;
      *(a1 + 24) = 1;
      goto LABEL_32;
    }

    if (v10 == 2)
    {
      *(v9 + 17) = 3;
      v11 = (*(v9 + 16) >> 2) & 1;
      goto LABEL_30;
    }

    if (v10 == 3)
    {
      *(v9 + 17) = 4;
      v11 = (*(v9 + 16) >> 3) & 1;
      goto LABEL_30;
    }
  }

LABEL_32:
  *a1 = 0;
  *(a1 + 64) = 2;
  v12 = *(a1 + 16);
LABEL_33:
  v13 = *v12;

  return v13();
}

{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
LABEL_3:
      detail::lazy_promise<ReadResult<unsigned char>>::result((v2 + 2));
      v4 = *v3;
      v5 = v3[1];
      v6 = *(a1 + 48);
      if (v6)
      {
        (*(v6 + 8))();
      }

      if (v5)
      {
        if (v5 != 1)
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 64) = 2;
          _Unwind_Resume(v15);
        }

        v7 = *(a1 + 56);
        *(v7 + 16) = v4;
        v8 = 1;
        *(v7 + 17) = 1;
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 32) = v4 & 1;
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v9 = *(a1 + 56);
  v10 = *(v9 + 17);
  if (v10 > 3)
  {
    if (*(v9 + 17) > 5u)
    {
      if (v10 == 6)
      {
        *(v9 + 17) = 7;
        v11 = (*(v9 + 16) >> 6) & 1;
        goto LABEL_30;
      }

      if (v10 == 7)
      {
        *(v9 + 17) = 0;
        v11 = *(v9 + 16) >> 7;
        goto LABEL_30;
      }
    }

    else
    {
      if (v10 == 4)
      {
        *(v9 + 17) = 5;
        v11 = (*(v9 + 16) >> 4) & 1;
        goto LABEL_30;
      }

      if (v10 == 5)
      {
        *(v9 + 17) = 6;
        v11 = (*(v9 + 16) >> 5) & 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (*(v9 + 17) <= 1u)
    {
      if (!*(v9 + 17))
      {
        ReadStream::readByte(*v9, (a1 + 48));
        v2 = *(a1 + 48);
        *(a1 + 40) = v2;
        if (v2)
        {
          if (*v2)
          {
            *(a1 + 64) = 1;
            v2[2] = a1;
            v12 = *(a1 + 40);
            goto LABEL_33;
          }

          goto LABEL_3;
        }

LABEL_36:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      *(v9 + 17) = 2;
      v11 = (*(v9 + 16) >> 1) & 1;
LABEL_30:
      *(a1 + 32) = v11;
      v8 = 1;
LABEL_31:
      *(a1 + 36) = v8;
      *(a1 + 24) = 1;
      goto LABEL_32;
    }

    if (v10 == 2)
    {
      *(v9 + 17) = 3;
      v11 = (*(v9 + 16) >> 2) & 1;
      goto LABEL_30;
    }

    if (v10 == 3)
    {
      *(v9 + 17) = 4;
      v11 = (*(v9 + 16) >> 3) & 1;
      goto LABEL_30;
    }
  }

LABEL_32:
  *a1 = 0;
  *(a1 + 64) = 2;
  v12 = *(a1 + 16);
LABEL_33:
  v13 = *v12;

  return v13();
}

void BitProvider::nextBit(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t RiceDecompressor::decodeQuotient(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!*(a1 + 72))
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<BOOL>>::result((v3 + 2));
    v5 = *v4;
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 8))();
    }

    if (HIDWORD(v5) != 1)
    {
      v8 = 0;
      *(a1 + 32) = 0;
      goto LABEL_14;
    }

    v7 = *(a1 + 64);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v2 = v7 + 1;
LABEL_4:
    *(a1 + 73) = 1;
    *(a1 + 64) = v2;
    *(a1 + 68) = 1;
    BitProvider::nextBit(*(*(a1 + 56) + 8), (a1 + 48));
    v3 = *(a1 + 48);
    *(a1 + 40) = v3;
    if (!v3)
    {
      goto LABEL_18;
    }

    if (*v3)
    {
      *(a1 + 72) = 1;
      v3[2] = a1;
      v9 = *(a1 + 40);
      goto LABEL_15;
    }
  }

  *(a1 + 32) = v7;
  v8 = 1;
LABEL_14:
  *(a1 + 36) = v8;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 72) = 2;
  v9 = *(a1 + 16);
LABEL_15:
  v10 = *v9;

  return v10();
}

{
  v2 = *(a1 + 72);
  if (!*(a1 + 72))
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<BOOL>>::result((v3 + 2));
    v5 = *v4;
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 8))();
    }

    if (HIDWORD(v5) != 1)
    {
      v8 = 0;
      *(a1 + 32) = 0;
      goto LABEL_14;
    }

    v7 = *(a1 + 64);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v2 = v7 + 1;
LABEL_4:
    *(a1 + 73) = 1;
    *(a1 + 64) = v2;
    *(a1 + 68) = 1;
    BitProvider::nextBit(*(*(a1 + 56) + 8), (a1 + 48));
    v3 = *(a1 + 48);
    *(a1 + 40) = v3;
    if (!v3)
    {
      goto LABEL_18;
    }

    if (*v3)
    {
      *(a1 + 72) = 1;
      v3[2] = a1;
      v9 = *(a1 + 40);
      goto LABEL_15;
    }
  }

  *(a1 + 32) = v7;
  v8 = 1;
LABEL_14:
  *(a1 + 36) = v8;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 72) = 2;
  v9 = *(a1 + 16);
LABEL_15:
  v10 = *v9;

  return v10();
}

void sub_22560777C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    (*(v3 + 8))();
  }

  *v1 = 0;
  *(v1 + 72) = 2;
  _Unwind_Resume(exception_object);
}

void RiceDecompressor::decodeQuotient(std::exception_ptr *__p)
{
  if (LOBYTE(__p[9].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

{
  if (LOBYTE(__p[9].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t RiceDecompressor::decodeRemainder(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
LABEL_19:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }

    do
    {
      detail::lazy_promise<ReadResult<BOOL>>::result((v3 + 2));
      v1 = *v8;
      v9 = *v8 & 0xFFFFFFFF00000000;
      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 8))();
      }

      if (v9 != 0x100000000)
      {
        v11 = 0;
        *(a1 + 32) = 0;
        goto LABEL_14;
      }

      v4 = *(a1 + 56);
      v5 = (v1 << *(a1 + 64)) | *(a1 + 68);
      v7 = *(a1 + 73) + 1;
      v6 = v7;
      if (*v4 <= v7)
      {
        goto LABEL_12;
      }

LABEL_6:
      *(a1 + 74) = v1;
      *(a1 + 73) = v7;
      *(a1 + 64) = v6;
      *(a1 + 68) = v5;
      BitProvider::nextBit(*(v4 + 8), (a1 + 48));
      v3 = *(a1 + 48);
      *(a1 + 40) = v3;
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    while (!*v3);
    *(a1 + 72) = 1;
    v3[2] = a1;
    v12 = *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 0;
      v5 = 0;
      goto LABEL_6;
    }

LABEL_12:
    *(a1 + 32) = v5;
    v11 = 1;
LABEL_14:
    *(a1 + 36) = v11;
    *(a1 + 24) = 1;
    *a1 = 0;
    *(a1 + 72) = 2;
    v12 = *(a1 + 16);
  }

  v13 = *v12;

  return v13();
}

{
  if (*(a1 + 72))
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
LABEL_19:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }

    do
    {
      detail::lazy_promise<ReadResult<BOOL>>::result((v3 + 2));
      v1 = *v8;
      v9 = *v8 & 0xFFFFFFFF00000000;
      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 8))();
      }

      if (v9 != 0x100000000)
      {
        v11 = 0;
        *(a1 + 32) = 0;
        goto LABEL_14;
      }

      v4 = *(a1 + 56);
      v5 = (v1 << *(a1 + 64)) | *(a1 + 68);
      v7 = *(a1 + 73) + 1;
      v6 = v7;
      if (*v4 <= v7)
      {
        goto LABEL_12;
      }

LABEL_6:
      *(a1 + 74) = v1;
      *(a1 + 73) = v7;
      *(a1 + 64) = v6;
      *(a1 + 68) = v5;
      BitProvider::nextBit(*(v4 + 8), (a1 + 48));
      v3 = *(a1 + 48);
      *(a1 + 40) = v3;
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    while (!*v3);
    *(a1 + 72) = 1;
    v3[2] = a1;
    v12 = *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 0;
      v5 = 0;
      goto LABEL_6;
    }

LABEL_12:
    *(a1 + 32) = v5;
    v11 = 1;
LABEL_14:
    *(a1 + 36) = v11;
    *(a1 + 24) = 1;
    *a1 = 0;
    *(a1 + 72) = 2;
    v12 = *(a1 + 16);
  }

  v13 = *v12;

  return v13();
}

void sub_22560797C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    (*(v3 + 8))();
  }

  *v1 = 0;
  *(v1 + 72) = 2;
  _Unwind_Resume(exception_object);
}

void RiceDecompressor::decodeRemainder(std::exception_ptr *__p)
{
  if (LOBYTE(__p[9].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t RiceDecompressor::decompress4Bytes(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
LABEL_26:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }
  }

  else
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 40);
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      RiceDecompressor::decodeQuotient(*(a1 + 56), (a1 + 48));
      v3 = *(a1 + 48);
      *(a1 + 40) = v3;
      if (!v3)
      {
        goto LABEL_26;
      }

      if (*v3)
      {
        v4 = 1;
LABEL_16:
        *(a1 + 72) = v4;
        v3[2] = a1;
        v8 = *(a1 + 40);
        goto LABEL_23;
      }
    }

    detail::lazy_promise<std::optional<unsigned int>>::result((v3 + 2));
    v6 = *v5;
    *(a1 + 64) = *v5;
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 8))();
    }

    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    RiceDecompressor::decodeRemainder(*(a1 + 56), (a1 + 48));
    v3 = *(a1 + 48);
    *(a1 + 40) = v3;
    if (!v3)
    {
      goto LABEL_26;
    }

    if (*v3)
    {
      v4 = 2;
      goto LABEL_16;
    }
  }

  detail::lazy_promise<std::optional<unsigned int>>::result((v3 + 2));
  v10 = *v9;
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 8))();
  }

  if ((v10 & 0x100000000) != 0)
  {
    v13 = *(a1 + 56);
    v14 = (*(a1 + 64) << *v13) + v13[1] + v10;
    v13[1] = v14;
    *(a1 + 32) = v14;
    v12 = 1;
    goto LABEL_22;
  }

LABEL_20:
  v12 = 0;
  *(a1 + 32) = 0;
LABEL_22:
  *(a1 + 36) = v12;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = *(a1 + 16);
LABEL_23:
  v15 = *v8;

  return v15();
}

{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
LABEL_26:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }
  }

  else
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 40);
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      RiceDecompressor::decodeQuotient(*(a1 + 56), (a1 + 48));
      v3 = *(a1 + 48);
      *(a1 + 40) = v3;
      if (!v3)
      {
        goto LABEL_26;
      }

      if (*v3)
      {
        v4 = 1;
LABEL_16:
        *(a1 + 72) = v4;
        v3[2] = a1;
        v8 = *(a1 + 40);
        goto LABEL_23;
      }
    }

    detail::lazy_promise<std::optional<unsigned int>>::result((v3 + 2));
    v6 = *v5;
    *(a1 + 64) = *v5;
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 8))();
    }

    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    RiceDecompressor::decodeRemainder(*(a1 + 56), (a1 + 48));
    v3 = *(a1 + 48);
    *(a1 + 40) = v3;
    if (!v3)
    {
      goto LABEL_26;
    }

    if (*v3)
    {
      v4 = 2;
      goto LABEL_16;
    }
  }

  detail::lazy_promise<std::optional<unsigned int>>::result((v3 + 2));
  v10 = *v9;
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 8))();
  }

  if ((v10 & 0x100000000) != 0)
  {
    v13 = *(a1 + 56);
    v14 = (*(a1 + 64) << *v13) + v13[1] + v10;
    v13[1] = v14;
    *(a1 + 32) = v14;
    v12 = 1;
    goto LABEL_22;
  }

LABEL_20:
  v12 = 0;
  *(a1 + 32) = 0;
LABEL_22:
  *(a1 + 36) = v12;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 72) = 3;
  v8 = *(a1 + 16);
LABEL_23:
  v15 = *v8;

  return v15();
}

void sub_225607BA4(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void RiceDecompressor::decompress4Bytes(std::exception_ptr *__p)
{
  if (LOBYTE(__p[9].__ptr_) > 1u)
  {
    if (LOBYTE(__p[9].__ptr_) != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!LOBYTE(__p[9].__ptr_))
  {
    goto LABEL_7;
  }

  ptr = __p[6].__ptr_;
  if (ptr)
  {
    ptr[1]();
  }

LABEL_7:
  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

{
  if (LOBYTE(__p[9].__ptr_) > 1u)
  {
    if (LOBYTE(__p[9].__ptr_) != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!LOBYTE(__p[9].__ptr_))
  {
    goto LABEL_7;
  }

  ptr = __p[6].__ptr_;
  if (ptr)
  {
    ptr[1]();
  }

LABEL_7:
  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::readRemovalIndices(uint64_t a1)
{
  if (!*(a1 + 136))
  {
    v3 = *(a1 + 128);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    std::vector<unsigned int>::reserve((a1 + 64), v3);
    LODWORD(v4) = *(*(a1 + 104) + 4);
    v6 = *(a1 + 72);
    v5 = *(a1 + 80);
    if (v6 >= v5)
    {
      v8 = *(a1 + 64);
      v9 = v6 - v8;
      v10 = ((v6 - v8) >> 2) + 1;
      if (v10 >> 62)
      {
LABEL_48:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = v5 - v8;
      v12 = v11 >> 1;
      if (v11 >> 1 <= v10)
      {
        v12 = v10;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        v14 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 64, v13);
        if (v14)
        {
          v16 = &v9[v14];
          v17 = v14 + 4 * v15;
          v18 = *(a1 + 64);
          v19 = *(a1 + 72) - v18;
          v20 = &v9[v14 - v19];
          *v16 = v4;
          v7 = v16 + 4;
          memcpy(v20, v18, v19);
          v21 = *(a1 + 64);
          *(a1 + 64) = v20;
          *(a1 + 72) = v7;
          *(a1 + 80) = v17;
          if (v21)
          {
            operator delete(v21);
          }

          goto LABEL_17;
        }
      }
    }

    else if (v6)
    {
      *v6 = v4;
      v7 = v6 + 1;
LABEL_17:
      v22 = *(a1 + 128);
      *(a1 + 72) = v7;
      if (v22 > 1)
      {
        v23 = 1;
        goto LABEL_19;
      }

LABEL_38:
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a1 + 80);
      *(a1 + 56) = 1;
      *(a1 + 24) = 1;
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v2 = *(a1 + 88);
  if (!v2)
  {
LABEL_47:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned int>>::result((v2 + 2));
    v4 = *v24;
    v25 = *(a1 + 96);
    if (v25)
    {
      (*(v25 + 8))();
    }

    if ((v4 & 0x100000000) == 0)
    {
      break;
    }

    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    if (v27 >= v26)
    {
      v28 = *(a1 + 64);
      v29 = v27 - v28;
      v30 = ((v27 - v28) >> 2) + 1;
      if (v30 >> 62)
      {
        goto LABEL_48;
      }

      v31 = v26 - v28;
      v32 = v31 >> 1;
      if (v31 >> 1 <= v30)
      {
        v32 = v30;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v33 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (!v33)
      {
        goto LABEL_46;
      }

      v34 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 64, v33);
      if (!v34)
      {
        goto LABEL_46;
      }

      v36 = &v29[v34];
      v37 = v34 + 4 * v35;
      v38 = *(a1 + 64);
      v39 = *(a1 + 72) - v38;
      v40 = &v29[v34 - v39];
      *v36 = v4;
      v7 = v36 + 4;
      memcpy(v40, v38, v39);
      v41 = *(a1 + 64);
      *(a1 + 64) = v40;
      *(a1 + 72) = v7;
      *(a1 + 80) = v37;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_46;
      }

      *v27 = v4;
      v7 = v27 + 1;
    }

    v42 = *(a1 + 120);
    v43 = *(a1 + 128);
    *(a1 + 72) = v7;
    v23 = v42 + 1;
    if (v23 == v43)
    {
      goto LABEL_38;
    }

LABEL_19:
    *(a1 + 132) = v4;
    *(a1 + 120) = v23;
    RiceDecompressor::decompress4Bytes(*(a1 + 104), (a1 + 96));
    v2 = *(a1 + 96);
    *(a1 + 88) = v2;
    if (!v2)
    {
      goto LABEL_47;
    }

    if (*v2)
    {
      *(a1 + 136) = 1;
      v2[2] = a1;
      v45 = *(a1 + 88);
      goto LABEL_43;
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
  v44 = *(a1 + 64);
  if (v44)
  {
    *(a1 + 72) = v44;
    operator delete(v44);
  }

LABEL_41:
  *a1 = 0;
  *(a1 + 136) = 2;
  v45 = *(a1 + 16);
LABEL_43:
  v46 = *v45;

  return v46();
}

{
  if (!*(a1 + 136))
  {
    v3 = *(a1 + 128);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    std::vector<unsigned int>::reserve((a1 + 64), v3);
    LODWORD(v4) = *(*(a1 + 104) + 4);
    v6 = *(a1 + 72);
    v5 = *(a1 + 80);
    if (v6 >= v5)
    {
      v8 = *(a1 + 64);
      v9 = v6 - v8;
      v10 = ((v6 - v8) >> 2) + 1;
      if (v10 >> 62)
      {
LABEL_48:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v11 = v5 - v8;
      v12 = v11 >> 1;
      if (v11 >> 1 <= v10)
      {
        v12 = v10;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        v14 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 64, v13);
        if (v14)
        {
          v16 = &v9[v14];
          v17 = v14 + 4 * v15;
          v18 = *(a1 + 64);
          v19 = *(a1 + 72) - v18;
          v20 = &v9[v14 - v19];
          *v16 = v4;
          v7 = v16 + 4;
          memcpy(v20, v18, v19);
          v21 = *(a1 + 64);
          *(a1 + 64) = v20;
          *(a1 + 72) = v7;
          *(a1 + 80) = v17;
          if (v21)
          {
            operator delete(v21);
          }

          goto LABEL_17;
        }
      }
    }

    else if (v6)
    {
      *v6 = v4;
      v7 = v6 + 1;
LABEL_17:
      v22 = *(a1 + 128);
      *(a1 + 72) = v7;
      if (v22 > 1)
      {
        v23 = 1;
        goto LABEL_19;
      }

LABEL_38:
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a1 + 80);
      *(a1 + 56) = 1;
      *(a1 + 24) = 1;
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v2 = *(a1 + 88);
  if (!v2)
  {
LABEL_47:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned int>>::result((v2 + 2));
    v4 = *v24;
    v25 = *(a1 + 96);
    if (v25)
    {
      (*(v25 + 8))();
    }

    if ((v4 & 0x100000000) == 0)
    {
      break;
    }

    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    if (v27 >= v26)
    {
      v28 = *(a1 + 64);
      v29 = v27 - v28;
      v30 = ((v27 - v28) >> 2) + 1;
      if (v30 >> 62)
      {
        goto LABEL_48;
      }

      v31 = v26 - v28;
      v32 = v31 >> 1;
      if (v31 >> 1 <= v30)
      {
        v32 = v30;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v33 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (!v33)
      {
        goto LABEL_46;
      }

      v34 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 64, v33);
      if (!v34)
      {
        goto LABEL_46;
      }

      v36 = &v29[v34];
      v37 = v34 + 4 * v35;
      v38 = *(a1 + 64);
      v39 = *(a1 + 72) - v38;
      v40 = &v29[v34 - v39];
      *v36 = v4;
      v7 = v36 + 4;
      memcpy(v40, v38, v39);
      v41 = *(a1 + 64);
      *(a1 + 64) = v40;
      *(a1 + 72) = v7;
      *(a1 + 80) = v37;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_46;
      }

      *v27 = v4;
      v7 = v27 + 1;
    }

    v42 = *(a1 + 120);
    v43 = *(a1 + 128);
    *(a1 + 72) = v7;
    v23 = v42 + 1;
    if (v23 == v43)
    {
      goto LABEL_38;
    }

LABEL_19:
    *(a1 + 132) = v4;
    *(a1 + 120) = v23;
    RiceDecompressor::decompress4Bytes(*(a1 + 104), (a1 + 96));
    v2 = *(a1 + 96);
    *(a1 + 88) = v2;
    if (!v2)
    {
      goto LABEL_47;
    }

    if (*v2)
    {
      *(a1 + 136) = 1;
      v2[2] = a1;
      v45 = *(a1 + 88);
      goto LABEL_43;
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
  v44 = *(a1 + 64);
  if (v44)
  {
    *(a1 + 72) = v44;
    operator delete(v44);
  }

LABEL_41:
  *a1 = 0;
  *(a1 + 136) = 2;
  v45 = *(a1 + 16);
LABEL_43:
  v46 = *v45;

  return v46();
}

void sub_225607F18()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    (*(v1 + 8))();
  }

  JUMPOUT(0x225607F40);
}

void sub_225607F3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  *v1 = 0;
  *(v1 + 136) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::readRemovalIndices(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      (*(v2 + 8))();
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 112);
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(a1 + 112));
  }

  operator delete(a1);
}

{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      (*(v2 + 8))();
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 112);
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(a1 + 112));
  }

  operator delete(a1);
}

uint64_t Backend::Google::readAdditions(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    v3 = *(a1 + 112);
    LODWORD(v4) = 4 * v3;
    v5 = operator new[](4 * v3);
    *(a1 + 88) = v5;
    v6 = *(a1 + 72);
    bzero(v5, 4 * v3);
    v7 = 0;
    *v5 = *(v6 + 4);
    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3;
    }

    *(a1 + 96) = v8;
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
LABEL_22:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  do
  {
    detail::lazy_promise<std::optional<unsigned int>>::result((v2 + 2));
    v4 = *v9;
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 8))();
    }

    if ((v4 & 0x100000000) == 0)
    {
      v12 = *(a1 + 88);
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      *(a1 + 24) = 1;
      operator delete[](v12);
      goto LABEL_17;
    }

    *(*(a1 + 88) + 4 * *(a1 + 104) + 4) = v4;
    v8 = *(a1 + 96);
    v7 = *(a1 + 104) + 1;
LABEL_8:
    *(a1 + 116) = v4;
    *(a1 + 121) = 1;
    *(a1 + 104) = v7;
    if (v7 == v8 - 1)
    {
      v11 = *(a1 + 88);
      *(a1 + 32) = (*(a1 + 112) << 32) | 4;
      *(a1 + 40) = v11;
      *(a1 + 48) = 1;
      *(a1 + 24) = 1;
LABEL_17:
      *a1 = 0;
      *(a1 + 120) = 2;
      v13 = *(a1 + 16);
      goto LABEL_19;
    }

    RiceDecompressor::decompress4Bytes(*(a1 + 72), (a1 + 64));
    v2 = *(a1 + 64);
    *(a1 + 56) = v2;
    if (!v2)
    {
      goto LABEL_22;
    }
  }

  while (!*v2);
  *(a1 + 120) = 1;
  v2[2] = a1;
  v13 = *(a1 + 56);
LABEL_19:
  v14 = *v13;

  return v14();
}

{
  if (!*(a1 + 120))
  {
    v3 = *(a1 + 112);
    LODWORD(v4) = 4 * v3;
    v5 = operator new[](4 * v3);
    *(a1 + 88) = v5;
    v6 = *(a1 + 72);
    bzero(v5, 4 * v3);
    v7 = 0;
    *v5 = *(v6 + 4);
    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3;
    }

    *(a1 + 96) = v8;
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
LABEL_22:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  do
  {
    detail::lazy_promise<std::optional<unsigned int>>::result((v2 + 2));
    v4 = *v9;
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 8))();
    }

    if ((v4 & 0x100000000) == 0)
    {
      v12 = *(a1 + 88);
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      *(a1 + 24) = 1;
      operator delete[](v12);
      goto LABEL_17;
    }

    *(*(a1 + 88) + 4 * *(a1 + 104) + 4) = v4;
    v8 = *(a1 + 96);
    v7 = *(a1 + 104) + 1;
LABEL_8:
    *(a1 + 121) = 1;
    *(a1 + 116) = v4;
    *(a1 + 104) = v7;
    if (v7 == v8 - 1)
    {
      qsort(*(a1 + 88), *(a1 + 112), 4uLL, Backend::Google::readAdditions(std::shared_ptr<RiceDecompressor>,unsigned int)::$_1::__invoke);
      v11 = *(a1 + 88);
      *(a1 + 32) = (*(a1 + 112) << 32) | 4;
      *(a1 + 40) = v11;
      *(a1 + 48) = 1;
      *(a1 + 24) = 1;
LABEL_17:
      *a1 = 0;
      *(a1 + 120) = 2;
      v13 = *(a1 + 16);
      goto LABEL_19;
    }

    RiceDecompressor::decompress4Bytes(*(a1 + 72), (a1 + 64));
    v2 = *(a1 + 64);
    *(a1 + 56) = v2;
    if (!v2)
    {
      goto LABEL_22;
    }
  }

  while (!*v2);
  *(a1 + 120) = 1;
  v2[2] = a1;
  v13 = *(a1 + 56);
LABEL_19:
  v14 = *v13;

  return v14();
}

void Backend::Google::readAdditions(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(v2 + 8))();
    }

    operator delete[](*(a1 + 88));
  }

  v3 = *(a1 + 80);
  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(a1 + 80));
  }

  operator delete(a1);
}

{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(v2 + 8))();
    }

    operator delete[](*(a1 + 88));
  }

  v3 = *(a1 + 80);
  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(a1 + 80));
  }

  operator delete(a1);
}

uint64_t Backend::Google::HashListsBatchGetResponseParser::parseHashList(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 440);
  v8 = a1 + 296;
  v9 = a1 + 328;
  v10 = a1 + 360;
  v11 = (a1 + 476);
  v12 = (a1 + 507);
  v13 = *(a1 + 538);
  if (v13 > 4)
  {
    if (*(a1 + 538) > 6u)
    {
      if (v13 == 7)
      {
        v14 = *(a1 + 416);
        if (v14)
        {
          goto LABEL_82;
        }
      }

      else if (v13 == 8)
      {
        v14 = *(a1 + 416);
        if (v14)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v22 = *(a1 + 424);
        if (v22)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_148;
    }

    if (v13 == 5)
    {
      v14 = *(a1 + 416);
      if (!v14)
      {
        goto LABEL_148;
      }

LABEL_76:
      detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::result((v14 + 2));
      std::__optional_storage_base<Backend::Google::HashList::Addition,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<Backend::Google::HashList::Addition,false>>(a1 + 392, v46);
      v47 = *(a1 + 424);
      if (v47)
      {
        (*(v47 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v8);
    }

    else
    {
      v14 = *(a1 + 416);
      if (!v14)
      {
        goto LABEL_148;
      }

LABEL_39:
      detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v14 + 2));
      v30 = std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>((a1 + 264), v29);
      v31 = *(a1 + 424);
      if (v31)
      {
        (*(v31 + 8))(v30);
      }

      std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v9);
    }

    v42 = *(a1 + 408);
  }

  else
  {
    if (*(a1 + 538) <= 1u)
    {
      if (!*(a1 + 538))
      {
        i = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 200) = 0;
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 256) = 0;
        *(a1 + 392) = 0;
        *(a1 + 408) = 0;
        *(a1 + 264) = 0;
        *(a1 + 288) = 0;
        goto LABEL_29;
      }

      v14 = *(a1 + 416);
      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_148;
    }

    if (v13 == 2)
    {
      v14 = *(a1 + 416);
      if (!v14)
      {
        goto LABEL_148;
      }

LABEL_65:
      detail::lazy_promise<std::optional<std::string>>::result((v14 + 2));
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 200), v40);
      v41 = *(a1 + 424);
      if (v41)
      {
        (*(v41 + 8))();
      }

      v42 = *(a1 + 224);
    }

    else
    {
      if (v13 != 3)
      {
        v14 = *(a1 + 416);
        if (v14)
        {
          goto LABEL_47;
        }

        goto LABEL_148;
      }

      v14 = *(a1 + 416);
      if (!v14)
      {
        goto LABEL_148;
      }

LABEL_91:
      detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result((v14 + 2));
      std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(a1 + 232, v51);
      v52 = *(a1 + 424);
      if (v52)
      {
        (*(v52 + 8))();
      }

      v42 = *(a1 + 256);
    }
  }

  if (v42 != 1)
  {
    goto LABEL_107;
  }

LABEL_95:
  v21 = *(v7 + 106);
  LOBYTE(v13) = *(v7 + 105);
  v1 = *(a1 + 544);
  v5 = *(a1 + 448);
  v4 = *(a1 + 456);
  v18 = *(a1 + 542);
  v17 = *(a1 + 541);
  v16 = *(a1 + 540);
  v2 = *v7 | ((*(v7 + 2) | (*(v7 + 6) << 16)) << 32);
  for (i = *(a1 + 539); ; v1 = i)
  {
    while (1)
    {
      while (1)
      {
        v19 = *(a1 + 547);
        v3 = *(v7 + 16) | (*(v7 + 34) << 16);
        v20 = 1;
LABEL_29:
        *(v7 + 106) = v21 & 1;
        *(v7 + 105) = v13 & 1;
        *(a1 + 544) = v1;
        *(a1 + 448) = v5;
        *(a1 + 456) = v4;
        *(a1 + 468) = v20;
        *(a1 + 543) = v19;
        *(v7 + 12) = v3;
        *(v7 + 26) = BYTE2(v3);
        *(a1 + 542) = v18;
        *(a1 + 541) = v17;
        *(a1 + 540) = v16;
        *v7 = v2;
        *(v7 + 6) = BYTE6(v2);
        *(v7 + 2) = WORD2(v2);
        *(a1 + 539) = i;
        Backend::Google::ProtocolMessageReader::nextField(*(a1 + 432), (a1 + 424));
        v14 = *(a1 + 424);
        *(a1 + 416) = v14;
        if (!v14)
        {
          goto LABEL_148;
        }

        if (*v14)
        {
          v67 = 1;
          goto LABEL_125;
        }

LABEL_31:
        detail::lazy_promise<ReadResult<unsigned int>>::result((v14 + 2));
        v24 = *v23;
        v25 = *v23 >> 8;
        v26 = *v23 & 0xFFFFFFFF00000000;
        *(a1 + 547) = *v23;
        *(v7 + 34) = BYTE3(v24);
        *(v7 + 16) = v25;
        v27 = *(a1 + 424);
        if (v27)
        {
          (*(v27 + 8))();
        }

        if (v26 != 0x100000000)
        {
          if (HIDWORD(v24))
          {
            std::__throw_bad_variant_access[abi:sn200100]();
            v75 = v74;
            Backend::Google::HashList::~HashList(v79);
            if (*(a1 + 288) == 1)
            {
              v76 = *(a1 + 264);
              if (v76)
              {
                *(a1 + 272) = v76;
                operator delete(v76);
              }
            }

            if (*(a1 + 408) == 1)
            {
              v77 = *(a1 + 400);
              *(a1 + 400) = 0;
              if (v77)
              {
                operator delete[](v77);
              }
            }

            if (*(a1 + 256) == 1)
            {
              v78 = *(a1 + 232);
              if (v78)
              {
                *(a1 + 240) = v78;
                operator delete(v78);
              }
            }

            if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
            {
              operator delete(*(a1 + 200));
            }

            *a1 = 0;
            *(v7 + 98) = 10;
            _Unwind_Resume(v75);
          }

          if (v24)
          {
            BYTE8(v81) = 0;
            LOBYTE(v84) = 0;
            v86 = 0;
            LOBYTE(v87.__begin_) = 0;
            v88 = 0;
            *v79 = 0u;
            memset(v80, 0, sizeof(v80));
            LOBYTE(v81) = 0;
            if (*(a1 + 224) == 1)
            {
              std::string::operator=(v79, (a1 + 200));
            }

            if (*(a1 + 256))
            {
              std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>(&v80[1], *(a1 + 232), *(a1 + 240), *(a1 + 240) - *(a1 + 232));
              if (*(a1 + 541))
              {
                v53 = *(a1 + 542);
                v54 = *(a1 + 540);
                v55 = *(v7 + 2) | (*(v7 + 6) << 16);
                v56 = *v7;
                v82[0] = *(a1 + 539);
                *&v82[1] = *v11;
                *&v82[16] = *(v11 + 15);
                *&v81 = (v56 << 8) | (v55 << 40) | v54;
                BYTE8(v81) = v53;
                if (*(a1 + 408))
                {
                  v57 = v86;
                  v58 = *(a1 + 400);
                  v84 = *(a1 + 392);
                  *(a1 + 400) = 0;
                  if (v57 == 1)
                  {
                    v59 = __p;
                    __p = v58;
                    if (v59)
                    {
                      operator delete[](v59);
                    }
                  }

                  else
                  {
                    __p = v58;
                    v86 = 1;
                  }

                  if (*(a1 + 288) == 1)
                  {
                    std::optional<std::vector<unsigned int>>::operator=[abi:sn200100]<std::vector<unsigned int>,void>(&v87, (a1 + 264));
                  }

                  v83 = *(v7 + 106) & *(v7 + 105) & 1;
                  *(a1 + 32) = *v79;
                  *(a1 + 48) = v80[0];
                  v79[0] = 0;
                  v79[1] = 0;
                  v80[0] = 0;
                  *(a1 + 56) = *&v80[1];
                  *(a1 + 72) = v80[3];
                  memset(&v80[1], 0, 24);
                  v68 = v81;
                  v69 = *v82;
                  v70 = *&v82[16];
                  *(a1 + 128) = v83;
                  *(a1 + 96) = v69;
                  *(a1 + 112) = v70;
                  *(a1 + 80) = v68;
                  *(a1 + 136) = 0;
                  *(a1 + 152) = 0;
                  v71 = v86;
                  if (v86 == 1)
                  {
                    v72 = __p;
                    __p = 0;
                    *(a1 + 136) = v84;
                    *(a1 + 144) = v72;
                    *(a1 + 152) = 1;
                  }

                  *(a1 + 160) = 0;
                  *(a1 + 184) = 0;
                  if (v88 == 1)
                  {
                    *(a1 + 160) = v87;
                    memset(&v87, 0, sizeof(v87));
                    *(a1 + 184) = 1;
                  }

                  *(a1 + 192) = 1;
                  *(a1 + 24) = 1;
                  if (v71)
                  {
                    v73 = __p;
                    __p = 0;
                    if (v73)
                    {
                      operator delete[](v73);
                      if (v80[1])
                      {
                        v80[2] = v80[1];
                        operator delete(v80[1]);
                      }
                    }
                  }

                  if (SHIBYTE(v80[0]) < 0)
                  {
                    operator delete(v79[0]);
                  }

                  goto LABEL_108;
                }
              }
            }

            __break(1u);
LABEL_148:
            MEMORY[0xDEADDEAD] = 0;
            std::terminate();
          }

LABEL_107:
          *(a1 + 32) = 0;
          *(a1 + 192) = 0;
          *(a1 + 24) = 1;
LABEL_108:
          if (*(a1 + 288) == 1)
          {
            v60 = *(a1 + 264);
            if (v60)
            {
              *(a1 + 272) = v60;
              operator delete(v60);
            }
          }

          if (*(a1 + 408) == 1)
          {
            v61 = *(a1 + 400);
            *(a1 + 400) = 0;
            if (v61)
            {
              operator delete[](v61);
            }
          }

          if (*(a1 + 256) == 1)
          {
            v62 = *(a1 + 232);
            if (v62)
            {
              *(a1 + 240) = v62;
              operator delete(v62);
            }
          }

          if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
          {
            operator delete(*(a1 + 200));
          }

          *a1 = 0;
          *(v7 + 98) = 10;
          v63 = *(a1 + 16);
          goto LABEL_121;
        }

        v28 = *(a1 + 432);
        if (v24 > 3)
        {
          break;
        }

        if (v24 == 1)
        {
          Backend::Google::ProtocolMessageReader::readString(v28, (a1 + 424));
          v14 = *(a1 + 424);
          *(a1 + 416) = v14;
          if (!v14)
          {
            goto LABEL_148;
          }

          if (*v14)
          {
            v67 = 2;
            goto LABEL_125;
          }

          goto LABEL_65;
        }

        if (v24 == 2)
        {
          Backend::Google::ProtocolMessageReader::readLengthDelimitedField(v28, (a1 + 424));
          v14 = *(a1 + 424);
          *(a1 + 416) = v14;
          if (!v14)
          {
            goto LABEL_148;
          }

          if (*v14)
          {
            v67 = 3;
            goto LABEL_125;
          }

          goto LABEL_91;
        }

        if (v24 != 3)
        {
          goto LABEL_68;
        }

        Backend::Google::ProtocolMessageReader::readVarintField(v28, (a1 + 424));
        v14 = *(a1 + 424);
        *(a1 + 416) = v14;
        if (!v14)
        {
          goto LABEL_148;
        }

        if (*v14)
        {
          v67 = 4;
          goto LABEL_125;
        }

LABEL_47:
        detail::lazy_promise<std::optional<unsigned long long>>::result((v14 + 2));
        v5 = *v32;
        v33 = *(v32 + 8);
        v34 = *(a1 + 424);
        if (v34)
        {
          (*(v34 + 8))();
        }

        if ((v33 & 1) == 0 || v5 >= 2)
        {
          goto LABEL_107;
        }

        LOBYTE(v13) = v5 != 0;
        v4 = *(a1 + 456);
        v1 = *(a1 + 544);
        v18 = *(a1 + 542);
        v17 = *(a1 + 541);
        v16 = *(a1 + 540);
        v2 = *v7 | ((*(v7 + 2) | (*(v7 + 6) << 16)) << 32);
        i = *(a1 + 539);
        v21 = 1;
      }

      if (v24 <= 5)
      {
        if (v24 != 4)
        {
          *(a1 + 328) = &unk_2838CDA18;
          *(a1 + 336) = Backend::Google::readRemovalIndices;
          *(a1 + 352) = v9;
          Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(v28, v9, (a1 + 424));
          v14 = *(a1 + 424);
          *(a1 + 416) = v14;
          if (!v14)
          {
            goto LABEL_148;
          }

          if (*v14)
          {
            v67 = 6;
            goto LABEL_125;
          }

          goto LABEL_39;
        }

        *(a1 + 296) = &unk_2838CE390;
        *(a1 + 304) = Backend::Google::readAdditions;
        *(a1 + 320) = v8;
        Backend::Google::parseRiceDeltaEncoding<Backend::Google::HashList::Addition>(v28, v8, (a1 + 424));
        v14 = *(a1 + 424);
        *(a1 + 416) = v14;
        if (!v14)
        {
          goto LABEL_148;
        }

        if (*v14)
        {
          v67 = 5;
          goto LABEL_125;
        }

        goto LABEL_76;
      }

      if (v24 != 6)
      {
        break;
      }

      *(a1 + 360) = &unk_2838CDAA8;
      *(a1 + 368) = Backend::Google::HashListsBatchGetResponseParser::parseDuration;
      *(a1 + 384) = v10;
      Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::chrono::duration<long long,std::ratio<1l,1l>>>(v28, v10, (a1 + 424));
      v14 = *(a1 + 424);
      *(a1 + 416) = v14;
      if (!v14)
      {
        goto LABEL_148;
      }

      if (*v14)
      {
        v67 = 7;
        goto LABEL_125;
      }

LABEL_82:
      detail::lazy_promise<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>>::result((v14 + 2));
      v4 = *v48;
      v49 = *(v48 + 8);
      v50 = *(a1 + 424);
      if (v50)
      {
        (*(v50 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v10);
      if ((v49 & 1) == 0)
      {
        goto LABEL_107;
      }

      if (*(a1 + 542))
      {
        v18 = *(a1 + 542);
      }

      else
      {
        v18 = 1;
      }

      v2 = v4 >> 8;
      v21 = *(v7 + 106);
      LOBYTE(v13) = *(v7 + 105);
      v1 = *(a1 + 544);
      v5 = *(a1 + 448);
      v17 = *(a1 + 541);
      i = *(a1 + 539);
      v16 = v4;
    }

    if (v24 != 7)
    {
LABEL_68:
      Backend::Google::ProtocolMessageReader::skipField(v28, (a1 + 416));
      v22 = *(a1 + 416);
      *(a1 + 424) = v22;
      if (!v22)
      {
        goto LABEL_148;
      }

      if (*v22)
      {
        *(v7 + 98) = 9;
        v22[2] = a1;
        v63 = *(a1 + 424);
        goto LABEL_121;
      }

LABEL_70:
      detail::lazy_promise<BOOL>::result((v22 + 2));
      v44 = *v43;
      v45 = *(a1 + 416);
      if (v45)
      {
        (*(v45 + 8))();
      }

      if (!v44)
      {
        goto LABEL_107;
      }

      goto LABEL_95;
    }

    Backend::Google::ProtocolMessageReader::readByteArray<32ul>(v28, (a1 + 424));
    v14 = *(a1 + 424);
    *(a1 + 416) = v14;
    if (!v14)
    {
      goto LABEL_148;
    }

    if (*v14)
    {
      break;
    }

LABEL_56:
    detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v14 + 2));
    i = *v35;
    v36 = *(v35 + 1);
    *(v12 + 15) = *(v35 + 1);
    *v12 = v36;
    v37 = v35[32];
    v38 = *(a1 + 424);
    if (v38)
    {
      (*(v38 + 8))();
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_107;
    }

    v39 = *(a1 + 541);
    *v11 = *v12;
    *(v11 + 15) = *(v12 + 15);
    if (v39)
    {
      v17 = v39;
    }

    else
    {
      v17 = 1;
    }

    v21 = *(v7 + 106);
    LOBYTE(v13) = *(v7 + 105);
    v5 = *(a1 + 448);
    v4 = *(a1 + 456);
    v18 = *(a1 + 542);
    v16 = *(a1 + 540);
    v2 = *v7 | ((*(v7 + 2) | (*(v7 + 6) << 16)) << 32);
  }

  v67 = 8;
LABEL_125:
  *(v7 + 98) = v67;
  v14[2] = a1;
  v63 = *(a1 + 416);
LABEL_121:
  v64 = *v63;
  v65 = *MEMORY[0x277D85DE8];

  return v64();
}

void Backend::Google::HashListsBatchGetResponseParser::parseHashList(uint64_t a1)
{
  v2 = *(a1 + 538);
  if (v2 <= 4)
  {
    if (*(a1 + 538) <= 1u)
    {
      if (!*(a1 + 538))
      {
        goto LABEL_36;
      }

      v5 = *(a1 + 464);
      v6 = *(a1 + 466);
      *(a1 + 547) = *(a1 + 543);
      *(a1 + 474) = v6;
      *(a1 + 472) = v5;
    }

    goto LABEL_16;
  }

  if (*(a1 + 538) <= 7u)
  {
    if (v2 == 5)
    {
      v7 = *(a1 + 424);
      if (v7)
      {
        (*(v7 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 296);
    }

    else if (v2 == 6)
    {
      v3 = *(a1 + 424);
      if (v3)
      {
        (*(v3 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 328);
    }

    else
    {
      v8 = *(a1 + 424);
      if (v8)
      {
        (*(v8 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<std::chrono::duration<long long,std::ratio<1l,1l>>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 360);
    }

    goto LABEL_24;
  }

  if (v2 == 8)
  {
LABEL_16:
    v4 = *(a1 + 424);
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v2 != 9)
  {
    goto LABEL_36;
  }

  v4 = *(a1 + 416);
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_17:
  (*(v4 + 8))();
LABEL_24:
  if (*(a1 + 288) == 1)
  {
    v9 = *(a1 + 264);
    if (v9)
    {
      *(a1 + 272) = v9;
      operator delete(v9);
    }
  }

  if (*(a1 + 408) == 1)
  {
    v10 = *(a1 + 400);
    *(a1 + 400) = 0;
    if (v10)
    {
      operator delete[](v10);
    }
  }

  if (*(a1 + 256) == 1)
  {
    v11 = *(a1 + 232);
    if (v11)
    {
      *(a1 + 240) = v11;
      operator delete(v11);
    }
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

LABEL_36:
  detail::lazy_promise<std::optional<Backend::Google::HashList>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse(uint64_t a1)
{
  v3 = a1 + 264;
  v4 = a1 + 232;
  v5 = *(a1 + 324);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 288);
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        goto LABEL_26;
      }
    }

LABEL_55:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*(a1 + 324))
  {
    v8 = *(a1 + 64);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

  v6 = 0;
  *v3 = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  while (1)
  {
    *(a1 + 316) = v6;
    *(a1 + 325) = v5;
    *(v3 + 48) = v1;
    *(v3 + 50) = BYTE2(v1);
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 304), (a1 + 288));
    v8 = *(a1 + 288);
    *(a1 + 64) = v8;
    if (!v8)
    {
      goto LABEL_55;
    }

    if (*v8)
    {
      v28 = 1;
LABEL_50:
      *(v3 + 60) = v28;
      v8[2] = a1;
      v27 = *(a1 + 64);
      goto LABEL_52;
    }

LABEL_13:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v8 + 2));
    v10 = *v9;
    v11 = *v9 >> 8;
    v12 = *v9 & 0xFFFFFFFF00000000;
    *(a1 + 326) = *v9;
    *(v3 + 58) = BYTE3(v10);
    *(v3 + 56) = v11;
    v13 = *(a1 + 288);
    if (v13)
    {
      (*(v13 + 8))();
    }

    if (v12 != 0x100000000)
    {
      break;
    }

    v14 = *(a1 + 304);
    if (v10 == 1)
    {
      *(a1 + 232) = &unk_2838CE300;
      *(a1 + 240) = Backend::Google::HashListsBatchGetResponseParser::parseHashList;
      *(a1 + 256) = v4;
      Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::HashList>(v14, v4, (a1 + 296));
      v7 = *(a1 + 296);
      *(a1 + 288) = v7;
      if (!v7)
      {
        goto LABEL_55;
      }

      if (*v7)
      {
        *(v3 + 60) = 2;
        v7[2] = a1;
        v27 = *(a1 + 288);
        goto LABEL_52;
      }

LABEL_19:
      detail::lazy_promise<std::optional<Backend::Google::HashList>>::result((v7 + 2));
      std::__optional_move_base<Backend::Google::HashList,false>::__optional_move_base[abi:sn200100]((a1 + 64), v15);
      v16 = *(a1 + 296);
      if (v16)
      {
        (*(v16 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v4);
      if (*(a1 + 224) != 1)
      {
        goto LABEL_46;
      }

      v17 = *(a1 + 272);
      if (v17 >= *(a1 + 280))
      {
        v18 = std::vector<Backend::Google::HashList>::__emplace_back_slow_path<Backend::Google::HashList>(v3, (a1 + 64));
      }

      else
      {
        std::__construct_at[abi:sn200100]<Backend::Google::HashList,Backend::Google::HashList,Backend::Google::HashList*>(*(a1 + 272), (a1 + 64));
        v18 = v17 + 160;
      }

      *(a1 + 272) = v18;
      if (*(a1 + 224))
      {
        if (*(a1 + 216) == 1)
        {
          v22 = *(a1 + 192);
          if (v22)
          {
            *(a1 + 200) = v22;
            operator delete(v22);
          }
        }

        if (*(a1 + 184) == 1)
        {
          v23 = *(a1 + 176);
          *(a1 + 176) = 0;
          if (v23)
          {
            operator delete[](v23);
          }
        }

        v24 = *(a1 + 88);
        if (v24)
        {
          *(a1 + 96) = v24;
          operator delete(v24);
        }

        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }
      }
    }

    else
    {
      Backend::Google::ProtocolMessageReader::skipField(v14, (a1 + 288));
      v8 = *(a1 + 288);
      *(a1 + 64) = v8;
      if (!v8)
      {
        goto LABEL_55;
      }

      if (*v8)
      {
        v28 = 3;
        goto LABEL_50;
      }

LABEL_26:
      detail::lazy_promise<BOOL>::result((v8 + 2));
      v20 = *v19;
      v21 = *(a1 + 288);
      if (v21)
      {
        (*(v21 + 8))();
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    LOBYTE(v5) = *(a1 + 326);
    v1 = *(v3 + 56) | (*(v3 + 58) << 16);
    v6 = 1;
  }

  if (HIDWORD(v10))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v32 = v31;
    v34 = v3;
    std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v34);
    *a1 = 0;
    *(v3 + 60) = 4;
    _Unwind_Resume(v32);
  }

  if (v10)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<Backend::Google::HashList>::__vdeallocate(&v34);
    v25 = *(a1 + 280);
    v26 = *v3;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    *(a1 + 32) = v26;
    *(a1 + 48) = v25;
    v35 = 0;
    v36 = 0;
    v33 = &v34;
    v34 = 0;
    *(a1 + 56) = 1;
    *(a1 + 24) = 1;
    std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v33);
  }

  else
  {
LABEL_46:
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 24) = 1;
  }

  v34 = v3;
  std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v34);
  *a1 = 0;
  *(v3 + 60) = 4;
  v27 = *(a1 + 16);
LABEL_52:
  v29 = *v27;

  return v29();
}

void Backend::Google::HashListsBatchGetResponseParser::parseHashListsBatchGetResponse(uint64_t a1)
{
  v2 = *(a1 + 324);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v6 = *(a1 + 296);
      if (v6)
      {
        (*(v6 + 8))();
      }

      std::__function::__value_func<Lazy<std::optional<Backend::Google::HashList>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 232);
      goto LABEL_12;
    }

    if (v2 != 3)
    {
      goto LABEL_13;
    }

LABEL_7:
    v5 = *(a1 + 288);
    if (v5)
    {
      (*(v5 + 8))();
    }

LABEL_12:
    v7 = (a1 + 264);
    std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v7);
    goto LABEL_13;
  }

  if (*(a1 + 324))
  {
    v3 = *(a1 + 312);
    v4 = *(a1 + 314);
    *(a1 + 326) = *(a1 + 325);
    *(a1 + 322) = v4;
    *(a1 + 320) = v3;
    goto LABEL_7;
  }

LABEL_13:
  detail::lazy_promise<std::optional<Backend::Google::HashListsBatchGetResponse>>::~lazy_promise(a1 + 16);
  operator delete(a1);
}

uint64_t Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  detail::lazy_promise<std::optional<Backend::Google::HashListsBatchGetResponse>>::result(v2 + 16);
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(v4 + 24) == 1)
  {
    *(a1 + 56) = *v4;
    *(a1 + 72) = *(v4 + 16);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(a1 + 80) = 1;
  }

  (*(*(a1 + 144) + 8))();
  v5 = *(a1 + 48);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    if (*(a1 + 80) == 1)
    {
      v10 = v1;
      std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v10);
    }

    v9 = **(a1 + 136);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v9);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100](a1 + 24);
    *a1 = 0;
    *(a1 + 17) = 1;
    _Unwind_Resume(v8);
  }

  (*(*v5 + 48))(v5, a1 + 56);
  if (*(a1 + 80) == 1)
  {
    v10 = (a1 + 56);
    std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v10);
  }

  v6 = **(a1 + 136);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  result = std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100](a1 + 24);
  *a1 = 0;
  *(a1 + 17) = 1;
  return result;
}

void Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>(void *__p)
{
  if ((*(__p + 17) & 1) == 0)
  {
    v2 = __p[18];
    (*(__p[18] + 8))();
    v3 = *__p[17];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100]((__p + 3));
  }

  v4 = __p[16];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(__p);
}

_DWORD *Backend::Google::SizeConstraints::SizeConstraints(_DWORD *this, int a2, int a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(void *a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = &unk_2838CD7D8;
  v9[1] = a3;
  v9[3] = v9;
  CoroutineCaller<std::shared_ptr<ReadStream>>::CoroutineCaller(a1, &v7, v9);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_22560972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<Task ()(std::shared_ptr<ReadStream>)>::~__value_func[abi:sn200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a4);
  }

  _Unwind_Resume(a1);
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x168uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse;
  result[41] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 356) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x108uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>;
  v6[29] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 20), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 256) = 0;
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x1D8uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse;
  result[45] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 451) = 0;
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x78uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration;
  result[8] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 112) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>;
  result[7] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>;
  result[7] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>;
  result[7] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>;
  result[7] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>;
  v6[16] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 7), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 152) = 0;
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseAddition@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x100uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseAddition;
  result[25] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseAddition;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 248) = 0;
  return result;
}

uint64_t std::vector<Backend::Google::ListUpdateResponse::Addition>::push_back[abi:sn200100](uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3 >= *(result + 16))
  {
    result = std::vector<Backend::Google::ListUpdateResponse::Addition>::__emplace_back_slow_path<Backend::Google::ListUpdateResponse::Addition>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    *v3 = *a2;
    v4 = a2[1];
    a2[1] = 0;
    v3[1] = v4;
    result = (v3 + 2);
LABEL_5:
    *(v2 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseRemoval@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xF0uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseRemoval;
  result[26] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseRemoval;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 232) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>;
  v6[18] = a1;
  result = std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 9), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 168) = 0;
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x90uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum;
  result[11] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 139) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x48uLL);
  *result = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>;
  result[7] = a1;
  result[1] = Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 64) = 0;
  return result;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *v6 = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>;
  v6[1] = Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>;
  v6[18] = a1;
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100]((v6 + 9), a2);
  v6[2] = 0;
  *(v6 + 6) = 0;
  *a3 = v6;
  *(v6 + 168) = 0;
  return result;
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0xA0uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes;
  result[15] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 152) = 0;
  return result;
}

uint64_t Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](v9, a2);
  v12 = 0;
  v5 = operator new(0x28uLL);
  *v5 = &unk_2838CD8B0;
  v6 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      v5[4] = v5 + 1;
      (*(*v6 + 24))(v6);
    }

    else
    {
      v5[4] = v10;
      v10 = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v12 = v5;
  Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>(a1, v11, a3);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v11);
  result = std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22560A088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](va1);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void *Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x88uLL);
  *result = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices;
  result[14] = a1;
  result[1] = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 132) = 0;
  return result;
}

void detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

_BYTE *std::__optional_move_base<Backend::Google::ListUpdateResponse,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[120] = 0;
  if (*(a2 + 120) == 1)
  {
    std::__construct_at[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse*>(a1, a2);
    a1[120] = 1;
  }

  return a1;
}

uint64_t std::__construct_at[abi:sn200100]<Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse,Backend::Google::ListUpdateResponse*>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *result = *a2;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 16) = *(a2 + 16);
    *(result + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = *(a2 + 40);
    *(result + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = *(a2 + 64);
    *(result + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v2 = *(a2 + 88);
    *(result + 104) = *(a2 + 104);
    *(result + 88) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void detail::lazy_promise<std::optional<Backend::Google::ThreatType>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::ThreatEntryType>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::PlatformType>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::ResponseType>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__optional_copy_base<std::vector<unsigned int>,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::vector<unsigned int>::vector[abi:sn200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_22560A5AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<unsigned int>,false>::__optional_copy_base[abi:sn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void detail::lazy_promise<std::optional<Backend::Google::CompressionType>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t std::__optional_copy_base<Backend::Google::RawHashes,false>::__optional_copy_base[abi:sn200100](uint64_t a1, char *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (a2[32] == 1)
  {
    v3 = *a2;
    *(a1 + 8) = 0;
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v5 = *(a2 + 1);
    v4 = *(a2 + 2);
    v6 = v4 - v5;
    if (v4 != v5)
    {
      std::vector<char>::__vallocate[abi:sn200100]((a1 + 8), v4 - v5);
      v7 = *(a1 + 16);
      memmove(v7, v5, v6);
      *(a1 + 16) = &v7[v6];
    }

    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_22560A724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::readAdditions(std::shared_ptr<RiceDecompressor>,unsigned int)::$_1::__invoke(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap32(*a1);
  v3 = bswap32(*a2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

void std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned int>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int *,unsigned int *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    std::vector<unsigned int>::vector[abi:sn200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

void *std::__function::__func<Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CD7D8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CD7D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0,std::allocator<std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>>,Task ()(std::shared_ptr<ReadStream>)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>((a1 + 8), &v4, a3);
  v3 = *(&v4 + 1);
  if (*(&v4 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }
}

void sub_22560A8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xA8uLL);
  *v6 = Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>;
  *(v6 + 1) = Backend::Google::FetchThreatListUpdatesResponseParser::FetchThreatListUpdatesResponseParser(std::shared_ptr<ReadStream>,std::function<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>)::$_0::operator()<std::shared_ptr<ReadStream>>;
  v8 = *a2;
  v7 = a2[1];
  *(v6 + 18) = v7;
  *a2 = 0;
  a2[1] = 0;
  *a3 = v6;
  std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::__value_func[abi:sn200100]((v6 + 72), *a1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v6 + 15) = v7;
    v9 = v6 + 120;
    *(v6 + 26) = 0;
    *(v6 + 14) = v8;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  else
  {
    *(v6 + 15) = 0;
    v9 = v6 + 120;
    *(v6 + 26) = 0;
    *(v6 + 14) = v8;
  }

  *(v6 + 19) = v9;
  Backend::Google::FetchThreatListUpdatesResponseParser::parseFetchThreatListUpdatesResponse((v6 + 104), v6 + 17);
  v10 = *(v6 + 17);
  *(v6 + 20) = v10;
  *(v6 + 16) = v10;
  if (!v10)
  {
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*v10)
  {
    v6[17] = 0;
    v10[2] = v6;
    v11 = **(v6 + 16);

    return v11();
  }

  else
  {
    detail::lazy_promise<std::optional<Backend::Google::FetchThreatListUpdatesResponse>>::result((v10 + 2));
    v6[24] = 0;
    v6[64] = 0;
    if (*(v13 + 40) == 1)
    {
      *(v6 + 24) = *v13;
      *(v6 + 5) = *(v13 + 16);
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 0;
      *(v6 + 3) = *(v13 + 24);
      v6[64] = 1;
    }

    (*(*(v6 + 20) + 8))();
    v14 = *(v6 + 12);
    if (!v14)
    {
      v16 = std::__throw_bad_function_call[abi:sn200100]();
      if (v6[64] == 1)
      {
        v18 = a1;
        std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v18);
      }

      v17 = **(v6 + 19);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100]((v6 + 72));
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      }

      operator delete(v6);
      _Unwind_Resume(v16);
    }

    (*(*v14 + 48))(v14, v6 + 24);
    if (v6[64] == 1)
    {
      v18 = (v6 + 24);
      std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v18);
    }

    v15 = **(v6 + 19);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v15);
    }

    result = std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::~__value_func[abi:sn200100]((v6 + 72));
    *v6 = 0;
    v6[17] = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<Backend::Google::FetchThreatListUpdatesResponse> &&)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void detail::lazy_promise<std::optional<Backend::Google::FetchThreatListUpdatesResponse>>::result(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    std::exception_ptr::exception_ptr(&v2, (a1 + 16));
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

uint64_t detail::lazy_promise<std::optional<Backend::Google::FetchThreatListUpdatesResponse>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 56) == 1)
  {
    v4 = (a1 + 16);
    std::vector<Backend::Google::ListUpdateResponse>::__destroy_vector::operator()[abi:sn200100](&v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDC10;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDC10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 136) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      *(a1 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      *(a1 + 64) = v4;
      operator delete(v4);
    }

    v6 = (a1 + 32);
    std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDC58;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDC58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
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

void *std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::vector<unsigned int>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CD9D0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<std::vector<unsigned int>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::vector<unsigned int>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CD9D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Lazy<std::optional<std::array<unsigned char,32ul>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::array<unsigned char,32ul>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDAF0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<std::array<unsigned char,32ul>>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<std::array<unsigned char,32ul>>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDAF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Lazy<std::optional<Backend::Google::RawHashes>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::RawHashes>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDB38;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::RawHashes>> (*)(Backend::Google::ProtocolMessageReader &),std::allocator<Lazy<std::optional<Backend::Google::RawHashes>> (*)(Backend::Google::ProtocolMessageReader &)>,Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDB38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

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

void *std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CD8B0;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__func(void *a1)
{
  *a1 = &unk_2838CD8B0;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100]((a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2838CD8B0;
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__value_func[abi:sn200100]((v2 + 1), a1 + 8);
  return v2;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1},std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 8);

  operator delete(a1);
}

void *std::__invoke_void_return_wrapper<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>>,false>::__call[abi:sn200100]<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1} &,Backend::Google::ProtocolMessageReader &>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0xE8uLL);
  *result = Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[16] = a1;
  result[17] = a2;
  result[1] = Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>;
  result[2] = 0;
  *(result + 6) = 0;
  *a3 = result;
  *(result + 224) = 0;
  return result;
}

uint64_t std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    JUMPOUT(0x22560B7C8);
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void *std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2838CDCA0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838CDCA0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int),std::allocator<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> (*)(std::shared_ptr<RiceDecompressor>,unsigned int)>,Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(uint64_t a1, __int128 *a2, unsigned int *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3(&v4, *a3);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](*(&v4 + 1));
  }
}

void sub_22560B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 48) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>(uint64_t a1)
{
  v3 = *(a1 + 256);
  if (v3 == 2)
  {
    v5 = *(a1 + 216);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::result((v5 + 2));
      std::__optional_move_base<Backend::Google::ListUpdateResponse,false>::__optional_move_base[abi:sn200100]((a1 + 32), v13);
      *(a1 + 24) = 1;
      v14 = *(a1 + 224);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 248);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 240);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 192);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 232), (a1 + 216));
    v4 = *(a1 + 216);
    *(a1 + 192) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 256) = 1;
      v4[2] = a1;
      v6 = *(a1 + 192);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 240) = v1;
  v10 = *(a1 + 216);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 208) = v1;
      v11 = a1 + 208;
      *(a1 + 192) = 0;
      *(a1 + 200) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 208) = 0;
      v11 = a1 + 208;
      *(a1 + 192) = 0;
      *(a1 + 200) = v9;
    }

    *(a1 + 248) = v11;
    v12 = *(a1 + 184);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 248);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 240);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 256) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 192);
    v5 = *(a1 + 224);
    *(a1 + 216) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 256) = 2;
        v5[2] = a1;
        v6 = *(a1 + 216);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 152) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 256) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse>(uint64_t a1)
{
  if (*(a1 + 256) > 1u)
  {
    if (*(a1 + 256) != 3)
    {
      v3 = *(a1 + 224);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 248);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 240);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 256))
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 160);

  operator delete(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration(uint64_t a1)
{
  v5 = *(a1 + 112);
  if (v5 <= 1)
  {
    if (!*(a1 + 112))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 112);
      goto LABEL_14;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_59:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

  if (v5 != 3)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_59;
  }

  while (1)
  {
    detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
    v2 = *v21;
    v22 = *(v21 + 8);
    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 8))();
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 115);
    v8 = 1;
    v10 = v2;
    v3 = *(a1 + 80);
    v11 = *(a1 + 88);
    while (1)
    {
      v1 = *(a1 + 108) | (*(a1 + 110) << 16);
      v7 = *(a1 + 116);
      v5 = 1;
LABEL_14:
      *(a1 + 115) = v9 & 1;
      *(a1 + 80) = v3;
      *(a1 + 88) = v11;
      *(a1 + 114) = v8 & 1;
      *(a1 + 104) = v10;
      *(a1 + 100) = v1;
      *(a1 + 102) = BYTE2(v1);
      *(a1 + 113) = v7;
      *(a1 + 96) = v5;
      *(a1 + 72) = v2;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 64), (a1 + 56));
      v6 = *(a1 + 56);
      *(a1 + 48) = v6;
      if (!v6)
      {
        goto LABEL_59;
      }

      if (*v6)
      {
        v31 = 1;
        goto LABEL_55;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v6 + 2));
      v13 = *v12;
      v14 = *v12 >> 8;
      v15 = *v12 & 0xFFFFFFFF00000000;
      *(a1 + 110) = BYTE3(*v12);
      *(a1 + 108) = v14;
      *(a1 + 116) = v13;
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if (v15 != 0x100000000)
      {
        if (HIDWORD(v13))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          *a1 = 0;
          *(a1 + 112) = 5;
          _Unwind_Resume(v34);
        }

        if (v13)
        {
          if (*(a1 + 115))
          {
            v27 = *(a1 + 88);
          }

          else
          {
            v27 = 0;
          }

          v28 = *(a1 + 104) / 1000000000;
          if (!*(a1 + 114))
          {
            v28 = 0;
          }

          *(a1 + 32) = v28 + v27;
          v29 = 1;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v17 = *(a1 + 64);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 2;
          goto LABEL_55;
        }

LABEL_23:
        detail::lazy_promise<std::optional<unsigned long long>>::result((v6 + 2));
        v3 = *v18;
        v19 = *(v18 + 8);
        v20 = *(a1 + 56);
        if (v20)
        {
          (*(v20 + 8))();
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_49;
        }

        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
        v9 = 1;
        v11 = v3;
      }

      else
      {
        Backend::Google::ProtocolMessageReader::skipField(v17, (a1 + 56));
        v6 = *(a1 + 56);
        *(a1 + 48) = v6;
        if (!v6)
        {
          goto LABEL_59;
        }

        if (*v6)
        {
          v31 = 4;
          goto LABEL_55;
        }

LABEL_35:
        detail::lazy_promise<BOOL>::result((v6 + 2));
        v25 = *v24;
        v26 = *(a1 + 56);
        if (v26)
        {
          (*(v26 + 8))();
        }

        if (!v25)
        {
          goto LABEL_49;
        }

        v9 = *(a1 + 115);
        v3 = *(a1 + 80);
        v11 = *(a1 + 88);
        v8 = *(a1 + 114);
        v10 = *(a1 + 104);
      }

      v2 = *(a1 + 72);
    }

    Backend::Google::ProtocolMessageReader::readVarintField(v17, (a1 + 56));
    v6 = *(a1 + 56);
    *(a1 + 48) = v6;
    if (!v6)
    {
      goto LABEL_59;
    }

    if (*v6)
    {
      v31 = 3;
LABEL_55:
      *(a1 + 112) = v31;
      v6[2] = a1;
      v30 = *(a1 + 48);
      goto LABEL_56;
    }
  }

LABEL_49:
  v29 = 0;
  *(a1 + 32) = 0;
LABEL_50:
  *(a1 + 40) = v29;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 112) = 5;
  v30 = *(a1 + 16);
LABEL_56:
  v32 = *v30;

  return v32();
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseDuration(unsigned __int8 *__p)
{
  v2 = __p[112];
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!__p[112])
    {
      goto LABEL_9;
    }

    if (v2 == 1)
    {
      v3 = __p[113];
      v4 = *(__p + 50);
      __p[110] = __p[102];
      *(__p + 54) = v4;
      __p[116] = v3;
    }
  }

  v5 = *(__p + 7);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || (EnumTraits::isValidEnum<Backend::Google::ThreatType>(v4) & 1) == 0)
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || (EnumTraits::isValidEnum<Backend::Google::ThreatType>(v4) & 1) == 0)
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || (EnumTraits::isValidEnum<Backend::Google::ThreatType>(v4) & 1) == 0)
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

void sub_22560C5A0(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::ThreatEntryType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

void sub_22560C760(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::PlatformType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::PlatformType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

void sub_22560C920(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::CompressionType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

void sub_22560CAE0(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>(uint64_t a1)
{
  v3 = *(a1 + 152);
  if (v3 == 2)
  {
    v5 = *(a1 + 112);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      if (*(v13 + 16) == 1)
      {
        *(a1 + 32) = *v13;
        v14 = *(v13 + 8);
        *(v13 + 8) = 0;
        *(a1 + 40) = v14;
        *(a1 + 48) = 1;
      }

      *(a1 + 24) = 1;
      v15 = *(a1 + 120);
      if (v15)
      {
        (*(v15 + 8))();
      }

      v16 = **(a1 + 144);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      v17 = *(a1 + 136);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 128), (a1 + 112));
    v4 = *(a1 + 112);
    *(a1 + 88) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 152) = 1;
      v4[2] = a1;
      v6 = *(a1 + 88);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 136) = v1;
  v10 = *(a1 + 112);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 104) = v1;
      v11 = a1 + 104;
      *(a1 + 88) = 0;
      *(a1 + 96) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 104) = 0;
      v11 = a1 + 104;
      *(a1 + 88) = 0;
      *(a1 + 96) = v9;
    }

    *(a1 + 144) = v11;
    v12 = *(a1 + 80);
    if (!v12)
    {
      v20 = std::__throw_bad_function_call[abi:sn200100]();
      v21 = **(a1 + 144);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      v22 = *(a1 + 136);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      *a1 = 0;
      *(a1 + 152) = 3;
      _Unwind_Resume(v20);
    }

    (*(*v12 + 48))(v12, a1 + 88);
    v5 = *(a1 + 120);
    *(a1 + 112) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 152) = 2;
        v5[2] = a1;
        v6 = *(a1 + 112);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 152) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v18 = *v6;

  return v18();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>(uint64_t a1)
{
  if (*(a1 + 152) > 1u)
  {
    if (*(a1 + 152) != 3)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 144);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 136);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 152))
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 56);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>(uint64_t a1)
{
  v3 = *(a1 + 168);
  if (v3 == 2)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v5 + 2));
      v14 = *v13;
      v15 = v13[1];
      *(a1 + 64) = *(v13 + 32);
      *(a1 + 32) = v14;
      *(a1 + 48) = v15;
      *(a1 + 24) = 1;
      v16 = *(a1 + 136);
      if (v16)
      {
        (*(v16 + 8))();
      }

      v17 = **(a1 + 160);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      v18 = *(a1 + 152);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v18);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 144), (a1 + 128));
    v4 = *(a1 + 128);
    *(a1 + 104) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 168) = 1;
      v4[2] = a1;
      v6 = *(a1 + 104);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 152) = v1;
  v10 = *(a1 + 128);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 120) = v1;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 120) = 0;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
    }

    *(a1 + 160) = v11;
    v12 = *(a1 + 96);
    if (!v12)
    {
      v21 = std::__throw_bad_function_call[abi:sn200100]();
      v22 = **(a1 + 160);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      v23 = *(a1 + 152);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v23);
      }

      *a1 = 0;
      *(a1 + 168) = 3;
      _Unwind_Resume(v21);
    }

    (*(*v12 + 48))(v12, a1 + 104);
    v5 = *(a1 + 136);
    *(a1 + 128) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 168) = 2;
        v5[2] = a1;
        v6 = *(a1 + 128);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 168) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v19 = *v6;

  return v19();
}

{
  v3 = *(a1 + 168);
  if (v3 == 2)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v5 + 2));
      v14 = *v13;
      v15 = v13[1];
      *(a1 + 64) = *(v13 + 32);
      *(a1 + 32) = v14;
      *(a1 + 48) = v15;
      *(a1 + 24) = 1;
      v16 = *(a1 + 136);
      if (v16)
      {
        (*(v16 + 8))();
      }

      v17 = **(a1 + 160);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v17);
      }

      v18 = *(a1 + 152);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v18);
      }

      goto LABEL_31;
    }

LABEL_35:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 144), (a1 + 128));
    v4 = *(a1 + 128);
    *(a1 + 104) = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    if (*v4)
    {
      *(a1 + 168) = 1;
      v4[2] = a1;
      v6 = *(a1 + 104);
      goto LABEL_32;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 152) = v1;
  v10 = *(a1 + 128);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 120) = v1;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 120) = 0;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
    }

    *(a1 + 160) = v11;
    v12 = *(a1 + 96);
    if (!v12)
    {
      v21 = std::__throw_bad_function_call[abi:sn200100]();
      v22 = **(a1 + 160);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v22);
      }

      v23 = *(a1 + 152);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v23);
      }

      *a1 = 0;
      *(a1 + 168) = 3;
      _Unwind_Resume(v21);
    }

    (*(*v12 + 48))(v12, a1 + 104);
    v5 = *(a1 + 136);
    *(a1 + 128) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 168) = 2;
        v5[2] = a1;
        v6 = *(a1 + 128);
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 1;
LABEL_31:
  *a1 = 0;
  *(a1 + 168) = 3;
  v6 = *(a1 + 16);
LABEL_32:
  v19 = *v6;

  return v19();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>(uint64_t a1)
{
  if (*(a1 + 168) > 1u)
  {
    if (*(a1 + 168) != 3)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 160);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 152);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 168))
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  if (*(a1 + 24) == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 32));
  }

  std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 72);

  operator delete(a1);
}

{
  if (*(a1 + 168) > 1u)
  {
    if (*(a1 + 168) != 3)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 160);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 152);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 168))
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  if (*(a1 + 24) == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 32));
  }

  std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 72);

  operator delete(a1);
}

void sub_22560D760(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void sub_22560DA4C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  *v1 = 0;
  *(v1 + 152) = 3;
  _Unwind_Resume(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum(uint64_t a1)
{
  v3 = *(a1 + 139);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        goto LABEL_25;
      }
    }

LABEL_42:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*(a1 + 139))
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    *(a1 + 100) = v3;
    *(a1 + 142) = v6;
    *(a1 + 96) = v1;
    *(a1 + 98) = BYTE2(v1);
    *(a1 + 141) = v5;
    *(a1 + 140) = v4;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 88), (a1 + 80));
    v7 = *(a1 + 80);
    *(a1 + 72) = v7;
    if (!v7)
    {
      goto LABEL_42;
    }

    if (*v7)
    {
      v22 = 1;
LABEL_38:
      *(a1 + 139) = v22;
      v7[2] = a1;
      v21 = *(a1 + 72);
      goto LABEL_39;
    }

LABEL_13:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v7 + 2));
    v9 = *v8;
    v10 = *v8 >> 8;
    v11 = *v8 & 0xFFFFFFFF00000000;
    *(a1 + 143) = *v8;
    *(a1 + 106) = BYTE3(v9);
    *(a1 + 104) = v10;
    v12 = *(a1 + 80);
    if (v12)
    {
      (*(v12 + 8))();
    }

    if (v11 != 0x100000000)
    {
      break;
    }

    v13 = *(a1 + 88);
    if (v9 == 1)
    {
      Backend::Google::ProtocolMessageReader::readByteArray<32ul>(v13, (a1 + 80));
      v7 = *(a1 + 80);
      *(a1 + 72) = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      if (*v7)
      {
        v22 = 2;
        goto LABEL_38;
      }

LABEL_19:
      detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v7 + 2));
      v5 = *v14;
      v15 = *(v14 + 1);
      *(a1 + 123) = *(v14 + 1);
      *(a1 + 108) = v15;
      v4 = v14[32];
      v16 = *(a1 + 80);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if ((v4 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      Backend::Google::ProtocolMessageReader::skipField(v13, (a1 + 80));
      v7 = *(a1 + 80);
      *(a1 + 72) = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      if (*v7)
      {
        v22 = 3;
        goto LABEL_38;
      }

LABEL_25:
      detail::lazy_promise<BOOL>::result((v7 + 2));
      v18 = *v17;
      v19 = *(a1 + 80);
      if (v19)
      {
        (*(v19 + 8))();
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v5 = *(a1 + 141);
      v4 = *(a1 + 140);
    }

    v6 = *(a1 + 143);
    v1 = *(a1 + 104) | (*(a1 + 106) << 16);
    v3 = 1;
  }

  if (HIDWORD(v9))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    *a1 = 0;
    *(a1 + 139) = 4;
    _Unwind_Resume(v25);
  }

  if (v9)
  {
    *(a1 + 32) = *(a1 + 141);
    *(a1 + 33) = *(a1 + 108);
    *(a1 + 48) = *(a1 + 123);
    v20 = *(a1 + 140);
  }

  else
  {
LABEL_33:
    v20 = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 64) = v20;
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 139) = 4;
  v21 = *(a1 + 16);
LABEL_39:
  v23 = *v21;

  return v23();
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum(unsigned __int8 *__p)
{
  v2 = __p[139];
  if (v2 <= 1)
  {
    if (!__p[139])
    {
      goto LABEL_9;
    }

    v3 = *(__p + 48);
    v4 = __p[98];
    __p[143] = __p[142];
    __p[106] = v4;
    *(__p + 52) = v3;
  }

  else if (v2 != 2 && v2 != 3)
  {
    goto LABEL_9;
  }

  v5 = *(__p + 10);
  if (v5)
  {
    (*(v5 + 8))();
  }

LABEL_9:
  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 56);
  if (*v7 != 1)
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    goto LABEL_13;
  }

  Backend::Google::ProtocolMessageReader::readVarintField(v7, (a1 + 48));
  v2 = *(a1 + 48);
  *(a1 + 40) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 64) = 1;
    v2[2] = a1;
    v8 = *(a1 + 40);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 8))();
  }

  if ((v5 & 1) == 0 || !EnumTraits::isValidEnum<Backend::Google::CompressionType>(v4))
  {
    goto LABEL_12;
  }

  *(a1 + 32) = v4;
  *(a1 + 36) = 1;
LABEL_13:
  *(a1 + 24) = 1;
  *a1 = 0;
  *(a1 + 64) = 2;
  v8 = *(a1 + 16);
LABEL_14:
  v9 = *v8;

  return v9();
}

void sub_22560DFAC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 64) = 2;
  _Unwind_Resume(exception_object);
}

void Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>(std::exception_ptr *__p)
{
  if (LOBYTE(__p[8].__ptr_) == 1)
  {
    ptr = __p[6].__ptr_;
    if (ptr)
    {
      ptr[1]();
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

void sub_22560ED34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    (*(v3 + 8))();
  }

  *v1 = 0;
  *(v1 + 72) = 2;
  _Unwind_Resume(exception_object);
}

void sub_22560EF34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    (*(v3 + 8))();
  }

  *v1 = 0;
  *(v1 + 72) = 2;
  _Unwind_Resume(exception_object);
}

void sub_22560F0EC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  *(v1 + 72) = 3;
  _Unwind_Resume(exception_object);
}

void sub_22560F460()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    (*(v1 + 8))();
  }

  JUMPOUT(0x22560F488);
}

void sub_22560F484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  *v1 = 0;
  *(v1 + 136) = 2;
  _Unwind_Resume(exception_object);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices(uint64_t a1)
{
  v3 = *(a1 + 132);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        goto LABEL_25;
      }
    }

LABEL_45:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (*(a1 + 132))
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

  v4 = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  while (1)
  {
    *(a1 + 124) = v4;
    *(a1 + 133) = v3;
    *(a1 + 120) = v1;
    *(a1 + 122) = BYTE2(v1);
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 112), (a1 + 104));
    v5 = *(a1 + 104);
    *(a1 + 96) = v5;
    if (!v5)
    {
      goto LABEL_45;
    }

    if (*v5)
    {
      v20 = 1;
LABEL_41:
      *(a1 + 132) = v20;
      v5[2] = a1;
      v19 = *(a1 + 96);
      goto LABEL_42;
    }

LABEL_13:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v5 + 2));
    v7 = *v6;
    v8 = *v6 >> 8;
    v9 = *v6 & 0xFFFFFFFF00000000;
    *(a1 + 134) = *v6;
    *(a1 + 130) = BYTE3(v7);
    *(a1 + 128) = v8;
    v10 = *(a1 + 104);
    if (v10)
    {
      (*(v10 + 8))();
    }

    if (v9 != 0x100000000)
    {
      break;
    }

    v11 = *(a1 + 112);
    if (v7 == 1)
    {
      Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32(v11, (a1 + 104));
      v5 = *(a1 + 104);
      *(a1 + 96) = v5;
      if (!v5)
      {
        goto LABEL_45;
      }

      if (*v5)
      {
        v20 = 2;
        goto LABEL_41;
      }

LABEL_19:
      detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v5 + 2));
      std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned int>,false> const&>(a1 + 64, v12);
      v13 = *(a1 + 104);
      if (v13)
      {
        (*(v13 + 8))();
      }

      if ((*(a1 + 88) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      Backend::Google::ProtocolMessageReader::skipField(v11, (a1 + 104));
      v5 = *(a1 + 104);
      *(a1 + 96) = v5;
      if (!v5)
      {
        goto LABEL_45;
      }

      if (*v5)
      {
        v20 = 3;
        goto LABEL_41;
      }

LABEL_25:
      detail::lazy_promise<BOOL>::result((v5 + 2));
      v15 = *v14;
      v16 = *(a1 + 104);
      if (v16)
      {
        (*(v16 + 8))();
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    LOBYTE(v3) = *(a1 + 134);
    v1 = *(a1 + 128) | (*(a1 + 130) << 16);
    v4 = 1;
  }

  if (HIDWORD(v7))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v24 = v23;
    if (*(a1 + 88) == 1)
    {
      v25 = *(a1 + 64);
      if (v25)
      {
        *(a1 + 72) = v25;
        operator delete(v25);
      }
    }

    *a1 = 0;
    *(a1 + 132) = 4;
    _Unwind_Resume(v24);
  }

  if ((v7 & 1) != 0 && *(a1 + 88) == 1)
  {
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 48) = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    v17 = 1;
  }

  else
  {
LABEL_33:
    v17 = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 56) = v17;
  *(a1 + 24) = 1;
  if (*(a1 + 88) == 1)
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      *(a1 + 72) = v18;
      operator delete(v18);
    }
  }

  *a1 = 0;
  *(a1 + 132) = 4;
  v19 = *(a1 + 16);
LABEL_42:
  v21 = *v19;

  return v21();
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices(uint64_t a1)
{
  v2 = *(a1 + 132);
  if (v2 <= 1)
  {
    if (!*(a1 + 132))
    {
      goto LABEL_12;
    }

    v3 = *(a1 + 120);
    v4 = *(a1 + 122);
    *(a1 + 134) = *(a1 + 133);
    *(a1 + 130) = v4;
    *(a1 + 128) = v3;
  }

  else if (v2 != 2 && v2 != 3)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    (*(v5 + 8))();
  }

  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      *(a1 + 72) = v6;
      operator delete(v6);
    }
  }

LABEL_12:
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseRemoval(uint64_t a1)
{
  v4 = a1 + 128;
  v5 = a1 + 160;
  v6 = *(a1 + 232);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = *(a1 + 192);
      if (v7)
      {
        goto LABEL_36;
      }
    }

    else if (v6 == 4)
    {
      v7 = *(a1 + 192);
      if (v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = *(a1 + 192);
      if (v7)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_16;
  }

  if (!*(a1 + 232))
  {
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    v7 = *(a1 + 192);
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_16:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v7 = *(a1 + 192);
  if (!v7)
  {
    goto LABEL_16;
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<unsigned int>>::result((v7 + 2));
    v15 = *v14;
    v16 = *v14 >> 8;
    v17 = *v14 & 0xFFFFFFFF00000000;
    *(a1 + 236) = *v14;
    *(a1 + 230) = BYTE3(v15);
    *(a1 + 228) = v16;
    v18 = *(a1 + 200);
    if (v18)
    {
      (*(v18 + 8))();
    }

    if (v17 != 0x100000000)
    {
      break;
    }

    v19 = *(a1 + 208);
    switch(v15)
    {
      case 5:
        *(a1 + 160) = &unk_2838CDA18;
        *(a1 + 168) = Backend::Google::readRemovalIndices;
        *(a1 + 184) = v5;
        Backend::Google::parseRiceDeltaEncoding<std::vector<unsigned int>>(v19, v5, (a1 + 200));
        v7 = *(a1 + 200);
        *(a1 + 192) = v7;
        if (!v7)
        {
          goto LABEL_16;
        }

        if (*v7)
        {
          v25 = 4;
LABEL_67:
          *(a1 + 232) = v25;
          v7[2] = a1;
          v32 = *(a1 + 192);
          goto LABEL_68;
        }

LABEL_17:
        detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v7 + 2));
        v12 = std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::vector<unsigned int>,false>>((a1 + 96), v11);
        v13 = *(a1 + 200);
        if (v13)
        {
          (*(v13 + 8))(v12);
        }

        std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v5);
        break;
      case 3:
        *(a1 + 128) = &unk_2838CD9D0;
        *(a1 + 136) = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawIndices;
        *(a1 + 152) = v4;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>(v19, v4, (a1 + 200));
        v7 = *(a1 + 200);
        *(a1 + 192) = v7;
        if (!v7)
        {
          goto LABEL_16;
        }

        if (*v7)
        {
          v25 = 3;
          goto LABEL_67;
        }

LABEL_36:
        detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v7 + 2));
        std::__optional_storage_base<std::vector<unsigned int>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned int>,false> const&>(a1 + 64, v23);
        v24 = *(a1 + 200);
        if (v24)
        {
          (*(v24 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v4);
        if (*(a1 + 88) != 1)
        {
          goto LABEL_57;
        }

        break;
      case 1:
        Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>(v19, (a1 + 200));
        v7 = *(a1 + 200);
        *(a1 + 192) = v7;
        if (!v7)
        {
          goto LABEL_16;
        }

        if (*v7)
        {
          v25 = 2;
          goto LABEL_67;
        }

LABEL_30:
        detail::lazy_promise<std::optional<Backend::Google::CompressionType>>::result((v7 + 2));
        v8 = *v20;
        v21 = *(v20 + 4);
        v22 = *(a1 + 200);
        if (v22)
        {
          (*(v22 + 8))();
        }

        v1 = v8 >> 8;
        LOBYTE(v6) = 1;
        if ((v21 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_49;
      default:
        Backend::Google::ProtocolMessageReader::skipField(v19, (a1 + 200));
        v7 = *(a1 + 200);
        *(a1 + 192) = v7;
        if (!v7)
        {
          goto LABEL_16;
        }

        if (*v7)
        {
          v25 = 5;
          goto LABEL_67;
        }

LABEL_45:
        detail::lazy_promise<BOOL>::result((v7 + 2));
        v27 = *v26;
        v28 = *(a1 + 200);
        if (v28)
        {
          (*(v28 + 8))();
        }

        if (!v27)
        {
          goto LABEL_57;
        }

        break;
    }

    LOBYTE(v6) = *(a1 + 234);
    v1 = *(a1 + 216) | (*(a1 + 218) << 16);
    LOBYTE(v8) = *(a1 + 233);
LABEL_49:
    v9 = *(a1 + 236);
    v2 = *(a1 + 228) | (*(a1 + 230) << 16);
    v10 = 1;
LABEL_20:
    *(a1 + 224) = v10;
    *(a1 + 235) = v9;
    *(a1 + 220) = v2;
    *(a1 + 222) = BYTE2(v2);
    *(a1 + 234) = v6 & 1;
    *(a1 + 216) = v1;
    *(a1 + 218) = BYTE2(v1);
    *(a1 + 233) = v8;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 208), (a1 + 200));
    v7 = *(a1 + 200);
    *(a1 + 192) = v7;
    if (!v7)
    {
      goto LABEL_16;
    }

    if (*v7)
    {
      v25 = 1;
      goto LABEL_67;
    }
  }

  if (HIDWORD(v15))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v35 = v34;
    if (*(a1 + 120) == 1)
    {
      v36 = *(a1 + 96);
      if (v36)
      {
        *(a1 + 104) = v36;
        operator delete(v36);
      }
    }

    if (*(a1 + 88) == 1)
    {
      v37 = *(a1 + 64);
      if (v37)
      {
        *(a1 + 72) = v37;
        operator delete(v37);
      }
    }

    *a1 = 0;
    *(a1 + 232) = 6;
    _Unwind_Resume(v35);
  }

  if ((v15 & 1) == 0 || (*(a1 + 234) & 1) == 0)
  {
LABEL_57:
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    goto LABEL_58;
  }

  v29 = (*(a1 + 216) << 8) | (*(a1 + 218) << 24) | *(a1 + 233);
  if (v29 == 1)
  {
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (*(a1 + 88) == 1)
    {
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 48) = *(a1 + 80);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
LABEL_76:
      *(a1 + 56) = 1;
    }

LABEL_58:
    *(a1 + 24) = 1;
  }

  else if (v29 == 2)
  {
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (*(a1 + 120) == 1)
    {
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = *(a1 + 112);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 96) = 0;
      goto LABEL_76;
    }

    goto LABEL_58;
  }

  if (*(a1 + 120) == 1)
  {
    v30 = *(a1 + 96);
    if (v30)
    {
      *(a1 + 104) = v30;
      operator delete(v30);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v31 = *(a1 + 64);
    if (v31)
    {
      *(a1 + 72) = v31;
      operator delete(v31);
    }
  }

  *a1 = 0;
  *(a1 + 232) = 6;
  v32 = *(a1 + 16);
LABEL_68:
  v33 = *v32;

  v33();
}

{
  v2 = *(a1 + 232);
  if (v2 <= 2)
  {
    if (!*(a1 + 232))
    {
      goto LABEL_22;
    }

    if (v2 == 1)
    {
      v4 = *(a1 + 220);
      v5 = *(a1 + 222);
      *(a1 + 236) = *(a1 + 235);
      *(a1 + 230) = v5;
      *(a1 + 228) = v4;
    }

LABEL_11:
    v6 = *(a1 + 200);
    if (v6)
    {
      (*(v6 + 8))();
    }

    goto LABEL_16;
  }

  if (*(a1 + 232) > 4u)
  {
    if (v2 != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    v3 = *(a1 + 200);
    if (v3)
    {
      (*(v3 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 128);
  }

  else
  {
    v7 = *(a1 + 200);
    if (v7)
    {
      (*(v7 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 160);
  }

LABEL_16:
  if (*(a1 + 120) == 1)
  {
    v8 = *(a1 + 96);
    if (v8)
    {
      *(a1 + 104) = v8;
      operator delete(v8);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      *(a1 + 72) = v9;
      operator delete(v9);
    }
  }

LABEL_22:
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>(uint64_t a1)
{
  v3 = *(a1 + 168);
  if (v3 == 2)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
LABEL_25:
      detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::result((v5 + 2));
      *(a1 + 32) = 0;
      *(a1 + 64) = 0;
      if (*(v13 + 32) == 1)
      {
        *(a1 + 32) = *v13;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        *(a1 + 40) = *(v13 + 8);
        *(a1 + 56) = *(v13 + 24);
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(a1 + 64) = 1;
      }

      *(a1 + 24) = 1;
      v14 = *(a1 + 136);
      if (v14)
      {
        (*(v14 + 8))();
      }

      v15 = **(a1 + 160);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v15);
      }

      v16 = *(a1 + 152);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v16);
      }

      goto LABEL_33;
    }

LABEL_37:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 144), (a1 + 128));
    v4 = *(a1 + 128);
    *(a1 + 104) = v4;
    if (!v4)
    {
      goto LABEL_37;
    }

    if (*v4)
    {
      *(a1 + 168) = 1;
      v4[2] = a1;
      v6 = *(a1 + 104);
      goto LABEL_34;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v4 + 2));
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *v7;
    v1 = v7[1];
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 152) = v1;
  v10 = *(a1 + 128);
  if (v10)
  {
    (*(v10 + 8))();
  }

  if (v8)
  {
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 120) = v1;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:sn200100](v1);
    }

    else
    {
      *(a1 + 120) = 0;
      v11 = a1 + 120;
      *(a1 + 104) = 0;
      *(a1 + 112) = v9;
    }

    *(a1 + 160) = v11;
    v12 = *(a1 + 96);
    if (!v12)
    {
      v19 = std::__throw_bad_function_call[abi:sn200100]();
      v20 = **(a1 + 160);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v20);
      }

      v21 = *(a1 + 152);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v21);
      }

      *a1 = 0;
      *(a1 + 168) = 3;
      _Unwind_Resume(v19);
    }

    (*(*v12 + 48))(v12, a1 + 104);
    v5 = *(a1 + 136);
    *(a1 + 128) = v5;
    if (v5)
    {
      if (*v5)
      {
        *(a1 + 168) = 2;
        v5[2] = a1;
        v6 = *(a1 + 128);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 1;
LABEL_33:
  *a1 = 0;
  *(a1 + 168) = 3;
  v6 = *(a1 + 16);
LABEL_34:
  v17 = *v6;

  return v17();
}

void Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>(uint64_t a1)
{
  if (*(a1 + 168) > 1u)
  {
    if (*(a1 + 168) != 3)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = **(a1 + 160);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 152);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  else if (*(a1 + 168))
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      (*(v2 + 8))();
    }
  }

  detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::~lazy_promise(a1 + 16);
  std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 72);

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>(unsigned __int8 *a1)
{
  v8 = a1[224];
  if (v8 <= 3)
  {
    if (a1[224] > 1u)
    {
      if (v8 == 2)
      {
        v9 = *(a1 + 14);
        if (v9)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v9 = *(a1 + 14);
        if (v9)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!a1[224])
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a1[56] = 0;
        a1[72] = 0;
        goto LABEL_31;
      }

      v9 = *(a1 + 14);
      if (v9)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_125;
  }

  if (a1[224] > 5u)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 14);
      if (v9)
      {
        goto LABEL_82;
      }

      goto LABEL_125;
    }

    if (v8 == 7)
    {
      v9 = *(a1 + 14);
      if (!v9)
      {
        goto LABEL_125;
      }

LABEL_56:
      detail::lazy_promise<BOOL>::result((v9 + 2));
      v34 = *v33;
      v35 = *(a1 + 15);
      if (v35)
      {
        (*(v35 + 8))();
      }

      if (v34)
      {
        v8 = *(a1 + 54);
        v26 = (a1 + 176);
        v27 = (a1 + 168);
        goto LABEL_92;
      }

      goto LABEL_100;
    }

    v9 = *(a1 + 14);
    if (!v9)
    {
      goto LABEL_125;
    }

LABEL_23:
    detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result((v9 + 2));
    a1[32] = 0;
    a1[48] = 0;
    if (*(v14 + 16) == 1)
    {
      *(a1 + 4) = *v14;
      v15 = *(v14 + 8);
      *(v14 + 8) = 0;
      *(a1 + 5) = v15;
      a1[48] = 1;
    }

    *(a1 + 6) = 1;
    v16 = *(a1 + 15);
    if (v16)
    {
      (*(v16 + 8))();
    }

    v17 = *(a1 + 13);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v17);
    }

    goto LABEL_102;
  }

  if (v8 != 4)
  {
    v9 = *(a1 + 14);
    if (v9)
    {
      goto LABEL_50;
    }

    goto LABEL_125;
  }

  v9 = *(a1 + 14);
  if (!v9)
  {
    goto LABEL_125;
  }

LABEL_69:
  detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
  v4 = *v39;
  v40 = *(v39 + 8);
  v41 = *(a1 + 15);
  if (v41)
  {
    (*(v41 + 8))();
  }

  if ((v40 & 1) == 0 || HIDWORD(v4))
  {
    goto LABEL_100;
  }

  v8 = v4 + 1;
  v26 = (a1 + 176);
  v27 = (a1 + 168);
  v12 = *(a1 + 52);
  v13 = *(a1 + 53);
LABEL_93:
  v5 = *(a1 + 18);
  v6 = *(a1 + 19);
  while (1)
  {
    v3 = *v26;
    v2 = *v27;
    v1 = *(a1 + 110) | (a1[222] << 16);
    v10 = a1[226];
    v11 = 1;
LABEL_31:
    *(a1 + 53) = v13;
    *(a1 + 54) = v8;
    *(a1 + 21) = v2;
    *(a1 + 22) = v3;
    *(a1 + 52) = v12;
    *(a1 + 19) = v6;
    *(a1 + 20) = v4;
    *(a1 + 102) = v1;
    a1[206] = BYTE2(v1);
    *(a1 + 18) = v5;
    *(a1 + 50) = v11;
    a1[225] = v10;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 17), a1 + 15);
    v9 = *(a1 + 15);
    *(a1 + 14) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v53 = 1;
      goto LABEL_113;
    }

LABEL_33:
    detail::lazy_promise<ReadResult<unsigned int>>::result((v9 + 2));
    v19 = *v18;
    v20 = *v18 >> 8;
    v21 = *v18 & 0xFFFFFFFF00000000;
    a1[222] = BYTE3(*v18);
    *(a1 + 110) = v20;
    a1[226] = v19;
    v22 = *(a1 + 15);
    if (v22)
    {
      (*(v22 + 8))();
    }

    if (v21 != 0x100000000)
    {
      break;
    }

    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          Backend::Google::ProtocolMessageReader::riceDecompressor(*(a1 + 17), *(a1 + 53), *(a1 + 52), a1 + 15);
          v9 = *(a1 + 15);
          *(a1 + 14) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v53 = 5;
            goto LABEL_113;
          }

LABEL_50:
          detail::lazy_promise<std::optional<std::shared_ptr<RiceDecompressor>>>::result((v9 + 2));
          v29 = *(v28 + 16);
          if (v29)
          {
            v31 = *v28;
            v30 = *(v28 + 8);
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = *(a1 + 21);
            v31 = *(a1 + 22) & 0xFFFFFFFFFFFFFF00;
          }

          *(a1 + 23) = v32;
          *(a1 + 24) = v31;
          v42 = *(a1 + 15);
          if (v42)
          {
            (*(v42 + 8))();
          }

          if (!v29)
          {
            goto LABEL_100;
          }

          *(a1 + 10) = v31;
          *(a1 + 11) = v32;
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(*(a1 + 16), (a1 + 80), *(a1 + 54));
          v9 = *(a1 + 15);
          *(a1 + 14) = v9;
          if (!v9)
          {
            goto LABEL_125;
          }

          if (*v9)
          {
            v53 = 6;
            goto LABEL_113;
          }

LABEL_82:
          detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result((v9 + 2));
          std::__optional_storage_base<Backend::Google::HashList::Addition,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<Backend::Google::HashList::Addition,false>>((a1 + 56), v43);
          v44 = *(a1 + 15);
          if (v44)
          {
            (*(v44 + 8))();
          }

          v45 = *(a1 + 11);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v45);
          }

          v46 = a1[72];
          v47 = 6;
          if ((v46 & 1) == 0)
          {
            a1[32] = 0;
            a1[48] = 0;
            *(a1 + 6) = 1;
            v47 = 3;
          }

          v27 = (a1 + 184);
          v48 = *(a1 + 23);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v48);
          }

          if (!v46)
          {
            goto LABEL_103;
          }

          v26 = (a1 + 192);
          v8 = *(a1 + 54);
LABEL_92:
          v12 = *(a1 + 52);
          v13 = *(a1 + 53);
          v4 = *(a1 + 20);
          goto LABEL_93;
        }

LABEL_54:
        Backend::Google::ProtocolMessageReader::skipField(*(a1 + 17), a1 + 15);
        v9 = *(a1 + 15);
        *(a1 + 14) = v9;
        if (v9)
        {
          if (*v9)
          {
            v53 = 7;
            goto LABEL_113;
          }

          goto LABEL_56;
        }

LABEL_125:
        MEMORY[0xDEADDEAD] = 0;
        std::terminate();
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 4;
        goto LABEL_113;
      }

      goto LABEL_69;
    }

    if (v19 == 1)
    {
      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 2;
        goto LABEL_113;
      }

LABEL_62:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v5 = *v36;
      v37 = *(v36 + 8);
      v38 = *(a1 + 15);
      if (v38)
      {
        (*(v38 + 8))();
      }

      if ((v37 & 1) == 0 || HIDWORD(v5))
      {
        goto LABEL_100;
      }

      v8 = *(a1 + 54);
      v26 = (a1 + 176);
      v27 = (a1 + 168);
      v12 = *(a1 + 52);
      v13 = v5;
      v6 = *(a1 + 19);
      v4 = *(a1 + 20);
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_54;
      }

      Backend::Google::ProtocolMessageReader::readVarintField(*(a1 + 17), a1 + 15);
      v9 = *(a1 + 15);
      *(a1 + 14) = v9;
      if (!v9)
      {
        goto LABEL_125;
      }

      if (*v9)
      {
        v53 = 3;
        goto LABEL_113;
      }

LABEL_41:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v9 + 2));
      v6 = *v23;
      v24 = *(v23 + 8);
      v25 = *(a1 + 15);
      if (v25)
      {
        (*(v25 + 8))();
      }

      if ((v24 & 1) == 0 || (v6 - 29) <= 0xFFFFFFFFFFFFFFE4)
      {
        goto LABEL_100;
      }

      v13 = *(a1 + 53);
      v8 = *(a1 + 54);
      v26 = (a1 + 176);
      v27 = (a1 + 168);
      v4 = *(a1 + 20);
      v12 = v6;
      v5 = *(a1 + 18);
    }
  }

  if (HIDWORD(v19))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v58 = v57;
    v59 = *(a1 + 13);
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v59);
    }

    if (a1[72] == 1)
    {
      v60 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v60)
      {
        operator delete[](v60);
      }
    }

    *a1 = 0;
    a1[224] = 9;
    _Unwind_Resume(v58);
  }

  if ((v19 & 1) == 0)
  {
LABEL_100:
    a1[32] = 0;
    a1[48] = 0;
    goto LABEL_101;
  }

  if (!*(a1 + 54))
  {
    v55 = operator new(0x30uLL);
    v56 = *(a1 + 16);
    v55[1] = 0;
    v55[2] = 0;
    *v55 = &unk_2838CD668;
    v55[3] = *(a1 + 26);
    v55[4] = 0;
    v55[5] = 0;
    *(a1 + 12) = v55 + 3;
    *(a1 + 13) = v55;
    std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::operator()(v56, (a1 + 96), 1);
    v9 = *(a1 + 15);
    *(a1 + 14) = v9;
    if (!v9)
    {
      goto LABEL_125;
    }

    if (*v9)
    {
      v53 = 8;
LABEL_113:
      a1[224] = v53;
      v9[2] = a1;
      v52 = *(a1 + 14);
LABEL_114:
      v54 = *v52;

      v54();
      return;
    }

    goto LABEL_23;
  }

  a1[32] = 0;
  a1[48] = 0;
  if (a1[72] == 1)
  {
    v49 = *(a1 + 7);
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 4) = v49;
    *(a1 + 5) = v50;
    a1[48] = 1;
  }

LABEL_101:
  *(a1 + 6) = 1;
LABEL_102:
  v47 = 3;
LABEL_103:
  if (a1[72] == 1)
  {
    v51 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v51)
    {
      operator delete[](v51);
    }
  }

  if (v47 == 3)
  {
    *a1 = 0;
    a1[224] = 9;
    v52 = *(a1 + 2);
    goto LABEL_114;
  }

  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

void Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(Backend::Google::ProtocolMessageReader &,std::function<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>)::{lambda(Backend::Google::ListUpdateResponse::Addition&)#1}::operator()<Backend::Google::ProtocolMessageReader>(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2 <= 4)
  {
    if (*(a1 + 224) <= 1u)
    {
      if (!*(a1 + 224))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 225);
      v6 = *(a1 + 204);
      *(a1 + 222) = *(a1 + 206);
      *(a1 + 220) = v6;
      *(a1 + 226) = v5;
    }

    goto LABEL_15;
  }

  if (*(a1 + 224) <= 6u)
  {
    if (v2 != 5)
    {
      v8 = *(a1 + 120);
      if (v8)
      {
        (*(v8 + 8))();
      }

      v9 = *(a1 + 88);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v9);
      }

      v4 = *(a1 + 184);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    *(a1 + 184) = *(a1 + 168);
LABEL_15:
    v7 = *(a1 + 120);
    if (v7)
    {
      (*(v7 + 8))();
    }

    goto LABEL_23;
  }

  if (v2 == 7)
  {
    goto LABEL_15;
  }

  if (v2 != 8)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:sn200100](v4);
LABEL_23:
  if (*(a1 + 72) == 1)
  {
    v10 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v10)
    {
      operator delete[](v10);
    }
  }

LABEL_26:
  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes(uint64_t a1)
{
  v4 = *(a1 + 152);
  if (v4 <= 1)
  {
    if (!*(a1 + 152))
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      *(a1 + 72) = 0;
      *(a1 + 96) = 0;
      goto LABEL_14;
    }

    v5 = *(a1 + 104);
    if (v5)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

  if (v4 != 3)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

  v5 = *(a1 + 104);
  if (!v5)
  {
    goto LABEL_60;
  }

LABEL_30:
  detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result((v5 + 2));
  std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(a1 + 72, v18);
  v19 = *(a1 + 112);
  if (v19)
  {
    (*(v19 + 8))();
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_46;
  }

  while (2)
  {
    LOBYTE(v4) = *(a1 + 154);
    v8 = *(a1 + 144);
    for (i = *(a1 + 128); ; v8 = i)
    {
      v1 = *(a1 + 148) | (*(a1 + 150) << 16);
      v7 = *(a1 + 155);
      v6 = 1;
LABEL_14:
      *(a1 + 154) = v4 & 1;
      *(a1 + 144) = v8;
      *(a1 + 140) = v1;
      *(a1 + 142) = BYTE2(v1);
      *(a1 + 153) = v7;
      *(a1 + 136) = v6;
      *(a1 + 128) = i;
      Backend::Google::ProtocolMessageReader::nextField(*(a1 + 120), (a1 + 112));
      v5 = *(a1 + 112);
      *(a1 + 104) = v5;
      if (!v5)
      {
        goto LABEL_60;
      }

      if (*v5)
      {
        v29 = 1;
        goto LABEL_55;
      }

LABEL_16:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v5 + 2));
      v10 = *v9;
      v11 = *v9 >> 8;
      v12 = *v9 & 0xFFFFFFFF00000000;
      *(a1 + 150) = BYTE3(*v9);
      *(a1 + 148) = v11;
      *(a1 + 155) = v10;
      v13 = *(a1 + 112);
      if (v13)
      {
        (*(v13 + 8))();
      }

      if (v12 != 0x100000000)
      {
        if (HIDWORD(v10))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v34 = v33;
          if (*(a1 + 96) == 1)
          {
            v35 = *(a1 + 72);
            if (v35)
            {
              *(a1 + 80) = v35;
              operator delete(v35);
            }
          }

          *a1 = 0;
          *(a1 + 152) = 5;
          _Unwind_Resume(v34);
        }

        if ((v10 & 1) == 0)
        {
          goto LABEL_46;
        }

        if ((*(a1 + 154) & 1) == 0)
        {
          goto LABEL_46;
        }

        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_46;
        }

        v23 = *(a1 + 144);
        v25 = *(a1 + 72);
        v24 = *(a1 + 80);
        if ((v24 - v25) % v23)
        {
          goto LABEL_46;
        }

        v32 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 32) = v23;
        *(a1 + 40) = v25;
        *(a1 + 48) = v24;
        *(a1 + 56) = v32;
        v26 = 1;
        goto LABEL_47;
      }

      v14 = *(a1 + 120);
      if (v10 == 2)
      {
        Backend::Google::ProtocolMessageReader::readLengthDelimitedField(v14, (a1 + 112));
        v5 = *(a1 + 112);
        *(a1 + 104) = v5;
        if (!v5)
        {
          goto LABEL_60;
        }

        if (*v5)
        {
          v29 = 3;
LABEL_55:
          *(a1 + 152) = v29;
          v5[2] = a1;
          v28 = *(a1 + 104);
          goto LABEL_56;
        }

        goto LABEL_30;
      }

      if (v10 != 1)
      {
        break;
      }

      Backend::Google::ProtocolMessageReader::readVarintField(v14, (a1 + 112));
      v5 = *(a1 + 112);
      *(a1 + 104) = v5;
      if (!v5)
      {
        goto LABEL_60;
      }

      if (*v5)
      {
        v29 = 2;
        goto LABEL_55;
      }

LABEL_23:
      detail::lazy_promise<std::optional<unsigned long long>>::result((v5 + 2));
      i = *v15;
      v16 = *(v15 + 8);
      v17 = *(a1 + 112);
      if (v17)
      {
        (*(v17 + 8))();
      }

      if ((v16 & 1) == 0 || (i - 33) <= 0xFFFFFFFFFFFFFFE2)
      {
        goto LABEL_46;
      }

      LOBYTE(v4) = 1;
    }

    Backend::Google::ProtocolMessageReader::skipField(v14, (a1 + 112));
    v5 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (!v5)
    {
LABEL_60:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }

    if (*v5)
    {
      v29 = 4;
      goto LABEL_55;
    }

LABEL_36:
    detail::lazy_promise<BOOL>::result((v5 + 2));
    v21 = *v20;
    v22 = *(a1 + 112);
    if (v22)
    {
      (*(v22 + 8))();
    }

    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_46:
  v26 = 0;
  *(a1 + 32) = 0;
LABEL_47:
  *(a1 + 64) = v26;
  *(a1 + 24) = 1;
  if (*(a1 + 96) == 1)
  {
    v27 = *(a1 + 72);
    if (v27)
    {
      *(a1 + 80) = v27;
      operator delete(v27);
    }
  }

  *a1 = 0;
  *(a1 + 152) = 5;
  v28 = *(a1 + 16);
LABEL_56:
  v30 = *v28;

  return v30();
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!*(a1 + 152))
    {
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = *(a1 + 153);
      v4 = *(a1 + 140);
      *(a1 + 150) = *(a1 + 142);
      *(a1 + 148) = v4;
      *(a1 + 155) = v3;
    }
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    (*(v5 + 8))();
  }

  if (*(a1 + 96) == 1)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      *(a1 + 80) = v6;
      operator delete(v6);
    }
  }

LABEL_12:
  detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

void Backend::Google::FetchThreatListUpdatesResponseParser::parseAddition(uint64_t a1)
{
  v5 = a1 + 96;
  v6 = a1 + 128;
  v7 = *(a1 + 248);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = *(a1 + 184);
      if (v15)
      {
        goto LABEL_31;
      }
    }

    else if (v7 == 4)
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_91;
  }

  if (!*(a1 + 248))
  {
    LOBYTE(v9) = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *(a1 + 160) = 0;
    *(a1 + 176) = 0;
    goto LABEL_56;
  }

  if (v7 != 1)
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_91:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    goto LABEL_91;
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<unsigned int>>::result((v8 + 2));
    v17 = *v16;
    v18 = *v16 >> 8;
    v19 = *v16 & 0xFFFFFFFF00000000;
    *(a1 + 253) = *v16;
    *(a1 + 246) = BYTE3(v17);
    *(a1 + 244) = v18;
    v20 = *(a1 + 184);
    if (v20)
    {
      (*(v20 + 8))();
    }

    if (v19 != 0x100000000)
    {
      break;
    }

    v21 = *(a1 + 200);
    switch(v17)
    {
      case 4:
        *(a1 + 128) = &unk_2838CDCA0;
        *(a1 + 136) = Backend::Google::readAdditions;
        *(a1 + 152) = v6;
        Backend::Google::parseRiceDeltaEncoding<Backend::Google::ListUpdateResponse::Addition>(v21, v6, (a1 + 184));
        v8 = *(a1 + 184);
        *(a1 + 56) = v8;
        if (!v8)
        {
          goto LABEL_91;
        }

        if (*v8)
        {
          v36 = 4;
          goto LABEL_59;
        }

LABEL_45:
        detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result((v8 + 2));
        std::__optional_storage_base<Backend::Google::HashList::Addition,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<Backend::Google::HashList::Addition,false>>(a1 + 160, v31);
        v32 = *(a1 + 184);
        if (v32)
        {
          (*(v32 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v6);
        if (*(a1 + 176) != 1)
        {
          goto LABEL_68;
        }

        break;
      case 2:
        *(a1 + 96) = &unk_2838CDB38;
        *(a1 + 104) = Backend::Google::FetchThreatListUpdatesResponseParser::parseRawHashes;
        *(a1 + 120) = v5;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::RawHashes>(v21, v5, (a1 + 192));
        v15 = *(a1 + 192);
        *(a1 + 184) = v15;
        if (!v15)
        {
          goto LABEL_91;
        }

        if (*v15)
        {
          *(a1 + 248) = 3;
          v15[2] = a1;
          v37 = *(a1 + 184);
          goto LABEL_79;
        }

LABEL_31:
        detail::lazy_promise<std::optional<Backend::Google::RawHashes>>::result((v15 + 2));
        std::__optional_copy_base<Backend::Google::RawHashes,false>::__optional_copy_base[abi:sn200100](a1 + 56, v25);
        v26 = *(a1 + 192);
        if (v26)
        {
          (*(v26 + 8))();
        }

        std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v5);
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_68;
        }

        v27 = *(a1 + 56);
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        v3 = operator new[](v29 - v28);
        bzero(v3, v29 - v28);
        if (v29 != v28)
        {
          memmove(v3, v28, v29 - v28);
        }

        v12 = *(a1 + 224) & 0xFFFFFF00 | (((v29 - v28) / v27) << 32) | v27;
        if (*(a1 + 251) == 1 && (v30 = *(a1 + 208)) != 0)
        {
          operator delete[](v30);
          if (*(a1 + 88))
          {
            v28 = *(a1 + 64);
            goto LABEL_40;
          }
        }

        else
        {
LABEL_40:
          if (v28)
          {
            *(a1 + 72) = v28;
            operator delete(v28);
          }
        }

        v7 = *(a1 + 232) | (*(a1 + 234) << 16);
        v10 = *(a1 + 250);
        LOBYTE(v9) = *(a1 + 249);
        v11 = 1;
        v1 = v12;
        goto LABEL_55;
      case 1:
        Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::CompressionType>(v21, (a1 + 184));
        v8 = *(a1 + 184);
        *(a1 + 56) = v8;
        if (!v8)
        {
          goto LABEL_91;
        }

        if (*v8)
        {
          v36 = 2;
          goto LABEL_59;
        }

LABEL_25:
        detail::lazy_promise<std::optional<Backend::Google::CompressionType>>::result((v8 + 2));
        v9 = *v22;
        v23 = *(v22 + 4);
        v24 = *(a1 + 184);
        if (v24)
        {
          (*(v24 + 8))();
        }

        if ((v23 & 1) == 0)
        {
          goto LABEL_68;
        }

        v7 = v9 >> 8;
        v12 = *(a1 + 216);
        v1 = *(a1 + 224);
        v3 = *(a1 + 208);
        v10 = 1;
        v11 = *(a1 + 251);
        goto LABEL_55;
      default:
        Backend::Google::ProtocolMessageReader::skipField(v21, (a1 + 184));
        v8 = *(a1 + 184);
        *(a1 + 56) = v8;
        if (!v8)
        {
          goto LABEL_91;
        }

        if (*v8)
        {
          v36 = 5;
          goto LABEL_59;
        }

LABEL_51:
        detail::lazy_promise<BOOL>::result((v8 + 2));
        v34 = *v33;
        v35 = *(a1 + 184);
        if (v35)
        {
          (*(v35 + 8))();
        }

        if (!v34)
        {
          goto LABEL_68;
        }

        break;
    }

    v12 = *(a1 + 216);
    v1 = *(a1 + 224);
    v3 = *(a1 + 208);
    v11 = *(a1 + 251);
    v7 = *(a1 + 232) | (*(a1 + 234) << 16);
    v10 = *(a1 + 250);
    LOBYTE(v9) = *(a1 + 249);
LABEL_55:
    v13 = *(a1 + 253);
    v2 = *(a1 + 244) | (*(a1 + 246) << 16);
    v14 = 1;
LABEL_56:
    *(a1 + 216) = v12;
    *(a1 + 224) = v1;
    *(a1 + 240) = v14;
    *(a1 + 252) = v13;
    *(a1 + 236) = v2;
    *(a1 + 238) = BYTE2(v2);
    *(a1 + 208) = v3;
    *(a1 + 251) = v11 & 1;
    *(a1 + 232) = v7;
    *(a1 + 234) = BYTE2(v7);
    *(a1 + 250) = v10 & 1;
    *(a1 + 249) = v9;
    Backend::Google::ProtocolMessageReader::nextField(*(a1 + 200), (a1 + 184));
    v8 = *(a1 + 184);
    *(a1 + 56) = v8;
    if (!v8)
    {
      goto LABEL_91;
    }

    if (*v8)
    {
      v36 = 1;
LABEL_59:
      *(a1 + 248) = v36;
      v8[2] = a1;
      v37 = *(a1 + 56);
      goto LABEL_79;
    }
  }

  if (HIDWORD(v17))
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    v48 = v47;
    std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](v6);
    if (*(a1 + 176) == 1)
    {
      v49 = *(a1 + 168);
      *(a1 + 168) = 0;
      if (v49)
      {
        operator delete[](v49);
      }
    }

    if (*(a1 + 251) == 1)
    {
      v50 = *(a1 + 208);
      if (v50)
      {
        operator delete[](v50);
      }
    }

    *a1 = 0;
    *(a1 + 248) = 6;
    _Unwind_Resume(v48);
  }

  if ((v17 & 1) == 0 || (*(a1 + 250) & 1) == 0)
  {
LABEL_68:
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 24) = 1;
    v41 = *(a1 + 208);
    goto LABEL_69;
  }

  v38 = (*(a1 + 232) << 8) | (*(a1 + 234) << 24) | *(a1 + 249);
  if (v38 == 1)
  {
    v42 = *(a1 + 251);
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    if (v42)
    {
      v41 = 0;
      v46 = *(a1 + 208);
      *(a1 + 32) = *(a1 + 216);
      *(a1 + 40) = v46;
      *(a1 + 48) = 1;
    }

    else
    {
      v41 = *(a1 + 208);
    }

    *(a1 + 24) = 1;
  }

  else
  {
    if (v38 == 2)
    {
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      if (*(a1 + 176) == 1)
      {
        v39 = *(a1 + 160);
        v40 = *(a1 + 168);
        *(a1 + 168) = 0;
        *(a1 + 32) = v39;
        *(a1 + 40) = v40;
        *(a1 + 48) = 1;
      }

      *(a1 + 24) = 1;
      v41 = *(a1 + 208);
      v42 = *(a1 + 251);
      goto LABEL_70;
    }

    v41 = *(a1 + 208);
LABEL_69:
    v42 = *(a1 + 251);
  }

LABEL_70:
  if (*(a1 + 176) == 1)
  {
    v43 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v43)
    {
      operator delete[](v43);
    }
  }

  if (v41)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  if (v44 == 1)
  {
    operator delete[](v41);
  }

  *a1 = 0;
  *(a1 + 248) = 6;
  v37 = *(a1 + 16);
LABEL_79:
  v45 = *v37;

  v45();
}

{
  v2 = *(a1 + 248);
  if (v2 <= 2)
  {
    if (!*(a1 + 248))
    {
      goto LABEL_24;
    }

    if (v2 == 1)
    {
      v4 = *(a1 + 236);
      v5 = *(a1 + 238);
      *(a1 + 253) = *(a1 + 252);
      *(a1 + 246) = v5;
      *(a1 + 244) = v4;
    }

LABEL_11:
    v6 = *(a1 + 184);
    if (v6)
    {
      (*(v6 + 8))();
    }

    goto LABEL_16;
  }

  if (*(a1 + 248) > 4u)
  {
    if (v2 != 5)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    v3 = *(a1 + 192);
    if (v3)
    {
      (*(v3 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<Backend::Google::RawHashes>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](a1 + 96);
  }

  else
  {
    v7 = *(a1 + 184);
    if (v7)
    {
      (*(v7 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(std::shared_ptr<RiceDecompressor>,unsigned int)>::~__value_func[abi:sn200100](a1 + 128);
  }

LABEL_16:
  v8 = *(a1 + 208);
  v9 = *(a1 + 251);
  if (*(a1 + 176) == 1)
  {
    v10 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v10)
    {
      operator delete[](v10);
    }
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    operator delete[](v8);
  }

LABEL_24:
  detail::lazy_promise<std::optional<Backend::Google::HashList::Addition>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::FetchThreatListUpdatesResponseParser::parseListUpdateResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v101 = *MEMORY[0x277D85DE8];
  v8 = a1 + 192;
  v9 = a1 + 256;
  v10 = a1 + 288;
  v11 = (a1 + 420);
  v94 = a1 + 320;
  v12 = *(a1 + 451);
  if (v12 <= 4)
  {
    if (*(a1 + 451) <= 1u)
    {
      if (!*(a1 + 451))
      {
        LOBYTE(v15) = 0;
        v16 = 0;
        v17 = 0;
        LOBYTE(v18) = 0;
        LOBYTE(v19) = 0;
        v20 = 0;
        LOBYTE(v21) = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = a1 + 320;
        *(a1 + 336) = 0;
        v28 = 0uLL;
        *v94 = 0u;
        *(a1 + 160) = 0;
        *(a1 + 184) = 0;
        goto LABEL_32;
      }

      v14 = *(a1 + 224);
      if (v14)
      {
        goto LABEL_34;
      }
    }

    else if (v12 == 2)
    {
      v14 = *(a1 + 224);
      if (v14)
      {
        goto LABEL_77;
      }
    }

    else if (v12 == 3)
    {
      v14 = *(a1 + 224);
      if (v14)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v14 = *(a1 + 224);
      if (v14)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_148;
  }

  if (*(a1 + 451) > 7u)
  {
    if (v12 == 8)
    {
      v14 = *(a1 + 224);
      if (!v14)
      {
        goto LABEL_148;
      }

LABEL_99:
      detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result((v14 + 2));
      std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(v7 + 160, v58);
      v59 = *(v7 + 344);
      if (v59)
      {
        (*(v59 + 8))();
      }

      if (*(v7 + 184) != 1)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v12 == 9)
      {
        v13 = *(a1 + 344);
        if (v13)
        {
          goto LABEL_69;
        }

        goto LABEL_148;
      }

      v13 = *(a1 + 344);
      if (!v13)
      {
        goto LABEL_148;
      }

LABEL_105:
      detail::lazy_promise<BOOL>::result((v13 + 2));
      v61 = *v60;
      v62 = *(v7 + 224);
      if (v62)
      {
        (*(v62 + 8))();
      }

      if (!v61)
      {
        goto LABEL_126;
      }
    }

LABEL_108:
    v24 = *(v7 + 462);
    LOBYTE(v12) = *(v7 + 461);
    v6 = *(v7 + 460);
    v23 = *(v7 + 384);
    v28 = *(v7 + 368);
    goto LABEL_109;
  }

  if (v12 == 5)
  {
    v14 = *(a1 + 224);
    if (!v14)
    {
      goto LABEL_148;
    }

LABEL_61:
    detail::lazy_promise<std::optional<Backend::Google::ResponseType>>::result((v14 + 2));
    v21 = *v41;
    v42 = *(v41 + 4);
    v43 = *(v7 + 344);
    if (v43)
    {
      (*(v43 + 8))();
    }

    if (v42)
    {
      v24 = *(v7 + 462);
      v4 = v21 >> 8;
      LOBYTE(v12) = *(v7 + 461);
      v6 = *(v7 + 460);
      v23 = *(v7 + 384);
      v28 = *(v7 + 368);
      v27 = *(v7 + 404) | (*(v7 + 406) << 16);
      v20 = *(v7 + 457);
      LOBYTE(v19) = *(v7 + 456);
      LOBYTE(v18) = *(v7 + 455);
      v5 = *(v7 + 396) | (*(v7 + 398) << 16);
      v17 = *(v7 + 454);
      v16 = *(v7 + 453);
      LODWORD(a1) = *(v7 + 392) | (*(v7 + 394) << 16);
      v22 = 1;
      goto LABEL_110;
    }

    goto LABEL_126;
  }

  if (v12 == 6)
  {
    v13 = *(a1 + 344);
    if (!v13)
    {
      goto LABEL_148;
    }

LABEL_83:
    detail::lazy_promise<std::optional<Backend::Google::ListUpdateResponse::Addition>>::result((v13 + 2));
    *(v7 + 224) = 0;
    *(v7 + 240) = 0;
    if (*(v51 + 16) == 1)
    {
      *(v7 + 224) = *v51;
      v52 = *(v51 + 8);
      *(v51 + 8) = 0;
      *(v7 + 232) = v52;
      *(v7 + 240) = 1;
    }

    v53 = *(v7 + 352);
    if (v53)
    {
      (*(v53 + 8))();
    }

    std::__function::__value_func<Lazy<std::optional<Backend::Google::ListUpdateResponse::Addition>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v8);
    if (*(v7 + 240) != 1)
    {
      goto LABEL_126;
    }

    std::vector<Backend::Google::ListUpdateResponse::Addition>::push_back[abi:sn200100](v94, (v7 + 224));
    if (*(v7 + 240))
    {
      v54 = *(v7 + 232);
      *(v7 + 232) = 0;
      if (v54)
      {
        operator delete[](v54);
      }
    }

    goto LABEL_108;
  }

  v13 = *(a1 + 344);
  if (!v13)
  {
    goto LABEL_148;
  }

LABEL_51:
  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::result((v13 + 2));
  std::__optional_copy_base<std::vector<unsigned int>,false>::__optional_copy_base[abi:sn200100](v7 + 224, v38);
  v39 = *(v7 + 352);
  if (v39)
  {
    (*(v39 + 8))();
  }

  std::__function::__value_func<Lazy<std::optional<std::vector<unsigned int>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v9);
  if (*(v7 + 248) != 1)
  {
    goto LABEL_126;
  }

  v40 = *(v7 + 368);
  if (v40)
  {
    operator delete(v40);
    v28 = *(v7 + 224);
    v23 = *(v7 + 240);
  }

  else
  {
    v28 = *(v7 + 224);
    v23 = *(v7 + 240);
    *(v7 + 224) = 0;
    *(v7 + 232) = 0;
    *(v7 + 240) = 0;
  }

  v24 = *(v7 + 462);
  LOBYTE(v12) = *(v7 + 461);
  v6 = *(v7 + 460);
LABEL_109:
  v22 = *(v7 + 459);
  v27 = *(v7 + 404) | (*(v7 + 406) << 16);
  LOBYTE(v21) = *(v7 + 458);
  v4 = *(v7 + 400) | (*(v7 + 402) << 16);
  v20 = *(v7 + 457);
  LOBYTE(v19) = *(v7 + 456);
  LOBYTE(v18) = *(v7 + 455);
  v5 = *(v7 + 396) | (*(v7 + 398) << 16);
  v17 = *(v7 + 454);
  v16 = *(v7 + 453);
  LODWORD(a1) = *(v7 + 392) | (*(v7 + 394) << 16);
LABEL_110:
  while (2)
  {
    LOBYTE(v15) = *(v7 + 452);
    while (1)
    {
      v25 = *(v7 + 464);
      a4 = *(v7 + 416) | (*(v7 + 418) << 16);
      v26 = 1;
LABEL_32:
      *(v7 + 412) = v26;
      *(v7 + 463) = v25;
      *(v7 + 408) = a4;
      *(v7 + 410) = BYTE2(a4);
      *(v7 + 462) = v24;
      *(v7 + 461) = v12;
      *(v7 + 460) = v6;
      *(v7 + 384) = v23;
      *(v7 + 368) = v28;
      *(v7 + 459) = v22 & 1;
      *(v7 + 404) = v27;
      *(v7 + 406) = BYTE2(v27);
      *(v7 + 458) = v21;
      *(v7 + 400) = v4;
      *(v7 + 402) = BYTE2(v4);
      *(v7 + 457) = v20 & 1;
      *(v7 + 456) = v19;
      *(v7 + 455) = v18;
      *(v7 + 396) = v5;
      *(v7 + 398) = BYTE2(v5);
      *(v7 + 454) = v17 & 1;
      *(v7 + 453) = v16 & 1;
      *(v7 + 452) = v15;
      *(v7 + 394) = BYTE2(a1);
      *(v7 + 392) = a1;
      Backend::Google::ProtocolMessageReader::nextField(*(v7 + 360), (v7 + 344));
      v14 = *(v7 + 344);
      *(v7 + 224) = v14;
      if (!v14)
      {
        goto LABEL_148;
      }

      if (*v14)
      {
        v88 = 1;
        goto LABEL_137;
      }

LABEL_34:
      detail::lazy_promise<ReadResult<unsigned int>>::result((v14 + 2));
      v30 = *v29;
      v31 = *v29 >> 8;
      v32 = *v29 & 0xFFFFFFFF00000000;
      *(v7 + 464) = *v29;
      *(v7 + 418) = BYTE3(v30);
      *(v7 + 416) = v31;
      v33 = *(v7 + 344);
      if (v33)
      {
        (*(v33 + 8))();
      }

      if (v32 != 0x100000000)
      {
        if (HIDWORD(v30))
        {
          std::__throw_bad_variant_access[abi:sn200100]();
          v91 = v90;
          if (*(v7 + 184) == 1)
          {
            v92 = *(v7 + 160);
            if (v92)
            {
              *(v7 + 168) = v92;
              operator delete(v92);
            }
          }

          v93 = *(v7 + 368);
          if (v93)
          {
            operator delete(v93);
          }

          *&v95 = v94;
          std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v95);
          *v7 = 0;
          *(v7 + 451) = 11;
          _Unwind_Resume(v91);
        }

        if ((v30 & 1) == 0 || *(v7 + 453) != 1 || !*(v7 + 454) || !*(v7 + 457) || !*(v7 + 459) || *(v7 + 184) != 1 || (*(v7 + 461) & 1) == 0)
        {
          goto LABEL_126;
        }

        v63 = *(v7 + 406);
        v64 = *(v7 + 458);
        v65 = *(v7 + 402);
        v66 = *(v7 + 400);
        v67 = *(v7 + 456);
        v68 = *(v7 + 455);
        v69 = *(v7 + 398);
        v70 = *(v7 + 396);
        v71 = *(v7 + 452);
        v72 = *(v7 + 394);
        v73 = *(v7 + 404) << 8;
        v74 = *(v7 + 392);
        v99 = 0;
        *v98 = 0u;
        v96 = 0u;
        memset(__p, 0, sizeof(__p));
        LODWORD(v95) = v73 | (v63 << 24) | v67;
        DWORD1(v95) = (v74 << 8) | (v72 << 24) | v71;
        DWORD2(v95) = (v70 << 8) | (v69 << 24) | v68;
        HIDWORD(v95) = (v66 << 8) | (v65 << 24) | v64;
        std::vector<Backend::Google::ListUpdateResponse::Addition>::__vdeallocate(&v96);
        v96 = *(v7 + 320);
        __p[0] = *(v7 + 336);
        *(v94 + 8) = 0;
        *(v94 + 16) = 0;
        *v94 = 0;
        if (__p[1])
        {
          __p[2] = __p[1];
          operator delete(__p[1]);
        }

        v75 = *(v7 + 384);
        v76 = *(v7 + 368);
        *&__p[1] = v76;
        __p[3] = v75;
        if ((*(v7 + 184) & 1) == 0)
        {
          __break(1u);
        }

        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
          v76 = *&__p[1];
          v75 = __p[3];
        }

        v77 = *(v7 + 462);
        v78 = *(v7 + 176);
        v79 = *(v7 + 160);
        *(v7 + 160) = 0;
        *(v7 + 168) = 0;
        *(v7 + 176) = 0;
        v100[0] = v77;
        *&v100[1] = *v11;
        *&v100[16] = *(v11 + 15);
        v80 = v96;
        *(v7 + 32) = v95;
        *(v7 + 48) = v80;
        *(v7 + 64) = __p[0];
        v96 = 0uLL;
        *(v7 + 72) = v76;
        *(v7 + 88) = v75;
        memset(__p, 0, sizeof(__p));
        *(v7 + 96) = v79;
        *(v7 + 112) = v78;
        v98[0] = 0;
        v98[1] = 0;
        v99 = 0;
        v81 = *v100;
        *(v7 + 136) = *&v100[16];
        *(v7 + 120) = v81;
        *(v7 + 152) = 1;
        *(v7 + 24) = 1;
        Backend::Google::ListUpdateResponse::~ListUpdateResponse(&v95);
        v82 = 0;
        goto LABEL_127;
      }

      v34 = *(v7 + 360);
      if (v30 > 4)
      {
        if (v30 > 6)
        {
          if (v30 == 7)
          {
            Backend::Google::ProtocolMessageReader::readLengthDelimitedField(v34, (v7 + 344));
            v14 = *(v7 + 344);
            *(v7 + 224) = v14;
            if (!v14)
            {
              goto LABEL_148;
            }

            if (*v14)
            {
              v88 = 8;
              goto LABEL_137;
            }

            goto LABEL_99;
          }

          if (v30 != 8)
          {
LABEL_103:
            Backend::Google::ProtocolMessageReader::skipField(v34, (v7 + 224));
            v13 = *(v7 + 224);
            *(v7 + 344) = v13;
            if (v13)
            {
              if (!*v13)
              {
                goto LABEL_105;
              }

              v89 = 10;
LABEL_147:
              *(v7 + 451) = v89;
              v13[2] = v7;
              v84 = *(v7 + 344);
              goto LABEL_133;
            }

LABEL_148:
            MEMORY[0xDEADDEAD] = 0;
            std::terminate();
          }

          *(v7 + 288) = &unk_2838CDAF0;
          *(v7 + 296) = Backend::Google::FetchThreatListUpdatesResponseParser::parseChecksum;
          *(v7 + 312) = v10;
          Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::array<unsigned char,32ul>>(v34, v10, (v7 + 352));
          v13 = *(v7 + 352);
          *(v7 + 344) = v13;
          if (!v13)
          {
            goto LABEL_148;
          }

          if (*v13)
          {
            v89 = 9;
            goto LABEL_147;
          }

LABEL_69:
          detail::lazy_promise<std::optional<std::array<unsigned char,32ul>>>::result((v13 + 2));
          v6 = *v44;
          v45 = *(v44 + 1);
          *(v7 + 239) = *(v44 + 1);
          *(v7 + 224) = v45;
          v46 = v44[32];
          v47 = *(v7 + 352);
          if (v47)
          {
            (*(v47 + 8))();
          }

          std::__function::__value_func<Lazy<std::optional<std::array<unsigned char,32ul>>> ()(Backend::Google::ProtocolMessageReader &)>::~__value_func[abi:sn200100](v10);
          if ((v46 & 1) == 0)
          {
            goto LABEL_126;
          }

          LOBYTE(v12) = *(v7 + 461);
          *v11 = *(v7 + 224);
          *(v11 + 15) = *(v7 + 239);
          if ((v12 & 1) == 0)
          {
            LOBYTE(v12) = 1;
          }

          v23 = *(v7 + 384);
          v28 = *(v7 + 368);
          v22 = *(v7 + 459);
          v27 = *(v7 + 404) | (*(v7 + 406) << 16);
          LOBYTE(v21) = *(v7 + 458);
          v4 = *(v7 + 400) | (*(v7 + 402) << 16);
          v20 = *(v7 + 457);
          LOBYTE(v19) = *(v7 + 456);
          LOBYTE(v18) = *(v7 + 455);
          v5 = *(v7 + 396) | (*(v7 + 398) << 16);
          v17 = *(v7 + 454);
          v16 = *(v7 + 453);
          LODWORD(a1) = *(v7 + 392) | (*(v7 + 394) << 16);
          v24 = v6;
          goto LABEL_110;
        }

        if (v30 != 5)
        {
          *(v7 + 256) = &unk_2838CD9D0;
          *(v7 + 264) = Backend::Google::FetchThreatListUpdatesResponseParser::parseRemoval;
          *(v7 + 280) = v9;
          Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<std::vector<unsigned int>>(v34, v9, (v7 + 352));
          v13 = *(v7 + 352);
          *(v7 + 344) = v13;
          if (!v13)
          {
            goto LABEL_148;
          }

          if (*v13)
          {
            v89 = 7;
            goto LABEL_147;
          }

          goto LABEL_51;
        }

        *(v7 + 192) = &unk_2838CDC58;
        *(v7 + 200) = Backend::Google::FetchThreatListUpdatesResponseParser::parseAddition;
        *(v7 + 216) = v8;
        Backend::Google::ProtocolMessageReader::readEmbeddedMessageField<Backend::Google::ListUpdateResponse::Addition>(v34, v8, (v7 + 352));
        v13 = *(v7 + 352);
        *(v7 + 344) = v13;
        if (!v13)
        {
          goto LABEL_148;
        }

        if (*v13)
        {
          v89 = 6;
          goto LABEL_147;
        }

        goto LABEL_83;
      }

      if (v30 > 2)
      {
        if (v30 != 3)
        {
          Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ResponseType>(v34, (v7 + 344));
          v14 = *(v7 + 344);
          *(v7 + 224) = v14;
          if (!v14)
          {
            goto LABEL_148;
          }

          if (*v14)
          {
            v88 = 5;
LABEL_137:
            *(v7 + 451) = v88;
            v14[2] = v7;
            v84 = *(v7 + 224);
            goto LABEL_133;
          }

          goto LABEL_61;
        }

        Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::PlatformType>(v34, (v7 + 344));
        v14 = *(v7 + 344);
        *(v7 + 224) = v14;
        if (!v14)
        {
          goto LABEL_148;
        }

        if (*v14)
        {
          v88 = 4;
          goto LABEL_137;
        }

LABEL_93:
        detail::lazy_promise<std::optional<Backend::Google::PlatformType>>::result((v14 + 2));
        v18 = *v55;
        v56 = *(v55 + 4);
        v57 = *(v7 + 344);
        if (v57)
        {
          (*(v57 + 8))();
        }

        if ((v56 & 1) == 0)
        {
          goto LABEL_126;
        }

        v24 = *(v7 + 462);
        v5 = v18 >> 8;
        LOBYTE(v12) = *(v7 + 461);
        v6 = *(v7 + 460);
        v23 = *(v7 + 384);
        v28 = *(v7 + 368);
        v22 = *(v7 + 459);
        v27 = *(v7 + 404) | (*(v7 + 406) << 16);
        LOBYTE(v21) = *(v7 + 458);
        v4 = *(v7 + 400) | (*(v7 + 402) << 16);
        LOBYTE(v19) = *(v7 + 456);
        v17 = *(v7 + 454);
        v16 = *(v7 + 453);
        LODWORD(a1) = *(v7 + 392) | (*(v7 + 394) << 16);
        v20 = 1;
        goto LABEL_110;
      }

      if (v30 == 1)
      {
        break;
      }

      if (v30 != 2)
      {
        goto LABEL_103;
      }

      Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatEntryType>(v34, (v7 + 344));
      v14 = *(v7 + 344);
      *(v7 + 224) = v14;
      if (!v14)
      {
        goto LABEL_148;
      }

      if (*v14)
      {
        v88 = 3;
        goto LABEL_137;
      }

LABEL_43:
      detail::lazy_promise<std::optional<Backend::Google::ThreatEntryType>>::result((v14 + 2));
      v15 = *v35;
      v36 = *(v35 + 4);
      v37 = *(v7 + 344);
      if (v37)
      {
        (*(v37 + 8))();
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_126;
      }

      v24 = *(v7 + 462);
      LODWORD(a1) = v15 >> 8;
      LOBYTE(v12) = *(v7 + 461);
      v6 = *(v7 + 460);
      v23 = *(v7 + 384);
      v28 = *(v7 + 368);
      v22 = *(v7 + 459);
      v27 = *(v7 + 404) | (*(v7 + 406) << 16);
      LOBYTE(v21) = *(v7 + 458);
      v4 = *(v7 + 400) | (*(v7 + 402) << 16);
      v20 = *(v7 + 457);
      LOBYTE(v19) = *(v7 + 456);
      LOBYTE(v18) = *(v7 + 455);
      v5 = *(v7 + 396) | (*(v7 + 398) << 16);
      v17 = 1;
      v16 = *(v7 + 453);
    }

    Backend::Google::ProtocolMessageReader::readEnum<Backend::Google::ThreatType>(v34, (v7 + 344));
    v14 = *(v7 + 344);
    *(v7 + 224) = v14;
    if (!v14)
    {
      goto LABEL_148;
    }

    if (*v14)
    {
      v88 = 2;
      goto LABEL_137;
    }

LABEL_77:
    detail::lazy_promise<std::optional<Backend::Google::ThreatType>>::result((v14 + 2));
    v19 = *v48;
    v49 = *(v48 + 4);
    v50 = *(v7 + 344);
    if (v50)
    {
      (*(v50 + 8))();
    }

    if (v49)
    {
      v24 = *(v7 + 462);
      v27 = v19 >> 8;
      LOBYTE(v12) = *(v7 + 461);
      v6 = *(v7 + 460);
      v23 = *(v7 + 384);
      v28 = *(v7 + 368);
      v22 = *(v7 + 459);
      LOBYTE(v21) = *(v7 + 458);
      v4 = *(v7 + 400) | (*(v7 + 402) << 16);
      v20 = *(v7 + 457);
      LOBYTE(v18) = *(v7 + 455);
      v5 = *(v7 + 396) | (*(v7 + 398) << 16);
      v17 = *(v7 + 454);
      LODWORD(a1) = *(v7 + 392) | (*(v7 + 394) << 16);
      v16 = 1;
      continue;
    }

    break;
  }

LABEL_126:
  *(v7 + 32) = 0;
  *(v7 + 152) = 0;
  *(v7 + 24) = 1;
  v82 = *(v7 + 368);
LABEL_127:
  if (*(v7 + 184) == 1)
  {
    v83 = *(v7 + 160);
    if (v83)
    {
      *(v7 + 168) = v83;
      operator delete(v83);
    }
  }

  if (v82)
  {
    operator delete(v82);
  }

  *&v95 = v94;
  std::vector<Backend::Google::ListUpdateResponse::Addition>::__destroy_vector::operator()[abi:sn200100](&v95);
  *v7 = 0;
  *(v7 + 451) = 11;
  v84 = *(v7 + 16);
LABEL_133:
  v85 = *v84;
  v86 = *MEMORY[0x277D85DE8];

  return v85();
}