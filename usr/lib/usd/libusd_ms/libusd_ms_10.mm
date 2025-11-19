void sub_29A06BBFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a24);
  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v25);
    sub_29A02D768(v26 - 176, v30);
  }

  else
  {
    sub_29A02F0A0(v25);
    sub_29A02D6F8(v26 - 176, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06BB48);
}

void sub_29A06BD58(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A06BD94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A06BE6C(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A06BE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A06BE6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24[0] = 0;
  v22 = &v23;
  v25 = 2;
  sub_29A019350(v26, &v22);
  v28 = 0;
  v27 = 0u;
  v29 = 1;
  sub_29A01752C(&v22, v23);
  sub_29A02E010(a4, &v25);
  sub_29A02E010(a5, &v25);
  sub_29A02E010(a6, &v25);
  sub_29A02E010(a7, &v25);
  *a1 = v25;
  v24[33] = a1;
  v24[34] = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v24, "NULL CompoundPropertyWriterPtr", 30);
    std::stringbuf::str();
    sub_29A008C60(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, v21);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v22, v26);
  v13 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a2;
  if (v13)
  {
    (*(*v14 + 24))(__p);
    (*(*__p[0] + 24))(v21);
    (*(**&v21[0] + 48))(*&v21[0], v13);
    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }

    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    v14 = *a2;
  }

  BYTE4(__p[0]) = 1;
  LODWORD(__p[0]) = 7;
  (*(*v14 + 104))(v21);
  v15 = v21[0];
  v21[0] = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  sub_29A01752C(&v22, v23);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A01752C(v26, v26[1]);
}

void sub_29A06C150(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v6);
    sub_29A02D768(v7 - 160, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 160, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06C09CLL);
}

void *sub_29A06C278(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 3;
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000008;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_29A00E7E0(a1 + 2, __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_29A06C300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A06C31C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_29A00E7E0(a1 + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v6 = *(a2 + 2);
  v5 = a2 + 1;
  if (v6 != 7 || *(v5 + 4) != 1)
  {
    sub_29A008864(&v17);
    v8 = sub_29A00911C(v18, "Invalid DataType in TypedArraySample. Expected: ", 48);
    v16 = 1;
    v15 = 7;
    v9 = sub_29A00D330(v8, &v15);
    v10 = sub_29A00911C(v9, ", but got: ", 11);
    sub_29A00D330(v10, v5);
    std::stringbuf::str();
    sub_29A008C60(&v15, &__p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(exception, &v15);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  return a1;
}

void sub_29A06C454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8.__vftable = va_arg(va1, std::exception_vtbl *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v7 = *v5;
  if (*v5)
  {
    *(v4 + 24) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A06C498(uint64_t a1)
{
  *a1 = &unk_2A203DE38;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 520));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 464));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 416));
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_2A203DEC0;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void Alembic::AbcGeom::v12::IPointsSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1 + 8;
  v51 = "IPointsSchema::init()";
  *&v24.__r_.__value_.__l.__data_ = 0uLL;
  v23 = &v24;
  v45 = 2;
  sub_29A019350(v46, &v23);
  v48 = 0;
  v47 = 0u;
  v49 = 1;
  sub_29A01752C(&v23, v24.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v45);
  sub_29A02E010(a3, &v45);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v42 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v42 = 0;
  }

  v41 = v7;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v41, &v39, &v37);
  sub_29A008E78(__p, "P");
  v34[0] = 5;
  v34[2] = 1;
  v33[0] = 1;
  v33[2] = v45;
  sub_29A047324(&v23, v43, __p, v34, v33);
  *(a1 + 248) = v23;
  std::string::operator=((a1 + 256), &v24);
  v9 = v25;
  v8 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 288);
  *(a1 + 280) = v9;
  *(a1 + 288) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v23);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  v31 = v7;
  v32 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v31, &v39, &v37);
  sub_29A008E78(__p, ".pointIds");
  sub_29A06CC48(&v23, v43, __p, a2, a3);
  *(a1 + 296) = v23;
  std::string::operator=((a1 + 304), &v24);
  v12 = v25;
  v11 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 336);
  *(a1 + 328) = v12;
  *(a1 + 336) = v11;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v23);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A008E78(&v23, ".velocities");
  v14 = (*(*v7 + 80))(v7, &v23);
  v15 = v14;
  if (v24.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v23);
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  else if (!v14)
  {
    goto LABEL_36;
  }

  v29 = v7;
  v30 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v29, &v39, &v37);
  sub_29A008E78(__p, ".velocities");
  sub_29A04AFA0(&v23, v43, __p, a2, a3);
  *(a1 + 344) = v23;
  std::string::operator=((a1 + 352), &v24);
  v17 = v25;
  v16 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 384);
  *(a1 + 376) = v17;
  *(a1 + 384) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v23);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

LABEL_36:
  sub_29A008E78(&v23, ".widths");
  v19 = (*(*v7 + 80))(v7, &v23);
  v20 = v19;
  if (v24.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v23);
    if (!v20)
    {
      goto LABEL_46;
    }
  }

  else if (!v19)
  {
    goto LABEL_46;
  }

  v21 = v7;
  v22 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v43, ".widths");
  sub_29A04A7D4(&v23, &v21, v43, a2, a3);
  sub_29A046D94(a1 + 392, &v23);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v28);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v27);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v23);
  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

LABEL_46:
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (*(&v47 + 1))
  {
    sub_29A014BEC(*(&v47 + 1));
  }

  sub_29A01752C(v46, v46[1]);
}

void sub_29A06CA04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_29A046E64(&a11);
  if (*(v48 - 169) < 0)
  {
    operator delete(*(v48 - 192));
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v47)
  {
    sub_29A014BEC(v47);
  }

  sub_29A02E0BC(v48 - 144);
  v51 = __cxa_begin_catch(a1);
  v52 = *(*v46 + 16);
  if (a2 == 2)
  {
    v53 = v51;
    v52(v46);
    sub_29A02D768(v48 - 80, v53);
  }

  else
  {
    v52(v46);
    sub_29A02D6F8(v48 - 80, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06C9E8);
}

uint64_t sub_29A06CC48(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *a2;
  *(&v45 + 1) = 0;
  v46[0] = 0;
  *&v45 = &v45 + 8;
  v47 = v10;
  sub_29A019350(v48, &v45);
  v50 = 0;
  v49 = 0u;
  v51 = 1;
  sub_29A01752C(&v45, *(&v45 + 1));
  sub_29A02E010(a4, &v47);
  sub_29A02E010(a5, &v47);
  *a1 = v47;
  v46[34] = a1;
  v46[35] = "ITypedArrayProperty::ITypedArrayProperty()";
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v45);
    v30 = sub_29A00911C(v46, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v30, "ITypedArrayProperty ctor", 24);
    std::stringbuf::str();
    sub_29A008C60(__p, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v32 = sub_29A008E1C(exception, __p);
    __cxa_throw(v32, &unk_2A203B108, sub_29A008B08);
  }

  v13 = (*(*v12 + 80))(v12, a3);
  v14 = v13;
  if (!v13)
  {
    sub_29A008864(&v45);
    v33 = sub_29A00911C(v46, "Nonexistent array property: ", 28);
    v34 = *(a3 + 23);
    if (v34 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v34 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = *(a3 + 8);
    }

    sub_29A00911C(v33, v35, v36);
    std::stringbuf::str();
    sub_29A008C60(__p, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    v37 = __cxa_allocate_exception(0x20uLL);
    v38 = sub_29A008E1C(v37, __p);
    __cxa_throw(v38, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(v13 + 56) == 7 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A06D1CC(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 7;
    v22 = sub_29A00D330(v21, &v39);
    v23 = sub_29A00911C(v22, ",\n...or incorrect match of interpretation: ", 43);
    sub_29A008E78(v41, "interpretation");
    sub_29A02CFB4(v14 + 32, v41, __p);
    if ((v44 & 0x80u) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if ((v44 & 0x80u) == 0)
    {
      v25 = v44;
    }

    else
    {
      v25 = __p[1];
    }

    v26 = sub_29A00911C(v23, v24, v25);
    v27 = sub_29A00911C(v26, " to expected: ", 14);
    sub_29A00911C(v27, "", 0);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(__p, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    v28 = __cxa_allocate_exception(0x20uLL);
    v29 = sub_29A008E1C(v28, __p);
    __cxa_throw(v29, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v12 + 96))(&v45, v12, a3);
  v16 = v45;
  v45 = 0uLL;
  v17 = *(a1 + 40);
  *(a1 + 32) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
    if (*(&v45 + 1))
    {
      sub_29A014BEC(*(&v45 + 1));
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (*(&v49 + 1))
  {
    sub_29A014BEC(*(&v49 + 1));
  }

  sub_29A01752C(v48, v48[1]);
  return a1;
}

void sub_29A06D084(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a23);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v24);
    sub_29A02D768(v26 - 144, v30);
  }

  else
  {
    sub_29A02F0A0(v24);
    sub_29A02D6F8(v26 - 144, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06CDE4);
}

uint64_t sub_29A06D1CC(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v7);
  if (v8 < 0)
  {
    v2 = v7[1] == 0;
    operator delete(v7[0]);
  }

  else
  {
    v2 = v8 == 0;
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A06D258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::OPolyMeshSchema(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A06D5B4(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DF10;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a1 + 448;
  sub_29A0654B4(a1 + 464);
  sub_29A0653DC(a1 + 640);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  Alembic::AbcGeom::v12::OPolyMeshSchema::init(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A06D4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (*(v14 + 839) < 0)
  {
    operator delete(*(v14 + 816));
  }

  sub_29A050A50(v14 + 640);
  sub_29A050A50(v14 + 464);
  sub_29A071518(v14 + 440, *v16);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A06DBDC(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A06D5B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A07164C(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DF98;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 200) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  sub_29A071748(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A06D7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v21);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v20);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(a10);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v18 + 8));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::init(Alembic::AbcGeom::v12::OPolyMeshSchema *this, int a2, char a3)
{
  v32 = this + 8;
  v33 = "OPolyMeshSchema::init()";
  *(this + 840) = a3;
  *(this + 106) = 0;
  *(this + 214) = a2;
  if ((a3 & 1) == 0)
  {
    v5 = *(this + 5);
    v4 = *(this + 6);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Alembic::AbcGeom::v12::OPolyMeshSchema::createPositionsProperty(this);
    v26 = v5;
    v27 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".faceIndices");
    v6 = *(this + 214);
    v22 = 2;
    v23 = v6;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A051A7C(&v28, &v26, __p, &v22, &v20, &v18, &v16);
    *(this + 86) = v28;
    std::string::operator=((this + 352), &v29);
    v8 = v30;
    v7 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 48);
    *(this + 47) = v8;
    *(this + 48) = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v28);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v14 = v5;
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".faceCounts");
    v10 = *(this + 214);
    v22 = 2;
    v23 = v10;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A051A7C(&v28, &v14, __p, &v22, &v20, &v18, &v16);
    *(this + 98) = v28;
    std::string::operator=((this + 400), &v29);
    v12 = v30;
    v11 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 54);
    *(this + 53) = v12;
    *(this + 54) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v28);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29A06DAAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v29 - 96));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v32 = __cxa_begin_catch(a1);
  v33 = *(*v27 + 16);
  if (a2 == 2)
  {
    v34 = v32;
    v33(v27);
    sub_29A02D768(v29 - 48, v34);
  }

  else
  {
    v33(v27);
    sub_29A02D6F8(v29 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06DA98);
}

void *sub_29A06DBDC(void *a1)
{
  *a1 = &unk_2A203DF98;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::OPolyMeshSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v25 = *(a2 + 4);
  v26 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  LODWORD(v23) = 1;
  LODWORD(v24) = v12;
  sub_29A06D5B4(a1, &v25, a3, &v23, a4, a5, a6);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  *a1 = &unk_2A203DF10;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a1 + 448;
  sub_29A0654B4(a1 + 464);
  sub_29A0653DC(a1 + 640);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  sub_29A057858(a4, a5, a6, &v21, &v23);
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v13 = sub_29A057978(a4, a5, a6, &v21);
  if (v23)
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    v16 = (*(*v21 + 48))(v21, v23);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v16 = v13;
  }

  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v17 = sub_29A0585D8(a4, a5, a6, &v21);
  Alembic::AbcGeom::v12::OPolyMeshSchema::init(a1, v16, v17);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A06DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (*(v14 + 839) < 0)
  {
    operator delete(*(v14 + 816));
  }

  sub_29A050A50(v14 + 640);
  sub_29A050A50(v14 + 464);
  sub_29A071518(v14 + 440, *v17);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A06DBDC(v14);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::set(Alembic::AbcGeom::v12::OPolyMeshSchema *this, uint64_t a2)
{
  if ((*(this + 840) & 1) == 0 && !sub_29A06E9FC(a2))
  {
    v67[33] = this + 8;
    v67[34] = "OPolyMeshSchema::set()";
    if (*(a2 + 176) == 127 || !*(a2 + 168) && *(a2 + 192) == *(a2 + 184))
    {
      goto LABEL_15;
    }

    if (*(this + 327) < 0)
    {
      if (!*(this + 39))
      {
        goto LABEL_13;
      }
    }

    else if (!*(this + 327))
    {
LABEL_13:
      if (*(this + 41))
      {
        goto LABEL_15;
      }
    }

    Alembic::AbcGeom::v12::OPolyMeshSchema::createVelocitiesProperty(this);
LABEL_15:
    if (*(a2 + 216) != 127 && (*(a2 + 208) || *(a2 + 232) != *(a2 + 224)) && !sub_29A051208(this + 464))
    {
      Alembic::AbcGeom::v12::OPolyMeshSchema::createUVsProperty(this, a2);
    }

    if (*(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)) && !sub_29A051208(this + 640))
    {
      Alembic::AbcGeom::v12::OPolyMeshSchema::createNormalsProperty(this, a2);
    }

    if (*(this + 106))
    {
      v49 = *(this + 62);
      if (*(this + 279) < 0)
      {
        sub_29A008D14(&v50, *(this + 32), *(this + 33));
      }

      else
      {
        v50 = *(this + 16);
        v51 = *(this + 34);
      }

      v5 = *(this + 36);
      v52 = *(this + 35);
      v53 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = *(a2 + 5);
      *v45 = *a2;
      *&v45[5] = v6;
      __p = 0;
      v47 = 0;
      v48 = 0;
      sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
      if (SHIBYTE(v51) < 0)
      {
        if (*(&v50 + 1))
        {
          goto LABEL_62;
        }
      }

      else if (HIBYTE(v51))
      {
        goto LABEL_62;
      }

      if (v52)
      {
        if (*&v45[8] == 127 || !*v45 && v47 == __p)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v49);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v49);
        }
      }

LABEL_62:
      if (__p)
      {
        v47 = __p;
        operator delete(__p);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v49);
      v40 = *(this + 86);
      if (*(this + 375) < 0)
      {
        sub_29A008D14(&v41, *(this + 44), *(this + 45));
      }

      else
      {
        v41 = *(this + 22);
        v42 = *(this + 46);
      }

      v9 = *(this + 48);
      v43 = *(this + 47);
      v44 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(a2 + 45);
      *v36 = *(a2 + 40);
      *&v36[5] = v10;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      sub_29A00E7E0(&v37, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
      if (SHIBYTE(v42) < 0)
      {
        if (*(&v41 + 1))
        {
          goto LABEL_79;
        }
      }

      else if (HIBYTE(v42))
      {
        goto LABEL_79;
      }

      if (v43)
      {
        if (*&v36[8] == 127 || !*v36 && v38 == v37)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v40);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v40);
        }
      }

LABEL_79:
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v40);
      v31 = *(this + 98);
      if (*(this + 423) < 0)
      {
        sub_29A008D14(&v32, *(this + 50), *(this + 51));
      }

      else
      {
        v32 = *(this + 25);
        v33 = *(this + 52);
      }

      v11 = *(this + 54);
      v34 = *(this + 53);
      v35 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(a2 + 85);
      *v27 = *(a2 + 80);
      *&v27[5] = v12;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      sub_29A00E7E0(&v28, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
      if (SHIBYTE(v33) < 0)
      {
        if (*(&v32 + 1))
        {
          goto LABEL_96;
        }
      }

      else if (HIBYTE(v33))
      {
        goto LABEL_96;
      }

      if (v34)
      {
        if (*&v27[8] == 127 || !*v27 && v29 == v28)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v31);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v31);
        }
      }

