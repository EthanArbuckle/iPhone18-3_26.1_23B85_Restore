void sub_2980844A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084570(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084638(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084700(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2980847C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084A20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex0(ctu *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xF) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    v8 = (v2 >> 4) + 87;
    if (v2 < 0xA0)
    {
      LOBYTE(v8) = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 4uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      v7 = v2;
      if ((v2 & 0xFu) >= 0xA)
      {
        v8 = (v2 & 0xF) + 87;
      }

      else
      {
        v8 = v2 & 0xF | 0x30;
      }

      *v6 = v8;
      if (v2 >= 0xA0u)
      {
        v9 = (v2 >> 4) + 87;
      }

      else
      {
        v9 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v9;
      LOWORD(v2) = BYTE1(v2);
      v6 -= 2;
    }

    while (v7 >= 0x100);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 8uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((v2 & 0xF) >= 0xA)
      {
        v7 = (v2 & 0xF) + 87;
      }

      else
      {
        v7 = v2 & 0xF | 0x30;
      }

      *v6 = v7;
      if (v2 >= 0xA0u)
      {
        v8 = (v2 >> 4) + 87;
      }

      else
      {
        v8 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = v2 >= 0x100;
      v2 >>= 8;
    }

    while (v9);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xFu) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    if (v2 >= 0xA0u)
    {
      v8 = (v2 >> 4) + 87;
    }

    else
    {
      v8 = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 2uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((v2 & 0xFu) >= 0xA)
    {
      v7 = (v2 & 0xF) + 87;
    }

    else
    {
      v7 = v2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    if (v2 >= 0xA0u)
    {
      v8 = (v2 >> 4) + 87;
    }

    else
    {
      v8 = (v2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 4uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      v7 = v2;
      if ((v2 & 0xFu) >= 0xA)
      {
        v8 = (v2 & 0xF) + 87;
      }

      else
      {
        v8 = v2 & 0xF | 0x30;
      }

      *v6 = v8;
      if (v2 >= 0xA0u)
      {
        v9 = (v2 >> 4) + 87;
      }

      else
      {
        v9 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v9;
      LOWORD(v2) = BYTE1(v2);
      v6 -= 2;
    }

    while (v7 >= 0x100);
  }
}

{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 8uLL, 48);
  if (v2)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((v2 & 0xF) >= 0xA)
      {
        v7 = (v2 & 0xF) + 87;
      }

      else
      {
        v7 = v2 & 0xF | 0x30;
      }

      *v6 = v7;
      if (v2 >= 0xA0u)
      {
        v8 = (v2 >> 4) + 87;
      }

      else
      {
        v8 = (v2 >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = v2 >= 0x100;
      v2 >>= 8;
    }

    while (v9);
  }
}

void sub_298084ACC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084B98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::hex0(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a2, 0x10uLL, 48);
  if (this)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v5 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v5 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v6 = v5 + size - 1;
    do
    {
      if ((this & 0xF) >= 0xA)
      {
        v7 = (this & 0xF) + 87;
      }

      else
      {
        v7 = this & 0xF | 0x30;
      }

      *v6 = v7;
      if (this >= 0xA0u)
      {
        v8 = (this >> 4) + 87;
      }

      else
      {
        v8 = (this >> 4) | 0x30;
      }

      *(v6 - 1) = v8;
      v6 -= 2;
      v9 = this >= 0x100;
      this >>= 8;
    }

    while (v9);
  }
}

void sub_298084D30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084DFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084EAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298084F5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298085028(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2980850F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2980851C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29808528C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ctu::parse_hex@<D0>(ctu *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  return ctu::parse_hex(a1, v5, a2, a3);
}

double ctu::parse_hex@<D0>(ctu *a1@<X0>, const char *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 == 2)
  {
    v5 = 0;
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v5 = 1;
    goto LABEL_7;
  }

  v5 = 0;
  v6 = 1;
LABEL_8:
  ctu::parse_hex_impl(a1, a2, v5, v6, &v8);
  result = *&v8;
  *a4 = v8;
  a4[2] = v9;
  return result;
}

void ctu::parse_hex_impl(ctu *this@<X0>, const char *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = this;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = &a2[this];
  v11 = MEMORY[0x29EDCA600];
  while (1)
  {
    if (!a3 || v5 == v10)
    {
      if (v5 == v10)
      {
        return;
      }
    }

    else
    {
      while (1)
      {
        v12 = *v5;
        if (!((v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(v11 + 4 * v12 + 60) & 0x4000))
        {
          break;
        }

        v5 = (v5 + 1);
        if (v5 == v10)
        {
          return;
        }
      }
    }

    v14 = *v5;
    v15 = v14 - 48;
    v16 = v14 - 97;
    if ((v14 - 65) >= 6)
    {
      v17 = -1;
    }

    else
    {
      v17 = v14 - 55;
    }

    v18 = v14 - 87;
    if (v16 > 5)
    {
      v18 = v17;
    }

    if (v15 < 0xA)
    {
      v18 = v15;
    }

    if (v5 + 1 == v10)
    {
      break;
    }

    v19 = v5 + 2;
    v20 = *(v5 + 1);
    v21 = v20 - 48;
    v22 = v20 - 97;
    if ((v20 - 65) >= 6)
    {
      v23 = -1;
    }

    else
    {
      v23 = v20 - 55;
    }

    v24 = v20 - 87;
    if (v22 > 5)
    {
      v24 = v23;
    }

    if (v21 < 0xA)
    {
      v24 = v21;
    }

    if (a4)
    {
      if (v19 != v10)
      {
        if (*(v5 + 2) != 32)
        {
          break;
        }

        v19 = v5 + 3;
        if (v5 + 3 == v10)
        {
          break;
        }
      }
    }

    if (v18 == -1 || v24 == -1)
    {
      break;
    }

    v25 = v24 | (16 * v18);
    if (v9 >= v8)
    {
      v26 = v9 - v7;
      v27 = v9 - v7 + 1;
      if (v27 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v8 - v7) > v27)
      {
        v27 = 2 * (v8 - v7);
      }

      if ((v8 - v7) >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        v29 = operator new(v28);
      }

      else
      {
        v29 = 0;
      }

      v8 = &v29[v28];
      v29[v26] = v25;
      v9 = &v29[v26 + 1];
      memcpy(v29, v7, v26);
      *a5 = v29;
      a5[1] = v9;
      a5[2] = v8;
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v29;
    }

    else
    {
      *v9++ = v25;
    }

    a5[1] = v9;
    v5 = v19;
  }

  a5[1] = *a5;
}

void sub_29808555C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *ctl::parseField(unsigned __int16 *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2uLL);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *ctl::tlv::parseField(_BYTE *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1uLL);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1uLL);
  a3[1] = a1[1];
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1uLL);
  *a3 = *a1;
  return a1 + 1;
}

