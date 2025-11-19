int *google::protobuf::RepeatedField<BOOL>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<BOOL>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  return result;
}

int *google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *result, char *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  v4 = *result;
  *result = v4 + 1;
  *(v3 + v4) = v2;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + v2;
}

_DWORD *google::protobuf::RepeatedField<BOOL>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<BOOL>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B8E1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<BOOL>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + a2);
  *(v3 + a2) = *(v3 + a3);
  *(v3 + a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<BOOL>::end(int *a1)
{
  return *(a1 + 1) + *a1;
}

{
  return *(a1 + 1) + *a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::rbegin(int *a1)
{
  return *(a1 + 1) + *a1;
}

{
  return *(a1 + 1) + *a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 1);
  v5 = *(a1 + 1);
  v6 = v2 - v5;
  v7 = *a1;
  v8 = v5 + v6;
  v9 = v5 + v7 - v4;
  if ((v5 + v7) != v4)
  {
    memmove((v5 + v6), v4, v5 + v7 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = v8 + v9 - v5;
  }

  return v5 + v6;
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, void *a2, void *__src)
{
  v3 = *(a1 + 1);
  v4 = a2 - v3;
  if (a2 == __src)
  {
    v7 = v4;
  }

  else
  {
    v6 = *a1;
    v7 = v4;
    v8 = a2;
    v9 = v3 + v6 - __src;
    if ((v3 + v6) != __src)
    {
      memmove((v3 + v4), __src, v3 + v6 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = v8 + v9 - v3;
    }
  }

  return v3 + v7;
}

void *google::protobuf::RepeatedField<int>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<int>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<int>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<int>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 4 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<int>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<int>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<int>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<int>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<int>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<int>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<int>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 4 * a2;
}

{
  return *(a1 + 8) + 4 * a2;
}

uint64_t google::protobuf::RepeatedField<int>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

void sub_276B8EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B8EB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedField<int>::Add(unsigned int *result, _DWORD *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(*(result + 1) + 4 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<int>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  result = *(a1 + 1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<int>::ExtractSubrange(int *result, int a2, int a3, _DWORD *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 4 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    LODWORD(v8) = *result;
    if (a3 + a2 < *result)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 4 * a3 + 4 * v7) = *(v9 + 4 * v7);
        ++v7;
        v8 = *result;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<int>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<int>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<int>::Reserve();
  }

  return result;
}

int *google::protobuf::RepeatedField<int>::AddAlreadyReserved(int *result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  v4 = *result;
  *result = v4 + 1;
  *(v3 + 4 * v4) = v2;
  return result;
}

uint64_t google::protobuf::RepeatedField<int>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 4 * v2;
}

_DWORD *google::protobuf::RepeatedField<int>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<int>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B8EFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<int>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<int>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedField<int>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<int>::end(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<int>::rbegin(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<int>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<int>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 4 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<int>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (4 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<int>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 2;
  }

  return v5 + 4 * (v6 >> 2);
}

uint64_t google::protobuf::RepeatedField<int>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 4 * v6);
    v8 = (v4 >> 2);
    v9 = v3 + 4 * (v4 >> 2);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 4 * (v4 >> 2)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 2;
    }
  }

  return v3 + 4 * v8;
}

void *google::protobuf::RepeatedField<unsigned int>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<unsigned int>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<unsigned int>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<unsigned int>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 4 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned int>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<unsigned int>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<unsigned int>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<unsigned int>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<unsigned int>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 4 * a2;
}

{
  return *(a1 + 8) + 4 * a2;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

void sub_276B8F8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B8F9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedField<unsigned int>::Add(unsigned int *result, _DWORD *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(*(result + 1) + 4 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  result = *(a1 + 1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<unsigned int>::ExtractSubrange(int *result, int a2, int a3, _DWORD *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 4 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    LODWORD(v8) = *result;
    if (a3 + a2 < *result)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 4 * a3 + 4 * v7) = *(v9 + 4 * v7);
        ++v7;
        v8 = *result;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned int>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned int>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned int>::AddAlreadyReserved(int *result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  v4 = *result;
  *result = v4 + 1;
  *(v3 + 4 * v4) = v2;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 4 * v2;
}

_DWORD *google::protobuf::RepeatedField<unsigned int>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<unsigned int>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B8FE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<unsigned int>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::end(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::rbegin(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 4 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<unsigned int>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (4 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned int>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 2;
  }

  return v5 + 4 * (v6 >> 2);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 4 * v6);
    v8 = (v4 >> 2);
    v9 = v3 + 4 * (v4 >> 2);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 4 * (v4 >> 2)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 2;
    }
  }

  return v3 + 4 * v8;
}

void *google::protobuf::RepeatedField<long long>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<long long>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<long long>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<long long>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<long long>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<long long>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 8 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<long long>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<long long>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<long long>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<long long>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<long long>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<long long>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<long long>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<long long>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 8 * a2;
}

{
  return *(a1 + 8) + 8 * a2;
}

uint64_t google::protobuf::RepeatedField<long long>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

void sub_276B90734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B90810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedField<long long>::Add(unsigned int *result, void *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  *(*(result + 1) + 8 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  result = *(a1 + 1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<long long>::ExtractSubrange(int *result, int a2, int a3, void *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 8 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    v8 = *result;
    if (a3 + a2 < v8)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 8 * a3 + 8 * v7) = *(v9 + 8 * v7);
        ++v7;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<long long>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<long long>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  return result;
}

int *google::protobuf::RepeatedField<long long>::AddAlreadyReserved(int *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  v4 = *result;
  *result = v4 + 1;
  *(v3 + 8 * v4) = v2;
  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 8 * v2;
}

_DWORD *google::protobuf::RepeatedField<long long>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<long long>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<long long>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<long long>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B90C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<long long>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<long long>::end(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<long long>::rbegin(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<long long>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<long long>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 8 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<long long>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (8 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<long long>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 3;
  }

  return v5 + 8 * (v6 >> 3);
}

uint64_t google::protobuf::RepeatedField<long long>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 8 * v6);
    v8 = (v4 >> 3);
    v9 = v3 + 8 * (v4 >> 3);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 8 * (v4 >> 3)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 3;
    }
  }

  return v3 + 8 * v8;
}

void *google::protobuf::RepeatedField<unsigned long long>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<unsigned long long>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<unsigned long long>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<unsigned long long>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 8 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned long long>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<unsigned long long>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<unsigned long long>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<unsigned long long>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<unsigned long long>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 8 * a2;
}

{
  return *(a1 + 8) + 8 * a2;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

void sub_276B91554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B91630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedField<unsigned long long>::Add(unsigned int *result, void *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(*(result + 1) + 8 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  result = *(a1 + 1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<unsigned long long>::ExtractSubrange(int *result, int a2, int a3, void *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 8 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    v8 = *result;
    if (a3 + a2 < v8)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 8 * a3 + 8 * v7) = *(v9 + 8 * v7);
        ++v7;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned long long>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned long long>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  return result;
}

int *google::protobuf::RepeatedField<unsigned long long>::AddAlreadyReserved(int *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  v4 = *result;
  *result = v4 + 1;
  *(v3 + 8 * v4) = v2;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 8 * v2;
}

_DWORD *google::protobuf::RepeatedField<unsigned long long>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<unsigned long long>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B91A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<unsigned long long>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::end(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::rbegin(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 8 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (8 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 3;
  }

  return v5 + 8 * (v6 >> 3);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 8 * v6);
    v8 = (v4 >> 3);
    v9 = v3 + 8 * (v4 >> 3);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 8 * (v4 >> 3)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 3;
    }
  }

  return v3 + 8 * v8;
}

void *google::protobuf::RepeatedField<float>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<float>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<float>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<float>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<float>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 4 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<float>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<float>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<float>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<float>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<float>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<float>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<float>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<float>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<float>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<float>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 4 * a2;
}

{
  return *(a1 + 8) + 4 * a2;
}

uint64_t google::protobuf::RepeatedField<float>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 4 * a2;
}

void sub_276B92374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B92450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::RepeatedField<float>::Set(uint64_t a1, int a2, float *a3)
{
  result = *a3;
  *(*(a1 + 8) + 4 * a2) = *a3;
  return result;
}

unsigned int *google::protobuf::RepeatedField<float>::Add(unsigned int *result, _DWORD *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  *(*(result + 1) + 4 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<float>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  result = *(a1 + 1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<float>::ExtractSubrange(int *result, int a2, int a3, _DWORD *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 4 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    v8 = *result;
    if (a3 + a2 < v8)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 4 * a3 + 4 * v7) = *(v9 + 4 * v7);
        ++v7;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<float>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<float>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<float>::Reserve();
  }

  return result;
}

float google::protobuf::RepeatedField<float>::AddAlreadyReserved(int *a1, float *a2)
{
  result = *a2;
  v3 = *(a1 + 1);
  v4 = *a1;
  *a1 = v4 + 1;
  *(v3 + 4 * v4) = result;
  return result;
}

uint64_t google::protobuf::RepeatedField<float>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 4 * v2;
}

_DWORD *google::protobuf::RepeatedField<float>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<float>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B928EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<float>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

float google::protobuf::RepeatedField<float>::SwapElements(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  result = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = result;
  return result;
}

uint64_t google::protobuf::RepeatedField<float>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<float>::end(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<float>::rbegin(int *a1)
{
  return *(a1 + 1) + 4 * *a1;
}

{
  return *(a1 + 1) + 4 * *a1;
}

uint64_t google::protobuf::RepeatedField<float>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<float>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 4 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<float>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (4 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<float>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 2;
  }

  return v5 + 4 * (v6 >> 2);
}

uint64_t google::protobuf::RepeatedField<float>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 4 * v6);
    v8 = (v4 >> 2);
    v9 = v3 + 4 * (v4 >> 2);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 4 * (v4 >> 2)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 2;
    }
  }

  return v3 + 4 * v8;
}

void *google::protobuf::RepeatedField<double>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<double>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<double>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<double>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<double>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<double>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    v9 = sub_2769B0A98(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<double>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) + 8 * v2;
  *a1 = v2 + a2;
  return v3;
}

uint64_t google::protobuf::RepeatedField<double>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<double>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

_DWORD *google::protobuf::RepeatedField<double>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<double>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<double>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<double>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<double>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<double>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<double>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<double>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<double>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + 8 * a2;
}

{
  return *(a1 + 8) + 8 * a2;
}

uint64_t google::protobuf::RepeatedField<double>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + 8 * a2;
}

void sub_276B931D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B932B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double google::protobuf::RepeatedField<double>::Set(uint64_t a1, int a2, double *a3)
{
  result = *a3;
  *(*(a1 + 8) + 8 * a2) = *a3;
  return result;
}

unsigned int *google::protobuf::RepeatedField<double>::Add(unsigned int *result, void *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  *(*(result + 1) + 8 * v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<double>::Add(unsigned int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  result = *(a1 + 1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *google::protobuf::RepeatedField<double>::ExtractSubrange(int *result, int a2, int a3, void *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + 8 * a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    v8 = *result;
    if (a3 + a2 < v8)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - 8 * a3 + 8 * v7) = *(v9 + 8 * v7);
        ++v7;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}

int *google::protobuf::RepeatedField<double>::Truncate(int *result, int a2)
{
  if (*result >= 1)
  {
    *result = a2;
  }

  return result;
}

int *google::protobuf::RepeatedField<double>::MergeFrom(int *result, _DWORD *a2)
{
  if (*a2)
  {
    v2 = *result;
    google::protobuf::RepeatedField<double>::Reserve();
  }

  return result;
}

double google::protobuf::RepeatedField<double>::AddAlreadyReserved(int *a1, double *a2)
{
  result = *a2;
  v3 = *(a1 + 1);
  v4 = *a1;
  *a1 = v4 + 1;
  *(v3 + 8 * v4) = result;
  return result;
}

uint64_t google::protobuf::RepeatedField<double>::AddAlreadyReserved(int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  *a1 = v2 + 1;
  return v1 + 8 * v2;
}

_DWORD *google::protobuf::RepeatedField<double>::Resize(_DWORD *result, int a2)
{
  if (*result < a2)
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  *result = a2;
  return result;
}

void google::protobuf::RepeatedField<double>::Swap(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 1);
    if (*(a1 + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = *(a2 + 8);
    if (*(a2 + 4))
    {
      v4 = *(v4 - 1);
    }

    if (v3 == v4)
    {
      v8 = *a1;
      v9 = a1[1];
      *a1 = *a2;
      *a2 = v8;
      *(a2 + 8) = v9;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = v4;
      if (*a1)
      {
        google::protobuf::RepeatedField<double>::Reserve();
      }

      *a1 = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<double>::Reserve();
      }

      if (__dst == a2)
      {
        LODWORD(v7) = HIDWORD(__dst[0]);
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a2 = *__dst;
        __dst[0] = v5;
        __dst[1] = v6;
        v7 = HIDWORD(v5);
      }

      if (v7 >= 1 && !*(__dst[1] - 1))
      {
        operator delete(__dst[1] - 8);
      }
    }
  }
}

void sub_276B93714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a10 >= 1)
  {
    sub_276BDA7BC((v10 | 8));
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::RepeatedField<double>::UnsafeArenaSwap(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v2 = a1->n128_u64[0];
    v3 = a1->n128_u64[1];
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v2;
    a2->n128_u64[1] = v3;
  }

  return result;
}

double google::protobuf::RepeatedField<double>::SwapElements(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  result = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = result;
  return result;
}

uint64_t google::protobuf::RepeatedField<double>::begin(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<double>::end(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<double>::rbegin(int *a1)
{
  return *(a1 + 1) + 8 * *a1;
}

{
  return *(a1 + 1) + 8 * *a1;
}

uint64_t google::protobuf::RepeatedField<double>::rend(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return *(a1 + 8);
}

uint64_t google::protobuf::RepeatedField<double>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 8 * v1 + 8;
  }
}

uint64_t google::protobuf::RepeatedField<double>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (8 * v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<double>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    LODWORD(v7) = *a1;
    v5 = *(a1 + 1);
  }

  if (v7 >= 1)
  {
    *a1 = (v9 + v10 - v5) >> 3;
  }

  return v5 + 8 * (v6 >> 3);
}