LABEL_96:
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v31);
      if (*(this + 327) < 0)
      {
        if (*(this + 39) || !*(this + 41))
        {
          goto LABEL_124;
        }

        v22 = *(this + 74);
        sub_29A008D14(&v23, *(this + 38), 0);
        v13 = *(this + 41);
      }

      else
      {
        if (*(this + 327))
        {
          goto LABEL_124;
        }

        v13 = *(this + 41);
        if (!v13)
        {
          goto LABEL_124;
        }

        v22 = *(this + 74);
        v23 = *(this + 19);
        v24 = *(this + 40);
      }

      v14 = *(this + 42);
      v25 = v13;
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      *v18 = *(a2 + 168);
      *&v18[5] = *(a2 + 173);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_29A00E7E0(&v19, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 3);
      if (SHIBYTE(v24) < 0)
      {
        if (!*(&v23 + 1))
        {
          goto LABEL_111;
        }
      }

      else if (!HIBYTE(v24))
      {
LABEL_111:
        if (v25)
        {
          if (*&v18[8] == 127 || !*v18 && v20 == v19)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v22);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v22);
          }
        }
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v22);
LABEL_124:
      if (*(a2 + 144) <= *(a2 + 120) || *(a2 + 152) <= *(a2 + 128) || *(a2 + 160) <= *(a2 + 136))
      {
        if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
        {
          Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
        }

        else
        {
          sub_29A04EF90(a2, &v66);
          Alembic::Abc::v12::OScalarProperty::set((this + 56), &v66);
        }
      }

      else
      {
        Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 120));
      }

      if (sub_29A051208(this + 464))
      {
        sub_29A04F06C(this + 464, a2 + 208);
      }

      v15 = this + 640;
      if (!sub_29A051208(this + 640))
      {
        goto LABEL_156;
      }

      goto LABEL_155;
    }

    if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16) || *(a2 + 48) == 127 || !*(a2 + 40) && *(a2 + 64) == *(a2 + 56) || *(a2 + 88) == 127 || !*(a2 + 80) && *(a2 + 104) == *(a2 + 96))
    {
      sub_29A008864(&v66);
      sub_29A00911C(v67, "Sample 0 must have valid data for all mesh components", 53);
      std::stringbuf::str();
      sub_29A008C60(v65, &v63);
      if (v64 < 0)
      {
        operator delete(v63);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v17 = sub_29A008E1C(exception, v65);
      __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
    }

    Alembic::Abc::v12::OArrayProperty::set(this + 248);
    Alembic::Abc::v12::OArrayProperty::set(this + 344);
    Alembic::Abc::v12::OArrayProperty::set(this + 392);
    if (*(this + 327) < 0)
    {
      if (!*(this + 39) && *(this + 41))
      {
        v58 = *(this + 74);
        sub_29A008D14(&v59, *(this + 38), 0);
        v4 = *(this + 41);
LABEL_54:
        v7 = *(this + 42);
        v61 = v4;
        v62 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        v8 = *(a2 + 173);
        *v54 = *(a2 + 168);
        *&v54[5] = v8;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        sub_29A00E7E0(&v55, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 3);
        if (SHIBYTE(v60) < 0)
        {
          if (!*(&v59 + 1))
          {
            goto LABEL_115;
          }
        }

        else if (!HIBYTE(v60))
        {
LABEL_115:
          if (v61)
          {
            if (*&v54[8] == 127 || !*v54 && v56 == v55)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v58);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v58);
            }
          }
        }

        if (v55)
        {
          v56 = v55;
          operator delete(v55);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v58);
      }
    }

    else if (!*(this + 327))
    {
      v4 = *(this + 41);
      if (v4)
      {
        v58 = *(this + 74);
        v59 = *(this + 19);
        v60 = *(this + 40);
        goto LABEL_54;
      }
    }

    if (*(a2 + 144) >= *(a2 + 120) && *(a2 + 152) >= *(a2 + 128) && *(a2 + 160) >= *(a2 + 136))
    {
      Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 120));
    }

    else
    {
      sub_29A04EF90(a2, &v66);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), &v66);
    }

    if (*(a2 + 216) != 127 && (*(a2 + 208) || *(a2 + 232) != *(a2 + 224)))
    {
      sub_29A04F06C(this + 464, a2 + 208);
    }

    if (*(a2 + 304) == 127 || !*(a2 + 296) && *(a2 + 320) == *(a2 + 312))
    {
      goto LABEL_156;
    }

    v15 = this + 640;
LABEL_155:
    sub_29A04F394(v15, a2 + 296);
LABEL_156:
    ++*(this + 106);
    return;
  }

  Alembic::AbcGeom::v12::OPolyMeshSchema::selectiveSet(this, a2);
}

void sub_29A06E888(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, char a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a59);
  v62 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v59 - 48, v62);
  }

  else
  {
    sub_29A02D6F8(v59 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06E7ECLL);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::selectiveSet(Alembic::AbcGeom::v12::OPolyMeshSchema *this, uint64_t a2)
{
  v28 = this + 8;
  v29 = "OPolyMeshSchema::selectiveSet()";
  if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
  {
    if (*(this + 279) < 0)
    {
      if (!*(this + 33))
      {
        goto LABEL_8;
      }
    }

    else if (!*(this + 279))
    {
LABEL_8:
      if (*(this + 35))
      {
        goto LABEL_10;
      }
    }

    Alembic::AbcGeom::v12::OPolyMeshSchema::createPositionsProperty(this);
  }

LABEL_10:
  if (*(this + 279) < 0)
  {
    if (*(this + 33) || !*(this + 35))
    {
      goto LABEL_39;
    }

    v23 = *(this + 62);
    sub_29A008D14(&v24, *(this + 32), 0);
    v4 = *(this + 35);
  }

  else
  {
    if (*(this + 279))
    {
      goto LABEL_39;
    }

    v4 = *(this + 35);
    if (!v4)
    {
      goto LABEL_39;
    }

    v23 = *(this + 62);
    v24 = *(this + 16);
    v25 = *(this + 34);
  }

  v5 = *(this + 36);
  v26 = v4;
  v27 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v19 = *a2;
  *&v19[5] = v6;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v25) < 0)
  {
    if (!*(&v24 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (!HIBYTE(v25))
  {
LABEL_23:
    if (v26)
    {
      if (*&v19[8] == 127 || !*v19 && v21 == __p)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v23);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v23);
      }
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v23);
  if (*(a2 + 144) <= *(a2 + 120) || *(a2 + 152) <= *(a2 + 128) || *(a2 + 160) <= *(a2 + 136))
  {
    if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
    {
      sub_29A04EF90(a2, v18);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), v18);
    }
  }

  else
  {
    Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 120));
  }

LABEL_39:
  if (*(a2 + 176) != 127 && (*(a2 + 168) || *(a2 + 192) != *(a2 + 184)))
  {
    if (*(this + 327) < 0)
    {
      if (!*(this + 39))
      {
        goto LABEL_46;
      }
    }

    else if (!*(this + 327))
    {
LABEL_46:
      if (*(this + 41))
      {
        goto LABEL_48;
      }
    }

    Alembic::AbcGeom::v12::OPolyMeshSchema::createVelocitiesProperty(this);
  }

LABEL_48:
  if (*(this + 327) < 0)
  {
    if (*(this + 39) || !*(this + 41))
    {
      goto LABEL_70;
    }

    v13 = *(this + 74);
    sub_29A008D14(&v14, *(this + 38), 0);
    v7 = *(this + 41);
  }

  else
  {
    if (*(this + 327))
    {
      goto LABEL_70;
    }

    v7 = *(this + 41);
    if (!v7)
    {
      goto LABEL_70;
    }

    v13 = *(this + 74);
    v14 = *(this + 19);
    v15 = *(this + 40);
  }

  v8 = *(this + 42);
  v16 = v7;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *v9 = *(a2 + 168);
  *&v9[5] = *(a2 + 173);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_29A00E7E0(&v10, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 3);
  if (SHIBYTE(v15) < 0)
  {
    if (!*(&v14 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (!HIBYTE(v15))
  {
LABEL_61:
    if (v16)
    {
      if (*&v9[8] == 127 || !*v9 && v11 == v10)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v13);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v13);
      }
    }
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v13);
LABEL_70:
  if (*(a2 + 216) != 127 && (*(a2 + 208) || *(a2 + 232) != *(a2 + 224)))
  {
    if (!sub_29A051208(this + 464))
    {
      Alembic::AbcGeom::v12::OPolyMeshSchema::createUVsProperty(this, a2);
    }

    sub_29A04F06C(this + 464, a2 + 208);
  }

  if (*(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)))
  {
    if (!sub_29A051208(this + 640))
    {
      Alembic::AbcGeom::v12::OPolyMeshSchema::createNormalsProperty(this, a2);
    }

    sub_29A04F394(this + 640, a2 + 296);
  }

  ++*(this + 106);
}

void sub_29A06EE88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v29 - 48, v32);
  }

  else
  {
    sub_29A02D6F8(v29 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06EE74);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::createVelocitiesProperty(Alembic::AbcGeom::v12::OPolyMeshSchema *this)
{
  v2 = *(this + 6);
  v15 = *(this + 5);
  v16 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".velocities");
  v3 = *(this + 214);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A052004(&v17, &v15, &__p, v11, v10, v9, v8);
  *(this + 74) = v17;
  std::string::operator=((this + 304), &v18);
  v5 = v19;
  v4 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 42);
  *(this + 41) = v5;
  *(this + 42) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v17);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_29A051850(&v17, &__p);
  if (*(this + 106))
  {
    v7 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 296);
      ++v7;
    }

    while (v7 < *(this + 106));
  }

  if (v18.__r_.__value_.__l.__size_)
  {
    v18.__r_.__value_.__r.__words[2] = v18.__r_.__value_.__l.__size_;
    operator delete(v18.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_29A06F098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::createUVsProperty(uint64_t a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  *&v37 = 0;
  *(&v37 + 1) = 0x20000000ALL;
  v38 = 0u;
  *v39 = 0u;
  *&v39[16] = 0x100000005;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 127;
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  Alembic::Abc::v12::SetSourceName(&v35, (a1 + 816));
  if (*(a2 + 256) != 127 && (*(a2 + 248) || *(a2 + 272) != *(a2 + 264)))
  {
    sub_29A05259C(v32, &v47);
    sub_29A052640(&v28, &v44);
    sub_29A0526E4(&__dst, v32, &v28, *(a2 + 288));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v20, v21[0], (v21[0] - v20) >> 3);
    *&v39[8] = v22;
    *&v39[13] = *(&v22 + 5);
    sub_29A00CB24(&v40, __p, v24, (v24 - __p) >> 3);
    v43 = v26;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21[0] = v20;
      operator delete(v20);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    v9 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v32, "uv");
    v10 = *(a1 + 856);
    LODWORD(v28) = 2;
    v29 = v10;
    v15 = 3;
    v16 = &v35;
    v13 = 0;
    v14 = 0;
    sub_29A052798(&__dst, &v17, v32, 1, v43, 1, &v28, &v15, &v13);
    sub_29A050950(a1 + 464, &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*v32);
    }

    v7 = v18;
    if (!v18)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_29A014BEC(v7);
    goto LABEL_16;
  }

  sub_29A05259C(v32, &v47);
  v4 = *(a2 + 288);
  *&__dst = *v32;
  *(&__dst + 5) = *&v32[5];
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  sub_29A00E7E0(&v20, v33, v34, (v34 - v33) >> 3);
  *&v22 = 0;
  *(&v22 + 1) = 0x100000005;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v26 = v4;
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v20, v21[0], (v21[0] - v20) >> 3);
  *&v39[8] = v22;
  *&v39[13] = *(&v22 + 5);
  sub_29A00CB24(&v40, __p, v24, (v24 - __p) >> 3);
  v43 = v26;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21[0] = v20;
    operator delete(v20);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v5 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v32, "uv");
  v6 = *(a1 + 856);
  LODWORD(v28) = 2;
  v29 = v6;
  v15 = 3;
  v16 = &v35;
  v13 = 0;
  v14 = 0;
  sub_29A052798(&__dst, &v11, v32, 0, v43, 1, &v28, &v15, &v13);
  sub_29A050950(a1 + 464, &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(*v32);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (*(a1 + 848))
  {
    v8 = 0;
    do
    {
      sub_29A04F06C(a1 + 464, &v37);
      ++v8;
    }

    while (v8 < *(a1 + 848));
  }

  sub_29A01752C(&v35, v36[0]);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_29A06F56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  sub_29A050A50(&a19);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A01752C(v52 - 224, *(v52 - 216));
  sub_29A050844((v52 - 200));
  v54 = *(v52 - 112);
  if (v54)
  {
    *(v52 - 104) = v54;
    operator delete(v54);
  }

  v55 = *(v52 - 88);
  if (v55)
  {
    *(v52 - 80) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::createNormalsProperty(uint64_t a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  *&v37 = 0;
  *(&v37 + 1) = 0x30000000ALL;
  v38 = 0u;
  *v39 = 0u;
  *&v39[16] = 0x100000005;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 127;
  if (*(a2 + 344) != 127 && (*(a2 + 336) || *(a2 + 360) != *(a2 + 352)))
  {
    sub_29A051850(&v30, &v47);
    sub_29A053FB8(v34, &v30);
    sub_29A052640(&v26, &v44);
    sub_29A054134(&__dst, v34, &v26, *(a2 + 376));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v18, v19[0], (v19[0] - v18) >> 3);
    *&v39[8] = v20;
    *&v39[13] = *(&v20 + 5);
    sub_29A00CB24(&v40, __p, v22, (v22 - __p) >> 3);
    v43 = v24;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19[0] = v18;
      operator delete(v18);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    v9 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, "N");
    v10 = *(a1 + 856);
    LODWORD(v30) = 2;
    v31 = v10;
    LODWORD(v26) = 0;
    v27 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A0541E8(&__dst, &v15, v34, 1, v43, 1, &v30, &v26, &v13);
    sub_29A050950(a1 + 640, &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v25);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v23);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(*v34);
    }

    v7 = v16;
    if (!v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_29A014BEC(v7);
    goto LABEL_18;
  }

  sub_29A051850(&v30, &v47);
  sub_29A053FB8(v34, &v30);
  v4 = *(a2 + 376);
  *&__dst = *v34;
  *(&__dst + 5) = *&v34[5];
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  sub_29A00E7E0(&v18, v35, v36, (v36 - v35) >> 3);
  *&v20 = 0;
  *(&v20 + 1) = 0x100000005;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v24 = v4;
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v18, v19[0], (v19[0] - v18) >> 3);
  *&v39[8] = v20;
  *&v39[13] = *(&v20 + 5);
  sub_29A00CB24(&v40, __p, v22, (v22 - __p) >> 3);
  v43 = v24;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19[0] = v18;
    operator delete(v18);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v5 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, "N");
  v6 = *(a1 + 856);
  LODWORD(v30) = 2;
  v31 = v6;
  LODWORD(v26) = 0;
  v27 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A0541E8(&__dst, &v11, v34, 0, v43, 1, &v30, &v26, &v13);
  sub_29A050950(a1 + 640, &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v23);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*v34);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (*(a1 + 848))
  {
    v8 = 0;
    do
    {
      sub_29A04F394(a1 + 640, &v37);
      ++v8;
    }

    while (v8 < *(a1 + 848));
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_29A06FAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47)
{
  sub_29A050A50(&a17);
  if (*(v47 - 217) < 0)
  {
    operator delete(*(v47 - 240));
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A050844((v47 - 200));
  v49 = *(v47 - 112);
  if (v49)
  {
    *(v47 - 104) = v49;
    operator delete(v49);
  }

  v50 = *(v47 - 88);
  if (v50)
  {
    *(v47 - 80) = v50;
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OPolyMeshSchema::createPositionsProperty(Alembic::AbcGeom::v12::OPolyMeshSchema *this)
{
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  sub_29A0503CC(&v24, 3);
  v2 = *(this + 6);
  v18 = *(this + 5);
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, "P");
  LODWORD(v12) = 3;
  v13 = &v24;
  v3 = *(this + 214);
  v17[0] = 2;
  v17[2] = v3;
  v16[0] = 0;
  v16[2] = 0;
  v15[0] = 0;
  v15[2] = 0;
  sub_29A0512B8(&v20, &v18, __p, &v12, v17, v16, v15);
  *(this + 62) = v20;
  std::string::operator=((this + 256), &v21);
  v5 = v22;
  v4 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 36);
  *(this + 35) = v5;
  *(this + 36) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A051850(&v20, &v12);
  if (*(this + 106))
  {
    v7 = 0;
    do
    {
      sub_29A051900(__p, &v20);
      Alembic::Abc::v12::OArrayProperty::set(this + 248);
      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      ++v7;
      v8 = *(this + 106);
    }

    while (v7 < v8);
  }

  else
  {
    v8 = 0;
  }

  sub_29A06FE68(this, *(this + 214), v8);
  if (v21.__r_.__value_.__l.__size_)
  {
    v21.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__l.__size_;
    operator delete(v21.__r_.__value_.__l.__size_);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  sub_29A01752C(&v24, v25[0]);
}

void sub_29A06FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    *(v28 - 80) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_29A01752C(v28 - 56, *(v28 - 48));
  _Unwind_Resume(a1);
}

void sub_29A06FE68(uint64_t a1, int a2, uint64_t a3)
{
  v19 = a1 + 8;
  v20 = "OGeomBaseSchema::createSelfBoundsProperty()";
  if (*(a1 + 87) < 0)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 87))
  {
LABEL_5:
    if (*(a1 + 88))
    {
      return;
    }
  }

  v6 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".selfBnds");
  v12[0] = 2;
  v12[2] = a2;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  sub_29A045D40(v17, &v15, __p, v12, v11, v10, v9);
  *(a1 + 56) = v17[0];
  std::string::operator=((a1 + 64), (v17 + 8));
  v7 = i;
  if (i.i64[1])
  {
    atomic_fetch_add_explicit((i.i64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 96);
  *(a1 + 88) = v7;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17[1] = xmmword_29B432560;
  for (i = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL); a3; --a3)
  {
    Alembic::Abc::v12::OScalarProperty::set((a1 + 56), v17);
  }
}