_BYTE *ctl::tlv::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t ctl::tlv::getFieldSize()
{
  return 2;
}

{
  return 2;
}

{
  return 5;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

uint64_t tlv::parseV<ctl::tlv::AssignedId>(unint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = (*a1 + a2);
  tlv::throwIfNotEnoughBytes(*a1, v4, 1uLL);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 1uLL);
  v6 = v3[1];
  *a1 = (v3 + 2);
  return v5 | (v6 << 8);
}

uint64_t sub_2980856AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_BYTE **tlv::writeV<ctl::tlv::AssignedId>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

unsigned __int16 *ctl::tlv::parseField(unsigned __int16 *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2uLL);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<ctl::tlv::LinkLayerProtocol>(unint64_t *a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, (*a1 + a2), 2uLL);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_298085780(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<ctl::tlv::LinkLayerProtocol>(_WORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unint64_t ctl::tlv::parseField(unint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4uLL);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes(a1 + 4, a2, 1uLL);
  *(a3 + 4) = *(a1 + 4);
  return a1 + 5;
}

uint64_t ctl::tlv::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  return a1 + 5;
}

unint64_t tlv::parseV<ctl::tlv::PowerSaveDescriptor>(unint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = (*a1 + a2);
  tlv::throwIfNotEnoughBytes(*a1, v4, 4uLL);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes(v3 + 4, v4, 1uLL);
  v6 = *(v3 + 4);
  *a1 = v3 + 5;
  return (v6 << 32) | 0xAAAAAA0000000000 | v5;
}

void sub_2980858B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x298085898);
}

uint64_t *tlv::writeV<ctl::tlv::PowerSaveDescriptor>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *result = v2 + 5;
  return result;
}

const unsigned __int8 *ctl::tlv::parseField(_BYTE *a1, const unsigned __int8 *a2, char **a3)
{
  tlv::throwIfNotAligned(a1, a2, 2uLL);
  v6 = (a2 - a1) >> 1;
  v7 = *a3;
  v8 = (a3[1] - *a3) >> 1;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      a3[1] = &v7[2 * v6];
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a3, v6 - v8);
    v7 = *a3;
  }

  memcpy(v7, a1, a2 - a1);
  return a2;
}