uint64_t google::protobuf::RepeatedField<double>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v3 = *(a1 + 1);
  v4 = &a2[-v3];
  if (a2 == __src)
  {
    v8 = (v4 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v3 + 8 * v6);
    v8 = (v4 >> 3);
    v9 = v3 + 8 * (v4 >> 3);
    v10 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v3 + 8 * (v4 >> 3)), __src, v7 - __src);
      LODWORD(v6) = *a1;
      v3 = *(a1 + 1);
    }

    if (v6 >= 1)
    {
      *a1 = (v9 + v10 - v3) >> 3;
    }
  }

  return v3 + 8 * v8;
}

void *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

std::string *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(std::string *this, uint64_t a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    sub_276B4A878(this, v5, (v4 + 8), v3, *this->__r_.__value_.__r.__words[2] - LODWORD(this->__r_.__value_.__r.__words[1]));
    v6 = LODWORD(this->__r_.__value_.__r.__words[1]) + v3;
    LODWORD(this->__r_.__value_.__r.__words[1]) = v6;
    v7 = this->__r_.__value_.__r.__words[2];
    if (*v7 < v6)
    {
      *v7 = v6;
    }
  }

  return this;
}

{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    sub_276B4A878(this, v5, (v4 + 8), v3, *this->__r_.__value_.__r.__words[2] - LODWORD(this->__r_.__value_.__r.__words[1]));
    v6 = LODWORD(this->__r_.__value_.__r.__words[1]) + v3;
    LODWORD(this->__r_.__value_.__r.__words[1]) = v6;
    v7 = this->__r_.__value_.__r.__words[2];
    if (*v7 < v6)
    {
      *v7 = v6;
    }
  }

  return this;
}

std::string *google::protobuf::RepeatedPtrField<std::string>::MergeFrom(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, *(a2 + 8));
    result = sub_276B4A878(v3, v5, (v4 + 8), v2, *v3->__r_.__value_.__r.__words[2] - LODWORD(v3->__r_.__value_.__r.__words[1]));
    v6 = LODWORD(v3->__r_.__value_.__r.__words[1]) + v2;
    LODWORD(v3->__r_.__value_.__r.__words[1]) = v6;
    v7 = v3->__r_.__value_.__r.__words[2];
    if (*v7 < v6)
    {
      *v7 = v6;
    }
  }

  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(void *a1)
{
  sub_276B4A5CC(a1);
  return a1;
}

{
  sub_276B4A5CC(a1);
  return a1;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v4);
      sub_276B4A878(a1, v6, (v5 + 8), v4, **(a1 + 16) - *(a1 + 8));
      v7 = *(a1 + 8) + v4;
      *(a1 + 8) = v7;
      v8 = *(a1 + 16);
      if (*v8 < v7)
      {
        *v8 = v7;
      }
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::CopyFrom(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = google::protobuf::RepeatedPtrField<std::string>::Clear(result);
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v3, v4);
      result = sub_276B4A878(v3, v6, (v5 + 8), v4, **(v3 + 16) - *(v3 + 8));
      v7 = *(v3 + 8) + v4;
      *(v3 + 8) = v7;
      v8 = *(v3 + 16);
      if (*v8 < v7)
      {
        *v8 = v7;
      }
    }
  }

  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2)
  {
    if (a2 != a1)
    {
      google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = *(a2 + 16);
        v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v4);
        sub_276B4A878(a1, v6, (v5 + 8), v4, *a1[2] - *(a1 + 2));
        v7 = *(a1 + 2) + v4;
        *(a1 + 2) = v7;
        v8 = a1[2];
        if (*v8 < v7)
        {
          *v8 = v7;
        }
      }
    }
  }

  else
  {
    *(a1 + 1) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2)
  {
    if (a2 != a1)
    {
      google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = *(a2 + 16);
        v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v4);
        sub_276B4A878(a1, v6, (v5 + 8), v4, *a1[2] - *(a1 + 2));
        v7 = *(a1 + 2) + v4;
        *(a1 + 2) = v7;
        v8 = a1[2];
        if (*v8 < v7)
        {
          *v8 = v7;
        }
      }
    }
  }

  else
  {
    *(a1 + 1) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return a1;
}

__n128 google::protobuf::RepeatedPtrField<std::string>::InternalSwap(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1 == *a2)
    {
      v9 = a1[1];
      v10 = a1[2];
      *(a1 + 1) = *(a2 + 8);
      *(a2 + 8) = v9;
      *(a2 + 16) = v10;
    }

    else
    {
      google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = *(a2 + 16);
        v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v4);
        sub_276B4A878(a1, v6, (v5 + 8), v4, *a1[2] - *(a1 + 2));
        v7 = *(a1 + 2) + v4;
        *(a1 + 2) = v7;
        v8 = a1[2];
        if (*v8 < v7)
        {
          *v8 = v7;
        }
      }
    }
  }

  return a1;
}

void *google::protobuf::RepeatedPtrField<std::string>::Add(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 3);
LABEL_6:
    v6 = __OFSUB__(v4, v3);
    v7 = v4 - v3;
    if (v7 < 0 == v6)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v7 + 1);
      v2 = *(this + 2);
    }

    goto LABEL_8;
  }

  v3 = *(this + 2);
  v4 = *v2;
  if (v3 < *v2)
  {
    *(this + 2) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  if (v4 == *(this + 3))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v2;
  result = sub_2769C64F4(*this);
  v8 = *(this + 2);
  v9 = *(this + 2) + 8 * v8;
  *(this + 2) = v8 + 1;
  *(v9 + 8) = result;
  return result;
}

void google::protobuf::RepeatedPtrField<std::string>::Add(google::protobuf::internal::RepeatedPtrFieldBase *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 3);
    goto LABEL_8;
  }

  v5 = *(this + 2);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(this + 3))
    {
LABEL_10:
      ++*v4;
      sub_276B94E74(*this, a2);
      v11 = *(this + 2);
      v12 = *(this + 2) + 8 * v11;
      *(this + 2) = v11 + 1;
      *(v12 + 8) = v13;
      return;
    }

LABEL_8:
    v9 = __OFSUB__(v6, v5);
    v10 = v6 - v5;
    if (v10 < 0 == v9)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v10 + 1);
      v4 = *(this + 2);
    }

    goto LABEL_10;
  }

  *(this + 2) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v8 = *a2;
  *(v7 + 16) = a2[1].n128_u64[0];
  *v7 = v8;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::operator[](uint64_t a1, int a2)
{
  return *(*(a1 + 16) + 8 * a2 + 8);
}

{
  return *(*(a1 + 16) + 8 * a2 + 8);
}

uint64_t sub_276B940CC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1713);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1714);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_276B9418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B941B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1720);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1721);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_276B94270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::RemoveLast(uint64_t result)
{
  v1 = *(result + 8) - 1;
  v2 = *(result + 16) + 8 * v1;
  *(result + 8) = v1;
  v3 = *(v2 + 8);
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::DeleteSubrange(void *this, int a2, int a3)
{
  if (a3 >= 1)
  {
    v6 = this;
    v7 = a3;
    v8 = 8 * a2 + 8;
    do
    {
      v9 = *(v6[2] + v8);
      if (v9)
      {
        v10 = *v6 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        MEMORY[0x277C9F670](v9, 0x1012C40EC159624);
      }

      v8 += 8;
      --v7;
    }

    while (v7);

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v6, a2, a3);
  }

  return this;
}