void sub_29A06FFD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v25 - 96));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v25 - 48, v28);
  }

  else
  {
    sub_29A02D6F8(v25 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A06FFC0);
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::setFromPrevious(Alembic::AbcGeom::v12::OPolyMeshSchema *this)
{
  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 279))
  {
    goto LABEL_7;
  }

  if (*(this + 35))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 248));
  }

LABEL_7:
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_13;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 344));
  }

LABEL_13:
  if (*(this + 423) < 0)
  {
    if (*(this + 51))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 423))
  {
    goto LABEL_19;
  }

  if (*(this + 53))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 392));
  }

LABEL_19:
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_25;
  }

  if (*(this + 11))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
  }

LABEL_25:
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_31;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 296));
  }

LABEL_31:
  if (sub_29A051208(this + 464))
  {
    sub_29A0501E0(this + 464);
  }

  result = sub_29A051208(this + 640);
  if (result)
  {
    return sub_29A050284(this + 640);
  }

  return result;
}

void sub_29A0701A0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A070190);
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::setTimeSampling(Alembic::AbcGeom::v12::OPolyMeshSchema *this, int a2)
{
  *(this + 214) = a2;
  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 279))
  {
    goto LABEL_7;
  }

  if (*(this + 35))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 248));
  }

LABEL_7:
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_13;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 344));
  }

LABEL_13:
  if (*(this + 423) < 0)
  {
    if (*(this + 51))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 423))
  {
    goto LABEL_19;
  }

  if (*(this + 53))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 392));
  }

LABEL_19:
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_25;
  }

  if (*(this + 11))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 56));
  }

LABEL_25:
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_31;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 296));
  }

LABEL_31:
  if (sub_29A051208(this + 464))
  {
    sub_29A050CD8(this + 464);
  }

  result = sub_29A051208(this + 640);
  if (result)
  {
    return sub_29A050D84(this + 640);
  }

  return result;
}

void sub_29A070340(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A070330);
}

int *Alembic::AbcGeom::v12::OPolyMeshSchema::setTimeSampling(Alembic::AbcGeom::v12::OPolyMeshSchema *a1, void *a2)
{
  result = (a1 + 8);
  v7 = result;
  v8 = "OPolyMeshSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return Alembic::AbcGeom::v12::OPolyMeshSchema::setTimeSampling(a1, v4);
  }

  return result;
}

void sub_29A070418(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v17 - 32, v19);
  }

  else
  {
    sub_29A02D6F8(v17 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A070408);
}

void sub_29A0704EC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0704DCLL);
}

uint64_t *Alembic::AbcGeom::v12::OPolyMeshSchema::createFaceSet(uint64_t a1, const void **a2)
{
  v4 = (a1 + 8);
  v36 = a1 + 8;
  v37 = "OPolyMeshSchema::createFaceSet ()";
  if (a1 + 448 != sub_29A01BCCC(a1 + 440, a2))
  {
    sub_29A008864(v18);
    sub_29A00911C(v19, "faceSet has already been created in polymesh.", 45);
    std::stringbuf::str();
    sub_29A008C60(v28, &v34);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_29A008E1C(exception, v28);
    __cxa_throw(v9, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A04428C(v4, v28);
  v13 = v29;
  if (SHIBYTE(v31) < 0)
  {
    sub_29A008D14(&v14, v30, *(&v30 + 1));
  }

  else
  {
    v14 = v30;
    v15 = v31;
  }

  v12 = &unk_2A203D638;
  v16 = v32;
  v17 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v34) = 0;
  DWORD2(v34) = 0;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  sub_29A071EA0(v18, &v12, a2, &v34, v11, v10);
  v38 = a2;
  v5 = sub_29A071CB8((a1 + 440), a2, &unk_29B43296D, &v38);
  sub_29A070910((v5 + 7), v18);
  v18[0] = &unk_2A203DFC8;
  v20 = &unk_2A203DAA8;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v26);
  v20 = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v25);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v24);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v23);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v22);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v21);
  Alembic::Abc::v12::OObject::~OObject(v18);
  Alembic::Abc::v12::OObject::~OObject(&v12);
  v18[0] = a2;
  v6 = sub_29A071CB8((a1 + 440), a2, &unk_29B43296D, v18) + 7;
  Alembic::Abc::v12::OObject::~OObject(v28);
  return v6;
}

void sub_29A0707D0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A008F20((v13 - 160));
  sub_29A008B0C(va);
  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v13 - 80, v16);
  }

  else
  {
    sub_29A02D6F8(v13 - 80, 0);
  }

  __cxa_end_catch();
  if ((atomic_load_explicit(&qword_2A153ECF8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECF8))
    {
      v17 = operator new(0x198uLL);
      sub_29A0729EC(v17);
      qword_2A153ECF0 = v17;
      __cxa_guard_release(&qword_2A153ECF8);
    }
  }

  JUMPOUT(0x29A070738);
}

void sub_29A0708CC(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ECF8);
  _Unwind_Resume(a1);
}

uint64_t sub_29A070910(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29A070FF0(a1 + 56, a2 + 56);
  *(a1 + 304) = *(a2 + 304);
  std::string::operator=((a1 + 312), (a2 + 312));
  v8 = *(a2 + 336);
  v7 = *(a2 + 344);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 344);
  *(a1 + 336) = v8;
  *(a1 + 344) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 352) = *(a2 + 352);
  std::string::operator=((a1 + 360), (a2 + 360));
  v11 = *(a2 + 384);
  v10 = *(a2 + 392);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 392);
  *(a1 + 384) = v11;
  *(a1 + 392) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *(a1 + 400) = *(a2 + 400);
  return a1;
}

void sub_29A0709F4(void *a1)
{
  *a1 = &unk_2A203DFC8;
  a1[7] = &unk_2A203DAA8;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  Alembic::Abc::v12::OObject::~OObject(a1);
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::getFaceSetNames(uint64_t result, uint64_t a2)
{
  if (*(result + 440) != result + 448)
  {
    sub_29A070BA0(a2);
  }

  return result;
}

void sub_29A070B4C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A070B38);
}

void sub_29A070BA0(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>();
  }

  std::vector<std::string>::__emplace_back_slow_path<std::string const&>();
}

uint64_t Alembic::AbcGeom::v12::OPolyMeshSchema::getFaceSet@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2;
  v4 = sub_29A071CB8((a1 + 440), a2, &unk_29B43296D, &v9);
  v5 = v4;
  *(a3 + 8) = *(v4 + 16);
  if (*(v4 + 95) < 0)
  {
    sub_29A008D14((a3 + 16), v4[9], v4[10]);
  }

  else
  {
    v6 = *(v4 + 9);
    *(a3 + 32) = v4[11];
    *(a3 + 16) = v6;
  }

  *a3 = &unk_2A203D638;
  v7 = v5[13];
  *(a3 + 40) = v5[12];
  *(a3 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = &unk_2A203DFC8;
  return sub_29A0711F8(a3 + 56, (v5 + 14));
}

void sub_29A070CCC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Alembic::Abc::v12::OObject::~OObject(v9);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v12);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  sub_29A0729EC(v9);
  JUMPOUT(0x29A070CB8);
}

void sub_29A070D50(uint64_t a1)
{
  v1 = sub_29A072A64(a1);

  operator delete(v1);
}

void sub_29A070D78(uint64_t a1)
{
  sub_29A02F0A0(a1 + 248);
  sub_29A02F0A0(a1 + 296);
  sub_29A02F0A0(a1 + 344);
  sub_29A02F0A0(a1 + 392);
  sub_29A051268(a1 + 464);
  sub_29A051268(a1 + 640);
  sub_29A071518(a1 + 440, *(a1 + 448));
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a1 + 448;

  sub_29A070F70(a1);
}

uint64_t sub_29A070DF4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 280))
  {
    goto LABEL_22;
  }

  if (*(a1 + 375) < 0)
  {
    if (*(a1 + 360))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 375))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 376))
  {
    goto LABEL_22;
  }

  if (*(a1 + 423) < 0)
  {
    if (!*(a1 + 408))
    {
      goto LABEL_20;
    }

LABEL_22:
    v1 = *(a1 + 840);
    return v1 & 1;
  }

  if (*(a1 + 423))
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!*(a1 + 424))
  {
    goto LABEL_22;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_29A070E88(void *a1)
{
  *a1 = &unk_2A203DF98;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_29A070EF4(void *a1)
{
  *a1 = &unk_2A203DF98;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  operator delete(a1);
}

void sub_29A070F70(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A070FC4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_29A070FF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  *(a1 + 56) = *(a2 + 56);
  std::string::operator=((a1 + 64), (a2 + 64));
  v8 = *(a2 + 88);
  v7 = *(a2 + 96);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = v8;
  *(a1 + 96) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 104) = *(a2 + 104);
  std::string::operator=((a1 + 112), (a2 + 112));
  v11 = *(a2 + 136);
  v10 = *(a2 + 144);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 144);
  *(a1 + 136) = v11;
  *(a1 + 144) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *(a1 + 152) = *(a2 + 152);
  std::string::operator=((a1 + 160), (a2 + 160));
  v14 = *(a2 + 184);
  v13 = *(a2 + 192);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 192);
  *(a1 + 184) = v14;
  *(a1 + 192) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  *(a1 + 200) = *(a2 + 200);
  std::string::operator=((a1 + 208), (a2 + 208));
  v17 = *(a2 + 232);
  v16 = *(a2 + 240);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 240);
  *(a1 + 232) = v17;
  *(a1 + 240) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  return a1;
}

void sub_29A071130(void *a1)
{
  *a1 = &unk_2A203DFC8;
  a1[7] = &unk_2A203DAA8;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  Alembic::Abc::v12::OObject::~OObject(a1);

  operator delete(v2);
}

uint64_t sub_29A0711F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A071308(a1, a2);
  *v4 = &unk_2A203DAA8;
  *(v4 + 248) = *(a2 + 248);
  if (*(a2 + 279) < 0)
  {
    sub_29A008D14((a1 + 256), *(a2 + 256), *(a2 + 264));
  }

  else
  {
    v5 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v5;
  }

  v6 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 296) = *(a2 + 296);
  if (*(a2 + 327) < 0)
  {
    sub_29A008D14((a1 + 304), *(a2 + 304), *(a2 + 312));
  }

  else
  {
    v7 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = v7;
  }

  v8 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 344) = *(a2 + 344);
  return a1;
}

void sub_29A0712E4(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_29A057650(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A071308(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A203DB60;
  v6 = (a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_29A008D14(v6, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *v6 = v7;
  }

  v8 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    sub_29A008D14((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v9;
  }

  v10 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = *(a2 + 152);
  if (*(a2 + 183) < 0)
  {
    sub_29A008D14((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v11 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v11;
  }

  v12 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 200) = *(a2 + 200);
  if (*(a2 + 231) < 0)
  {
    sub_29A008D14((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v13 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v13;
  }

  v14 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29A0714D4(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

void sub_29A071518(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A071518(a1, *a2);
    sub_29A071518(a1, a2[1]);
    sub_29A071574((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_29A071574(uint64_t a1)
{
  v2 = (a1 + 24);
  *(a1 + 24) = &unk_2A203DFC8;
  *(a1 + 80) = &unk_2A203DAA8;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 376));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 328));
  *(a1 + 80) = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 280));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 232));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 184));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 136));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 88));
  Alembic::Abc::v12::OObject::~OObject(v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A07164C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E000;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A071824(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A071728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A071748(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_29A06FE68(a1, a2, 0);
  }
}

void sub_29A071794(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  v12 = *(*v9 + 16);
  if (a2 == 2)
  {
    v13 = v11;
    v12(v9);
    sub_29A02D768(&a9, v13);
  }

  else
  {
    v12(v9);
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A071780);
}

void sub_29A071824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24[0] = 0;
  v22 = &v23;
  v25 = 2;
  sub_29A019350(v26, &v22);
  v28 = 0;
  v27 = 0u;
  v29 = 1;
  sub_29A01752C(&v22, v23);
  sub_29A02E010(a4, &v25);
  sub_29A02E010(a5, &v25);
  sub_29A02E010(a6, &v25);
  sub_29A02E010(a7, &v25);
  *(a1 + 8) = v25;
  v24[33] = a1 + 8;
  v24[34] = "OSchema::OSchema::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v24, "NULL parent passed into OSchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, __p);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v22, v26);
  if (HIDWORD(v29) != 1)
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_PolyMesh_v1");
    v30 = __p;
    v13 = sub_29A00B038(&v22, __p, &unk_29B43296D, &v30);
    std::string::operator=((v13 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (HIDWORD(v29) != 1)
    {
      sub_29A008E78(__p, "schemaBaseType");
      sub_29A008E78(&__str, "AbcGeom_GeomBase_v1");
      v30 = __p;
      v14 = sub_29A00B038(&v22, __p, &unk_29B43296D, &v30);
      std::string::operator=((v14 + 7), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  (*(**a2 + 112))(__p);
  v15 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v16 = *(a1 + 48);
  *(a1 + 40) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A01752C(&v22, v23);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A01752C(v26, v26[1]);
}

void sub_29A071B20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a24);
  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v25);
    sub_29A02D768(v26 - 176, v30);
  }

  else
  {
    sub_29A02F0A0(v25);
    sub_29A02D6F8(v26 - 176, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A071A6CLL);
}

