char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1 + 24;
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  result = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, v5);
    *(v3 - 2) = v6;
    result = memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  if (!v4 || (v5 = v4[1], v6 = v5 + v3, v5 + v3 > *v4))
  {
    if (*(a1 + 8) <= v3)
    {
      v7 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (!*(a1 + 24))
    {
      operator new();
    }

    if (v7 == -24)
    {
      return 0;
    }

    v4 = malloc_type_malloc(v7 + 24, 0xCD17B134uLL);
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    *v4 = v7;
    v4[1] = 0;
    v4[2] = *a1;
    *a1 = v4;
    v6 = v3;
  }

  v8 = v4 + v5 + 24;
  v4[1] = v6;
  return v8;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  result = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, v5);
    *(v3 - 2) = v6;
    result = memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1;
  if (v2 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    result = (v6 + 16 * result + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return result;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

char *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(char *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 8;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 8;
    ++*(v3 + 2);
LABEL_24:
    v28 = *v3;
    v29 = v28[3];
    if ((v28[4] - v29) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v28);
      v29 = v28[3];
    }

    v28[3] = v29 + 1;
    *v29 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v21 = (a2 >> 18) | 0xFFFFFFF0;
    v14 = *(*result + 32) == v11;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v21;
    v6 = v3 + 8;
    ++*(v3 + 2);
    v22 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v23 = *v3;
    v24 = *(*v3 + 24);
    if ((*(*v3 + 32) - v24) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
      v22 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v24 = v23[3];
    }

    v23[3] = v24 + 1;
    *v24 = v22;
    ++*(v3 + 2);
    v25 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v26 = *v3;
    v27 = *(*v3 + 24);
    if ((*(*v3 + 32) - v27) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
      v25 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v27 = *(v26 + 24);
    }

    *(v26 + 24) = v27 + 1;
    *v27 = v25;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  v14 = *(*result + 32) == v11;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 8;
  ++*(v3 + 2);
  v15 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v16 = *v3;
  v17 = *(*v3 + 24);
  if ((*(*v3 + 32) - v17) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
    v15 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v17 = *(v16 + 24);
  }

  *(v16 + 24) = v17 + 1;
  *v17 = v15;
  ++*(v3 + 2);
  v18 = a2 & 0x3F | 0x80;
  v19 = *v3;
  v20 = v19[3];
  if ((v19[4] - v20) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v19);
    v18 = a2 & 0x3F | 0x80;
    v20 = v19[3];
  }

  v19[3] = v20 + 1;
  *v20 = v18;
LABEL_27:
  ++*v6;
  return result;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(void *a1, const void *a2, size_t __n)
{
  v3 = __n;
  v6 = a1[8];
  if ((a1[9] - v6) <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5);
    v6 = a1[8];
  }

  a1[8] = v6 + 3;
  v7 = a1[3];
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  if (v3 > 0x15)
  {
    *(v6 + 11) = 3077;
    *v6 = v3;
    v8 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v7, v3 + 1);
    v6[1] = v8;
    v6 = v8;
  }

  else
  {
    *(v6 + 11) = 7173;
    *(v6 + 21) = 21 - v3;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = &rapidjson::GenericStringRef<char>::emptyString;
  }

  result = memcpy(v6, v9, v3);
  *(v6 + v3) = 0;
  return result;
}

void uaap_orchestration::grammar::UaapGrammar::fromFile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = v1;
  v14 = *MEMORY[0x277D85DE8];
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  v3 = fopen(v1, "r");
  if (v3)
  {
    v10[0] = v3;
    v10[1] = &v13;
    v10[2] = 0x10000;
    v10[3] = 0;
    v10[5] = 0;
    v10[6] = 0;
    v10[4] = &v13;
    v11 = 0;
    rapidjson::FileReadStream::Read(v10);
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(&v12);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v12, "Could not open grammar file for reading: ");
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *v2;
  }

  if (v5 >= 0)
  {
    v7 = *(v2 + 23);
  }

  else
  {
    v7 = *(v2 + 8);
  }

  v8 = std::string::append(&v12, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v13);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22294BC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v62 & 1) == 0)
    {
LABEL_8:
      rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(&a39);
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v61);
  goto LABEL_8;
}

size_t rapidjson::FileReadStream::Read(size_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2 >= *(this + 24))
  {
    if ((*(this + 56) & 1) == 0)
    {
      *(this + 48) += *(this + 40);
      this = fread(*(this + 8), 1uLL, *(this + 16), *this);
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      *(v1 + 24) = v3 + this - 1;
      *(v1 + 32) = v3;
      *(v1 + 40) = this;
      if (this < v4)
      {
        *(v3 + this) = 0;
        ++*(v1 + 24);
        *(v1 + 56) = 1;
      }
    }
  }

  else
  {
    *(this + 32) = v2 + 1;
  }

  return this;
}

char *rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(char *result, rapidjson::FileReadStream *a2, char *a3)
{
  v5 = result;
  v6 = *(a2 + 4);
  v7 = *v6;
  if (v7 > 0x6D)
  {
    if (v7 != 123)
    {
      if (v7 == 116)
      {
        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 114)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 117)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 101)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v9 = *(a3 + 8);
              if (*(a3 + 9) - v9 <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v9 = *(a3 + 8);
              }

              *(a3 + 8) = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 10;
              goto LABEL_145;
            }
          }
        }
      }

      else
      {
        if (v7 != 110)
        {
          goto LABEL_35;
        }

        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 117)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 108)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 108)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v11 = *(a3 + 8);
              if ((*(a3 + 9) - v11) <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v11 = *(a3 + 8);
              }

              *(a3 + 8) = v11 + 3;
              *v11 = 0;
              v11[1] = 0;
              v11[2] = 0;
              return result;
            }
          }
        }
      }

LABEL_148:
      v49 = &v8[*(a2 + 6) - *(a2 + 1)];
      v50 = 3;
LABEL_149:
      *(v5 + 48) = v50;
      *(v5 + 56) = v49;
      return result;
    }

    result = rapidjson::FileReadStream::Read(a2);
    v12 = *(a3 + 8);
    if (*(a3 + 9) - v12 <= 23)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
      v12 = *(a3 + 8);
    }

    *(a3 + 8) = v12 + 24;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 0;
    *(v12 + 22) = 3;
    while (1)
    {
      v13 = *(a2 + 4);
      v14 = *v13;
      if (v14 > 0x20 || ((1 << v14) & 0x100002600) == 0)
      {
        break;
      }

      result = rapidjson::FileReadStream::Read(a2);
    }

    if (*(v5 + 48))
    {
      return result;
    }

    if (v14 != 125)
    {
      if (v14 != 34)
      {
LABEL_186:
        v49 = &v13[*(a2 + 6) - *(a2 + 1)];
        v50 = 4;
        goto LABEL_149;
      }

      v51 = 0;
      while (1)
      {
        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
        if (*(v5 + 48))
        {
          return result;
        }

        while (1)
        {
          v52 = *(a2 + 4);
          v53 = *v52;
          if (v53 > 0x20 || ((1 << v53) & 0x100002600) == 0)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
        }

        if (*(v5 + 48))
        {
          return result;
        }

        if (v53 != 58)
        {
          v49 = &v52[*(a2 + 6) - *(a2 + 1)];
          v50 = 5;
          goto LABEL_149;
        }

        do
        {
          result = rapidjson::FileReadStream::Read(a2);
          v55 = **(a2 + 4);
          v56 = v55 > 0x20;
          v57 = (1 << v55) & 0x100002600;
        }

        while (!v56 && v57 != 0);
        if (*(v5 + 48))
        {
          return result;
        }

        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
        if (*(v5 + 48))
        {
          return result;
        }

        while (1)
        {
          v59 = *(a2 + 4);
          v60 = *v59;
          if (v60 > 0x20 || ((1 << v60) & 0x100002600) == 0)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
        }

        if (*(v5 + 48))
        {
          return result;
        }

        ++v51;
        if (v60 != 44)
        {
          if (v60 != 125)
          {
            v49 = &v59[*(a2 + 6) - *(a2 + 1)];
            v50 = 6;
            goto LABEL_149;
          }

          rapidjson::FileReadStream::Read(a2);

          return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v51);
        }

        do
        {
          result = rapidjson::FileReadStream::Read(a2);
          v13 = *(a2 + 4);
          v62 = *v13;
        }

        while (v62 <= 0x20 && ((1 << v62) & 0x100002600) != 0);
        if (*(v5 + 48))
        {
          return result;
        }

        if (v62 != 34)
        {
          goto LABEL_186;
        }
      }
    }

    result = rapidjson::FileReadStream::Read(a2);
    v16 = *(a3 + 8);
    v17 = 3;
LABEL_65:
    *(v16 - 2) = v17;
    *(v16 - 24) = 0;
    *(v16 - 16) = 0;
    return result;
  }

  switch(v7)
  {
    case '""':

      return rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
    case '[':
      result = rapidjson::FileReadStream::Read(a2);
      v28 = *(a3 + 8);
      if (*(a3 + 9) - v28 <= 23)
      {
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
        v28 = *(a3 + 8);
      }

      *(a3 + 8) = v28 + 24;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      *v28 = 0;
      *(v28 + 22) = 4;
      while (1)
      {
        v29 = **(a2 + 4);
        if (v29 > 0x20 || ((1 << v29) & 0x100002600) == 0)
        {
          break;
        }

        result = rapidjson::FileReadStream::Read(a2);
      }

      if (*(v5 + 48))
      {
        return result;
      }

      if (v29 != 93)
      {
        v64 = 0;
        while (1)
        {
          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
          if (*(v5 + 48))
          {
            return result;
          }

          while (1)
          {
            v65 = *(a2 + 4);
            v66 = *v65;
            if (v66 > 0x20 || ((1 << v66) & 0x100002600) == 0)
            {
              break;
            }

            result = rapidjson::FileReadStream::Read(a2);
          }

          if (*(v5 + 48))
          {
            return result;
          }

          ++v64;
          if (v66 != 44)
          {
            if (v66 != 93)
            {
              v49 = &v65[*(a2 + 6) - *(a2 + 1)];
              v50 = 7;
              goto LABEL_149;
            }

            rapidjson::FileReadStream::Read(a2);

            return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v64);
          }

          do
          {
            result = rapidjson::FileReadStream::Read(a2);
            v68 = **(a2 + 4);
            v56 = v68 > 0x20;
            v69 = (1 << v68) & 0x100002600;
          }

          while (!v56 && v69 != 0);
          if (*(v5 + 48))
          {
            return result;
          }
        }
      }

      result = rapidjson::FileReadStream::Read(a2);
      v16 = *(a3 + 8);
      v17 = 4;
      goto LABEL_65;
    case 'f':
      result = rapidjson::FileReadStream::Read(a2);
      v8 = *(a2 + 4);
      if (*v8 == 97)
      {
        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 108)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 115)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 101)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v9 = *(a3 + 8);
              if (*(a3 + 9) - v9 <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v9 = *(a3 + 8);
              }

              *(a3 + 8) = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 9;
LABEL_145:
              *(v9 + 22) = v10;
              return result;
            }
          }
        }
      }

      goto LABEL_148;
  }

LABEL_35:
  v18 = *(a2 + 6);
  v19 = *(a2 + 1);
  if (v7 == 45)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v20 = *(a2 + 4);
    v21 = *v20;
  }

  else
  {
    v21 = *v6;
    v20 = *(a2 + 4);
  }

  v22 = v21 - 48;
  v72 = v18;
  v73 = v5;
  v71 = v19;
  if (v21 == 48)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v31 = 0;
    v26 = 0;
    v32 = 0;
    v74 = 0;
    v23 = **(a2 + 4);
    v25 = 0.0;
    goto LABEL_92;
  }

  if ((v21 - 49) > 8)
  {
    v35 = &v20[*(a2 + 6) - *(a2 + 1)];
    v44 = 3;
    goto LABEL_138;
  }

  result = rapidjson::FileReadStream::Read(a2);
  v23 = **(a2 + 4);
  v24 = v23 - 48;
  v25 = 0.0;
  if (v7 != 45)
  {
    if (v24 <= 9)
    {
      v26 = 0;
      v27 = 429496729;
      while (1)
      {
        if (v22 > 0x19999998)
        {
          if (v22 != 429496729)
          {
LABEL_147:
            v27 = v22;
            goto LABEL_73;
          }

          if (v23 > 0x35)
          {
            goto LABEL_73;
          }
        }

        result = rapidjson::FileReadStream::Read(a2);
        v22 = v23 + 10 * v22 - 48;
        ++v26;
        v23 = **(a2 + 4);
        if (v23 - 48 >= 0xA)
        {
LABEL_80:
          v31 = 0;
          goto LABEL_81;
        }
      }
    }

    goto LABEL_213;
  }

  if (v24 > 9)
  {
LABEL_213:
    v31 = 0;
    v26 = 0;
LABEL_81:
    v32 = 0;
    v74 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v27 = 214748364;
  while (1)
  {
    if (v22 > 0xCCCCCCB)
    {
      if (v22 != 214748364)
      {
        goto LABEL_147;
      }

      if (v23 > 0x38)
      {
        break;
      }
    }

    result = rapidjson::FileReadStream::Read(a2);
    v22 = v23 + 10 * v22 - 48;
    ++v26;
    v23 = **(a2 + 4);
    if (v23 - 48 >= 0xA)
    {
      goto LABEL_80;
    }
  }

  v23 = 57;
LABEL_73:
  v31 = v27;
  if (v7 == 45)
  {
    while (v31 <= 0xCCCCCCCCCCCCCCBLL || v31 == 0xCCCCCCCCCCCCCCCLL && v23 <= 0x38)
    {
      result = rapidjson::FileReadStream::Read(a2);
      v31 = (v23 & 0xF) + 10 * v31;
      ++v26;
      v23 = **(a2 + 4);
      if (v23 - 48 >= 0xA)
      {
        goto LABEL_90;
      }
    }
  }

  else
  {
    while (v31 <= 0x1999999999999998 || v31 == 0x1999999999999999 && v23 <= 0x35)
    {
      result = rapidjson::FileReadStream::Read(a2);
      v31 = (v23 & 0xF) + 10 * v31;
      ++v26;
      v23 = **(a2 + 4);
      if (v23 - 48 >= 0xA)
      {
LABEL_90:
        v32 = 0;
        v25 = 0.0;
        goto LABEL_91;
      }
    }
  }

  v25 = v31;
  do
  {
    result = rapidjson::FileReadStream::Read(a2);
    v25 = (v23 - 48) + v25 * 10.0;
    v23 = **(a2 + 4);
  }

  while (v23 - 48 < 0xA);
  v32 = 1;
LABEL_91:
  v74 = 1;
  v22 = v27;
LABEL_92:
  if (v23 == 46)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v33 = *(a2 + 4);
    v23 = *v33;
    if (v23 - 58 <= 0xFFFFFFF5)
    {
      v35 = &v33[*(a2 + 6) - *(a2 + 1)];
      v44 = 14;
      goto LABEL_125;
    }

    v34 = 0;
    if ((v32 & 1) == 0)
    {
      if (!v74)
      {
        v31 = v22;
      }

      do
      {
        if (v23 > 0x39 || v31 >> 53)
        {
          break;
        }

        result = rapidjson::FileReadStream::Read(a2);
        v31 = v23 - 48 + 10 * v31;
        --v34;
        if (v31)
        {
          ++v26;
        }

        v23 = **(a2 + 4);
      }

      while (**(a2 + 4) > 47);
      v25 = v31;
    }

    if (v23 - 48 <= 9)
    {
      do
      {
        result = rapidjson::FileReadStream::Read(a2);
        if (v26 <= 16)
        {
          v25 = (v23 - 48) + v25 * 10.0;
          --v34;
          if (v25 > 0.0)
          {
            ++v26;
          }
        }

        v23 = **(a2 + 4);
      }

      while (v23 - 48 < 0xA);
    }

    v32 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = &v6[v72 - v71];
  if (v23 == 101 || v23 == 69)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v36 = 0;
    v37 = v22;
    if (v74)
    {
      v37 = v31;
    }

    if (!v32)
    {
      v25 = v37;
    }

    v38 = *(a2 + 4);
    v39 = *v38;
    if (v39 != 43)
    {
      if (v39 != 45)
      {
        goto LABEL_116;
      }

      v36 = 1;
    }

    result = rapidjson::FileReadStream::Read(a2);
    v38 = *(a2 + 4);
    v39 = *v38;
LABEL_116:
    v40 = v39 - 48;
    if ((v39 - 48) <= 9)
    {
      result = rapidjson::FileReadStream::Read(a2);
      if (v36)
      {
        v41 = **(a2 + 4);
        if ((v41 - 48) <= 9)
        {
          while (1)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v40 = v41 + 10 * v40 - 48;
            v41 = **(a2 + 4);
            v42 = v41 - 48;
            if (v40 > (v34 + 2147483639) / 10)
            {
              break;
            }

            if (v42 >= 0xA)
            {
              goto LABEL_127;
            }
          }

          if (v42 <= 9)
          {
            do
            {
              result = rapidjson::FileReadStream::Read(a2);
            }

            while (**(a2 + 4) - 48 < 0xA);
          }
        }
      }

      else
      {
        while (1)
        {
          v43 = **(a2 + 4);
          if ((v43 - 48) > 9)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
          v40 = v43 + 10 * v40 - 48;
          if (v40 > 308 - v34)
          {
            v44 = 13;
            goto LABEL_125;
          }
        }
      }

LABEL_127:
      if (v36)
      {
        v45 = -v40;
      }

      else
      {
        v45 = v40;
      }

LABEL_130:
      v46 = v45 + v34;
      v5 = v73;
      if (v46 > -309)
      {
        if (v46 < 0)
        {
          v47 = v25 / rapidjson::internal::Pow10(int)::e[-v46];
        }

        else
        {
          v47 = v25 * rapidjson::internal::Pow10(int)::e[v46];
        }
      }

      else
      {
        v47 = 0.0;
        if (v46 < 0xFFFFFD98)
        {
          goto LABEL_139;
        }

        v47 = v25 / 1.0e308 / rapidjson::internal::Pow10(int)::e[-308 - v46];
      }

      if (v47 > 1.79769313e308)
      {
        v44 = 13;
        goto LABEL_138;
      }

LABEL_139:
      if (v7 == 45)
      {
        v48 = -v47;
      }

      else
      {
        v48 = v47;
      }

      v9 = *(a3 + 8);
      if (*(a3 + 9) - v9 <= 23)
      {
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
        v9 = *(a3 + 8);
      }

      *(a3 + 8) = v9 + 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = v48;
      v10 = 534;
      goto LABEL_145;
    }

    v35 = &v38[*(a2 + 6) - *(a2 + 1)];
    v44 = 15;