void *google::protobuf::RepeatedPtrField<std::string>::ExtractSubrange(void *this, int a2, int a3, void *a4)
{
  if (a3 >= 1)
  {
    v5 = a4;
    if (a4)
    {
      v6 = a3;
      v7 = 8 * a2;
      if (*this)
      {
        v8 = *(this[2] + v7 + 8);
        operator new();
      }

      v9 = v7 + 8;
      do
      {
        *v5++ = *(this[2] + v9);
        v9 += 8;
        --v6;
      }

      while (v6);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }

  return this;
}

unsigned int *google::protobuf::RepeatedPtrField<std::string>::Reserve(unsigned int *result, int a2)
{
  v2 = result[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, v4);
  }

  return result;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::mutable_data(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::data(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 google::protobuf::RepeatedPtrField<std::string>::Swap(uint64_t a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    if (*a2 == *a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      result = *(a2 + 1);
      *(a1 + 8) = result;
      a2[1] = v3;
      a2[2] = v4;
    }

    else
    {
      sub_276B837D8(a1, a2);
    }
  }

  return result;
}

__n128 google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaSwap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a2 + 8) = v2;
    *(a2 + 16) = v3;
  }

  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 16) + 8;
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::begin(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::cbegin(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::end(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::cend(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::rbegin(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::rend(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::pointer_begin(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::pointer_end(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  return v1;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  return v1;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ReleaseLast(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  v3 = *v1 - 1;
  *v1 = v3;
  v4 = v1 + 2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v5 - 1;
  v6 = *&v4[2 * v5 - 2];
  if (v5 < v2)
  {
    *&v4[2 * v5 - 2] = *&v4[2 * v3];
  }

  if (*a1)
  {
    operator new();
  }

  return v6;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaReleaseLast(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  v3 = *v1 - 1;
  *v1 = v3;
  v4 = v1 + 2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v5 - 1;
  result = *&v4[2 * v5 - 2];
  if (v5 < v2)
  {
    *&v4[2 * v5 - 2] = *&v4[2 * v3];
  }

  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::ExtractSubrangeInternal(void *this, int a2, int a3, void *a4)
{
  if (a3 >= 1)
  {
    v5 = a4;
    if (a4)
    {
      v6 = a3;
      v7 = 8 * a2;
      if (*this)
      {
        v8 = *(this[2] + v7 + 8);
        operator new();
      }

      v9 = v7 + 8;
      do
      {
        *v5++ = *(this[2] + v9);
        v9 += 8;
        --v6;
      }

      while (v6);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }

  return this;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaExtractSubrange(uint64_t this, int a2, int a3, void *a4)
{
  if (a3 >= 1)
  {
    if (a4)
    {
      v4 = a3;
      v5 = 8 * a2 + 8;
      do
      {
        *a4++ = *(*(this + 16) + v5);
        v5 += 8;
        --v4;
      }

      while (v4);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }

  return this;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = a3 + a2;
    LODWORD(v5) = *v3;
    if (a3 + a2 < *v3)
    {
      v6 = v4;
      v7 = 8 * v4 - 8 * a3 + 8;
      do
      {
        *(v3 + v7) = *&v3[2 * v6++ + 2];
        v3 = *(this + 16);
        v5 = *v3;
        v7 += 8;
      }

      while (v6 < v5);
    }

    *(this + 8) -= a3;
    *v3 = v5 - a3;
  }

  return this;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ClearedCount(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*v1 - *(a1 + 8));
  }

  else
  {
    return 0;
  }
}

unsigned int *google::protobuf::RepeatedPtrField<std::string>::AddCleared(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != this[3])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = this[3];
  }

  v6 = this[2];
  if (v6 <= v5)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v5 - v6 + 1);
    v4 = *(v3 + 2);
  }

LABEL_7:
  v7 = *v4;
  *v4 = v7 + 1;
  *&v4[2 * v7 + 2] = a2;
  return this;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ReleaseCleared(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1 - 1;
  *v1 = v2;
  return *&v1[2 * v2 + 2];
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::erase(google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a2)
{
  v2 = *(this + 2);
  v3 = v2 + 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = a2 - v3;
  v5 = v4 >> 3;
  v6 = ((v4 + 8) >> 3) - (v4 >> 3);
  v7 = v4 << 29;
  if (v6 >= 1)
  {
    v9 = 8 * (((v4 + 8) >> 3) - (v4 >> 3));
    v10 = 8 * (v4 >> 3) + 8;
    do
    {
      v11 = *(*(this + 2) + v10);
      if (v11)
      {
        v12 = *this == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        if (*(v11 + 23) < 0)
        {
          operator delete(*v11);
        }

        MEMORY[0x277C9F670](v11, 0x1012C40EC159624);
      }

      v10 += 8;
      v9 -= 8;
    }

    while (v9);
    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, v5, v6);
    v2 = *(this + 2);
  }

  if (v2)
  {
    v13 = v2 + 8;
  }

  else
  {
    v13 = 0;
  }

  return v13 + (v7 >> 29);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::erase(google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 2);
  v4 = v3 + 8;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = (a2 - v4) >> 3;
  v6 = ((a3 - v4) >> 3) - v5;
  v7 = (a2 - v4) << 29;
  if (v6 >= 1)
  {
    v9 = 8 * (((a3 - v4) >> 3) - v5);
    v10 = 8 * ((a2 - v4) >> 3) + 8;
    do
    {
      v11 = *(*(this + 2) + v10);
      if (v11)
      {
        v12 = *this == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        if (*(v11 + 23) < 0)
        {
          operator delete(*v11);
        }

        MEMORY[0x277C9F670](v11, 0x1012C40EC159624);
      }

      v10 += 8;
      v9 -= 8;
    }

    while (v9);
    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, v5, v6);
    v3 = *(this + 2);
  }

  if (v3)
  {
    v13 = v3 + 8;
  }

  else
  {
    v13 = 0;
  }

  return v13 + (v7 >> 29);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ExtractSubrangeInternal(uint64_t this, int a2, int a3, void *a4)
{
  if (a3 >= 1)
  {
    if (a4)
    {
      v4 = a3;
      v5 = 8 * a2 + 8;
      do
      {
        *a4++ = *(*(this + 16) + v5);
        v5 += 8;
        --v4;
      }

      while (v4);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = sub_2769B0A98(*this, v10 + 8);
    }

    else
    {
      v11 = operator new(v10 + 8);
    }

    *(this + 2) = v11;
    *(this + 3) = v9;
    if (v5 && (v12 = *v5, v12 >= 1))
    {
      memcpy(v11 + 2, v5 + 2, 8 * v12);
      v11 = *(this + 2);
      *v11 = *v5;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v11 = 0;
      if (!v7)
      {
LABEL_15:
        operator delete(v5);
        v11 = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = v11;
  }

  return &v5[2 * v2 + 2];
}

void *google::protobuf::internal::RepeatedPtrFieldBase::AddWeak(google::protobuf::internal::RepeatedPtrFieldBase *this, const google::protobuf::MessageLite *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 3);
LABEL_6:
    if (v5 <= v6)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v6 - v5 + 1);
      v4 = *(this + 2);
    }

    goto LABEL_8;
  }

  v5 = *(this + 2);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(this + 2) = v5 + 1;
    return *&v4[2 * v5 + 2];
  }

  if (v6 == *(this + 3))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v4;
  if (a2)
  {
    result = (*(*a2 + 32))(a2, *this);
  }

  else
  {
    result = sub_276B8B3C0(*this);
  }

  v8 = *(this + 2);
  v9 = *(this + 2) + 8 * v8;
  *(this + 2) = v8 + 1;
  *(v9 + 8) = result;
  return result;
}

__n128 sub_276B94E74(google::protobuf::Arena *a1, __n128 *a2)
{
  if (!a1)
  {
    operator new();
  }

  v3 = sub_2769C6538(a1, 0);
  result = *a2;
  v3[1].n128_u64[0] = a2[1].n128_u64[0];
  *v3 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t google::protobuf::util::MatchIndicesPostProcessorForSmartList(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8) - *result;
  if (v3)
  {
    v4 = v3 >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = 0xFFFFFFFFLL;
    do
    {
      v6 = *v2;
      if ((v6 & 0x80000000) == 0)
      {
        if ((v5 & 0x80000000) != 0 || v6 > v5)
        {
          goto LABEL_11;
        }

        if (v6 >= (a2[1] - *a2) >> 2)
        {
          sub_276B9DA94();
        }

        *(*a2 + 4 * v6) = -1;
        *v2 = -1;
      }

      v6 = v5;
LABEL_11:
      ++v2;
      v5 = v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *google::protobuf::util::MessageDifferencer::MapEntryKeyComparator::MapEntryKeyComparator(void *result, uint64_t a2)
{
  *result = &unk_2885C8978;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2885C8978;
  result[1] = a2;
  return result;
}

void *google::protobuf::util::MessageDifferencer::MapKeyComparator::MapKeyComparator(void *this)
{
  *this = &unk_2885C89F8;
  return this;
}

{
  *this = &unk_2885C89F8;
  return this;
}

std::string::size_type google::protobuf::util::MessageDifferencer::MapEntryKeyComparator::IsMatch(uint64_t a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t *a4)
{
  v8 = (*(*a2 + 152))(a2);
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v8, 1);
  v10 = *(a1 + 8);
  if (*(v10 + 76) == 1)
  {
    (*(*a2 + 152))(a2);
    if (!google::protobuf::Reflection::HasField(v11, a2, FieldByNumber))
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      sub_276B9D974(&__p, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
      goto LABEL_7;
    }

    v10 = *(a1 + 8);
  }

  IsIgnored = google::protobuf::util::MessageDifferencer::IsIgnored(v10, a2, a3, FieldByNumber, a4);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_276B9D974(&__p, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  if ((IsIgnored & 1) == 0)
  {
    v13 = google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(*(a1 + 8), a2, a3, FieldByNumber, 0xFFFFFFFFLL, 0xFFFFFFFFLL, &__p);
    goto LABEL_8;
  }

LABEL_7:
  v13 = google::protobuf::util::MessageDifferencer::Compare(*(a1 + 8), a2, a3, &__p);
LABEL_8:
  v14 = v13;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_276B95130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::MessageDifferencer::IsIgnored(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = a1[29];
  if (v9)
  {
    v10 = a1 + 29;
    do
    {
      v11 = v9[4];
      v12 = v11 >= a4;
      v13 = v11 < a4;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
    if (v10 != a1 + 29 && v10[4] <= a4)
    {
      return 1;
    }
  }

  v14 = a1[22];
  v15 = a1[23];
  if (v14 == v15)
  {
    return 0;
  }

  v16 = v14 + 8;
  do
  {
    result = (*(**(v16 - 8) + 16))(*(v16 - 8), a2, a3, a4, a5);
    if (result)
    {
      break;
    }

    v18 = v16 == v15;
    v16 += 8;
  }

  while (!v18);
  return result;
}

std::string::size_type google::protobuf::util::MessageDifferencer::Compare(google::protobuf::util::MessageDifferencer *a1, google::protobuf::internal *a2, google::protobuf::internal *a3, uint64_t *a4)
{
  v8 = (*(*a2 + 152))(a2);
  v9 = (*(*a3 + 152))(a3);
  if (v8 != v9)
  {
    v10 = v9;
    google::protobuf::internal::LogMessage::LogMessage(v32, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 554);
    v13 = google::protobuf::internal::LogMessage::operator<<(v32, "Comparison between two messages with different ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, "descriptors. ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, *(v8 + 8));
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, " vs ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, *(v10 + 8));
    google::protobuf::internal::LogFinisher::operator=(__p, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v32[0].__r_.__value_.__l.__data_);
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v10 = *(v8 + 8);
  v11 = strlen("google.protobuf.Any");
  v12 = *(v10 + 23);
  if (v12 < 0)
  {
    if (v11 != *(v10 + 8))
    {
      goto LABEL_21;
    }

    if (v11 == -1)
    {
      sub_276B28120();
    }

    v10 = *v10;
LABEL_9:
    if (memcmp(v10, "google.protobuf.Any", v11))
    {
      goto LABEL_21;
    }

    v32[0].__r_.__value_.__r.__words[0] = 0;
    __p[0] = 0;
    if (google::protobuf::util::MessageDifferencer::UnpackAny(a1, a2, v32))
    {
      v18 = google::protobuf::util::MessageDifferencer::UnpackAny(a1, a3, __p);
      if (v18)
      {
        v10 = v32[0].__r_.__value_.__r.__words[0];
        v19 = (*(*v32[0].__r_.__value_.__l.__data_ + 152))(v32[0].__r_.__value_.__r.__words[0]);
        v20 = __p[0];
        if (v19 == (*(*__p[0] + 152))(__p[0]))
        {
          LOBYTE(v10) = google::protobuf::util::MessageDifferencer::Compare(a1, v10, v20, a4);
        }

        else
        {
          LOBYTE(v10) = 0;
        }

        goto LABEL_17;
      }

      v20 = __p[0];
      if (__p[0])
      {
LABEL_17:
        v21 = v18 ^ 1;
        (*(*v20 + 8))(v20);
LABEL_18:
        if (v32[0].__r_.__value_.__r.__words[0])
        {
          (*(*v32[0].__r_.__value_.__l.__data_ + 8))(v32[0].__r_.__value_.__r.__words[0]);
        }

        if (!v21)
        {
          return v10 & 1;
        }

        goto LABEL_21;
      }
    }

    v21 = 1;
    goto LABEL_18;
  }

  if (v11 == v12)
  {
    goto LABEL_9;
  }

LABEL_21:
  (*(*a2 + 152))(a2);
  v23 = v22;
  (*(*a3 + 152))(a3);
  if (*(a1 + 18) == 1 || (v25 = v24, UnknownFields = google::protobuf::Reflection::GetUnknownFields(v23, a2), v27 = google::protobuf::Reflection::GetUnknownFields(v25, a3), (google::protobuf::util::MessageDifferencer::CompareUnknownFields(a1, a2, a3, UnknownFields, v27, a4) & 1) != 0))
  {
    v28 = 1;
  }

  else
  {
    v28 = 0;
    LOBYTE(v10) = 0;
    if (!*a1)
    {
      return v10 & 1;
    }
  }

  google::protobuf::util::MessageDifferencer::RetrieveFields(a1, a2, 1, v32);
  google::protobuf::util::MessageDifferencer::RetrieveFields(a1, a3, 0, __p);
  v29 = google::protobuf::util::MessageDifferencer::CompareRequestedFieldsUsingSettings(a1, a2, a3, v32, __p, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  LOBYTE(v10) = v28 & v29;
  if (v32[0].__r_.__value_.__r.__words[0])
  {
    v32[0].__r_.__value_.__l.__size_ = v32[0].__r_.__value_.__r.__words[0];
    operator delete(v32[0].__r_.__value_.__l.__data_);
  }

  return v10 & 1;
}

void sub_276B955FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    sub_276BD4DB0(__p);
  }

  sub_276BDA7E8(&__p, &a13);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(google::protobuf::util::MessageDifferencer *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  v33 = a7;
  if (*(a1 + 8))
  {
    v14 = *(a1 + 8);
  }

  else
  {
    v14 = (a1 + 8);
  }

  v15 = (*(*v14 + 16))(v14, a2, a3, a4, a5, a6, &v33);
  v16 = *(a4 + 48);
  if (v16)
  {
    v34 = a4;
    v35 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v16, memory_order_acquire) != -1)
    {
      *&v27 = &v35;
      *(&v27 + 1) = &v34;
      v36 = &v27;
      std::__call_once(v16, &v36, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 56)] != 10 || v15 != 2)
  {
    return v15 == 0;
  }

  (*(*a2 + 152))(a2);
  v20 = v19;
  (*(*a3 + 152))(a3);
  v22 = v21;
  if (*(a4 + 60) == 3)
  {
    RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v20, a2, a4, v9);
  }

  else
  {
    RepeatedMessage = google::protobuf::Reflection::GetMessage(v20, a2, a4, 0);
  }

  v24 = RepeatedMessage;
  if (*(a4 + 60) == 3)
  {
    Message = google::protobuf::Reflection::GetRepeatedMessage(v22, a3, a4, v8);
  }

  else
  {
    Message = google::protobuf::Reflection::GetMessage(v22, a3, a4, 0);
  }

  v26 = Message;
  if (!a7)
  {
    return google::protobuf::util::MessageDifferencer::Compare(a1, v24, Message);
  }

  *(&v27 + 1) = 0xFFFFFFFFLL;
  v30 = 0;
  v31 = 0;
  v32 = -1;
  *&v27 = a4;
  v28 = v9;
  v29 = v8;
  sub_276B987FC(a7, &v27);
  result = google::protobuf::util::MessageDifferencer::Compare(a1, v24, v26, a7);
  *(a7 + 8) -= 48;
  return result;
}

std::string::size_type google::protobuf::util::MessageDifferencer::Equals(google::protobuf::util::MessageDifferencer *this, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  google::protobuf::util::MessageDifferencer::MessageDifferencer(v8);
  v5 = google::protobuf::util::MessageDifferencer::Compare(v8, this, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_276B9591C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(va);
  _Unwind_Resume(a1);
}

std::string::size_type google::protobuf::util::MessageDifferencer::Compare(google::protobuf::util::MessageDifferencer *this, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = *(this + 32);
  if (v4)
  {
    google::protobuf::io::StringOutputStream::StringOutputStream(&v8, v4);
    google::protobuf::util::MessageDifferencer::StreamReporter::StreamReporter(v7);
  }

  v5 = google::protobuf::util::MessageDifferencer::Compare(this, a2, a3, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_276B959F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type google::protobuf::util::MessageDifferencer::Equivalent(google::protobuf::util::MessageDifferencer *this, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  google::protobuf::util::MessageDifferencer::MessageDifferencer(v8);
  v9 = 1;
  v5 = google::protobuf::util::MessageDifferencer::Compare(v8, this, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_276B95ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(va);
  _Unwind_Resume(a1);
}

std::string::size_type google::protobuf::util::MessageDifferencer::ApproximatelyEquals(google::protobuf::util::MessageDifferencer *this, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  google::protobuf::util::MessageDifferencer::MessageDifferencer(v8);
  v9 = 1;
  v5 = google::protobuf::util::MessageDifferencer::Compare(v8, this, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_276B95B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(va);
  _Unwind_Resume(a1);
}

std::string::size_type google::protobuf::util::MessageDifferencer::ApproximatelyEquivalent(google::protobuf::util::MessageDifferencer *this, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  google::protobuf::util::MessageDifferencer::MessageDifferencer(v8);
  v10 = 1;
  v9 = 1;
  v5 = google::protobuf::util::MessageDifferencer::Compare(v8, this, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_276B95C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(va);
  _Unwind_Resume(a1);
}

google::protobuf::util::MessageDifferencer *google::protobuf::util::MessageDifferencer::MessageDifferencer(google::protobuf::util::MessageDifferencer *this)
{
  *this = 0;
  google::protobuf::util::DefaultFieldComparator::DefaultFieldComparator(this + 8);
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = this + 96;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 19) = 0;
  *(this + 20) = &unk_2885C8978;
  *(this + 21) = this;
  *(this + 30) = 0;
  *(this + 29) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 11) = 0u;
  *(this + 28) = this + 232;
  *(this + 124) = 256;
  *(this + 250) = 1;
  *(this + 32) = 0;
  *(this + 33) = &unk_2885C8BD8;
  *(this + 34) = google::protobuf::util::MatchIndicesPostProcessorForSmartList;
  *(this + 36) = this + 264;
  *(this + 37) = 0;
  return this;
}

void google::protobuf::util::MessageDifferencer::~MessageDifferencer(google::protobuf::util::MessageDifferencer *this)
{
  v2 = *(this + 14);
  v3 = *(this + 15);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = *(this + 22);
  v5 = *(this + 23);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = *(this + 37);
  *(this + 37) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_276B9DBA0(this + 264);
  sub_276A579A4(this + 224, *(this + 29));
  v7 = *(this + 25);
  if (v7)
  {
    *(this + 26) = v7;
    operator delete(v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    *(this + 23) = v8;
    operator delete(v8);
  }

  sub_276A579A4(this + 136, *(this + 18));
  v9 = *(this + 14);
  if (v9)
  {
    *(this + 15) = v9;
    operator delete(v9);
  }

  sub_276A579A4(this + 88, *(this + 12));
  google::protobuf::util::DefaultFieldComparator::~DefaultFieldComparator((this + 8));
}

void google::protobuf::util::MessageDifferencer::set_field_comparator(google::protobuf::util::MessageDifferencer *this, google::protobuf::util::FieldComparator *a2)
{
  if (!a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 287);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: comparator: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Field comparator can't be NULL.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  *(this + 8) = a2;
}

void sub_276B95EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::util::MessageDifferencer::CheckRepeatedFieldComparisons(char **this, const std::string::value_type **a2, int *a3)
{
  v32 = a2;
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v31, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 319);
    v6 = google::protobuf::internal::LogMessage::operator<<(v31, "CHECK failed: field->is_repeated(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Field must be repeated: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2[1]);
    google::protobuf::internal::LogFinisher::operator=(&v33, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v31[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::util::MessageDifferencer::GetMapKeyComparator(this, a2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v31, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 322);
    v9 = google::protobuf::internal::LogMessage::operator<<(v31, "CHECK failed: key_comparator == NULL: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "Cannot treat this repeated field as both MAP and ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, *a3);
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, " for");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, " comparison.  Field name is: ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, a2[1]);
    google::protobuf::internal::LogFinisher::operator=(&v33, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v31[0].__r_.__value_.__l.__data_);
  }

  v17 = this[12];
  v16 = (this + 12);
  v15 = v17;
  if (v17)
  {
    v18 = v16;
    do
    {
      v19 = *(v15 + 4);
      v20 = v19 >= a2;
      v21 = v19 < a2;
      if (v20)
      {
        v18 = v15;
      }

      v15 = *&v15[8 * v21];
    }

    while (v15);
    if (v18 != v16 && *(v18 + 4) <= a2)
    {
      v31[0].__r_.__value_.__r.__words[0] = &v32;
      if (*(sub_276B9DC20((v16 - 8), &v32) + 10) != *a3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v31, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 328);
        v22 = google::protobuf::internal::LogMessage::operator<<(v31, "CHECK failed: repeated_field_comparisons_.find(field) == repeated_field_comparisons_.end() || repeated_field_comparisons_[field] == new_comparison: ");
        v23 = google::protobuf::internal::LogMessage::operator<<(v22, "Cannot treat the same field as both ");
        v33 = &v32;
        v24 = sub_276B9DC20((v16 - 8), &v32);
        v25 = google::protobuf::internal::LogMessage::operator<<(v23, *(v24 + 10));
        v26 = google::protobuf::internal::LogMessage::operator<<(v25, " and ");
        v27 = google::protobuf::internal::LogMessage::operator<<(v26, *a3);
        v28 = google::protobuf::internal::LogMessage::operator<<(v27, ". Field name is: ");
        v29 = google::protobuf::internal::LogMessage::operator<<(v28, v32[1]);
        google::protobuf::internal::LogFinisher::operator=(&v30, &v29->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v31[0].__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_276B96140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::MessageDifferencer::GetMapKeyComparator(google::protobuf::util::MessageDifferencer *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v16[4] = v2;
  v16[5] = v3;
  v6 = *(this + 18);
  if (v6)
  {
    v7 = (this + 144);
    do
    {
      v8 = v6[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
    if (v7 != (this + 144) && v7[4] <= a2)
    {
      return v7[5];
    }
  }

  v11 = *(a2 + 6);
  if (v11)
  {
    v13 = a2;
    v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v16[0] = &v14;
      v16[1] = &v13;
      v15 = v16;
      std::__call_once(v11, &v15, sub_2769C149C);
    }
  }

  if (*(a2 + 14) != 11)
  {
    return 0;
  }

  if (google::protobuf::FieldDescriptor::is_map_message_type(a2))
  {
    return this + 160;
  }

  return 0;
}

void *google::protobuf::util::MessageDifferencer::TreatAsSet(char **this, const std::string::value_type **a2)
{
  v4 = a2;
  LODWORD(v5) = 1;
  google::protobuf::util::MessageDifferencer::CheckRepeatedFieldComparisons(this, a2, &v5);
  v5 = &v4;
  result = sub_276B9DC20((this + 11), &v4);
  *(result + 10) = 1;
  return result;
}

void *google::protobuf::util::MessageDifferencer::TreatAsSmartSet(char **this, const std::string::value_type **a2)
{
  v4 = a2;
  LODWORD(v5) = 3;
  google::protobuf::util::MessageDifferencer::CheckRepeatedFieldComparisons(this, a2, &v5);
  v5 = &v4;
  result = sub_276B9DC20((this + 11), &v4);
  *(result + 10) = 3;
  return result;
}

void *sub_276B96338(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_276B9DCF4(v5, a2);
  sub_276B9DD8C(v5, a1);
  sub_276B9DBA0(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *google::protobuf::util::MessageDifferencer::TreatAsList(char **this, const std::string::value_type **a2)
{
  v4 = a2;
  LODWORD(v5) = 0;
  google::protobuf::util::MessageDifferencer::CheckRepeatedFieldComparisons(this, a2, &v5);
  v5 = &v4;
  result = sub_276B9DC20((this + 11), &v4);
  *(result + 10) = 0;
  return result;
}

void *google::protobuf::util::MessageDifferencer::TreatAsSmartList(char **this, const std::string::value_type **a2)
{
  v4 = a2;
  LODWORD(v5) = 2;
  google::protobuf::util::MessageDifferencer::CheckRepeatedFieldComparisons(this, a2, &v5);
  v5 = &v4;
  result = sub_276B9DC20((this + 11), &v4);
  *(result + 10) = 2;
  return result;
}

void google::protobuf::util::MessageDifferencer::TreatAsMap(google::protobuf::util::MessageDifferencer *this, std::once_flag::_State_type **a2, const google::protobuf::FieldDescriptor *a3)
{
  v30 = a2;
  v6 = a2[6];
  if (v6)
  {
    v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v31 = a2;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v29[0].__r_.__value_.__r.__words[0] = &v32;
      v29[0].__r_.__value_.__l.__size_ = &v31;
      v33 = v29;
      std::__call_once(v6, &v33, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 14)] == 10)
  {
    v7 = v30;
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v29, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 361);
    v8 = google::protobuf::internal::LogMessage::operator<<(v29, "CHECK failed: (FieldDescriptor::CPPTYPE_MESSAGE) == (field->cpp_type()): ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "Field has to be message type.  Field name is: ");
    v7 = v30;
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, *(v30 + 1));
    google::protobuf::internal::LogFinisher::operator=(&v33, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v29[0].__r_.__value_.__l.__data_);
  }

  v11 = *(a3 + 10);
  if (v11 != google::protobuf::FieldDescriptor::message_type(v7))
  {
    google::protobuf::internal::LogMessage::LogMessage(v29, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 363);
    v12 = google::protobuf::internal::LogMessage::operator<<(v29, "CHECK failed: key->containing_type() == field->message_type(): ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, *(a3 + 1));
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, " must be a direct subfield within the repeated field ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, v7[1]);
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, ", not ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, *(*(a3 + 10) + 8));
    google::protobuf::internal::LogFinisher::operator=(&v33, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v29[0].__r_.__value_.__l.__data_);
  }

  v18 = *(this + 12);
  if (v18)
  {
    v19 = (this + 96);
    do
    {
      v20 = v18[4];
      v21 = v20 >= v7;
      v22 = v20 < v7;
      if (v21)
      {
        v19 = v18;
      }

      v18 = v18[v22];
    }

    while (v18);
    if (v19 != (this + 96) && v7 >= v19[4])
    {
      google::protobuf::internal::LogMessage::LogMessage(v29, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 368);
      v23 = google::protobuf::internal::LogMessage::operator<<(v29, "CHECK failed: repeated_field_comparisons_.find(field) == repeated_field_comparisons_.end(): ");
      v24 = google::protobuf::internal::LogMessage::operator<<(v23, "Cannot treat the same field as both ");
      v33 = &v30;
      v25 = sub_276B9DC20(this + 88, &v30);
      v26 = google::protobuf::internal::LogMessage::operator<<(v24, *(v25 + 10));
      v27 = google::protobuf::internal::LogMessage::operator<<(v26, " and MAP. Field name is: ");
      v28 = google::protobuf::internal::LogMessage::operator<<(v27, *(v30 + 1));
      google::protobuf::internal::LogFinisher::operator=(&v31, &v28->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v29[0].__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void google::protobuf::util::MessageDifferencer::TreatAsMapWithMultipleFieldsAsKey(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  memset(v12, 0, sizeof(v12));
  v5 = *a3;
  v6 = a3[1];
  while (v5 != v6)
  {
    v7 = *v5;
    v10 = 0;
    v11 = v7;
    __p = 0;
    v9 = 0;
    sub_276B23B7C(&__p, &v11);
    sub_276B96848(v12, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    ++v5;
  }

  google::protobuf::util::MessageDifferencer::TreatAsMapWithMultipleFieldPathsAsKey(a1, a2, v12);
}

void sub_276B96814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __p = &a14;
  sub_276B282A4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_276B96848(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_276B9D844(a1, a2);
  }

  else
  {
    sub_276B9D7F0(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void google::protobuf::util::MessageDifferencer::TreatAsMapWithMultipleFieldPathsAsKey(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v46 = a2;
  if (*(a2 + 60) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 393);
    v6 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: field->is_repeated(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Field must be repeated: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *(a2 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v49, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v47 = a2;
    v48 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v45[0].__r_.__value_.__r.__words[0] = &v48;
      v45[0].__r_.__value_.__l.__size_ = &v47;
      v49 = v45;
      std::__call_once(v9, &v49, sub_2769C149C);
    }
  }

  v43 = a1;
  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 56)] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 395);
    v10 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (FieldDescriptor::CPPTYPE_MESSAGE) == (field->cpp_type()): ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, "Field has to be message type.  Field name is: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, *(v46 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v49, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
  }

  v13 = *a3;
  v44 = a3[1];
  if (*a3 != v44)
  {
    do
    {
      v14 = *v13;
      if (v13[1] != *v13)
      {
        v15 = 0;
        v16 = -8;
        do
        {
          v17 = (v14 + v16);
          if (!v15)
          {
            v17 = &v46;
          }

          v18 = *v17;
          v19 = *(v14 + 8 * v15);
          v20 = *(v19 + 80);
          if (v20 != google::protobuf::FieldDescriptor::message_type(*v17))
          {
            google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 402);
            v21 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: child_field->containing_type() == parent_field->message_type(): ");
            v22 = google::protobuf::internal::LogMessage::operator<<(v21, *(v19 + 8));
            v23 = google::protobuf::internal::LogMessage::operator<<(v22, " must be a direct subfield within the field: ");
            v24 = google::protobuf::internal::LogMessage::operator<<(v23, *(v18 + 1));
            google::protobuf::internal::LogFinisher::operator=(&v49, &v24->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
          }

          if (v15)
          {
            v25 = *(v18 + 6);
            if (v25)
            {
              v47 = v18;
              v48 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v25, memory_order_acquire) != -1)
              {
                v45[0].__r_.__value_.__r.__words[0] = &v48;
                v45[0].__r_.__value_.__l.__size_ = &v47;
                v49 = v45;
                std::__call_once(v25, &v49, sub_2769C149C);
              }
            }

            if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v18 + 14)] != 10)
            {
              google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 407);
              v26 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (FieldDescriptor::CPPTYPE_MESSAGE) == (parent_field->cpp_type()): ");
              v27 = google::protobuf::internal::LogMessage::operator<<(v26, *(v18 + 1));
              v28 = google::protobuf::internal::LogMessage::operator<<(v27, " has to be of type message.");
              google::protobuf::internal::LogFinisher::operator=(&v49, &v28->__r_.__value_.__l.__data_);
              google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
            }

            if (*(v18 + 15) == 3)
            {
              google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 409);
              v29 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: !parent_field->is_repeated(): ");
              v30 = google::protobuf::internal::LogMessage::operator<<(v29, *(v18 + 1));
              v31 = google::protobuf::internal::LogMessage::operator<<(v30, " cannot be a repeated field.");
              google::protobuf::internal::LogFinisher::operator=(&v49, &v31->__r_.__value_.__l.__data_);
              google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
            }
          }

          ++v15;
          v14 = *v13;
          v16 += 8;
        }

        while (v15 < (v13[1] - *v13) >> 3);
      }

      v13 += 3;
    }

    while (v13 != v44);
  }

  v32 = *(v43 + 96);
  if (v32)
  {
    v33 = v43 + 96;
    do
    {
      v34 = *(v32 + 32);
      v35 = v34 >= v46;
      v36 = v34 < v46;
      if (v35)
      {
        v33 = v32;
      }

      v32 = *(v32 + 8 * v36);
    }

    while (v32);
    if (v33 != v43 + 96 && v46 >= *(v33 + 32))
    {
      google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 415);
      v37 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: repeated_field_comparisons_.find(field) == repeated_field_comparisons_.end(): ");
      v38 = google::protobuf::internal::LogMessage::operator<<(v37, "Cannot treat the same field as both ");
      v49 = &v46;
      v39 = sub_276B9DC20(v43 + 88, &v46);
      v40 = google::protobuf::internal::LogMessage::operator<<(v38, *(v39 + 10));
      v41 = google::protobuf::internal::LogMessage::operator<<(v40, " and MAP. Field name is: ");
      v42 = google::protobuf::internal::LogMessage::operator<<(v41, *(v46 + 8));
      google::protobuf::internal::LogFinisher::operator=(&v47, &v42->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_276B96D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::util::MessageDifferencer::TreatAsMapUsingKeyComparator(google::protobuf::util::MessageDifferencer *this, const std::string::value_type **a2, const google::protobuf::util::MessageDifferencer::MapKeyComparator *a3)
{
  v23 = a2;
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 427);
    v6 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: field->is_repeated(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Field must be repeated: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2[1]);
    google::protobuf::internal::LogFinisher::operator=(&v24, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v9 = *(this + 12);
  if (v9)
  {
    v10 = (this + 96);
    do
    {
      v11 = v9[4];
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
    if (v10 != (this + 96) && v10[4] <= a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 430);
      v14 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: repeated_field_comparisons_.find(field) == repeated_field_comparisons_.end(): ");
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, "Cannot treat the same field as both ");
      v24 = &v23;
      v16 = sub_276B9DC20(this + 88, &v23);
      v17 = google::protobuf::internal::LogMessage::operator<<(v15, *(v16 + 10));
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, " and MAP. Field name is: ");
      v19 = google::protobuf::internal::LogMessage::operator<<(v18, v23[1]);
      google::protobuf::internal::LogFinisher::operator=(&v21, &v19->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    }
  }

  v22[0].__r_.__value_.__r.__words[0] = &v23;
  result = sub_276B9DFF0(this + 136, &v23);
  result[5] = a3;
  return result;
}

void sub_276B96F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::util::MessageDifferencer::AddIgnoreCriteria(google::protobuf::util::MessageDifferencer *this, google::protobuf::util::MessageDifferencer::IgnoreCriteria *a2)
{
  v5 = *(this + 23);
  v4 = *(this + 24);
  if (v5 >= v4)
  {
    v7 = *(this + 22);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v7;
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

    if (v11)
    {
      sub_276A73310(this + 176, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 22);
    v14 = *(this + 23) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 22);
    *(this + 22) = v15;
    *(this + 23) = v6;
    *(this + 24) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 23) = v6;
}

uint64_t google::protobuf::util::MessageDifferencer::ReportDifferencesToString(uint64_t result, uint64_t a2)
{
  *(result + 256) = a2;
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

  return result;
}

void *google::protobuf::util::MessageDifferencer::ReportDifferencesTo(void *result, uint64_t a2)
{
  if (result[32])
  {
    result[32] = 0;
  }

  *result = a2;
  return result;
}

BOOL google::protobuf::util::MessageDifferencer::FieldBefore(_BOOL8 this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptor *a3)
{
  if (this)
  {
    return !a2 || *(this + 68) < *(a2 + 17);
  }

  return this;
}

uint64_t google::protobuf::util::MessageDifferencer::CompareWithFields(uint64_t a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*a2 + 152))(a2);
  if (v10 == (*(*a3 + 152))(a3))
  {
    memset(v28, 0, 24);
    sub_276B9E0C0(&__dst, ((*(a4 + 8) - *a4) >> 3) + 1);
    sub_276B9E0C0(&__p, ((*(a5 + 8) - *a5) >> 3) + 1);
    v11 = *(a4 + 8);
    if (v11 != *a4)
    {
      memmove(__dst, *a4, v11 - *a4);
    }

    v12 = *(a5 + 8);
    if (v12 != *a5)
    {
      memmove(__p, *a5, v12 - *a5);
    }

    *(__dst + *(a4 + 8) - *a4) = 0;
    *(__p + *(a5 + 8) - *a5) = 0;
    v13 = 126 - 2 * __clz((v27 - __dst) >> 3);
    v22[0] = google::protobuf::util::MessageDifferencer::FieldBefore;
    if (v27 == __dst)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_276B9E138(__dst, v27, v22, v14, 1);
    v15 = 126 - 2 * __clz((v25 - __p) >> 3);
    v22[0] = google::protobuf::util::MessageDifferencer::FieldBefore;
    if (v25 == __p)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_276B9E138(__p, v25, v22, v16, 1);
    v17 = *(a1 + 256);
    if (v17)
    {
      google::protobuf::io::StringOutputStream::StringOutputStream(&v23, v17);
      google::protobuf::util::MessageDifferencer::StreamReporter::StreamReporter(v22);
    }

    v20 = google::protobuf::util::MessageDifferencer::CompareRequestedFieldsUsingSettings(a1, a2, a3, &__dst, &__p, v28);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (__dst)
    {
      v27 = __dst;
      operator delete(__dst);
    }

    if (v28[0].__r_.__value_.__r.__words[0])
    {
      v28[0].__r_.__value_.__l.__size_ = v28[0].__r_.__value_.__r.__words[0];
      operator delete(v28[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 508);
    v18 = google::protobuf::internal::LogMessage::operator<<(v28, "Comparison between two messages with different ");
    v19 = google::protobuf::internal::LogMessage::operator<<(v18, "descriptors.");
    google::protobuf::internal::LogFinisher::operator=(&__dst, &v19->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    return 0;
  }

  return v20;
}

void sub_276B97338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  google::protobuf::util::MessageDifferencer::StreamReporter::~StreamReporter(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::MessageDifferencer::CompareRequestedFieldsUsingSettings(uint64_t a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *(a1 + 72);
  if (*(a1 + 76))
  {
    if (v11 != 1)
    {
      google::protobuf::util::MessageDifferencer::CombineFields(a1, a4, 1, a5, 1, __p);
      v12 = google::protobuf::util::MessageDifferencer::CompareWithFieldsInternal(a1, a2, a3, a4, __p, a6);
LABEL_7:
      v13 = v12;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return v13;
    }

    a5 = a4;
  }

  else if (v11 == 1)
  {
    google::protobuf::util::MessageDifferencer::CombineFields(a1, a4, 0, a5, 0, __p);
    v12 = google::protobuf::util::MessageDifferencer::CompareWithFieldsInternal(a1, a2, a3, __p, __p, a6);
    goto LABEL_7;
  }

  return google::protobuf::util::MessageDifferencer::CompareWithFieldsInternal(a1, a2, a3, a4, a5, a6);
}

void sub_276B974EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::MessageDifferencer::UnpackAny(uint64_t a1, google::protobuf::internal *a2, uint64_t *a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v25 = 0;
  v26 = 0;
  if (!google::protobuf::internal::GetAnyFieldDescriptors(a2, &v26, &v25, v8))
  {
    return 0;
  }

  google::protobuf::Reflection::GetString(v7, a2, v26, v23);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  sub_276B280C4(__p, v23, v9);
  if ((google::protobuf::internal::ParseAnyTypeUrl(__p[0], __p[1], v21) & 1) != 0 && (v10 = (*(*a2 + 152))(a2), (MessageTypeByName = google::protobuf::DescriptorPool::FindMessageTypeByName(*(*(v10 + 16) + 16), v21, v11)) != 0))
  {
    v13 = *(a1 + 296);
    if (!v13)
    {
      operator new();
    }

    v14 = (*(*v13 + 16))(v13, MessageTypeByName);
    v15 = (*(*v14 + 24))(v14);
    v16 = *a3;
    *a3 = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    google::protobuf::Reflection::GetString(v7, a2, v25, __p);
    v17 = google::protobuf::MessageLite::ParsePartialFromString(*a3, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return v17;
}

void sub_276B97750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MEMORY[0x277C9F670](v27, 0x10E1C401296BE88);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::MessageDifferencer::CompareUnknownFields(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (*(a1 + 72) == 1 || (v13 = *a4, v14 = a4[1], *a4 == v14) && *a5 == a5[1])
  {
    v6 = 1;
    return v6 & 1;
  }

  v72 = 0;
  v73 = 0;
  v74 = 0;
  __p = 0;
  v70 = 0;
  v71 = 0;
  sub_276B9ADB4(&v72, ((v14 - v13) >> 4));
  sub_276B9ADB4(&__p, ((a5[1] - *a5) >> 4));
  v60 = a1;
  v16 = *a4;
  if (((a4[1] - *a4) >> 4) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      *&v63 = v18;
      *(&v63 + 1) = v17 + v16;
      sub_276B9AE54(&v72, &v63);
      ++v18;
      v16 = *a4;
      v17 += 16;
    }

    while (v18 < ((a4[1] - *a4) >> 4));
  }

  v19 = *a5;
  if (((a5[1] - *a5) >> 4) >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      *&v63 = v21;
      *(&v63 + 1) = v20 + v19;
      sub_276B9AE54(&__p, &v63);
      ++v21;
      v19 = *a5;
      v20 += 16;
    }

    while (v21 < ((a5[1] - *a5) >> 4));
  }

  sub_276B9AF2C(v72, v73, v15);
  sub_276B9AF2C(__p, v70, v22);
  v55 = 0;
  v23 = 0;
  v57 = 0;
  v59 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    while (1)
    {
LABEL_12:
      v26 = v24;
      v27 = v72;
      v28 = v73 - v72;
      v61 = v24;
      v62 = v25;
      v29 = v25;
      v30 = __p;
      v31 = (v70 - __p) >> 4;
      if (v28 <= v24)
      {
        if (v31 <= v29)
        {
          v6 = v55 ^ 1;
          if (__p)
          {
            goto LABEL_99;
          }

          goto LABEL_100;
        }
      }

      else if (v31 == v29 || (v32 = v72[v24].n128_u64[1], v33 = *(__p + 2 * v29 + 1), *v32 < *v33) || *v32 <= *v33 && v32[1] < v33[1])
      {
        v58 = v29;
        v34 = v23;
        v56 = v26;
        v35 = v72[v26].n128_u64[1];
        v36 = 1;
        if (!v34)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v34 = v23;
      if (v28 != v26)
      {
        v37 = *(__p + 2 * v29 + 1);
        v35 = v72[v26].n128_u64[1];
        if (*v37 >= *v35)
        {
          break;
        }
      }

LABEL_20:
      if (*(v60 + 19) != 1)
      {
        v56 = v26;
        v36 = 0;
        v58 = v29;
        v35 = *(__p + 2 * v29 + 1);
        if (!v34)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v25 = (v62 + 1);
      v23 = v34;
      v24 = v61;
    }

    if (*v37 <= *v35)
    {
      v38 = v35[1];
      if (v37[1] < v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = v35[1];
    }

    v39 = 0;
    v40 = 2;
    v41 = 1;
    v56 = v26;
    v58 = v29;
    if (v38 <= 1)
    {
      if (v38)
      {
        if (v38 != 1)
        {
          goto LABEL_58;
        }

        v42 = v35[2] == v37[2];
      }

      else
      {
LABEL_38:
        v42 = *(v35 + 1) == *(v37 + 1);
      }

      v39 = v42;
      v40 = 2;
      goto LABEL_58;
    }

    switch(v38)
    {
      case 2:
        goto LABEL_38;
      case 3:
        v43 = *(v35 + 1);
        v44 = *(v37 + 1);
        v45 = *(v43 + 23);
        if (v45 >= 0)
        {
          v46 = *(v43 + 23);
        }

        else
        {
          v46 = *(v43 + 8);
        }

        v47 = *(v44 + 23);
        v48 = v47;
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v44 + 8);
        }

        if (v46 == v47)
        {
          v49 = v45 >= 0 ? *(v35 + 1) : *v43;
          v50 = v48 >= 0 ? v44 : *v44;
          v39 = memcmp(v49, v50, v46) == 0;
        }

        else
        {
          v39 = 0;
        }

        v40 = 2;
        v41 = 1;
        break;
      case 4:
        v41 = 0;
        v39 = 0;
        v40 = 3;
        break;
    }

LABEL_58:
    if ((v41 & v39) != 0)
    {
      v36 = 4;
    }

    else
    {
      v36 = v40;
    }

    if (!v34)
    {
LABEL_64:
      v34 = v35;
      v57 = v61;
      v59 = v62;
      goto LABEL_65;
    }

LABEL_62:
    if (*v35 != *v34 || v35[1] != v34[1])
    {
      goto LABEL_64;
    }

LABEL_65:
    if (v36 != 4 || *v60)
    {
      break;
    }

    v25 = (v62 + 1);
    v23 = v34;
    v24 = (v61 + 1);
  }

  *&v63 = 0;
  v66 = 0;
  v67 = 0;
  v68 = -1;
  *(&v63 + 1) = *v35;
  v66 = a4;
  v67 = a5;
  if (v36)
  {
    LODWORD(v68) = v27[v56].n128_u32[0];
    if (v36 != 1)
    {
      HIDWORD(v68) = v30[v58].n128_u32[0];
    }

    v64 = v61 - v57;
    v51 = v62 - v59;
  }

  else
  {
    v51 = v62 - v59;
    HIDWORD(v68) = v30[v58].n128_u32[0];
    v64 = v62 - v59;
  }

  v65 = v51;
  v52 = v60[22];
  v53 = v60[23];
  while (2)
  {
    if (v52 == v53)
    {
      v23 = v34;
      v24 = v61;
      v25 = v62;
      if (v36 <= 2)
      {
        if (!*v60)
        {
          goto LABEL_105;
        }

        v55 = 1;
      }

      sub_276B987FC(a6, &v63);
      if (v36 <= 1)
      {
        if (v36)
        {
          (*(**v60 + 24))(*v60, a2, a3, a6);
          v24 = (v61 + 1);
          goto LABEL_94;
        }

        (*(**v60 + 16))(*v60, a2, a3, a6);
LABEL_90:
        v25 = (v62 + 1);
LABEL_94:
        *(a6 + 8) -= 48;
        goto LABEL_12;
      }

      if (v36 == 2)
      {
        (*(**v60 + 32))(*v60, a2, a3, a6);
        goto LABEL_89;
      }

      if (v36 != 3)
      {
        v24 = (v61 + 1);
        v25 = (v62 + 1);
        if (*(v60 + 248) == 1)
        {
          (*(**v60 + 48))(*v60, a2, a3, a6);
        }

        goto LABEL_94;
      }

      if (google::protobuf::util::MessageDifferencer::CompareUnknownFields(v60, a2, a3, *(v72[v56].n128_u64[1] + 8), *(*(__p + 2 * v58 + 1) + 8), a6))
      {
        goto LABEL_89;
      }

      if (*v60)
      {
        (*(**v60 + 32))(*v60, a2, a3, a6);
        v55 = 1;
LABEL_89:
        v24 = (v61 + 1);
        goto LABEL_90;
      }

LABEL_105:
      v6 = 0;
      goto LABEL_98;
    }

    if (!(*(**v52 + 24))(*v52, a2, a3, &v63, a6))
    {
      ++v52;
      continue;
    }

    break;
  }

  if (*v60)
  {
    sub_276B987FC(a6, &v63);
    (*(**v60 + 64))(*v60, a2, a3, a6);
    *(a6 + 8) -= 48;
  }

  v6 = 1;
LABEL_98:
  v30 = __p;
  if (__p)
  {
LABEL_99:
    v70 = v30;
    operator delete(v30);
  }

LABEL_100:
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  return v6 & 1;
}

void sub_276B97F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::MessageDifferencer::RetrieveFields@<X0>(google::protobuf::util::MessageDifferencer *this@<X0>, const google::protobuf::Message *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = (*(*a2 + 152))(a2);
  *(this + 26) = *(this + 25);
  sub_276B7173C(this + 25, *(v8 + 104) + 1);
  (*(*a2 + 152))(a2);
  if (*(*(v8 + 32) + 75) != 1 || *(this + 19) == 1 && (a3 & 1) != 0)
  {
    google::protobuf::Reflection::ListFields(v9, a2, this + 25);
  }

  else if (*(v8 + 104) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v8 + 40) + v13;
      sub_276B23B7C(this + 200, &v15);
      ++v14;
      v13 += 152;
    }

    while (v14 < *(v8 + 104));
  }

  v15 = 0;
  sub_276B23B7C(this + 200, &v15);
  v10 = *(this + 25);
  v11 = *(this + 26);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  return sub_276B9D060(a4, v10, v11, (v11 - v10) >> 3);
}

uint64_t google::protobuf::util::MessageDifferencer::CombineFields@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = a1 + 200;
  *(a1 + 208) = *(a1 + 200);
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a4;
      if (v16 >= ((a4[1] - *a4) >> 3))
      {
        break;
      }

      v18 = (v9 + 8 * v14);
      v19 = *(v17 + 8 * v16);
      if (*v18)
      {
        if (!v19 || (v20 = *(*v18 + 68), v21 = *(v19 + 68), v20 < v21))
        {
          if (!a3)
          {
            sub_276B23B7C(v8, v18);
          }

          ++v15;
          goto LABEL_16;
        }

        if (v21 < v20)
        {
LABEL_11:
          if (!a5)
          {
            sub_276B23B7C(v8, (v17 + 8 * v16));
          }

          goto LABEL_15;
        }
      }

      else if (v19)
      {
        goto LABEL_11;
      }

      sub_276B23B7C(v8, v18);
      ++v15;
LABEL_15:
      ++v16;
LABEL_16:
      v14 = v15;
      v9 = *a2;
    }

    while (v15 < ((a2[1] - *a2) >> 3));
  }

  v25 = 0;
  sub_276B23B7C(v8, &v25);
  v22 = *(a1 + 200);
  v23 = *(a1 + 208);
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  return sub_276B9D060(a6, v22, v23, (v23 - v22) >> 3);
}

uint64_t google::protobuf::util::MessageDifferencer::CompareWithFieldsInternal(void *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, const google::protobuf::FieldDescriptor ***a4, const google::protobuf::FieldDescriptor ***a5, uint64_t *a6)
{
  (*(*a2 + 152))(a2);
  v36 = v12;
  (*(*a3 + 152))(a3);
  v35 = v13;
  v14 = **a4;
  v15 = **a5;
  LOBYTE(v16) = v14 == 0;
  LOBYTE(v17) = v15 == 0;
  if (v14 != 0 || v15 != 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v37 = a5;
    while (1)
    {
      v39 = v20;
      if (v16)
      {
        v38 = v21;
        if (v17)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
      }

      if (!v17)
      {
        v22 = *(v14 + 17);
        v23 = *(v15 + 17);
        if (v22 >= v23)
        {
          v38 = v21;
          if (v23 >= v22)
          {
LABEL_6:
            if (google::protobuf::util::MessageDifferencer::IsIgnored(a1, a2, a3, v14, a6))
            {
              if (*a1)
              {
                v41 = xmmword_276C1A750;
                v42 = 0;
                v43 = 0;
                v44 = -1;
                v40 = v14;
                sub_276B987FC(a6, &v40);
                if (*(a1 + 250) == 1)
                {
                  (*(**a1 + 56))(*a1, a2, a3, a6);
                }

                goto LABEL_59;
              }
            }

            else
            {
              if (*(v14 + 15) == 3)
              {
                if ((google::protobuf::util::MessageDifferencer::CompareRepeatedField(a1, a2, a3, v14, a6) & 1) == 0)
                {
                  v18 = *a1;
                  if (!*a1)
                  {
                    return v18 & 1;
                  }

                  v19 = 1;
                }

                goto LABEL_60;
              }

              v31 = google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(a1, a2, a3, v14, 0xFFFFFFFFLL, 0xFFFFFFFFLL, a6);
              v18 = *a1;
              if (v31)
              {
                if (!v18)
                {
                  goto LABEL_60;
                }
              }

              else if (!v18)
              {
                return v18 & 1;
              }

              v41 = xmmword_276C1A750;
              v42 = 0;
              v43 = 0;
              v44 = -1;
              v40 = v14;
              sub_276B987FC(a6, &v40);
              if (v31)
              {
                if (*(a1 + 248) == 1)
                {
                  (*(**a1 + 48))(*a1, a2, a3, a6);
                }
              }

              else
              {
                (*(**a1 + 32))(*a1, a2, a3, a6);
                v19 = 1;
              }

LABEL_59:
              a6[1] -= 48;
            }

LABEL_60:
            v27 = v38;
            v20 = v39 + 1;
LABEL_61:
            v21 = v27 + 1;
            goto LABEL_62;
          }

LABEL_27:
          IsIgnored = google::protobuf::util::MessageDifferencer::IsIgnored(a1, a2, a3, v15, a6);
          v18 = *a1;
          if (IsIgnored)
          {
            if (v18)
            {
              v41 = xmmword_276C1A750;
              v42 = 0;
              v43 = 0;
              v44 = -1;
              v40 = v15;
              sub_276B987FC(a6, &v40);
              if (*(a1 + 250) == 1)
              {
                (*(**a1 + 56))(*a1, a2, a3, a6);
              }

              a6[1] -= 48;
            }

            v27 = v38;
            v20 = v39;
            goto LABEL_61;
          }

          if (!v18)
          {
            return v18 & 1;
          }

          if (*(v15 + 15) == 3)
          {
            v28 = google::protobuf::Reflection::FieldSize(v35, a3, v15);
            if (v28 < 1)
            {
LABEL_53:
              v20 = v39;
              v21 = v38 + 1;
              v19 = 1;
              a5 = v37;
              goto LABEL_62;
            }
          }

          else
          {
            v28 = 1;
          }

          for (i = 0; i != v28; ++i)
          {
            *&v41 = 0xFFFFFFFFLL;
            v42 = 0;
            v43 = 0;
            v44 = -1;
            v40 = v15;
            if (*(v15 + 15) == 3)
            {
              v33 = i;
            }

            else
            {
              v33 = -1;
            }

            DWORD2(v41) = v33;
            HIDWORD(v41) = v33;
            sub_276B987FC(a6, &v40);
            (*(**a1 + 16))(*a1, a2, a3, a6);
            a6[1] -= 48;
          }

          goto LABEL_53;
        }
      }

      v24 = google::protobuf::util::MessageDifferencer::IsIgnored(a1, a2, a3, v14, a6);
      v18 = *a1;
      if (v24)
      {
        if (v18)
        {
          v41 = xmmword_276C1A750;
          v42 = 0;
          v43 = 0;
          v44 = -1;
          v40 = v14;
          sub_276B987FC(a6, &v40);
          if (*(a1 + 250) == 1)
          {
            (*(**a1 + 56))(*a1, a2, a3, a6);
          }

          a6[1] -= 48;
        }

        v20 = v39 + 1;
        goto LABEL_62;
      }

      if (!v18)
      {
        return v18 & 1;
      }

      if (*(v14 + 15) != 3)
      {
        break;
      }

      v25 = google::protobuf::Reflection::FieldSize(v36, a2, v14);
      if (v25 >= 1)
      {
        goto LABEL_38;
      }

LABEL_43:
      v20 = v39 + 1;
      a5 = v37;
      v19 = 1;
LABEL_62:
      v14 = (*a4)[v20];
      v15 = (*a5)[v21];
      v16 = v14 == 0;
      v17 = v15 == 0;
      if (v16 && v17)
      {
        LOBYTE(v18) = v19 ^ 1;
        return v18 & 1;
      }
    }

    v25 = 1;
LABEL_38:
    for (j = 0; j != v25; ++j)
    {
      *&v41 = 0xFFFFFFFFLL;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v40 = v14;
      if (*(v14 + 15) == 3)
      {
        v30 = j;
      }

      else
      {
        v30 = -1;
      }

      *(&v41 + 1) = v30 | 0xFFFFFFFF00000000;
      sub_276B987FC(a6, &v40);
      (*(**a1 + 24))(*a1, a2, a3, a6);
      a6[1] -= 48;
    }

    goto LABEL_43;
  }

  LOBYTE(v18) = 1;
  return v18 & 1;
}

void sub_276B987FC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_2769BA860();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_276B9DA3C(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

uint64_t google::protobuf::util::MessageDifferencer::CompareRepeatedField(void *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, unint64_t a4, uint64_t *a5)
{
  (*(*a2 + 152))(a2);
  v11 = v10;
  (*(*a3 + 152))(a3);
  v13 = v12;
  v14 = *(a4 + 48);
  if (v14)
  {
    v57 = google::protobuf::FieldDescriptor::TypeOnceInit;
    __p = a4;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v60 = &v57;
      *&v61 = &__p;
      v53[0].__r_.__value_.__r.__words[0] = &v60;
      std::__call_once(v14, v53, sub_2769C149C);
    }
  }

  if (*(a4 + 56) != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(a4) || *a1)
  {
    goto LABEL_16;
  }

  v15 = a1[18];
  if (v15)
  {
    v16 = a1 + 18;
    do
    {
      v17 = v15[4];
      v18 = v17 >= a4;
      v19 = v17 < a4;
      if (v18)
      {
        v16 = v15;
      }

      v15 = v15[v19];
    }

    while (v15);
    if (v16 != a1 + 18 && v16[4] <= a4)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 20))
  {
    goto LABEL_16;
  }

  v41 = a1[8];
  v26 = (a1 + 1);
  if (v41)
  {
    if (!sub_276A07DC4(*(*v41 - 8), *(*v26 - 8)))
    {
      goto LABEL_16;
    }

    v26 = a1[8];
    if (!v26)
    {
      goto LABEL_16;
    }
  }

  v42 = google::protobuf::FieldDescriptor::message_type(a4);
  v52 = google::protobuf::Descriptor::map_key(v42);
  v43 = google::protobuf::FieldDescriptor::message_type(a4);
  v50 = google::protobuf::Descriptor::map_value(v43);
  MapData = google::protobuf::Reflection::GetMapData(v11, a2, a4);
  v45 = google::protobuf::Reflection::GetMapData(v13, a3, a4);
  memset(v53, 0, 24);
  sub_276B9D974(v53, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4));
  v61 = xmmword_276C1A750;
  v62 = 0;
  v63 = 0;
  v64 = -1;
  v60 = a4;
  sub_276B987FC(v53, &v60);
  if (google::protobuf::internal::MapFieldBase::IsMapValid(MapData) && google::protobuf::internal::MapFieldBase::IsMapValid(v45) && (google::protobuf::util::MessageDifferencer::IsIgnored(a1, a2, a3, v52, v53) & 1) == 0 && (google::protobuf::util::MessageDifferencer::IsIgnored(a1, a2, a3, v50, v53) & 1) == 0)
  {
    LOBYTE(v26) = google::protobuf::util::MessageDifferencer::CompareMapFieldByMapReflection(a1, a2, a3, a4, v53, v26);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  if (v53[0].__r_.__value_.__r.__words[0])
  {
    v53[0].__r_.__value_.__l.__size_ = v53[0].__r_.__value_.__r.__words[0];
    operator delete(v53[0].__r_.__value_.__l.__data_);
  }

  if (v46)
  {
LABEL_16:
    v20 = google::protobuf::Reflection::FieldSize(v11, a2, a4);
    v21 = google::protobuf::Reflection::FieldSize(v13, a3, a4);
    IsTreatedAsSubset = google::protobuf::util::MessageDifferencer::IsTreatedAsSubset(a1, a4);
    v23 = IsTreatedAsSubset;
    if (v20 != v21 && *a1 == 0 && !IsTreatedAsSubset || v20 > v21 && !*a1)
    {
      LOBYTE(v26) = 0;
      return v26 & 1;
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    __p = 0;
    v55 = 0;
    v56 = 0;
    MapKeyComparator = google::protobuf::util::MessageDifferencer::GetMapKeyComparator(a1, a4);
    IsTreatedAsSmartList = google::protobuf::util::MessageDifferencer::IsTreatedAsSmartList(a1, a4);
    if (MapKeyComparator || google::protobuf::util::MessageDifferencer::IsTreatedAsSet(a1, a4) || google::protobuf::util::MessageDifferencer::IsTreatedAsSmartSet(a1, a4) || IsTreatedAsSmartList)
    {
      v25 = 0;
      if ((google::protobuf::util::MessageDifferencer::MatchRepeatedFieldIndices(a1, a2, a3, a4, MapKeyComparator, a5, &v57, &__p) & 1) == 0)
      {
        LOBYTE(v26) = 0;
        if (!*a1)
        {
LABEL_91:
          if (__p)
          {
            v55 = __p;
            operator delete(__p);
          }

          if (v57)
          {
            v58 = v57;
            operator delete(v57);
          }

          return v26 & 1;
        }
      }
    }

    else
    {
      v25 = 1;
    }

    v47 = v23;
    v27 = 0;
    v61 = xmmword_276C1A750;
    v62 = 0;
    v63 = 0;
    v64 = -1;
    v60 = a4;
    v48 = v20;
    if (v21 < 1)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    if (v20 >= 1 && (v28 & 1) == 0)
    {
      v29 = 0;
      v27 = 0;
      v49 = 0;
      do
      {
        if ((v25 & 1) == 0 && *(v57 + v29) == -1)
        {
          if (IsTreatedAsSmartList)
          {
            if (!*a1)
            {
LABEL_90:
              LOBYTE(v26) = 0;
              goto LABEL_91;
            }

            DWORD2(v61) = v29;
            sub_276B987FC(a5, &v60);
            (*(**a1 + 24))(*a1, a2, a3, a5);
            a5[1] -= 48;
            *(v57 + v29) = -2;
            goto LABEL_66;
          }
        }

        else
        {
          if (IsTreatedAsSmartList && v49 < *(v57 + v29))
          {
            v30 = v49;
            do
            {
              if (v30 < 0)
              {
                google::protobuf::internal::LogMessage::LogMessage(v53, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 1108);
                v31 = google::protobuf::internal::LogMessage::operator<<(v53, "CHECK failed: (0) <= (j): ");
                google::protobuf::internal::LogFinisher::operator=(v67, &v31->__r_.__value_.__l.__data_);
                google::protobuf::internal::LogMessage::~LogMessage(&v53[0].__r_.__value_.__l.__data_);
              }

              if (!*a1)
              {
                goto LABEL_90;
              }

              DWORD2(v61) = v30;
              HIDWORD(v61) = v30;
              sub_276B987FC(a5, &v60);
              (*(**a1 + 16))(*a1, a2, a3, a5);
              a5[1] -= 48;
              *(__p + v30++) = -2;
            }

            while (v30 < *(v57 + v29));
            v27 = 1;
          }

          DWORD2(v61) = v29;
          if (v25)
          {
            HIDWORD(v61) = v29;
            v32 = v29;
          }

          else
          {
            v32 = *(v57 + v29);
            HIDWORD(v61) = v32;
            v49 = v32 + 1;
          }

          v33 = google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(a1, a2, a3, a4, v29, v32, a5);
          v34 = *a1;
          if ((v33 & 1) == 0)
          {
            if (!v34)
            {
              goto LABEL_90;
            }

            sub_276B987FC(a5, &v60);
            (*(**a1 + 32))(*a1, a2, a3, a5);
            a5[1] -= 48;
LABEL_66:
            v27 = 1;
            goto LABEL_67;
          }

          if (v34 && DWORD2(v61) != HIDWORD(v61))
          {
            v35 = v60;
            v36 = *(v60 + 6);
            if (v36)
            {
              v65 = v60;
              v66 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v36, memory_order_acquire) != -1)
              {
                v53[0].__r_.__value_.__r.__words[0] = &v66;
                v53[0].__r_.__value_.__l.__size_ = &v65;
                v67[0] = v53;
                std::__call_once(v36, v67, sub_2769C149C);
              }
            }

            if ((*(v35 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(v35) & 1) == 0) && *(a1 + 249) == 1)
            {
              sub_276B987FC(a5, &v60);
              (*(**a1 + 40))(*a1, a2, a3, a5);
LABEL_62:
              a5[1] -= 48;
              goto LABEL_67;
            }
          }

          if (*(a1 + 248) == 1 && *a1)
          {
            sub_276B987FC(a5, &v60);
            (*(**a1 + 48))(*a1, a2, a3, a5);
            goto LABEL_62;
          }
        }

LABEL_67:
        if (++v29 >= v21)
        {
          v37 = v25;
        }

        else
        {
          v37 = 0;
        }
      }

      while (v29 < v48 && (v37 & 1) == 0);
    }

    if (v21 >= 1)
    {
      for (i = 0; v21 != i; ++i)
      {
        if (v25)
        {
          if (i >= v48)
          {
            goto LABEL_78;
          }
        }

        else if (*(__p + i) == -1)
        {
LABEL_78:
          v27 |= !v47;
          if (*a1)
          {
            DWORD2(v61) = i;
            HIDWORD(v61) = i;
            sub_276B987FC(a5, &v60);
            (*(**a1 + 16))(*a1, a2, a3, a5);
            a5[1] -= 48;
          }
        }
      }
    }

    if (v48 < 1)
    {
LABEL_89:
      LOBYTE(v26) = v27 ^ 1;
      goto LABEL_91;
    }

    v39 = 0;
    while ((v25 & 1) == 0)
    {
      if (*(v57 + v39) == -1)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (v48 == ++v39)
      {
        goto LABEL_89;
      }
    }

    if (v39 < v21)
    {
      goto LABEL_88;
    }

LABEL_87:
    DWORD2(v61) = v39;
    sub_276B987FC(a5, &v60);
    (*(**a1 + 24))(*a1, a2, a3, a5);
    a5[1] -= 48;
    v27 = 1;
    goto LABEL_88;
  }

  return v26 & 1;
}

void sub_276B99208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::MessageDifferencer::IsMatch(google::protobuf::util::MessageDifferencer *a1, uint64_t a2, uint64_t a3, const google::protobuf::Message *a4, const google::protobuf::Message *a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_276B9D974(&__p, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 4));
  v16 = *(a2 + 48);
  if (v16)
  {
    v37 = a2;
    v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v16, memory_order_acquire) != -1)
    {
      *&v28 = &v38;
      *(&v28 + 1) = &v37;
      v39 = &v28;
      std::__call_once(v16, &v39, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 56)] == 10)
  {
    v17 = *a1;
    v27 = *(a1 + 32);
    *a1 = a7;
    *(a1 + 32) = 0;
    if (a3)
    {
      (*(*a4 + 152))(a4);
      v19 = v18;
      (*(*a5 + 152))(a5);
      v21 = v20;
      RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v19, a4, a2, a8);
      v23 = google::protobuf::Reflection::GetRepeatedMessage(v21, a5, a2, a9);
      *(&v28 + 1) = 0xFFFFFFFFLL;
      v31 = 0;
      v32 = 0;
      v33 = -1;
      *&v28 = a2;
      v29 = a8;
      v30 = a9;
      sub_276B987FC(&__p, &v28);
      v24 = (*(*a3 + 16))(a3, RepeatedMessage, v23, &__p);
    }

    else
    {
      v24 = google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(a1, a4, a5, a2, a8, a9, &__p);
    }

    v25 = v24;
    *a1 = v17;
    *(a1 + 32) = v27;
  }

  else
  {
    v25 = google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(a1, a4, a5, a2, a8, a9, &__p);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return v25;
}

void sub_276B994DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::MessageDifferencer::CompareMapFieldByMapReflection(google::protobuf::util::MessageDifferencer *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4, uint64_t a5, google::protobuf::util::DefaultFieldComparator *a6)
{
  v61[2] = *MEMORY[0x277D85DE8];
  (*(*a2 + 152))(a2);
  v13 = v12;
  (*(*a3 + 152))(a3);
  v15 = v14;
  v16 = google::protobuf::Reflection::MapSize(v13, a2, a4);
  v17 = google::protobuf::Reflection::MapSize(v15, a3, a4);
  IsTreatedAsSubset = google::protobuf::util::MessageDifferencer::IsTreatedAsSubset(a1, a4);
  result = 0;
  if (v16 <= v17 && (v16 == v17 || IsTreatedAsSubset))
  {
    v20 = google::protobuf::FieldDescriptor::message_type(a4);
    v21 = google::protobuf::Descriptor::map_value(v20);
    v22 = *(v21 + 48);
    if (v22)
    {
      v50 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v52 = v21;
      if (atomic_load_explicit(v22, memory_order_acquire) != -1)
      {
        v58 = &v50;
        v59 = &v52;
        v53 = &v58;
        std::__call_once(v22, &v53, sub_2769C149C);
      }
    }

    v23 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v21 + 56)];
    result = 1;
    if (v23 > 5)
    {
      if (v23 <= 7)
      {
        if (v23 == 6)
        {
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v37 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v37)
            {
              break;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0 || (v53 = 0, LODWORD(v54) = 0, google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53), v38 = sub_276B64B84(v61), v39 = sub_276B64B84(&v53), !google::protobuf::util::DefaultFieldComparator::CompareFloat(a6, v21, v38, v39)))
            {
LABEL_67:
              sub_276B7951C(&v58);
              result = 0;
              goto LABEL_69;
            }

            (*(*v59 + 152))(v59, &v58);
          }
        }

        else
        {
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v33 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v33)
            {
              break;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v34 = sub_276B64F84(v61);
            if (v34 != sub_276B64F84(&v53))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }
        }

        goto LABEL_68;
      }

      switch(v23)
      {
        case 8:
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v42 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v42)
            {
              goto LABEL_68;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v43 = sub_276B6537C(v61);
            if (v43 != sub_276B6537C(&v53))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }

        case 9:
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v46 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v46)
            {
              goto LABEL_68;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v47 = sub_276B65184(v61);
            v48 = sub_276B65184(&v53);
            if (!sub_276B07FE0(a6, v21, v47, v48))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }

        case 10:
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v27 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v27)
            {
              goto LABEL_68;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v50 = 0;
            v51 = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v50);
            v54 = xmmword_276C1A750;
            v55 = 0;
            v56 = 0;
            v57 = -1;
            v53 = v21;
            sub_276B987FC(a5, &v53);
            v28 = sub_276B65570(v61);
            v29 = sub_276B65570(&v50);
            v30 = google::protobuf::util::MessageDifferencer::Compare(a1, v28, v29, a5);
            *(a5 + 8) -= 48;
            if ((v30 & 1) == 0)
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }
      }
    }

    else
    {
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v40 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v40)
            {
              break;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v41 = sub_276B64784(v61);
            if (v41 != sub_276B64784(&v53))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }
        }

        else if (v23 == 4)
        {
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v44 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v44)
            {
              break;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v45 = sub_276B64980(v61);
            if (v45 != sub_276B64980(&v53))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }
        }

        else
        {
          google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
          while (1)
          {
            google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
            v24 = (*(*v59 + 48))(v59, &v58, &v53);
            sub_276B7951C(&v53);
            if (v24)
            {
              break;
            }

            if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
            {
              goto LABEL_67;
            }

            v53 = 0;
            LODWORD(v54) = 0;
            google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
            v25 = sub_276B64D88(v61);
            v26 = sub_276B64D88(&v53);
            if (!google::protobuf::util::DefaultFieldComparator::CompareDouble(a6, v21, v25, v26))
            {
              goto LABEL_67;
            }

            (*(*v59 + 152))(v59, &v58);
          }
        }