void sub_29A071C7C(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t *sub_29A071CB8(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A071D50(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A071D50@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x1D0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A071DD0(v6 + 4, &v8);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A071DD0(void *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __dst[2] = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A0729EC((__dst + 3));
  return __dst;
}

void sub_29A071E28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A071E44(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A071574(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A071EA0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DFC8;
  sub_29A072820(a1 + 56);
  v13 = *(a2 + 8);
  __p[1] = 0;
  v44 = 0;
  __p[0] = &__p[1];
  v68 = v13;
  sub_29A019350(v69, __p);
  v71 = 0;
  v70 = 0u;
  v72 = 1;
  sub_29A01752C(__p, __p[1]);
  sub_29A02E010(a4, &v68);
  sub_29A02E010(a5, &v68);
  sub_29A02E010(a6, &v68);
  *v12 = v68;
  v66 = v12;
  v67 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    sub_29A008864(__p);
    sub_29A00911C(&v44, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    std::stringbuf::str();
    sub_29A008C60(&__str, &v64);
    if (v65 < 0)
    {
      operator delete(v64);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v33 = sub_29A008E1C(exception, &__str);
    __cxa_throw(v33, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v64, v69);
  if (HIDWORD(v72) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_FaceSet_v1");
    v58 = __p;
    v17 = sub_29A00B038(&v64, __p, &unk_29B43296D, &v58);
    std::string::operator=((v17 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "schemaObjTitle");
    sub_29A0726FC(&__str);
    v58 = __p;
    v18 = sub_29A00B038(&v64, __p, &unk_29B43296D, &v58);
    std::string::operator=((v18 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "schemaBaseType");
    sub_29A008E78(&__str, "AbcGeom_GeomBase_v1");
    v58 = __p;
    v19 = sub_29A00B038(&v64, __p, &unk_29B43296D, &v58);
    std::string::operator=((v19 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  sub_29A037144(&__str, a3, &v64);
  (*(*v15 + 80))(__p, v15, &__str);
  v20 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v21 = *(a1 + 48);
  *(a1 + 40) = v20;
  if (v21)
  {
    sub_29A014BEC(v21);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  v22 = v70;
  if (*(&v70 + 1))
  {
    atomic_fetch_add_explicit((*(&v70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    (*(*v15 + 24))(__p, v15);
    v23 = (*(*__p[0] + 48))(__p[0], v22);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  else
  {
    v23 = v71;
  }

  v59[0] = 0;
  v59[1] = 0;
  v58 = v59;
  (*(**(a1 + 40) + 40))(&v41);
  sub_29A008E78(v39, ".faceset");
  v24 = *v12;
  v38[0] = 1;
  v38[2] = v24;
  v37[0] = 2;
  v37[2] = v23;
  v35 = 3;
  v36 = &v58;
  v34[0] = 6;
  v34[2] = v16;
  Alembic::AbcGeom::v12::OFaceSetSchema::OFaceSetSchema(__p, &v41, v39, v38, v37, &v35, v34);
  sub_29A070FF0(a1 + 56, __p);
  *(a1 + 304) = v49;
  std::string::operator=((a1 + 312), &v50);
  v26 = v51;
  v25 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(a1 + 344);
  *(a1 + 336) = v26;
  *(a1 + 344) = v25;
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(a1 + 352) = v53;
  std::string::operator=((a1 + 360), &v54);
  v29 = v55;
  v28 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = *(a1 + 392);
  *(a1 + 384) = v29;
  *(a1 + 392) = v28;
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  *(a1 + 400) = v57;
  __p[0] = &unk_2A203DAA8;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v53);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v49);
  __p[0] = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v48);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v47);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v46);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v45);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p[1]);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  sub_29A01752C(&v58, v59[0]);
  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  sub_29A01752C(v63, v63[1]);
  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A01752C(&v64, *(&v64 + 1));
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (*(&v70 + 1))
  {
    sub_29A014BEC(*(&v70 + 1));
  }

  sub_29A01752C(v69, v69[1]);
  return a1;
}

void sub_29A0724F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(__p, a16);
  sub_29A008F20((v18 - 256));
  sub_29A008B0C(__p);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v21 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v22 = v21;
    sub_29A0727DC(v16);
    sub_29A02D768(v18 - 160, v22);
  }

  else
  {
    sub_29A0727DC(v16);
    sub_29A02D6F8(v18 - 160, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A072440);
}

void sub_29A0726FC(std::string *a1@<X8>)
{
  sub_29A008E78(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_FaceSet_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".faceset");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_29A0727A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A0727DC(uint64_t a1)
{
  sub_29A02F0A0(a1 + 304);
  sub_29A058380(a1 + 56);

  sub_29A0370A8(a1);
}

uint64_t sub_29A072820(uint64_t a1)
{
  v2 = sub_29A0728C8(a1);
  *v2 = &unk_2A203DAA8;
  *(v2 + 248) = 2;
  sub_29A008E78((v2 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  return a1;
}

void sub_29A0728A4(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_29A057650(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0728C8(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DB60;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_29A0729A8(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0729EC(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DFC8;
  sub_29A072820(a1 + 56);
  return a1;
}

uint64_t sub_29A072A64(uint64_t a1)
{
  *a1 = &unk_2A203DF10;
  if (*(a1 + 839) < 0)
  {
    operator delete(*(a1 + 816));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 768));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 712));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 664));
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 592));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 536));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 488));
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_29A071518(a1 + 440, *(a1 + 448));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_2A203DF98;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

uint64_t Alembic::AbcGeom::v12::IPolyMeshSchema::getTopologyVariance(Alembic::AbcGeom::v12::IPolyMeshSchema *this)
{
  if (Alembic::Abc::v12::IArrayProperty::isConstant((this + 344)) && Alembic::Abc::v12::IArrayProperty::isConstant((this + 392)))
  {
    return Alembic::Abc::v12::IArrayProperty::isConstant((this + 248)) ^ 1;
  }

  else
  {
    return 2;
  }
}

void sub_29A072BD8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A072BC8);
}

void Alembic::AbcGeom::v12::IPolyMeshSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v60 = a1 + 8;
  v61 = "IPolyMeshSchema::init()";
  *&v34.__r_.__value_.__l.__data_ = 0uLL;
  v33 = &v34;
  v55 = 2;
  sub_29A019350(v56, &v33);
  v58 = 0;
  v57 = 0u;
  v59 = 1;
  sub_29A01752C(&v33, v34.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v55);
  sub_29A02E010(a3, &v55);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v52 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v52 = 0;
  }

  v51 = v8;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v53, &v51, &v49, &v47);
  sub_29A008E78(__p, "P");
  v44[0] = 5;
  v44[2] = 1;
  v43[0] = 1;
  v43[2] = v55;
  sub_29A047324(&v33, v53, __p, v44, v43);
  *(a1 + 248) = v33;
  std::string::operator=((a1 + 256), &v34);
  v10 = v35;
  v9 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 288);
  *(a1 + 280) = v10;
  *(a1 + 288) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v53);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  v41 = v8;
  v42 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v53, &v41, &v49, &v47);
  sub_29A008E78(__p, ".faceIndices");
  sub_29A0479A8(&v33, v53, __p, a2, a3);
  *(a1 + 344) = v33;
  std::string::operator=((a1 + 352), &v34);
  v13 = v35;
  v12 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 384);
  *(a1 + 376) = v13;
  *(a1 + 384) = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v53);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  v39 = v8;
  v40 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v53, &v39, &v49, &v47);
  sub_29A008E78(__p, ".faceCounts");
  sub_29A0479A8(&v33, v53, __p, a2, a3);
  *(a1 + 392) = v33;
  std::string::operator=((a1 + 400), &v34);
  v16 = v35;
  v15 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 432);
  *(a1 + 424) = v16;
  *(a1 + 432) = v15;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v53);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  sub_29A008E78(&v33, "uv");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v19 = PropertyHeader;
  if (v34.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v33);
    if (!v19)
    {
      goto LABEL_42;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_42;
  }

  v31 = v8;
  v32 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v53, "uv");
  sub_29A048600(&v33, &v31, v53, a2, a3);
  sub_29A046D94(a1 + 440, &v33);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v38);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v37);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

LABEL_42:
  sub_29A008E78(&v33, "N");
  v20 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v21 = v20;
  if (v34.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v33);
    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else if (!v20)
  {
    goto LABEL_52;
  }

  v29 = v8;
  v30 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v53, "N");
  sub_29A049984(&v33, &v29, v53, a2, a3);
  sub_29A046D94(a1 + 592, &v33);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v38);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v37);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

LABEL_52:
  sub_29A008E78(&v33, ".velocities");
  v22 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v23 = v22;
  if (v34.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v33);
    if (!v23)
    {
      goto LABEL_66;
    }
  }

  else if (!v22)
  {
    goto LABEL_66;
  }

  v27 = v8;
  v28 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v53, &v27, &v49, &v47);
  sub_29A008E78(__p, ".velocities");
  sub_29A04AFA0(&v33, v53, __p, a2, a3);
  *(a1 + 296) = v33;
  std::string::operator=((a1 + 304), &v34);
  v25 = v35;
  v24 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 336);
  *(a1 + 328) = v25;
  *(a1 + 336) = v24;
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v33);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v53);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

LABEL_66:
  *(a1 + 744) = 0;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v57 + 1))
  {
    sub_29A014BEC(*(&v57 + 1));
  }

  sub_29A01752C(v56, v56[1]);
}

void sub_29A073224(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&a15);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v52 - 208));
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v51)
  {
    sub_29A014BEC(v51);
  }

  sub_29A02E0BC(v52 - 160);
  v55 = __cxa_begin_catch(a1);
  v56 = *(*v50 + 16);
  if (a2 == 2)
  {
    v57 = v55;
    v56(v50);
    sub_29A02D768(v52 - 96, v57);
  }

  else
  {
    v56(v50);
    sub_29A02D6F8(v52 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A073204);
}

uint64_t Alembic::AbcGeom::v12::IPolyMeshSchema::operator=(uint64_t a1, uint64_t a2)
{
  sub_29A070FF0(a1, a2);
  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v5 = *(a2 + 280);
  v4 = *(a2 + 288);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 288);
  *(a1 + 280) = v5;
  *(a1 + 288) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v8 = *(a2 + 328);
  v7 = *(a2 + 336);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 336);
  *(a1 + 328) = v8;
  *(a1 + 336) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v11 = *(a2 + 376);
  v10 = *(a2 + 384);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v11;
  *(a1 + 384) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v14 = *(a2 + 424);
  v13 = *(a2 + 432);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 432);
  *(a1 + 424) = v14;
  *(a1 + 432) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29A046D94(a1 + 440, a2 + 440);
  sub_29A046D94(a1 + 592, a2 + 592);
  pthread_mutex_lock((a1 + 776));
  *(a1 + 744) = 0;
  sub_29A074880(a1 + 752, *(a1 + 760));
  *(a1 + 752) = a1 + 760;
  *(a1 + 760) = 0u;
  pthread_mutex_unlock((a1 + 776));
  return a1;
}

void Alembic::AbcGeom::v12::IPolyMeshSchema::loadFaceSetNames(uint64_t **this)
{
  v2 = (this + 1);
  v16 = v2;
  v17 = "IPolyMeshSchema::loadFaceSetNames()";
  if ((this[93] & 1) == 0)
  {
    sub_29A07386C(v2, v15);
    NumChildren = Alembic::Abc::v12::IObject::getNumChildren(v15);
    if (NumChildren)
    {
      v4 = 0;
      do
      {
        ChildHeader = Alembic::Abc::v12::IObject::getChildHeader(v15);
        if (sub_29A0749C4((ChildHeader + 3), 0))
        {
          sub_29A074FA8(v7);
          v18 = ChildHeader;
          v6 = sub_29A074DC0(this + 94, ChildHeader, &unk_29B432A9F, &v18);
          sub_29A0739C0((v6 + 7), v7);
          v7[0] = &unk_2A203E020;
          v8 = &unk_2A203E058;
          Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v14);
          v8 = &unk_2A203E0E0;
          Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v13);
          Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v12);
          Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v11);
          Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v10);
          Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v9);
          Alembic::Abc::v12::IObject::~IObject(v7);
        }

        ++v4;
      }

      while (NumChildren != v4);
    }

    *(this + 744) = 1;
    Alembic::Abc::v12::IObject::~IObject(v15);
  }
}

void sub_29A0737E0(void *a1, int a2)
{
  Alembic::Abc::v12::IObject::~IObject((v2 - 192));
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v2 - 96, v5);
  }

  else
  {
    sub_29A02D6F8(v2 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0737C4);
}

void sub_29A07386C(int *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  v9 = "IBasePropertyT::getObject()";
  (*(**(a1 + 4) + 24))(&v6);
  v4 = *a1;
  v5[0] = 1;
  v5[2] = v4;
  sub_29A02DD88(a2, &v6, v5);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A073904(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a13, v16);
  }

  else
  {
    sub_29A02D6F8(&a13, 0);
  }

  __cxa_end_catch();
  *(v13 + 8) = 2;
  sub_29A008E78((v13 + 16), "");
  *v13 = &unk_2A203D5E0;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0;
  JUMPOUT(0x29A0738F0);
}

uint64_t sub_29A0739C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  std::string::operator=((a1 + 72), (a2 + 72));
  sub_29A070FF0(a1 + 96, a2 + 96);
  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v11 = *(a2 + 376);
  v10 = *(a2 + 384);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v11;
  *(a1 + 384) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return a1;
}

void sub_29A073A94(uint64_t a1)
{
  *a1 = &unk_2A203E020;
  *(a1 + 96) = &unk_2A203E058;
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 344));
  *(a1 + 96) = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 296));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 248));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 200));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 152));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 104));

  Alembic::Abc::v12::IObject::~IObject(a1);
}

uint64_t Alembic::AbcGeom::v12::IPolyMeshSchema::getFaceSetNames(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 776));
  Alembic::AbcGeom::v12::IPolyMeshSchema::loadFaceSetNames(a1);
  if (*(a1 + 752) != a1 + 760)
  {
    sub_29A070BA0(a2);
  }

  return pthread_mutex_unlock((a1 + 776));
}

void sub_29A073C04(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pthread_mutex_unlock((v9 + 776));
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v12);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A073BECLL);
}

BOOL Alembic::AbcGeom::v12::IPolyMeshSchema::hasFaceSet(uint64_t a1, const void **a2)
{
  pthread_mutex_lock((a1 + 776));
  if ((*(a1 + 744) & 1) == 0)
  {
    Alembic::AbcGeom::v12::IPolyMeshSchema::loadFaceSetNames(a1);
  }

  v4 = sub_29A01BCCC(a1 + 752, a2);
  pthread_mutex_unlock((a1 + 776));
  return a1 + 760 != v4;
}

void sub_29A073CFC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pthread_mutex_unlock((v9 + 776));
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v12);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A073CE8);
}

uint64_t Alembic::AbcGeom::v12::IPolyMeshSchema::getFaceSet@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + 8);
  v28 = a1 + 8;
  v29 = "IPolyMeshSchema::getFaceSet()";
  pthread_mutex_lock((a1 + 776));
  if ((*(a1 + 744) & 1) == 0)
  {
    Alembic::AbcGeom::v12::IPolyMeshSchema::loadFaceSetNames(a1);
  }

  if (a1 + 760 == sub_29A01BCCC(a1 + 752, a2))
  {
    sub_29A008864(v16);
    sub_29A00911C(v17, "The requested FaceSet name can't be found in PolyMesh.", 54);
    std::stringbuf::str();
    sub_29A008C60(v25, &v26);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(exception, v25);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  v16[0] = a2;
  v7 = sub_29A074DC0((a1 + 752), a2, &unk_29B432A9F, v16);
  if (!sub_29A0751C8((v7 + 7)))
  {
    sub_29A07386C(v6, v25);
    LODWORD(v26) = 0;
    DWORD2(v26) = 0;
    v15[0] = 0;
    v15[2] = 0;
    sub_29A0751F8(v16, v25, a2, &v26, v15);
    v30 = a2;
    v8 = sub_29A074DC0((a1 + 752), a2, &unk_29B432A9F, &v30);
    sub_29A0739C0((v8 + 7), v16);
    v16[0] = &unk_2A203E020;
    v18 = &unk_2A203E058;
    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v24);
    v18 = &unk_2A203E0E0;
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v23);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v22);
    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v21);
    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v20);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v19);
    Alembic::Abc::v12::IObject::~IObject(v16);
    Alembic::Abc::v12::IObject::~IObject(v25);
  }

  v16[0] = a2;
  v9 = sub_29A074DC0((a1 + 752), a2, &unk_29B432A9F, v16);
  sub_29A030028(a3, (v9 + 7));
  *a3 = &unk_2A203E020;
  sub_29A074608(a3 + 96, (v9 + 19));
  *(a3 + 96) = &unk_2A203E058;
  *(a3 + 344) = *(v9 + 100);
  if (*(v9 + 431) < 0)
  {
    sub_29A008D14((a3 + 352), v9[51], v9[52]);
  }

  else
  {
    v10 = *(v9 + 51);
    *(a3 + 368) = v9[53];
    *(a3 + 352) = v10;
  }

  *(a3 + 376) = v9[54];
  v11 = v9[55];
  *(a3 + 384) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return pthread_mutex_unlock((a1 + 776));
}

void sub_29A074074(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A008F20((v6 - 200));
  sub_29A008B0C(va);
  pthread_mutex_unlock((v5 + 776));
  v9 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v6 - 80, v9);
  }

  else
  {
    sub_29A02D6F8(v6 - 80, 0);
  }

  __cxa_end_catch();
  sub_29A074FA8(v4);
  JUMPOUT(0x29A073FE0);
}

void *sub_29A074180(void *a1)
{
  *a1 = &unk_2A203E058;
  v2 = (a1 + 7);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 31));
  *a1 = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 25));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 19));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 13));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 1));
  return a1;
}

void sub_29A07421C(uint64_t a1)
{
  *a1 = &unk_2A203E020;
  *(a1 + 96) = &unk_2A203E058;
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 344));
  *(a1 + 96) = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 296));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 248));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 200));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 152));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 104));
  Alembic::Abc::v12::IObject::~IObject(a1);

  operator delete(v2);
}