LABEL_125:
    v5 = v73;
LABEL_138:
    *(v5 + 48) = v44;
    *(v5 + 56) = v35;
    return result;
  }

  if (v32)
  {
    v45 = 0;
    goto LABEL_130;
  }

  if (v74)
  {
    if (v7 == 45)
    {

      return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v31);
    }

    else
    {

      return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v31);
    }
  }

  else if (v7 == 45)
  {

    return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v22);
  }

  else
  {

    return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v22);
  }
}

void *rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, rapidjson::FileReadStream *this, void *a3)
{
  result = rapidjson::FileReadStream::Read(this);
  *v24 = a1;
  for (LODWORD(__n) = 0; ; LODWORD(__n) = __n + 1)
  {
    while (1)
    {
      v7 = *(this + 4);
      v8 = *v7;
      if (v8 != 92)
      {
        break;
      }

      v11 = *(this + 6);
      v12 = *(this + 1);
      result = rapidjson::FileReadStream::Read(this);
      v13 = **(this + 4);
      LOBYTE(v8) = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::FileReadStream,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::FileReadStream &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v13];
      if (v8)
      {
        goto LABEL_5;
      }

      v14 = &v7[v11 - v12];
      if (v13 != 117)
      {
        v23 = 10;
LABEL_29:
        *(a1 + 48) = v23;
        *(a1 + 56) = v14;
        return result;
      }

      rapidjson::FileReadStream::Read(this);
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::FileReadStream>(a1, this, v14);
      if (*(a1 + 48))
      {
        return result;
      }

      v15 = result;
      if (result >> 11 == 27)
      {
        if (result >> 10 > 0x36)
        {
          goto LABEL_30;
        }

        if (**(this + 4) != 92)
        {
          goto LABEL_30;
        }

        v16 = result;
        result = rapidjson::FileReadStream::Read(this);
        if (**(this + 4) != 117)
        {
          goto LABEL_30;
        }

        rapidjson::FileReadStream::Read(this);
        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::FileReadStream>(a1, this, v14);
        if (*(a1 + 48))
        {
          return result;
        }

        if ((result - 57344) <= 0xFFFFFBFF)
        {
LABEL_30:
          v23 = 9;
          goto LABEL_29;
        }

        v15 = result + (v16 << 10) - 56613888;
      }

      result = rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v24, v15);
    }

    if (v8 == 34)
    {
      break;
    }

    if (v8 <= 0x1F)
    {
      v21 = &v7[*(this + 6) - *(this + 1)];
      if (*v7)
      {
        v22 = 12;
      }

      else
      {
        v22 = 11;
      }

      *(a1 + 48) = v22;
      *(a1 + 56) = v21;
      return result;
    }

LABEL_5:
    result = rapidjson::FileReadStream::Read(this);
    v9 = *v24;
    v10 = *(*v24 + 24);
    if ((*(*v24 + 32) - v10) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v24);
      v10 = *(v9 + 24);
    }

    *(v9 + 24) = v10 + 1;
    *v10 = v8;
  }

  result = rapidjson::FileReadStream::Read(this);
  v17 = *v24;
  v18 = *(*v24 + 24);
  if ((*(*v24 + 32) - v18) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v24);
    v18 = *(v17 + 24);
  }

  *(v17 + 24) = v18 + 1;
  *v18 = 0;
  if (!*(a1 + 48))
  {
    v19 = __n;
    v20 = (*(v17 + 24) - (__n + 1));
    *(v17 + 24) = v20;
    return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v20, v19);
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::FileReadStream>(uint64_t a1, rapidjson::FileReadStream *this, uint64_t a3)
{
  LODWORD(v6) = 0;
  v7 = 4;
  while (1)
  {
    v8 = **(this + 4);
    if ((v8 - 48) >= 0xA)
    {
      break;
    }

    v9 = -48;
LABEL_8:
    v6 = (v8 + 16 * v6 + v9);
    rapidjson::FileReadStream::Read(this);
    if (!--v7)
    {
      return v6;
    }
  }

  if (**(this + 4) - 65 < 6)
  {
    v9 = -55;
    goto LABEL_8;
  }

  if (**(this + 4) - 97 < 6)
  {
    v9 = -87;
    goto LABEL_8;
  }

  v6 = 0;
  *(a1 + 48) = 8;
  *(a1 + 56) = a3;
  return v6;
}

void uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    goto LABEL_33;
  }

  do
  {
    if (*(v4 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
    }

    else
    {
      __p = *v4;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = *(a2 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 1);
    }

    if (size != v9)
    {
      v20 = 0;
      goto LABEL_25;
    }

    if (size)
    {
      if (v10 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      v13 = size - 1;
      do
      {
        v15 = p_p->__r_.__value_.__s.__data_[0];
        p_p = (p_p + 2);
        v14 = v15;
        v17 = *v11++;
        v16 = v17;
        v19 = v13-- != 0;
        v20 = v16 == v14;
      }

      while (v16 == v14 && v19);
LABEL_25:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_26:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }

    v20 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (v20)
    {
      goto LABEL_32;
    }

    v4 = (v4 + 184);
  }

  while (v4 != v5);
  v4 = v5;
LABEL_32:
  v5 = a1[1];
LABEL_33:
  if (v4 == v5)
  {
    v22 = 0;
    *a3 = 0;
  }

  else
  {
    if (*(v4 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a3, *v4, *(v4 + 1));
    }

    else
    {
      v21 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v21;
    }

    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(a3 + 24, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 5);
    std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100]((a3 + 48), (v4 + 3));
    v22 = 1;
  }

  *(a3 + 184) = v22;
}

void sub_22294CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void uaap_orchestration::grammar::UaapGrammar::getAllLeftLabels(__int128 **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *this;
  v4 = this[1];
  while (v3 != v4)
  {
    if (*(v3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }

    std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = (v3 + 184);
  }
}

void uaap_orchestration::grammar::UaapGrammar::getRightLabelsForLabel(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(a1, a2, &v5);
  if ((v15 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Label does not exist");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(a3, v7, v8, (v8 - v7) >> 5);
  if (v15 == 1)
  {
    if (v14[48] == 1)
    {
      if (v14[40] == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v14);
      }

      v16 = &v13;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
      v16 = &v12;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
      if (v11 == 1 && v10 < 0)
      {
        operator delete(__p);
      }
    }

    v16 = &v7;
    std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (v6 < 0)
    {
      operator delete(v5);
    }
  }
}

void sub_22294D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  std::optional<uaap_orchestration::grammar::Rule>::~optional(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::optional<uaap_orchestration::grammar::Rule>::~optional(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    if (*(a1 + 176) == 1)
    {
      if (*(a1 + 168) == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(a1 + 128);
      }

      v3 = (a1 + 104);
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = (a1 + 80);
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    v3 = (a1 + 24);
    std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void uaap_orchestration::grammar::UaapGrammar::getChildrenPathsInner(__int128 **a1, uint64_t *a2, uint64_t *a3)
{
  uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(a1, (a2[1] - 24), v12);
  if ((v21 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Label does not exist");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  uaap_orchestration::grammar::Rule::getRightLabelNames(v12, &v10);
  v6 = v11;
  v7 = v10;
  if (v10 == v11)
  {
    std::vector<uaap_orchestration::grammar::Path>::push_back[abi:ne200100](a3, a2);
  }

  else
  {
    do
    {
      uaap_orchestration::grammar::Path::extendWithComponent(a2, v7, &v9);
      uaap_orchestration::grammar::UaapGrammar::getChildrenPathsInner(a1, &v9, a3);
      v22 = &v9;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v22);
      v7 = (v7 + 24);
    }

    while (v7 != v6);
  }

  v9.__words[0] = &v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v21 == 1)
  {
    if (v20[48] == 1)
    {
      if (v20[40] == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v20);
      }

      v10 = &v19;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v10);
      v10 = &v18;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v10);
      if (v17 == 1 && v16 < 0)
      {
        operator delete(__p);
      }
    }

    v10 = &v14;
    std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v10);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_22294D458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(v3, va1);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<uaap_orchestration::grammar::Rule>::~optional(va2);
  _Unwind_Resume(a1);
}

void std::vector<uaap_orchestration::grammar::Path>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v22 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(v9);
    }

    v10 = 24 * v6;
    v19 = 0;
    v20 = v10;
    v21 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(24 * v6, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    *&v21 = v21 + 24;
    v12 = *a1;
    v11 = a1[1];
    v13 = v20 + *a1 - v11;
    if (*a1 != v11)
    {
      v14 = (v20 + *a1 - v11);
      v15 = *a1;
      do
      {
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
        *v14 = *v15;
        v14[2] = v15[2];
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v15 += 3;
        v14 += 3;
      }

      while (v15 != v11);
      do
      {
        v23 = v12;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v23);
        v12 += 3;
      }

      while (v12 != v11);
    }

    v16 = *a1;
    *a1 = v13;
    v17 = a1[2];
    v18 = v21;
    *(a1 + 1) = v21;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v19 = v16;
    v20 = v16;
    std::__split_buffer<uaap_orchestration::grammar::Path>::~__split_buffer(&v19);
    v5 = v18;
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = v4 + 3;
    a1[1] = (v4 + 3);
  }

  a1[1] = v5;
}

void sub_22294D670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<uaap_orchestration::grammar::Path>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Path>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<uaap_orchestration::grammar::Path>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap_orchestration::grammar::Path>,uaap_orchestration::grammar::Path*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void uaap_orchestration::grammar::UaapGrammar::getChildrenPathsForLabel(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X8>)
{
  uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(a1, a2, v11);
  if ((v20 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Label does not exist");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  uaap_orchestration::grammar::Rule::getRightLabelNames(v11, &v9);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = v9;
  v6 = v10;
  if (v9 != v10)
  {
    do
    {
      uaap_orchestration::grammar::Path::singletonPath(v5, v8);
      uaap_orchestration::grammar::UaapGrammar::getChildrenPathsInner(a1, v8, a3);
      v21 = v8;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v21);
      v5 = (v5 + 24);
    }

    while (v5 != v6);
  }

  v8[0] = &v9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v8);
  if (v20 == 1)
  {
    if (v19[48] == 1)
    {
      if (v19[40] == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v19);
      }

      v9 = &v18;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v9);
      v9 = &v17;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v9);
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }
    }

    v9 = &v13;
    std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v9);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_22294D930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::optional<uaap_orchestration::grammar::Rule>::~optional(va);
  _Unwind_Resume(a1);
}

void std::vector<uaap_orchestration::grammar::Path>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void uaap_orchestration::grammar::UaapGrammar::getAllSpanValuesForLabel(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(a1, a2, &v26);
  if (v35 == 1)
  {
    memset(v24, 0, sizeof(v24));
    v25 = 1065353216;
    std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](&__p, &v29);
    if (v23)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&v14, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
      v4 = v14;
      v5 = v15;
      while (v4 != v5)
      {
        std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(v24, v4);
        v4 += 12;
      }

      std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](v12, v22);
      if (v13 == 1)
      {
        uaap_orchestration::grammar::ResolutionTable::getSemanticValues(v12, v10);
        for (i = v11; i; i = *i)
        {
          uaap_orchestration::grammar::ResolutionTable::getSynonyms(v12, i + 8, v9);
          v7 = v9[0];
          v8 = v9[1];
          while (v7 != v8)
          {
            std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(v24, v7);
            v7 += 12;
          }

          v36 = v9;
          std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v36);
        }

        std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v10);
        if (v13)
        {
          std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v12);
        }
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a3, v24);
      v12[0] = &v14;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v12);
      if (v23)
      {
        if (v22[40] == 1)
        {
          std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v22);
        }

        v12[0] = &v20;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v12);
        v12[0] = &v19;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v12);
        if (v18 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 1065353216;
    }

    std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v24);
    if (v35)
    {
      if (v34[48] == 1)
      {
        if (v34[40] == 1)
        {
          std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v34);
        }

        __p.__r_.__value_.__r.__words[0] = &v33;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p.__r_.__value_.__r.__words[0] = &v32;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v31 == 1 && v30 < 0)
        {
          operator delete(v29);
        }
      }

      __p.__r_.__value_.__r.__words[0] = &v28;
      std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v27 < 0)
      {
        operator delete(v26);
      }
    }
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
    *(a3 + 32) = 1065353216;
  }
}

void sub_22294DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a22 == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&a17);
  }

  a17 = &a24;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(&a27);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a44);
  std::optional<uaap_orchestration::grammar::Rule>::~optional(&a49);
  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(void *a1, unsigned __int16 *a2)
{
  v4 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v11 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void uaap_orchestration::grammar::UaapGrammar::getEnumChoicesForLabel(__int128 **a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  uaap_orchestration::grammar::UaapGrammar::getRuleForLabel(a1, a2, &v11);
  if (v20 == 1)
  {
    std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](&__p, &v14);
    if (v10)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a3, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
      if (v10)
      {
        if (v9[40] == 1)
        {
          std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v9);
        }

        v21 = &v8;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v21);
        v21 = &v6;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v21);
        if (v5 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    if (v20)
    {
      if (v19[48] == 1)
      {
        if (v19[40] == 1)
        {
          std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v19);
        }

        __p.__r_.__value_.__r.__words[0] = &v18;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p.__r_.__value_.__r.__words[0] = &v17;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(v14);
        }
      }

      __p.__r_.__value_.__r.__words[0] = &v13;
      std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v12 < 0)
      {
        operator delete(v11);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_22294E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(&a9);
  std::optional<uaap_orchestration::grammar::Rule>::~optional(&a26);
  _Unwind_Resume(a1);
}

