char *sub_2991FE9E8(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  if (*a1)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = sub_2991FC9F4(a1, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *a1;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *sub_2991FEB14(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return result;
}

std::string::value_type *sub_2991FEBA8(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_2993F9B44();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_2991FEC14(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t sub_2991FEC68(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2991EF744(va, 3, v2, 323);
}

std::string *sub_2991FEC88(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_2991FECA0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_2991FF10C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v12, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v13);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_2991FF10C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v10 = sub_2991EE040(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_2991FF10C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_2991FF10C(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2991FEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FEE40(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2991FEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FEF00(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FF10C(a1) + a2;
}

void sub_2991FEFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FEFE0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FF10C(a1) + a2;
}

void sub_2991FF0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FF0C0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_2991FF10C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_2991FF10C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_2991FF180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_2991FF198(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_2991FECA0(v3, *v3 + *a2);
    sub_2991FEE40(v3, *a2);
    v6 = sub_2991FEF00(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_2991FF10C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_2991FF2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991FF2C4(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_2991FF734(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_2991FF734(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_2991FF734(a1);
  if (*a1 >= 1)
  {
    v13 = sub_2991FF734(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2991FF450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FF468(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2991FF510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FF528(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FF734(a1) + 4 * a2;
}

void sub_2991FF5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FF608(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FF734(a1) + 4 * a2;
}

void sub_2991FF6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FF6E8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_2991FF734(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_2991FF734(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_2991FF7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_2991FF7C0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_2991FF2C4(v3, *v3 + *a2);
    sub_2991FF468(v3, *a2);
    v6 = sub_2991FF528(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_2991FF734(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_2991FF8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991FF8F0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_2991FFD60(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_2991FFD60(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_2991FFD60(a1);
  if (*a1 >= 1)
  {
    v13 = sub_2991FFD60(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2991FFA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FFA94(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2991FFB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FFB54(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FFD60(a1) + 4 * a2;
}

void sub_2991FFC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FFC34(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2991FFD60(a1) + 4 * a2;
}

void sub_2991FFCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991FFD14(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_2991FFD60(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_2991FFD60(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_2991FFDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_2991FFDEC(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_2991FF8F0(v3, *v3 + *a2);
    sub_2991FFA94(v3, *a2);
    v6 = sub_2991FFB54(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_2991FFD60(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_2991FFEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991FFF1C(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_29920038C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_29920038C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_29920038C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_29920038C(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2992000A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992000C0(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_299200168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200180(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_29920038C(a1) + 8 * a2;
}

void sub_299200240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200260(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_29920038C(a1) + 8 * a2;
}

void sub_299200320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200340(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_29920038C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_29920038C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_299200400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_299200418(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_2991FFF1C(v3, *v3 + *a2);
    sub_2992000C0(v3, *a2);
    v6 = sub_299200180(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_29920038C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_299200528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_299200548(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_2992009B8(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_2992009B8(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_2992009B8(a1);
  if (*a1 >= 1)
  {
    v13 = sub_2992009B8(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2992006D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992006EC(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_299200794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992007AC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2992009B8(a1) + 8 * a2;
}

void sub_29920086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29920088C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_2992009B8(a1) + 8 * a2;
}

void sub_29920094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29920096C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_2992009B8(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_2992009B8(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_299200A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_299200A44(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_299200548(v3, *v3 + *a2);
    sub_2992006EC(v3, *a2);
    v6 = sub_2992007AC(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_2992009B8(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_299200B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_299200B74(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_299200FE4(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_299200FE4(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_299200FE4(a1);
  if (*a1 >= 1)
  {
    v13 = sub_299200FE4(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_299200D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200D18(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_299200DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200DD8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_299200FE4(a1) + 4 * a2;
}

void sub_299200E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200EB8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_299200FE4(a1) + 4 * a2;
}

void sub_299200F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299200F98(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_299200FE4(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_299200FE4(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_299201058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_299201070(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_299200B74(v3, *v3 + *a2);
    sub_299200D18(v3, *a2);
    v6 = sub_299200DD8(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_299200FE4(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_299201180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2992011A0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_299201610(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_2991EF75C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
            sub_2991EF8A0(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_299201610(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_2992019D0(v6);
    }

    v12 = sub_2991EE040(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_299201610(a1);
  if (*a1 >= 1)
  {
    v13 = sub_299201610(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_29920132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299201344(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_2991EF75C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_2991EF954(v5, *(a1 + 4));
    v7 = sub_2991EF75C(v6, ", ");
    v8 = sub_2991EF954(v7, *a1);
    sub_2991EF898(&v10, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2992013EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299201404(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_299201610(a1) + 8 * a2;
}

void sub_2992014C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992014E4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*a1 <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return sub_299201610(a1) + 8 * a2;
}

void sub_2992015A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992015C4(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_299201610(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_299201610(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_2991EF744(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_2991EF75C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_2991EF898(&v4, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v5);
  }

  return *(a1 + 8);
}

void sub_299201684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

int *sub_29920169C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_2991EF75C(v10, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_2992011A0(v3, *v3 + *a2);
    sub_299201344(v3, *a2);
    v6 = sub_299201404(v3, v5);
    if (*a2 <= 0)
    {
      sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_2991EF75C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v10);
    }

    v8 = sub_299201610(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_2992017AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992017CC(uint64_t *a1)
{
  sub_299201808(a1);

  return sub_2991E2350(a1);
}

void sub_299201808(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x29C29BFB0](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_2992018A8(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_2992018BC(result, v4);
  }

  return result;
}

uint64_t sub_2992018BC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = v2 + a2;
  v5 = *(a1 + 16);
  if (v3 < v2 + a2)
  {
    v7 = *a1;
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
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        sub_299201A0C(*a1);
      }

      v12 = sub_2991EE040(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 16) = v12;
    *(a1 + 12) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(v12 + 2, v5 + 2, 8 * v13);
      v12 = *(a1 + 16);
      *v12 = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v12 = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        v12 = *(a1 + 16);
      }
    }

    v2 = *(a1 + 8);
    v5 = v12;
  }

  return &v5[2 * v2 + 2];
}

uint64_t *sub_2992019B8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_299201A44(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_2A1F63CE8;
  *(a1 + 16) = &unk_2A1F63CA8;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_2A1F63CA8;
  *(a1 + 40) = 0;
  sub_29919C3A8((a1 + 88));
  sub_299201B38(a1, a2, a3, &v7);
  sub_2991ED50C((a1 + 88), &v7);
  sub_2991ED2F4(&v7);
  return a1;
}

void sub_299201B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991ED2F4(va);
  sub_2991ED2F4((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_299201B38@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_2991BC180(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    result = sub_2991EB7B4(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_2991ED2F4(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_2991BC180(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_2991ED2F4(a4);
        result = sub_2991EB7B4(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_2991ED2F4(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_2991BC180(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_2991ED2F4(a4);
            result = sub_2991EB7B4(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_2991ED2F4(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_2991BBF74(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_2991ED2F4(a4);
                result = sub_2991EB7B4(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_2991ED2F4(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_2991EB724(*(a1 + 48), 4uLL);
                  result = sub_2991EB7B4(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_2991ED2F4(a4);
                    *(a1 + 64) = v13;
                    result = sub_2991EB7B4(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_2991ED2F4(a4);
                      *(a1 + 72) = v13;
                      result = sub_2991EB7B4(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_2991ED2F4(a4);
                        *(a1 + 80) = v13;
                        return sub_29919C3A8(v9);
                      }
                    }
                  }
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

void *sub_299201D7C(void *a1)
{
  *a1 = &unk_2A1F63CE8;
  sub_2991ED2F4(a1 + 11);
  return a1;
}

void sub_299201DC0(void *a1)
{
  *a1 = &unk_2A1F63CE8;
  sub_2991ED2F4(a1 + 11);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299201E2C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_299201E60(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_299201E94(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_299201EC8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_299201EFC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_299201F54(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

BOOL sub_299202020(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v11 = 0;
    v12 = 1;
    v13 = a1;
    while (1)
    {
      v14 = v13 + 1;
      v15 = *&v13[2 * *(a2 + v11) + 1];
      if ((v15 & 3) != 1)
      {
        break;
      }

      v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      ++v11;
      ++v12;
      if (a3 == v11)
      {
        v16 = *v13;
        *v13 = a4;
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_19:
        v8 = 1;
        return v8 != 0;
      }
    }

    if ((v15 & 3) != 2)
    {
      v20 = a3 - v12;
      v21 = (a3 - v12);
      v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
      memcpy((v22 + 14), (a2 + v12), v21);
      *(v22 + 14 + v20) = 0;
      *(v22 + 12) = v20;
      *(v22 + 8) = a4;
      *v22 = 0;
      *&v14[2 * *(a2 + v11)] = v22 | 2;
      goto LABEL_18;
    }

    v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = sub_299204F1C(a1, v25, a2, a3, v12, a4, &v24);
    v18 = v25[0];
    if (v17 >= *(a1 + 2088))
    {
      v18 = sub_299205110(a1, v25[0], &v24);
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v23 = v19 | v18;
    v8 = v24;
    *&v14[2 * *(a2 + v11)] = v23;
    if (v8 == 2)
    {
LABEL_18:
      ++*(a1 + 2060);
      goto LABEL_19;
    }
  }

  return v8 != 0;
}

uint64_t sub_2992021DC(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992021EC(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_2992021F8(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL sub_299202204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 2080) && (*(a1 + 2064) & 1) != 0)
  {
    result = 0;
    v17 = 0;
    if ((a3 - 1) <= 0x3FE && a4)
    {
      v16 = 0;
      sub_299207FB4(v18, a6);
      sub_2992025A8(a1, a1, a2, a3, 0, a4, &v16, &v17, a7, a5, v18);
      sub_299207EB4(v18);
      v15 = v17;
      if (v17 == 2)
      {
        ++*(a1 + 2060);
      }

      result = v15 != 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29920231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299207EB4(va);
  _Unwind_Resume(a1);
}

double sub_299202338(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

void sub_2992023B0(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        sub_299204E24(a1);
      }

      else
      {
        sub_299204EA0(a1);
      }

      free(a1);
    }
  }
}

uint64_t sub_299202440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14[4] = *MEMORY[0x29EDCA608];
  if (a6 < 0)
  {
    v11 = 0xFFFFFFFF00000003;
    v12 = 0;
    v13 = a4;
    sub_299208A00(v14, a5);
    sub_299203300(a1, a2, a3, 0, &v11);
    result = sub_299207F34(v14);
  }

  else
  {
    result = sub_299203554(a1, a2, a3);
    if (result)
    {
      operator new();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992025A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v35 = *MEMORY[0x29EDCA608];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        result = sub_299205720(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v19 = result;
    v31 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v31);
    if ((v20 & 3) == 2)
    {
      v30 = a2 + 12;
      v32 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      sub_299207FB4(v33, a11);
      v22 = sub_2992052BC(v19, &v32, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
      result = sub_299207EB4(v33);
      v23 = v32;
      if (v22 >= *(v19 + 2088))
      {
        result = sub_2992054F8(v19, v32, a7, a8);
        v23 = result;
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v31;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        sub_299207FB4(v34, a11);
        sub_2992025A8(v19, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v34);
        result = sub_299207EB4(v34);
        goto LABEL_15;
      }

      v30 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v31;
      result = memcpy((v26 + 22), v31 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v30 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299202818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_299207EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299202840(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  v104 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_127;
  }

  v6 = a3;
  if (a1[516])
  {
    v101 = a1;
    v89 = 0;
    v90 = 0;
    __p = 0;
    sub_29920804C(&__p, &v101, v102, 1uLL);
    v19 = (a2 + 1);
    v20 = a1;
    do
    {
      v21 = v20 + 12;
      v22 = *(v19 - 1);
      v23 = *(v21 + 8 * v22);
      if ((v23 & 3) == 0)
      {
        goto LABEL_54;
      }

      if ((*(v21 + 8 * v22) & 3) == 2)
      {
        v36 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        v37 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 20);
        if (v37 + 1 == v6 && !memcmp(v19, v36 + 22, v37))
        {
          v44 = *v36;
          free(v36);
          v45 = v44 | 2;
          if (!v44)
          {
            v45 = 0;
          }

          *(v21 + 8 * v22) = v45;
        }

        else
        {
          v38 = *v36;
          if (!*v36)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v39 = v38;
            v40 = *(v38 + 20);
            if (v40 + 1 == v6 && !memcmp(v19, (v38 + 22), v40))
            {
              break;
            }

            v38 = *v39;
            v36 = v39;
            if (!*v39)
            {
              goto LABEL_54;
            }
          }

          *v36 = *v39;
          free(v39);
        }

        goto LABEL_70;
      }

      v20 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = v89;
      if (v89 >= v90)
      {
        v26 = (v89 - __p) >> 3;
        if ((v26 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v27 = (v90 - __p) >> 2;
        if (v27 <= v26 + 1)
        {
          v27 = v26 + 1;
        }

        if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          sub_29920B86C(&__p, v28);
        }

        *(8 * v26) = v20;
        v25 = 8 * v26 + 8;
        v29 = (8 * v26 - (v89 - __p));
        memcpy(v29, __p, v89 - __p);
        v30 = __p;
        __p = v29;
        v89 = v25;
        v90 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v89 = v20;
        v25 = (v24 + 8);
      }

      v89 = v25;
      ++v19;
      --v6;
    }

    while (v6);
    if (!*(v20 + 8))
    {
      goto LABEL_54;
    }

    *(v20 + 8) = 0;
LABEL_70:
    v51 = (v89 - __p) >> 3;
    if (v51 < 2)
    {
      goto LABEL_121;
    }

    v94 = 0;
    v52 = v51 - 1;
    LOBYTE(v53) = 0;
    v54 = a1[522];
    while (1)
    {
      v55 = sub_2992080C0(a1, *(__p + v52));
      v94 = 0;
      v101 = &unk_2A1F63E90;
      v102[0] = &v94;
      v103 = &v101;
      sub_2992035D0(v55, 0, &v101, -1);
      sub_299208CC8(&v101);
      if (v55)
      {
        free(v55);
      }

      if (v94 >= v54)
      {
        break;
      }

      v53 = 1;
      if (!--v52)
      {
        goto LABEL_101;
      }
    }

    if ((v53 & 1) == 0)
    {
LABEL_121:
      v41 = 1;
      goto LABEL_122;
    }

    v53 = v52 + 1;
LABEL_101:
    v91 = 0;
    v92 = 0;
    v93 = 0;
    sub_299208164(&v91, v54);
    v71 = *(__p + v53);
    v72 = sub_2992080C0(a1, v71);
    v98 = &unk_2A1F63F20;
    v99 = &v91;
    v100 = &v98;
    sub_2992035D0(v72, 0, &v98, -1);
    sub_299208CC8(&v98);
    if (v54 <= (v92 - v91) >> 5)
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
    }

    if (v72)
    {
      free(v72);
    }

    sub_299204E24(v71);
    a1[515] -= (v92 - v91) >> 5;
    v73 = __p;
    *(*(__p + v52) + 8 * *(a2 + v52) + 12) = 0;
    if (a3 + 1 < ((v89 - v73) >> 3))
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
    }

    v74 = sub_2992047D0();
    v75 = v74;
    v76 = 0;
    if (v53 <= 1)
    {
      v77 = 1;
    }

    else
    {
      v77 = v53;
    }

    do
    {
      v74[v76] = *(a2 + v76);
      ++v76;
    }

    while (v77 != v76);
    v78 = v91;
    v79 = v92;
    if (v91 == v92)
    {
LABEL_120:
      v95 = &v91;
      sub_29921EB1C(&v95);
      goto LABEL_121;
    }

    v80 = a1[516];
    while (1)
    {
      v81 = *(v78 + 23);
      if ((v81 & 0x8000000000000000) != 0)
      {
        v82 = *v78;
        v81 = *(v78 + 8);
      }

      else
      {
        v82 = v78;
      }

      v83 = *(v78 + 24);
      v84 = *(v78 + 28);
      memcpy((v75 + v53), v82, v81);
      v85 = *(v78 + 23);
      if (v85 < 0)
      {
        v85 = *(v78 + 8);
        if (v80)
        {
LABEL_118:
          v97 = 0;
          sub_299202204(a1, v75, (v85 + v53), v83, 0, v96, v84);
          sub_299207EB4(v96);
          goto LABEL_119;
        }
      }

      else if (v80)
      {
        goto LABEL_118;
      }

      sub_299202020(a1, v75, v85 + v53, v83);
LABEL_119:
      v78 += 32;
      if (v78 == v79)
      {
        goto LABEL_120;
      }
    }
  }

  v101 = a1;
  v89 = 0;
  v90 = 0;
  __p = 0;
  sub_29920859C(&__p, &v101, v102, 1uLL);
  v7 = (a2 + 1);
  v8 = a1;
  do
  {
    v9 = v8 + 1;
    v10 = *(v7 - 1);
    v11 = *&v9[2 * v10];
    if ((v11 & 3) == 0)
    {
      goto LABEL_54;
    }

    if ((*&v9[2 * v10] & 3) == 2)
    {
      v31 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      v32 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 12);
      if (v32 + 1 == v6 && !memcmp(v7, v31 + 14, v32))
      {
        v42 = *v31;
        free(v31);
        v43 = v42 | 2;
        if (!v42)
        {
          v43 = 0;
        }

        *&v9[2 * v10] = v43;
        goto LABEL_62;
      }

      v33 = *v31;
      if (!*v31)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v34 = v33;
        v35 = *(v33 + 12);
        if (v35 + 1 == v6 && !memcmp(v7, (v33 + 14), v35))
        {
          break;
        }

        v33 = *v34;
        v31 = v34;
        if (!*v34)
        {
          goto LABEL_54;
        }
      }

      *v31 = *v34;
      free(v34);
LABEL_62:
      v46 = (v89 - __p) >> 3;
      if (v46 < 2)
      {
        goto LABEL_121;
      }

      v94 = 0;
      v47 = v46 - 1;
      LOBYTE(v48) = 0;
      v49 = a1[522];
      while (1)
      {
        v50 = sub_299208610(a1, *(__p + v47));
        v94 = 0;
        v101 = &unk_2A1F63FA0;
        v102[0] = &v94;
        v103 = &v101;
        sub_2992035D0(v50, 0, &v101, -1);
        sub_299208CC8(&v101);
        if (v50)
        {
          free(v50);
        }

        if (v94 >= v49)
        {
          break;
        }

        v48 = 1;
        if (!--v47)
        {
          goto LABEL_79;
        }
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_121;
      }

      v48 = v47 + 1;
LABEL_79:
      v91 = 0;
      v92 = 0;
      v93 = 0;
      sub_299208164(&v91, v49);
      v56 = *(__p + v48);
      v57 = sub_299208610(a1, v56);
      v98 = &unk_2A1F64020;
      v99 = &v91;
      v100 = &v98;
      sub_2992035D0(v57, 0, &v98, -1);
      sub_299208CC8(&v98);
      if (v49 <= (v92 - v91) >> 5)
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
      }

      if (v57)
      {
        free(v57);
      }

      sub_299204EA0(v56);
      a1[515] -= (v92 - v91) >> 5;
      v58 = __p;
      *(*(__p + v47) + 8 * *(a2 + v47) + 4) = 0;
      if (a3 + 1 < ((v89 - v58) >> 3))
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
      }

      v59 = sub_2992047D0();
      v60 = v59;
      v61 = 0;
      if (v48 <= 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v48;
      }

      do
      {
        v59[v61] = *(a2 + v61);
        ++v61;
      }

      while (v62 != v61);
      v63 = v91;
      v64 = v92;
      if (v91 != v92)
      {
        v65 = a1[516];
        while (1)
        {
          v66 = *(v63 + 23);
          if ((v66 & 0x8000000000000000) != 0)
          {
            v67 = *v63;
            v66 = *(v63 + 8);
          }

          else
          {
            v67 = v63;
          }

          v68 = *(v63 + 24);
          v69 = *(v63 + 28);
          memcpy((v60 + v48), v67, v66);
          v70 = *(v63 + 23);
          if (v70 < 0)
          {
            v70 = *(v63 + 8);
            if (v65)
            {
LABEL_96:
              v97 = 0;
              sub_299202204(a1, v60, (v70 + v48), v68, 0, v96, v69);
              sub_299207EB4(v96);
              goto LABEL_97;
            }
          }

          else if (v65)
          {
            goto LABEL_96;
          }

          sub_299202020(a1, v60, v70 + v48, v68);
LABEL_97:
          v63 += 32;
          if (v63 == v64)
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_120;
    }

    v8 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = v89;
    if (v89 >= v90)
    {
      v14 = (v89 - __p) >> 3;
      if ((v14 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v15 = (v90 - __p) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        sub_29920B86C(&__p, v16);
      }

      *(8 * v14) = v8;
      v13 = 8 * v14 + 8;
      v17 = (8 * v14 - (v89 - __p));
      memcpy(v17, __p, v89 - __p);
      v18 = __p;
      __p = v17;
      v89 = v13;
      v90 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v89 = v8;
      v13 = (v12 + 8);
    }

    v89 = v13;
    ++v7;
    --v6;
  }

  while (v6);
  if (*v8)
  {
    *v8 = 0;
    goto LABEL_62;
  }

LABEL_54:
  v41 = 0;
LABEL_122:
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    --a1[515];
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_127:
  v86 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299203178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a18 = &a14;
  sub_29921EB1C(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299203228(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v13[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 0;
    v12 = 0;
    v13[3] = 0;
    sub_299203300(a1, a2, a3, 1, &v10);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v7 = 0;
    }

    else
    {
      if (a4)
      {
        *a4 = HIDWORD(v10);
      }

      if (a5)
      {
        *a5 = v11;
      }

      v7 = 1;
    }

    sub_299207F34(v13);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_299203300(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x29EDCA608];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = sub_2992047D0();
    memcpy(v10, a2, a3);
    *(v10 + a3) = 0;
    v11 = *(v9 + 2080);
    v12 = *(v9 + 2064);
    if (v11)
    {
      v13 = *(v11 + 4) & 0xFFFFFFFC;
      if (v12)
      {
        v14 = v19;
        v19[0] = &unk_2A1F63DD0;
        v19[1] = sub_299205B5C;
        v19[3] = v19;
        sub_2992057C0(v9, v13 + v11, v10, a3, 0, a4, a5, v19);
      }

      else
      {
        v14 = v18;
        v18[0] = &unk_2A1F63DD0;
        v18[1] = sub_299205B5C;
        v18[3] = v18;
        sub_299205BE8(v9, v13 + v11, v10, a3, 0, a4, a5, v18);
      }
    }

    else if (v12)
    {
      v14 = v17;
      v17[0] = &unk_2A1F63DD0;
      v17[1] = sub_299205B5C;
      v17[3] = v17;
      sub_299205F80(v9, v10, a3, 0, a4, a5, v17);
    }

    else
    {
      v14 = v16;
      v16[0] = &unk_2A1F63DD0;
      v16[1] = sub_299205B5C;
      v16[3] = v16;
      sub_29920624C(v9, v10, a3, 0, a4, a5, v16);
    }

    result = sub_299206D94(v14);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29920351C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_299206D94(va);
  _Unwind_Resume(a1);
}

void *sub_299203554(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
  if (!sub_299204054(a1, v6, a2, a3) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

uint64_t sub_2992035D0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v7 = result;
    result = sub_2992047D0();
    v8 = result;
    v17 = 0;
    v9 = *(v7 + 28);
    if (!v9)
    {
      v14 = *v7;
      v15 = *(v7 + 16);
      v16 = *(v7 + 24);
      v12 = *(v7 + 32);
      sub_299208D48(v18, a3);
      sub_2992048A0(v12, &v14, v8, 0, &v17, a4, a2, v18);
      v11 = v18;
      goto LABEL_6;
    }

    if (v9 == 1)
    {
      v14 = *v7;
      v15 = *(v7 + 16);
      v10 = *(v7 + 32);
      sub_299208D48(v19, a3);
      sub_2992037BC(v10, &v14, v8, 0x1000u, 0, &v17, a2, v19);
      v11 = v19;
LABEL_6:
      result = sub_299208CC8(v11);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299203710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_299208CC8(va);
  _Unwind_Resume(a1);
}

void sub_299203738(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_299203744(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  v10 = a7;
  v9 = a6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_2991A2240();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t sub_2992037BC(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  v67 = *MEMORY[0x29EDCA608];
  v14 = *a2 & 3;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_299208D48(v63, a8);
      v16 = *(v13 + 2064);
      v17 = ((*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080));
      if (v16)
      {
        v18 = sub_299208D48(v66, v63);
        v27 = *v17 - 8;
        if (*v17 != 8)
        {
          v28 = 0;
          do
          {
            v29 = v17 + v28 + 8;
            v30 = *(v29 + 8);
            v31 = *(a2 + 12);
            if (v30 >= v31)
            {
              v32 = v30 - v31;
              memcpy((a3 + a5), (v29 + v31 + 10), v30 - v31);
              *(a3 + v32 + a5) = 0;
              sub_299203744(v66, a7, a3, *(v29 + 8), *(v29 + 4), a6, *v29);
              LODWORD(v30) = *(v29 + 8);
            }

            v28 += v30 + 10;
          }

          while (v28 < v27);
          goto LABEL_36;
        }
      }

      else if ((v16 & 4) != 0)
      {
        v18 = sub_299208D48(v66, v63);
        v33 = *v17 - 4;
        v34 = *(a2 + 8);
        if (v34 < v33)
        {
          v35 = v17 + 1;
          do
          {
            v36 = v35 + v34;
            v37 = *(v36 + 2);
            v38 = *(a2 + 12);
            if (v37 >= v38)
            {
              v40 = v37 - v38;
              memcpy((a3 + a5 + v36[6]), &v36[v38 + 7], v37 - v38);
              *(a3 + v40 + a5 + v36[6]) = 0;
              sub_299203744(v66, a7, a3, *(v36 + 2), *v36, a6, 0.0);
              v39 = *(v36 + 2) + *(a2 + 8);
            }

            else
            {
              v39 = v34 + v37;
            }

            v34 = v39 + 7;
            *(a2 + 8) = v34;
          }

          while (v34 < v33);
          goto LABEL_36;
        }
      }

      else
      {
        v18 = sub_299208D48(v66, v63);
        v19 = *v17 - 4;
        v20 = *(a2 + 8);
        if (v20 < v19)
        {
          do
          {
            v21 = v17 + v20 + 4;
            v22 = *(v21 + 4);
            v23 = *(a2 + 12);
            if (v22 >= v23)
            {
              v25 = v22 - v23;
              memcpy((a3 + a5), (v21 + v23 + 6), v22 - v23);
              *(a3 + v25 + a5) = 0;
              sub_299203744(v66, a7, a3, *(v21 + 4), *v21, a6, *v21);
              v24 = *(v21 + 4) + *(a2 + 8);
            }

            else
            {
              v24 = v20 + v22;
            }

            v20 = v24 + 6;
            *(a2 + 8) = v20;
          }

          while (v20 < v19);
LABEL_36:
          v18 = v66;
        }
      }

      sub_299208CC8(v18);
      v15 = v63;
      goto LABEL_63;
    }

    sub_299208D48(v64, a8);
    v26 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080);
    if ((*(v13 + 2064) & 1) == 0)
    {
      if (*(v26 + 32))
      {
        *(a3 + a5) = 0;
        sub_299203744(v64, a7, a3, a5, *(v26 + 32), a6, 0.0);
        if (a5 >= a4 || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }

LABEL_39:
        v41 = 0;
        v42 = a4 - 1;
        while (1)
        {
          *(a3 + a5) = v41;
          v43 = *(v26 + 8 * (v41 >> 6));
          if ((v43 & (1 << v41)) != 0)
          {
            if (v41 >= 0x40)
            {
              v44 = 0;
              v45 = v41 >> 6;
              v46 = v26;
              do
              {
                v47 = *v46++;
                v48 = vcnt_s8(v47);
                v48.i16[0] = vaddlv_u8(v48);
                v44 += v48.i32[0];
                --v45;
              }

              while (v45);
            }

            else
            {
              v44 = 0;
            }

            v49 = vcnt_s8((v43 & ((1 << v41) - 1)));
            v49.i16[0] = vaddlv_u8(v49);
            *a2 = *(v26 + 36 + 4 * (v44 + v49.i32[0]));
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            sub_299208D48(v66, v64);
            sub_2992037BC(v13, a2, a3, v42, a5 + 1, a6, a7, v66);
            sub_299208CC8(v66);
            if (v41 > 0xFE || (*a6 & 1) != 0)
            {
              goto LABEL_62;
            }
          }

          else if (v41 > 0xFE)
          {
            goto LABEL_62;
          }

          ++v41;
        }
      }

      if (a5 < a4)
      {
        goto LABEL_39;
      }

LABEL_62:
      v15 = v64;
      goto LABEL_63;
    }

    if (*(v26 + 40))
    {
      *(a3 + a5) = 0;
      sub_299203744(v64, a7, a3, a5, *(v26 + 40), a6, *(v26 + 36));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_62;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_62;
    }

    v50 = 0;
    v51 = a4 - 1;
    while (1)
    {
      *(a3 + a5) = v50;
      v52 = *(v26 + 8 * (v50 >> 6));
      if ((v52 & (1 << v50)) != 0)
      {
        if (v50 >= 0x40)
        {
          v53 = 0;
          v54 = v50 >> 6;
          v55 = v26;
          do
          {
            v56 = *v55++;
            v57 = vcnt_s8(v56);
            v57.i16[0] = vaddlv_u8(v57);
            v53 += v57.i32[0];
            --v54;
          }

          while (v54);
        }

        else
        {
          v53 = 0;
        }

        v58 = vcnt_s8((v52 & ((1 << v50) - 1)));
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *(v26 + 44 + 4 * (v53 + v58.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v59;
        sub_299208D48(v66, v64);
        sub_2992037BC(v13, a2, a3, v51, a5 + 1, a6, a7, v66);
        sub_299208CC8(v66);
        if (v50 > 0xFE || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 > 0xFE)
      {
        goto LABEL_62;
      }

      ++v50;
    }
  }

  if (v14)
  {
    sub_299208D48(v65, a8);
    v15 = v65;
    sub_299203E00(v13, a2, a3, a4, a5, a6, a7, v65);
    goto LABEL_63;
  }

  if (*a2 == *(*(result + 2080) + 4))
  {
    sub_299208D48(v62, a8);
    v15 = v62;
    sub_299203E00(v13, a2, a3, a4, a5, a6, a7, v62);
LABEL_63:
    result = sub_299208CC8(v15);
  }

  v60 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299203D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299208CC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299203E00(uint64_t result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v27 = *MEMORY[0x29EDCA608];
  v13 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
  v14 = *(v13 + 1024);
  if (*(result + 2064))
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = sub_299203744(a8, a7, a3, 0, *(v13 + 1024), a6, *(v13 + 1032));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v18 = 0;
    do
    {
      *(a3 + a5) = v18;
      v19 = *(v13 + 4 * v18);
      if (v18)
      {
        v20 = a5 + 1;
      }

      else
      {
        v20 = a5;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v19;
      sub_299208D48(v26, a8);
      sub_2992037BC(v12, a2, a3, a4 - (v18 != 0), v20, a6, a7, v26);
      result = sub_299208CC8(v26);
      if (*a6)
      {
        break;
      }

      v17 = v18++ == 255;
    }

    while (!v17);
  }

  else
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = sub_299203744(a8, a7, a3, 0, *(v13 + 1024), a6, 0.0);
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v15 = 0;
    do
    {
      *(a3 + a5) = v15;
      *a2 = *(v13 + 4 * v15);
      a2[1] = 0;
      *(a2 + 4) = 0;
      if (v15)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      sub_299208D48(v25, a8);
      sub_2992037BC(v12, a2, a3, a4 - (v15 != 0), v16, a6, a7, v25);
      result = sub_299208CC8(v25);
      if (*a6)
      {
        break;
      }

      v17 = v15++ == 255;
    }

    while (!v17);
  }

LABEL_27:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29920402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_299208CC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299204054(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a1 || !a2 || !sub_2992040C8(a1, a2))
  {
    return 0;
  }

  return sub_29920413C(a2, a3, a4);
}

uint64_t sub_2992040C8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 32) = a1;
  v2 = *(a1 + 2080);
  if (v2)
  {
    if (*v2 == -900339842 || *v2 == 12648430 && v2[7] == 2)
    {
      result = 1;
      *(a2 + 28) = 1;
      v4 = v2[1];
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      return result;
    }

    return 0;
  }

  *(a2 + 28) = 0;
  *(a2 + 8) = a1 | 1;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t sub_29920413C(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 28);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *result;
        v6 = *(result + 8);
        v7 = *(result + 16);
        v8 = *(result + 20);
        result = sub_2992041F8(*(result + 32), result, a2, a3);
        if (!result)
        {
          *v3 = v5;
          *(v3 + 8) = v6;
          *(v3 + 16) = v7;
          *(v3 + 20) = v8;
          return result;
        }

        return 1;
      }

      return 0;
    }

    else
    {
      v10 = *result;
      v9 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 24);
      result = sub_2992046E8(*(result + 32), result, a2, a3);
      if (result)
      {
        return 1;
      }

      *v3 = v10;
      *(v3 + 8) = v9;
      *(v3 + 16) = v11;
      *(v3 + 24) = v12;
    }
  }

  return result;
}

uint64_t sub_2992041F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *a2;
  v9 = *a2 & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (v8 == *(*(a1 + 2080) + 4))
      {
        v10 = sub_2992079C8(a1, a2, a3, a4);
        return v10 & 1;
      }

LABEL_23:
      v10 = 0;
      return v10 & 1;
    }

    v20 = sub_2992079C8(a1, a2, a3, a4);
    goto LABEL_70;
  }

  if (v9 != 2)
  {
    v21 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
    if (*(a1 + 2064))
    {
      if (a4)
      {
        v27 = *a3;
        v28 = v27 >> 6;
        v29 = v21[v27 >> 6];
        v30 = 1 << v27;
        if (((1 << v27) & *&v29) != 0)
        {
          if (v27 >= 0x40)
          {
            v31 = 0;
            v57 = v21;
            do
            {
              v58 = *v57++;
              v59 = vcnt_s8(v58);
              v59.i16[0] = vaddlv_u8(v59);
              v31 += v59.i32[0];
              --v28;
            }

            while (v28);
          }

          else
          {
            v31 = 0;
          }

          v60 = vcnt_s8(((v30 - 1) & *&v29));
          v60.i16[0] = vaddlv_u8(v60);
          v56 = v21[5].u32[v31 + v60.i32[0] + 1];
          goto LABEL_69;
        }

        goto LABEL_43;
      }

      *(a2 + 16) = v21[5].i32[0];
      *(a2 + 20) = v21[4].i32[1];
    }

    else
    {
      if (a4)
      {
        v22 = *a3;
        v23 = v22 >> 6;
        v24 = v21[v22 >> 6];
        v25 = 1 << v22;
        if (((1 << v22) & *&v24) != 0)
        {
          if (v22 >= 0x40)
          {
            v26 = 0;
            v52 = v21;
            do
            {
              v53 = *v52++;
              v54 = vcnt_s8(v53);
              v54.i16[0] = vaddlv_u8(v54);
              v26 += v54.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v26 = 0;
          }

          v55 = vcnt_s8(((v25 - 1) & *&v24));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v21[4].u32[v26 + v55.i32[0] + 1];
LABEL_69:
          sub_299207A80(a1, a2, v56);
          v20 = sub_2992041F8(a1, a2, a3 + 1, a4 - 1);
          goto LABEL_70;
        }

LABEL_43:
        v20 = 0;
LABEL_70:
        v61 = v20 == 0;
LABEL_71:
        v10 = !v61;
        return v10 & 1;
      }

      *(a2 + 16) = v21[4].i32[0];
    }

    v20 = 1;
    goto LABEL_70;
  }

  v11 = *(a1 + 2064);
  v12 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
  v13 = *v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13 - 4;
    if (v13 == 4)
    {
      goto LABEL_23;
    }

    if ((v11 & 4) != 0)
    {
      if (a4)
      {
        v44 = *(a2 + 8);
        if (v44 >= v14)
        {
          goto LABEL_23;
        }

        v45 = 0;
        v46 = v12 + 1;
        while (1)
        {
          v47 = v46 + v44;
          v48 = v47[6];
          LODWORD(v49) = v48;
          if (v48 < a4)
          {
            if (v48 <= *(v47 + 2))
            {
              v49 = *(v47 + 2);
            }

            else
            {
              v49 = v47[6];
            }

            v50 = v47[6];
            while (v49 != v50)
            {
              if (v47[(v50 + *(a2 + 12)) + 7] != a3[v45 + v50])
              {
                LODWORD(v49) = v50;
                break;
              }

              if (a4 == ++v50)
              {
                LODWORD(v49) = a4;
                break;
              }
            }
          }

          v45 += v49;
          v51 = *(v47 + 2);
          if (v45 == a4)
          {
            break;
          }

          v10 = 0;
          v44 += v51 + 7;
          *(a2 + 8) = v44;
          if (v44 >= v14)
          {
            return v10 & 1;
          }
        }

        v64 = *(a2 + 12) + a4;
        *(a2 + 16) = 0;
        if (v51 + v48 == v64)
        {
          *(a2 + 16) = *v47;
        }

        goto LABEL_87;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4) | v63[10])
      {
LABEL_78:
        *(a2 + 16) = 0;
        goto LABEL_88;
      }
    }

    else
    {
      if (a4)
      {
        v15 = *(a2 + 8);
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        v16 = v12 + 1;
        v17 = *(a2 + 12);
        while (1)
        {
          v18 = v16 + v15;
          v19 = *(v18 + 2);
          if (v19 >= v17 && !memcmp(&v18[v17 + 6], a3, a4))
          {
            break;
          }

          v10 = 0;
          v15 += v19 + 6;
          *(a2 + 8) = v15;
          if (v15 >= v14)
          {
            return v10 & 1;
          }
        }

        *(a2 + 16) = 0;
        if (v19 - v17 == a4)
        {
          *(a2 + 16) = *v18;
        }

        v64 = v17 + a4;
LABEL_87:
        *(a2 + 12) = v64;
        goto LABEL_88;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4))
      {
        goto LABEL_78;
      }
    }

    *(a2 + 16) = 0;
    *(a2 + 16) = *(v63 + 1);
    goto LABEL_88;
  }

  if (v13 == 4)
  {
    goto LABEL_23;
  }

  v32 = *(a2 + 8);
  v33 = *(a2 + 12);
  v34 = *(a2 + 16);
  v35 = *(a2 + 20);
  v36 = v13 - 8;
  if (v13 == 8)
  {
    v38 = 0;
LABEL_76:
    *(a2 + 8) = v32;
    *(a2 + 12) = v33;
    *(a2 + 16) = v34;
    *(a2 + 20) = v35;
    v61 = v38 == 0;
    goto LABEL_71;
  }

  v37 = 0;
  v38 = 0;
  v39 = *(a2 + 12);
  v40 = v12 + 2;
  v41 = v33 + a4;
  while (1)
  {
    while (1)
    {
      v42 = v40 + v37;
      v43 = *(v42 + 4);
      if (v41 <= v43)
      {
        break;
      }

      v37 += v43 + 10;
      if (v37 >= v36)
      {
        goto LABEL_76;
      }
    }

    v66 = v38;
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v65 = v39;
    if (!memcmp(&v42[v39 + 10], a3, a4))
    {
      break;
    }

    v33 = v68;
    v32 = v69;
    v38 = v66;
    v34 = v67;
LABEL_41:
    v37 += v43 + 10;
    v39 = v65;
    if (v37 >= v36)
    {
      goto LABEL_76;
    }
  }

  if (v41 != v43)
  {
    v34 = v67;
    v33 = v68;
    if (!v66)
    {
      v34 = 0;
      v33 = v68 + a4;
    }

    v32 = v69;
    if (!v66)
    {
      v32 = v37;
      v35 = 0.0;
    }

    v38 = 1;
    goto LABEL_41;
  }

  *(a2 + 16) = 0;
  *(a2 + 16) = *(v42 + 1);
  *(a2 + 20) = *v42;
  *(a2 + 8) = v37;
  *(a2 + 12) = v41;
LABEL_88:
  v10 = 1;
  return v10 & 1;
}

uint64_t sub_2992046E8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *(a2 + 8);
  if ((v8 & 3) == 2)
  {
    v11 = sub_299207B48(a1, a2, a3, a4) != 0;
  }

  else
  {
    if ((v8 & 3) == 1)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(a1 + 2064))
      {
        if (a4)
        {
          v10 = 3;
          goto LABEL_10;
        }

        *(a2 + 20) = v9[2];
        *(a2 + 24) = v9[1];
      }

      else
      {
        if (a4)
        {
          v10 = 1;
LABEL_10:
          sub_299207E18(a1, a2, *&v9[2 * *a3 + v10]);
          v11 = sub_2992046E8(a1, a2, a3 + 1, a4 - 1);
          return v11 & 1;
        }

        *(a2 + 20) = *v9;
      }

      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

void *sub_2992047D0()
{
  if ((atomic_load_explicit(&qword_2A145FD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FD98))
  {
    v2 = 0;
    pthread_key_create(&v2, MEMORY[0x29EDCA938]);
    qword_2A145FD90 = v2;
    __cxa_guard_release(&qword_2A145FD98);
  }

  v0 = pthread_getspecific(qword_2A145FD90);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(qword_2A145FD90, v0);
  }

  return v0;
}

uint64_t sub_2992048A0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x29EDCA608];
  LODWORD(v14) = *(result + 2064);
  v15 = *(a2 + 8) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_55;
    }

    if (v14)
    {
      sub_299208D48(v60, a8);
      v36 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
      if (!v36)
      {
        goto LABEL_41;
      }

      __dst = (v36 + 22);
      v37 = *(a2 + 16);
      do
      {
        v38 = *(v36 + 20);
        if (v38 >= v37)
        {
          v39 = v38 - v37;
          if (a6 < 0 || v39 <= a6)
          {
            if (v37)
            {
              v40 = (v36 + 22);
              v41 = __dst;
              v42 = v37;
              while (1)
              {
                v44 = *v40++;
                v43 = v44;
                v45 = *v41++;
                if (v43 != v45)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
LABEL_37:
              v46 = v39 + a4;
              memcpy((a3 + a4), (v36 + v37 + 22), v39);
              *(a3 + v46) = 0;
              sub_299203744(v60, a7, a3, v46, *(v36 + 16), a5, *(v36 + 12));
            }
          }
        }

        v36 = *v36;
      }

      while (v36);
    }

    else
    {
      sub_299208D48(v59, a8);
      v18 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v19 = *(a2 + 16);
      if (v19 > *(v18 + 12))
      {
        __assert_rtn("traverseFromMapCursorTrieList", "BurstTrie.cpp", 1957, "cursor.prfxlen <= head->restlen");
      }

      if (v18)
      {
        v56 = (v18 + 14);
        v20 = *(a2 + 16);
        v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v57 = v14;
        while (1)
        {
          v22 = *(v21 + 12);
          if (v21 != v18)
          {
            if (v22 <= v20)
            {
              goto LABEL_39;
            }

            if (v19)
            {
              break;
            }
          }

LABEL_19:
          v29 = v22 - v19;
          if (a6 < 0 || v29 <= a6)
          {
            v14 = v20;
            v30 = v18;
            v31 = v29 + a4;
            v32 = v19;
            memcpy((a3 + a4), (v21 + v19 + 14), v29);
            *(a3 + v31) = 0;
            v33 = sub_299208D48(v63, v59);
            sub_299203744(v33, a7, a3, v31, *(v21 + 8), a5, 0.0);
            sub_299208CC8(v63);
            v18 = v30;
            v20 = v14;
            LOBYTE(v14) = v57;
            v19 = v32;
          }

          v21 = *v21;
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        v23 = (v21 + 14);
        v24 = v56;
        v25 = v19;
        while (1)
        {
          v27 = *v23++;
          v26 = v27;
          v28 = *v24++;
          if (v26 != v28)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_39:
    if ((v14 & 1) == 0)
    {
      v47 = v59;
LABEL_54:
      result = sub_299208CC8(v47);
      goto LABEL_55;
    }

LABEL_41:
    v47 = v60;
    goto LABEL_54;
  }

  if (v15)
  {
    v16 = result;
    if ((v14 & 1) == 0)
    {
      sub_299208D48(v61, a8);
      v17 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      if (*v17)
      {
        sub_299203744(v61, a7, a3, a4, *v17, a5, *(a2 + 24));
        if (!a6 || (*a5 & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (!a6)
      {
LABEL_47:
        v47 = v61;
        goto LABEL_54;
      }

      v48 = 0;
      v49 = v17 + 1;
      v50 = (a6 - 1);
      do
      {
        *(a3 + a4) = v48;
        sub_299207E18(v16, a2, *&v49[2 * v48]);
        sub_299208D48(v63, v61);
        sub_2992048A0(v16, a2, a3, a4 + 1, a5, v50, a7, v63);
        sub_299208CC8(v63);
        if (*a5)
        {
          break;
        }

        v51 = v48++ == 255;
      }

      while (!v51);
      goto LABEL_47;
    }

    sub_299208D48(v62, a8);
    v34 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 8);
    if (v35)
    {
      sub_299203744(v62, a7, a3, a4, v35, a5, *(a2 + 24));
      if (!a6 || (*a5 & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (!a6)
    {
LABEL_53:
      v47 = v62;
      goto LABEL_54;
    }

    v52 = 0;
    v53 = v34 + 12;
    v54 = (a6 - 1);
    do
    {
      *(a3 + a4) = v52;
      sub_299207E18(v16, a2, *(v53 + 8 * v52));
      sub_299208D48(v63, v62);
      sub_2992048A0(v16, a2, a3, a4 + 1, a5, v54, a7, v63);
      sub_299208CC8(v63);
      if (*a5)
      {
        break;
      }

      v51 = v52++ == 255;
    }

    while (!v51);
    goto LABEL_53;
  }

LABEL_55:
  v55 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299204CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_299208CC8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_299204D40(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    v2 = v1[7];
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_7:
        result[7] = v2;
        *(result + 4) = *(v1 + 4);
        return result;
      }

      *result = *v1;
      result[2] = v1[2];
      v3 = 5;
      v4 = 4;
      v5 = 3;
    }

    else
    {
      *result = *v1;
      v3 = 6;
      v4 = 5;
      v5 = 4;
    }

    result[v5] = v1[v5];
    result[v4] = v1[v4];
    result[v3] = v1[v3];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_299204DEC(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[7];
  if (!v2)
  {
    v3 = a1[5];
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  if (a2)
  {
    *a2 = v3;
  }

  return 1;
}

void sub_299204E24(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      sub_299204E24(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void sub_299204EA0(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      sub_299204EA0(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t sub_299204F1C(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v12 = a1;
  v13 = *a2;
  v14 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v15 = (a3 + a5);
  if (v13)
  {
    v31 = v12;
    v32 = a7;
    v16 = 0;
    v17 = 1;
LABEL_3:
    v18 = &v14[v16];
    LODWORD(v19) = v16++;
    do
    {
      v20 = *(v13 + 6);
      if (v20 + a5 == a4 && !memcmp(v15, v13 + 14, v20))
      {
        v17 = 0;
        *(v13 + 2) = a6;
        *v18 = v13;
        v13 = *v13;
        if (v13)
        {
          goto LABEL_3;
        }

        v19 = (v19 + 1);
        goto LABEL_14;
      }

      *v18++ = v13;
      v13 = *v13;
      v19 = (v19 + 1);
      ++v16;
    }

    while (v13);
    if (v17)
    {
      v12 = v31;
      a7 = v32;
      goto LABEL_13;
    }

LABEL_14:
    v23 = 1;
    v12 = v31;
    a7 = v32;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_13:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v15, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v14[v19] = v22;
    v23 = 2;
    v19 = (v19 + 1);
    *(v22 + 2) = a6;
  }

  qsort(v14, v19, 8uLL, sub_299205274);
  v24 = *v14;
  v25 = *v14;
  if (v19 >= 2)
  {
    v26 = v14 + 1;
    v27 = v19 - 1;
    v28 = *v14;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v14);
  *a7 = v23;
  if (v19 > *(v12 + 2088))
  {
    sub_2993F9DA8();
  }

  return v19;
}

int *sub_299205110(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      if (*(a2 + 6))
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v21 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = sub_299204F1C(a1, &v21, a2 + 14, v9, 1u, v10, a3);
          v13 = v21;
          if (v12 >= *(a1 + 2088))
          {
            v13 = sub_299205110(a1, v21, a3);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v17 = v14 | v13;
          v18 = *(a2 + 14);
        }

        else
        {
          v15 = (v9 - 1);
          v16 = malloc_type_calloc(1uLL, v15 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v16 + 14), a2 + 15, v15);
          *(v16 + 14 + v15) = 0;
          *(v16 + 12) = v15;
          *(v16 + 8) = v10;
          *v16 = 0;
          v17 = v16 | 2;
          v18 = *(a2 + 14);
        }

        *&v8[8 * v18] = v17;
      }

      else
      {
        *v7 = v10;
      }

      v19 = *a2;
      free(a2);
      a2 = v19;
    }

    while (v19);
  }

  return v7;
}

uint64_t sub_299205274(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 12);
  v3 = *(*a2 + 12);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    v5 = *(*a2 + 12);
  }

  else
  {
    v5 = *(*a1 + 12);
  }

  LODWORD(result) = memcmp((*a1 + 14), (*a2 + 14), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2992052BC(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  v18 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v19 = (a3 + a5);
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v23 = v20;
      v24 = *(v17 + 10);
      if (v24 + a5 == a4 && !memcmp(v19, v17 + 22, v24))
      {
        *(v17 + 4) = a6;
        v25 = *(v17 + 3);
        if (*(a11 + 24))
        {
          sub_299205720(a11, a10, v25, a9);
        }

        else
        {
          v26 = v25 + a9;
        }

        *(v17 + 3) = v26;
        v21 = 1;
      }

      if (*(v17 + 2) > v22)
      {
        v22 = *(v17 + 2);
      }

      ++v20;
      v18[v23] = v17;
      v17 = *v17;
    }

    while (v17);
    if (v21)
    {
      v27 = 1;
      v28 = v23 + 1;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v22 = 0.0;
  }

  if (v22 < a9)
  {
    v22 = a9;
  }

  v29 = a4 - a5;
  v30 = malloc_type_calloc(1uLL, v29 + 23, 0x10200402E77EEF7uLL);
  memcpy(v30 + 22, v19, v29);
  v30[v29 + 22] = 0;
  *(v30 + 10) = v29;
  *(v30 + 4) = a6;
  *(v30 + 2) = v22;
  *(v30 + 3) = a9;
  v28 = (v20 + 1);
  v27 = 2;
  *v30 = 0;
  v18[v20] = v30;
LABEL_18:
  qsort(v18, v28, 8uLL, sub_299205780);
  v31 = *v18;
  *a7 = v22;
  v32 = v31;
  if (v28 >= 2)
  {
    v33 = (v28 - 1);
    v34 = v18 + 1;
    v35 = v31;
    do
    {
      v36 = *v34++;
      v32 = v36;
      *v35 = v36;
      *(v36 + 8) = *a7;
      v35 = v36;
      --v33;
    }

    while (v33);
  }

  *v32 = 0;
  *a2 = v31;
  free(v18);
  *a8 = v27;
  if (v28 > *(a1 + 2088))
  {
    sub_2993F9DD4();
  }

  return v28;
}

float *sub_2992054F8(uint64_t a1, unsigned __int16 *a2, float *a3, int *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x80CuLL, 0x10000408B9410F9uLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = v8 + 12;
    do
    {
      v25 = 0.0;
      v11 = a2[10];
      v12 = *(a2 + 4);
      v13 = *(a2 + 3);
      v28 = 0;
      if (v11)
      {
        v14 = *&v10[8 * *(a2 + 22)];
        if (v14)
        {
          v26 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          v30 = 0;
          v15 = sub_2992052BC(a1, &v26, (a2 + 11), v11, 1u, v12, &v25, a4, v13, 0, v29);
          sub_299207EB4(v29);
          v16 = v26;
          if (v15 >= *(a1 + 2088))
          {
            v16 = sub_2992054F8(a1, v26, &v25, a4);
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *&v10[8 * *(a2 + 22)] = v17 | v16;
          v13 = v25;
        }

        else
        {
          v18 = (v11 - 1);
          v19 = malloc_type_calloc(1uLL, v18 + 23, 0x10200402E77EEF7uLL);
          memcpy((v19 + 22), a2 + 23, v18);
          *(v19 + 22 + v18) = 0;
          *(v19 + 20) = v18;
          *(v19 + 16) = v12;
          *(v19 + 8) = v13;
          *(v19 + 12) = v13;
          *v19 = 0;
          *&v10[8 * *(a2 + 22)] = v19 | 2;
        }
      }

      else
      {
        v9[1] = v13;
        *(v9 + 2) = v12;
      }

      sub_299207EB4(v27);
      v20 = *a3;
      if (v13 > *a3)
      {
        v20 = v13;
      }

      *a3 = v20;
      v21 = *a2;
      free(a2);
      a2 = v21;
    }

    while (v21);
    v22 = *a3;
  }

  else
  {
    v22 = 0.0;
  }

  *v9 = v22;
  v23 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2992056FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_299207EB4(va1);
  sub_299207EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299205720(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_299205780(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 12);
  v3 = *(*a2 + 12);
  if (v2 == v3)
  {
    v4 = *(*a1 + 16);
    v5 = *(*a2 + 16);
    v6 = v4 == v5;
    if (v4 > v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else if (v2 <= v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2992057C0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v42 = *MEMORY[0x29EDCA608];
  v35 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v19 = *(a2 + 1032);
      v34 = a6;
      v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v20[4] = a4;
      *(v20 + a4 + 20) = 0;
      LOBYTE(v10) = v34;
      memcpy(v20 + 5, a3, a4);
      v20[2] = v18;
      *v20 = v19;
      v20[3] = 1;
      sub_299206B30(a8, a7, v20, 1, &v35);
      v21 = v20[3]-- == 1;
      if (v21)
      {
        free(v20);
      }

      v17 = v35;
      if (v35)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(a2 + 4 * v25);
      a3[a5] = v25;
      if ((v26 & 3u) > 1uLL)
      {
        v29 = *(a1 + 2080);
        if ((v26 & 3) == 2)
        {
          sub_299206B9C(v36, a8);
          v35 = sub_299206978(((v26 & 0xFFFFFFFC) + v29), a3, a4 + 1, a5 + 1, 0, a7, v36);
          v28 = v36;
        }

        else
        {
          sub_299206B9C(v37, a8);
          v35 = sub_29920650C(a1, ((v26 & 0xFFFFFFFC) + v29), a3, (a4 + 1), a5 + 1, 0, a7, v37);
          v28 = v37;
        }
      }

      else
      {
        if ((v26 & 3) == 0)
        {
          goto LABEL_23;
        }

        v27 = *(a1 + 2080);
        sub_299206B9C(v38, a8);
        v35 = sub_2992057C0(a1, (v26 & 0xFFFFFFFC) + v27, a3, (a4 + 1), a5 + 1, 0, a7, v38);
        v28 = v38;
      }

      sub_299206D94(v28);
LABEL_23:
      v17 = v35;
      if ((v35 & 1) == 0)
      {
        v21 = v25++ == 255;
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    if ((v16 & 3) == 2)
    {
      v22 = *(a1 + 2080);
      sub_299206B9C(v39, a8);
      v23 = v39;
      v24 = sub_299206978(((v16 & 0xFFFFFFFC) + v22), a3, a4, a5 + 1, v10, a7, v39);
    }

    else
    {
      v31 = *(a1 + 2080);
      sub_299206B9C(v40, a8);
      v23 = v40;
      v24 = sub_29920650C(a1, ((v16 & 0xFFFFFFFC) + v31), a3, a4, a5 + 1, v10, a7, v40);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v30 = *(a1 + 2080);
    sub_299206B9C(v41, a8);
    v23 = v41;
    v24 = sub_2992057C0(a1, (v16 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, v10, a7, v41);
LABEL_29:
    v17 = v24;
    sub_299206D94(v23);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v32 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t sub_299205B5C(uint64_t result, _DWORD *a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = a2[2];
      *(result + 8) = *a2;
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v5 = 0;
    if (*(result + 48))
    {
      result = sub_299206C34(result + 24, *(result + 16), a2, &v5);
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_299205BE8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v40 = *MEMORY[0x29EDCA608];
  v33 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v32 = a6;
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      LOBYTE(v10) = v32;
      memcpy(v19 + 5, a3, a4);
      v19[2] = v18;
      *v19 = 0;
      v19[3] = 1;
      sub_299206B30(a8, a7, v19, 1, &v33);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v17 = v33;
      if (v33)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(a2 + 4 * v24);
      a3[a5] = v24;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *(a1 + 2080);
        if ((v25 & 3) == 2)
        {
          sub_299206B9C(v34, a8);
          v33 = sub_29920727C(a1, ((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v34);
          v27 = v34;
        }

        else
        {
          sub_299206B9C(v35, a8);
          v33 = sub_299206E14(a1, ((v25 & 0xFFFFFFFC) + v28), a3, (a4 + 1), a5 + 1, 0, a7, v35);
          v27 = v35;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(a1 + 2080);
        sub_299206B9C(v36, a8);
        v33 = sub_299205BE8(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v36);
        v27 = v36;
      }

      sub_299206D94(v27);
LABEL_23:
      v17 = v33;
      if ((v33 & 1) == 0)
      {
        v20 = v24++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    v21 = *(a1 + 2080);
    if ((v16 & 3) == 2)
    {
      sub_299206B9C(v37, a8);
      v22 = v37;
      v23 = sub_29920727C(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v37);
    }

    else
    {
      sub_299206B9C(v38, a8);
      v22 = v38;
      v23 = sub_299206E14(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v38);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v29 = *(a1 + 2080);
    sub_299206B9C(v39, a8);
    v22 = v39;
    v23 = sub_299205BE8(a1, (v16 & 0xFFFFFFFC) + v29, a3, a4, a5 + 1, v10, a7, v39);
LABEL_29:
    v17 = v23;
    sub_299206D94(v22);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v30 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t sub_299205F80(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x29EDCA608];
  v29 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 4);
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      memcpy(v19 + 5, a2, a4);
      v19[2] = v17;
      *v19 = v18;
      v19[3] = 1;
      sub_299206B30(a7, a6, v19, 1, &v29);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v21 = v29;
      if (v29)
      {
        v21 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v22 = 0;
    v23 = a1 + 12;
    while (1)
    {
      v24 = *(v23 + 8 * v22);
      a2[a4] = v22;
      if ((v24 & 3) == 2)
      {
        sub_299206B9C(v30, a7);
        v25 = v30;
        v26 = sub_29920768C((v24 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v30);
      }

      else
      {
        if ((v24 & 3) != 1)
        {
          goto LABEL_19;
        }

        sub_299206B9C(v31, a7);
        v25 = v31;
        v26 = sub_299205F80(v24 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v31);
      }

      v29 = v26;
      sub_299206D94(v25);
LABEL_19:
      v21 = v29;
      if ((v29 & 1) == 0)
      {
        v20 = v22++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *(a1 + 8 * a2[a4] + 12);
  if ((v14 & 3) == 2)
  {
    sub_299206B9C(v32, a7);
    v15 = v32;
    v16 = sub_29920768C((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v32);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v21 = 0;
      goto LABEL_26;
    }

    sub_299206B9C(v33, a7);
    v15 = v33;
    v16 = sub_299205F80(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v33);
  }

  v21 = v16;
  sub_299206D94(v15);
LABEL_26:
  v27 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_29920620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_299206D94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29920624C(int *a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if (a4 >= a3)
  {
    v17 = *a1;
    if (*a1)
    {
      v18 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v18[4] = a4;
      *(v18 + a4 + 20) = 0;
      memcpy(v18 + 5, a2, a4);
      v18[2] = v17;
      *v18 = 0;
      v18[3] = 1;
      sub_299206B30(a7, a6, v18, 1, &v28);
      v19 = v18[3]-- == 1;
      if (v19)
      {
        free(v18);
      }

      v20 = v28;
      if (v28)
      {
        v20 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v21 = 0;
    v22 = a1 + 1;
    while (1)
    {
      v23 = *&v22[2 * v21];
      a2[a4] = v21;
      if ((v23 & 3) == 2)
      {
        sub_299206B9C(v29, a7);
        v24 = v29;
        v25 = sub_299207830((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v29);
      }

      else
      {
        if ((v23 & 3) != 1)
        {
          goto LABEL_19;
        }

        sub_299206B9C(v30, a7);
        v24 = v30;
        v25 = sub_29920624C(v23 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v30);
      }

      v28 = v25;
      sub_299206D94(v24);
LABEL_19:
      v20 = v28;
      if ((v28 & 1) == 0)
      {
        v19 = v21++ == 255;
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *&a1[2 * a2[a4] + 1];
  if ((v14 & 3) == 2)
  {
    sub_299206B9C(v31, a7);
    v15 = v31;
    v16 = sub_299207830((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v20 = 0;
      goto LABEL_26;
    }

    sub_299206B9C(v32, a7);
    v15 = v32;
    v16 = sub_29920624C(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v32);
  }

  v20 = v16;
  sub_299206D94(v15);
LABEL_26:
  v26 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_2992064CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_299206D94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29920650C(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x29EDCA608];
  v50 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v36 = a2;
        do
        {
          v37 = *v36++;
          v38 = vcnt_s8(v37);
          v38.i16[0] = vaddlv_u8(v38);
          v18 += v38.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v39 = vcnt_s8(((v17 - 1) & *&v16));
      v39.i16[0] = vaddlv_u8(v39);
      v40 = a2[5].i32[v18 + v39.i32[0] + 1];
      if ((v40 & 3u) > 1)
      {
        if ((v40 & 3) == 2)
        {
          v41 = *(a1 + 2080);
          sub_299206B9C(v54, a8);
          v42 = v54;
          v43 = sub_299206978(((v40 & 0xFFFFFFFC) + v41), a3, a4, a5 + 1, a6, a7, v54);
        }

        else
        {
          v45 = *(a1 + 2080);
          sub_299206B9C(v55, a8);
          v42 = v55;
          v43 = sub_29920650C(a1, (v40 & 0xFFFFFFFC) + v45, a3, a4, a5 + 1, a6, a7, v55);
        }
      }

      else
      {
        if ((v40 & 3) == 0)
        {
          goto LABEL_36;
        }

        v44 = *(a1 + 2080);
        sub_299206B9C(v56, a8);
        v42 = v56;
        v43 = sub_2992057C0(a1, (v40 & 0xFFFFFFFC) + v44, a3, a4, a5 + 1, a6, a7, v56);
      }

      v23 = v43;
      sub_299206D94(v42);
      goto LABEL_42;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_42;
  }

  v19 = a2[5].i32[0];
  if (!v19)
  {
    v23 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v24 = 0;
    while (1)
    {
      if (v24 >> 6 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v26 = a2[v24 >> 6];
      if ((*&v26 & (1 << v24)) == 0)
      {
        goto LABEL_29;
      }

      if (v24 >= 0x40)
      {
        v27 = 0;
        v28 = a2;
        do
        {
          v29 = *v28++;
          v30 = vcnt_s8(v29);
          v30.i16[0] = vaddlv_u8(v30);
          v27 += v30.i32[0];
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = 0;
      }

      v31 = vcnt_s8((*&v26 & ((1 << v24) - 1)));
      v31.i16[0] = vaddlv_u8(v31);
      v32 = a2[5].i32[v27 + v31.i32[0] + 1];
      a3[a5] = v24;
      if ((v32 & 3u) > 1)
      {
        v35 = *(a1 + 2080);
        if ((v32 & 3) == 2)
        {
          sub_299206B9C(v51, a8);
          v50 = sub_299206978((v35 + (v32 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v51);
          v34 = v51;
        }

        else
        {
          sub_299206B9C(v52, a8);
          v50 = sub_29920650C(a1, v35 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
          v34 = v52;
        }
      }

      else
      {
        if ((v32 & 3) == 0)
        {
          goto LABEL_29;
        }

        v33 = *(a1 + 2080);
        sub_299206B9C(v53, a8);
        v50 = sub_2992057C0(a1, v33 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v53);
        v34 = v53;
      }

      sub_299206D94(v34);
LABEL_29:
      v23 = v50;
      if ((v50 & 1) == 0 && ++v24 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = a2[4].i32[1];
  v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v21[4] = a4;
  *(v21 + a4 + 20) = 0;
  memcpy(v21 + 5, a3, a4);
  v21[2] = v19;
  *v21 = v20;
  v21[3] = 1;
  sub_299206B30(a8, a7, v21, 1, &v50);
  if (v21[3]-- == 1)
  {
    free(v21);
  }

  v23 = v50;
  if ((v50 & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = 1;
LABEL_42:
  v46 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t sub_299206978(unsigned int *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v35 = 0;
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = 0;
  v11 = a3 - a4;
  v12 = &a2[a4];
  __n = (a3 - a4);
  v13 = a1 + 2;
  v27 = v12;
  __dst = &a2[a3];
  v26 = a3;
  while (1)
  {
    v14 = v13 + v10;
    v15 = *(v14 + 4);
    if (v11 > v15 || memcmp(v14 + 10, v12, __n))
    {
      goto LABEL_14;
    }

    v16 = a5;
    if (v11 == v15)
    {
      v16 = 0;
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v17 = (v15 + v8);
    v18 = (v17 - v9);
    v19 = v26;
    if (v18 >= 1)
    {
      memcpy(__dst, &v14[v15 - v18 + 10], v18);
      v19 = v17;
      v9 = v17;
    }

    a2[v19] = 0;
    v20 = *(v14 + 1);
    v21 = *v14;
    v22 = malloc_type_malloc(v19 + 21, 0x1000040A86A77D5uLL);
    v22[4] = v9;
    *(v22 + v19 + 20) = 0;
    memcpy(v22 + 5, a2, v19);
    *v22 = v21;
    v22[2] = v20;
    v22[3] = 1;
    sub_299206B30(a7, a6, v22, v11 == v15, &v35);
    v23 = v22[3] - 1;
    v22[3] = v23;
    if (!v23)
    {
      free(v22);
    }

    v9 = a3;
    v8 = a4;
    v12 = v27;
    if (v35)
    {
      return 1;
    }

    LODWORD(v15) = *(v14 + 4);
LABEL_14:
    v10 += v15 + 10;
    if (v10 >= v7)
    {
      return 0;
    }
  }
}

uint64_t sub_299206B30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_2991A2240();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t sub_299206B9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_299206C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_299206D04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F63DD0;
  a2[1] = v2;
  return result;
}

uint64_t sub_299206D48(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F63E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299206D94(uint64_t a1)
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

uint64_t sub_299206E14(uint64_t a1, int8x8_t *a2, char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x29EDCA608];
  v48 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v18 += v37.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v38 = vcnt_s8(((v17 - 1) & *&v16));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = a2[4].i32[v18 + v38.i32[0] + 1];
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2080);
        if ((v39 & 3) == 2)
        {
          sub_299206B9C(v52, a8);
          v41 = v52;
          v42 = sub_29920727C(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }

        else
        {
          sub_299206B9C(v53, a8);
          v41 = v53;
          v42 = sub_299206E14(a1, (v39 & 0xFFFFFFFC) + v40, a3, a4, a5 + 1, a6, a7, v53);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          goto LABEL_36;
        }

        v43 = *(a1 + 2080);
        sub_299206B9C(v54, a8);
        v41 = v54;
        v42 = sub_299205BE8(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v54);
      }

      v22 = v42;
      sub_299206D94(v41);
      goto LABEL_42;
    }

LABEL_36:
    v22 = 0;
    goto LABEL_42;
  }

  v19 = a2[4].i32[0];
  if (!v19)
  {
    v22 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v23 = 0;
    while (1)
    {
      if (v23 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 >> 6;
      }

      v25 = a2[v23 >> 6];
      if ((*&v25 & (1 << v23)) == 0)
      {
        goto LABEL_29;
      }

      if (v23 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((*&v25 & ((1 << v23) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = a2[4].i32[v26 + v30.i32[0] + 1];
      a3[a5] = v23;
      if ((v31 & 3u) > 1)
      {
        v34 = *(a1 + 2080);
        if ((v31 & 3) == 2)
        {
          sub_299206B9C(v49, a8);
          v48 = sub_29920727C(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v49);
          v33 = v49;
        }

        else
        {
          sub_299206B9C(v50, a8);
          v48 = sub_299206E14(a1, v34 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v50);
          v33 = v50;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_29;
        }

        v32 = *(a1 + 2080);
        sub_299206B9C(v51, a8);
        v48 = sub_299205BE8(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
        v33 = v51;
      }

      sub_299206D94(v33);
LABEL_29:
      v22 = v48;
      if ((v48 & 1) == 0 && ++v23 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v20[4] = a4;
  *(v20 + a4 + 20) = 0;
  memcpy(v20 + 5, a3, a4);
  v20[2] = v19;
  *v20 = 0;
  v20[3] = 1;
  sub_299206B30(a8, a7, v20, 1, &v48);
  if (v20[3]-- == 1)
  {
    free(v20);
  }

  v22 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = 1;
LABEL_42:
  v44 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t sub_29920727C(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v66 = *MEMORY[0x29EDCA608];
  v64 = 0;
  v10 = a4 - a5;
  v11 = *a2;
  if ((*(a1 + 2064) & 4) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (v11)
    {
      v26 = 0;
      v27 = 0;
      v28 = a2 + 1;
      v53 = a5 - a4;
      __s2 = &a3[a5];
      v51 = &a3[a4];
      v54 = a2 + 1;
      do
      {
        v29 = v27;
        v27 = v28 + v26;
        v30 = v27[6];
        if (v29)
        {
          v31 = v29[6];
          if (v30 > v31)
          {
            memcpy(__s1 + v31, v29 + 7, v30 - v31);
          }
        }

        v32 = *(v27 + 2);
        v33 = v32 + v30;
        if ((v32 + v30) >= v10)
        {
          if (v9 == v8 || (v30 >= v10 ? (v34 = v10) : (v34 = v30), !memcmp(__s1, __s2, v34)))
          {
            v35 = v10 - v30;
            if (v10 - v30 < 0 || (v32 >= v35 ? (v36 = v35) : (v36 = v32), !memcmp(v27 + 7, &__s2[v30], v36)))
            {
              v37 = a6;
              if (v10 == v33)
              {
                v37 = 0;
              }

              if ((v37 & 1) == 0)
              {
                v38 = v9;
                v39 = v30 + v8;
                v40 = v30 + v8 - v38;
                if (v40 < 1)
                {
                  v39 = v38;
                }

                else
                {
                  memcpy(v51, __s1 + v30 - v40, v40);
                  v32 = *(v27 + 2);
                  LODWORD(v30) = v27[6];
                }

                v41 = v53 + v32 + v30;
                if (v41 < 1)
                {
                  v43 = a3;
                }

                else
                {
                  v42 = v41 - (v40 & ~(v40 >> 31));
                  v43 = a3;
                  memcpy(&a3[v39], &v27[v32 - v42 + 7], v42);
                  v39 += v42;
                }

                v43[v39] = 0;
                v44 = *v27;
                v45 = malloc_type_malloc(v39 + 21, 0x1000040A86A77D5uLL);
                v45[4] = v39;
                *(v45 + v39 + 20) = 0;
                memcpy(v45 + 5, v43, v39);
                *v45 = 0;
                v45[2] = v44;
                v45[3] = 1;
                sub_299206B30(a8, a7, v45, v10 == v33, &v64);
                v46 = v45[3] - 1;
                v45[3] = v46;
                if (!v46)
                {
                  free(v45);
                }

                v9 = a4;
                v28 = v54;
                if (v64)
                {
LABEL_50:
                  result = 1;
                  goto LABEL_49;
                }

                v32 = *(v27 + 2);
                v8 = a5;
              }
            }
          }
        }

        v26 += v32 + 7;
      }

      while (v26 < v11);
    }
  }

  else if (v11)
  {
    v12 = 0;
    v13 = &a3[a5];
    v14 = v10;
    v15 = a2 + 1;
    v16 = a6;
    __dst = &a3[a4];
    v50 = a4;
    v55 = v13;
    do
    {
      v17 = v15 + v12;
      v18 = *(v17 + 2);
      if (v10 <= v18 && !memcmp(v17 + 6, v13, v14))
      {
        v19 = v10 == v18 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          v20 = a4;
          v21 = v18 + a5 - a4;
          v22 = v50;
          if (v21 >= 1)
          {
            memcpy(__dst, &v17[v18 - v21 + 6], v21);
            v22 = (v18 + a5);
            v20 = v18 + a5;
          }

          a3[v22] = 0;
          v23 = *v17;
          v24 = malloc_type_malloc(v22 + 21, 0x1000040A86A77D5uLL);
          v24[4] = v20;
          *(v24 + v22 + 20) = 0;
          memcpy(v24 + 5, a3, v22);
          *v24 = 0;
          v24[2] = v23;
          v24[3] = 1;
          sub_299206B30(a8, a7, v24, v10 == v18, &v64);
          v25 = v24[3] - 1;
          v24[3] = v25;
          if (!v25)
          {
            free(v24);
          }

          v14 = v10;
          v13 = v55;
          v16 = a6;
          if (v64)
          {
            goto LABEL_50;
          }

          LODWORD(v18) = *(v17 + 2);
        }
      }

      v12 += v18 + 6;
    }

    while (v12 < v11);
  }

  result = 0;
LABEL_49:
  v48 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29920768C(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v33 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v27 = a3;
    while (1)
    {
      v14 = *(v9 + 10);
      if (v12 <= v14 && !memcmp(v9 + 22, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v27;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 22, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 4);
          v22 = *(v9 + 3);
          v23 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v23[4] = v19;
          *(v23 + v18 + 20) = 0;
          memcpy(v23 + 5, a2, v18);
          *v23 = v22;
          v23[2] = v21;
          v23[3] = 1;
          sub_299206B30(a7, a6, v23, v20, &v33);
          v24 = v23[3] - 1;
          v23[3] = v24;
          if (!v24)
          {
            free(v23);
          }

          v10 = v33;
          v7 = a4;
          v13 = a5;
          if (v33)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_299207830(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v26 = a3;
    while (1)
    {
      v14 = *(v9 + 6);
      if (v12 <= v14 && !memcmp(v9 + 14, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v26;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 14, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 2);
          v22 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v22[4] = v19;
          *(v22 + v18 + 20) = 0;
          memcpy(v22 + 5, a2, v18);
          *v22 = 0;
          v22[2] = v21;
          v22[3] = 1;
          sub_299206B30(a7, a6, v22, v20, &v32);
          v23 = v22[3] - 1;
          v22[3] = v23;
          if (!v23)
          {
            free(v22);
          }

          v10 = v32;
          v7 = a4;
          v13 = a5;
          if (v32)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2992079C8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080);
  if (*(a1 + 2064))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1032);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  sub_299207A80(a1, a2, *(v8 + 4 * *a3));

  return sub_2992041F8(a1, a2, a3 + 1, (a4 - 1));
}

uint64_t sub_299207A80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2064);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1032);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2064);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      }

      else
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
        if (v3)
        {
          *(a2 + 16) = v4[1];
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      if (*(result + 2064))
      {
        *(a2 + 16) = v9[10];
        v8 = v9[9];
        goto LABEL_17;
      }

      v5 = v9[8];
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_299207B48(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 8);
  if ((*(a1 + 2064) & 1) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(a2 + 16);
    if (v9 > *(v8 + 12))
    {
      sub_2993F9E00();
    }

    if (!v8)
    {
      LOBYTE(v10) = 0;
      goto LABEL_46;
    }

    v10 = v8;
    while (1)
    {
      v11 = *(v10 + 12);
      if (v10 != v8)
      {
        if (v9 >= v11)
        {
          goto LABEL_18;
        }

        if (v9)
        {
          v12 = (v10 + 14);
          v13 = *(a2 + 16);
          v14 = (v8 + 14);
          do
          {
            v16 = *v12++;
            v15 = v16;
            v17 = *v14++;
            if (v15 != v17)
            {
              goto LABEL_18;
            }
          }

          while (--v13);
        }
      }

      if (v9 >= v11 || a4 == 0)
      {
        LODWORD(v19) = 0;
        LODWORD(v20) = *(a2 + 16);
      }

      else
      {
        v19 = 0;
        v20 = *(a2 + 16);
        do
        {
          if (*(v10 + 14 + v20) != a3[v19])
          {
            break;
          }

          ++v20;
          ++v19;
          if (v20 >= v11)
          {
            break;
          }
        }

        while (v19 < a4);
      }

      if (v19 == a4)
      {
        *(a2 + 8) = v10 | 2;
        if (v20 == v11)
        {
          *(a2 + 16) = v11;
          *(a2 + 20) = *(v10 + 8);
        }

        else
        {
          *(a2 + 16) = v9 + a4;
        }

        LOBYTE(v10) = 1;
        goto LABEL_46;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_46;
      }
    }
  }

  v36[1] = v36;
  v36[0] = *a2;
  v21 = *(a2 + 16);
  v39 = *(a2 + 20);
  v40 = v7;
  v22 = *(a2 + 24);
  MEMORY[0x2A1C7C4A8]();
  v23 = v36 - ((v21 + 15) & 0x1FFFFFFF0);
  v24 = *(a2 + 16);
  memcpy(v23, (v25 + 22), v24);
  v26 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v26)
  {
    v38 = 0;
    v27 = v24 + a4;
    v37 = a4;
    do
    {
      v28 = *(v26 + 20);
      if (v27 <= v28 && !memcmp((v26 + 22), v23, v24) && !memcmp((v26 + 22 + v24), a3, v37))
      {
        if (v27 == v28)
        {
          *(a2 + 8) = v26 | 2;
          v35 = *(v26 + 16);
          *(a2 + 24) = *(v26 + 12);
          *(a2 + 16) = v27;
          *(a2 + 20) = v35;
          LOBYTE(v10) = 1;
          goto LABEL_46;
        }

        v29 = v39;
        if (!v38)
        {
          v29 = 0;
          LODWORD(v21) = v21 + a4;
        }

        v30 = v40;
        if (!v38)
        {
          v30 = v26 | 2;
        }

        v40 = v30;
        if (!v38)
        {
          v22 = 0.0;
        }

        v38 = 1;
        v39 = v29;
      }

      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v38 = 0;
  }

  v31 = v40;
  *a2 = v36[0];
  *(a2 + 8) = v31;
  LOBYTE(v10) = v38;
  v32 = v39;
  *(a2 + 16) = v21;
  *(a2 + 20) = v32;
  *(a2 + 24) = v22;
LABEL_46:
  v33 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_299207E18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v3[4];
        *(a2 + 24) = v3[3];
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 6))
      {
        v4 = 0;
      }

      else
      {
        v4 = v3[2];
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v5[2];
        *(a2 + 24) = v5[1];
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_299207EB4(uint64_t a1)
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

uint64_t sub_299207F34(uint64_t a1)
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

uint64_t sub_299207FB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_29920804C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273C64(result, a4);
  }

  return result;
}

void sub_2992080A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992080C0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      sub_2993F9E2C();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (sub_2992040C8(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *(a2 + 8);
      *(v2 + 6) = *(a2 + 4);
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void *sub_299208164(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2992082FC(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t sub_299208270(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F63E90;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992082B0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F63F00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992082FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992083B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F63F20;
  a2[1] = v2;
  return result;
}

void sub_2992083E0(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  sub_2991D6AE8(__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      sub_299212A8C();
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

    v26[4] = v8;
    if (v15)
    {
      sub_2992082FC(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    sub_29924EF78(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_299208534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299208550(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F63F80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29920859C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273C64(result, a4);
  }

  return result;
}

void sub_2992085F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299208610(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      sub_2993F9E2C();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (sub_2992040C8(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *a2;
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_29920871C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F63FA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_29920875C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299208818(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F64020;
  a2[1] = v2;
  return result;
}

void sub_299208844(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  sub_2991D6AE8(__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      sub_299212A8C();
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

    v26[4] = v8;
    if (v15)
    {
      sub_2992082FC(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    sub_29924EF78(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_299208998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992089B4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64080))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299208A00(uint64_t a1, uint64_t a2)
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

__n128 sub_299208B14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F640A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_299208B4C(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, unsigned int *a5, int *a6, uint64_t *a7)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a6;
  v10 = *a7;
  v11 = (*(a1 + 16) + *a4);
  operator new[]();
}

uint64_t sub_299208C7C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64100))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299208CC8(uint64_t a1)
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

uint64_t sub_299208D48(uint64_t a1, uint64_t a2)
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

uint64_t sub_299208E78(uint64_t a1)
{
  *a1 = &unk_2A1F64178;
  *(a1 + 8) = 0;
  *(a1 + 16) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 120) = sub_299208F60;
  *(a1 + 128) = 0;
  sub_2991BF614((a1 + 136));
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  return a1;
}

void sub_299208F10(_Unwind_Exception *a1)
{
  sub_29920B8B4((v2 + 88), 0);
  v4 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_299208F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v6 = (a4 + 8 * a2);
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v10 = *(v7 + 96);
      v11 = sub_29920B678(*(a1 + 88), *(v7 + 92), *(v4 + 94));
      if (v10 + *(v4 + 84) + v11 < v9)
      {
        v9 = v10 + *(v4 + 84) + v11;
        v8 = v7;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
    if (!v8)
    {
      break;
    }

    *v4 = v8;
    *(v4 + 8) = 0;
    *(v4 + 96) = v9;
    v12 = *(v4 + 90);
    *(v4 + 16) = v6[v12];
    v6[v12] = v4;
    v4 = *(v4 + 24);
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_299209024(uint64_t a1)
{
  *a1 = &unk_2A1F64178;
  v2 = a1 + 136;
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 136) = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 144) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  *(a1 + 144) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 152));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 248);
  sub_29920B8B4((a1 + 88), 0);
  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::mutex::~mutex((a1 + 16));
  return a1;
}

void sub_2992091BC(uint64_t a1)
{
  sub_299209024(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992094F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299209538(uint64_t a1, char *a2)
{
  sub_2991C6CA8(&__p, a2);
  v3 = sub_29920B95C(a1 + 8, &__p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    sub_2991A110C(v12, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *v12 = *(v3 + 56);
    v13 = *(v3 + 72);
  }

  sub_2991D7954(&__p);
  v14 = 0;
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v5 = HIBYTE(v13);
  }

  else
  {
    v5 = v12[1];
  }

  v6 = sub_2991C0E9C(&v16, v4, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29BC80](&__p, &v14), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = sub_29920BAF0(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v11 = v14;
  __p = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v16 = v9;
  v17 = MEMORY[0x29EDC9570] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v20);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v11;
}

void sub_299209870(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2991D7BF8(&a12, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992098C8(uint64_t *a1, uint64_t a2)
{
  if (!(*(*a2 + 168))(a2, 128) || (result = sub_299209970(a1, a2), result))
  {
    v5 = (*(*a2 + 24))(a2);
    v6 = *v5;
    if (*v5)
    {
      do
      {
        v6[1] = v5;
        v5 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    return 1;
  }

  return result;
}

uint64_t sub_299209970(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v5 = (*(*a2 + 40))(a2);
    v6 = (*(*a2 + 32))(a2);
    v7 = (*(*a2 + 200))(a2);
    v8 = (*(*a2 + 88))(a2);
    v9 = (*(*a2 + 64))(a2);
    v10 = (v9 + v8);
    v11 = a1[10];
    sub_29920B70C(*(v7 + 16));
    v13 = v12;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 109) = 2;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 32) = 0u;
    v14 = *(v11 + 216);
    *(v12 + 48) = v9;
    *(v12 + 56) = v14;
    *v5 = v12;
    v29 = 0;
    if (v8)
    {
      v15 = 0;
      while (1)
      {
        if (v5[v15])
        {
          v16 = sub_2993CDB14(a1[10], (v9 + v15), v10, v7);
          *(v6 + 8 * v15) = v16;
          v17 = a1[15];
          v18 = a1[16];
          v19 = (a1 + (v18 >> 1));
          if (v18)
          {
            v17 = *(*v19 + v17);
          }

          result = v17(v19, v15, v16, v5, v7, &v29, 0);
          if (!result)
          {
            break;
          }
        }

        v15 += 2;
        if (v15 >= v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v20 = a1[10];
      sub_29920B70C(*(v7 + 16));
      v22 = v21;
      *(v21 + 80) = 0u;
      *(v21 + 96) = 0u;
      *(v21 + 109) = 3;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 32) = 0u;
      v23 = *(v20 + 216);
      *(v21 + 48) = v10;
      *(v21 + 56) = v23;
      *(v6 + 8 * v8) = v21;
      v29 = 0;
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      v24 = v8;
      while (!v5[v24])
      {
        if (v24-- <= 0)
        {
          goto LABEL_20;
        }
      }

      v26 = a1[15];
      v27 = a1[16];
      v28 = (a1 + (v27 >> 1));
      if (v27)
      {
        v26 = *(*v28 + v26);
      }

      result = v26(v28);
      if (result)
      {
LABEL_20:
        *v5 = v13;
        *(v6 + 8 * v8) = v22;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_299209C70(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v117 = *MEMORY[0x29EDCA608];
  v105[0] = MEMORY[0x29EDCA5F8];
  v105[1] = 0x40000000;
  v106 = sub_29920AD94;
  v107 = &unk_29EF0BDE8;
  v108 = a1;
  std::mutex::lock((a1 + 16));
  *(a1 + 8) = 1;
  std::mutex::unlock((a1 + 16));
  v3 = (*(*a2 + 168))(a2, 2);
  v4 = a1;
  if ((v3 & 1) != 0 || (v5 = (*(*a2 + 168))(a2, 8), v4 = a1, v5))
  {
    v4[15] = sub_29920ADD4;
    v4[16] = 0;
  }

  v6 = *(v4[10] + 1544);
  CFDictionaryRemoveAllValues(*(v6 + 8));
  *(v6 + 24) = *(v6 + 16);
  if ((*(*a2 + 168))(a2, 4))
  {
    v101 = (*(*a2 + 200))(a2);
    (*(*a2 + 32))(a2);
    v7 = (*(*a2 + 88))(a2);
    v8 = *(v101 + 104);
    v9 = *(v101 + 112) - v8;
    if (v7 + 1 <= v9)
    {
      if (v7 + 1 < v9)
      {
        *(v101 + 112) = &v8[v7 + 1];
      }
    }

    else
    {
      sub_29920BD1C((v101 + 104), v7 + 1 - v9);
      v8 = *(v101 + 104);
    }

    v10 = (*(*a2 + 64))(a2);
    v11 = (*(*a2 + 88))(a2);
    memcpy(v8, v10, v11);
    __p = 0;
    v113 = 0;
    v114 = 0;
    __src = 0;
    v110 = 0;
    v111 = 0;
    v12 = (*(*a2 + 88))(a2);
    v13 = 0;
    v14 = &v8[v12 & 0xFFFFFFFFFFFFFFFELL];
    v15 = 1;
    while (v13 != 0xFFFF)
    {
      v16 = v13;
      v17 = v15;
      v18 = v8;
      if (v8 < v14)
      {
        v18 = v8;
        do
        {
          if (*v18 == 10)
          {
            break;
          }

          v18 += 2;
        }

        while (v18 < v14);
      }

      v19 = v113;
      if (v113 >= v114)
      {
        v21 = (v113 - __p) >> 3;
        if ((v21 + 1) >> 61)
        {
          sub_29920B608();
        }

        v22 = (v114 - __p) >> 2;
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        if (v114 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_29920BE54(&__p, v23);
        }

        v24 = (8 * v21);
        *v24 = v8;
        v20 = 8 * v21 + 8;
        v25 = v24 - (v113 - __p);
        memcpy(v25, __p, v113 - __p);
        v26 = __p;
        __p = v25;
        v113 = v20;
        v114 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v113 = v8;
        v20 = (v19 + 8);
      }

      v113 = v20;
      v27 = v18 - v8;
      v28 = v110;
      if (v110 >= v111)
      {
        v30 = __src;
        v31 = v110 - __src;
        v32 = (v110 - __src) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v34 = v111 - __src;
        if ((v111 - __src) >> 2 > v33)
        {
          v33 = v34 >> 2;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          sub_299236FB8(&__src, v35);
        }

        *(8 * v32) = v27;
        v29 = 8 * v32 + 8;
        memcpy(0, v30, v31);
        v36 = __src;
        __src = 0;
        v110 = v29;
        v111 = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v110 = v27;
        v29 = (v28 + 8);
      }

      v110 = v29;
      v13 = v16 + 1;
      v8 = v18 + 2;
      v15 = v17 + 1;
      if (v18 == v14)
      {
        if (v16 <= 0xFFFD)
        {
          sub_29920B620(v13);
        }

        break;
      }
    }

    if (__src)
    {
      v110 = __src;
      operator delete(__src);
    }

    if (__p)
    {
      v113 = __p;
      operator delete(__p);
    }

    goto LABEL_118;
  }

  if (!(*(*a2 + 168))(a2, 128))
  {
    if (!(*(*a2 + 64))(a2))
    {
      goto LABEL_118;
    }

    v47 = (*(*a2 + 40))(a2);
    v100 = (a2 + 168);
    v102 = (*(*a2 + 32))(a2);
    v48 = (*(*a2 + 200))(a2);
    v49 = (*(*a2 + 88))(a2);
    v50 = (*(*a2 + 64))(a2);
    v51 = *(a1 + 80);
    sub_29920B70C(*(v48 + 16));
    *(v52 + 80) = 0u;
    *(v52 + 96) = 0u;
    *(v52 + 48) = 0u;
    *(v52 + 64) = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0u;
    *v52 = 0u;
    v53 = *(v51 + 216);
    *(v52 + 109) = 2;
    v99 = &v50[v49];
    *(v52 + 48) = v50;
    *(v52 + 56) = v53;
    *v47 = v52;
    if ((a3 & 2) != 0)
    {
      *(a1 + 116) = -1;
      v64 = a1 + 116;
      v65 = *v102;
      if (*v102)
      {
        v66 = *(a1 + 120);
        v67 = *(a1 + 128);
        v68 = (a1 + (v67 >> 1));
        if (v67)
        {
          v66 = *(*v68 + v66);
        }

        if (!v66(v68, 0, v65, v47, v48, v64, 0))
        {
          goto LABEL_118;
        }

        v80 = *(v65 + 45);
        v56 = a1;
        if (!v47[v80])
        {
          goto LABEL_109;
        }

        v81 = sub_2993CD2F4(*(a1 + 80), &v50[v80], v99, v48, a3);
        v102[v80] = v81;
        v82 = *(a1 + 120);
        v83 = *(a1 + 128);
        v84 = (a1 + (v83 >> 1));
        if (v83)
        {
          v82 = *(*v84 + v82);
        }

        v85 = v82(v84, v80, v81, v47, v48, v64, 0);
      }

      else
      {
        v69 = sub_2993CD2F4(*(a1 + 80), v50, v99, v48, a3);
        *v102 = v69;
        v70 = *(a1 + 120);
        v71 = *(a1 + 128);
        v72 = (a1 + (v71 >> 1));
        if (v71)
        {
          v70 = *(*v72 + v70);
        }

        v85 = v70(v72, 0, v69, v47, v48, v64, 0);
      }

      v56 = a1;
      if ((v85 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      LODWORD(__p) = 15;
      v54 = MEMORY[0x29C29C5C0]();
      if (host_statistics(v54, 2, host_info_out, &__p))
      {
        v55 = -1;
        v56 = a1;
        *(a1 + 112) = -1;
        v57 = (a1 + 112);
      }

      else
      {
        v73 = *MEMORY[0x29EDCA6D0] * host_info_out[0];
        if (v73 <= 0x100000)
        {
          v63 = 0;
          *(a1 + 112) = 0;
          goto LABEL_119;
        }

        if (v73 >= 0x800FFFFF)
        {
          LODWORD(v73) = -2146435073;
        }

        v86 = v73 - 0x100000;
        v56 = a1;
        *(a1 + 112) = v86 / 0x18;
        v57 = (a1 + 112);
        if (v86 < 0x18)
        {
LABEL_118:
          v63 = 0;
          goto LABEL_119;
        }

        v55 = 0;
      }

      *(v56 + 116) = v55;
      v58 = (v56 + 116);
      v59 = v50;
      if (v49 >= 2)
      {
        v59 = &v50[2 * (*v50 == 32)];
      }

      if ((~a3 & 0x44) == 0)
      {
        v60 = v49 >> 1;
        if (!v50)
        {
          v60 = 0;
        }

        *host_info_out = v50;
        v116 = v60;
        v98 = 2 * sub_29921788C(host_info_out, 0x20u);
        v56 = a1;
        if (!v49)
        {
          goto LABEL_109;
        }

LABEL_81:
        v74 = 0;
        v75 = 0;
        while (*(v56 + 8) != 2)
        {
          if (v47[v75])
          {
            if (v75 || (v76 = *v102) == 0)
            {
              v76 = sub_2993CBB38(*(v56 + 80), &v50[v75], v99, v48, a3, v59, v98, *v100 + v74);
              v102[v75] = v76;
            }

            else
            {
              v59 += *(v76 + 45);
            }

            v77 = *(v56 + 120);
            v78 = *(v56 + 128);
            v79 = (v56 + (v78 >> 1));
            if (v78)
            {
              v77 = *(*v79 + v77);
            }

            if (!v77(v79, v75, v76, v47, v48, v58, v100))
            {
              goto LABEL_118;
            }

            if (*v58 != -1 && *v58 >= *v57)
            {
              goto LABEL_109;
            }
          }

          v75 += 2;
          v74 += 48;
          if (v75 >= v49)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_118;
      }

      v98 = 0;
      if (v49)
      {
        goto LABEL_81;
      }
    }

LABEL_109:
    v87 = *(v56 + 80);
    sub_29920B70C(*(v48 + 16));
    v89 = v88;
    *(v88 + 80) = 0u;
    *(v88 + 96) = 0u;
    *(v88 + 48) = 0u;
    *(v88 + 64) = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *v88 = 0u;
    v90 = *(v87 + 216);
    *(v88 + 109) = 3;
    *(v88 + 48) = v99;
    *(v88 + 56) = v90;
    v102[v49] = v88;
    if ((v49 & 0x8000000000000000) == 0)
    {
      if (*(a1 + 8) == 2)
      {
        goto LABEL_118;
      }

      while (!v47[v49])
      {
        if (v49-- <= 0)
        {
          goto LABEL_48;
        }
      }

      v92 = *(a1 + 120);
      v93 = *(a1 + 128);
      v94 = (a1 + (v93 >> 1));
      if (v93)
      {
        v92 = *(*v94 + v92);
      }

      if (!v92(v94, v49, v89, v47, v48, a1 + 116, v100))
      {
        goto LABEL_118;
      }
    }

    goto LABEL_48;
  }

  if ((sub_299209970(a1, a2) & 1) == 0)
  {
    goto LABEL_118;
  }

LABEL_48:
  v37 = (*(*a2 + 168))(a2, 32);
  v38 = *(*a2 + 24);
  if (v37)
  {
    v39 = v38(a2);
    v40 = *v39;
    if (*v39)
    {
      do
      {
        v40[1] = v39;
        v39 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    v41 = (*(*a2 + 16))(a2);
    v42 = (*(*a2 + 88))(a2);
    v43 = (*(*a2 + 32))(a2);
    if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = 0;
      do
      {
        for (i = *(v43 + 8 * v44); i; i = i[3])
        {
          *(v41 + 8) = i;
          *i = v41;
          v41 = i;
        }
      }

      while (v44++ != v42);
    }
  }

  else
  {
    v61 = v38(a2);
    v62 = *v61;
    if (*v61)
    {
      do
      {
        v62[1] = v61;
        v61 = v62;
        v62 = *v62;
      }

      while (v62);
    }
  }

  v63 = 1;
LABEL_119:
  v106(v105);
  v95 = *MEMORY[0x29EDCA608];
  return v63;
}

void sub_29920ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void (*a22)(char *), uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_29925ED54(&a31);
  MEMORY[0x29C29BF70](a10, 0x1000C8077774924);
  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  a22(&a20);
  _Unwind_Resume(a1);
}

void sub_29920AD94(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 16));
  *(v1 + 8) = 0;

  std::mutex::unlock((v1 + 16));
}

uint64_t sub_29920ADD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, void *a7)
{
  if (!a3)
  {
    return 1;
  }

  v9 = a3;
  while (1)
  {
    v11 = *(a4 + 8 * a2);
    if (v11)
    {
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((!*(v11 + 106) || *(v11 + 84) <= 20000) && (!*(v9 + 106) || *(v9 + 84) <= 20000))
        {
          v14 = *(v11 + 64);
          v15 = *(v9 + 64);
          v16 = !v14 || v15 == 0;
          if (v16 || (v23 = *(v14 + 14), v24 = *(v14 + 14), v25 = *(v15 + 12), v24 == v25) || ((v25 ^ v23) <= 0xFF ? (v26 = v24 == 0) : (v26 = 1), !v26 ? (v27 = v25 == 0) : (v27 = 1), v27))
          {
            v17 = *(a1 + 88);
            v18 = *(v11 + 92);
            v19 = *(v9 + 94);
            v20 = *(*(v17 + 344) + 4 * v18);
            if (*(*(v17 + 344) + 4 * v18 + 4) - v20 == *(v17 + 370))
            {
              v21 = *(*(v17 + 360) + 2 * (v20 + v19));
              if (v21 != 0x7FFF)
              {
                v22 = *(v9 + 84) + v21;
LABEL_31:
                if (*(v11 + 96) + v22 < v13)
                {
                  v12 = v11;
                  v13 = *(v11 + 96) + v22;
                }

                v32 = sub_29920B2D4(a5);
                *(v32 + 4) = v22;
                v33 = *a6;
                if (*a6 != -1 && v33 < *(a1 + 112))
                {
                  *a6 = v33 + 1;
                }

                v34 = *(v9 + 40);
                *v32 = v11;
                v32[1] = v34;
                *(v9 + 40) = v32;
                *(v11 + 32) = v32;
              }
            }

            else
            {
              v28 = v19 | (v18 << 16);
              v29 = *(v17 + 372) & (3 * v18 + v19);
              v30 = *(v17 + 376);
              if (*(v30 + 4 * v29) == v28)
              {
                v22 = *(*(v17 + 384) + 4 * v29) + *(v9 + 84);
                goto LABEL_31;
              }

              *(v30 + 4 * v29) = v28;
              v31 = sub_29920B6A8(v17, v18, v19);
              *(*(v17 + 384) + 4 * v29) = v31;
              if (v31 <= 32766)
              {
                v22 = v31 + *(v9 + 84);
                goto LABEL_31;
              }
            }
          }
        }

        v11 = *(v11 + 16);
        if (!v11)
        {
          goto LABEL_40;
        }
      }
    }

    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_40:
    if (*(v9 + 40))
    {
      goto LABEL_55;
    }

    v36 = *(a4 + 8 * a2);
    if (!v36)
    {
      goto LABEL_55;
    }

    v41 = *(v9 + 84) + sub_29920B678(*(a1 + 88), *(v36 + 92), *(v9 + 94));
    v35 = *(v36 + 96) + v41;
    v42 = sub_29920B2D4(a5);
    *(v42 + 4) = v41;
    v43 = *(v9 + 40);
    *v42 = v36;
    v42[1] = v43;
    *(v9 + 40) = v42;
    *(v36 + 32) = v42;
    if (v35 >= v13)
    {
LABEL_55:
      v35 = v13;
      v36 = v12;
      if (!v12)
      {
        return 0;
      }
    }

    *v9 = v36;
    *(v9 + 8) = 0;
    *(v9 + 96) = v35;
    v37 = *(v9 + 90) + a2;
    *(v9 + 16) = *(a4 + 8 * v37);
    *(a4 + 8 * v37) = v9;
    if (a7)
    {
      v38 = *(v9 + 64);
      if (v38)
      {
        v40 = *(v38 + 14);
        v39 = (v38 + 14);
        if (v40)
        {
          sub_29920BF78(*a7 + 24 * v37, v39);
        }
      }
    }

    v9 = *(v9 + 24);
    if (!v9)
    {
      return 1;
    }
  }
}

void sub_29920B098(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 8))
  {
    *(a1 + 8) = 2;
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_29920B0E4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v7 = (*(*a2 + 32))(a2);
    v8 = (*(*a2 + 200))(a2);
    v9 = (*(*a2 + 88))(a2);
    v10 = (*(*a2 + 64))(a2);
    v11 = *(a1 + 80);
    sub_29920B70C(*(v8 + 16));
    v13 = v12;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 109) = 2;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 32) = 0u;
    v14 = *(v11 + 216);
    *(v12 + 48) = v10;
    *(v12 + 56) = v14;
    *v7 = v12;
    result = sub_2993CD2F4(*(a1 + 80), v10, &v10[v9], v8, a3 | 0x200000u);
    if (result)
    {
      v7[2] = result;
      v15 = *(a1 + 80);
      sub_29920B70C(*(v8 + 16));
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 109) = 3;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 32) = 0u;
      v17 = *(v15 + 216);
      *(v16 + 48) = &v10[v9];
      *(v16 + 56) = v17;
      v7[v9 + 2] = v16;
      v18 = v7[2];
      for (*(v13 + 8) = v18; v18; v18 = *(v18 + 24))
      {
        *(v18 + 8) = v7[*(v18 + 88) + 2];
      }

      return 1;
    }
  }

  return result;
}

void *sub_29920B2D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    operator new();
  }

  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[4];
  if (v4 == v3)
  {
    v4 = 0;
    ++v2;
    v1[4] = 0;
    v1[5] = v2;
  }

  v5 = v1[1];
  if (v2 == (v1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  v6 = *(v5 + 8 * v2);
  v1[4] = v4 + 1;
  result = (v6 + 24 * v4);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void **sub_29920B4CC(uint64_t a1)
{
  v2 = sub_29920B5BC(a1 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v5);
  }

  *v5 = __dst;
  *(a1 + 280) = v8;
  if (*(a1 + 287) < 0)
  {
    return *v5;
  }

  return v5;
}

uint64_t sub_29920B5BC(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_29920B620(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29920B678(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 344) + 4 * a2);
  if (*(*(a1 + 344) + 4 * a2 + 4) - v3 == *(a1 + 370))
  {
    return *(*(a1 + 360) + 2 * (v3 + a3));
  }

  else
  {
    return sub_29920B6A8(a1, a2, a3);
  }
}

uint64_t sub_29920B6A8(void *a1, int a2, int a3)
{
  v3 = (a1[43] + 4 * a2);
  v4 = *v3;
  v5 = v3[1] - 1;
  if (v4 > v5)
  {
    return 0x7FFFLL;
  }

  while (1)
  {
    v6 = *(a1[44] + 2 * ((v4 + v5) / 2));
    if (v6 >= a3)
    {
      break;
    }

    v4 = (v4 + v5) / 2 + 1;
LABEL_6:
    if (v4 > v5)
    {
      return 0x7FFFLL;
    }
  }

  if (v6 > a3)
  {
    v5 = (v4 + v5) / 2 - 1;
    goto LABEL_6;
  }

  return *(a1[45] + 2 * ((v4 + v5 + ((v4 + v5) >> 31)) >> 1));
}

double sub_29920B70C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x70uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = (v5 + 112 * v3);
  result = 0.0;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  return result;
}

void sub_29920B86C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29920B8B4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992332B8(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void *sub_29920B900(void *a1)
{
  *a1 = &unk_2A1F641D8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1000C4052888210);
  }

  return a1;
}

uint64_t sub_29920B95C(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_29920B9DC((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_29920B9DC(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_29920B9DC(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

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
    v6 = a2[1];
  }

  return sub_29920BA14(a1, v2, v5, v6);
}

uint64_t sub_29920BA14(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_29920BA74(void *a1)
{
  *a1 = &unk_2A1F641D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BFB0](v1, 0x1000C4052888210);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_29920BAF0(void *a1)
{
  MEMORY[0x29C29BC30](&v12, a1, 1);
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v11);
  v3 = a1 + 5;
  while (1)
  {
    v4 = *(v3 + *(*a1 - 24));
    v5 = v4[3];
    if (v5 == v4[4])
    {
      break;
    }

    LOBYTE(v6) = *v5;
LABEL_6:
    if ((v6 & 0x80) != 0 || (*(&v2[1].~facet + (v6 & 0x7F)) & 0x4000) == 0)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = *(v3 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 == v7[4])
    {
      (*(*v7 + 80))(v7);
    }

    else
    {
      v7[3] = v8 + 1;
    }
  }

  v6 = (*(*v4 + 72))(v4);
  if (v6 != -1)
  {
    goto LABEL_6;
  }

  v9 = 2;
LABEL_12:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_29920BC74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29920BC30);
  }

  __cxa_rethrow();
}

void sub_29920BD1C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_29920B608();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_29920BE54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29920BEA0(void *a1)
{
  sub_29920BED8(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29920BED8(void *a1)
{
  *a1 = &unk_2A1F641A8;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1020C80EDCEB4C7);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_29920BF78(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 26);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_29920C044(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2991C1A7C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_29920C09C(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F64218;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F642E8;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 56) = 0u;
  v5 = sub_299236E64(a2, 50);
  if (v5)
  {
    *v4 = v5;
    CFStringGetLength(v5);
    sub_299276B44();
  }

  return a1;
}

void sub_29920CDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char *__p, char *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  __p = &a33;
  sub_29920E060(&__p);
  v37 = *(v35 - 184);
  if (v37)
  {
    *(v35 - 176) = v37;
    operator delete(v37);
  }

  if (a22)
  {
    MEMORY[0x29C29BF70](a22, 0x1000C80BDFB0063);
  }

  *(v35 - 184) = v34;
  sub_29920D9E8((v35 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_29920CF74(uint64_t a1)
{
  *a1 = &unk_2A1F64218;
  *(a1 + 24) = &unk_2A1F642E8;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = (a1 + 48);
  sub_29920D9E8(&v4);
  return a1;
}

void sub_29920D000(uint64_t a1)
{
  sub_29920CF74(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29920D038(void *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1) <= a2)
  {
    return 0;
  }

  return a1[6] + 48 * a2;
}

void sub_29920D0AC(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (*(*a1 + 48))(a1);
  if (a2)
  {
    sub_29920D17C(a3, v6 + 1);
    v7 = 1;
    **a3 = 1;
  }

  else
  {
    sub_29920D17C(a3, v6);
    v7 = 0;
  }

  v8 = a1[6];
  v9 = a1[7];
  if (v8 != v9)
  {
    v10 = (*a3 + 4 * v7);
    do
    {
      *v10++ = *(v8 + 8);
      v8 += 48;
    }

    while (v8 != v9);
  }
}

void sub_29920D160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29920D17C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_29920DBB0(a1, a2 - v2);
  }
}

uint64_t sub_29920D1AC(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

char *sub_29920D218(void *a1, char *__src, _DWORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_299212A8C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_2992F86B0(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_29920DCE0(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_29920D3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29920D3D8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_299212A8C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_2992F86B0(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_29920DCE0(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_29920D574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29920D5C8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(*a2 + 24))(a2);
  return CFStringCompare(v3, v4, 0) == kCFCompareEqualTo;
}

void (***sub_29920D7E8(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 16 * ((v6 - result) >> 4);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_2A1F73CB8;
      v12 = *(v10 + 1);
      v13 = *(v10 + 3);
      v11[5] = v10[5];
      *(v11 + 3) = v13;
      *(v11 + 1) = v12;
      v10 += 6;
      v11 += 6;
      v9 += 48;
    }

    while (v10 != v6);
    v14 = result;
    v15 = result;
    do
    {
      v16 = *v15;
      v15 += 6;
      (*v16)();
      v14 += 6;
    }

    while (v15 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}