void *sub_29A0742DC(void *a1)
{
  *a1 = &unk_2A203E0E0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 25));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 19));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 13));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 7));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);
  return a1;
}

void sub_29A074348(void *a1)
{
  *a1 = &unk_2A203E058;
  v2 = (a1 + 7);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 31));
  *a1 = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 25));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 19));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 13));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 1));

  operator delete(a1);
}

void sub_29A0743F4(uint64_t a1)
{
  sub_29A02F0A0(a1 + 248);

  sub_29A074568(a1);
}

BOOL sub_29A074430(uint64_t a1)
{
  result = sub_29A0745BC(a1);
  if (result)
  {
    if (*(a1 + 279) < 0)
    {
      if (*(a1 + 264))
      {
        return 0;
      }
    }

    else if (*(a1 + 279))
    {
      return 0;
    }

    return *(a1 + 280) != 0;
  }

  return result;
}

void *sub_29A074480(void *a1)
{
  *a1 = &unk_2A203E0E0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 25));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 19));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 13));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 7));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);
  return a1;
}

void sub_29A0744EC(void *a1)
{
  *a1 = &unk_2A203E0E0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 25));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 19));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 13));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 7));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);

  operator delete(a1);
}

void sub_29A074568(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A0745BC(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 39))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 87) < 0)
  {
    if (*(a1 + 72))
    {
      return 0;
    }
  }

  else if (*(a1 + 87))
  {
    return 0;
  }

  return *(a1 + 88) != 0;
}

uint64_t sub_29A074608(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A203E0E0;
  v6 = (a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_29A008D14(v6, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *v6 = v7;
  }

  v8 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    sub_29A008D14((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v9;
  }

  v10 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = *(a2 + 152);
  if (*(a2 + 183) < 0)
  {
    sub_29A008D14((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v11 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v11;
  }

  v12 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 200) = *(a2 + 200);
  if (*(a2 + 231) < 0)
  {
    sub_29A008D14((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v13 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v13;
  }

  v14 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29A0747D4(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v4);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v3);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v1);
  _Unwind_Resume(a1);
}

void sub_29A074844(uint64_t a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 8));

  operator delete(a1);
}

void sub_29A074880(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A074880(a1, *a2);
    sub_29A074880(a1, a2[1]);
    sub_29A0748DC((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A0748DC(uint64_t a1)
{
  v2 = (a1 + 24);
  *(a1 + 24) = &unk_2A203E020;
  *(a1 + 120) = &unk_2A203E058;
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 368));
  *(a1 + 120) = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 320));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 272));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 224));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 176));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 128));
  Alembic::Abc::v12::IObject::~IObject(v2);
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_29A0749C4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    sub_29A008E78(v27, "schema");
    sub_29A02CFB4(a1, v27, &v29);
    if ((v32 & 0x80000000) == 0)
    {
      v14 = v32 == 18 && v29 == 0x5F6D6F6547636241 && v30 == 0x5F74655365636146 && v31 == 12662;
      goto LABEL_67;
    }

    v17 = v29;
    v14 = v30 == 18 && *v29 == 0x5F6D6F6547636241 && v29[1] == 0x5F74655365636146 && *(v29 + 8) == 12662;
    goto LABEL_66;
  }

  if (a2 == 1)
  {
    return 1;
  }

  if (a2)
  {
    return 0;
  }

  sub_29A008E78(v27, "schemaObjTitle");
  sub_29A02CFB4(a1, v27, &v29);
  sub_29A074CE0(&v26);
  if ((v32 & 0x80u) == 0)
  {
    v3 = v32;
  }

  else
  {
    v3 = v30;
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (v3 == size)
  {
    v6 = (v32 & 0x80u) == 0 ? &v29 : v29;
    v7 = (v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v26 : v26.__r_.__value_.__r.__words[0];
    if (!memcmp(v6, v7, v3))
    {
      v14 = 1;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  sub_29A008E78(v22, "schema");
  sub_29A02CFB4(a1, v22, v24);
  sub_29A074CE0(&__p);
  v8 = v25;
  if ((v25 & 0x80u) == 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = v24[1];
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  if (v9 != v10)
  {
    v14 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ((v25 & 0x80u) == 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = v24[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = memcmp(v12, p_p, v9) == 0;
  if (v11 < 0)
  {
LABEL_45:
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = v25;
  }

LABEL_46:
  if ((v8 & 0x80) != 0)
  {
    operator delete(v24[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if ((*(&v26.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_52;
  }

LABEL_51:
  operator delete(v26.__r_.__value_.__l.__data_);
LABEL_52:
  if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  v17 = v29;
LABEL_66:
  operator delete(v17);
LABEL_67:
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return v14;
}

void sub_29A074C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A074CE0(std::string *a1@<X8>)
{
  sub_29A008E78(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_FaceSet_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".faceset");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_29A074D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *sub_29A074DC0(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A074E58(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A074E58@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x1C0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A074ED8(v6 + 4, &v8);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A074ED8(void *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __dst[2] = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A074FA8((__dst + 3));
  return __dst;
}

void sub_29A074F30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A074F4C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0748DC(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A074FA8(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *a1 = &unk_2A203E020;
  sub_29A075030(a1 + 96);
  return a1;
}

uint64_t sub_29A075030(uint64_t a1)
{
  v2 = sub_29A0750A4(a1);
  *v2 = &unk_2A203E058;
  *(v2 + 248) = 2;
  sub_29A008E78((v2 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  return a1;
}

uint64_t sub_29A0750A4(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E0E0;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_29A075184(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v4);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v3);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29A0751C8(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return sub_29A074430(a1 + 96);
  }

  return 0;
}

uint64_t sub_29A0751F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = 0;
  LODWORD(v56[0]) = 0;
  LODWORD(__p) = 0;
  LODWORD(v38) = 0;
  v10 = sub_29A075808(a4, a5, &v55, &__p);
  LODWORD(v40) = 1;
  LODWORD(v41) = v10;
  sub_29A075914(a1, a2, a3, &v40);
  *a1 = &unk_2A203E020;
  sub_29A075030(a1 + 96);
  v41 = 0;
  v42[0] = 0;
  v40 = &v41;
  v55 = 2;
  sub_29A019350(v56, &v40);
  v58 = 0;
  v57 = 0u;
  v59 = 1;
  sub_29A01752C(&v40, v41);
  sub_29A02E010(a4, &v55);
  sub_29A02E010(a5, &v55);
  v53 = a1 + 8;
  v54 = "ISchemaObject::ISchemaObject( IObject)";
  Header = Alembic::Abc::v12::IObject::getHeader(a1);
  if ((sub_29A0749C4(Header + 48, v59) & 1) == 0)
  {
    sub_29A008864(&v40);
    v18 = sub_29A00911C(v42, "Incorrect match of schema: ", 27);
    sub_29A008E78(&v51, "schema");
    sub_29A02CFB4(Header + 48, &v51, &__p);
    if ((v39 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v39 & 0x80u) == 0)
    {
      v20 = v39;
    }

    else
    {
      v20 = v38;
    }

    v21 = sub_29A00911C(v18, p_p, v20);
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    sub_29A00911C(v22, "AbcGeom_FaceSet_v1", 18);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::stringbuf::str();
    sub_29A008C60(&__p, &v51);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v24 = sub_29A008E1C(exception, &__p);
    __cxa_throw(v24, &unk_2A203B108, sub_29A008B08);
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    sub_29A008864(&v40);
    v25 = sub_29A00911C(v42, "Bad child: ", 11);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    sub_29A00911C(v25, v27, v28);
    std::stringbuf::str();
    sub_29A008C60(&__p, &v51);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, &__p);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v12 + 40))(&v35);
  v34[0] = 0;
  v34[2] = 0;
  v33[0] = 0;
  v33[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&__p, &v35, v34, v33);
  sub_29A008E78(&v51, ".faceset");
  v13 = *(a1 + 8);
  v32[0] = 1;
  v32[2] = v13;
  v31[0] = 5;
  v31[2] = v59;
  sub_29A075AD8(&v40, &__p, &v51, v32, v31);
  sub_29A070FF0(a1 + 96, &v40);
  *(a1 + 344) = v47;
  std::string::operator=((a1 + 352), &v48);
  v15 = v49;
  v14 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 384);
  *(a1 + 376) = v15;
  *(a1 + 384) = v14;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v40 = &unk_2A203E058;
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v47);
  v40 = &unk_2A203E0E0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v46);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v45);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v44);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v43);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v41);
  if (v52 < 0)
  {
    operator delete(v51);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&__p);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (*(&v57 + 1))
  {
    sub_29A014BEC(*(&v57 + 1));
  }

  sub_29A01752C(v56, v56[1]);
  return a1;
}

void sub_29A075674(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a28);
  v33 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v34 = v33;
    sub_29A075A94(v29);
    sub_29A02D768(v30 - 144, v34);
  }

  else
  {
    sub_29A075A94(v29);
    sub_29A02D6F8(v30 - 144, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0754A0);
}

uint64_t sub_29A075808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v12 = 2;
  sub_29A019350(v13, &v10);
  v15 = 0;
  v14 = 0u;
  v16 = 1;
  sub_29A01752C(&v10, v11[0]);
  sub_29A02E010(a1, &v12);
  sub_29A02E010(a2, &v12);
  sub_29A02E010(a3, &v12);
  sub_29A02E010(a4, &v12);
  v8 = v12;
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29A01752C(v13, v13[1]);
  return v8;
}

uint64_t sub_29A075914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *a1 = &unk_2A203D5E0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v8 = *(a2 + 48);
  v15 = *(a2 + 40);
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A030028(v14, a2);
  v13[0] = 0;
  v13[2] = 0;
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  v9 = sub_29A02FF1C(v14, a4, v13, v12, v11);
  Alembic::Abc::v12::IObject::init(a1, &v15, a3, v9);
  Alembic::Abc::v12::IObject::~IObject(v14);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  Alembic::Abc::v12::IObject::initInstance(a1);
  return a1;
}

void sub_29A075A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (*(v15 + 95) < 0)
  {
    operator delete(*(v15 + 72));
  }

  v17 = *(v15 + 64);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v15 + 48);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (*(v15 + 39) < 0)
  {
    operator delete(*(v15 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A075A94(Alembic::Abc::v12::IObject *a1)
{
  sub_29A02F0A0(a1 + 344);
  sub_29A074568(a1 + 96);

  Alembic::Abc::v12::IObject::reset(a1);
}

uint64_t sub_29A075AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29A075B80(a1, a2, a3, a4, a5);
  *v8 = &unk_2A203E058;
  *(v8 + 248) = 2;
  sub_29A008E78((v8 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  Alembic::AbcGeom::v12::IFaceSetSchema::init(a1, a4, a5);
  return a1;
}

void sub_29A075B5C(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v2);
  sub_29A0742DC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A075B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29A075CC0(a1, a2, a3, a4, a5);
  *v8 = &unk_2A203E0E0;
  *(v8 + 56) = 2;
  sub_29A008E78((v8 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 200) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_29A075D6C(a1, a4, a5);
  return a1;
}

void sub_29A075C6C(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v5);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v4);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v3);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29A075CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E110;
  sub_29A07647C(a1, a2, a3, a4, a5);
  return a1;
}

void sub_29A075D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v53 = a1 + 8;
  v54 = "IGeomBaseSchema::init()";
  *&v45.__r_.__value_.__l.__data_ = 0uLL;
  v44 = &v45;
  v48 = 2;
  sub_29A019350(v49, &v44);
  v51 = 0;
  v50 = 0u;
  v52 = 1;
  sub_29A01752C(&v44, v45.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v48);
  sub_29A02E010(a3, &v48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v42 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v42 = 0;
  }

  v41 = v8;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v41, &v39, &v37);
  sub_29A008E78(__p, ".selfBnds");
  sub_29A03DA60(&v44, v43, __p, a2, a3);
  *(a1 + 56) = v44;
  std::string::operator=((a1 + 64), &v45);
  v10 = v46;
  v9 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 96);
  *(a1 + 88) = v10;
  *(a1 + 96) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v44);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  sub_29A008E78(&v44, ".childBnds");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v13 = PropertyHeader;
  if (v45.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v44);
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_26;
  }

  v33 = v8;
  v34 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v33, &v39, &v37);
  sub_29A008E78(__p, ".childBnds");
  sub_29A03DA60(&v44, v43, __p, a2, a3);
  *(a1 + 104) = v44;
  std::string::operator=((a1 + 112), &v45);
  v15 = v46;
  v14 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 144);
  *(a1 + 136) = v15;
  *(a1 + 144) = v14;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v44);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

LABEL_26:
  sub_29A008E78(&v44, ".arbGeomParams");
  v17 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v18 = v17;
  if (v45.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v44);
    if (!v18)
    {
      goto LABEL_40;
    }
  }

  else if (!v17)
  {
    goto LABEL_40;
  }

  v31 = v8;
  v32 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v31, &v39, &v37);
  sub_29A008E78(__p, ".arbGeomParams");
  v29 = 1;
  v30 = v48;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v44, v43, __p, &v29);
  *(a1 + 152) = v44;
  std::string::operator=((a1 + 160), &v45);
  v20 = v46;
  v19 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 192);
  *(a1 + 184) = v20;
  *(a1 + 192) = v19;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v44);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

LABEL_40:
  sub_29A008E78(&v44, ".userProperties");
  v22 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v23 = v22;
  if (v45.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v44);
    if (!v23)
    {
      goto LABEL_54;
    }
  }

  else if (!v22)
  {
    goto LABEL_54;
  }

  v27 = v8;
  v28 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v43, &v27, &v39, &v37);
  sub_29A008E78(__p, ".userProperties");
  v29 = 1;
  v30 = v48;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v44, v43, __p, &v29);
  *(a1 + 200) = v44;
  std::string::operator=((a1 + 208), &v45);
  v25 = v46;
  v24 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 240);
  *(a1 + 232) = v25;
  *(a1 + 240) = v24;
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v44);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

LABEL_54:
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v50 + 1))
  {
    sub_29A014BEC(*(&v50 + 1));
  }

  sub_29A01752C(v49, v49[1]);
}

void sub_29A076258(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a36);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a30);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  sub_29A02E0BC(v42 - 160);
  v45 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v42 - 96, v45);
  }

  else
  {
    sub_29A02D6F8(v42 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A076238);
}

