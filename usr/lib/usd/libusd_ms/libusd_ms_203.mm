void sub_29B1F4FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_29A008B0C(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

const void *sub_29B1F5038(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E10, 0) != 0);
  }

  return result;
}

char *sub_29B1F509C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E10, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F5184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1F51BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29B1F5208(a1, a2);
}

void sub_29B1F51EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F5208(uint64_t a1, uint64_t a2)
{
  sub_29A008864(v13);
  v3 = *(v13[0] - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((v13 + v3));
  std::ios_base::imbue((v13 + v3), v4);
  std::locale::~locale(&v10);
  v5 = *(&v15[1].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v18, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v18);
  }

  std::locale::~locale(&v12);
  v6 = v13[0];
  if (dword_2A178E964 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = (dword_2A178E964 == 2) << 8;
  }

  *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFEFB | v7;
  *(&v13[2] + *(v6 - 24)) = dword_2A14FE138;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  v13[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v13[2] = v8;
  v14 = MEMORY[0x29EDC9570] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v17);
}

uint64_t sub_29B1F5560(const std::string *a1, _WORD *a2)
{
  sub_29A9EE25C(v12, a1, 24);
  v3 = *(v12[0] - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((v12 + v3));
  std::ios_base::imbue((v12 + v3), v4);
  std::locale::~locale(&v10);
  v5 = *(&v14[1].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v17, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v11);
  LODWORD(v17.__locale_) = 0;
  v6 = MEMORY[0x29C2C1DB0](v12, &v17);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v10);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  *a2 = sub_29B1FCCE0(*&v17.__locale_);
  v12[0] = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12[2] = v7;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v16);
}

void sub_29B1F5834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_29A008B0C(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

const void *sub_29B1F5894(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E28, 0) != 0);
  }

  return result;
}

char *sub_29B1F58F8(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E28, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F59E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F5A18()
{
  if ((atomic_load_explicit(&qword_2A14FDF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FDF90))
  {
    sub_29A008E78(qword_2A14FDF78, qword_2A14FDF98);
    __cxa_guard_release(&qword_2A14FDF90);
  }

  return qword_2A14FDF78;
}

void sub_29B1F5A98(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F49E8(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 4;
    --v4;
  }

  while (v4);
}

void sub_29B1F5B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float sub_29B1F5B7C(std::string *a1)
{
  v7 = 0;
  v6 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10[1] - v10[0] != 72)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = &v6;
  do
  {
    sub_29B1F4D1C((v10[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 72);
  __p[0] = v10;
  sub_29A012C90(__p);
  return *&v6;
}

void sub_29B1F5CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F5D14(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E40, 0) != 0);
  }

  return result;
}

char *sub_29B1F5D78(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E40, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F5E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F5E98()
{
  if ((atomic_load_explicit(&qword_2A14FDFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FDFB8))
  {
    sub_29A008E78(qword_2A14FDFA0, qword_2A14FDFC0);
    __cxa_guard_release(&qword_2A14FDFB8);
  }

  return qword_2A14FDFA0;
}

void sub_29B1F5F18(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F49E8(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 4;
    --v4;
  }

  while (v4);
}

void sub_29B1F5FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float sub_29B1F5FFC(std::string *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9[1] - v9[0] != 96)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = v6;
  do
  {
    sub_29B1F4D1C((v9[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 96);
  __p[0] = v9;
  sub_29A012C90(__p);
  return *v6;
}

void sub_29B1F6128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F6190(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E58, 0) != 0);
  }

  return result;
}

char *sub_29B1F61F4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E58, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F62DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F6314()
{
  if ((atomic_load_explicit(&qword_2A14FDFE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FDFE0))
  {
    sub_29A008E78(qword_2A14FDFC8, qword_2A14FDFE8);
    __cxa_guard_release(&qword_2A14FDFE0);
  }

  return qword_2A14FDFC8;
}

void sub_29B1F6394(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_29B1F49E8(a1 + 4 * v4, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v8 = HIBYTE(v11);
    }

    else
    {
      v8 = v10;
    }

    std::string::append(a2, p_p, v8);
    if (v6)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
}

void sub_29B1F6450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float sub_29B1F647C(std::string *a1)
{
  v4 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7[1] - v7[0]) != 48)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  sub_29B1F4D1C(v7[0], &v4);
  sub_29B1F4D1C(v7[0] + 1, &v4 + 4);
  __p[0] = v7;
  sub_29A012C90(__p);
  return *&v4;
}

void sub_29B1F6598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F6600(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E70, 0) != 0);
  }

  return result;
}

char *sub_29B1F6664(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E70, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F674C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F6784()
{
  if ((atomic_load_explicit(&qword_2A14FE008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE008))
  {
    sub_29A008E78(qword_2A14FDFF0, qword_2A14FE010);
    __cxa_guard_release(&qword_2A14FE008);
  }

  return qword_2A14FDFF0;
}

void sub_29B1F6804(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F49E8(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 4;
    --v4;
  }

  while (v4);
}

void sub_29B1F68BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float sub_29B1F68E8(std::string *a1)
{
  v7 = 0;
  v6 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10[1] - v10[0] != 72)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = &v6;
  do
  {
    sub_29B1F4D1C((v10[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 72);
  __p[0] = v10;
  sub_29A012C90(__p);
  return *&v6;
}

void sub_29B1F6A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F6A80(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7E88, 0) != 0);
  }

  return result;
}

char *sub_29B1F6AE4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7E88, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F6BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F6C04()
{
  if ((atomic_load_explicit(&qword_2A14FE030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE030))
  {
    sub_29A008E78(qword_2A14FE018, qword_2A14FE038);
    __cxa_guard_release(&qword_2A14FE030);
  }

  return qword_2A14FE018;
}

void sub_29B1F6C84(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F49E8(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 4;
    --v4;
  }

  while (v4);
}

void sub_29B1F6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

float sub_29B1F6D68(std::string *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9[1] - v9[0] != 96)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = v6;
  do
  {
    sub_29B1F4D1C((v9[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 96);
  __p[0] = v9;
  sub_29A012C90(__p);
  return *v6;
}

void sub_29B1F6E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F6EFC(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7EA0, 0) != 0);
  }

  return result;
}

char *sub_29B1F6F60(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7EA0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F7048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F7080(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_29B1F5208(a1 + 2 * v4, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v8 = HIBYTE(v11);
    }

    else
    {
      v8 = v10;
    }

    std::string::append(a2, p_p, v8);
    if (v6)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
}

void sub_29B1F713C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F7168(std::string *a1)
{
  v4 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7[1] - v7[0]) != 48)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  sub_29B1F5560(v7[0], &v4);
  sub_29B1F5560(v7[0] + 1, &v4 + 1);
  __p[0] = v7;
  sub_29A012C90(__p);
  return v4;
}

void sub_29B1F7284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F72EC(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7EB8, 0) != 0);
  }

  return result;
}

char *sub_29B1F7350(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7EB8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F7438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F7470(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F5208(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 2;
    --v4;
  }

  while (v4);
}

void sub_29B1F7528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29B1F7554(std::string *a1)
{
  v7 = 0;
  v6 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10[1] - v10[0] != 72)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = &v6;
  do
  {
    sub_29B1F5560((v10[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 2);
  }

  while (v2 != 72);
  __p[0] = v10;
  sub_29A012C90(__p);
  return v6 | (v7 << 32);
}

void sub_29B1F7688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F76F0(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7ED0, 0) != 0);
  }

  return result;
}

char *sub_29B1F7754(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7ED0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F783C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F7874(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F5208(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    a1 += 2;
    --v4;
  }

  while (v4);
}

void sub_29B1F792C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F7958(std::string *a1)
{
  v6 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9[1] - v9[0] != 96)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = &v6;
  do
  {
    sub_29B1F5560((v9[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 2);
  }

  while (v2 != 96);
  __p[0] = v9;
  sub_29A012C90(__p);
  return v6;
}

void sub_29B1F7A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F7AE8(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7EE8, 0) != 0);
  }

  return result;
}

char *sub_29B1F7B4C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7EE8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F7C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F7C6C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_29B1F3E2C((a1 + 4 * v4), &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v8 = HIBYTE(v11);
    }

    else
    {
      v8 = v10;
    }

    std::string::append(a2, p_p, v8);
    if (v6)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
}

void sub_29B1F7D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F7D54(std::string *a1)
{
  v4 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7[1] - v7[0]) != 48)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  sub_29B1F4134(v7[0], &v4);
  sub_29B1F4134(v7[0] + 1, &v4 + 4);
  __p[0] = v7;
  sub_29A012C90(__p);
  return v4;
}

void sub_29B1F7E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F7ED8(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F00, 0) != 0);
  }

  return result;
}

char *sub_29B1F7F3C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F00, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F8024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F805C(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F3E2C(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_29B1F8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F8140(std::string *a1)
{
  v7 = 0;
  v6 = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10[1] - v10[0] != 72)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = &v6;
  do
  {
    sub_29B1F4134((v10[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 72);
  __p[0] = v10;
  sub_29A012C90(__p);
  return v6;
}

void sub_29B1F8270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F82D8(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F18, 0) != 0);
  }

  return result;
}

char *sub_29B1F833C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F18, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F8424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F845C(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_29B1F3E2C(a1, &__p);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      std::string::append(a2, off_2A14FDF50[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_29B1F8514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F8540(std::string *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9[1] - v9[0] != 96)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v2 = 0;
  v3 = v6;
  do
  {
    sub_29B1F4134((v9[0] + v2), v3);
    v2 += 24;
    v3 = (v3 + 4);
  }

  while (v2 != 96);
  __p[0] = v9;
  sub_29A012C90(__p);
  return v6[0];
}

void sub_29B1F8668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      __p = &a17;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

const void *sub_29B1F86D0(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F30, 0) != 0);
  }

  return result;
}

char *sub_29B1F8734(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F30, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F881C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F8854()
{
  if ((atomic_load_explicit(&qword_2A14FE088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE088))
  {
    sub_29A008E78(qword_2A14FE070, qword_2A14FE090);
    __cxa_guard_release(&qword_2A14FE088);
  }

  return qword_2A14FE070;
}

void sub_29B1F88D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = a1;
    v6 = 3;
    do
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      sub_29B1F49E8(v5, &__p);
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v11 >= 0)
      {
        v8 = HIBYTE(v11);
      }

      else
      {
        v8 = v10;
      }

      std::string::append(a2, p_p, v8);
      if (v4 != 2 || v6 != 1)
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }

      v5 += 4;
      --v6;
    }

    while (v6);
    ++v4;
    a1 += 12;
  }

  while (v4 != 3);
}

void sub_29B1F89B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F89E0(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12[1] - v12[0] != 216)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v4 = 0;
  for (i = 0; i != 3; ++i)
  {
    v6 = v4;
    v7 = v3;
    v8 = 3;
    do
    {
      sub_29B1F4D1C((v12[0] + v6), v7);
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
    v3 += 12;
    v4 += 72;
  }

  __p[0] = v12;
  sub_29A012C90(__p);
}

void sub_29B1F8B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      __p = &a15;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void *sub_29B1F8BA0(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F48, 0) != 0);
  }

  return result;
}

char *sub_29B1F8C04(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F48, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F8CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F8D24()
{
  if ((atomic_load_explicit(&qword_2A14FE0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE0B0))
  {
    sub_29A008E78(qword_2A14FE098, qword_2A14FE0B8);
    __cxa_guard_release(&qword_2A14FE0B0);
  }

  return qword_2A14FE098;
}

void sub_29B1F8DA4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = a1;
    v6 = 4;
    do
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      sub_29B1F49E8(v5, &__p);
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v11 >= 0)
      {
        v8 = HIBYTE(v11);
      }

      else
      {
        v8 = v10;
      }

      std::string::append(a2, p_p, v8);
      if (v4 != 3 || v6 != 1)
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }

      v5 += 4;
      --v6;
    }

    while (v6);
    ++v4;
    a1 += 16;
  }

  while (v4 != 4);
}

void sub_29B1F8E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F8EB0(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  sub_29A008E78(__p, off_2A14FDF48[0]);
  sub_29B1F3590(a1, __p, v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12[1] - v12[0] != 384)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v4 = 0;
  for (i = 0; i != 4; ++i)
  {
    v6 = v4;
    v7 = v3;
    v8 = 4;
    do
    {
      sub_29B1F4D1C((v12[0] + v6), v7);
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
    ++v3;
    v4 += 96;
  }

  __p[0] = v12;
  sub_29A012C90(__p);
}

void sub_29B1F9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      __p = &a15;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void *sub_29B1F9070(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F60, 0) != 0);
  }

  return result;
}

char *sub_29B1F90D4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F60, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F91BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F91F4()
{
  if ((atomic_load_explicit(&qword_2A14FE0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE0D8))
  {
    sub_29A008E78(qword_2A14FE0C0, qword_2A14FE0E0);
    __cxa_guard_release(&qword_2A14FE0D8);
  }

  return qword_2A14FE0C0;
}

std::string *sub_29B1F9274@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a2, __str);
}

void sub_29B1F92A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29B1F92C4@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a2, __str);
}

void sub_29B1F92F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B1F9314(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F78, 0) != 0);
  }

  return result;
}

char *sub_29B1F9378(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F78, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F9460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F9498(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      sub_29B1F3E2C((v3 + v5), &__p);
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v11 >= 0)
      {
        v8 = HIBYTE(v11);
      }

      else
      {
        v8 = v10;
      }

      std::string::append(a2, p_p, v8);
      if (++v6 < (a1[1] - *a1) >> 2)
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }

      v3 = *a1;
      v5 += 4;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }
}