char *ctl::tlv::writeField(char *a1, uint64_t a2)
{
  v3 = *a2;
  v5 = *(a2 + 8) - v3;
  memcpy(a1, v3, v5);
  return &a1[v5];
}

uint64_t ctl::tlv::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1 + 1;
}

void *tlv::parseV<ctl::tlv::IndicationSet>@<X0>(unint64_t *a1@<X0>, signed int a2@<W1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a1;
  v7 = a2;
  v8 = (*a1 + a2);
  tlv::throwIfNotAligned(*a1, v8, 2uLL);
  if (a2 >= 2)
  {
    std::vector<unsigned short>::__append(a3, v7 >> 1);
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  result = memcpy(v9, v6, v7);
  *a1 = v8;
  return result;
}

void sub_298085A38(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x298085A24);
}

void sub_298085A48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<ctl::tlv::IndicationSet>(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  result = memcpy(*a1, v4, v6);
  *a1 = &v3[v6];
  return result;
}

char *ctl::tlv::parseField(unsigned __int8 *a1, const unsigned __int8 *a2, char **a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1uLL);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  v9 = 2 * v8;
  tlv::throwIfNotEnoughBytes(v6, a2, v9);
  v10 = *a3;
  v11 = (a3[1] - *a3) >> 1;
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v7 < v11)
    {
      a3[1] = &v10[2 * v7];
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a3, v12);
    v10 = *a3;
  }

  memcpy(v10, v6, v9);
  return &v6[v9];
}

_BYTE *ctl::tlv::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 1;
  v2 = a1 + 1;
  v3 = *a2;
  v5 = *(a2 + 1) - v3;
  memcpy(a1 + 1, v3, v5);
  return &v2[v5];
}

{
  *a1 = *a2;
  return a1 + 1;
}

void *tlv::parseV<ctl::tlv::IndicationSetExt>@<X0>(unint64_t *a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = (*a1 + a2);
  tlv::throwIfNotEnoughBytes(*a1, v6, 1uLL);
  v9 = *v5;
  v7 = v5 + 1;
  v8 = v9;
  v10 = 2 * v9;
  tlv::throwIfNotEnoughBytes(v7, v6, v10);
  if (v9)
  {
    std::vector<unsigned short>::__append(a3, v8);
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  result = memcpy(v11, v7, v10);
  *a1 = v7 + v10;
  return result;
}

void sub_298085C4C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x298085C38);
}

void sub_298085C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<ctl::tlv::IndicationSetExt>(_BYTE **a1, _DWORD *a2)
{
  v3 = *a1;
  *v3++ = (a2[2] - *a2) >> 1;
  v4 = *a2;
  v6 = *(a2 + 1) - v4;
  result = memcpy(v3, v4, v6);
  *a1 = &v3[v6];
  return result;
}

uint64_t tlv::parseV<ctl::tlv::ServiceType>(unint64_t *a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, (*a1 + a2), 1uLL);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_298085D6C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<ctl::tlv::ServiceType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

unsigned __int8 *ctl::tlv::parseField(unsigned __int8 *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1uLL);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<ctl::tlv::DataFormat>(unint64_t *a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, (*a1 + a2), 1uLL);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_298085E2C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<ctl::tlv::DataFormat>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