void sub_29A07647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(&v35 + 1) = 0;
  v36[0] = 0;
  *&v35 = &v35 + 8;
  v37 = 2;
  sub_29A019350(v38, &v35);
  v40 = 0;
  v39 = 0u;
  v41 = 1;
  sub_29A01752C(&v35, *(&v35 + 1));
  sub_29A02E010(a4, &v37);
  sub_29A02E010(a5, &v37);
  *(a1 + 8) = v37;
  v36[34] = a1 + 8;
  v36[35] = "ISchema::ISchema::init()";
  if (*(a2 + 31) < 0)
  {
    if (*(a2 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (*(a2 + 31))
  {
LABEL_18:
    sub_29A008864(&v35);
    sub_29A00911C(v36, "NULL parent passed into ISchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(v33, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, v33);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  v10 = *(a2 + 32);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (*(*v10 + 80))(v10, a3);
  v13 = v12;
  if (!v12)
  {
    sub_29A008864(&v35);
    v18 = sub_29A00911C(v36, "Nonexistent compound property: ", 31);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }

    sub_29A00911C(v18, v20, v21);
    std::stringbuf::str();
    sub_29A008C60(v33, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(v22, v33);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  if ((sub_29A0769B8(v12 + 32, v41) & 1) == 0)
  {
    sub_29A008864(&v35);
    v24 = sub_29A00911C(v36, "Incorrect match of schema: ", 27);
    sub_29A008E78(__p, "schema");
    sub_29A02CFB4(v13 + 32, __p, v33);
    if ((v34 & 0x80u) == 0)
    {
      v25 = v33;
    }

    else
    {
      v25 = v33[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v26 = v34;
    }

    else
    {
      v26 = v33[1];
    }

    v27 = sub_29A00911C(v24, v25, v26);
    v28 = sub_29A00911C(v27, " to expected: ", 14);
    sub_29A00911C(v28, "AbcGeom_FaceSet_v1", 18);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(v33, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, v33);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v10 + 104))(&v35, v10, a3);
  v14 = v35;
  v35 = 0uLL;
  v15 = *(a1 + 48);
  *(a1 + 40) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    if (*(&v35 + 1))
    {
      sub_29A014BEC(*(&v35 + 1));
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (*(&v39 + 1))
  {
    sub_29A014BEC(*(&v39 + 1));
  }

  sub_29A01752C(v38, v38[1]);
}

void sub_29A076854(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a23);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    sub_29A02F0A0(v24);
    sub_29A02D768(v26 - 144, v30);
  }

  else
  {
    sub_29A02F0A0(v24);
    sub_29A02D6F8(v26 - 144, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A076608);
}

uint64_t sub_29A0769B8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  if ((a2 & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  sub_29A008E78(__p, "schema");
  sub_29A02CFB4(a1, __p, &v11);
  if (v14 < 0)
  {
    v2 = v12 == 18 && *v11 == 0x5F6D6F6547636241 && v11[1] == 0x5F74655365636146 && *(v11 + 8) == 12662;
    operator delete(v11);
  }

  else
  {
    v2 = v14 == 18 && v11 == 0x5F6D6F6547636241 && v12 == 0x5F74655365636146 && v13 == 12662;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A076AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::OSubDSchema(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A076FFC(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203E130;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2;
  sub_29A008E78((a1 + 448), "");
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 2;
  sub_29A008E78((a1 + 496), "");
  *(a1 + 520) = 0u;
  *(a1 + 536) = 2;
  sub_29A008E78((a1 + 544), "");
  *(a1 + 568) = 0u;
  *(a1 + 584) = 2;
  sub_29A008E78((a1 + 592), "");
  *(a1 + 616) = 0u;
  *(a1 + 632) = 2;
  sub_29A008E78((a1 + 640), "");
  *(a1 + 664) = 0u;
  *(a1 + 680) = 2;
  sub_29A008E78((a1 + 688), "");
  *(a1 + 712) = 0u;
  *(a1 + 728) = 2;
  sub_29A008E78((a1 + 736), "");
  *(a1 + 760) = 0u;
  *(a1 + 776) = 2;
  sub_29A008E78((a1 + 784), "");
  *(a1 + 808) = 0u;
  *(a1 + 824) = 2;
  sub_29A008E78((a1 + 832), "");
  *(a1 + 856) = 0u;
  *(a1 + 872) = 2;
  sub_29A008E78((a1 + 880), "");
  *(a1 + 904) = 0u;
  sub_29A0654B4(a1 + 920);
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = a1 + 1128;
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  Alembic::AbcGeom::v12::OSubDSchema::init(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A076E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A071518(v14 + 1120, *(v14 + 1128));
  if (*(v14 + 1119) < 0)
  {
    operator delete(*v16);
  }

  sub_29A050A50(v14 + 920);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 872));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 824));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 776));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 680));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 632));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 584));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 536));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 488));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 440));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A077624(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A076FFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A07D178(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203E1B8;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 200) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_29A057858(a4, a5, a6, a7, &v22);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v22)
  {
    (*(**a2 + 24))(&v18);
    (*(*v18 + 24))(&v20);
    v15 = (*(*v20 + 48))(v20, v22);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  else
  {
    v15 = v14;
  }

  v16 = sub_29A0585D8(a4, a5, a6, a7);
  sub_29A07D274(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A07723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v21);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v20);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(a10);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v18 + 8));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OSubDSchema::init(Alembic::AbcGeom::v12::OSubDSchema *this, int a2, char a3)
{
  v32 = this + 8;
  v33 = "OSubDSchema::init()";
  *(this + 1144) = a3;
  *(this + 144) = 0;
  *(this + 290) = a2;
  if ((a3 & 1) == 0)
  {
    v5 = *(this + 5);
    v4 = *(this + 6);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Alembic::AbcGeom::v12::OSubDSchema::createPositionsProperty(this);
    v26 = v5;
    v27 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".faceIndices");
    v6 = *(this + 290);
    v22 = 2;
    v23 = v6;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A051A7C(&v28, &v26, __p, &v22, &v20, &v18, &v16);
    *(this + 74) = v28;
    std::string::operator=((this + 304), &v29);
    v8 = v30;
    v7 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 42);
    *(this + 41) = v8;
    *(this + 42) = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v28);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v14 = v5;
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".faceCounts");
    v10 = *(this + 290);
    v22 = 2;
    v23 = v10;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    sub_29A051A7C(&v28, &v14, __p, &v22, &v20, &v18, &v16);
    *(this + 86) = v28;
    std::string::operator=((this + 352), &v29);
    v12 = v30;
    v11 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 48);
    *(this + 47) = v12;
    *(this + 48) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v28);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29A0774F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v29 - 96));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v32 = __cxa_begin_catch(a1);
  v33 = *(*v27 + 16);
  if (a2 == 2)
  {
    v34 = v32;
    v33(v27);
    sub_29A02D768(v29 - 48, v34);
  }

  else
  {
    v33(v27);
    sub_29A02D6F8(v29 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0774E0);
}

void *sub_29A077624(void *a1)
{
  *a1 = &unk_2A203E1B8;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::OSubDSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v25 = *(a2 + 4);
  v26 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  LODWORD(v23) = 1;
  LODWORD(v24) = v12;
  sub_29A076FFC(a1, &v25, a3, &v23, a4, a5, a6);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  *a1 = &unk_2A203E130;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2;
  sub_29A008E78((a1 + 448), "");
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 2;
  sub_29A008E78((a1 + 496), "");
  *(a1 + 520) = 0u;
  *(a1 + 536) = 2;
  sub_29A008E78((a1 + 544), "");
  *(a1 + 568) = 0u;
  *(a1 + 584) = 2;
  sub_29A008E78((a1 + 592), "");
  *(a1 + 616) = 0u;
  *(a1 + 632) = 2;
  sub_29A008E78((a1 + 640), "");
  *(a1 + 664) = 0u;
  *(a1 + 680) = 2;
  sub_29A008E78((a1 + 688), "");
  *(a1 + 712) = 0u;
  *(a1 + 728) = 2;
  sub_29A008E78((a1 + 736), "");
  *(a1 + 760) = 0u;
  *(a1 + 776) = 2;
  sub_29A008E78((a1 + 784), "");
  *(a1 + 808) = 0u;
  *(a1 + 824) = 2;
  sub_29A008E78((a1 + 832), "");
  *(a1 + 856) = 0u;
  *(a1 + 872) = 2;
  sub_29A008E78((a1 + 880), "");
  *(a1 + 904) = 0u;
  sub_29A0654B4(a1 + 920);
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = a1 + 1128;
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  sub_29A057858(a4, a5, a6, &v21, &v23);
  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v13 = sub_29A057978(a4, a5, a6, &v21);
  if (v23)
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    v16 = (*(*v21 + 48))(v21, v23);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v16 = v13;
  }

  LODWORD(v21) = 0;
  LODWORD(v22) = 0;
  v17 = sub_29A0585D8(a4, a5, a6, &v21);
  Alembic::AbcGeom::v12::OSubDSchema::init(a1, v16, v17);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A077A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A071518(v14 + 1120, *(v14 + 1128));
  if (*(v14 + 1119) < 0)
  {
    operator delete(*v17);
  }

  sub_29A050A50(v14 + 920);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 872));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 824));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 776));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 680));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 632));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 584));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 536));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 488));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 440));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v15);
  sub_29A077624(v14);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OSubDSchema::set(Alembic::AbcGeom::v12::OSubDSchema *this, uint64_t a2)
{
  if ((*(this + 1144) & 1) == 0 && !sub_29A07970C(a2))
  {
    v177[34] = this + 8;
    v177[35] = "OSubDSchema::set()";
    v4 = (a2 + 376);
    if (*(a2 + 399) < 0)
    {
      sub_29A008D14(&__p, *(a2 + 376), *(a2 + 384));
    }

    else
    {
      __p = *v4;
      v177[0] = *(a2 + 392);
    }

    if (SHIBYTE(v177[0]) < 0)
    {
      if (*&__p.f64[1] == 13 && **&__p.f64[0] == 0x2D6C6C756D746163 && *(*&__p.f64[0] + 5) == 0x6B72616C632D6C6CLL)
      {
        operator delete(*&__p.f64[0]);
        goto LABEL_31;
      }
    }

    else if (SHIBYTE(v177[0]) == 13 && *&__p.f64[0] == 0x2D6C6C756D746163 && *(__p.f64 + 5) == 0x6B72616C632D6C6CLL)
    {
LABEL_31:
      if (*(this + 423) < 0)
      {
        if (!*(this + 51))
        {
          goto LABEL_35;
        }
      }

      else if (!*(this + 423))
      {
LABEL_35:
        if (*(this + 53))
        {
          goto LABEL_38;
        }
      }

      if (*(a2 + 120) != -1073741824)
      {
        Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingInterpolateBoundaryProperty(this);
      }

LABEL_38:
      if (*(this + 471) < 0)
      {
        if (!*(this + 57))
        {
          goto LABEL_42;
        }
      }

      else if (!*(this + 471))
      {
LABEL_42:
        if (*(this + 59))
        {
          goto LABEL_45;
        }
      }

      if (*(a2 + 124) != -1073741824)
      {
        Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingPropagateCornersProperty(this);
      }

LABEL_45:
      if (*(this + 519) < 0)
      {
        if (!*(this + 63))
        {
          goto LABEL_49;
        }
      }

      else if (!*(this + 519))
      {
LABEL_49:
        if (*(this + 65))
        {
          goto LABEL_52;
        }
      }

      if (*(a2 + 128) != -1073741824)
      {
        Alembic::AbcGeom::v12::OSubDSchema::createInterpolateBoundaryProperty(this);
      }

LABEL_52:
      v8 = (a2 + 448);
      if (*(a2 + 456) == 127 || !*v8 && *(a2 + 472) == *(a2 + 464))
      {
        goto LABEL_61;
      }

      if (*(this + 903) < 0)
      {
        if (!*(this + 111))
        {
          goto LABEL_59;
        }
      }

      else if (!*(this + 903))
      {
LABEL_59:
        if (*(this + 113))
        {
          goto LABEL_61;
        }
      }

      Alembic::AbcGeom::v12::OSubDSchema::createVelocitiesProperty(this);
LABEL_61:
      if (*(a2 + 496) != 127 && (*(a2 + 488) || *(a2 + 512) != *(a2 + 504)) && !sub_29A051208(this + 920))
      {
        Alembic::AbcGeom::v12::OSubDSchema::createUVsProperty(this, a2);
      }

      if (*(this + 144))
      {
        v159 = *(this + 62);
        if (*(this + 279) < 0)
        {
          sub_29A008D14(&v160, *(this + 32), *(this + 33));
        }

        else
        {
          v160 = *(this + 16);
          v161 = *(this + 34);
        }

        v10 = *(this + 36);
        v162 = *(this + 35);
        v163 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a2 + 5);
        *v155 = *a2;
        *&v155[5] = v11;
        v156 = 0;
        v158 = 0;
        v157 = 0;
        sub_29A00E7E0(&v156, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
        if (SHIBYTE(v161) < 0)
        {
          if (*(&v160 + 1))
          {
            goto LABEL_103;
          }
        }

        else if (HIBYTE(v161))
        {
          goto LABEL_103;
        }

        if (v162)
        {
          if (*&v155[8] == 127 || !*v155 && v157 == v156)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v159);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v159);
          }
        }

LABEL_103:
        if (v156)
        {
          v157 = v156;
          operator delete(v156);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v159);
        v150 = *(this + 74);
        if (*(this + 327) < 0)
        {
          sub_29A008D14(&v151, *(this + 38), *(this + 39));
        }

        else
        {
          v151 = *(this + 19);
          v152 = *(this + 40);
        }

        v14 = *(this + 42);
        v153 = *(this + 41);
        v154 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *(a2 + 45);
        *v146 = *(a2 + 40);
        *&v146[5] = v15;
        v147 = 0;
        v149 = 0;
        v148 = 0;
        sub_29A00E7E0(&v147, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
        if (SHIBYTE(v152) < 0)
        {
          if (*(&v151 + 1))
          {
            goto LABEL_120;
          }
        }

        else if (HIBYTE(v152))
        {
          goto LABEL_120;
        }

        if (v153)
        {
          if (*&v146[8] == 127 || !*v146 && v148 == v147)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v150);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v150);
          }
        }

LABEL_120:
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v150);
        v141 = *(this + 86);
        if (*(this + 375) < 0)
        {
          sub_29A008D14(&v142, *(this + 44), *(this + 45));
        }

        else
        {
          v142 = *(this + 22);
          v143 = *(this + 46);
        }

        v16 = *(this + 48);
        v144 = *(this + 47);
        v145 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(a2 + 85);
        *v137 = *(a2 + 80);
        *&v137[5] = v17;
        v138 = 0;
        v140 = 0;
        v139 = 0;
        sub_29A00E7E0(&v138, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
        if (SHIBYTE(v143) < 0)
        {
          if (*(&v142 + 1))
          {
            goto LABEL_137;
          }
        }

        else if (HIBYTE(v143))
        {
          goto LABEL_137;
        }

        if (v144)
        {
          if (*&v137[8] == 127 || !*v137 && v139 == v138)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v141);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v141);
          }
        }

LABEL_137:
        if (v138)
        {
          v139 = v138;
          operator delete(v138);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v141);
        if (*(this + 423) < 0)
        {
          if (*(this + 51) || !*(this + 53))
          {
            goto LABEL_152;
          }

          v132 = *(this + 98);
          sub_29A008D14(&v133, *(this + 50), 0);
          v18 = *(this + 53);
        }

        else
        {
          if (*(this + 423))
          {
            goto LABEL_152;
          }

          v18 = *(this + 53);
          if (!v18)
          {
            goto LABEL_152;
          }

          v132 = *(this + 98);
          v133 = *(this + 25);
          v134 = *(this + 52);
        }

        v19 = *(this + 54);
        v135 = v18;
        v136 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        LODWORD(__p.f64[0]) = *(a2 + 120);
        if (LODWORD(__p.f64[0]) == -1073741824)
        {
          Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v132);
        }

        else
        {
          Alembic::Abc::v12::OScalarProperty::set(&v132, &__p);
        }

        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v132);
LABEL_152:
        if (*(this + 471) < 0)
        {
          if (*(this + 57) || !*(this + 59))
          {
            goto LABEL_165;
          }

          v127 = *(this + 110);
          sub_29A008D14(&v128, *(this + 56), 0);
          v20 = *(this + 59);
        }

        else
        {
          if (*(this + 471))
          {
            goto LABEL_165;
          }

          v20 = *(this + 59);
          if (!v20)
          {
            goto LABEL_165;
          }

          v127 = *(this + 110);
          v128 = *(this + 28);
          v129 = *(this + 58);
        }

        v21 = *(this + 60);
        v130 = v20;
        v131 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        LODWORD(__p.f64[0]) = *(a2 + 124);
        if (LODWORD(__p.f64[0]) == -1073741824)
        {
          Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v127);
        }

        else
        {
          Alembic::Abc::v12::OScalarProperty::set(&v127, &__p);
        }

        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v127);
LABEL_165:
        if (*(this + 519) < 0)
        {
          if (*(this + 63) || !*(this + 65))
          {
            goto LABEL_178;
          }

          v122 = *(this + 122);
          sub_29A008D14(&v123, *(this + 62), 0);
          v22 = *(this + 65);
        }

        else
        {
          if (*(this + 519))
          {
            goto LABEL_178;
          }

          v22 = *(this + 65);
          if (!v22)
          {
            goto LABEL_178;
          }

          v122 = *(this + 122);
          v123 = *(this + 31);
          v124 = *(this + 64);
        }

        v23 = *(this + 66);
        v125 = v22;
        v126 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        LODWORD(__p.f64[0]) = *(a2 + 128);
        if (LODWORD(__p.f64[0]) == -1073741824)
        {
          Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v122);
        }

        else
        {
          Alembic::Abc::v12::OScalarProperty::set(&v122, &__p);
        }

        Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v122);