void snlp::common::text_uso_graph::ExactMatchComparator::showDifference(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  if (a1[1])
  {
    v7 = "UserAccepted";
  }

  else if (a1[2])
  {
    v7 = "UserAcknowledged";
  }

  else if (a1[4])
  {
    v7 = "UserCancelled";
  }

  else if (a1[6])
  {
    v7 = "UserRejected";
  }

  else if (a1[7])
  {
    v7 = "UserStatedTask";
  }

  else if (a1[8])
  {
    v7 = "UserWantedToPause";
  }

  else if (a1[9])
  {
    v7 = "UserWantedToProceed";
  }

  else if (a1[10])
  {
    v7 = "UserWantedToRepeat";
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v26, v7);
  if (a2[1])
  {
    v8 = "UserAccepted";
  }

  else if (a2[2])
  {
    v8 = "UserAcknowledged";
  }

  else if (a2[4])
  {
    v8 = "UserCancelled";
  }

  else if (a2[6])
  {
    v8 = "UserRejected";
  }

  else if (a2[7])
  {
    v8 = "UserStatedTask";
  }

  else if (a2[8])
  {
    v8 = "UserWantedToPause";
  }

  else if (a2[9])
  {
    v8 = "UserWantedToProceed";
  }

  else if (a2[10])
  {
    v8 = "UserWantedToRepeat";
  }

  else
  {
    v8 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v8);
  if ((v27 & 0x80u) == 0)
  {
    v9 = v27;
  }

  else
  {
    v9 = v26[1];
  }

  v10 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v10 = v24;
  }

  if (v9 == v10)
  {
    v11 = (v27 & 0x80u) == 0 ? v26 : v26[0];
    v12 = (v25 & 0x80u) == 0 ? &__p : __p;
    if (!memcmp(v11, v12, v9))
    {
      v19 = a3[1];
      v20 = *a3;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      snlp::common::text_uso_graph::extractGraph();
    }
  }

  std::operator+<char>();
  v13 = std::string::append(&v21, " but got a ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24;
  }

  v17 = std::string::append(&v22, p_p, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  *(a4 + 16) = *(&v17->__r_.__value_.__l + 2);
  *a4 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_22294E4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a14);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a20);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 49) < 0)
  {
    operator delete(*(v34 - 72));
  }

  _Unwind_Resume(a1);
}

void snlp::common::text_uso_graph::extractGraph()
{
  v0 = 1;
  v1 = 0;
  operator new();
}

void sub_22294E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t snlp::common::text_uso_graph::ExactMatchComparator::isMatch(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2[1])
  {
    v6 = "UserAccepted";
  }

  else if (a2[2])
  {
    v6 = "UserAcknowledged";
  }

  else if (a2[4])
  {
    v6 = "UserCancelled";
  }

  else if (a2[6])
  {
    v6 = "UserRejected";
  }

  else if (a2[7])
  {
    v6 = "UserStatedTask";
  }

  else if (a2[8])
  {
    v6 = "UserWantedToPause";
  }

  else if (a2[9])
  {
    v6 = "UserWantedToProceed";
  }

  else if (a2[10])
  {
    v6 = "UserWantedToRepeat";
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, v6);
  if (a3[1])
  {
    v7 = "UserAccepted";
  }

  else if (a3[2])
  {
    v7 = "UserAcknowledged";
  }

  else if (a3[4])
  {
    v7 = "UserCancelled";
  }

  else if (a3[6])
  {
    v7 = "UserRejected";
  }

  else if (a3[7])
  {
    v7 = "UserStatedTask";
  }

  else if (a3[8])
  {
    v7 = "UserWantedToPause";
  }

  else if (a3[9])
  {
    v7 = "UserWantedToProceed";
  }

  else if (a3[10])
  {
    v7 = "UserWantedToRepeat";
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v7);
  v8 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v9 = v29;
  }

  else
  {
    v9 = v28;
  }

  v10 = v26;
  v11 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v10 = __p[1];
  }

  if (v9 != v10)
  {
    v14 = 1;
    if (v26 < 0)
    {
      goto LABEL_53;
    }

LABEL_50:
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if ((v29 & 0x80u) == 0)
  {
    v12 = &v27;
  }

  else
  {
    v12 = v27;
  }

  if ((v26 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = memcmp(v12, v13, v9) != 0;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_53:
  operator delete(__p[0]);
  v8 = v29;
  if (!v14)
  {
LABEL_54:
    if ((v8 & 0x80) != 0)
    {
      if (v28 != 22)
      {
        goto LABEL_66;
      }

      v16 = v27;
    }

    else
    {
      if (v8 != 22)
      {
        goto LABEL_66;
      }

      v16 = &v27;
    }

    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 14);
    if (v17 != 0x65746167656C6544 || v18 != 0x6169447265735564 || v19 != 0x746341676F6C6169)
    {
LABEL_66:
      v22 = a4[1];
      v24 = *a4;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      snlp::common::text_uso_graph::extractGraph();
    }

    v15 = 1;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_69;
    }

    return v15;
  }

LABEL_51:
  v15 = 0;
  if ((v8 & 0x80) != 0)
  {
LABEL_69:
    operator delete(v27);
  }

  return v15;
}

void sub_22294EAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a12);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a15);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::common::text_uso_graph::ExactMatchComparator::showDifference(snlp::common::text_uso_graph::ExactMatchComparator *this, const siri::ontology::UsoGraph *a2, const siri::ontology::UsoGraph *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Expected:", 9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  siri::ontology::UsoGraph::prettyPrint(&__p, a2);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v16;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, p_p, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n\n", 2);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Actual:", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 1);
  siri::ontology::UsoGraph::prettyPrint(&__p, a3);
  if ((v17 & 0x80u) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v11 = v17;
  }

  else
  {
    v11 = v16;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v18[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v13;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v23);
}

void sub_22294ED90(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](va);
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo::operator==(void *a1, void *a2)
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

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  if (v7[3] != v6[3])
  {
    return 0;
  }

  if (v7[4] != v6[4])
  {
    return 0;
  }

  v10 = v7[5];
  v9 = v7[6];
  v11 = v6[5];
  if (v9 - v10 != v6[6] - v11)
  {
    return 0;
  }

  if (v10 != v9)
  {
    v12 = 0;
    do
    {
      v13 = v11 + v12;
      v14 = *(v10 + v12 + 23);
      if (v14 >= 0)
      {
        v15 = *(v10 + v12 + 23);
      }

      else
      {
        v15 = *(v10 + v12 + 8);
      }

      v16 = *(v13 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v13 + 8);
      }

      if (v15 != v16)
      {
        return 0;
      }

      v18 = v14 >= 0 ? (v10 + v12) : *(v10 + v12);
      v19 = v17 >= 0 ? (v11 + v12) : *v13;
      if (memcmp(v18, v19, v15))
      {
        return 0;
      }

      v20 = v10 + v12;
      v21 = *(v10 + v12 + 47);
      if (v21 >= 0)
      {
        v22 = *(v10 + v12 + 47);
      }

      else
      {
        v22 = *(v10 + v12 + 32);
      }

      v23 = v11 + v12;
      v24 = *(v11 + v12 + 47);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v11 + v12 + 32);
      }

      if (v22 != v24)
      {
        return 0;
      }

      v28 = *(v20 + 24);
      v26 = v20 + 24;
      v27 = v28;
      v29 = (v21 >= 0 ? v26 : v27);
      v32 = *(v23 + 24);
      v31 = v23 + 24;
      v30 = v32;
      v33 = (v25 >= 0 ? v31 : v30);
      if (memcmp(v29, v33, v22))
      {
        return 0;
      }

      v34 = v10 + v12;
      v35 = v11 + v12;
      v36 = *(v10 + v12 + 72);
      v37 = *(v11 + v12 + 72);
      if (v36 == v37 && *(v10 + v12 + 72))
      {
        v38 = *(v10 + v12 + 71);
        if (v38 >= 0)
        {
          v39 = *(v10 + v12 + 71);
        }

        else
        {
          v39 = *(v10 + v12 + 56);
        }

        v40 = *(v11 + v12 + 71);
        v41 = *(v11 + v12 + 56);
        if (v40 >= 0)
        {
          v41 = *(v11 + v12 + 71);
        }

        if (v39 != v41)
        {
          return 0;
        }

        v44 = *(v34 + 48);
        v42 = v34 + 48;
        v43 = v44;
        v45 = (v38 >= 0 ? v42 : v43);
        v48 = *(v35 + 48);
        v46 = v35 + 48;
        v47 = v48;
        v49 = (v40 >= 0 ? v46 : v47);
        if (memcmp(v45, v49, v39))
        {
          return 0;
        }
      }

      else if (v36 != v37)
      {
        return 0;
      }

      v50 = *(v10 + v12 + 88);
      v51 = *(v11 + v12 + 88);
      if (v50 == v51 && *(v10 + v12 + 88))
      {
        if (*(v10 + v12 + 80) != *(v11 + v12 + 80))
        {
          return 0;
        }
      }

      else if (v50 != v51)
      {
        return 0;
      }

      v52 = *(v10 + v12 + 100);
      v53 = *(v11 + v12 + 100);
      if (v52 == v53 && *(v10 + v12 + 100))
      {
        if (*(v10 + v12 + 96) != *(v11 + v12 + 96))
        {
          return 0;
        }
      }

      else if (v52 != v53)
      {
        return 0;
      }

      v54 = *(v10 + v12 + 108);
      v55 = *(v11 + v12 + 108);
      if (v54 == v55 && *(v10 + v12 + 108))
      {
        if (*(v10 + v12 + 104) != *(v11 + v12 + 104))
        {
          return 0;
        }
      }

      else if (v54 != v55)
      {
        return 0;
      }

      v56 = *(v10 + v12 + 116);
      v57 = *(v11 + v12 + 116);
      if (v56 == v57 && *(v10 + v12 + 116))
      {
        if (*(v10 + v12 + 112) != *(v11 + v12 + 112))
        {
          return 0;
        }
      }

      else if (v56 != v57)
      {
        return 0;
      }

      v12 += 120;
    }

    while (v10 + v12 != v9);
  }

  v58 = *(v7 + 87);
  if (v58 >= 0)
  {
    v59 = *(v7 + 87);
  }

  else
  {
    v59 = v7[9];
  }

  v60 = *(v6 + 87);
  v61 = v60;
  if ((v60 & 0x80u) != 0)
  {
    v60 = v6[9];
  }

  if (v59 != v60)
  {
    return 1;
  }

  v64 = v7[8];
  v63 = v7 + 8;
  v62 = v64;
  if (v58 >= 0)
  {
    v65 = v63;
  }

  else
  {
    v65 = v62;
  }

  v68 = v6[8];
  v67 = v6 + 8;
  v66 = v68;
  if (v61 >= 0)
  {
    v69 = v67;
  }

  else
  {
    v69 = v66;
  }

  return memcmp(v65, v69, v59) != 0;
}

void snlp::ssu::proto::SSUValidatedRequest::validateRequest(const void **a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v24 = SNLPOSLoggerForCategory(8);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LOWORD(v32) = 0;
    v20 = "Request validation failed: received nullptr request";
    goto LABEL_32;
  }

  if (!*(*a2 + 48))
  {
    v6 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Request validation: missing nluRequestId field. This is non-fatal.", &v32, 2u);
    }
  }

  v7 = *a2;
  v8 = *(*a2 + 48);
  if (v8 && !*(v8 + 16))
  {
    v25 = SNLPOSLoggerForCategory(8);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    LOWORD(v32) = 0;
    v20 = "Request validation failed: missing nluRequestId.id field";
    v21 = v25;
    v22 = OS_LOG_TYPE_DEBUG;
LABEL_36:
    v23 = 2;
LABEL_37:
    _os_log_impl(&dword_22284A000, v21, v22, v20, &v32, v23);
    goto LABEL_38;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
    v24 = SNLPOSLoggerForCategory(8);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LOWORD(v32) = 0;
    v20 = "Request validation failed: received request with no locale";
LABEL_32:
    v21 = v24;
LABEL_33:
    v22 = OS_LOG_TYPE_ERROR;
    goto LABEL_36;
  }

  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = *(v9 + 23);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  v12 = *(a1 + 23);
  v13 = v12;
  if (v12 < 0)
  {
    v12 = a1[1];
  }

  if (v11 != v12 || (v10 >= 0 ? (v14 = *(v7 + 16)) : (v14 = *v9), (v15 = *a1, v13 >= 0) ? (v16 = a1) : (v16 = *a1), memcmp(v14, v16, v11)))
  {
    v17 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*a2 + 16);
      if (*(v18 + 23) < 0)
      {
        v18 = *v18;
      }

      if (*(a1 + 23) >= 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = *a1;
      }

      v32 = 136315394;
      v33 = v18;
      v34 = 2080;
      v35 = v19;
      v20 = "Request validation failed: received request with a locale (%s) not matching the expected locale (%s)";
      v21 = v17;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 22;
      goto LABEL_37;
    }

LABEL_38:
    v26 = 0;
    *a3 = 0;
    goto LABEL_39;
  }

  v28 = *(v7 + 80);
  v29 = SNLPOSLoggerForCategory(8);
  v30 = v29;
  if (!v28)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LOWORD(v32) = 0;
    v20 = "Request validation failed: received request with no utterance";
    v21 = v30;
    goto LABEL_33;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_DEBUG, "Successfully validated SSU request", &v32, 2u);
  }

  v31 = *a2;
  *a2 = 0;
  *a3 = v31;
  v26 = 1;
LABEL_39:
  a3[8] = v26;
  v27 = *MEMORY[0x277D85DE8];
}

void *snlp::ssu::proto::SSUValidatedRequest::SSUValidatedRequest(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void snlp::ssu::proto::SSUValidatedRequest::getRequestId(snlp::ssu::proto::SSUValidatedRequest *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(*this + 48);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&a2->__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "not provided");
  }
}

void snlp::ssu::proto::SSUValidatedRequest::getAppNameMatchingSpanBundleIds(snlp::ssu::proto::SSUValidatedRequest *this@<X0>, const sirinluinternal::MatchingSpan *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(*this + 24);
  for (i = *(*this + 32); v4 != i; ++v4)
  {
    v7 = *v4;
    v8 = *(*v4 + 1);
    v9 = *(*v4 + 2);
    if (v8 != v9)
    {
      while (*v8 != 2)
      {
        if (++v8 == v9)
        {
          goto LABEL_22;
        }
      }
    }

    if (v9 != v8 && snlp::ssu::proto::SSUValidatedRequest::hasLabelAppName(*v4, a2))
    {
      v10 = *(v7 + 8);
      if (!v10 || (v11 = *(v10 + 104), v11 == *(v10 + 112)) || (v12 = *(*v11 + 48)) == 0 || (*(v12 + 96) & 1) != 0)
      {
        snlp::ssu::proto::SSUValidatedRequest::extractAppBundleIdFromUsoGraph(this, v7, &__p);
        if (v17)
        {
          v13 = *(a3 + 8);
          if (v13 >= *(a3 + 16))
          {
            v15 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a3, &__p);
          }

          else
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v14 = *&__p.__r_.__value_.__l.__data_;
              *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
              *v13 = v14;
            }

            v15 = (v13 + 24);
          }

          *(a3 + 8) = v15;
          if ((v17 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

LABEL_22:
    ;
  }
}

void sub_22294F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  v15[1] = v16;
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::proto::SSUValidatedRequest::hasLabelAppName(snlp::ssu::proto::SSUValidatedRequest *this, const sirinluinternal::MatchingSpan *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "appName");
    v3 = *(v2 + 23);
    if (v3 >= 0)
    {
      v4 = *(v2 + 23);
    }

    else
    {
      v4 = v2[1];
    }

    v5 = v13;
    v6 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v5 = __p[1];
    }

    if (v4 == v5)
    {
      if (v3 >= 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = *v2;
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = memcmp(v7, v8, v4) == 0;
      if (v6 < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = 0;
      if (v13 < 0)
      {
LABEL_20:
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_ERROR, "Matching span has no label. Skipping.", __p, 2u);
    }

    return 0;
  }

  return v9;
}

void snlp::ssu::proto::SSUValidatedRequest::extractAppBundleIdFromUsoGraph(snlp::ssu::proto::SSUValidatedRequest *this@<X0>, const sirinluexternal::UsoGraph **a2@<X1>, std::string *a3@<X8>)
{
  snlp::ssu::proto::SSUValidatedRequest::extractStringNodeDataFromUsoGraph(this, a2, &__p);
  if (v11)
  {
    v4 = v10[0];
    v5 = v10[1];
    while (v4 != v5)
    {
      snlp::ssu::proto::SSUValidatedRequest::extractAppBundleIdFromAppNameIdentifier(v4, a3);
      if (a3[1].__r_.__value_.__s.__data_[0])
      {
        goto LABEL_12;
      }

      v4 += 120;
    }

    v6 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Unexpected USO graph: app entity node does not contain a valid app bundle ID in its identifiers. Skipping.";
      goto LABEL_10;
    }
  }

  else
  {
    v6 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Failed to lookup string node data from matching span USO graph";
LABEL_10:
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, v7, buf, 2u);
    }
  }

  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_12:
  if (v11 == 1)
  {
    *buf = v10;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void snlp::ssu::proto::SSUValidatedRequest::extractStringNodeDataFromUsoGraph(snlp::ssu::proto::SSUValidatedRequest *this@<X0>, const sirinluexternal::UsoGraph **a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[8])
  {
    SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(this);
    v8 = *SharedUsoVocabManager;
    v7 = SharedUsoVocabManager[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v42 = v7;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v42 = 0;
    }

    v41 = v8;
    v10 = siri::ontology::UsoGraphProtoReader::fromProtobuf(&v40, &v41, a2[8]);
    if (!v40)
    {
      v21 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "Failed to convert proto USO graph to SiriOntology format. Skipping.", &buf, 2u);
      }

      *a3 = 0;
      *(a3 + 72) = 0;
      goto LABEL_44;
    }

    v11 = *(v40 + 88);
    siri::ontology::oname::graph::ontology_init::Argument_entity(v10);
    v12 = *(v11 + 8);
    Successors = siri::ontology::UsoGraph::getSuccessors();
    if (v39 - v38 != 8)
    {
      v22 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_ERROR, "Failed to lookup node Root->entity. Skipping.", &buf, 2u);
      }

      *a3 = 0;
      *(a3 + 72) = 0;
      goto LABEL_42;
    }

    v14 = *v38;
    siri::ontology::oname::graph::ontology_init::Argument_name(Successors);
    v15 = *(v14 + 8);
    siri::ontology::UsoGraph::getSuccessors();
    if (v37 - v36 == 8)
    {
      v16 = *v36;
      if ((*(**v36 + 16))(*v36) == 3)
      {
        v17 = **v16;
        if (!v18)
        {
          __cxa_bad_cast();
        }

        v19 = v18;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&buf, (v18 + 104));
        if (v28 == 1)
        {
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          siri::ontology::UsoEntityNode::getIdentifiers(&v34, v19);
          v32[1] = 0;
          v33 = 0;
          v32[0] = 0;
          __p.__r_.__value_.__r.__words[0] = v32;
          __p.__r_.__value_.__s.__data_[8] = 0;
          if (v35 != v34)
          {
            std::vector<siri::ontology::UsoIdentifier>::__vallocate[abi:ne200100](v32, (v35 - v34) >> 3);
          }

          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v19 + 104));
          if ((v26 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          buf = __p;
          memset(&__p, 0, sizeof(__p));
          v28 = *v32;
          v29 = v33;
          v32[0] = 0;
          v32[1] = 0;
          v33 = 0;
          v20 = *(*this + 80);
          LODWORD(v43) = 6;
          snlp::common::utilities::getAlignmentUtf8StartEndIndexes(v19, v20, &v43, &v30);
          *a3 = buf;
          memset(&buf, 0, sizeof(buf));
          *(a3 + 24) = v28;
          *(a3 + 40) = v29;
          v29 = 0;
          v28 = 0uLL;
          *(a3 + 64) = v31;
          *(a3 + 48) = v30;
          *(a3 + 72) = 1;
          v44 = &v28;
          std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v44);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v26 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          buf.__r_.__value_.__r.__words[0] = v32;
          std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&buf);
          if (v34)
          {
            v35 = v34;
            operator delete(v34);
          }

          goto LABEL_40;
        }

        v23 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v24 = "Unexpected USO graph: node Entity->name has no string value. Skipping.";
          goto LABEL_38;
        }