LABEL_68:
        sub_276B7951C(&v58);
        result = 1;
        goto LABEL_69;
      }

      if (v23 == 1)
      {
        google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
        while (1)
        {
          google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
          v35 = (*(*v59 + 48))(v59, &v58, &v53);
          sub_276B7951C(&v53);
          if (v35)
          {
            goto LABEL_68;
          }

          if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
          {
            goto LABEL_67;
          }

          v53 = 0;
          LODWORD(v54) = 0;
          google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
          v36 = sub_276B6438C(v61);
          if (v36 != sub_276B6438C(&v53))
          {
            goto LABEL_67;
          }

          (*(*v59 + 152))(v59, &v58);
        }
      }

      if (v23 == 2)
      {
        google::protobuf::Reflection::MapBegin(v13, a2, a4, &v58);
        while (1)
        {
          google::protobuf::Reflection::MapEnd(v13, a2, a4, &v53);
          v31 = (*(*v59 + 48))(v59, &v58, &v53);
          sub_276B7951C(&v53);
          if (v31)
          {
            goto LABEL_68;
          }

          if ((google::protobuf::Reflection::ContainsMapKey(v15, a3, a4, v60) & 1) == 0)
          {
            goto LABEL_67;
          }

          v53 = 0;
          LODWORD(v54) = 0;
          google::protobuf::Reflection::LookupMapValue(v15, a3, a4, v60, &v53);
          v32 = sub_276B64588(v61);
          if (v32 != sub_276B64588(&v53))
          {
            goto LABEL_67;
          }

          (*(*v59 + 152))(v59, &v58);
        }
      }
    }
  }