void sub_29B1F9574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F95A0(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A008E78(v9, ",");
  sub_29B1F3590(a1, v9, v8);
  v4 = v8[0];
  v5 = v8[1];
  while (v4 != v5)
  {
    v7 = 0;
    sub_29B1F3AB0(v4, &__p);
    sub_29B1F4134(&__p, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A00D250(a2, &v7);
    ++v4;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  sub_29A012C90(&__p);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29B1F9668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B1F96C8(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7F90, 0) != 0);
  }

  return result;
}

char *sub_29B1F972C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7F90, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F9814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F984C(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1[1])
  {
    v4 = 0;
    do
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
      if ((*(*a1 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
      {
        v5 = off_2A14FDF28;
      }

      else
      {
        v5 = off_2A14FDF30;
      }

      MEMORY[0x29C2C1A60](&__p, *v5);
      if (v10 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v10 >= 0)
      {
        v7 = HIBYTE(v10);
      }

      else
      {
        v7 = v9;
      }

      std::string::append(a2, p_p, v7);
      if (++v4 < a1[1])
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p);
      }
    }

    while (v4 < a1[1]);
  }
}

void sub_29B1F9948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F9978(std::string *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A008E78(v9, ",");
  sub_29B1F3590(a1, v9, v8);
  v4 = v8[0];
  v5 = v8[1];
  while (v4 != v5)
  {
    v7 = 0;
    sub_29B1F3AB0(v4, &__p);
    sub_29B1F466C(&__p.__r_.__value_.__l.__data_, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A235478(a2, &v7);
    ++v4;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  sub_29A012C90(&__p);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29B1F9A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*v24)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B1F9A9C(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7FA8, 0) != 0);
  }

  return result;
}

char *sub_29B1F9B00(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7FA8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F9BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1F9C20(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      sub_29B1F49E8(v3 + v5, &__p);
      if (v11 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v11 >= 0)
      {
        v8 = HIBYTE(v11);
      }

      else
      {
        v8 = v10;
      }

      std::string::append(a2, p_p, v8);
      if (++v6 < (a1[1] - *a1) >> 2)
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p);
      }

      v3 = *a1;
      v5 += 4;
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }
}

void sub_29B1F9CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F9D28(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A008E78(v9, ",");
  sub_29B1F3590(a1, v9, v8);
  v4 = v8[0];
  v5 = v8[1];
  while (v4 != v5)
  {
    v7 = 0;
    sub_29B1F3AB0(v4, &__p);
    sub_29B1F4D1C(&__p, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A0C2184(a2, &v7);
    ++v4;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  sub_29A012C90(&__p);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29B1F9DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B1F9E50(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7FC0, 0) != 0);
  }

  return result;
}

char *sub_29B1F9EB4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7FC0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F9F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_29B1F9FD4()
{
  if ((atomic_load_explicit(&qword_2A14FE118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FE118))
  {
    sub_29A008E78(qword_2A14FE100, qword_2A14FE120);
    __cxa_guard_release(&qword_2A14FE118);
  }

  return qword_2A14FE100;
}

void sub_29B1FA054(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      memset(&v9, 0, sizeof(v9));
      std::string::operator=(&v9, (v3 + v5));
      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v9;
      }

      else
      {
        v7 = v9.__r_.__value_.__r.__words[0];
      }

      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v9.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v7, size);
      if (++v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
      {
        std::string::append(a2, off_2A14FDF50[0]);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      v3 = *a1;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_29B1FA150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1FA17C(std::string *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A008E78(v7, ",");
  sub_29B1F3590(a1, v7, v6);
  if (v6[0] != v6[1])
  {
    memset(&v5, 0, sizeof(v5));
    sub_29B1F3AB0(v6[0], &__p);
    std::string::operator=(&v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A070BA0(a2);
  }

  v5.__r_.__value_.__r.__words[0] = v6;
  sub_29A012C90(&v5);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_29B1FA258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

const void *sub_29B1FA2CC(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7FD8, 0) != 0);
  }

  return result;
}

char *sub_29B1FA330(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7FD8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1FA418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1FA450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A008864(v14);
  v4 = *(v14[0] - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((v14 + v4));
  std::ios_base::imbue((v14 + v4), v5);
  std::locale::~locale(&v11);
  v6 = *(&v17[1].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v20, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v20);
  }

  std::locale::~locale(&v13);
  v7 = v14[0];
  if (dword_2A178E964 == 1)
  {
    v8 = 4;
  }

  else
  {
    v8 = (dword_2A178E964 == 2) << 8;
  }

  *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFEFB | v8;
  *(&v14[2] + *(v7 - 24)) = dword_2A14FE138;
  MEMORY[0x29C2C1EF0](&v15, *a1);
  std::stringbuf::str();
  *a2 = v11;
  a2[2] = v12;
  v14[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v9;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v19);
}

uint64_t sub_29B1FA750(const std::string *a1)
{
  v8 = 0;
  sub_29A9EE25C(v11, a1, 24);
  v1 = *(v11[0] - 24);
  v2 = std::locale::classic();
  std::ios_base::getloc((v11 + v1));
  std::ios_base::imbue((v11 + v1), v2);
  std::locale::~locale(v9);
  v3 = *(&v13[1].__locale_ + v1);
  if (v3)
  {
    (*(v3->__locale_ + 2))(v3, v2);
    std::locale::locale(&v16, v3 + 1);
    std::locale::operator=(v3 + 1, v2);
    std::locale::~locale(&v16);
  }

  std::locale::~locale(&v10);
  v4 = MEMORY[0x29C2C1DE0](v11, &v8);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, v9);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v11[0] = *MEMORY[0x29EDC9528];
  v5 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v11[2] = v5;
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v15);
  return v8;
}

void sub_29B1FAA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_29A008B0C(&a18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

const void *sub_29B1FAA70(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7FF0, 0) != 0);
  }

  return result;
}

char *sub_29B1FAAD4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7FF0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1FABBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1FABF4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A008864(v14);
  v4 = *(v14[0] - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((v14 + v4));
  std::ios_base::imbue((v14 + v4), v5);
  std::locale::~locale(&v11);
  v6 = *(&v17[1].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v20, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v20);
  }

  std::locale::~locale(&v13);
  v7 = v14[0];
  if (dword_2A178E964 == 1)
  {
    v8 = 4;
  }

  else
  {
    v8 = (dword_2A178E964 == 2) << 8;
  }

  *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFEFB | v8;
  *(&v14[2] + *(v7 - 24)) = dword_2A14FE138;
  MEMORY[0x29C2C1EB0](&v15, *a1);
  std::stringbuf::str();
  *a2 = v11;
  a2[2] = v12;
  v14[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v9;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v19);
}

double sub_29B1FAEF4(const std::string *a1)
{
  v8 = 0.0;
  sub_29A9EE25C(v11, a1, 24);
  v1 = *(v11[0] - 24);
  v2 = std::locale::classic();
  std::ios_base::getloc((v11 + v1));
  std::ios_base::imbue((v11 + v1), v2);
  std::locale::~locale(v9);
  v3 = *(&v13[1].__locale_ + v1);
  if (v3)
  {
    (*(v3->__locale_ + 2))(v3, v2);
    std::locale::locale(&v16, v3 + 1);
    std::locale::operator=(v3 + 1, v2);
    std::locale::~locale(&v16);
  }

  std::locale::~locale(&v10);
  v4 = MEMORY[0x29C2C1DA0](v11, &v8);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, v9);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v11[0] = *MEMORY[0x29EDC9528];
  v5 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v11[2] = v5;
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v15);
  return v8;
}