LABEL_39:
        *a3 = 0;
        *(a3 + 72) = 0;
LABEL_40:
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

LABEL_42:
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

LABEL_44:
        std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v40);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        return;
      }

      v23 = SNLPOSLoggerForCategory(8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v24 = "Unexpected USO graph: node Entity->name is not of type StringNode. Skipping.";
    }

    else
    {
      v23 = SNLPOSLoggerForCategory(8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v24 = "Unexpected USO graph: failed to lookup node Entity->name. Skipping.";
    }

LABEL_38:
    _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
    goto LABEL_39;
  }

  v9 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "Matching span has no USO graph. Skipping.", &buf, 2u);
  }

  *a3 = 0;
  *(a3 + 72) = 0;
}

void sub_22294FDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  v36 = *(v34 - 152);
  if (v36)
  {
    *(v34 - 144) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 128);
  if (v37)
  {
    *(v34 - 120) = v37;
    operator delete(v37);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100]((v34 - 104));
  v38 = *(v34 - 88);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::proto::SSUValidatedRequest::extractAppBundleIdFromAppNameIdentifier(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 96) & 0x1FFFFFFFFLL) != 0x100000001 || (std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (a1 + 48)), v23 != 1))
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "item_id");
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (a1 + 48));
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v6 = v20[1];
  }

  if (size != v6)
  {
    v9 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Applications");
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v19 = *(a1 + 24);
    }

    v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v19.__r_.__value_.__l.__size_;
    }

    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    if (v11 == v12)
    {
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = memcmp(v13, p_p, v11) != 0;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_44:
        if (v15)
        {
          a2->__r_.__value_.__s.__data_[0] = 0;
          a2[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_60:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_62;
        }

        if (*(a1 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
        }

        else
        {
          v19 = *a1;
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v19.__r_.__value_.__l.__size_)
          {
            std::string::__init_copy_ctor_external(a2, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
            goto LABEL_54;
          }
        }

        else if (*(&v19.__r_.__value_.__s + 23))
        {
          *a2 = v19;
LABEL_54:
          v16 = 1;
LABEL_58:
          a2[1].__r_.__value_.__s.__data_[0] = v16;
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }

          goto LABEL_60;
        }

        v17 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Unexpected USO graph: identifier value is empty. Skipping.", v18, 2u);
        }

        v16 = 0;
        a2->__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v15 = 1;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    goto LABEL_44;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = v20[0];
  }

  v9 = memcmp(v7, v8, size) != 0;
  if (v4 < 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_20:
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_62:
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_22295017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<snlp::ssu::proto::SSUValidatedRequest::StringNodeData>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 24);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

BOOL snlp::ssu::proto::SSUValidatedRequest::isFromSiriVocabulary(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*v1 != 2)
    {
      if (++v1 == v2)
      {
        v1 = *(a1 + 16);
        return v2 != v1;
      }
    }
  }

  return v2 != v1;
}

uint64_t snlp::ssu::proto::SSUValidatedRequest::isExactMatch(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && (v2 = *(v1 + 104), v2 != *(v1 + 112)) && (v3 = *(*v2 + 48)) != 0)
  {
    return *(v3 + 96) & 1;
  }

  else
  {
    return 1;
  }
}

void snlp::ssu::proto::SSUValidatedRequest::getAppEntityMatchingSpanInfos(snlp::ssu::proto::SSUValidatedRequest *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(*a1 + 24);
  for (i = *(*a1 + 32); v4 != i; ++v4)
  {
    v8 = *v4;
    v9 = *(*v4 + 1);
    v10 = *(*v4 + 2);
    if (v9 != v10)
    {
      while (*v9 != 2)
      {
        if (++v9 == v10)
        {
          goto LABEL_40;
        }
      }
    }

    if (v10 != v9 && snlp::ssu::proto::SSUValidatedRequest::hasLabelAppEntity(*v4, a2))
    {
      snlp::ssu::proto::SSUValidatedRequest::buildAppEntitySpanInfoFromUsoGraph(a1, v8, a2, v31);
      if (v38)
      {
        v12 = *(a3 + 8);
        v11 = *(a3 + 16);
        if (v12 >= v11)
        {
          v15 = 0x2E8BA2E8BA2E8BA3 * ((v12 - *a3) >> 3);
          v16 = v15 + 1;
          if ((v15 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v17 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a3) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x1745D1745D1745DLL)
          {
            v18 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v18 = v16;
          }

          v42 = a3;
          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>(v18);
          }

          v21 = 88 * v15;
          *buf = 0;
          v40 = v21;
          v41 = v21;
          if (SHIBYTE(v32) < 0)
          {
            std::string::__init_copy_ctor_external(v21, v31[0], v31[1]);
          }

          else
          {
            v22 = *v31;
            *(v21 + 16) = v32;
            *v21 = v22;
          }

          v24 = v33;
          *(v21 + 40) = 0;
          *(v21 + 24) = v24;
          *(v21 + 48) = 0;
          *(v21 + 56) = 0;
          std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(v21 + 40, v34, v35, 0xEEEEEEEEEEEEEEEFLL * ((v35 - v34) >> 3));
          if (SHIBYTE(v37) < 0)
          {
            std::string::__init_copy_ctor_external((v21 + 64), __p, *(&__p + 1));
          }

          else
          {
            v25 = __p;
            *(v21 + 80) = v37;
            *(v21 + 64) = v25;
          }

          *&v41 = v41 + 88;
          v26 = *(a3 + 8);
          v27 = v40 + *a3 - v26;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>,snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo*>(a3, *a3, v26, v27);
          v28 = *a3;
          *a3 = v27;
          v29 = *(a3 + 16);
          v30 = v41;
          *(a3 + 8) = v41;
          *&v41 = v28;
          *(&v41 + 1) = v29;
          *buf = v28;
          v40 = v28;
          std::__split_buffer<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::~__split_buffer(buf);
          v23 = v30;
        }

        else
        {
          if (SHIBYTE(v32) < 0)
          {
            std::string::__init_copy_ctor_external(*(a3 + 8), v31[0], v31[1]);
          }

          else
          {
            v13 = *v31;
            *(v12 + 16) = v32;
            *v12 = v13;
          }

          v19 = v33;
          *(v12 + 40) = 0;
          *(v12 + 24) = v19;
          *(v12 + 48) = 0;
          *(v12 + 56) = 0;
          std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(v12 + 40, v34, v35, 0xEEEEEEEEEEEEEEEFLL * ((v35 - v34) >> 3));
          if (SHIBYTE(v37) < 0)
          {
            std::string::__init_copy_ctor_external((v12 + 64), __p, *(&__p + 1));
          }

          else
          {
            v20 = __p;
            *(v12 + 80) = v37;
            *(v12 + 64) = v20;
          }

          v23 = v12 + 88;
        }

        *(a3 + 8) = v23;
      }

      else
      {
        v14 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Failed to build app entity from matching span. Skipping.", buf, 2u);
        }
      }

      if (v38 == 1)
      {
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }

        *buf = &v34;
        std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](buf);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }
      }
    }

LABEL_40:
    ;
  }
}

void sub_222950610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](va1);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  *(v3 + 8) = v4;
  std::optional<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::~optional(va);
  v6 = v3;
  std::vector<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::proto::SSUValidatedRequest::hasLabelAppEntity(snlp::ssu::proto::SSUValidatedRequest *this, const sirinluinternal::MatchingSpan *a2)
{
  if (*(this + 6))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "appEntity");
    v3 = *(this + 6);
    v4 = v14;
    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = *(v3 + 23);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v3 + 8);
    }

    if (v5 == v6)
    {
      if ((v14 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v7 >= 0)
      {
        v9 = *(this + 6);
      }

      else
      {
        v9 = *v3;
      }

      v10 = memcmp(v8, v9, v5) == 0;
      if (v4 < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
      if (v14 < 0)
      {
LABEL_20:
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v11 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "Matching span has no label. Skipping.", __p, 2u);
    }

    return 0;
  }

  return v10;
}

void snlp::ssu::proto::SSUValidatedRequest::buildAppEntitySpanInfoFromUsoGraph(snlp::ssu::proto::SSUValidatedRequest *a1@<X0>, const sirinluexternal::UsoGraph **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  snlp::ssu::proto::SSUValidatedRequest::extractStringNodeDataFromUsoGraph(a1, a2, &v35);
  if ((v40 & 1) == 0)
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v16 = "Failed to lookup string node data from matching span USO graph";
LABEL_33:
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, v16, &__p, 2u);
    }

LABEL_34:
    *a4 = 0;
    *(a4 + 88) = 0;
    goto LABEL_35;
  }

  if ((v39 & 1) == 0)
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v16 = "Failed to extract UTF-8 indexes from the app entity span graph string node alignment";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "app_entity_type");
  v6 = v36;
  v7 = v37;
  if (v36 != v37)
  {
    do
    {
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v6 + 48));
      if (v28)
      {
        if ((v34 & 0x80u) == 0)
        {
          v8 = v34;
        }

        else
        {
          v8 = v33[1];
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (v8 == size)
        {
          if ((v34 & 0x80u) == 0)
          {
            v11 = v33;
          }

          else
          {
            v11 = v33[0];
          }

          v12 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v14 = memcmp(v11, p_p, v8);
          if (v10 < 0)
          {
            operator delete(v12);
          }

          if (!v14)
          {
            goto LABEL_25;
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v6 += 120;
    }

    while (v6 != v7);
    v6 = v7;
LABEL_25:
    v7 = v37;
  }

  if (v6 == v7)
  {
    v17 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Failed to extract app_entity_type identifier from the app entity span graph", &__p, 2u);
    }

    goto LABEL_59;
  }

  if (*(v6 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    __p = *(v6 + 24);
  }

  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = a3[1];
  }

  v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __p.__r_.__value_.__l.__size_;
  }

  if (v19 != v20)
  {
    v24 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v18 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p.__r_.__value_.__r.__words[0];
  }

  v24 = memcmp(v22, v23, v19) != 0;
  if (v21 < 0)
  {
LABEL_57:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_58:
  if (!v24)
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *v6, *(v6 + 8));
    }

    else
    {
      v25 = *v6;
      v32.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v32.__r_.__value_.__l.__data_ = v25;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v35;
    }

    v28 = v38;
    v30 = 0;
    v29 = 0uLL;
    std::vector<siri::ontology::UsoIdentifier>::__init_with_size[abi:ne200100]<siri::ontology::UsoIdentifier*,siri::ontology::UsoIdentifier*>(&v29, v36, v37, 0xEEEEEEEEEEEEEEEFLL * ((v37 - v36) >> 3));
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v32;
    }

    *a4 = __p;
    memset(&__p, 0, sizeof(__p));
    *(a4 + 24) = v28;
    *(a4 + 40) = v29;
    *(a4 + 56) = v30;
    v30 = 0;
    v29 = 0uLL;
    v26 = *&v31.__r_.__value_.__l.__data_;
    *(a4 + 80) = *(&v31.__r_.__value_.__l + 2);
    *(a4 + 64) = v26;
    memset(&v31, 0, sizeof(v31));
    *(a4 + 88) = 1;
    v41 = &v29;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    goto LABEL_73;
  }

LABEL_59:
  *a4 = 0;
  *(a4 + 88) = 0;
LABEL_73:
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

LABEL_35:
  if (v40 == 1)
  {
    __p.__r_.__value_.__r.__words[0] = &v36;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }
}

void sub_222950BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  *(v38 - 88) = v37;
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100]((v38 - 88));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  std::optional<snlp::ssu::proto::SSUValidatedRequest::StringNodeData>::~optional(&a37);
  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    v3 = (a1 + 40);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::vector<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>::destroy[abi:ne200100]<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,0>(i))
    {
      i -= 88;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>::destroy[abi:ne200100]<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,0>(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = (a1 + 40);
  std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>,snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v8 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v8;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = 0;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>::destroy[abi:ne200100]<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,0>(v5);
      v5 += 88;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 88;
    std::allocator_traits<std::allocator<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo>>::destroy[abi:ne200100]<snlp::ssu::proto::SSUValidatedRequest::AppEntitySpanInfo,0>(v3 - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void snlp::ssu::proto::SSUValidatedRequest::getOnScreenSalientEntityAppBundleIds(snlp::ssu::proto::SSUValidatedRequest *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(*this + 56);
  v4 = *(*this + 64);
  while (v3 != v4)
  {
    snlp::ssu::proto::SSUValidatedRequest::getOnScreenAppBundleId(*v3, &__p);
    if (v9 == 1)
    {
      v5 = *(a2 + 8);
      if (v5 >= *(a2 + 16))
      {
        v7 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, &__p);
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a2 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v6 = *&__p.__r_.__value_.__l.__data_;
          *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v5 = v6;
        }

        v7 = (v5 + 24);
      }

      *(a2 + 8) = v7;
      if ((v9 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    ++v3;
  }
}

void sub_222950FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  v17 = v16;
  v15[1] = v17;
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void snlp::ssu::proto::SSUValidatedRequest::getOnScreenAppBundleId(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    goto LABEL_14;
  }

  if ((*(v3 + 44) & 1) == 0 || *(v3 + 40) != 2)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v7 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Warning: ON_SCREEN salient entity is missing appBundleId field. Skipping.";
      v9 = &v11;
LABEL_12:
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_13:
    LOBYTE(v3) = 0;
LABEL_14:
    a2->__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_15;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    v7 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Warning: ON_SCREEN salient entity appBundleId field is missing string value. Skipping.";
      v9 = &v10;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  LOBYTE(v3) = 1;
LABEL_15:
  a2[1].__r_.__value_.__s.__data_[0] = v3;
}

void *snlp::ssu::proto::operator<<(void *a1, uint64_t a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SSUValidatedRequest::AppEntitySpanInfo[\n", 40);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    utteranceFragment='", 23);
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
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    startIndexUtf8=", 19);
  v10 = MEMORY[0x223DC4940](v9, *(a2 + 24));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",\n", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    endIndexUtf8=", 17);
  v12 = MEMORY[0x223DC4940](v11, *(a2 + 32));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ",\n", 2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    parameterId='", 17);
  v16 = *(a2 + 64);
  v15 = a2 + 64;
  v14 = v16;
  v17 = *(v15 + 23);
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = *(v15 + 8);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "'\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ]", 3);
  return a1;
}

void *snlp::ssu::encoder::SSUEncoder::SSUEncoder(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  v4 = *a2;
  *a2 = 0;
  *result = v3;
  result[1] = v4;
  return result;
}

{
  v3 = *a3;
  *a3 = 0;
  v4 = *a2;
  *a2 = 0;
  *result = v3;
  result[1] = v4;
  return result;
}

void snlp::ssu::encoder::SSUEncoder::computeEncoding(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *a2, *(a2 + 8));
  }

  else
  {
    v3 = *a2;
  }

  memset(v2, 0, sizeof(v2));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v2, &v3, &v4, 1uLL);
}