LABEL_69:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B9A124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_276B7951C(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::util::MessageDifferencer::IsTreatedAsSubset(google::protobuf::util::MessageDifferencer *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(this + 19) != 1)
  {
    return 0;
  }

  if (google::protobuf::util::MessageDifferencer::IsTreatedAsSet(this, a2))
  {
    return 1;
  }

  return google::protobuf::util::MessageDifferencer::GetMapKeyComparator(this, a2) != 0;
}

BOOL google::protobuf::util::MessageDifferencer::IsTreatedAsSmartList(google::protobuf::util::MessageDifferencer *this, const google::protobuf::FieldDescriptor *a2)
{
  v12[0] = a2;
  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v3 = this + 96;
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = this + 88;
  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 4) <= a2)
  {
    v12[2] = v12;
    v11 = *(sub_276B9DC20(v5, v12) + 10);
  }

  else
  {
LABEL_17:
    if (google::protobuf::util::MessageDifferencer::GetMapKeyComparator(this, a2))
    {
      return 0;
    }

    v11 = *(this + 20);
  }

  return v11 == 2;
}

BOOL google::protobuf::util::MessageDifferencer::IsTreatedAsSet(google::protobuf::util::MessageDifferencer *this, const google::protobuf::FieldDescriptor *a2)
{
  v12[0] = a2;
  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v3 = this + 96;
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = this + 88;
  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 4) <= a2)
  {
    v12[2] = v12;
    v11 = *(sub_276B9DC20(v5, v12) + 10);
  }

  else
  {
LABEL_17:
    if (google::protobuf::util::MessageDifferencer::GetMapKeyComparator(this, a2))
    {
      return 0;
    }

    v11 = *(this + 20);
  }

  return v11 == 1;
}