void sub_29B1FB1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_29A008B0C(&a18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void *sub_29B1FB214()
{
  if ((atomic_load_explicit(&qword_2A17870D8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D08C8();
  }

  return &unk_2A17870E0;
}

void sub_29B1FB24C(std::string *a1@<X0>, const void **a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1FB214();
  v6 = sub_29A5DAB7C(qword_2A17870E0, a2);
  sub_29B1FB214();
  if (v6)
  {
    v7 = v6[5];

    v7(a1);
  }

  else
  {

    sub_29B1FB2E0(a1, a3);
  }
}

void sub_29B1FB2E0(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1F92C4(a1, &__p);
  sub_29B201354(&__p, &v4);
  *a2 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B1FB340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    *v15 = 0;
    v15[1] = 0;
    JUMPOUT(0x29B1FB32CLL);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29B1FB384(_DWORD *result, int a2, int a3)
{
  v3 = dword_2A14FE138;
  *result = dword_2A178E964;
  result[1] = v3;
  dword_2A178E964 = a2;
  if ((a3 & 0x80000000) == 0)
  {
    dword_2A14FE138 = a3;
  }

  return result;
}

int *sub_29B1FB3A8(int *result)
{
  v1 = result[1];
  dword_2A178E964 = *result;
  dword_2A14FE138 = v1;
  return result;
}

void *sub_29B1FB3C0()
{
  if ((atomic_load_explicit(&qword_2A1786C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786C70))
  {
    sub_29A008E78(qword_2A1786C58, qword_2A14FDF58);
    __cxa_guard_release(&qword_2A1786C70);
  }

  return qword_2A1786C58;
}

void sub_29B1FB448()
{
  if ((atomic_load_explicit(&qword_2A1786F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F60))
  {
    sub_29B1FCD80(&unk_2A1786F58);

    __cxa_guard_release(&qword_2A1786F60);
  }
}

void *sub_29B1FB4CC()
{
  if ((atomic_load_explicit(&qword_2A1786C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786C90))
  {
    sub_29A008E78(qword_2A1786C78, qword_2A14FDF60);
    __cxa_guard_release(&qword_2A1786C90);
  }

  return qword_2A1786C78;
}

void sub_29B1FB554()
{
  if ((atomic_load_explicit(&qword_2A1786F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F70))
  {
    sub_29B1FD290(&unk_2A1786F68);

    __cxa_guard_release(&qword_2A1786F70);
  }
}

void *sub_29B1FB5D8()
{
  if ((atomic_load_explicit(&qword_2A1786CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786CB0))
  {
    sub_29A008E78(qword_2A1786C98, qword_2A14FDF68);
    __cxa_guard_release(&qword_2A1786CB0);
  }

  return qword_2A1786C98;
}

void sub_29B1FB660()
{
  if ((atomic_load_explicit(&qword_2A1786F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F80))
  {
    sub_29B1FD530(&unk_2A1786F78);

    __cxa_guard_release(&qword_2A1786F80);
  }
}

void *sub_29B1FB6E4()
{
  if ((atomic_load_explicit(&qword_2A1786CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786CD0))
  {
    sub_29A008E78(qword_2A1786CB8, qword_2A14FDF70);
    __cxa_guard_release(&qword_2A1786CD0);
  }

  return qword_2A1786CB8;
}

void sub_29B1FB76C()
{
  if ((atomic_load_explicit(&qword_2A1786F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F90))
  {
    sub_29B1FD7D8(&unk_2A1786F88);

    __cxa_guard_release(&qword_2A1786F90);
  }
}

void *sub_29B1FB7F0()
{
  if ((atomic_load_explicit(&qword_2A1786CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786CF0))
  {
    sub_29A008E78(qword_2A1786CD8, qword_2A14FDF98);
    __cxa_guard_release(&qword_2A1786CF0);
  }

  return qword_2A1786CD8;
}

void sub_29B1FB878()
{
  if ((atomic_load_explicit(&qword_2A1786FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FA0))
  {
    sub_29B1FDA78(&unk_2A1786F98);

    __cxa_guard_release(&qword_2A1786FA0);
  }
}

void *sub_29B1FB8FC()
{
  if ((atomic_load_explicit(&qword_2A1786D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786D10))
  {
    sub_29A008E78(qword_2A1786CF8, qword_2A14FDFC0);
    __cxa_guard_release(&qword_2A1786D10);
  }

  return qword_2A1786CF8;
}

void sub_29B1FB984()
{
  if ((atomic_load_explicit(&qword_2A1786FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FB0))
  {
    sub_29B1FDD28(&unk_2A1786FA8);

    __cxa_guard_release(&qword_2A1786FB0);
  }
}

void *sub_29B1FBA08()
{
  if ((atomic_load_explicit(&qword_2A1786D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786D30))
  {
    sub_29A008E78(qword_2A1786D18, qword_2A14FDFE8);
    __cxa_guard_release(&qword_2A1786D30);
  }

  return qword_2A1786D18;
}

void sub_29B1FBA90()
{
  if ((atomic_load_explicit(&qword_2A1786FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FC0))
  {
    sub_29B1FDFD8(&unk_2A1786FB8);

    __cxa_guard_release(&qword_2A1786FC0);
  }
}

void *sub_29B1FBB14()
{
  if ((atomic_load_explicit(&qword_2A1786D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786D50))
  {
    sub_29A008E78(qword_2A1786D38, qword_2A14FE010);
    __cxa_guard_release(&qword_2A1786D50);
  }

  return qword_2A1786D38;
}

void sub_29B1FBB9C()
{
  if ((atomic_load_explicit(&qword_2A1786FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FD0))
  {
    sub_29B1FE270(&unk_2A1786FC8);

    __cxa_guard_release(&qword_2A1786FD0);
  }
}

void *sub_29B1FBC20()
{
  if ((atomic_load_explicit(&qword_2A1786D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786D70))
  {
    sub_29A008E78(qword_2A1786D58, qword_2A14FE038);
    __cxa_guard_release(&qword_2A1786D70);
  }

  return qword_2A1786D58;
}

void sub_29B1FBCA8()
{
  if ((atomic_load_explicit(&qword_2A1786FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FE0))
  {
    sub_29B1FE520(&unk_2A1786FD8);

    __cxa_guard_release(&qword_2A1786FE0);
  }
}

void *sub_29B1FBD2C()
{
  if ((atomic_load_explicit(&qword_2A1786D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786D90))
  {
    sub_29A008E78(qword_2A1786D78, qword_2A14FE040);
    __cxa_guard_release(&qword_2A1786D90);
  }

  return qword_2A1786D78;
}

void sub_29B1FBDB4()
{
  if ((atomic_load_explicit(&qword_2A1786FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786FF0))
  {
    sub_29B1FE7D0(&unk_2A1786FE8);

    __cxa_guard_release(&qword_2A1786FF0);
  }
}

void *sub_29B1FBE38()
{
  if ((atomic_load_explicit(&qword_2A1786DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786DB0))
  {
    sub_29A008E78(qword_2A1786D98, qword_2A14FE048);
    __cxa_guard_release(&qword_2A1786DB0);
  }

  return qword_2A1786D98;
}

void sub_29B1FBEC0()
{
  if ((atomic_load_explicit(&qword_2A1787000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787000))
  {
    sub_29B1FEA60(&unk_2A1786FF8);

    __cxa_guard_release(&qword_2A1787000);
  }
}

void *sub_29B1FBF44()
{
  if ((atomic_load_explicit(&qword_2A1786DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786DD0))
  {
    sub_29A008E78(qword_2A1786DB8, qword_2A14FE050);
    __cxa_guard_release(&qword_2A1786DD0);
  }

  return qword_2A1786DB8;
}

void sub_29B1FBFCC()
{
  if ((atomic_load_explicit(&qword_2A1787010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787010))
  {
    sub_29B1FED00(&unk_2A1787008);

    __cxa_guard_release(&qword_2A1787010);
  }
}

void *sub_29B1FC050()
{
  if ((atomic_load_explicit(&qword_2A1786DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786DF0))
  {
    sub_29A008E78(qword_2A1786DD8, qword_2A14FE058);
    __cxa_guard_release(&qword_2A1786DF0);
  }

  return qword_2A1786DD8;
}

void sub_29B1FC0D8()
{
  if ((atomic_load_explicit(&qword_2A1787020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787020))
  {
    sub_29B1FEF88(&unk_2A1787018);

    __cxa_guard_release(&qword_2A1787020);
  }
}

void *sub_29B1FC15C()
{
  if ((atomic_load_explicit(&qword_2A1786E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786E10))
  {
    sub_29A008E78(qword_2A1786DF8, qword_2A14FE060);
    __cxa_guard_release(&qword_2A1786E10);
  }

  return qword_2A1786DF8;
}

void sub_29B1FC1E4()
{
  if ((atomic_load_explicit(&qword_2A1787030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787030))
  {
    sub_29B1FF210(&unk_2A1787028);

    __cxa_guard_release(&qword_2A1787030);
  }
}

void *sub_29B1FC268()
{
  if ((atomic_load_explicit(&qword_2A1786E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786E30))
  {
    sub_29A008E78(qword_2A1786E18, qword_2A14FE068);
    __cxa_guard_release(&qword_2A1786E30);
  }

  return qword_2A1786E18;
}

void sub_29B1FC2F0()
{
  if ((atomic_load_explicit(&qword_2A1787040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787040))
  {
    sub_29B1FF4B0(&unk_2A1787038);

    __cxa_guard_release(&qword_2A1787040);
  }
}

void *sub_29B1FC374()
{
  if ((atomic_load_explicit(&qword_2A1786E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786E50))
  {
    sub_29A008E78(qword_2A1786E38, qword_2A14FE090);
    __cxa_guard_release(&qword_2A1786E50);
  }

  return qword_2A1786E38;
}

void sub_29B1FC3FC()
{
  if ((atomic_load_explicit(&qword_2A1787050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787050))
  {
    sub_29B1FF74C(&unk_2A1787048);

    __cxa_guard_release(&qword_2A1787050);
  }
}

void *sub_29B1FC480()
{
  if ((atomic_load_explicit(&qword_2A1786E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786E70))
  {
    sub_29A008E78(qword_2A1786E58, qword_2A14FE0B8);
    __cxa_guard_release(&qword_2A1786E70);
  }

  return qword_2A1786E58;
}

void sub_29B1FC508()
{
  if ((atomic_load_explicit(&qword_2A1787060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787060))
  {
    sub_29B1FFA00(&unk_2A1787058);

    __cxa_guard_release(&qword_2A1787060);
  }
}

void *sub_29B1FC58C()
{
  if ((atomic_load_explicit(&qword_2A1786E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786E90))
  {
    sub_29A008E78(qword_2A1786E78, qword_2A14FE0E0);
    __cxa_guard_release(&qword_2A1786E90);
  }

  return qword_2A1786E78;
}

void sub_29B1FC614()
{
  if ((atomic_load_explicit(&qword_2A1787070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787070))
  {
    sub_29B1FFCB4(&unk_2A1787068);

    __cxa_guard_release(&qword_2A1787070);
  }
}

void *sub_29B1FC698()
{
  if ((atomic_load_explicit(&qword_2A1786EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786EB0))
  {
    sub_29A008E78(qword_2A1786E98, qword_2A14FE0E8);
    __cxa_guard_release(&qword_2A1786EB0);
  }

  return qword_2A1786E98;
}

void sub_29B1FC720()
{
  if ((atomic_load_explicit(&qword_2A1787080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787080))
  {
    sub_29B1FFDA4(&unk_2A1787078);

    __cxa_guard_release(&qword_2A1787080);
  }
}

void *sub_29B1FC7A4()
{
  if ((atomic_load_explicit(&qword_2A1786ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786ED0))
  {
    sub_29A008E78(qword_2A1786EB8, qword_2A14FE0F0);
    __cxa_guard_release(&qword_2A1786ED0);
  }

  return qword_2A1786EB8;
}

void sub_29B1FC82C()
{
  if ((atomic_load_explicit(&qword_2A1787090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787090))
  {
    sub_29B2001AC(&unk_2A1787088);

    __cxa_guard_release(&qword_2A1787090);
  }
}

void *sub_29B1FC8B0()
{
  if ((atomic_load_explicit(&qword_2A1786EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786EF0))
  {
    sub_29A008E78(qword_2A1786ED8, qword_2A14FE0F8);
    __cxa_guard_release(&qword_2A1786EF0);
  }

  return qword_2A1786ED8;
}

void sub_29B1FC938()
{
  if ((atomic_load_explicit(&qword_2A17870A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17870A0))
  {
    sub_29B200614(&unk_2A1787098);

    __cxa_guard_release(&qword_2A17870A0);
  }
}

void *sub_29B1FC9BC()
{
  if ((atomic_load_explicit(&qword_2A1786F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F10))
  {
    sub_29A008E78(qword_2A1786EF8, qword_2A14FE120);
    __cxa_guard_release(&qword_2A1786F10);
  }

  return qword_2A1786EF8;
}

void sub_29B1FCA44()
{
  if ((atomic_load_explicit(&qword_2A17870B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17870B0))
  {
    sub_29B200A1C(&unk_2A17870A8);

    __cxa_guard_release(&qword_2A17870B0);
  }
}

void *sub_29B1FCAC8()
{
  if ((atomic_load_explicit(&qword_2A1786F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F30))
  {
    sub_29A008E78(qword_2A1786F18, qword_2A14FE128);
    __cxa_guard_release(&qword_2A1786F30);
  }

  return qword_2A1786F18;
}

void sub_29B1FCB50()
{
  if ((atomic_load_explicit(&qword_2A17870C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17870C0))
  {
    sub_29B200E34(&unk_2A17870B8);

    __cxa_guard_release(&qword_2A17870C0);
  }
}

void *sub_29B1FCBD4()
{
  if ((atomic_load_explicit(&qword_2A1786F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786F50))
  {
    sub_29A008E78(qword_2A1786F38, qword_2A14FE130);
    __cxa_guard_release(&qword_2A1786F50);
  }

  return qword_2A1786F38;
}

void sub_29B1FCC5C()
{
  if ((atomic_load_explicit(&qword_2A17870D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17870D0))
  {
    sub_29B2010BC(&unk_2A17870C8);

    __cxa_guard_release(&qword_2A17870D0);
  }
}

uint64_t sub_29B1FCCE0(float a1)
{
  v1 = fabsf(a1);
  v3 = v1 * 1.3744e11;
  v4 = LODWORD(v1);
  v5 = LODWORD(a1) >> 31;
  if ((v1 * 1.3744e11) > 2147500000.0)
  {
    v3 = 2147500000.0;
  }

  if (LODWORD(v1) >> 23 < 0x71)
  {
    v4 = v3;
  }

  if (v4 - 1199562753 < 0x38001FFF)
  {
    v4 = 2139095040;
  }

  v6 = v4 - 2139095041;
  v7 = v4 >> 13;
  if (v6 < 0x1FFF)
  {
    v7 = 261121;
  }

  if (v7 >> 10 > 0x8E)
  {
    v7 -= 114688;
  }

  if (v7 > 1023)
  {
    LOWORD(v7) = v7 + 0x4000;
  }

  return (v7 | (v5 << 15));
}

uint64_t sub_29B1FCD80(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF58);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF58);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FCE70;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FCE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FCE70@<X0>(const std::string *a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  sub_29B1F4134(a1, &v5);
  v3 = v5;
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8018;
  result[3] = &unk_2A20C8068;
  *(result + 8) = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FCF34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FCFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8018;
  result[3] = &unk_2A20C8068;
  *(result + 8) = *(a1 + 8);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void *sub_29B1FD020(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t sub_29B1FD290(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF60);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF60);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FD380;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FD360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FD380@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  sub_29B1F466C(a1, &v5);
  v3 = v5;
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C80A0;
  result[3] = &unk_2A20C80F0;
  *(result + 32) = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FD444(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C80A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FD4B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C80A0;
  result[3] = &unk_2A20C80F0;
  *(result + 32) = *(a1 + 8);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FD530(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF68);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF68);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FD620;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FD600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FD620@<X0>(const std::string *a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  sub_29B1F4D1C(a1, &v5);
  v3 = v5;
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8128;
  result[3] = &unk_2A20C8178;
  *(result + 8) = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FD6EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

float sub_29B1FD760@<S0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_2A20C8128;
  *(v4 + 3) = &unk_2A20C8178;
  result = *(a1 + 8);
  v4[8] = result;
  *a2 = v4 + 6;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FD7D8(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF70);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF70);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FD8C8;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FD8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FD8C8@<X0>(const std::string *a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  sub_29B1F5560(a1, &v5);
  v3 = v5;
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C81B0;
  result[3] = &unk_2A20C8200;
  *(result + 16) = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FD98C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C81B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FDA00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C81B0;
  result[3] = &unk_2A20C8200;
  *(result + 16) = *(a1 + 8);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FDA78(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF98);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDF98);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FDB68;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FDB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *sub_29B1FDB68@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F5B7C(a1);
  v5 = v4;
  v7 = v6;
  result = operator new(0x30uLL);
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = &unk_2A20C8238;
  *(result + 3) = &unk_2A20C8288;
  result[8] = v3;
  *(result + 9) = v5;
  *(result + 10) = v7;
  *a2 = result + 6;
  a2[1] = result;
  return result;
}

void sub_29B1FDC38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FDCAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8238;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8288;
  result[4] = v5;
  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FDD28(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDFC0);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDFC0);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FDE18;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FDDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *sub_29B1FDE18@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F5FFC(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = operator new(0x30uLL);
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = &unk_2A20C82C0;
  *(result + 3) = &unk_2A20C8310;
  result[8] = v3;
  *(result + 9) = v5;
  *(result + 10) = v7;
  *(result + 11) = v9;
  *a2 = result + 6;
  a2[1] = result;
  return result;
}

void sub_29B1FDEEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C82C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 sub_29B1FDF60@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = &unk_2A20C82C0;
  v4[1].n128_u64[1] = &unk_2A20C8310;
  result = *(a1 + 8);
  v4[2] = result;
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FDFD8(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDFE8);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FDFE8);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FE0C8;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FE0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *sub_29B1FE0C8@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F647C(a1);
  v5 = v4;
  result = operator new(0x28uLL);
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = &unk_2A20C8348;
  *(result + 3) = &unk_2A20C8398;
  result[8] = v3;
  *(result + 9) = v5;
  *a2 = result + 6;
  a2[1] = result;
  return result;
}

void sub_29B1FE188(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FE1FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8348;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8398;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FE270(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE010);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE010);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FE360;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FE340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *sub_29B1FE360@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F68E8(a1);
  v5 = v4;
  v7 = v6;
  result = operator new(0x30uLL);
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = &unk_2A20C83D0;
  *(result + 3) = &unk_2A20C8420;
  result[8] = v3;
  *(result + 9) = v5;
  *(result + 10) = v7;
  *a2 = result + 6;
  a2[1] = result;
  return result;
}

void sub_29B1FE430(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C83D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FE4A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C83D0;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8420;
  result[4] = v5;
  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FE520(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE038);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE038);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FE610;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FE5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *sub_29B1FE610@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F6D68(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = operator new(0x30uLL);
  *(result + 1) = 0;
  *(result + 2) = 0;
  *result = &unk_2A20C8458;
  *(result + 3) = &unk_2A20C84A8;
  result[8] = v3;
  *(result + 9) = v5;
  *(result + 10) = v7;
  *(result + 11) = v9;
  *a2 = result + 6;
  a2[1] = result;
  return result;
}

void sub_29B1FE6E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 sub_29B1FE758@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = &unk_2A20C8458;
  v4[1].n128_u64[1] = &unk_2A20C84A8;
  result = *(a1 + 8);
  v4[2] = result;
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FE7D0(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE040);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE040);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FE8C0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FE8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FE8C0@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F7168(a1);
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C84E0;
  result[3] = &unk_2A20C8530;
  *(result + 8) = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FE974(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C84E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FE9E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C84E0;
  result[3] = &unk_2A20C8530;
  *(result + 8) = *(a1 + 8);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FEA60(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE048);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE048);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FEB50;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FEB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FEB50@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F7554(a1);
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8568;
  result[3] = &unk_2A20C85B8;
  *(result + 8) = v3;
  *(result + 18) = WORD2(v3);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FEC0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FEC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8568;
  result[3] = &unk_2A20C85B8;
  *(result + 8) = *(a1 + 8);
  *(result + 18) = *(a1 + 12);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FED00(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE050);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE050);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FEDF0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FEDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FEDF0@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F7958(a1);
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C85F0;
  result[3] = &unk_2A20C8640;
  result[4] = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FEEA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C85F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FEF14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C85F0;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8640;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FEF88(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE058);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE058);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FF078;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FF058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FF078@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F7D54(a1);
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8678;
  result[3] = &unk_2A20C86C8;
  result[4] = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FF128(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FF19C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8678;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C86C8;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FF210(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE060);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE060);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FF300;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FF300@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F8140(a1);
  v5 = v4;
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8700;
  result[3] = &unk_2A20C8750;
  result[4] = v3;
  *(result + 10) = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FF3C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1FF434@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8700;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8750;
  result[4] = v5;
  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B1FF4B0(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE068);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE068);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FF5A0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FF580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1FF5A0@<X0>(std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1F8540(a1);
  v5 = v4;
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8788;
  result[3] = &unk_2A20C87D8;
  result[4] = v3;
  result[5] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B1FF660(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 sub_29B1FF6D4@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = &unk_2A20C8788;
  v4[1].n128_u64[1] = &unk_2A20C87D8;
  result = *(a1 + 8);
  v4[2] = result;
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FF74C(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE090);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE090);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FF83C;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FF81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1FF83C@<D0>(std::string *a1@<X0>, void *a2@<X8>)
{
  sub_29B1F89E0(a1, v6);
  v3 = operator new(0x48uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A20C8810;
  v3[3] = &unk_2A20C8860;
  result = *v6;
  v5 = v6[1];
  *(v3 + 2) = v6[0];
  *(v3 + 3) = v5;
  *(v3 + 16) = v7;
  *a2 = v3 + 3;
  a2[1] = v3;
  return result;
}

void sub_29B1FF908(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 sub_29B1FF97C@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = &unk_2A20C8810;
  v4[1].n128_u64[1] = &unk_2A20C8860;
  result = *(a1 + 8);
  v6 = *(a1 + 24);
  v4[2] = result;
  v4[3] = v6;
  v4[4].n128_u32[0] = *(a1 + 40);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FFA00(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0B8);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0B8);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FFAF0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FFAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1FFAF0@<D0>(std::string *a1@<X0>, void *a2@<X8>)
{
  sub_29B1F8EB0(a1, v7);
  v3 = operator new(0x60uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A20C8898;
  v3[3] = &unk_2A20C88E8;
  v4 = v7[1];
  *(v3 + 2) = v7[0];
  *(v3 + 3) = v4;
  result = *&v8;
  v6 = v9;
  *(v3 + 4) = v8;
  *(v3 + 5) = v6;
  *a2 = v3 + 3;
  a2[1] = v3;
  return result;
}

void sub_29B1FFBB8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 sub_29B1FFC2C@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x60uLL);
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = &unk_2A20C8898;
  v4[1].n128_u64[1] = &unk_2A20C88E8;
  v5 = *(a1 + 24);
  v4[2] = *(a1 + 8);
  v4[3] = v5;
  result = *(a1 + 40);
  v7 = *(a1 + 56);
  v4[4] = result;
  v4[5] = v7;
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FFCB4(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0E0);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0E0);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FB2E0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FFD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1FFDA4(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0E8);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0E8);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B1FFE94;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1FFE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1FFE94(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1F95A0(a1, __p);
  sub_29B1FFF38(__p, &v4);
  *a2 = v4;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29B1FFEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    *v11 = 0;
    v11[1] = 0;
    JUMPOUT(0x29B1FFEE0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1FFF38@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29B1FFF94(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B1FFF94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20C8920;
  *(a1 + 24) = &unk_2A20C8970;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  sub_29A0BE2C8((a1 + 32), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  return a1;
}

void sub_29B20004C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B2000B8(void *a1)
{
  *a1 = &unk_2A20C8970;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29B200108(void *__p)
{
  *__p = &unk_2A20C8970;
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

double sub_29B200168@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1FFF38(a1 + 8, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

uint64_t sub_29B2001AC(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0F0);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0F0);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B20029C;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B20027C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B20029C(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1F9978(a1, __p);
  sub_29B200338(__p, &v4);
  *a2 = v4;
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_29B2002F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    *v10 = 0;
    v10[1] = 0;
    JUMPOUT(0x29B2002E4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B200338@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29B200394(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B200394(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C89A8;
  a1[3] = &unk_2A20C89F8;
  sub_29A27C374(a1 + 4, a2);
  return a1;
}

void sub_29B200434(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C89A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B2004A0(void *a1)
{
  *a1 = &unk_2A20C89F8;
  v2 = a1[1];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B2004EC(void *__p)
{
  *__p = &unk_2A20C89F8;
  v2 = __p[1];
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(__p);
}

double sub_29B200548@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B200338(a1 + 8, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void sub_29B20058C(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_29A27C3D0(a2, a3, a4, a5, &v11, v13);
}

uint64_t sub_29B200614(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0F8);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE0F8);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B200704;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B2006E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B200704(std::string *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1F9D28(a1, __p);
  sub_29B2007A8(__p, &v4);
  *a2 = v4;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29B200764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    *v11 = 0;
    v11[1] = 0;
    JUMPOUT(0x29B200750);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2007A8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29B200804(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B200804(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20C8A30;
  *(a1 + 24) = &unk_2A20C8A80;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  sub_29A0BE484((a1 + 32), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  return a1;
}

void sub_29B2008BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B200928(void *a1)
{
  *a1 = &unk_2A20C8A80;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29B200978(void *__p)
{
  *__p = &unk_2A20C8A80;
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

double sub_29B2009D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B2007A8(a1 + 8, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

uint64_t sub_29B200A1C(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE120);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE120);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B200B0C;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B200AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B200B6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v11 - 40) = &a10;
  sub_29A012C90((v11 - 40));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    *v10 = 0;
    v10[1] = 0;
    JUMPOUT(0x29B200B58);
  }

  _Unwind_Resume(a1);
}

void sub_29B200C0C(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20C8AB8;
  *(a1 + 24) = &unk_2A20C8B08;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B200CD0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B200D3C(uint64_t a1)
{
  *a1 = &unk_2A20C8B08;
  v3 = (a1 + 8);
  sub_29A012C90(&v3);
  return a1;
}

void sub_29B200D94(char *a1)
{
  *a1 = &unk_2A20C8B08;
  v2 = (a1 + 8);
  sub_29A012C90(&v2);
  operator delete(a1);
}

uint64_t sub_29B200E34(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE128);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE128);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B200F24;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B200F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B200F24@<X0>(const std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1FA750(a1);
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8B40;
  result[3] = &unk_2A20C8B90;
  result[4] = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B200FD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B201048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8B40;
  v5 = *(a1 + 8);
  result[3] = &unk_2A20C8B90;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

uint64_t sub_29B2010BC(uint64_t a1)
{
  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE130);
  v2 = sub_29A8877BC(qword_2A17870E0, __p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_29B1FB214();
  sub_29A008E78(__p, qword_2A14FE130);
  v7 = __p;
  *(sub_29B1FD020(qword_2A17870E0, __p, &unk_29B76761F, &v7) + 5) = sub_29B2011AC;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B20118C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_29B2011AC@<X0>(const std::string *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_29B1FAEF4(a1);
  result = operator new(0x28uLL);
  result[1] = 0.0;
  result[2] = 0.0;
  *result = &unk_2A20C8BC8;
  *(result + 3) = &unk_2A20C8C18;
  result[4] = v3;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B201268(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B2012DC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  v4[1] = 0.0;
  v4[2] = 0.0;
  *v4 = &unk_2A20C8BC8;
  *(v4 + 3) = &unk_2A20C8C18;
  result = *(a1 + 8);
  v4[4] = result;
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B201354@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29B2013B0(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B2013B0(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C8C50;
  sub_29B201498(a1 + 3, a2);
  return a1;
}

void sub_29B20142C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C8C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B201498(void *a1, __int128 *a2)
{
  *a1 = &unk_2A20C8CA0;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

uint64_t sub_29B201500(uint64_t a1)
{
  *a1 = &unk_2A20C8CA0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B201550(void **__p)
{
  *__p = &unk_2A20C8CA0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

double sub_29B2015B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B201354((a1 + 8), v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::__usdlib_internal_mtlx_intialize(pxrInternal__aapl__pxrReserved__ *this)
{
  if (atomic_load_explicit(&qword_2A1787108, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_2A1787108, &v4, sub_29B201658);
  }
}

uint64_t sub_29B201658()
{
  if (&qword_2A1B71768 < &off_2A1B71A30)
  {
    v0 = &qword_2A1B71768;
    do
    {
      v1 = *v0++;
      result = v1();
    }

    while (v0 < &off_2A1B71A30);
  }

  return result;
}

__int128 *sub_29B2016D4@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = getenv(a1);
  if (v3)
  {

    return sub_29A008E78(a2, v3);
  }

  else
  {
    result = sub_29B1F31FC();
    if (*(result + 23) < 0)
    {
      v6 = *result;
      v7 = *(result + 1);

      return sub_29A008D14(a2, v6, v7);
    }

    else
    {
      v5 = *result;
      a2[2] = *(result + 2);
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_29B201770(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return std::ostream::write();
  }

  else
  {
    return MEMORY[0x2A1C6FE58](*(a1 + 16), a2, a3 >> 2);
  }
}

const char *sub_29B20179C(uint64_t *a1)
{
  v1 = *a1;
  result = "";
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

const char *sub_29B2017BC(uint64_t *a1)
{
  v1 = *a1;
  result = "";
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_29B201804(uint64_t **a1, char *__s)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = strlen(__s);

  return sub_29B2018CC(v2 + 2, v2, 16, __s, v4);
}

uint64_t sub_29B201868(uint64_t **a1, char *__s)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = strlen(__s);

  return sub_29B2018CC(v2 + 1, v2, 32, __s, v4);
}

uint64_t sub_29B2018CC(uint64_t *a1, uint64_t *a2, uint64_t a3, void *__src, size_t __n)
{
  if (!__n)
  {
    v24 = *a2;
    if ((*a2 & a3) != 0)
    {
      sub_29B204864(*(a2 - (v24 >> 8)), *a1);
      v24 = *a2;
    }

    *a1 = 0;
    v23 = v24 & ~a3;
    goto LABEL_21;
  }

  v10 = *a1;
  v11 = *a2;
  if (*a1)
  {
    v12 = (*a2 & 0x40) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = strlen(*a1);
    if ((v11 & a3) != 0)
    {
      if (v13 < __n || v13 >= 0x20 && v13 - __n >= v13 >> 1)
      {
        goto LABEL_11;
      }
    }

    else if (v13 < __n)
    {
      goto LABEL_11;
    }

    memcpy(v10, __src, __n);
    *(*a1 + __n) = 0;
    return 1;
  }

LABEL_11:
  v14 = *(a2 - (v11 >> 8));
  v15 = __n + 12;
  v16 = (__n + 12) & 0xFFFFFFFFFFFFFFF8;
  v17 = v14[1];
  if (v17 + v16 <= 0x7FD8)
  {
    v18 = *v14;
    result = *v14 + v17 + 40;
    v14[1] = v17 + v16;
LABEL_13:
    *result = (result - v18 + 524248) >> 3;
    v20 = v15 >> 3;
    if (v15 >= 0x80000)
    {
      LOWORD(v20) = 0;
    }

    *(result + 2) = v20;
    v21 = result + 4;
    memcpy((result + 4), __src, __n);
    *(v21 + __n) = 0;
    v22 = *a2;
    if ((*a2 & a3) != 0)
    {
      sub_29B204864(v14, *a1);
      v22 = *a2;
    }

    *a1 = v21;
    v23 = v22 | a3;
LABEL_21:
    *a2 = v23;
    return 1;
  }

  v25 = 0;
  result = sub_29B2048EC(v14, v16, &v25);
  if (result)
  {
    LODWORD(v18) = v25;
    goto LABEL_13;
  }

  return result;
}

uint64_t (*sub_29B201A68(void *a1))()
{
  if (*a1)
  {
    return nullsub_1852;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29B201A88@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  a2[1] = v2;
  a2[2] = 0;
  a2[3] = v2;
  return result;
}

uint64_t sub_29B201AA8(uint64_t a1, char *__s1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 32); i; i = *(i + 48))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t *sub_29B201B00@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  a2[1] = v2;
  a2[2] = 0;
  a2[3] = v2;
  return result;
}

uint64_t sub_29B201B20(_DWORD **a1)
{
  if (*a1)
  {
    return **a1 & 0xF;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B201B3C(uint64_t a1, char *__s1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 56); i; i = *(i + 32))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_29B201B94(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B201BAC(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B201BC4(uint64_t **a1, char *__s)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *v2 & 0xF;
  v4 = v3 > 8;
  v5 = (1 << v3) & 0x184;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v8 = strlen(__s);

  return sub_29B2018CC(v2 + 1, v2, 32, __s, v8);
}

uint64_t sub_29B201C4C(uint64_t **a1, char *__s)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *v2 & 0xF;
  v4 = v3 > 9;
  v5 = (1 << v3) & 0x2B8;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v8 = strlen(__s);

  return sub_29B2018CC(v2 + 2, v2, 16, __s, v8);
}

char *sub_29B201CD4(uint64_t a1, char *__s)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if ((*v2 & 0xF) != 8 && (*v2 & 0xF) != 2)
  {
    return 0;
  }

  v6 = *(v2 - (*v2 >> 8));
  v7 = v6[1];
  if ((v7 + 5) > 0x7FD8)
  {
    v14 = 0;
    v9 = sub_29B2048EC(v6, 0x28uLL, &v14);
    if (!v9)
    {
      return v9;
    }

    v8 = v14;
  }

  else
  {
    v8 = *v6;
    v9 = v7 + *v6 + 40;
    v6[1] = v7 + 5;
  }

  *(v9 + 24) = 0u;
  *(v9 + 8) = 0u;
  *v9 = (v9 - v8) << 8;
  v14 = v9;
  v10 = *(*a1 + 56);
  if (v10)
  {
    v12 = *(v10 + 24);
    v11 = (v10 + 24);
    *(v12 + 32) = v9;
    *(v9 + 3) = v12;
  }

  else
  {
    *(*a1 + 56) = v9;
    v11 = (v9 + 24);
  }

  *v11 = v9;
  sub_29B201868(&v14, __s);
  return v9;
}

char *sub_29B201DD0(void **a1, unsigned int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 2)
  {
    v4 = *v2 & 0xFLL;
    if ((v4 - 3) >= 0xFFFFFFFE)
    {
      if ((a2 & 0xFFFFFFFE) == 8 && v4 != 1)
      {
        return 0;
      }

      v6 = *(v2 - (*v2 >> 8));
      v7 = v6[1];
      if ((v7 + 8) > 0x7FD8)
      {
        v14 = a1;
        v15 = 0;
        v13 = a2;
        v3 = sub_29B2048EC(v6, 0x40uLL, &v15);
        if (!v3)
        {
          return v3;
        }

        a1 = v14;
        v8 = v15;
        a2 = v13;
      }

      else
      {
        v8 = *v6;
        v3 = v7 + *v6 + 40;
        v6[1] = v7 + 8;
      }

      *(v3 + 7) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      *v3 = a2 | ((v3 - v8) << 8);
      v15 = v3;
      v9 = *a1;
      *(v3 + 3) = *a1;
      v10 = v9[4];
      if (v10)
      {
        v12 = *(v10 + 40);
        v11 = (v10 + 40);
        *(v12 + 48) = v3;
        *(v3 + 5) = v12;
      }

      else
      {
        v9[4] = v3;
        v11 = (v3 + 40);
      }

      *v11 = v3;
      if (a2 == 8)
      {
        sub_29B201BC4(&v15, "xml");
      }
    }
  }

  return v3;
}

uint64_t *sub_29B201F00(void **a1, char *a2)
{
  v3 = sub_29B201DD0(a1, 2u);
  v5 = v3;
  sub_29B201BC4(&v5, a2);
  return v3;
}

uint64_t sub_29B201F48(void **a1, uint64_t **a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = v3[3];
  if (v4 != v2)
  {
    return 0;
  }

  v6 = *(v2 - (*v2 >> 8));
  v8 = v3[5];
  v7 = v3[6];
  v9 = v7;
  if (!v7)
  {
    v9 = v4[4];
  }

  *(v9 + 40) = v8;
  v11 = *(v8 + 48);
  v10 = (v8 + 48);
  v12 = v4 + 4;
  if (v11)
  {
    v12 = v10;
  }

  *v12 = v7;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29B201FD4(*a2, v6);
  return 1;
}

void sub_29B201FD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    sub_29B204864(a2, a1[1]);
    v4 = *a1;
  }

  if ((v4 & 0x10) != 0)
  {
    sub_29B204864(a2, a1[2]);
  }

  v5 = a1[7];
  if (v5)
  {
    do
    {
      v6 = v5[4];
      v7 = *v5;
      if ((*v5 & 0x20) != 0)
      {
        sub_29B204864(a2, v5[1]);
        v7 = *v5;
      }

      if ((v7 & 0x10) != 0)
      {
        sub_29B204864(a2, v5[2]);
        v7 = *v5;
      }

      sub_29B204888(a2, 40, (v5 - (v7 >> 8)));
      v5 = v6;
    }

    while (v6);
  }

  v8 = a1[4];
  if (v8)
  {
    do
    {
      v9 = *(v8 + 48);
      sub_29B201FD4();
      v8 = v9;
    }

    while (v9);
  }

  v10 = (a1 - (*a1 >> 8));

  sub_29B204888(a2, 64, v10);
}

void sub_29B2020B4(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 **a10)
{
  v13 = a4;
  if (!a3 && a4)
  {
    *(a9 + 16) = 0;
    v17 = 2;
LABEL_562:
    *a9 = v17;
    *(a9 + 8) = 0;
    return;
  }

  v18 = sub_29B2049AC(a6, a3, a4);
  v19 = v18;
  if (v18 == 1)
  {
    if (a7)
    {
      v20 = a3;
      goto LABEL_154;
    }

    v49 = v13 + 1;
    v32 = off_2A1B6E0A8(v13 + 1);
    if (v32)
    {
      v20 = v32;
      if (a3)
      {
        memcpy(v32, a3, v13);
      }

      v50 = &v20[v13];
      goto LABEL_153;
    }

LABEL_561:
    *(a9 + 16) = 0;
    v17 = 3;
    goto LABEL_562;
  }

  if ((v18 & 0xFFFFFFFE) == 2)
  {
    v21 = v13 >> 1;
    v228 = a2;
    if (v18 == 2)
    {
      if (v13 >= 2)
      {
        v22 = 0;
        v23 = a3;
        v24 = v13 >> 1;
        while (1)
        {
          v25 = *v23;
          if (v25 >> 11 > 0x1A)
          {
            if ((~v25 & 0xE000) != 0)
            {
              v27 = v23 + 2;
              v28 = -1;
              if (v24 != 1 && (v25 & 0xFC00) == 0xD800)
              {
                v29 = *v27 & 0xFC00;
                v30 = v29 == 56320;
                v31 = (v23 + 4);
                if (v29 == 56320)
                {
                  v28 = -2;
                }

                else
                {
                  v28 = -1;
                }

                if (v30)
                {
                  v22 += 4;
                }

                if (v30)
                {
                  v27 = v31;
                }
              }

              goto LABEL_21;
            }

            v22 += 3;
          }

          else
          {
            if (v25 < 0x800)
            {
              v26 = 2;
            }

            else
            {
              v26 = 3;
            }

            if (v25 < 0x80)
            {
              v26 = 1;
            }

            v22 += v26;
          }

          v27 = v23 + 2;
          v28 = -1;
LABEL_21:
          v23 = v27;
          v24 += v28;
          if (!v24)
          {
            v49 = v22 + 1;
            v50 = off_2A1B6E0A8(v22 + 1);
            if (!v50)
            {
              goto LABEL_561;
            }

            v51 = a3;
            v231 = v50;
            while (2)
            {
              v52 = *v51;
              if (v52 >> 11 <= 0x1A || (~v52 & 0xE000) == 0)
              {
                v50 = sub_29B204E9C(v50, v52);
                v53 = v51 + 2;
                goto LABEL_72;
              }

              v53 = v51 + 2;
              v54 = -1;
              if (v21 != 1 && (v52 & 0xFC00) == 0xD800)
              {
                v55 = *v53;
                if ((*v53 & 0xFC00) == 0xDC00)
                {
                  v56 = ((v52 << 10) & 0xFFC00) + 0x10000;
                  *v50 = (v56 >> 18) | 0xF0;
                  v50[1] = (v56 >> 12) & 0x3F | 0x80;
                  v50[2] = (((v52 << 10) | v55 & 0x3FF) >> 6) & 0x3F | 0x80;
                  v50[3] = v55 & 0x3F | 0x80;
                  v50 += 4;
                  v53 = v51 + 4;
                  v54 = -2;
                }

                else
                {
LABEL_72:
                  v54 = -1;
                }
              }

              v51 = v53;
              v21 += v54;
              if (!v21)
              {
                goto LABEL_152;
              }

              continue;
            }
          }
        }
      }

      goto LABEL_59;
    }

    if (v13 < 2)
    {
LABEL_59:
      v49 = 1;
      v50 = off_2A1B6E0A8(1uLL);
      if (!v50)
      {
        goto LABEL_561;
      }

      v20 = v50;
LABEL_61:
      a2 = v228;
      goto LABEL_153;
    }

    v57 = 0;
    v58 = a3;
    v59 = v13 >> 1;
    while (1)
    {
      v60 = bswap32(*v58);
      v61 = HIWORD(v60);
      if (v60 >> 27 > 0x1A)
      {
        if ((~v61 & 0xE000) != 0)
        {
          v63 = v58 + 2;
          v64 = -1;
          if (v59 != 1 && (v61 & 0xFC00) == 0xD800)
          {
            v65 = *v63 & 0xFC;
            v66 = v65 == 220;
            v67 = (v58 + 4);
            if (v65 == 220)
            {
              v64 = -2;
            }

            else
            {
              v64 = -1;
            }

            if (v66)
            {
              v57 += 4;
            }

            if (v66)
            {
              v63 = v67;
            }
          }

          goto LABEL_93;
        }

        v57 += 3;
      }

      else
      {
        if (v61 < 0x800)
        {
          v62 = 2;
        }

        else
        {
          v62 = 3;
        }

        if (v61 < 0x80)
        {
          v62 = 1;
        }

        v57 += v62;
      }

      v63 = v58 + 2;
      v64 = -1;
LABEL_93:
      v58 = v63;
      v59 += v64;
      if (!v59)
      {
        v49 = v57 + 1;
        v50 = off_2A1B6E0A8(v57 + 1);
        if (!v50)
        {
          goto LABEL_561;
        }

        v68 = a3;
        v231 = v50;
        while (2)
        {
          v69 = bswap32(*v68);
          v70 = HIWORD(v69);
          if (v69 >> 27 <= 0x1A || (~v70 & 0xE000) == 0)
          {
            v50 = sub_29B204E9C(v50, v70);
            v71 = v68 + 2;
            goto LABEL_111;
          }

          v71 = v68 + 2;
          v72 = -1;
          if (v21 != 1 && (v70 & 0xFC00) == 0xD800)
          {
            v73 = bswap32(*v71) >> 16;
            if ((v73 & 0xFC00) == 0xDC00)
            {
              v74 = ((v70 << 10) & 0xFFC00) + 0x10000;
              *v50 = (v74 >> 18) | 0xF0;
              v50[1] = (v74 >> 12) & 0x3F | 0x80;
              v50[2] = (((v70 << 10) | v73 & 0x3FF) >> 6) & 0x3F | 0x80;
              v50[3] = v73 & 0x3F | 0x80;
              v50 += 4;
              v71 = v68 + 4;
              v72 = -2;
            }

            else
            {
LABEL_111:
              v72 = -1;
            }
          }

          v68 = v71;
          v21 += v72;
          if (!v21)
          {
            goto LABEL_152;
          }

          continue;
        }
      }
    }
  }

  if ((v18 - 5) > 1)
  {
    v228 = a2;
    if (v18 != 9)
    {
      goto LABEL_561;
    }

    v47 = a5;
    v48 = 0;
    if (v13)
    {
      while ((a3[v48] & 0x80000000) == 0)
      {
        if (v13 == ++v48)
        {
          goto LABEL_119;
        }
      }
    }

    v75 = v13 - v48;
    if (v13 != v48)
    {
      v84 = &a3[v48];
      if (v75)
      {
        v75 = 0;
        v85 = v48 - v13;
        v86 = &a3[v48];
        do
        {
          v87 = *v86++;
          if (v87 >= 0)
          {
            v88 = 1;
          }

          else
          {
            v88 = 2;
          }

          v75 += v88;
          v89 = __CFADD__(v85++, 1);
        }

        while (!v89);
      }

      v49 = v48 + v75 + 1;
      v90 = off_2A1B6E0A8(v49);
      if (v90)
      {
        v91 = v90;
        memcpy(v90, a3, v48);
        v231 = v91;
        v50 = &v91[v48];
        if (v13 != v48)
        {
          v92 = v48 - v13;
          do
          {
            v93 = *v84++;
            v50 = sub_29B204E9C(v50, v93);
            v89 = __CFADD__(v92++, 1);
          }

          while (!v89);
        }

        a5 = v47;
LABEL_152:
        a2 = v228;
        v20 = v231;
        goto LABEL_153;
      }

      goto LABEL_561;
    }

LABEL_119:
    if (a7)
    {
      v20 = a3;
      a5 = v47;
      goto LABEL_154;
    }

    v49 = v13 + 1;
    v211 = off_2A1B6E0A8(v13 + 1);
    if (!v211)
    {
      goto LABEL_561;
    }

    v20 = v211;
    if (a3)
    {
      memcpy(v211, a3, v13);
    }

    v50 = &v20[v13];
    a5 = v47;
    goto LABEL_61;
  }

  v33 = v13 >> 2;
  v34 = a2;
  if (v18 == 5)
  {
    if (v13 >= 4)
    {
      v35 = 0;
      v36 = a3;
      v37 = v13 >> 2;
      do
      {
        v39 = *v36++;
        v38 = v39;
        v40 = HIWORD(v39);
        v41 = v35 + 4;
        if (v39 < 0x800)
        {
          v42 = 2;
        }

        else
        {
          v42 = 3;
        }

        if (v38 < 0x80)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        v35 += v43;
        if (v40)
        {
          v35 = v41;
        }

        --v37;
      }

      while (v37);
      v49 = v35 + 1;
      v50 = off_2A1B6E0A8(v35 + 1);
      if (!v50)
      {
        goto LABEL_561;
      }

      v44 = a3;
      v45 = v50;
      do
      {
        v46 = *v44;
        if (HIWORD(*v44))
        {
          *v50 = (v46 >> 18) | 0xF0;
          v50[1] = (v46 >> 12) & 0x3F | 0x80;
          v50[2] = (v46 >> 6) & 0x3F | 0x80;
          v50[3] = v46 & 0x3F | 0x80;
          v50 += 4;
        }

        else
        {
          v50 = sub_29B204E9C(v50, v46);
        }

        ++v44;
        --v33;
      }

      while (v33);
LABEL_138:
      a2 = v34;
      v20 = v45;
      goto LABEL_153;
    }
  }

  else if (v13 >= 4)
  {
    v76 = 0;
    v77 = a3;
    v78 = v13 >> 2;
    do
    {
      v79 = bswap32(*v77);
      if (HIWORD(v79))
      {
        v76 += 4;
      }

      else
      {
        if (v79 < 0x800)
        {
          v80 = 2;
        }

        else
        {
          v80 = 3;
        }

        if (v79 < 0x80)
        {
          v81 = 1;
        }

        else
        {
          v81 = v80;
        }

        v76 += v81;
      }

      ++v77;
      --v78;
    }

    while (v78);
    v49 = v76 + 1;
    v50 = off_2A1B6E0A8(v76 + 1);
    if (!v50)
    {
      goto LABEL_561;
    }

    v82 = a3;
    v45 = v50;
    do
    {
      v83 = bswap32(*v82);
      if (HIWORD(v83))
      {
        *v50 = (v83 >> 18) | 0xF0;
        v50[1] = (v83 >> 12) & 0x3F | 0x80;
        v50[2] = (v83 >> 6) & 0x3F | 0x80;
        v50[3] = v83 & 0x3F | 0x80;
        v50 += 4;
      }

      else
      {
        v50 = sub_29B204E9C(v50, v83);
      }

      ++v82;
      --v33;
    }

    while (v33);
    goto LABEL_138;
  }

  v49 = 1;
  v50 = off_2A1B6E0A8(1uLL);
  if (!v50)
  {
    goto LABEL_561;
  }

  v20 = v50;
LABEL_153:
  *v50 = 0;
  v13 = v49;
LABEL_154:
  if (a8)
  {
    if (a3 && v20 != a3)
    {
      off_2A1B6E0A0(a3);
    }

    goto LABEL_159;
  }

  if (v20 != a3)
  {
LABEL_159:
    *a10 = v20;
  }

  *(a1 + 80) = v20;
  if (!v13)
  {
    *a9 = ~(a5 >> 8) & 0x10;
    *(a9 + 8) = 0;
    goto LABEL_630;
  }

  v94 = *(a2 + 4);
  v223 = (a2 + 32);
  if (v94)
  {
    v222 = *(v94 + 40);
  }

  else
  {
    v222 = 0;
  }

  v232 = v20[v13 - 1];
  v230 = v13 - 1;
  v20[v13 - 1] = 0;
  v95 = v20;
  if (*v20 == 239)
  {
    v95 = v20;
    if (v20[1] == 187)
    {
      v96 = 3;
      if (v20[2] != 191)
      {
        v96 = 0;
      }

      v95 = &v20[v96];
    }
  }

  v225 = off_2A20C8D18[a5 >> 4];
  v226 = off_2A20C8D98[(a5 >> 9) & 4 | (a5 >> 4) & 3];
  v97 = (a5 & 0x408) != 0;
  if ((a5 & 0x800) != 0)
  {
    v97 = 0;
  }

  v227 = v97;
  v224 = a5 & 0x22;
  v98 = a2;
  while (1)
  {
LABEL_173:
    v99 = v95;
    v100 = *v95;
    if (v100 == 60)
    {
LABEL_204:
      v110 = *++v99;
      v109 = v110;
    }

    else
    {
      if (!*v95)
      {
        goto LABEL_548;
      }

      if ((a5 & 0x4000) != 0)
      {
        if ((byte_29B767F72[*v95] & 8) != 0)
        {
          LODWORD(v102) = 0;
          do
          {
            if (v100 == 10)
            {
              v102 = (v102 + 1);
            }

            else
            {
              v102 = v102;
            }

            v103 = *++v95;
            v100 = v103;
          }

          while ((byte_29B767F72[v103] & 8) != 0);
          if (v102 >= 2)
          {
            v104 = a2;
            v105 = v102 - 1;
            do
            {
              v106 = sub_29B204700(v98, (a1 + 64), 6u);
              if (!v106)
              {
                goto LABEL_551;
              }

              v98 = *(v106 + 3);
              --v105;
            }

            while (v105);
            v100 = *v95;
            a2 = v104;
          }
        }
      }

      else
      {
        --v95;
        do
        {
          v101 = *++v95;
          v100 = v101;
        }

        while ((byte_29B767F72[v101] & 8) != 0);
      }

      v107 = v100 == 60 || v100 == 0;
      if (v107 && (!v227 || (a5 & 0x400) != 0 && (v100 != 60 || v95[1] != 47 || *(v98 + 4))))
      {
        continue;
      }

      if ((a5 & 0x800) != 0)
      {
        v99 = v95;
      }

      v108 = *(v98 + 3);
      if ((a5 & 0x1000) == 0 && !v108)
      {
        while (*v99)
        {
          if (*v99 == 60)
          {
            goto LABEL_204;
          }

          ++v99;
        }

LABEL_548:
        if (v98 != a2)
        {
          v215 = 14;
          goto LABEL_550;
        }

        if (v232 == 60)
        {
          v210 = 5;
LABEL_574:
          *a9 = v210;
          v214 = v230;
          goto LABEL_629;
        }

        if ((a5 & 0x1000) == 0)
        {
          v212 = (v222 + 48);
          if (!v222)
          {
            v212 = v223;
          }

          v213 = *v212;
          if (!v213)
          {
LABEL_573:
            v210 = 16;
            goto LABEL_574;
          }

          while ((*v213 & 0xFLL) != 2)
          {
            v213 = v213[6];
            if (!v213)
            {
              goto LABEL_573;
            }
          }
        }

        v215 = 0;
LABEL_579:
        v214 = 0;
        goto LABEL_628;
      }

      if ((a5 & 0x2000) != 0 && v108 && !*(v98 + 4) && !*(v98 + 2))
      {
        *(v98 + 2) = v99;
      }

      else
      {
        v215 = 3;
        v144 = sub_29B204700(v98, (a1 + 64), 3u);
        if (!v144)
        {
          goto LABEL_576;
        }

        *(v144 + 2) = v99;
        v98 = *(v144 + 3);
      }

      v99 = (v226)(v99);
      v109 = *v99;
      if (!*v99)
      {
        goto LABEL_548;
      }
    }

    if (byte_29B767F72[v109] < 0)
    {
      v115 = sub_29B204700(v98, (a1 + 64), 2u);
      if (v115)
      {
        v98 = v115;
        *(v115 + 1) = v99;
        i = v99 + 1;
        while (1)
        {
          v116 = *(i - 1);
          v117 = byte_29B767F72[*(i - 1)];
          if ((v117 & 0x40) == 0)
          {
            break;
          }

          v116 = *i;
          v117 = byte_29B767F72[*i];
          if ((v117 & 0x40) == 0)
          {
            goto LABEL_307;
          }

          v116 = i[1];
          v117 = byte_29B767F72[i[1]];
          if ((v117 & 0x40) == 0)
          {
            ++i;
LABEL_307:
            *i = 0;
            v95 = i + 1;
            if (v116 != 62)
            {
              if ((v117 & 8) != 0)
              {
                goto LABEL_455;
              }

              if (v116)
              {
                if (v116 != 47 || ((v150 = *v95, v232 == 62) ? (v151 = v150 == 0) : (v151 = 0), !v151 ? (v152 = 0) : (v152 = 1), v150 != 62 && !v152))
                {
                  v215 = 11;
                  goto LABEL_618;
                }

                v98 = *(v115 + 3);
                if (v150 == 62)
                {
                  v95 = i + 2;
                }
              }

              else
              {
                v95 = i;
                if (v232 != 62)
                {
                  v215 = 11;
                  goto LABEL_619;
                }
              }
            }

            goto LABEL_173;
          }

          v116 = i[2];
          v117 = byte_29B767F72[i[2]];
          i += 4;
          if ((v117 & 0x40) == 0)
          {
            i -= 2;
            goto LABEL_307;
          }
        }

        --i;
        goto LABEL_307;
      }

      v215 = 3;
LABEL_550:
      i = v99;
      goto LABEL_619;
    }

    if (v109 != 33)
    {
      break;
    }

    v95 = v99 + 1;
    v133 = v99[1];
    if (v133 == 91)
    {
      if (v99[2] == 67)
      {
        if (v99[3] == 68)
        {
          if (v99[4] == 65)
          {
            if (v99[5] == 84)
            {
              if (v99[6] == 65)
              {
                if (v99[7] == 91)
                {
                  i = v99 + 8;
                  if ((a5 & 4) == 0)
                  {
                    while (1)
                    {
                      if (*i == 93)
                      {
                        if (i[1] == 93)
                        {
                          v171 = i[2];
                          v172 = v232 == 62 && v171 == 0;
                          v173 = !v172;
                          if (v171 == 62 || !v173)
                          {
                            ++i;
LABEL_530:
                            v202 = i[1] == 62;
                            v203 = 1;
                            goto LABEL_531;
                          }
                        }
                      }

                      else if (!*i)
                      {
                        goto LABEL_608;
                      }

                      ++i;
                    }
                  }

                  v197 = sub_29B204700(v98, (a1 + 64), 4u);
                  if (!v197)
                  {
LABEL_563:
                    v215 = 3;
                    goto LABEL_619;
                  }

                  v134 = v197;
                  *(v197 + 2) = i;
                  if ((a5 & 0x20) == 0)
                  {
                    while (1)
                    {
                      if (*i == 93)
                      {
                        if (i[1] == 93)
                        {
                          v198 = i[2];
                          v199 = v232 == 62 && v198 == 0;
                          v200 = !v199;
                          if (v198 == 62 || !v200)
                          {
                            *i++ = 0;
                            goto LABEL_530;
                          }
                        }
                      }

                      else if (!*i)
                      {
                        goto LABEL_608;
                      }

                      ++i;
                    }
                  }

                  i = sub_29B2D19C0(i, v232);
                  if (i)
                  {
                    goto LABEL_530;
                  }

                  v215 = 8;
LABEL_575:
                  v99 = *(v134 + 2);
LABEL_576:
                  if (v99)
                  {
                    v214 = v99 - v20;
                    goto LABEL_620;
                  }

                  goto LABEL_579;
                }

                i = v99 + 7;
              }

              else
              {
                i = v99 + 6;
              }
            }

            else
            {
              i = v99 + 5;
            }
          }

          else
          {
            i = v99 + 4;
          }
        }

        else
        {
          i = v99 + 3;
        }
      }

      else
      {
        i = v99 + 2;
      }

LABEL_608:
      v215 = 8;
      goto LABEL_619;
    }

    if (v133 == 68)
    {
      if (v99[2] == 79 && v99[3] == 67 && v99[4] == 84 && v99[5] == 89 && v99[6] == 80)
      {
        v158 = v99[7];
        v159 = v232 == 69 && v158 == 0;
        v160 = v159;
        if (v158 == 69 || v160)
        {
          v161 = *(v98 + 3);
          if (v161)
          {
            i = v99 - 1;
            goto LABEL_610;
          }

          v162 = 68;
LABEL_352:
          if (v162 > 59)
          {
            if (v162 == 60)
            {
              v166 = v95[1];
              if (v166 == 63)
              {
                for (i = v95 + 2; ; ++i)
                {
                  if (*i == 63)
                  {
                    if (i[1] == 62)
                    {
                      v95 = i + 2;
                      goto LABEL_389;
                    }
                  }

                  else if (!*i)
                  {
                    goto LABEL_610;
                  }
                }
              }

              if (v166 != 33)
              {
                goto LABEL_611;
              }

              v167 = v95[2];
              if (v167 == 45)
              {
                if (v95[3] == 45)
                {
                  for (i = v95 + 4; ; ++i)
                  {
                    if (*i == 45)
                    {
                      if (i[1] == 45 && i[2] == 62)
                      {
                        v95 = i + 3;
                        goto LABEL_389;
                      }
                    }

                    else if (!*i)
                    {
                      goto LABEL_610;
                    }
                  }
                }

LABEL_611:
                v215 = 9;
                goto LABEL_618;
              }

              if (v167 != 91)
              {
                ++v161;
                v95 += 2;
                goto LABEL_389;
              }

              v168 = 0;
              v95 += 3;
LABEL_372:
              for (v95 += 3; ; ++v95)
              {
                v169 = *(v95 - 3);
                if (v169 == 60)
                {
                  if (*(v95 - 2) == 33 && *(v95 - 1) == 91)
                  {
                    v170 = 1;
LABEL_386:
                    v168 += v170;
                    goto LABEL_372;
                  }
                }

                else if (v169 == 93)
                {
                  if (*(v95 - 2) == 93 && *(v95 - 1) == 62)
                  {
                    if (v168)
                    {
                      v170 = -1;
                      goto LABEL_386;
                    }

LABEL_389:
                    v162 = *v95;
                    goto LABEL_352;
                  }
                }

                else if (!*(v95 - 3))
                {
                  i = v95 - 3;
                  goto LABEL_610;
                }
              }
            }

            if (v162 != 62)
            {
LABEL_388:
              ++v95;
              goto LABEL_389;
            }

            if (v161)
            {
              --v161;
              goto LABEL_388;
            }

            *v95++ = 0;
          }

          else
          {
            if (v162 == 34 || v162 == 39)
            {
              ++v95;
              do
              {
                v164 = *v95++;
                v163 = v164;
                if (v164)
                {
                  v165 = v163 == v162;
                }

                else
                {
                  v165 = 1;
                }
              }

              while (!v165);
              if (v163)
              {
                goto LABEL_389;
              }

              i = v95 - 1;
LABEL_610:
              v215 = 9;
              goto LABEL_619;
            }

            if (v162)
            {
              goto LABEL_388;
            }

            v215 = 9;
            if (v232 != 62)
            {
              goto LABEL_618;
            }

            i = v95;
            if (v161)
            {
              goto LABEL_619;
            }
          }

          if ((a5 & 0x200) == 0)
          {
            continue;
          }

          v206 = a2;
          v207 = v99 + 7;
          do
          {
            v208 = *++v207;
          }

          while ((byte_29B767F72[v208] & 8) != 0);
          v209 = sub_29B204700(v98, (a1 + 64), 9u);
          if (v209)
          {
            *(v209 + 2) = v207;
            a2 = v206;
            continue;
          }

LABEL_551:
          v215 = 3;
          goto LABEL_618;
        }
      }

LABEL_617:
      v215 = 5;
      goto LABEL_618;
    }

    if (v133 != 45)
    {
      if (v232 == 45 && !v99[1])
      {
        v215 = 7;
        goto LABEL_618;
      }

      if (v232 == 91 && !v99[1])
      {
        v215 = 8;
        goto LABEL_618;
      }

      goto LABEL_617;
    }

    if (v99[2] != 45)
    {
      i = v99 + 2;
LABEL_601:
      v215 = 7;
      goto LABEL_619;
    }

    i = v99 + 3;
    v134 = v98;
    if ((a5 & 2) != 0)
    {
      v135 = sub_29B204700(v98, (a1 + 64), 5u);
      if (!v135)
      {
        goto LABEL_563;
      }

      v134 = v135;
      *(v135 + 2) = i;
    }

    if (v224 == 34)
    {
      v136 = 0;
      v137 = 0;
      while (1)
      {
        while (1)
        {
          v138 = *i;
          if ((byte_29B767F72[v138] & 0x20) != 0)
          {
            v139 = i;
          }

          else
          {
            v139 = i + 2;
            while (1)
            {
              v138 = *(v139 - 1);
              if ((byte_29B767F72[v138] & 0x20) != 0)
              {
                --v139;
                goto LABEL_253;
              }

              v138 = *v139;
              if ((byte_29B767F72[v138] & 0x20) != 0)
              {
                goto LABEL_253;
              }

              v138 = v139[1];
              if ((byte_29B767F72[v138] & 0x20) != 0)
              {
                break;
              }

              v138 = v139[2];
              v139 += 4;
              if ((byte_29B767F72[v138] & 0x20) != 0)
              {
                v139 -= 2;
                goto LABEL_253;
              }
            }

            ++v139;
          }

LABEL_253:
          if (v138 != 13)
          {
            break;
          }

          i = v139 + 1;
          v143 = v139[1];
          *v139 = 10;
          if (v143 == 10)
          {
            if (v136)
            {
              memmove(&v136[-v137], v136, i - v136);
            }

            i = v139 + 2;
            ++v137;
            v136 = (v139 + 2);
          }
        }

        if (v138 == 45)
        {
          if (v139[1] == 45)
          {
            v140 = v139[2];
            v141 = v232 == 62 && v140 == 0;
            v142 = v141;
            if (v140 == 62 || v142)
            {
              v204 = v139;
              if (v136)
              {
                memmove(&v136[-v137], v136, v139 - v136);
                v204 = &v139[-v137];
              }

              *v204 = 0;
              v205 = 2;
              if (v139[2] == 62)
              {
                v205 = 3;
              }

              v95 = &v139[v205];
              goto LABEL_173;
            }
          }
        }

        else if (!v138)
        {
          v215 = 7;
          goto LABEL_575;
        }

        i = v139 + 1;
      }
    }

    while (*i != 45)
    {
      if (!*i)
      {
        goto LABEL_601;
      }

LABEL_489:
      ++i;
    }

    if (i[1] != 45)
    {
      goto LABEL_489;
    }

    v193 = i[2];
    v194 = v232 == 62 && v193 == 0;
    v195 = !v194;
    if (v193 != 62 && v195)
    {
      goto LABEL_489;
    }

    if ((a5 & 2) != 0)
    {
      *i = 0;
    }

    v202 = v193 == 62;
    v203 = 2;
LABEL_531:
    if (v202)
    {
      ++v203;
    }

    v95 = &i[v203];
  }

  if (v109 != 63)
  {
    if (v109 != 47)
    {
      if (v109)
      {
        v216 = 0;
      }

      else
      {
        v216 = v232 == 63;
      }

      if (v216)
      {
        v215 = 6;
      }

      else
      {
        v215 = 5;
      }

      goto LABEL_550;
    }

    i = v99 + 1;
    v112 = *(v98 + 1);
    if (v112)
    {
      v95 = v99 + 1;
      while (1)
      {
        v113 = *v95;
        if ((byte_29B767F72[*v95] & 0x40) == 0)
        {
          break;
        }

        ++v95;
        v114 = *v112++;
        if (v113 != v114)
        {
          goto LABEL_593;
        }
      }

      if (!*v112)
      {
        v98 = *(v98 + 3);
        do
        {
          i = v95;
          v149 = *v95++;
          v148 = v149;
        }

        while ((byte_29B767F72[v149] & 8) != 0);
        if (v148)
        {
          if (v148 != 62)
          {
            v215 = 13;
            goto LABEL_619;
          }

          goto LABEL_173;
        }

        --v95;
        if (v232 == 62)
        {
          goto LABEL_173;
        }

LABEL_602:
        v215 = 13;
        goto LABEL_618;
      }

      if (!*v95 && *v112 == v232 && !v112[1])
      {
        goto LABEL_602;
      }
    }

LABEL_593:
    v215 = 14;
    goto LABEL_619;
  }

  i = v99 + 1;
  if ((byte_29B767F72[v99[1]] & 0x80000000) == 0)
  {
LABEL_566:
    v215 = 6;
    goto LABEL_619;
  }

  v229 = a2;
  v220 = v19;
  v221 = a5;
  v118 = v99 + 1;
  v119 = v99 + 3;
  v120 = 4;
  v121 = 1;
  do
  {
    v122 = v121;
    v95 = v118;
    v124 = *v118++;
    v123 = v124;
    v125 = v119;
    ++v121;
    --v120;
    ++v119;
  }

  while ((byte_29B767F72[v124] & 0x40) != 0);
  v126 = &v99[v122];
  if (!v123)
  {
    goto LABEL_583;
  }

  v127 = v118 - 1;
  if ((v99[1] & 0xDF) != 0x58 || (v99[2] & 0xDF) != 0x4D)
  {
    v130 = v232;
    if ((v221 & 1) == 0)
    {
      goto LABEL_281;
    }

LABEL_322:
    v153 = sub_29B204700(v98, (a1 + 64), 7u);
    if (v153)
    {
      v98 = v153;
      v132 = 0;
      v19 = v220;
      goto LABEL_324;
    }

    v215 = 3;
LABEL_553:
    i = v127;
LABEL_554:
    v19 = v220;
    goto LABEL_619;
  }

  v128 = v120 == 0 && (v99[3] & 0xDF) == 76;
  if (v128)
  {
    v129 = 256;
  }

  else
  {
    v129 = 1;
  }

  v130 = v232;
  if ((v129 & v221) == 0)
  {
    while (1)
    {
LABEL_281:
      if (v123 == 63)
      {
        v123 = v127[1];
        v146 = v130 != 62 || v123 != 0;
        if (v123 == 62 || !v146)
        {
          v30 = v123 == 62;
          v181 = 1;
          if (v30)
          {
            v181 = 2;
          }

          v95 = &v127[v181];
          v19 = v220;
          goto LABEL_453;
        }
      }

      else
      {
        if (!v123)
        {
          v215 = 6;
          goto LABEL_553;
        }

        v123 = v127[1];
      }

      ++v127;
    }
  }

  if (!v128)
  {
    goto LABEL_322;
  }

  if (*(v98 + 3))
  {
LABEL_583:
    v215 = 6;
    i = v126;
    goto LABEL_554;
  }

  v131 = sub_29B204700(v98, (a1 + 64), 8u);
  v19 = v220;
  if (!v131)
  {
    v215 = 3;
    i = v126;
    goto LABEL_619;
  }

  v98 = v131;
  v132 = 1;
  v130 = v232;
LABEL_324:
  *(v98 + 1) = i;
  v154 = *(v118 - 1);
  *(v118 - 1) = 0;
  if (v154 == 63)
  {
    v155 = *v118;
    v157 = v130 == 62 && v155 == 0;
    if (v155 != 62 && !v157)
    {
      v215 = 6;
      i = v118;
      goto LABEL_619;
    }

    if (v155 == 62)
    {
      v95 = v118 + 1;
    }

    else
    {
      v95 = v118;
    }

    v98 = *(v98 + 3);
LABEL_453:
    a5 = v221;
    a2 = v229;
    goto LABEL_454;
  }

  if ((byte_29B767F72[v154] & 8) == 0)
  {
    i = v126 + 1;
    goto LABEL_566;
  }

  do
  {
    v175 = v125;
    v177 = *++v95;
    v176 = v177;
    ++v125;
  }

  while ((byte_29B767F72[v177] & 8) != 0);
  a5 = v221;
  a2 = v229;
  while (2)
  {
    if (v176 != 63)
    {
      if (!v176)
      {
        i = v175 - 1;
        goto LABEL_566;
      }

      v176 = *v175;
      goto LABEL_445;
    }

    v176 = *v175;
    v179 = v130 != 62 || v176 != 0;
    if (v176 != 62 && v179)
    {
LABEL_445:
      ++v175;
      continue;
    }

    break;
  }

  if (v132)
  {
    *(v175 - 1) = 47;
  }

  else
  {
    *(v98 + 2) = v95;
    v98 = *(v98 + 3);
    *(v175 - 1) = 0;
    if (*v175 == 62)
    {
      v95 = v175 + 1;
    }

    else
    {
      v95 = v175;
    }
  }

LABEL_454:
  if ((*v98 & 0xFLL) != 8)
  {
    goto LABEL_173;
  }

  while (1)
  {
    do
    {
LABEL_455:
      i = v95;
      v183 = *v95++;
      v182 = v183;
      v184 = byte_29B767F72[v183];
    }

    while ((v184 & 8) != 0);
    if ((v184 & 0x80) == 0)
    {
      break;
    }

    v185 = sub_29B2047BC(v98, (a1 + 64));
    if (!v185)
    {
      goto LABEL_563;
    }

    v134 = v185;
    *(v185 + 1) = i;
    v186 = i + 1;
    while (1)
    {
      v187 = *(v186 - 1);
      v188 = byte_29B767F72[*(v186 - 1)];
      if ((v188 & 0x40) == 0)
      {
        --v186;
        goto LABEL_466;
      }

      v187 = *v186;
      v188 = byte_29B767F72[*v186];
      if ((v188 & 0x40) == 0)
      {
        goto LABEL_466;
      }

      v187 = v186[1];
      v188 = byte_29B767F72[v186[1]];
      if ((v188 & 0x40) == 0)
      {
        break;
      }

      v187 = v186[2];
      v188 = byte_29B767F72[v186[2]];
      v186 += 4;
      if ((v188 & 0x40) == 0)
      {
        v186 -= 2;
        goto LABEL_466;
      }
    }

    ++v186;
LABEL_466:
    *v186 = 0;
    i = v186 + 1;
    if ((v188 & 8) != 0)
    {
      do
      {
        v189 = *i++;
        v187 = v189;
      }

      while ((byte_29B767F72[v189] & 8) != 0);
    }

    if (v187 != 61)
    {
      goto LABEL_581;
    }

    do
    {
      v191 = *i++;
      v190 = v191;
    }

    while ((byte_29B767F72[v191] & 8) != 0);
    if (v190 != 34 && v190 != 39)
    {
      --i;
LABEL_581:
      v215 = 12;
      goto LABEL_619;
    }

    *(v185 + 2) = i;
    v192 = (v225)(i, v190);
    if (!v192)
    {
      v215 = 12;
      goto LABEL_575;
    }

    v95 = v192;
    if (byte_29B767F72[*v192] < 0)
    {
      v215 = 12;
      goto LABEL_618;
    }
  }

  if (v182 == 62)
  {
    goto LABEL_173;
  }

  if (v182 != 47)
  {
    v215 = 11;
    if (v232 != 62)
    {
      goto LABEL_619;
    }

    v95 = i;
    if (v182)
    {
      goto LABEL_619;
    }

    goto LABEL_173;
  }

  if (*v95 == 62)
  {
    v98 = *(v98 + 3);
    v95 = i + 2;
    goto LABEL_173;
  }

  v215 = 11;
  if (v232 == 62 && !*v95)
  {
    v98 = *(v98 + 3);
    goto LABEL_173;
  }

LABEL_618:
  i = v95;
LABEL_619:
  v214 = i - v20;
LABEL_620:
  if (v232)
  {
    v217 = 0;
  }

  else
  {
    v217 = v214 == v230;
  }

  v218 = v217;
  v219 = v214 - v218;
  if (v214 >= 1)
  {
    v214 = v219;
  }

LABEL_628:
  *a9 = v215;
LABEL_629:
  *(a9 + 8) = v214;
LABEL_630:
  *(a9 + 16) = v19;
}

uint64_t sub_29B203720(uint64_t result, uint64_t a2, char *__src, char a4, int a5)
{
  v9 = result;
  if ((a4 & 0x41) != 0 && (a4 & 4) == 0)
  {
    result = strlen(__src);
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  v12 = 2;
  v13 = a2;
  do
  {
    v14 = *v13;
    if ((*v13 & 0xF) - 3 <= 1)
    {
      result = sub_29B205204(v9, v13, a4);
      v12 = 0;
      goto LABEL_58;
    }

    if (a4 & 4) == 0 && (v12)
    {
      v15 = *(v9 + 10248);
      if (v15 >= 0x800)
      {
        result = sub_29B205EF8(v9, v9, v15);
        v15 = 0;
      }

      *(v9 + v15) = 10;
      *(v9 + 10248) = v15 + 1;
      v14 = *v13;
    }

    if ((v14 & 0xF) != 6 && (v12 & 2) != 0 && v11)
    {
      result = sub_29B2057A4(v9, __src, v11, a5);
      v14 = *v13;
    }

    v16 = v14 & 0xF;
    if (v16 != 1)
    {
      if (v16 != 2)
      {
        result = sub_29B205204(v9, v13, a4);
LABEL_79:
        v12 = 3;
        goto LABEL_58;
      }

      if (*(v13 + 8))
      {
        v17 = *(v13 + 8);
      }

      else
      {
        v17 = ":anonymous";
      }

      v18 = *(v9 + 10248);
      if (v18 >= 0x800)
      {
        sub_29B205EF8(v9, v9, v18);
        v18 = 0;
      }

      *(v9 + v18) = 60;
      *(v9 + 10248) = v18 + 1;
      result = sub_29B2045C0(v9, v17);
      if (*(v13 + 56))
      {
        result = sub_29B205B94(v9, v13, __src, v11, a4, a5);
      }

      if (*(v13 + 16))
      {
        v19 = *(v9 + 10248);
        if (v19 >= 0x800)
        {
          sub_29B205EF8(v9, v9, v19);
          v19 = 0;
        }

        *(v9 + v19) = 62;
        *(v9 + 10248) = v19 + 1;
        result = sub_29B205948(v9, *(v13 + 16), 1, a4);
        v20 = *(v13 + 32);
        if (!v20)
        {
          goto LABEL_72;
        }

        goto LABEL_40;
      }

      v21 = *(v9 + 10248);
      if (*(v13 + 32))
      {
        if (v21 >= 0x800)
        {
          result = sub_29B205EF8(v9, v9, v21);
          v21 = 0;
        }

        *(v9 + v21) = 62;
        *(v9 + 10248) = v21 + 1;
        v20 = *(v13 + 32);
LABEL_40:
        if (*(v13 + 16))
        {
          v12 = 0;
        }

        else
        {
          v12 = 3;
        }

        ++a5;
        goto LABEL_44;
      }

      if ((a4 & 0x80) == 0)
      {
        if ((a4 & 4) == 0)
        {
          if (v21 >= 0x800)
          {
            result = sub_29B205EF8(v9, v9, v21);
            v21 = 0;
          }

          *(v9 + v21++) = 32;
          *(v9 + 10248) = v21;
        }

        if (v21 >= 0x7FF)
        {
          result = sub_29B205EF8(v9, v9, v21);
          v21 = 0;
        }

        *(v9 + v21) = 15919;
        v22 = v21 + 2;
        goto LABEL_78;
      }

      if (v21 >= 0x7FE)
      {
        sub_29B205EF8(v9, v9, v21);
        v21 = 0;
      }

      v23 = v9 + v21;
      *v23 = 15422;
      *(v23 + 2) = 47;
      v24 = v21 + 3;
LABEL_75:
      *(v9 + 10248) = v24;
      result = sub_29B2045C0(v9, v17);
      v27 = *(v9 + 10248);
      if (v27 >= 0x800)
      {
        result = sub_29B205EF8(v9, v9, v27);
        v27 = 0;
      }

      *(v9 + v27) = 62;
      v22 = v27 + 1;
LABEL_78:
      *(v9 + 10248) = v22;
      goto LABEL_79;
    }

    v20 = *(v13 + 32);
    v12 = 2;
    if (!v20)
    {
      do
      {
LABEL_58:
        if (v13 == a2)
        {
          goto LABEL_45;
        }

        v20 = *(v13 + 48);
        if (v20)
        {
          goto LABEL_44;
        }

        v13 = *(v13 + 24);
      }

      while ((*v13 & 0xFLL) != 2);
      if (a4 & 4) == 0 && (v12)
      {
        v25 = *(v9 + 10248);
        if (v25 >= 0x800)
        {
          sub_29B205EF8(v9, v9, v25);
          v25 = 0;
        }

        *(v9 + v25) = 10;
        *(v9 + 10248) = v25 + 1;
      }

      --a5;
      if ((v12 & 2) != 0 && v11)
      {
        sub_29B2057A4(v9, __src, v11, a5);
      }

      if (*(v13 + 8))
      {
        v17 = *(v13 + 8);
      }

      else
      {
        v17 = ":anonymous";
      }

LABEL_72:
      v26 = *(v9 + 10248);
      if (v26 >= 0x7FF)
      {
        sub_29B205EF8(v9, v9, v26);
        v26 = 0;
      }

      *(v9 + v26) = 12092;
      v24 = v26 + 2;
      goto LABEL_75;
    }

LABEL_44:
    v13 = v20;
LABEL_45:
    ;
  }

  while (v13 != a2);
  if (a4 & 4) == 0 && (v12)
  {
    v28 = *(v9 + 10248);
    if (v28 >= 0x800)
    {
      result = sub_29B205EF8(v9, v9, v28);
      v28 = 0;
    }

    *(v9 + v28) = 10;
    *(v9 + 10248) = v28 + 1;
  }

  return result;
}

const char *sub_29B203B94(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0x10)
  {
    return "Unknown error";
  }

  else
  {
    return off_29F296C78[v1];
  }
}

double sub_29B203BBC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 56) = 10241;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 8) = 0;
  *(a1 + 96) = a1 + 56;
  *(a1 + 16) = a1 + 120;
  return result;
}

void *sub_29B203C0C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    off_2A1B6E0A0(v2);
    a1[1] = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 88);
  if (v4)
  {
    do
    {
      if (*v4)
      {
        off_2A1B6E0A0(*v4);
      }

      v4 = *(v4 + 8);
    }

    while (v4);
    v3 = *a1;
  }

  result = *(v3 - (*v3 >> 8) + 16);
  if (result)
  {
    do
    {
      v6 = result[2];
      off_2A1B6E0A0(result);
      result = v6;
    }

    while (v6);
  }

  *a1 = 0;
  return result;
}

void sub_29B203CD0(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  sub_29B203C0C(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 56) = 10241;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    *(a5 + 16) = 0;
    *a5 = 2;
LABEL_40:
    *(a5 + 8) = 0;
    return;
  }

  v31 = a4;
  std::istream::tellg();
  if (v33 < 0)
  {
    std::ios_base::clear((a2 + *(*a2 - 24)), 0);
    v30 = a3;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v17 = a2 + 4;
    v16 = *a2;
    while ((*(v17 + *(v16 - 24)) & 2) == 0)
    {
      v18 = off_2A1B6E0A8(0x7FE8uLL);
      v10 = v18;
      if (!v18)
      {
        goto LABEL_32;
      }

      *v18 = 0;
      v18[1] = 0;
      v19 = v18;
      if (v15)
      {
        *v15 = v18;
        v19 = v14;
      }

      std::istream::read();
      v20 = a2[1];
      v10[1] = v20;
      v16 = *a2;
      v11 = 2;
      if ((*(v17 + *(*a2 - 24)) & 1) != 0 || (*(v17 + *(*a2 - 24)) & 6) == 4)
      {
        v10 = 0;
        v12 = 0;
LABEL_35:
        v14 = v19;
        while (v14)
        {
LABEL_36:
          v28 = v14;
          v14 = *v14;
          off_2A1B6E0A0(v28);
        }

LABEL_37:
        a3 = v30;
        goto LABEL_38;
      }

      v21 = __CFADD__(v20, v12);
      v22 = v20 + v12;
      v23 = v21;
      if (v22 > v12)
      {
        v12 = v22;
      }

      v14 = v19;
      v15 = v10;
      if (v23)
      {
        v10 = 0;
        v12 = 0;
        v11 = 3;
        goto LABEL_35;
      }
    }

    v24 = off_2A1B6E0A8(v12 + 1);
    v10 = v24;
    if (!v24)
    {
LABEL_32:
      v12 = 0;
      v11 = 3;
      if (v14)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      v25 = v14;
      v26 = v24;
      do
      {
        memcpy(v26, v25 + 2, v25[1]);
        v27 = v25;
        v25 = *v25;
        v26 += v27[1];
      }

      while (v25);
      v11 = 0;
      goto LABEL_36;
    }

    a3 = v30;
    goto LABEL_43;
  }

  std::istream::tellg();
  std::istream::seekg();
  std::istream::tellg();
  std::istream::seekg();
  v10 = 0;
  v11 = 2;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    goto LABEL_39;
  }

  v12 = 0;
  if (v33 < 0)
  {
LABEL_38:
    if (!v11)
    {
      goto LABEL_43;
    }

LABEL_39:
    *(a5 + 16) = 0;
    *a5 = v11;
    goto LABEL_40;
  }

  if (v32 - v33 < 0 || (v10 = off_2A1B6E0A8(v32 - v33 + 1)) == 0)
  {
    v11 = 3;
    goto LABEL_39;
  }

  v13 = off_2A1B6E0A0;
  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 1) != 0 || (*(a2 + *(*a2 - 24) + 32) & 6) == 4)
  {
    v13(v10);
    goto LABEL_39;
  }

  v12 = a2[1];
LABEL_43:
  v29 = sub_29B2049AC(v31, v10, v12);
  if (v29 == 1)
  {
    *(v10 + v12++) = 0;
  }

  sub_29B2020B4(a1 + 56, (a1 + 56), v10, v12, a3, v29, 1, 1, a5, (a1 + 8));
}

void sub_29B204130(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29B20419C(uint64_t a1@<X0>, const char *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_29B203C0C(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 56) = 10241;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  v10 = fopen(a2, "rb");
  sub_29B20429C(v10, *a1, a3, a4, (a1 + 8), a5);
  if (v10)
  {

    fclose(v10);
  }
}

void sub_29B204284(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    fclose(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B20429C(FILE *a1@<X1>, char *a2@<X0>, unsigned int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X4>, uint64_t a6@<X8>)
{
  if (!a1)
  {
    *(a6 + 16) = 0;
    v16 = 1;
LABEL_12:
    *a6 = v16;
    goto LABEL_13;
  }

  fseek(a1, 0, 2);
  v12 = MEMORY[0x29C2C4BE0](a1);
  fseek(a1, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    *(a6 + 16) = 0;
    *a6 = 2;
LABEL_13:
    *(a6 + 8) = 0;
    return;
  }

  v13 = off_2A1B6E0A8(v12 + 1);
  if (!v13)
  {
    *(a6 + 16) = 0;
    v16 = 3;
    goto LABEL_12;
  }

  v14 = v13;
  if (fread(v13, 1uLL, v12, a1) != v12)
  {
    off_2A1B6E0A0(v14);
    *(a6 + 16) = 0;
    v16 = 2;
    goto LABEL_12;
  }

  v15 = sub_29B2049AC(a4, v14, v12);
  if (v15 == 1)
  {
    *(v14 + v12++) = 0;
  }

  sub_29B2020B4(a2, a2, v14, v12, a3, v15, 1, 1, a6, a5);
}

uint64_t sub_29B2043F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = v3;
  v20 = *MEMORY[0x29EDCA608];
  v17[1280] = v11;
  v18 = 0;
  v12 = v5;
  if (v5 <= 8)
  {
    v12 = v5;
    if ((0x191u >> v5))
    {
      v12 = dword_29B768174[v5];
    }
  }

  v19 = v12;
  if ((v4 & 2) != 0 && v5 != 9)
  {
    LOWORD(v17[0]) = -17425;
    BYTE2(v17[0]) = -65;
    v18 = 3;
  }

  if ((v4 & 8) == 0)
  {
    for (i = *(*v3 + 32); i; i = *(i + 48))
    {
      if ((*i & 0xF) == 2)
      {
        break;
      }

      if ((*i & 0xF) == 8)
      {
        goto LABEL_20;
      }
    }

    sub_29B2045C0(v17, "<?xml version=1.0");
    if (v6 == 9)
    {
      sub_29B2045C0(v17, " encoding=ISO-8859-1");
    }

    v14 = v18;
    if (v18 >= 0x7FF)
    {
      sub_29B205EF8(v17, v17, v18);
      v14 = 0;
    }

    *(v17 + v14) = 15935;
    v15 = v14 + 2;
    v18 = v14 + 2;
    if ((v7 & 4) == 0)
    {
      if (v14 >= 0x7FE)
      {
        sub_29B205EF8(v17, v17, v14 + 2);
        v15 = 0;
      }

      *(v17 + v15) = 10;
      v18 = v15 + 1;
    }
  }

LABEL_20:
  sub_29B203720(v17, *v10, v9, v7, 0);
  return sub_29B205EF8(v17, v17, v18);
}