void snlp::ssu::encoder::SSUEncoder::computeEncodings(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SSUEncoder Encoding computation", "", &buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN SSUEncoder Encoding computation", &buf, 2u);
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
  v10 = *(a1 + 8);
  if (v9 >= *(v10 + 16))
  {
    if (v9 <= *(v10 + 24))
    {
      v11 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = v9;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Computing encodings for batch of size %lu", &buf, 0xCu);
      }

      v12 = SNLPOSLoggerForCategory(8);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        snlp::ssu::encoder::SSUEncoder::logUtterancesBatch(v13, a2);
      }

      v14 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "Step 1: Preprocessing utterances (using Sentencepiece model)", &buf, 2u);
      }

      snlp::ssu::encoder::SSUPreprocessor::tokenizeSentencePieces(*a1, a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v39, v9);
    v27 = std::string::insert(&v39, 0, "Batch size implied by utterancesBatch (");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v40, ") is higher than the maximum allowed by this model instance (");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v38, *(*(a1 + 8) + 24));
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v38;
    }

    else
    {
      v31 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v41, v31, size);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v37, ")");
    v36 = *&v35->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &buf);
    exception->__vftable = &unk_2835E9238;
  }

  v15 = __cxa_allocate_exception(0x10uLL);
  std::to_string(&v39, v9);
  v16 = std::string::insert(&v39, 0, "Batch size implied by utterancesBatch (");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v40, ") is lower than the minimum allowed by the model (");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v38, *(*(a1 + 8) + 16));
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v38;
  }

  else
  {
    v20 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v38.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v41, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v37, ")");
  v25 = *&v24->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(v15, &buf);
  v15->__vftable = &unk_2835E9238;
}

void sub_2229519EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v53 - 153) < 0)
  {
    operator delete(*(v53 - 176));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (*(v53 - 217) < 0)
  {
    operator delete(*(v53 - 240));
  }

  if (a51 < 0)
  {
    operator delete(a46);
    if ((v51 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v52);
  goto LABEL_16;
}

uint64_t snlp::ssu::encoder::SSUEncoder::logUtterancesBatch(uint64_t a1, char **a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2 + 1;
  v17 = a2[1];
  v4 = *a2;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v5 = *a2;
  for (i = *v3; v5 != i; v5 += 24)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " - '", 4);
    v8 = v5;
    if (v5[23] < 0)
    {
      v8 = *v5;
    }

    v9 = strlen(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (UTF-8 code units: ", 20);
    snlp::ssu::encoder::SSUEncoder::stringHexRepresentation(v20, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ")\n", 2);
  }

  v12 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v13 = v19 >= 0 ? &__p : __p;
    *buf = 134218243;
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v4) >> 3);
    v28 = 2085;
    v29 = v13;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Computing Nessie encodings for %lu utterances:\n%{sensitive}s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  v20[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21 = v14;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC4C10](&v25);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222951E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](&a30);
  _Unwind_Resume(a1);
}

void *snlp::ssu::encoder::SSUEncoder::stringHexRepresentation(void *result, char *a2)
{
  v2 = a2[23];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  if (v4)
  {
    v5 = result;
    do
    {
      v14 = 91;
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5 + 2, &v14, 1);
      v7 = v6;
      v8 = *v6;
      *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v6 + *(v8 - 24) + 8) |= 0x200u;
      *(v6 + *(v8 - 24) + 24) = 2;
      v9 = v6 + *(v8 - 24);
      if (*(v9 + 36) == -1)
      {
        std::ios_base::getloc((v6 + *(v8 - 24)));
        v10 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
        v11 = (v10->__vftable[2].~facet_0)(v10, 32);
        std::locale::~locale(&v16);
        *(v9 + 36) = v11;
      }

      *(v9 + 36) = 48;
      v12 = *v3++;
      v13 = MEMORY[0x223DC4930](v7, v12);
      v15 = 93;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_222952190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void snlp::common::text_uso_graph::ActionListParser::toTreeDebug(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void snlp::common::text_uso_graph::ActionListParser::textAlignment(snlp::common::text_uso_graph::ActionListParser *this, int __val, int a3)
{
  std::to_string(&v13, __val);
  v5 = std::string::insert(&v13, 0, "textAlignment=");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v14, ":");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
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

  v11 = std::string::append(&v15, p_p, size);
  v16 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](this + 8, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_222952C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
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

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void snlp::common::text_uso_graph::ActionListParser::alias(uint64_t a1)
{
  std::operator+<char>();
  std::vector<std::string>::push_back[abi:ne200100](a1 + 8, &__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_222952E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::text_uso_graph::ActionListParser::indentation(snlp::common::text_uso_graph::ActionListParser *this, unsigned int __val)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "indentation=");
  __p = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](this + 8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_222952F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::text_uso_graph::ActionListParser::integerValue(snlp::common::text_uso_graph::ActionListParser *this, int __val)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "integerValue=");
  __p = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](this + 8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_222952FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::text_uso_graph::ActionListParser::stringValue(uint64_t a1)
{
  std::operator+<char>();
  std::vector<std::string>::push_back[abi:ne200100](a1 + 8, &__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_222953074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::text_uso_graph::ActionListParser::edge(uint64_t a1)
{
  std::operator+<char>();
  std::vector<std::string>::push_back[abi:ne200100](a1 + 8, &__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2229530E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::text_uso_graph::ActionListParser::node(uint64_t a1)
{
  std::operator+<char>();
  std::vector<std::string>::push_back[abi:ne200100](a1 + 8, &__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_222953154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::text_uso_graph::ActionListParser::getActions@<X0>(snlp::common::text_uso_graph::ActionListParser *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
}

void sub_222953F68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__n128 snlp::ssu::utilities::SSUErrorStatus::withError@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  a2[1].n128_u8[8] = 1;
  return result;
}

BOOL snlp::ssu::utilities::validateLocaleMatch(char *cStr, const char *a2)
{
  v2 = a2;
  v3 = cStr;
  values[3] = *MEMORY[0x277D85DE8];
  v4 = cStr[23];
  v5 = *(cStr + 1);
  if (v4 >= 0)
  {
    v6 = cStr[23];
  }

  else
  {
    v6 = *(cStr + 1);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 1);
  }

  if (v6 == v7)
  {
    if (v4 < 0)
    {
      cStr = *cStr;
    }

    if (v8 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(cStr, a2, v6))
    {
      v17 = 1;
      goto LABEL_31;
    }
  }

  if (v4 < 0)
  {
    v3 = *v3;
    if (v5 != 3)
    {
LABEL_20:
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v3, 0x8000100u);
      if (v2[23] >= 0)
      {
        v12 = v2;
      }

      else
      {
        v12 = *v2;
      }

      cf = CFStringCreateWithCString(v10, v12, 0x8000100u);
      values[0] = @"zxx";
      values[1] = v11;
      v13 = CFArrayCreate(v10, values, 2, MEMORY[0x277CBF128]);
      v14 = CFArrayCreate(v10, &cf, 1, MEMORY[0x277CBF128]);
      v15 = CFBundleCopyLocalizationsForPreferences(v13, v14);
      if (CFArrayGetCount(v15) < 1)
      {
        v17 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
        v17 = CFStringCompare(ValueAtIndex, v11, 0) == kCFCompareEqualTo;
      }

      CFRelease(v15);
      CFRelease(v14);
      CFRelease(v13);
      CFRelease(cf);
      CFRelease(v11);
      goto LABEL_31;
    }
  }

  else if (v4 != 3)
  {
    goto LABEL_20;
  }

  if (*v3 != 30842 || v3[2] != 120)
  {
    goto LABEL_20;
  }

  v18 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(values[0]) = 0;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "The lproj locale indicates no linguistic content (zxx); forcing no match.", values, 2u);
  }

  v17 = 0;
LABEL_31:
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

void snlp::ssu::utilities::validateTensorRank(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a2[1] - *a2) >> 3;
  if (v4 == a1)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    std::operator+<char>();
    v6 = std::string::append(&v22, " because: actualRank (");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v21, v4);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v21;
    }

    else
    {
      v8 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v23, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v24, ") != expectedRank (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v20, a1);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v20;
    }

    else
    {
      v14 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v20.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v25, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v26, ")");
    v19 = v18->__r_.__value_.__l.__size_;
    *a3 = v18->__r_.__value_.__r.__words[0];
    *(a3 + 8) = v19;
    *(a3 + 15) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    LOBYTE(v19) = *(&v18->__r_.__value_.__s + 23);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    *(a3 + 23) = v19;
    *(a3 + 24) = 1;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2229552FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::utilities::validateTensor(char **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = (v6 - *a1) >> 3;
  snlp::ssu::utilities::validateTensorRank(v8, a2, a3);
  if ((*(a3 + 24) & 1) == 0)
  {
    v9 = *a1;
    v10 = a1[1];
    if (v6 == v7)
    {
LABEL_11:
      v15 = 1;
      while (v9 != v10)
      {
        v16 = *v9;
        v9 += 8;
        v15 = (v15 * v16);
      }

      v17 = (a2[4] - a2[3]) >> 2;
      if (v17 == v15)
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      else
      {
        std::operator+<char>();
        v18 = std::string::append(&v66, " because: actualDataSize (");
        v19 = *&v18->__r_.__value_.__l.__data_;
        v67.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v67.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v65, v17);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v65;
        }

        else
        {
          v20 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v65.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v67, v20, size);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v68.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v68.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v68, ") != expectedDataSize (");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v69.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v69.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v64, v15);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v64;
        }

        else
        {
          v26 = v64.__r_.__value_.__r.__words[0];
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v64.__r_.__value_.__l.__size_;
        }

LABEL_40:
        v36 = std::string::append(&v69, v26, v27);
        v37 = *&v36->__r_.__value_.__l.__data_;
        v70.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v70.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = std::string::append(&v70, ")");
        v39 = v38->__r_.__value_.__l.__size_;
        *a3 = v38->__r_.__value_.__r.__words[0];
        *(a3 + 8) = v39;
        *(a3 + 15) = *(&v38->__r_.__value_.__r.__words[1] + 7);
        LOBYTE(v39) = *(&v38->__r_.__value_.__s + 23);
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        *(a3 + 23) = v39;
        *(a3 + 24) = 1;
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v66.__r_.__value_.__r.__words[0];
LABEL_92:
          operator delete(v40);
        }
      }
    }

    else
    {
      v11 = 0;
      if (v8 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }

      while (1)
      {
        if ((a2[1] - *a2) >> 3 == v11 || (v10 - v9) >> 3 == v11)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *(*a2 + 8 * v11);
        v14 = *&v9[8 * v11];
        if (!v13)
        {
          std::operator+<char>();
          v28 = std::string::append(&v66, " because: dimension at index ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v65, v11);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v65;
          }

          else
          {
            v30 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v65.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&v67, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v68.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v68.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v68, " is zero (expected=");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v69.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v69.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v64, v14);
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v64;
          }

          else
          {
            v26 = v64.__r_.__value_.__r.__words[0];
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v64.__r_.__value_.__l.__size_;
          }

          goto LABEL_40;
        }

        if (v13 != v14)
        {
          break;
        }

        if (v12 == ++v11)
        {
          goto LABEL_11;
        }
      }

      std::operator+<char>();
      v41 = std::string::append(&v64, " because: dimension at index ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v63, v11);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v63;
      }

      else
      {
        v43 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v63.__r_.__value_.__l.__size_;
      }

      v45 = std::string::append(&v65, v43, v44);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v66, " (");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v62, v13);
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v62;
      }

      else
      {
        v49 = v62.__r_.__value_.__r.__words[0];
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v62.__r_.__value_.__l.__size_;
      }

      v51 = std::string::append(&v67, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v68, ") != expectedDimension (");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, v14);
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
        v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v56 = __p.__r_.__value_.__l.__size_;
      }

      v57 = std::string::append(&v69, p_p, v56);
      v58 = *&v57->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      v59 = std::string::append(&v70, ")");
      v60 = v59->__r_.__value_.__l.__size_;
      *a3 = v59->__r_.__value_.__r.__words[0];
      *(a3 + 8) = v60;
      *(a3 + 15) = *(&v59->__r_.__value_.__r.__words[1] + 7);
      LOBYTE(v60) = *(&v59->__r_.__value_.__s + 23);
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      *(a3 + 23) = v60;
      *(a3 + 24) = 1;
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        v40 = v64.__r_.__value_.__r.__words[0];
        goto LABEL_92;
      }
    }
  }
}

void sub_22295598C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 73) < 0)
  {
    operator delete(*(v52 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::getUtf16IndicesFromMatchingSpan(uint64_t a1, uint64_t a2)
{
  if ((~*(a2 + 80) & 3) != 0 || (v3 = *(a2 + 72), v2 = *(a2 + 76), v2 > v3) || (v4 = *(a1 + 24), 0x8E38E38E38E38E39 * ((*(a1 + 32) - v4) >> 4) < v3))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v4 + 144 * v2 + 112);
    v6 = *(v4 + 144 * (v3 - 1) + 120) << 32;
  }

  return v6 | v5;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::getFullNameFromMatchingSpan(nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack *this, const sirinluinternal::MatchingSpan *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v4 = *(a2 + 18);
  v5 = *(a2 + 19);
  if (v5 < v4)
  {
    v6 = 144 * v5 + 64;
    do
    {
      v7 = *(this + 3);
      if (0x8E38E38E38E38E39 * ((*(this + 4) - v7) >> 4) <= v5)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v7 + v6);
      if (v8)
      {
        v9 = *(v8 + 23);
        v10 = v9 >= 0 ? v8 : *v8;
        v11 = v9 >= 0 ? *(v8 + 23) : *(v8 + 8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v10, v11);
        v4 = *(a2 + 18);
        if (v5 < v4 - 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " ", 1);
          v4 = *(a2 + 18);
        }
      }

      ++v5;
      v6 += 144;
    }

    while (v5 < v4);
  }

  std::stringbuf::str();
  v14[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v12;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v19);
}

void sub_22295658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](&a26);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::addPersonFullNameSpanToMap(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(a3);
  v15 = HIDWORD(a3);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    LODWORD(v5) = v15;
  }

  else
  {
    v16 = *a2;
  }

  v17 = v5;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::string> const&>(v13, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v3;
  std::unordered_map<unsigned int,std::string>::unordered_map(&__p, v13);
  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v17;
    if (v6 <= v17)
    {
      v8 = v17 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & v17;
  }

  v9 = *(*(a1 + 48) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v17)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_26;
    }

LABEL_25:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (*(v10 + 4) != v17)
  {
    goto LABEL_25;
  }

  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(&__p);
  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(v13);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_222956AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_222956B3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(&a9);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x222956B24);
}