LABEL_178:
        if ((*(a2 + 144) == 127 || !*(a2 + 136) && *(a2 + 160) == *(a2 + 152)) && (*(a2 + 184) == 127 || !*(a2 + 176) && *(a2 + 200) == *(a2 + 192)) && (*(a2 + 224) == 127 || !*(a2 + 216) && *(a2 + 240) == *(a2 + 232)))
        {
LABEL_195:
          if (*(this + 567) < 0)
          {
            if (*(this + 69) || !*(this + 71))
            {
              goto LABEL_256;
            }

            v117 = *(this + 134);
            sub_29A008D14(&v118, *(this + 68), 0);
            v24 = *(this + 71);
          }

          else
          {
            if (*(this + 567))
            {
              goto LABEL_256;
            }

            v24 = *(this + 71);
            if (!v24)
            {
              goto LABEL_256;
            }

            v117 = *(this + 134);
            v118 = *(this + 34);
            v119 = *(this + 70);
          }

          v25 = *(this + 72);
          v120 = v24;
          v121 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          v26 = *(a2 + 141);
          *v113 = *(a2 + 136);
          *&v113[5] = v26;
          v114 = 0;
          v116 = 0;
          v115 = 0;
          sub_29A00E7E0(&v114, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 3);
          if (SHIBYTE(v119) < 0)
          {
            if (*(&v118 + 1))
            {
              goto LABEL_219;
            }
          }

          else if (HIBYTE(v119))
          {
            goto LABEL_219;
          }

          if (v120)
          {
            if (*&v113[8] == 127 || !*v113 && v115 == v114)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v117);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v117);
            }
          }

LABEL_219:
          if (v114)
          {
            v115 = v114;
            operator delete(v114);
          }

          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v117);
          v108 = *(this + 146);
          if (*(this + 615) < 0)
          {
            sub_29A008D14(&v109, *(this + 74), *(this + 75));
          }

          else
          {
            v109 = *(this + 37);
            v110 = *(this + 76);
          }

          v27 = *(this + 78);
          v111 = *(this + 77);
          v112 = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = *(a2 + 181);
          *v104 = *(a2 + 176);
          *&v104[5] = v28;
          v105 = 0;
          v107 = 0;
          v106 = 0;
          sub_29A00E7E0(&v105, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 3);
          if (SHIBYTE(v110) < 0)
          {
            if (*(&v109 + 1))
            {
              goto LABEL_236;
            }
          }

          else if (HIBYTE(v110))
          {
            goto LABEL_236;
          }

          if (v111)
          {
            if (*&v104[8] == 127 || !*v104 && v106 == v105)
            {
              Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v108);
            }

            else
            {
              Alembic::Abc::v12::OArrayProperty::set(&v108);
            }
          }

LABEL_236:
          if (v105)
          {
            v106 = v105;
            operator delete(v105);
          }

          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v108);
          v99 = *(this + 158);
          if (*(this + 663) < 0)
          {
            sub_29A008D14(&v100, *(this + 80), *(this + 81));
          }

          else
          {
            v100 = *(this + 40);
            v101 = *(this + 82);
          }

          v29 = *(this + 84);
          v102 = *(this + 83);
          v103 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          v30 = *(a2 + 221);
          *v95 = *(a2 + 216);
          *&v95[5] = v30;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          sub_29A00E7E0(&v96, *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 3);
          if (SHIBYTE(v101) < 0)
          {
            if (!*(&v100 + 1))
            {
              goto LABEL_247;
            }
          }

          else if (!HIBYTE(v101))
          {
LABEL_247:
            if (v102)
            {
              if (*&v95[8] == 127 || !*v95 && v97 == v96)
              {
                Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v99);
              }

              else
              {
                Alembic::Abc::v12::OArrayProperty::set(&v99);
              }
            }
          }

          if (v96)
          {
            v97 = v96;
            operator delete(v96);
          }

          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v99);
LABEL_256:
          v31 = (a2 + 256);
          if ((*(a2 + 264) == 127 || !*v31 && *(a2 + 280) == *(a2 + 272)) && (*(a2 + 304) == 127 || !*(a2 + 296) && *(a2 + 320) == *(a2 + 312)))
          {
LABEL_269:
            if (*(this + 711) < 0)
            {
              if (*(this + 87) || !*(this + 89))
              {
                goto LABEL_308;
              }

              v90 = *(this + 170);
              sub_29A008D14(&v91, *(this + 86), 0);
              v32 = *(this + 89);
            }

            else
            {
              if (*(this + 711))
              {
                goto LABEL_308;
              }

              v32 = *(this + 89);
              if (!v32)
              {
                goto LABEL_308;
              }

              v90 = *(this + 170);
              v91 = *(this + 43);
              v92 = *(this + 88);
            }

            v33 = *(this + 90);
            v93 = v32;
            v94 = v33;
            if (v33)
            {
              atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
            }

            v34 = *(a2 + 261);
            *v86 = *v31;
            *&v86[5] = v34;
            v87 = 0;
            v88 = 0;
            v89 = 0;
            sub_29A00E7E0(&v87, *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 3);
            if (SHIBYTE(v92) < 0)
            {
              if (*(&v91 + 1))
              {
                goto LABEL_288;
              }
            }

            else if (HIBYTE(v92))
            {
              goto LABEL_288;
            }

            if (v93)
            {
              if (*&v86[8] == 127 || !*v86 && v88 == v87)
              {
                Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v90);
              }

              else
              {
                Alembic::Abc::v12::OArrayProperty::set(&v90);
              }
            }

LABEL_288:
            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v90);
            v81 = *(this + 182);
            if (*(this + 759) < 0)
            {
              sub_29A008D14(&v82, *(this + 92), *(this + 93));
            }

            else
            {
              v82 = *(this + 46);
              v83 = *(this + 94);
            }

            v35 = *(this + 96);
            v84 = *(this + 95);
            v85 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
            }

            v36 = *(a2 + 301);
            *v77 = *(a2 + 296);
            *&v77[5] = v36;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            sub_29A00E7E0(&v78, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 3);
            if (SHIBYTE(v83) < 0)
            {
              if (!*(&v82 + 1))
              {
                goto LABEL_299;
              }
            }

            else if (!HIBYTE(v83))
            {
LABEL_299:
              if (v84)
              {
                if (*&v77[8] == 127 || !*v77 && v79 == v78)
                {
                  Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v81);
                }

                else
                {
                  Alembic::Abc::v12::OArrayProperty::set(&v81);
                }
              }
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v81);
LABEL_308:
            v37 = (a2 + 336);
            if (*(a2 + 344) == 127 || !*v37 && *(a2 + 360) == *(a2 + 352))
            {
LABEL_317:
              if (*(this + 807) < 0)
              {
                if (*(this + 99) || !*(this + 101))
                {
                  goto LABEL_339;
                }

                v72 = *(this + 194);
                sub_29A008D14(&v73, *(this + 98), 0);
                v38 = *(this + 101);
              }

              else
              {
                if (*(this + 807))
                {
                  goto LABEL_339;
                }

                v38 = *(this + 101);
                if (!v38)
                {
                  goto LABEL_339;
                }

                v72 = *(this + 194);
                v73 = *(this + 49);
                v74 = *(this + 100);
              }

              v39 = *(this + 102);
              v75 = v38;
              v76 = v39;
              if (v39)
              {
                atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
              }

              v40 = *(a2 + 341);
              *v68 = *v37;
              *&v68[5] = v40;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              sub_29A00E7E0(&v69, *(a2 + 352), *(a2 + 360), (*(a2 + 360) - *(a2 + 352)) >> 3);
              if (SHIBYTE(v74) < 0)
              {
                if (!*(&v73 + 1))
                {
                  goto LABEL_330;
                }
              }

              else if (!HIBYTE(v74))
              {
LABEL_330:
                if (v75)
                {
                  if (*&v68[8] == 127 || !*v68 && v70 == v69)
                  {
                    Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v72);
                  }

                  else
                  {
                    Alembic::Abc::v12::OArrayProperty::set(&v72);
                  }
                }
              }

              if (v69)
              {
                v70 = v69;
                operator delete(v69);
              }

              Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v72);
LABEL_339:
              if (*(this + 855) < 0)
              {
                if (*(this + 105) || !*(this + 107))
                {
                  goto LABEL_364;
                }

                v63 = *(this + 206);
                sub_29A008D14(&v64, *(this + 104), 0);
                v41 = *(this + 107);
              }

              else
              {
                if (*(this + 855))
                {
                  goto LABEL_364;
                }

                v41 = *(this + 107);
                if (!v41)
                {
                  goto LABEL_364;
                }

                v63 = *(this + 206);
                v64 = *(this + 52);
                v65 = *(this + 106);
              }

              v42 = *(this + 108);
              v66 = v41;
              v67 = v42;
              if (v42)
              {
                atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
              }

              if (*(a2 + 399) < 0)
              {
                sub_29A008D14(__dst, *(a2 + 376), *(a2 + 384));
              }

              else
              {
                *__dst = *v4;
                v62 = *(a2 + 392);
              }

              if (SHIBYTE(v65) < 0)
              {
                if (*(&v64 + 1))
                {
                  goto LABEL_361;
                }
              }

              else if (HIBYTE(v65))
              {
                goto LABEL_361;
              }

              if (v66)
              {
                if (SHIBYTE(v62) < 0)
                {
                  if (__dst[1])
                  {
                    goto LABEL_358;
                  }
                }

                else if (HIBYTE(v62))
                {
LABEL_358:
                  Alembic::Abc::v12::OScalarProperty::set(&v63, __dst);
                  goto LABEL_361;
                }

                Alembic::Abc::v12::OScalarProperty::setFromPrevious(&v63);
              }

LABEL_361:
              if (SHIBYTE(v62) < 0)
              {
                operator delete(__dst[0]);
              }

              Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v63);
LABEL_364:
              if (*(this + 903) < 0)
              {
                if (!*(this + 111) && *(this + 113))
                {
                  v56 = *(this + 218);
                  sub_29A008D14(&v57, *(this + 110), 0);
                  v43 = *(this + 113);
LABEL_371:
                  v44 = *(this + 114);
                  v59 = v43;
                  v60 = v44;
                  if (v44)
                  {
                    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
                  }

                  *v52 = *v8;
                  *&v52[5] = *(a2 + 453);
                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  sub_29A00E7E0(&v53, *(a2 + 464), *(a2 + 472), (*(a2 + 472) - *(a2 + 464)) >> 3);
                  if (SHIBYTE(v58) < 0)
                  {
                    if (!*(&v57 + 1))
                    {
                      goto LABEL_377;
                    }
                  }

                  else if (!HIBYTE(v58))
                  {
LABEL_377:
                    if (v59)
                    {
                      if (*&v52[8] == 127 || !*v52 && v54 == v53)
                      {
                        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v56);
                      }

                      else
                      {
                        Alembic::Abc::v12::OArrayProperty::set(&v56);
                      }
                    }
                  }

                  if (v53)
                  {
                    v54 = v53;
                    operator delete(v53);
                  }

                  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v56);
                }
              }

              else if (!*(this + 903))
              {
                v43 = *(this + 113);
                if (v43)
                {
                  v56 = *(this + 218);
                  v57 = *(this + 55);
                  v58 = *(this + 112);
                  goto LABEL_371;
                }
              }

              if (*(a2 + 424) <= *(a2 + 400) || *(a2 + 432) <= *(a2 + 408) || *(a2 + 440) <= *(a2 + 416))
              {
                if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
                {
                  Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
                }

                else
                {
                  sub_29A04EF90(a2, &__p);
                  Alembic::Abc::v12::OScalarProperty::set((this + 56), &__p);
                }
              }

              else
              {
                Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 400));
              }

              if (sub_29A051208(this + 920))
              {
                sub_29A04F06C(this + 920, a2 + 488);
              }

LABEL_493:
              ++*(this + 144);
              return;
            }

            if (*(this + 807) < 0)
            {
              if (!*(this + 99))
              {
                goto LABEL_315;
              }
            }

            else if (!*(this + 807))
            {
LABEL_315:
              if (*(this + 101))
              {
                goto LABEL_317;
              }
            }

            Alembic::AbcGeom::v12::OSubDSchema::initHoles(this, *(this + 288) - 1);
            goto LABEL_317;
          }

          if (*(this + 711) < 0)
          {
            if (!*(this + 87))
            {
              goto LABEL_267;
            }
          }

          else if (!*(this + 711))
          {
LABEL_267:
            if (*(this + 89))
            {
              goto LABEL_269;
            }
          }

          Alembic::AbcGeom::v12::OSubDSchema::initCorners(this, *(this + 288) - 1);
          goto LABEL_269;
        }

        if (*(this + 567) < 0)
        {
          if (!*(this + 69))
          {
            goto LABEL_193;
          }
        }

        else if (!*(this + 567))
        {
LABEL_193:
          if (*(this + 71))
          {
            goto LABEL_195;
          }
        }

        Alembic::AbcGeom::v12::OSubDSchema::initCreases(this, *(this + 288) - 1);
        goto LABEL_195;
      }

      if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16) || *(a2 + 48) == 127 || !*(a2 + 40) && *(a2 + 64) == *(a2 + 56) || *(a2 + 88) == 127 || !*(a2 + 80) && *(a2 + 104) == *(a2 + 96))
      {
        sub_29A008864(&__p);
        sub_29A00911C(v177, "Sample 0 must have valid data for all mesh components", 53);
        std::stringbuf::str();
        sub_29A008C60(v175, &v173);
        if (v174 < 0)
        {
          operator delete(v173);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v51 = sub_29A008E1C(exception, v175);
        __cxa_throw(v51, &unk_2A203B108, sub_29A008B08);
      }

      Alembic::Abc::v12::OArrayProperty::set(this + 248);
      Alembic::Abc::v12::OArrayProperty::set(this + 296);
      Alembic::Abc::v12::OArrayProperty::set(this + 344);
      if (*(this + 903) < 0)
      {
        if (*(this + 111) || !*(this + 113))
        {
          goto LABEL_403;
        }

        v168 = *(this + 218);
        sub_29A008D14(&v169, *(this + 110), 0);
        v9 = *(this + 113);
      }

      else
      {
        if (*(this + 903))
        {
          goto LABEL_403;
        }

        v9 = *(this + 113);
        if (!v9)
        {
          goto LABEL_403;
        }

        v168 = *(this + 218);
        v169 = *(this + 55);
        v170 = *(this + 112);
      }

      v12 = *(this + 114);
      v171 = v9;
      v172 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a2 + 453);
      *v164 = *v8;
      *&v164[5] = v13;
      v165 = 0;
      v167 = 0;
      v166 = 0;
      sub_29A00E7E0(&v165, *(a2 + 464), *(a2 + 472), (*(a2 + 472) - *(a2 + 464)) >> 3);
      if (SHIBYTE(v170) < 0)
      {
        if (!*(&v169 + 1))
        {
          goto LABEL_213;
        }
      }

      else if (!HIBYTE(v170))
      {
LABEL_213:
        if (v171)
        {
          if (*&v164[8] == 127 || !*v164 && v166 == v165)
          {
            Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v168);
          }

          else
          {
            Alembic::Abc::v12::OArrayProperty::set(&v168);
          }
        }
      }

      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v168);
LABEL_403:
      if (*(a2 + 424) >= *(a2 + 400) && *(a2 + 432) >= *(a2 + 408) && *(a2 + 440) >= *(a2 + 416))
      {
        Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 400));
      }

      else
      {
        sub_29A04EF90(a2, &__p);
        Alembic::Abc::v12::OScalarProperty::set((this + 56), &__p);
      }

      if (*(a2 + 496) != 127 && (*(a2 + 488) || *(a2 + 512) != *(a2 + 504)))
      {
        sub_29A04F06C(this + 920, a2 + 488);
      }

      if (*(this + 423) < 0)
      {
        if (*(this + 51))
        {
          goto LABEL_419;
        }
      }

      else if (*(this + 423))
      {
        goto LABEL_419;
      }

      if (*(this + 53))
      {
        v45 = *(a2 + 120);
        if (v45 == -1073741824)
        {
          v45 = 0;
        }

        LODWORD(__p.f64[0]) = v45;
        Alembic::Abc::v12::OScalarProperty::set((this + 392), &__p);
      }

LABEL_419:
      if (*(this + 471) < 0)
      {
        if (*(this + 57))
        {
          goto LABEL_427;
        }
      }

      else if (*(this + 471))
      {
        goto LABEL_427;
      }

      if (*(this + 59))
      {
        v46 = *(a2 + 124);
        if (v46 == -1073741824)
        {
          v46 = 0;
        }

        LODWORD(__p.f64[0]) = v46;
        Alembic::Abc::v12::OScalarProperty::set((this + 440), &__p);
      }

LABEL_427:
      if (*(this + 519) < 0)
      {
        if (*(this + 63))
        {
          goto LABEL_435;
        }
      }

      else if (*(this + 519))
      {
        goto LABEL_435;
      }

      if (*(this + 65))
      {
        v47 = *(a2 + 128);
        if (v47 == -1073741824)
        {
          v47 = 0;
        }

        LODWORD(__p.f64[0]) = v47;
        Alembic::Abc::v12::OScalarProperty::set((this + 488), &__p);
      }