BOOL google::protobuf::util::MessageDifferencer::IsTreatedAsSmartSet(google::protobuf::util::MessageDifferencer *this, const google::protobuf::FieldDescriptor *a2)
{
  v12[0] = a2;
  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v3 = this + 96;
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = this + 88;
  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 4) <= a2)
  {
    v12[2] = v12;
    v11 = *(sub_276B9DC20(v5, v12) + 10);
  }

  else
  {
LABEL_17:
    if (google::protobuf::util::MessageDifferencer::GetMapKeyComparator(this, a2))
    {
      return 0;
    }

    v11 = *(this + 20);
  }

  return v11 == 3;
}

uint64_t google::protobuf::util::MessageDifferencer::MatchRepeatedFieldIndices(google::protobuf::util::MessageDifferencer *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, google::protobuf::FieldDescriptor *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v53[10] = *MEMORY[0x277D85DE8];
  v48 = a5;
  v49 = a4;
  (*(*a2 + 152))(a2);
  v15 = google::protobuf::Reflection::FieldSize(v14, a2, a4);
  (*(*a3 + 152))(a3);
  v17 = google::protobuf::Reflection::FieldSize(v16, a3, a4);
  IsTreatedAsSmartSet = google::protobuf::util::MessageDifferencer::IsTreatedAsSmartSet(a1, a4);
  v38 = a7;
  v39 = v15;
  LODWORD(v53[0]) = -1;
  sub_276B9B008(a7, v15, v53);
  LODWORD(v53[0]) = -1;
  sub_276B9B008(a8, v17, v53);
  v40 = *a1;
  *a1 = 0;
  v45 = 0;
  v46 = &unk_2885C8B68;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  if (IsTreatedAsSmartSet)
  {
    sub_276B9B008(&v43, v15, &dword_276C1A760);
  }

  v41 = a1;
  if (*(a1 + 19) == 1)
  {
    v52[4] = 0;
    operator new();
  }

  if (google::protobuf::util::MessageDifferencer::IsTreatedAsSet(a1, v49) || IsTreatedAsSmartSet || google::protobuf::util::MessageDifferencer::IsTreatedAsSmartList(a1, v49))
  {
    if (v17 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    if (v19 >= 1)
    {
      v20 = 0;
      while (google::protobuf::util::MessageDifferencer::IsMatch(a1, v49, v48, a2, a3, a6, 0, v20, v20))
      {
        if (v20 >= (v38[1] - *v38) >> 2 || (*(*v38 + 4 * v20) = v20, v20 >= (a8[1] - *a8) >> 2))
        {
          sub_276B9DA94();
        }

        *(*a8 + 4 * v20) = v20;
        if (v19 == ++v20)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v19) = v20;
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

LABEL_20:
  v22 = v15;
  if (v19 >= v15)
  {
    v21 = 1;
    goto LABEL_65;
  }

  v23 = v19;
  LODWORD(v21) = 1;
  v36 = v19;
  v37 = v19;
  do
  {
    if (v37 >= v17)
    {
      v32 = 0;
      goto LABEL_61;
    }

    v24 = -1;
    v25 = v36;
    do
    {
      if (v25 >= (a8[1] - *a8) >> 2)
      {
        sub_276B9DA94();
      }

      v26 = *(*a8 + 4 * v25);
      if (v26 == -1)
      {
        v27 = v49;
        if (!IsTreatedAsSmartSet)
        {
          if (google::protobuf::util::MessageDifferencer::IsMatch(v41, v49, v48, a2, a3, a6, 0, v23, v25))
          {
            v32 = 1;
            goto LABEL_57;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (!IsTreatedAsSmartSet || !*(v43 + v23) || !*(v43 + v26))
        {
          goto LABEL_43;
        }

        v27 = v49;
      }

      v47 = 0;
      if (google::protobuf::util::MessageDifferencer::IsMatch(v41, v27, v48, a2, a3, a6, &v46, v23, v25))
      {
        *(v43 + v23) = 0;
LABEL_50:
        v22 = v39;
        if (v25 < ((a8[1] - *a8) >> 2))
        {
          v33 = *(*a8 + 4 * v25);
          if (v33 == -1)
          {
            v32 = 1;
            goto LABEL_58;
          }

          if (v33 < (v38[1] - *v38) >> 2)
          {
            v32 = 0;
            *(*v38 + 4 * v33) = -1;
            goto LABEL_58;
          }
        }

LABEL_73:
        sub_276B9DA94();
      }

      v28 = v49;
      v29 = *(v49 + 6);
      if (v29)
      {
        v51 = v49;
        v52[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v29, memory_order_acquire) != -1)
        {
          v53[0] = v52;
          v53[1] = &v51;
          __p = v53;
          std::__call_once(v29, &__p, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v28 + 14)] == 10)
      {
        v30 = v47;
        if (v47 < *(v43 + v23))
        {
          if (v25 >= (a8[1] - *a8) >> 2)
          {
            sub_276B9DA94();
          }

          v31 = *(*a8 + 4 * v25);
          if (v31 == -1 || v47 < *(v43 + v31))
          {
            *(v43 + v23) = v47;
            v24 = v25;
            if (!v30)
            {
              goto LABEL_50;
            }
          }
        }
      }

LABEL_43:
      ++v25;
    }

    while (v17 != v25);
    if (v24 == -1)
    {
      v32 = 0;
      a1 = v41;
      v22 = v39;
      goto LABEL_61;
    }

    if (IsTreatedAsSmartSet)
    {
      LODWORD(v25) = v24;
      goto LABEL_50;
    }

    v32 = 1;
    LODWORD(v25) = v24;
LABEL_57:
    v22 = v39;
LABEL_58:
    if (v23 >= (v38[1] - *v38) >> 2)
    {
      goto LABEL_73;
    }

    *(*v38 + 4 * v23) = v25;
    if (v25 >= ((a8[1] - *a8) >> 2))
    {
      goto LABEL_73;
    }

    *(*a8 + 4 * v25) = v23;
    a1 = v41;
    if (v32)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (!v40)
    {
      v21 = 0;
      goto LABEL_68;
    }

LABEL_62:
    v21 = v21 & v32;
    ++v23;
  }

  while (v22 != v23);
LABEL_65:
  if (google::protobuf::util::MessageDifferencer::IsTreatedAsSmartList(a1, v49))
  {
    sub_276B9B2E4(a1 + 264, v38, a8);
  }

  *a1 = v40;
LABEL_68:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_276B9AB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_276A579A4(v29 + 40, *(v30 - 128));
  sub_276B9FE6C(v29 + 8);
  sub_276B9FE6C(&a29);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::MessageDifferencer::GetFieldComparisonResult(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = a1 + 8;
  }

  return (*(*v1 + 16))();
}

uint64_t google::protobuf::util::MessageDifferencer::CheckPathChanged(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *v1;
    if (!*v1)
    {
      goto LABEL_8;
    }

    v4 = *(v3 + 48);
    if (v4)
    {
      v6 = *v1;
      v7 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v4, memory_order_acquire) != -1)
      {
        v9[0] = &v7;
        v9[1] = &v6;
        v8 = v9;
        std::__call_once(v4, &v8, sub_2769C149C);
      }
    }

    if (*(v3 + 56) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(v3) & 1) == 0)
    {
LABEL_8:
      if (*(v1 + 4) != *(v1 + 5))
      {
        return 1;
      }
    }

    v1 += 6;
    if (v1 == v2)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::util::MessageDifferencer::IsUnknownFieldIgnored(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 176);
  v6 = *(a1 + 184);
  if (v5 == v6)
  {
    return 0;
  }

  v11 = v5 + 8;
  do
  {
    result = (*(**(v11 - 8) + 24))(*(v11 - 8), a2, a3, a4, a5);
    if (result)
    {
      break;
    }

    v13 = v11 == v6;
    v11 += 8;
  }

  while (!v13);
  return result;
}

void *sub_276B9ADB4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_276B9F3CC(result, a2);
    }

    sub_2769BA860();
  }

  return result;
}