uint64_t std::unordered_map<unsigned int,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::string> const&>(a1, *(i + 4));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::string> const&>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
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

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack *this@<X0>, std::string *a2@<X8>)
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

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInVerbSubtree(nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = *(a2 + 11);
  v3 = *(a2 + 12);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = (this + 352);
  v6 = (this + 112);
  v7 = (this + 280);
  v8 = (this + 136);
  while (1)
  {
    v9 = *(this + 375);
    if (v9 >= 0)
    {
      v10 = *(this + 375);
    }

    else
    {
      v10 = *(this + 45);
    }

    v11 = *(v2 + 71);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = v2[7];
    }

    if (v10 == v11)
    {
      v13 = v9 >= 0 ? v5 : *v5;
      v14 = v12 >= 0 ? v2 + 6 : v2[6];
      if (!memcmp(v13, v14, v10))
      {
        v15 = *(this + 135);
        if (v15 >= 0)
        {
          v16 = *(this + 135);
        }

        else
        {
          v16 = *(this + 15);
        }

        v17 = *(v2 + 23);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = v2[1];
        }

        if (v16 == v17)
        {
          v19 = v15 >= 0 ? v6 : *v6;
          v20 = *v2;
          v21 = v18 >= 0 ? v2 : *v2;
          if (!memcmp(v19, v21, v16))
          {
            v22 = v2[11];
            v23 = v2[12];
            if (v22 != v23)
            {
              break;
            }
          }
        }
      }
    }

LABEL_59:
    v2 += 18;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v24 = v22 + 6;
  while (1)
  {
    v25 = *(this + 303);
    if (v25 >= 0)
    {
      v26 = *(this + 303);
    }

    else
    {
      v26 = *(this + 36);
    }

    v27 = *(v24 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = v24[1];
    }

    if (v26 == v27)
    {
      v29 = v25 >= 0 ? v7 : *v7;
      v30 = *v24;
      v31 = v28 >= 0 ? v24 : *v24;
      if (!memcmp(v29, v31, v26))
      {
        v32 = *(this + 159);
        if (v32 >= 0)
        {
          v33 = *(this + 159);
        }

        else
        {
          v33 = *(this + 18);
        }

        v34 = *(v24 - 25);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v24 - 5);
        }

        if (v33 == v34)
        {
          v36 = v24 - 6;
          v37 = v32 >= 0 ? v8 : *v8;
          v38 = *v36;
          v39 = v35 >= 0 ? v24 - 6 : *v36;
          if (!memcmp(v37, v39, v33) && (nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInRecipientSubtree(this, (v24 - 6)) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }

    v40 = v24 + 12;
    v24 += 18;
    if (v40 == v23)
    {
      goto LABEL_59;
    }
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientInRecipientSubtree(nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = *(this + 303);
  if (v2 >= 0)
  {
    v3 = *(this + 303);
  }

  else
  {
    v3 = *(this + 36);
  }

  v4 = *(a2 + 71);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 7);
  }

  if (v3 == v4)
  {
    v8 = v2 >= 0 ? (this + 280) : *(this + 35);
    v9 = v5 >= 0 ? (a2 + 48) : *(a2 + 6);
    if (!memcmp(v8, v9, v3))
    {
      v11 = *(a2 + 11);
      v12 = *(a2 + 12);
      if (v11 != v12)
      {
        v13 = __p;
        v14 = (this + 184);
        v15 = &v65;
        while (1)
        {
          v16 = *(this + 231);
          if (v16 >= 0)
          {
            v17 = *(this + 231);
          }

          else
          {
            v17 = *(this + 27);
          }

          v18 = *(v11 + 71);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = v11[7];
          }

          if (v17 != v18)
          {
            goto LABEL_80;
          }

          v20 = v16 >= 0 ? (this + 208) : *(this + 26);
          v21 = v19 >= 0 ? v11 + 6 : v11[6];
          if (memcmp(v20, v21, v17))
          {
            goto LABEL_80;
          }

          v22 = *(this + 183);
          if (v22 >= 0)
          {
            v23 = *(this + 183);
          }

          else
          {
            v23 = *(this + 21);
          }

          v24 = *(v11 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = v11[1];
          }

          if (v23 != v24)
          {
            goto LABEL_80;
          }

          v26 = v22 >= 0 ? (this + 160) : *(this + 20);
          v27 = *v11;
          v28 = v25 >= 0 ? v11 : *v11;
          if (memcmp(v26, v28, v23))
          {
            goto LABEL_80;
          }

          v29 = v11[11];
          if (v11[12] - v29 != 144)
          {
            goto LABEL_80;
          }

          v55 = v15;
          nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v60, v29);
          v30 = *(this + 207);
          if (v30 >= 0)
          {
            v31 = *(this + 207);
          }

          else
          {
            v31 = *(this + 24);
          }

          v32 = v64;
          if ((v64 & 0x80u) != 0)
          {
            v32 = __p[1];
          }

          v56 = v14;
          if (v31 != v32)
          {
            break;
          }

          v33 = v30 >= 0 ? v14 : *v14;
          v34 = (v64 & 0x80u) == 0 ? v13 : __p[0];
          if (memcmp(v33, v34, v31))
          {
            break;
          }

          v35 = *(this + 159);
          if (v35 >= 0)
          {
            v36 = *(this + 159);
          }

          else
          {
            v36 = *(this + 18);
          }

          size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v60.__r_.__value_.__l.__size_;
          }

          if (v36 != size)
          {
            break;
          }

          v38 = v35 >= 0 ? (this + 136) : *(this + 17);
          v39 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
          if (memcmp(v38, v39, v36))
          {
            break;
          }

          v40 = v13;
          v42 = v11[11];
          v43 = *(v42 + 88);
          v44 = *(v42 + 96);
          if (v43 == v44)
          {
            goto LABEL_72;
          }

          v54 = *(this + 255);
          if (v54 >= 0)
          {
            v45 = *(this + 255);
          }

          else
          {
            v45 = *(this + 30);
          }

          v46 = v43 + 3;
          while (1)
          {
            v47 = v46[1].u8[7];
            v48 = v47;
            if ((v47 & 0x80u) != 0)
            {
              v47 = v46->i64[1];
            }

            if (v45 == v47)
            {
              v49 = v54 >= 0 ? (this + 232) : *(this + 29);
              v50 = v48 >= 0 ? v46 : v46->i64[0];
              v51 = v44;
              v52 = memcmp(v49, v50, v45);
              v44 = v51;
              if (!v52)
              {
                break;
              }
            }

            v53 = v46 + 6;
            v46 += 9;
            v41 = 1;
            if (v53 == v44)
            {
              goto LABEL_73;
            }
          }

          v59 = vmovn_s64(v46[4]);
          nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::findMatchingFullPersonNameMatchingSpan(this, v59, &v57);
          if (v58 == 1)
          {
            nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientWithName(this, a2, &v57, &v59);
          }

          else
          {
            nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientWithRelationshipType(this, a2, &v46[-2].i64[1], &v59);
          }

          if (v58 == 1 && SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          v41 = 0;
LABEL_73:
          v15 = v55;
          v57.__r_.__value_.__r.__words[0] = v55;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v57);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }

          v13 = v40;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }

          v14 = v56;
          if (!v41)
          {
            return 1;
          }

LABEL_80:
          v11 += 18;
          if (v11 == v12)
          {
            return 0;
          }
        }

        v40 = v13;
LABEL_72:
        v41 = 1;
        goto LABEL_73;
      }
    }
  }

  return 0;
}

void sub_2229574B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a23);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::findMatchingFullPersonNameMatchingSpan(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v3 = HIDWORD(a2);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::find<unsigned int>((a1 + 48), a2);
  if (v5 && (v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::find<unsigned int>(v5 + 3, v3)) != 0)
  {
    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v6[3], v6[4]);
    }

    else
    {
      v7 = *(v6 + 3);
      a3->__r_.__value_.__r.__words[2] = v6[5];
      *&a3->__r_.__value_.__l.__data_ = v7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  a3[1].__r_.__value_.__s.__data_[0] = v8;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientWithName(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 303);
  if (v5 >= 0)
  {
    v6 = *(a1 + 303);
  }

  else
  {
    v6 = *(a1 + 288);
  }

  v7 = *(a2 + 71);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 56);
  }

  if (v6 == v7)
  {
    v12 = v5 >= 0 ? (a1 + 280) : *(a1 + 280);
    v13 = v8 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (!memcmp(v12, v13, v6))
    {
      nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::createNameNode(a1, a3, *a4, &v56);
      v14 = *(a2 + 88);
      v15 = *(a2 + 96);
      if (v14 == v15)
      {
LABEL_104:
        v15 = v14;
      }

      else
      {
        v54 = (a1 + 208);
        v55 = *(a2 + 96);
        v16 = (a1 + 184);
        do
        {
          v17 = *(a1 + 231);
          if (v17 >= 0)
          {
            v18 = *(a1 + 231);
          }

          else
          {
            v18 = *(a1 + 216);
          }

          v19 = *(v14 + 71);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v14 + 56);
          }

          if (v18 == v19)
          {
            v21 = (v17 >= 0 ? a1 + 208 : *v54);
            v22 = v20 >= 0 ? (v14 + 48) : *(v14 + 48);
            if (!memcmp(v21, v22, v18))
            {
              v23 = *(v14 + 88);
              v24 = *(v14 + 96);
              while (v23 != v24)
              {
                nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v62, v23);
                v25 = *(a1 + 207);
                if (v25 >= 0)
                {
                  v26 = *(a1 + 207);
                }

                else
                {
                  v26 = *(a1 + 192);
                }

                v27 = v67;
                if ((v67 & 0x80u) != 0)
                {
                  v27 = v66;
                }

                if (v26 == v27)
                {
                  if (v25 >= 0)
                  {
                    v28 = (a1 + 184);
                  }

                  else
                  {
                    v28 = *v16;
                  }

                  if ((v67 & 0x80u) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p;
                  }

                  v30 = memcmp(v28, p_p, v26) == 0;
                }

                else
                {
                  v30 = 0;
                }

                v69[0] = v68;
                std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v69);
                if (v67 < 0)
                {
                  operator delete(__p);
                }

                if (v64 < 0)
                {
                  operator delete(v63);
                }

                if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v62.__r_.__value_.__l.__data_);
                }

                if (v30)
                {
                  if (v14 == v15)
                  {
                    goto LABEL_105;
                  }

                  v31 = v14 + 144;
                  if (v14 + 144 != v15)
                  {
                    v15 = v14;
                    do
                    {
                      v32 = v31;
                      v33 = *(a1 + 231);
                      if (v33 >= 0)
                      {
                        v34 = *(a1 + 231);
                      }

                      else
                      {
                        v34 = *(a1 + 216);
                      }

                      v35 = *(v14 + 215);
                      v36 = v35;
                      if ((v35 & 0x80u) != 0)
                      {
                        v35 = *(v14 + 200);
                      }

                      if (v34 == v35)
                      {
                        v37 = (v33 >= 0 ? a1 + 208 : *v54);
                        v38 = v36 >= 0 ? (v14 + 192) : *(v14 + 192);
                        if (!memcmp(v37, v38, v34))
                        {
                          v43 = *(v14 + 232);
                          v44 = *(v14 + 240);
                          while (v43 != v44)
                          {
                            nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v62, v43);
                            v45 = *(a1 + 207);
                            if (v45 >= 0)
                            {
                              v46 = *(a1 + 207);
                            }

                            else
                            {
                              v46 = *(a1 + 192);
                            }

                            v47 = v67;
                            if ((v67 & 0x80u) != 0)
                            {
                              v47 = v66;
                            }

                            if (v46 == v47)
                            {
                              if (v45 >= 0)
                              {
                                v48 = (a1 + 184);
                              }

                              else
                              {
                                v48 = *v16;
                              }

                              if ((v67 & 0x80u) == 0)
                              {
                                v49 = &__p;
                              }

                              else
                              {
                                v49 = __p;
                              }

                              v50 = memcmp(v48, v49, v46) == 0;
                            }

                            else
                            {
                              v50 = 0;
                            }

                            v69[0] = v68;
                            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v69);
                            if (v67 < 0)
                            {
                              operator delete(__p);
                            }

                            if (v64 < 0)
                            {
                              operator delete(v63);
                            }

                            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v62.__r_.__value_.__l.__data_);
                            }

                            if (v50)
                            {
                              goto LABEL_78;
                            }

                            v43 = (v43 + 144);
                          }
                        }
                      }

                      if (*(v15 + 23) < 0)
                      {
                        operator delete(*v15);
                      }

                      v39 = *v32;
                      *(v15 + 16) = *(v32 + 16);
                      *v15 = v39;
                      *(v14 + 167) = 0;
                      *v32 = 0;
                      if (*(v15 + 47) < 0)
                      {
                        operator delete(*(v15 + 24));
                      }

                      v40 = *(v14 + 168);
                      *(v15 + 40) = *(v14 + 184);
                      *(v15 + 24) = v40;
                      *(v14 + 191) = 0;
                      *(v14 + 168) = 0;
                      if (*(v15 + 71) < 0)
                      {
                        operator delete(*(v15 + 48));
                      }

                      v41 = *(v14 + 192);
                      *(v15 + 64) = *(v14 + 208);
                      *(v15 + 48) = v41;
                      *(v14 + 215) = 0;
                      *(v14 + 192) = 0;
                      *(v15 + 72) = *(v14 + 216);
                      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(v15 + 88);
                      *(v15 + 88) = *(v14 + 232);
                      *(v15 + 104) = *(v14 + 248);
                      *(v14 + 232) = 0;
                      *(v14 + 240) = 0;
                      *(v14 + 248) = 0;
                      v42 = *(v14 + 272);
                      *(v15 + 112) = *(v14 + 256);
                      *(v15 + 128) = v42;
                      v15 += 144;
LABEL_78:
                      v31 = v32 + 144;
                      v14 = v32;
                    }

                    while (v32 + 144 != v55);
                    goto LABEL_105;
                  }

                  goto LABEL_104;
                }

                v23 = (v23 + 144);
              }
            }
          }

          v14 += 144;
        }

        while (v14 != v15);
      }

LABEL_105:
      v51 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *>((v15 + 144), *(a2 + 96), v15);
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a2 + 88, v51);
      v52 = *(a2 + 96);
      if (v52 >= *(a2 + 104))
      {
        v53 = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>((a2 + 88), &v56);
      }

      else
      {
        nlv4_inference_orchestrator::trees::TreeNode::TreeNode(*(a2 + 96), &v56);
        v53 = v52 + 144;
        *(a2 + 96) = v52 + 144;
      }

      *(a2 + 96) = v53;
      v62.__r_.__value_.__r.__words[0] = &v61;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v62);
      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (v58 < 0)
      {
        operator delete(v57);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_222957A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::replaceFromPersonRecipientWithRelationshipType(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 303);
  if (v5 >= 0)
  {
    v6 = *(a1 + 303);
  }

  else
  {
    v6 = *(a1 + 288);
  }

  v7 = *(a2 + 71);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 56);
  }

  if (v6 == v7)
  {
    v12 = v5 >= 0 ? (a1 + 280) : *(a1 + 280);
    v13 = v8 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (!memcmp(v12, v13, v6))
    {
      nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::createRelationshipTypeNode(a1, a3, *a4, &v50);
      v14 = *(a2 + 88);
      v15 = *(a2 + 96);
      if (v14 != v15)
      {
        v16 = (a1 + 184);
        v17 = *(a1 + 231);
        if (v17 >= 0)
        {
          v18 = *(a1 + 231);
        }

        else
        {
          v18 = *(a1 + 216);
        }

        v19 = v14 + 48;
        while (1)
        {
          v20 = *(v19 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v19 + 8);
          }

          if (v18 == v20)
          {
            v22 = v17 >= 0 ? (a1 + 208) : *(a1 + 208);
            v23 = v21 >= 0 ? v19 : *v19;
            if (!memcmp(v22, v23, v18))
            {
              break;
            }
          }

          v24 = v19 + 96;
          v19 += 144;
          if (v24 == v15)
          {
            goto LABEL_76;
          }
        }

        v25 = v19 - 48;
        v27 = *(v25 + 88);
        v26 = *(v25 + 96);
        if (v27 != v26)
        {
          v28 = *(a1 + 207);
          if (v28 >= 0)
          {
            v29 = *(a1 + 207);
          }

          else
          {
            v29 = *(a1 + 192);
          }

          v30 = v27 + 48;
          while (1)
          {
            v31 = *(v30 + 23);
            v32 = v31;
            if ((v31 & 0x80u) != 0)
            {
              v31 = *(v30 + 8);
            }

            if (v29 == v31)
            {
              v33 = v28 >= 0 ? (a1 + 184) : *v16;
              v34 = v32 >= 0 ? v30 : *v30;
              if (!memcmp(v33, v34, v29))
              {
                break;
              }
            }

            v35 = (v30 + 96);
            v30 += 144;
            if (v35 == v26)
            {
              v27 = v26;
              goto LABEL_72;
            }
          }

          v27 = v30 - 48;
          if (v27 != v26)
          {
            v36 = v27 + 144;
            if ((v27 + 144) != v26)
            {
              do
              {
                v37 = *(a1 + 207);
                if (v37 >= 0)
                {
                  v38 = *(a1 + 207);
                }

                else
                {
                  v38 = *(a1 + 192);
                }

                v39 = *(v36 + 71);
                v40 = v39;
                if ((v39 & 0x80u) != 0)
                {
                  v39 = *(v36 + 56);
                }

                if (v38 != v39 || (v37 >= 0 ? (v41 = (a1 + 184)) : (v41 = *v16), v40 >= 0 ? (v42 = (v36 + 48)) : (v42 = *(v36 + 48)), memcmp(v41, v42, v38)))
                {
                  if (*(v27 + 23) < 0)
                  {
                    operator delete(*v27);
                  }

                  v43 = *v36;
                  *(v27 + 16) = *(v36 + 16);
                  *v27 = v43;
                  *(v36 + 23) = 0;
                  *v36 = 0;
                  if (*(v27 + 47) < 0)
                  {
                    operator delete(*(v27 + 24));
                  }

                  v44 = *(v36 + 24);
                  *(v27 + 40) = *(v36 + 40);
                  *(v27 + 24) = v44;
                  *(v36 + 47) = 0;
                  *(v36 + 24) = 0;
                  if (*(v27 + 71) < 0)
                  {
                    operator delete(*(v27 + 48));
                  }

                  v45 = *(v36 + 48);
                  *(v27 + 64) = *(v36 + 64);
                  *(v27 + 48) = v45;
                  *(v36 + 71) = 0;
                  *(v36 + 48) = 0;
                  *(v27 + 72) = *(v36 + 72);
                  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(v27 + 88);
                  *(v27 + 88) = *(v36 + 88);
                  *(v27 + 104) = *(v36 + 104);
                  *(v36 + 88) = 0;
                  *(v36 + 96) = 0;
                  *(v36 + 104) = 0;
                  v46 = *(v36 + 128);
                  *(v27 + 112) = *(v36 + 112);
                  *(v27 + 128) = v46;
                  v27 += 144;
                }

                v36 += 144;
              }

              while (v36 != v26);
              v26 = *(v25 + 96);
            }
          }
        }

LABEL_72:
        v47 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *,nlv4_inference_orchestrator::trees::TreeNode *>((v27 + 144), v26, v27);
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](v25 + 88, v47);
        v48 = *(v25 + 96);
        if (v48 >= *(v25 + 104))
        {
          v49 = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>((v25 + 88), &v50);
        }

        else
        {
          nlv4_inference_orchestrator::trees::TreeNode::TreeNode(*(v25 + 96), &v50);
          v49 = v48 + 144;
          *(v25 + 96) = v48 + 144;
        }

        *(v25 + 96) = v49;
      }