LABEL_435:
      if (*(this + 855) < 0)
      {
        if (!*(this + 105))
        {
LABEL_439:
          if (*(this + 107))
          {
            if (*(a2 + 399) < 0)
            {
              sub_29A008D14(&__p, *(a2 + 376), *(a2 + 384));
            }

            else
            {
              __p = *v4;
              v177[0] = *(a2 + 392);
            }

            Alembic::Abc::v12::OScalarProperty::set((this + 824), &__p);
            if (SHIBYTE(v177[0]) < 0)
            {
              operator delete(*&__p.f64[0]);
            }
          }
        }
      }

      else if (!*(this + 855))
      {
        goto LABEL_439;
      }

      v48 = *(a2 + 144);
      if (v48 != 127 && (*(a2 + 136) || *(a2 + 160) != *(a2 + 152)) || *(a2 + 184) != 127 && (*(a2 + 176) || *(a2 + 200) != *(a2 + 192)) || *(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)))
      {
        Alembic::AbcGeom::v12::OSubDSchema::initCreases(this, 0);
        v48 = *(a2 + 144);
      }

      if (v48 != 127 && (*(a2 + 136) || *(a2 + 160) != *(a2 + 152)))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 536);
      }

      if (*(a2 + 184) != 127 && (*(a2 + 176) || *(a2 + 200) != *(a2 + 192)))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 584);
      }

      if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 632);
      }

      v49 = *(a2 + 264);
      if (v49 != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)) || *(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)))
      {
        Alembic::AbcGeom::v12::OSubDSchema::initCorners(this, 0);
        v49 = *(a2 + 264);
      }

      if (v49 != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 680);
      }

      if (*(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)))
      {
        Alembic::Abc::v12::OArrayProperty::set(this + 728);
      }

      if (*(a2 + 344) != 127)
      {
        if (!*(a2 + 336) && *(a2 + 360) == *(a2 + 352) || (Alembic::AbcGeom::v12::OSubDSchema::initHoles(this, 0), *(a2 + 344) != 127))
        {
          if (*(a2 + 336) || *(a2 + 360) != *(a2 + 352))
          {
            Alembic::Abc::v12::OArrayProperty::set(this + 776);
          }
        }
      }

      goto LABEL_493;
    }

    if (*(this + 855) < 0)
    {
      if (*(this + 105))
      {
LABEL_24:
        v7 = 1;
        if ((SHIBYTE(v177[0]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    else if (*(this + 855))
    {
      goto LABEL_24;
    }

    v7 = *(this + 107) == 0;
    if ((SHIBYTE(v177[0]) & 0x80000000) == 0)
    {
LABEL_25:
      if (!v7)
      {
        goto LABEL_31;
      }

LABEL_30:
      Alembic::AbcGeom::v12::OSubDSchema::createSubDSchemeProperty(this);
      goto LABEL_31;
    }

LABEL_29:
    operator delete(*&__p.f64[0]);
    if (!v7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  Alembic::AbcGeom::v12::OSubDSchema::selectiveSet(this, a2);
}

void sub_29A079400(void *a1, int a2)
{
  v5 = STACK[0x460];
  if (STACK[0x460])
  {
    STACK[0x468] = v5;
    operator delete(v5);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&STACK[0x478]);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v2 - 80, v6);
  }

  else
  {
    sub_29A02D6F8(v2 - 80, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A079368);
}

void Alembic::AbcGeom::v12::OSubDSchema::selectiveSet(Alembic::AbcGeom::v12::OSubDSchema *this, uint64_t a2)
{
  v42 = this + 8;
  v43 = "OPolyMeshSchema::selectiveSet()";
  if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
  {
    if (*(this + 279) < 0)
    {
      if (!*(this + 33))
      {
        goto LABEL_8;
      }
    }

    else if (!*(this + 279))
    {
LABEL_8:
      if (*(this + 35))
      {
        goto LABEL_10;
      }
    }

    Alembic::AbcGeom::v12::OSubDSchema::createPositionsProperty(this);
  }

LABEL_10:
  if (*(this + 279) < 0)
  {
    if (*(this + 33) || !*(this + 35))
    {
      goto LABEL_39;
    }

    v37 = *(this + 62);
    sub_29A008D14(&v38, *(this + 32), 0);
    v4 = *(this + 35);
  }

  else
  {
    if (*(this + 279))
    {
      goto LABEL_39;
    }

    v4 = *(this + 35);
    if (!v4)
    {
      goto LABEL_39;
    }

    v37 = *(this + 62);
    v38 = *(this + 16);
    v39 = *(this + 34);
  }

  v5 = *(this + 36);
  v40 = v4;
  v41 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v33 = *a2;
  *&v33[5] = v6;
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v39) < 0)
  {
    if (!*(&v38 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (!HIBYTE(v39))
  {
LABEL_23:
    if (v40)
    {
      if (*&v33[8] == 127 || !*v33 && v35 == __p)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v37);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v37);
      }
    }
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v37);
  if (*(a2 + 424) <= *(a2 + 400) || *(a2 + 432) <= *(a2 + 408) || *(a2 + 440) <= *(a2 + 416))
  {
    if (*(a2 + 8) != 127 && (*a2 || *(a2 + 24) != *(a2 + 16)))
    {
      sub_29A04EF90(a2, __dst);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), __dst);
    }
  }

  else
  {
    Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 400));
  }

LABEL_39:
  v7 = (a2 + 448);
  if (*(a2 + 456) != 127 && (*v7 || *(a2 + 472) != *(a2 + 464)))
  {
    if (*(this + 903) < 0)
    {
      if (!*(this + 111))
      {
        goto LABEL_46;
      }
    }

    else if (!*(this + 903))
    {
LABEL_46:
      if (*(this + 113))
      {
        goto LABEL_48;
      }
    }

    Alembic::AbcGeom::v12::OSubDSchema::createVelocitiesProperty(this);
  }

LABEL_48:
  if (*(this + 903) < 0)
  {
    if (*(this + 111) || !*(this + 113))
    {
      goto LABEL_70;
    }

    v26 = *(this + 218);
    sub_29A008D14(&v27, *(this + 110), 0);
    v8 = *(this + 113);
  }

  else
  {
    if (*(this + 903))
    {
      goto LABEL_70;
    }

    v8 = *(this + 113);
    if (!v8)
    {
      goto LABEL_70;
    }

    v26 = *(this + 218);
    v27 = *(this + 55);
    v28 = *(this + 112);
  }

  v9 = *(this + 114);
  v29 = v8;
  v30 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *v22 = *v7;
  *&v22[5] = *(a2 + 453);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_29A00E7E0(&v23, *(a2 + 464), *(a2 + 472), (*(a2 + 472) - *(a2 + 464)) >> 3);
  if (SHIBYTE(v28) < 0)
  {
    if (!*(&v27 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (!HIBYTE(v28))
  {
LABEL_61:
    if (v29)
    {
      if (*&v22[8] == 127 || !*v22 && v24 == v23)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v26);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v26);
      }
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v26);
LABEL_70:
  if (*(a2 + 496) != 127 && (*(a2 + 488) || *(a2 + 512) != *(a2 + 504)))
  {
    if (!sub_29A051208(this + 920))
    {
      Alembic::AbcGeom::v12::OSubDSchema::createUVsProperty(this, a2);
    }

    sub_29A04F06C(this + 920, a2 + 488);
  }

  v10 = *(this + 423);
  if (*(this + 423) < 0)
  {
    if (!*(this + 51))
    {
      goto LABEL_80;
    }
  }

  else if (!*(this + 423))
  {
LABEL_80:
    if (*(this + 53))
    {
      goto LABEL_83;
    }
  }

  if (*(a2 + 120) != -1073741824)
  {
    Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingInterpolateBoundaryProperty(this);
    v10 = *(this + 423);
  }

LABEL_83:
  if ((v10 & 0x80) != 0)
  {
    if (*(this + 51))
    {
      goto LABEL_91;
    }
  }

  else if (v10)
  {
    goto LABEL_91;
  }

  if (*(this + 53))
  {
    v11 = *(a2 + 120);
    if (v11 == -1073741824)
    {
      v11 = 0;
    }

    LODWORD(__dst[0]) = v11;
    Alembic::Abc::v12::OScalarProperty::set((this + 392), __dst);
  }

LABEL_91:
  v12 = *(this + 471);
  if (*(this + 471) < 0)
  {
    if (!*(this + 57))
    {
      goto LABEL_95;
    }
  }

  else if (!*(this + 471))
  {
LABEL_95:
    if (*(this + 59))
    {
      goto LABEL_98;
    }
  }

  if (*(a2 + 124) != -1073741824)
  {
    Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingPropagateCornersProperty(this);
    v12 = *(this + 471);
  }

LABEL_98:
  if ((v12 & 0x80) != 0)
  {
    if (*(this + 57))
    {
      goto LABEL_106;
    }
  }

  else if (v12)
  {
    goto LABEL_106;
  }

  if (*(this + 59))
  {
    v13 = *(a2 + 124);
    if (v13 == -1073741824)
    {
      v13 = 0;
    }

    LODWORD(__dst[0]) = v13;
    Alembic::Abc::v12::OScalarProperty::set((this + 440), __dst);
  }

LABEL_106:
  v14 = *(this + 519);
  if (*(this + 519) < 0)
  {
    if (!*(this + 63))
    {
      goto LABEL_110;
    }
  }

  else if (!*(this + 519))
  {
LABEL_110:
    if (*(this + 65))
    {
      goto LABEL_113;
    }
  }

  if (*(a2 + 128) != -1073741824)
  {
    Alembic::AbcGeom::v12::OSubDSchema::createInterpolateBoundaryProperty(this);
    v14 = *(this + 519);
  }

LABEL_113:
  if ((v14 & 0x80) != 0)
  {
    if (*(this + 63))
    {
      goto LABEL_121;
    }
  }

  else if (v14)
  {
    goto LABEL_121;
  }

  if (*(this + 65))
  {
    v15 = *(a2 + 128);
    if (v15 == -1073741824)
    {
      v15 = 0;
    }

    LODWORD(__dst[0]) = v15;
    Alembic::Abc::v12::OScalarProperty::set((this + 488), __dst);
  }

LABEL_121:
  v16 = (a2 + 376);
  if (*(a2 + 399) < 0)
  {
    sub_29A008D14(__dst, *(a2 + 376), *(a2 + 384));
  }

  else
  {
    *__dst = *v16;
    v32 = *(a2 + 392);
  }

  if (SHIBYTE(v32) < 0)
  {
    if (__dst[1] == 13 && *__dst[0] == 0x2D6C6C756D746163 && *(__dst[0] + 5) == 0x6B72616C632D6C6CLL)
    {
      operator delete(__dst[0]);
      goto LABEL_146;
    }

LABEL_137:
    if (*(this + 855) < 0)
    {
      if (*(this + 105))
      {
LABEL_139:
        v19 = 1;
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_144;
      }
    }

    else if (*(this + 855))
    {
      goto LABEL_139;
    }

    v19 = *(this + 107) == 0;
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_140:
      if (!v19)
      {
        goto LABEL_146;
      }

LABEL_145:
      Alembic::AbcGeom::v12::OSubDSchema::createSubDSchemeProperty(this);
      goto LABEL_146;
    }

LABEL_144:
    operator delete(__dst[0]);
    if (!v19)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  if (SHIBYTE(v32) != 13)
  {
    goto LABEL_137;
  }

  if (__dst[0] != 0x2D6C6C756D746163 || *(__dst + 5) != 0x6B72616C632D6C6CLL)
  {
    goto LABEL_137;
  }

LABEL_146:
  if (*(this + 855) < 0)
  {
    if (*(this + 105))
    {
      goto LABEL_156;
    }
  }

  else if (*(this + 855))
  {
    goto LABEL_156;
  }

  if (*(this + 107))
  {
    if (*(a2 + 399) < 0)
    {
      sub_29A008D14(__dst, *(a2 + 376), *(a2 + 384));
    }

    else
    {
      *__dst = *v16;
      v32 = *(a2 + 392);
    }

    Alembic::Abc::v12::OScalarProperty::set((this + 824), __dst);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst[0]);
    }
  }

LABEL_156:
  v20 = *(a2 + 144);
  if (v20 != 127 && (*(a2 + 136) || *(a2 + 160) != *(a2 + 152)) || *(a2 + 184) != 127 && (*(a2 + 176) || *(a2 + 200) != *(a2 + 192)) || *(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)))
  {
    if (*(this + 567) < 0)
    {
      if (*(this + 69))
      {
        goto LABEL_172;
      }
    }

    else if (*(this + 567))
    {
      goto LABEL_172;
    }

    if (*(this + 71))
    {
      goto LABEL_183;
    }

LABEL_172:
    if (*(this + 615) < 0)
    {
      if (*(this + 75))
      {
        goto LABEL_177;
      }
    }

    else if (*(this + 615))
    {
      goto LABEL_177;
    }

    if (*(this + 77))
    {
      goto LABEL_183;
    }

LABEL_177:
    if (*(this + 663) < 0)
    {
      if (*(this + 81))
      {
        goto LABEL_182;
      }
    }

    else if (*(this + 663))
    {
      goto LABEL_182;
    }

    if (*(this + 83))
    {
      goto LABEL_183;
    }

LABEL_182:
    Alembic::AbcGeom::v12::OSubDSchema::initCreases(this, 0);
    v20 = *(a2 + 144);
  }

LABEL_183:
  if (v20 != 127 && (*(a2 + 136) || *(a2 + 160) != *(a2 + 152)))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 536);
  }

  if (*(a2 + 184) != 127 && (*(a2 + 176) || *(a2 + 200) != *(a2 + 192)))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 584);
  }

  if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 632);
  }

  v21 = *(a2 + 264);
  if (v21 != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)) || *(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)))
  {
    if (*(this + 711) < 0)
    {
      if (*(this + 87))
      {
        goto LABEL_207;
      }
    }

    else if (*(this + 711))
    {
      goto LABEL_207;
    }

    if (*(this + 89))
    {
      goto LABEL_213;
    }

LABEL_207:
    if (*(this + 759) < 0)
    {
      if (*(this + 93))
      {
        goto LABEL_212;
      }
    }

    else if (*(this + 759))
    {
      goto LABEL_212;
    }

    if (*(this + 95))
    {
      goto LABEL_213;
    }

LABEL_212:
    Alembic::AbcGeom::v12::OSubDSchema::initCorners(this, 0);
    v21 = *(a2 + 264);
  }

LABEL_213:
  if (v21 != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 680);
  }

  if (*(a2 + 304) != 127 && (*(a2 + 296) || *(a2 + 320) != *(a2 + 312)))
  {
    Alembic::Abc::v12::OArrayProperty::set(this + 728);
  }

  if (*(a2 + 344) != 127)
  {
    if (*(a2 + 336) || *(a2 + 360) != *(a2 + 352))
    {
      if (*(this + 807) < 0)
      {
        if (*(this + 99))
        {
          goto LABEL_229;
        }
      }

      else if (*(this + 807))
      {
        goto LABEL_229;
      }

      if (!*(this + 101))
      {
LABEL_229:
        Alembic::AbcGeom::v12::OSubDSchema::initHoles(this, 0);
        if (*(a2 + 344) == 127)
        {
          goto LABEL_233;
        }
      }
    }

    if (*(a2 + 336) || *(a2 + 360) != *(a2 + 352))
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 776);
    }
  }

LABEL_233:
  ++*(this + 144);
}

void sub_29A07A130(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a15);
  v37 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v34 - 64, v37);
  }

  else
  {
    sub_29A02D6F8(v34 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A07A110);
}

void Alembic::AbcGeom::v12::OSubDSchema::createSubDSchemeProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
{
  v2 = *(this + 6);
  v14 = *(this + 5);
  v15 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".scheme");
  v3 = *(this + 290);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A07D7E4(&v16, &v14, __p, v11, v10, v9, v8);
  *(this + 206) = v16;
  std::string::operator=((this + 832), &v17);
  v5 = v18;
  v4 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 107) = v5;
  v6 = *(this + 108);
  *(this + 108) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v16);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29A008E78(&v16, "catmull-clark");
  if (*(this + 144))
  {
    v7 = 0;
    do
    {
      Alembic::Abc::v12::OScalarProperty::set((this + 824), &v16);
      ++v7;
    }

    while (v7 < *(this + 144));
  }

  if (v17.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v16);
  }
}

void sub_29A07A360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v23 - 64));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 72);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(a1);
}