_DWORD *ctl::tlv::parseField(_DWORD *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4uLL);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<ctl::tlv::PowerSaveState>(unint64_t *a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, (*a1 + a2), 4uLL);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_298085EEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<ctl::tlv::PowerSaveState>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v12 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 < 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(2 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 2 * a2;
    bzero(&v11[2 * (v6 >> 1)], 2 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[2 * (v6 >> 1) + v13];
    *(a1 + 16) = &v11[2 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

std::logic_error *tlv::TlvParseException::TlvParseException(std::logic_error *this, unint64_t a2, unint64_t a3)
{
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_298087480;
  strcpy(__p.__r_.__value_.__l.__data_, "TLV parsing failed; expected ");
  std::to_string(&v42, a2);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v42;
  }

  else
  {
    v6 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v6, size);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_9:
      if (v8 - 11 < 0xC)
      {
        v9 = v8 + 12;
        p_p = &__p;
        v11 = 22;
LABEL_15:
        v13 = 2 * v11;
        if (v9 > 2 * v11)
        {
          v13 = v9;
        }

        if ((v13 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v13 | 7) + 1;
        }

        if (v13 >= 0x17)
        {
          v12 = v14;
        }

        else
        {
          v12 = 23;
        }

        v15 = v11 == 22;
        goto LABEL_24;
      }

      v20 = &__p;
LABEL_31:
      v21 = v20 + v8;
      *v21 = *" bytes; got ";
      *(v21 + 2) = 544501607;
      v22 = v8 + 12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = v8 + 12;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v19 = v20 + v22;
      goto LABEL_35;
    }
  }

  v8 = __p.__r_.__value_.__l.__size_;
  v11 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v11 - __p.__r_.__value_.__l.__size_ >= 0xC)
  {
    v20 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_31;
  }

  v12 = 0x7FFFFFFFFFFFFFF7;
  v9 = __p.__r_.__value_.__l.__size_ + 12;
  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 12 - v11)
  {
    goto LABEL_74;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v11 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v15 = 0;
LABEL_24:
  v16 = operator new(v12);
  v17 = v16;
  if (v8)
  {
    memmove(v16, p_p, v8);
  }

  v18 = v17 + v8;
  *v18 = *" bytes; got ";
  *(v18 + 8) = 544501607;
  if (!v15)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v9;
  __p.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v17;
  v19 = (v17 + v9);
LABEL_35:
  *v19 = 0;
  std::to_string(&v42, a3);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v42;
  }

  else
  {
    v23 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v23, v24);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_43:
      if (v25 - 16 < 7)
      {
        v26 = v25 + 7;
        v27 = &__p;
        v28 = 22;
LABEL_49:
        v30 = 2 * v28;
        if (v26 > 2 * v28)
        {
          v30 = v26;
        }

        if ((v30 | 7) == 0x17)
        {
          v31 = 25;
        }

        else
        {
          v31 = (v30 | 7) + 1;
        }

        if (v30 >= 0x17)
        {
          v29 = v31;
        }

        else
        {
          v29 = 23;
        }

        v32 = v28 == 22;
        goto LABEL_58;
      }

      v37 = &__p;
LABEL_65:
      v38 = (v37 + v25);
      *(v38 + 3) = 779314548;
      *v38 = 1954112032;
      v39 = v25 + 7;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = v25 + 7;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v39 & 0x7F;
      }

      v36 = v37 + v39;
      goto LABEL_69;
    }
  }

  v25 = __p.__r_.__value_.__l.__size_;
  v28 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v28 - __p.__r_.__value_.__l.__size_ >= 7)
  {
    v37 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_65;
  }

  v29 = 0x7FFFFFFFFFFFFFF7;
  v26 = __p.__r_.__value_.__l.__size_ + 7;
  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 7 - v28)
  {
LABEL_74:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = __p.__r_.__value_.__r.__words[0];
  if (v28 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_49;
  }

  v32 = 0;
LABEL_58:
  v33 = operator new(v29);
  v34 = v33;
  if (v25)
  {
    memmove(v33, v27, v25);
  }

  v35 = (v34 + v25);
  *(v35 + 3) = 779314548;
  *v35 = 1954112032;
  if (!v32)
  {
    operator delete(v27);
  }

  __p.__r_.__value_.__l.__size_ = v26;
  __p.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v34;
  v36 = (v34 + v26);
LABEL_69:
  *v36 = 0;
  std::logic_error::logic_error(this, &__p);
  this->__vftable = (MEMORY[0x29EDC95E0] + 16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_2A1E9C350;
  return this;
}

void sub_298086458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *tlv::TlvParseException::TlvParseException(std::logic_error *this)
{
  result = std::logic_error::logic_error(this, "TLV parsing failed; endpoint preceded beginning of buffer.");
  result->__vftable = &unk_2A1E9C350;
  return result;
}

{
  result = std::logic_error::logic_error(this, "TLV parsing failed; endpoint preceded beginning of buffer.");
  result->__vftable = &unk_2A1E9C350;
  return result;
}

unint64_t tlv::throwIfNotAligned(unint64_t this, const unsigned __int8 *a2, unint64_t a3)
{
  if (this > a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvParseException::TlvParseException(exception);
    goto LABEL_6;
  }

  v3 = &a2[-this];
  if (&a2[-this] % a3)
  {
    v5 = &v3[a3 - 1] / a3 * a3;
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvParseException::TlvParseException(exception, v5, v3);
LABEL_6:
  }

  return this;
}

void tlv::TlvParseException::~TlvParseException(tlv::TlvParseException *this)
{
  v1 = MEMORY[0x29C27F640](this);

  operator delete(v1);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FDF0]();
}

{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE38]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

{
  return MEMORY[0x2A1C6FE48]();
}

{
  return MEMORY[0x2A1C6FE50]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}