LABEL_76:
      v56 = &v55;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v56);
      if (v54 < 0)
      {
        operator delete(__p);
      }

      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_222957DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::createRelationshipTypeNode(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = HIDWORD(a3);
  v8 = a3;
  UnicodeScalarAndUtf8Offsets = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets((a1 + 88), a3);
  v11 = v10;
  v12 = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets((a1 + 88), v7);
  v14 = v13;
  std::string::basic_string[abi:ne200100]<0>(a4, "");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 1, *a2, *(a2 + 8));
  }

  else
  {
    *&a4[1].__r_.__value_.__l.__data_ = *a2;
    a4[1].__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (*(a1 + 327) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 2, *(a1 + 304), *(a1 + 312));
  }

  else
  {
    *&a4[2].__r_.__value_.__l.__data_ = *(a1 + 304);
    a4[2].__r_.__value_.__r.__words[2] = *(a1 + 320);
  }

  a4[3].__r_.__value_.__r.__words[0] = v11;
  a4[3].__r_.__value_.__l.__size_ = v14;
  a4[3].__r_.__value_.__r.__words[2] = 0;
  a4[4].__r_.__value_.__r.__words[0] = 0;
  a4[4].__r_.__value_.__l.__size_ = 0;
  a4[4].__r_.__value_.__r.__words[2] = v8;
  a4[5].__r_.__value_.__r.__words[0] = v7;
  a4[5].__r_.__value_.__l.__size_ = UnicodeScalarAndUtf8Offsets;
  a4[5].__r_.__value_.__r.__words[2] = v12;
}

void sub_222957EDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ReplaceFromPersonRecipientHack::createNameNode(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = HIDWORD(a3);
  v8 = a3;
  UnicodeScalarAndUtf8Offsets = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets((a1 + 88), a3);
  v11 = v10;
  v12 = snlp::common::utilities::getUnicodeScalarAndUtf8Offsets((a1 + 88), v7);
  v14 = v13;
  std::string::basic_string[abi:ne200100]<0>(a4, "");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 1, *a2, *(a2 + 8));
  }

  else
  {
    *&a4[1].__r_.__value_.__l.__data_ = *a2;
    a4[1].__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (*(a1 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 2, *(a1 + 232), *(a1 + 240));
  }

  else
  {
    *&a4[2].__r_.__value_.__l.__data_ = *(a1 + 232);
    a4[2].__r_.__value_.__r.__words[2] = *(a1 + 248);
  }

  a4[3].__r_.__value_.__r.__words[0] = v11;
  a4[3].__r_.__value_.__l.__size_ = v14;
  a4[3].__r_.__value_.__r.__words[2] = 0;
  a4[4].__r_.__value_.__r.__words[0] = 0;
  a4[4].__r_.__value_.__l.__size_ = 0;
  a4[4].__r_.__value_.__r.__words[2] = v8;
  a4[5].__r_.__value_.__r.__words[0] = v7;
  a4[5].__r_.__value_.__l.__size_ = UnicodeScalarAndUtf8Offsets;
  a4[5].__r_.__value_.__r.__words[2] = v12;
}

void sub_222957FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,std::string>>>>::find<unsigned int>(void *a1, unsigned int a2)
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

void *snlp::ssu::encoder::SSUPreprocessor::SSUPreprocessor(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = a3;
  result[1] = v3;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = a3;
  result[1] = v3;
  return result;
}

void snlp::ssu::encoder::SSUPreprocessor::tokenizeSentencePieces(uint64_t *a1, void *a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SSUPreprocessor SentencePiece tokenization", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN SSUPreprocessor SentencePiece tokenization", buf, 2u);
  }

  v9 = *a1;
  *buf = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  *&buf[8] = v9;
  memset(v10, 0, sizeof(v10));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v10, buf, v12, 2uLL);
}

void sub_2229584F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  snlp::ssu::encoder::SSUPreprocessor::PreprocessingState::~PreprocessingState(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::encoder::SSUPreprocessor::tokenizeSentencePiecesUtterance(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  nl_sentencepiece::SentencepieceModel::encodeUtterance(v31, **(a1 + 8), a2);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - v31[0]) >> 3);
  v8 = *a1;
  if (v7 >= *a1)
  {
    if (v8 < v7)
    {
      v9 = SNLPOSLoggerForCategory(8);
      v6 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (*(a2 + 23) >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        *buf = 136642819;
        *&buf[4] = v10;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "Warning: truncating SentencePiece tokens for utterance: %{sensitive}s", buf, 0xCu);
      }
    }

    v7 = v8;
  }

  if (v7)
  {
    v11 = v31[0];
    v12 = v31[0] + 24 * v7;
    v13 = a3[3];
    do
    {
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = v11[1];
      }

      v6 = (*(***(a1 + 8) + 504))(**(a1 + 8), v15, v16);
      *v13++ = v6;
      v11 += 3;
    }

    while (v11 != v12);
  }

  v18 = a3[5];
  v17 = a3[6];
  if (v18 >= v17)
  {
    v20 = a3[4];
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 3;
    v23 = v22 + 1;
    if ((v22 + 1) >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v24 = v17 - v20;
    if (v24 >> 2 > v23)
    {
      v23 = v24 >> 2;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
    v26 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((a3 + 4), v26);
    }

    v27 = (v18 - v20) >> 3;
    v28 = (8 * v22);
    v29 = (8 * v22 - 8 * v27);
    *v28 = v7;
    v19 = v28 + 1;
    memcpy(v29, v20, v21);
    v6 = a3[4];
    a3[4] = v29;
    a3[5] = v19;
    a3[6] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v18 = v7;
    v19 = v18 + 1;
  }

  a3[5] = v19;
  snlp::ssu::encoder::SSUPreprocessor::logSentencePiecesTokens(v6, a3, v31, v7);
  a3[3] += 4 * *a1;
  *buf = v31;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](buf);
  v30 = *MEMORY[0x277D85DE8];
}

void snlp::ssu::encoder::SSUPreprocessor::PreprocessingState::~PreprocessingState(snlp::ssu::encoder::SSUPreprocessor::PreprocessingState *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t snlp::ssu::encoder::SSUPreprocessor::logSentencePiecesTokens(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = SNLPOSLoggerForCategory(8);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v26);
    if (a4)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(a2 + 24);
      do
      {
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "[", 1);
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v10)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *a3 + v9;
        v14 = *(v13 + 23);
        if (v14 >= 0)
        {
          v15 = *a3 + v9;
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
          v16 = *(v13 + 8);
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "::", 2);
        v18 = *(v11 + 4 * v10);
        v19 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]", 1);
        ++v10;
        v9 += 24;
      }

      while (a4 != v10);
    }

    v20 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str();
      v21 = v25 >= 0 ? &__p : __p;
      *buf = 136642819;
      v33 = v21;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "Encoded utterance as sentence pieces: %{sensitive}s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p);
      }
    }

    v26[0] = *MEMORY[0x277D82818];
    v22 = *(MEMORY[0x277D82818] + 72);
    *(v26 + *(v26[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v27 = v22;
    v28 = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v29);
    std::iostream::~basic_iostream();
    result = MEMORY[0x223DC4C10](&v31);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222958AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](&a28);
  _Unwind_Resume(a1);
}

void sub_222959D0C(_Unwind_Exception *a1)
{
  v1[14] = v2;

  _Unwind_Resume(a1);
}

char **uaap::TimeSpanWithReferenceHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {
    uaap::mapTimeSpanWithReferenceToItemizedUsos(a3);
    uaap::mapTimeSpansToItemizedUsos(a3);

    return uaap::mapTimeSpanSpansToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapTimeSpanWithReferenceToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"TimeSpanWithReference");
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
        result = *&v5[8 * v6];
        if (result)
        {
          v7 = **result;
          if (result)
          {
            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }
  }

  return result;
}

uint64_t uaap::TimeSpanWithReferenceHandler::resolveTimeSpanWithReference(uint64_t a1, uaap::UPDDSpan *a2, uint64_t a3, uint64_t a4)
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

  v6 = *(a3 + 24);
  siri::ontology::oname::graph::ontology_init::Root(a1);
  v7 = siri::ontology::operator!=();
  if (v7)
  {
    return 0;
  }

  siri::ontology::oname::graph::ontology_init::common_DateTime(v7);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  v11 = EntityNode;
  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = siri::ontology::oname::graph::ontology_init::Argument_offsetValue(EntityNode);
    v14 = uaap::TimeHandler::resolveOffsetDurationValue(v12, a2, v11, v13) != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(v15 + 24);
    if (v16)
    {
      v17 = CFEqual(*(v15 + 24), @"after");
      if (v17)
      {
        siri::ontology::oname::graph::ontology_init::common_OffsetDirection_After(v17);
        goto LABEL_16;
      }

      v18 = CFEqual(v16, @"before");
      if (v18)
      {
        siri::ontology::oname::graph::ontology_init::common_OffsetDirection_Before(v18);
LABEL_16:
        v19 = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::oname::graph::ontology_init::common_OffsetDirection(v19);
        v20 = siri::ontology::UsoGraph::createEntityNode();
        siri::ontology::oname::graph::ontology_init::Argument_direction(v20);
        v21 = siri::ontology::UsoGraphNode::setSuccessor();
        siri::ontology::oname::graph::ontology_init::Argument_definedValue(v21);
        siri::ontology::UsoGraphNode::setSuccessor();
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v19, *(a1 + 48), v22);
      }
    }
  }

  v23 = *(a1 + 64);
  if (!v23)
  {
    if (!v14)
    {
      return 0;
    }

LABEL_24:
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v11, a1, v9);
  }

  if (uaap::TimeHandler::resolveOffsetReference(v23, a2, v11, v10))
  {
    v24 = 1;
  }

  else
  {
    v24 = v14;
  }

  if (v24)
  {
    goto LABEL_24;
  }

  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeSpanWithReferenceHandler::resolveTimeSpanWithReferenceGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpanWithReference *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeSpanWithReferenceHandler::resolveTimeSpanWithReference(v4, a2, v5, v6);
  }

  return this;
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::textAlignment(snlp::common::text_uso_graph::UsoGraphTextTreeParser *this)
{
  v1 = *(*(this + 12) - 8);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN4snlp6common14text_uso_graph26UsoGraphTextTreeParseErrorCI1St13runtime_errorEPKc(exception, "Last node on the parser stack is null, but it shouldn't");
    goto LABEL_8;
  }

  v2 = **v1;
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN4snlp6common14text_uso_graph26UsoGraphTextTreeParseErrorCI1St13runtime_errorEPKc(exception, "Test alignment parsed but last node on parser stack is not a UsoEntityNode");
LABEL_8:
  }

  return siri::ontology::UsoEntityNode::addUtteranceAlignment();
}

std::runtime_error *_ZN4snlp6common14text_uso_graph26UsoGraphTextTreeParseErrorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2835E4570;
  return result;
}

BOOL snlp::common::text_uso_graph::UsoGraphTextTreeParser::alias(void *a1, const void **a2)
{
  v4 = *(a1[12] - 8);
  v5 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 14), a2);
  v6 = v5;
  v7 = a1[15];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(a1[14] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 14), v12 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  v12[5] = v4;
  return result;
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::indentation(uint64_t this, unsigned int a2)
{
  *(this + 80) = a2;
  v3 = *(this + 88);
  v2 = *(this + 96);
  if (v3 != v2)
  {
    while (*v3 < a2)
    {
      v3 += 4;
      if (v3 == v2)
      {
        return this;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 4;
      if (v3 + 4 != v2)
      {
        do
        {
          if (*v4 < a2)
          {
            *v3 = *v4;
            v3 += 4;
          }

          v4 += 4;
        }

        while (v4 != v2);
        v2 = *(this + 96);
      }
    }
  }

  if (v3 != v2)
  {
    *(this + 96) = v3;
  }

  return this;
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::integerValue(std::string *this)
{
  v2 = this[1].__r_.__value_.__r.__words[2];
  IntNode = siri::ontology::UsoGraph::createIntNode();
  v4 = IntNode;
  data = this[4].__r_.__value_.__l.__data_;
  size = this[4].__r_.__value_.__l.__size_;
  if (data >= size)
  {
    v8 = this[3].__r_.__value_.__r.__words[2];
    v9 = data - v8;
    v10 = (data - v8) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = size - v8;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::common::text_uso_graph::_StackNode>>(v13);
    }

    v14 = v10;
    v15 = 16 * v10;
    *v15 = this[3].__r_.__value_.__r.__words[1];
    *(v15 + 8) = v4;
    v7 = 16 * v10 + 16;
    v16 = (v15 - 16 * v14);
    memcpy(v16, v8, v9);
    IntNode = this[3].__r_.__value_.__r.__words[2];
    this[3].__r_.__value_.__r.__words[2] = v16;
    this[4].__r_.__value_.__r.__words[0] = v7;
    this[4].__r_.__value_.__l.__size_ = 0;
    if (IntNode)
    {
      operator delete(IntNode);
    }
  }

  else
  {
    *data = this[3].__r_.__value_.__r.__words[1];
    *(data + 1) = IntNode;
    v7 = (data + 16);
  }

  this[4].__r_.__value_.__r.__words[0] = v7;
  if ((this[3].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v17 = siri::ontology::oname::graph::ontology_init::Argument_entity(IntNode);
    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(this + 2, (v17 + 8));
  }

  return snlp::common::text_uso_graph::UsoGraphTextTreeParser::attachChildInStack(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::common::text_uso_graph::_StackNode>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::attachChildInStack(snlp::common::text_uso_graph::UsoGraphTextTreeParser *this)
{
  v1 = *(this + 12);
  v2 = *(v1 - 8);
  if ((*(this + 72) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*v2 + 48))(&v14, v2);
    v9 = std::string::insert(&v14, 0, "Empty edge found while attaching: ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_2835E4570;
  }

  v4 = *(v1 - 24);
  v5 = *(this + 1);
  siri::ontology::UsoVocabManager::getEdgeName();
  if ((v6 & 1) == 0)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = this;
    v13 = v11;
    if (*(v12 + 72))
    {
      std::operator+<char>();
      std::runtime_error::runtime_error(v13, &v15);
      v13->__vftable = &unk_2835E4570;
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return siri::ontology::UsoGraphNode::setSuccessor();
}

void sub_22295A918(_Unwind_Exception *exception_object)
{
  if (*(v3 - 73) < 0)
  {
    operator delete(*(v3 - 96));
  }

  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22295AB50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
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
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!v40)
  {
LABEL_18:
    __cxa_end_catch();
    JUMPOUT(0x22295AC38);
  }

  __cxa_free_exception(v41);
  goto LABEL_18;
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::stringValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v21 = 1;
  StringNode = siri::ontology::UsoGraph::createStringNode();
  v5 = StringNode;
  v7 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v7 >= v6)
  {
    v9 = *(a1 + 88);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::common::text_uso_graph::_StackNode>>(v14);
    }

    v15 = v11;
    v16 = 16 * v11;
    *v16 = *(a1 + 80);
    *(v16 + 8) = v5;
    v8 = 16 * v11 + 16;
    v17 = (v16 - 16 * v15);
    memcpy(v17, v9, v10);
    StringNode = *(a1 + 88);
    *(a1 + 88) = v17;
    *(a1 + 96) = v8;
    *(a1 + 104) = 0;
    if (StringNode)
    {
      operator delete(StringNode);
    }
  }

  else
  {
    *v7 = *(a1 + 80);
    *(v7 + 8) = StringNode;
    v8 = v7 + 16;
  }

  *(a1 + 96) = v8;
  if (v21 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v18 = siri::ontology::oname::graph::ontology_init::Argument_entity(StringNode);
    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((a1 + 48), (v18 + 8));
  }

  return snlp::common::text_uso_graph::UsoGraphTextTreeParser::attachChildInStack(a1);
}

void sub_22295ADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *snlp::common::text_uso_graph::UsoGraphTextTreeParser::node(void *result, std::string *__str)
{
  v2 = result;
  v3 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = __str;
    if (v3 != 4)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (LODWORD(v4->__r_.__value_.__l.__data_) == 1953460050)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (__str->__r_.__value_.__l.__size_ == 4)
  {
    v4 = __str->__r_.__value_.__r.__words[0];
    goto LABEL_6;
  }

LABEL_7:
  v5 = result[2];
  v24[0] = result[1];
  v24[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = result[5];
  NodeByName = snlp::common::text_uso_graph::createNodeByName(__str, v24);
  v8 = NodeByName;
  v10 = *(v2 + 96);
  v9 = *(v2 + 104);
  if (v10 >= v9)
  {
    v12 = *(v2 + 88);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::common::text_uso_graph::_StackNode>>(v17);
    }

    v18 = v14;
    v19 = 16 * v14;
    *v19 = *(v2 + 80);
    *(v19 + 8) = v8;
    v11 = 16 * v14 + 16;
    v20 = (v19 - 16 * v18);
    memcpy(v20, v12, v13);
    v21 = *(v2 + 88);
    *(v2 + 88) = v20;
    *(v2 + 96) = v11;
    *(v2 + 104) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = *(v2 + 80);
    *(v10 + 8) = NodeByName;
    v11 = v10 + 16;
  }

  *(v2 + 96) = v11;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if ((*(v2 + 72) & 1) == 0)
  {
    v22 = (*(**(*(v2 + 96) - 8) + 16))(*(*(v2 + 96) - 8));
    if (v22 == 2)
    {
      v23 = siri::ontology::oname::graph::ontology_init::Argument_entity(v22);
    }

    else
    {
      v23 = siri::ontology::oname::graph::ontology_init::Argument_task(v22);
    }

    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((v2 + 48), (v23 + 8));
  }

  return snlp::common::text_uso_graph::UsoGraphTextTreeParser::attachChildInStack(v2);
}

void sub_22295AFE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::text_uso_graph::createNodeByName(std::string *__str, uint64_t *a2)
{
  v62[1] = *MEMORY[0x277D85DE8];
  __p.__r_.__value_.__r.__words[0] = "::";
  __p.__r_.__value_.__l.__size_ = 2;
  nlv4_inference_orchestrator::trees::split(&v23, __str, &__p.__r_.__value_.__l.__data_);
  v3 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v3 = v25;
  }

  v4 = *a2;
  NodeName = siri::ontology::UsoVocabManager::getNodeName();
  v7 = v6;
  if (v6)
  {
    v8 = NodeName;
  }

  else
  {
    v9 = *a2;
    std::operator+<char>();
    v8 = siri::ontology::UsoVocabManager::getNodeName();
    v7 = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v7 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v20 = std::string::append(&v22, " not found in ontology.");
      v21 = *&v20->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &__p);
      exception->__vftable = &unk_2835E4570;
    }
  }

  if ((v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (v3)
  {
    v11 = 23;
  }

  else
  {
    v11 = 47;
  }

  if ((v23.__r_.__value_.__s.__data_[v11] & 0x8000000000000000) != 0)
  {
    v15 = 1;
    if (!v3)
    {
      v15 = 4;
    }

    if (v23.__r_.__value_.__r.__words[v15])
    {
      goto LABEL_14;
    }

LABEL_19:
    if (*(v8 + 32) == 5)
    {
      OperatorNode = siri::ontology::UsoGraph::createOperatorNode();
    }

    else
    {
      OperatorNode = siri::ontology::UsoGraph::createEntityNode();
    }

    goto LABEL_23;
  }

  if (!v23.__r_.__value_.__s.__data_[v11])
  {
    goto LABEL_19;
  }

LABEL_14:
  v12 = *a2;
  siri::ontology::UsoVocabManager::getVerbName();
  if ((v13 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Check");
    std::string::basic_string[abi:ne200100]<0>(v28, "Control");
    std::string::basic_string[abi:ne200100]<0>(v29, "Convert");
    std::string::basic_string[abi:ne200100]<0>(v30, "Create");
    std::string::basic_string[abi:ne200100]<0>(v31, "Delete");
    std::string::basic_string[abi:ne200100]<0>(v32, "Entity");
    std::string::basic_string[abi:ne200100]<0>(v33, "NoVerb");
    std::string::basic_string[abi:ne200100]<0>(v34, "PlaceholderVerb");
    std::string::basic_string[abi:ne200100]<0>(v35, "RecipientsEventTrigger");
    std::string::basic_string[abi:ne200100]<0>(v36, "RecipientsHiddenPeople");
    std::string::basic_string[abi:ne200100]<0>(v37, "Reference");
    std::string::basic_string[abi:ne200100]<0>(v38, "ReferenceControl");
    std::string::basic_string[abi:ne200100]<0>(v39, "ReferenceDateTimeRangeTrigger");
    std::string::basic_string[abi:ne200100]<0>(v40, "ReferenceDurationTrigger");
    std::string::basic_string[abi:ne200100]<0>(v41, "ReferenceMeasurementTrigger");
    std::string::basic_string[abi:ne200100]<0>(v42, "ReferenceNumberTrigger");
    std::string::basic_string[abi:ne200100]<0>(v43, "ReferencePaymentSortKey");
    std::string::basic_string[abi:ne200100]<0>(v44, "ReferencePhotoCollection");
    std::string::basic_string[abi:ne200100]<0>(v45, "ReferencePhotoCollectionFilter");
    std::string::basic_string[abi:ne200100]<0>(v46, "ReferencePhotoFilter");
    std::string::basic_string[abi:ne200100]<0>(v47, "ReferencePhotoMemoryFilter");
    std::string::basic_string[abi:ne200100]<0>(v48, "ReferencePhotoTag");
    std::string::basic_string[abi:ne200100]<0>(v49, "ReferenceProfile");
    std::string::basic_string[abi:ne200100]<0>(v50, "ReferenceSelect");
    std::string::basic_string[abi:ne200100]<0>(v51, "ReferenceSlideshowFilter");
    std::string::basic_string[abi:ne200100]<0>(v52, "ReferenceStringTrigger");
    std::string::basic_string[abi:ne200100]<0>(v53, "ReferenceTarget");
    std::string::basic_string[abi:ne200100]<0>(v54, "ReferenceTargetSelect");
    std::string::basic_string[abi:ne200100]<0>(v55, "ReferenceTrigger");
    std::string::basic_string[abi:ne200100]<0>(v56, "ReferenceVideoFilter");
    std::string::basic_string[abi:ne200100]<0>(v57, "Request");
    std::string::basic_string[abi:ne200100]<0>(v58, "StockSummarise");
    std::string::basic_string[abi:ne200100]<0>(v59, "Summarise");
    std::string::basic_string[abi:ne200100]<0>(v60, "Target");
    std::string::basic_string[abi:ne200100]<0>(v61, "Update");
    memset(&v22, 0, sizeof(v22));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v22, &__p, v62, 0x23uLL);
  }

  OperatorNode = siri::ontology::UsoGraph::createTaskNode();
LABEL_23:
  v16 = OperatorNode;
  if (v26 < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_22295B7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v39 = &v37;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v39);
  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo(&v38);
  _Unwind_Resume(a1);
}

void sub_22295B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  while (1)
  {
    v26 = *(v25 - 1);
    v25 -= 3;
    if (v26 < 0)
    {
      operator delete(*v25);
    }

    if (v25 == &a25)
    {
      JUMPOUT(0x22295B914);
    }
  }
}

void snlp::common::text_uso_graph::UsoGraphTextTreeParser::UsoGraphTextTreeParser(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_2835E90A8;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  operator new();
}

{
  snlp::common::text_uso_graph::UsoGraphTextTreeParser::UsoGraphTextTreeParser(a1, a2, a3, a4);
}

void sub_22295BA3C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v1 + 112);
  v3 = *(v1 + 88);
  if (v3)
  {
    *(v1 + 96) = v3;
    operator delete(v3);
  }

  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v4)
  {
    v5 = MEMORY[0x223DC42A0]();
    MEMORY[0x223DC4D00](v5, 0x10A0C403D23BABBLL);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::common::text_uso_graph::UsoGraphTextTreeParser::releaseGraph@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *(this + 40) = 0;
  *a2 = v2;
  return this;
}

void nlv4_inference_orchestrator::span_matching::TagBucketList::addTag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(a3 + 76);
  if (v4 > v3 || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3) < v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v38, v4);
    v25 = std::string::insert(&v38, 0, "Token indices out of range: [");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v39, ", ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v37, v3);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v37;
    }

    else
    {
      v29 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v40, v29, size);
    v32 = *&v31->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&__p, ")");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v41);
    exception->__vftable = &unk_2835E9238;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2))
  {
    v8 = *(a1 + 16) + 24 * v4;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v36 = a3;
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    if (v9 >= v10)
    {
      v12 = (v9 - *v8) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v10 - *v8;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      v43 = v8;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v15);
      }

      v16 = 32 * v12;
      v17 = *&__p.__r_.__value_.__l.__data_;
      *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v16 = v17;
      memset(&__p, 0, sizeof(__p));
      *(v16 + 24) = v36;
      v18 = 32 * v12 + 32;
      v19 = *(v8 + 8) - *v8;
      v20 = 32 * v12 - v19;
      memcpy((v16 - v19), *v8, v19);
      v21 = *v8;
      *v8 = v20;
      v41.__r_.__value_.__l.__size_ = v21;
      *(v8 + 8) = v18;
      v41.__r_.__value_.__r.__words[2] = v21;
      v22 = *(v8 + 16);
      *(v8 + 16) = 0;
      v42 = v22;
      v41.__r_.__value_.__r.__words[0] = v21;
      std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v41);
      v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(v8 + 8) = v18;
      if (v23 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v11 = *&__p.__r_.__value_.__l.__data_;
      *(v9 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v9 = v11;
      *(v9 + 24) = v36;
      *(v8 + 8) = v9 + 32;
    }
  }

  else if (v4 != v3)
  {
    if (*a1 == 1)
    {

      nlv4_inference_orchestrator::span_matching::TagBucketList::addBILOUTags(a1, a2, v4, v3, a3);
    }

    else
    {
      if (*a1)
      {
        __cxa_allocate_exception(0x10uLL);
        operator new();
      }

      nlv4_inference_orchestrator::span_matching::TagBucketList::addBIOTags(a1, a2, v4, v3, a3);
    }
  }
}

void sub_22295BF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
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
    if ((v41 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v40);
  goto LABEL_16;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void nlv4_inference_orchestrator::span_matching::TagBucketList::addBIOTags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v64[2] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 16);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v58, (a1 + 80), (a1 + 200));
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

  v13 = std::string::append(&v58, v11, v12);
  v14 = v9 + 24 * a3;
  v15 = v13->__r_.__value_.__r.__words[0];
  v64[0] = v13->__r_.__value_.__l.__size_;
  *(v64 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v17 = *(v14 + 8);
  v18 = *(v14 + 16);
  if (v17 >= v18)
  {
    v21 = (v17 - *v14) >> 5;
    v22 = v21 + 1;
    if ((v21 + 1) >> 59)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v23 = v18 - *v14;
    if (v23 >> 4 > v22)
    {
      v22 = v23 >> 4;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFE0)
    {
      v24 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    v63 = v14;
    if (v24)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v24);
    }

    v25 = 32 * v21;
    v26 = v64[0];
    *v25 = v15;
    *(v25 + 8) = v26;
    *(v25 + 15) = *(v64 + 7);
    *(v25 + 23) = v16;
    *(v25 + 24) = a5;
    v20 = 32 * v21 + 32;
    v27 = *(v14 + 8) - *v14;
    v28 = (32 * v21 - v27);
    memcpy(v28, *v14, v27);
    v29 = *v14;
    *v14 = v28;
    v60 = v29;
    *(v14 + 8) = v20;
    v61 = v29;
    v30 = *(v14 + 16);
    *(v14 + 16) = 0;
    v62 = v30;
    v59 = v29;
    std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v59);
  }

  else
  {
    v19 = v64[0];
    *v17 = v15;
    *(v17 + 8) = v19;
    *(v17 + 15) = *(v64 + 7);
    *(v17 + 23) = v16;
    *(v17 + 24) = a5;
    v20 = v17 + 32;
  }

  *(v14 + 8) = v20;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (a3 + 1 < a4)
  {
    v31 = ~a3 + a4;
    v32 = 24 * a3;
    do
    {
      v33 = *(a1 + 16);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v58, (a1 + 104), (a1 + 200));
      v34 = *(a2 + 23);
      if (v34 >= 0)
      {
        v35 = a2;
      }

      else
      {
        v35 = *a2;
      }

      if (v34 >= 0)
      {
        v36 = *(a2 + 23);
      }

      else
      {
        v36 = *(a2 + 8);
      }

      v37 = std::string::append(&v58, v35, v36);
      v38 = v37->__r_.__value_.__r.__words[0];
      v64[0] = v37->__r_.__value_.__l.__size_;
      *(v64 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
      v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v40 = v33 + v32;
      v41 = *(v33 + v32 + 32);
      v42 = *(v33 + v32 + 40);
      if (v41 >= v42)
      {
        v45 = (v33 + v32 + 24);
        v46 = (v41 - *v45) >> 5;
        v47 = v46 + 1;
        if ((v46 + 1) >> 59)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v48 = v42 - *v45;
        if (v48 >> 4 > v47)
        {
          v47 = v48 >> 4;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFE0)
        {
          v49 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        v63 = v45;
        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v49);
        }

        v50 = 32 * v46;
        v51 = v64[0];
        *v50 = v38;
        *(v50 + 8) = v51;
        *(v50 + 15) = *(v64 + 7);
        *(v50 + 23) = v39;
        v64[0] = 0;
        *(v64 + 7) = 0;
        *(v50 + 24) = a5;
        v44 = 32 * v46 + 32;
        v52 = *(v40 + 32) - *v45;
        v53 = (v50 - v52);
        memcpy((v50 - v52), *v45, v52);
        v54 = *v45;
        *v45 = v53;
        v60 = v54;
        *(v40 + 32) = v44;
        v61 = v54;
        v55 = *(v40 + 40);
        *(v40 + 40) = 0;
        v62 = v55;
        v59 = v54;
        std::__split_buffer<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>::~__split_buffer(&v59);
      }

      else
      {
        v43 = v64[0];
        *v41 = v38;
        *(v41 + 8) = v43;
        *(v41 + 15) = *(v64 + 7);
        *(v41 + 23) = v39;
        *(v41 + 24) = a5;
        v44 = v41 + 32;
      }

      *(v40 + 32) = v44;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v32 += 24;
      --v31;
    }

    while (v31);
  }

  v56 = *MEMORY[0x277D85DE8];
}