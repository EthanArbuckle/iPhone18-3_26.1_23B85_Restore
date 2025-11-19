void sub_29A03283C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A03259CLL);
}

uint64_t sub_29A032984(uint64_t a1, int a2)
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

void sub_29A032A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::Abc::v12::ISampleSelector::getIndex(uint64_t a1, double ***a2, uint64_t a3)
{
  CeilIndex = *a1;
  if (CeilIndex < 0)
  {
    v8 = *(a1 + 16);
    v9 = *a2;
    v10 = *(a1 + 8);
    if (v8)
    {
      if (v8 == 2)
      {
        CeilIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getNearIndex(v9, v10, a3);
      }

      else
      {
        CeilIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getCeilIndex(v9, v10, a3);
      }
    }

    else
    {
      CeilIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getFloorIndex(v9, v10, a3);
    }
  }

  v6 = a3 - 1;
  if (CeilIndex < a3)
  {
    v6 = CeilIndex;
  }

  if (CeilIndex >= 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t Alembic::Abc::v12::IScalarProperty::IScalarProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = *(a2 + 40);
  v10[0] = *(a2 + 32);
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::IScalarProperty::init(a1, v10, a3, *a2, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return a1;
}

void sub_29A032B3C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::IScalarProperty::init(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  *(&v20 + 1) = 0;
  v21[0] = 0;
  *&v20 = &v20 + 8;
  v22 = a4;
  sub_29A019350(v23, &v20);
  v25 = 0;
  v24 = 0u;
  v26 = 1;
  sub_29A01752C(&v20, *(&v20 + 1));
  sub_29A02E010(a5, &v22);
  *a1 = v22;
  v21[34] = a1;
  v21[35] = "IScalarProperty::init()";
  if (!(*(**a2 + 80))(*a2, a3))
  {
    sub_29A008864(&v20);
    v11 = sub_29A00911C(v21, "Nonexistent scalar property: ", 29);
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    sub_29A00911C(v11, v13, v14);
    std::stringbuf::str();
    sub_29A008C60(v19, &__p);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_29A008E1C(exception, v19);
    __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
  }

  (*(**a2 + 88))(&v20);
  v9 = v20;
  v20 = 0uLL;
  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  sub_29A01752C(v23, v23[1]);
}

void sub_29A032D40(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v6);
    sub_29A02D768(v7 - 128, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 128, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A032C78);
}

void Alembic::Abc::v12::IScalarProperty::~IScalarProperty(Alembic::Abc::v12::IScalarProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_29A032EB4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A032EA4);
}

void sub_29A032F64(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A032F54);
}

uint64_t Alembic::Abc::v12::IScalarProperty::getTimeSampling@<X0>(Alembic::Abc::v12::IScalarProperty *this@<X0>, void *a2@<X8>)
{
  result = (*(**(this + 4) + 16))(*(this + 4));
  v4 = *(result + 72);
  *a2 = *(result + 64);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A033030(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A033020);
}

uint64_t Alembic::Abc::v12::IScalarProperty::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v16 = "IScalarProperty::get()";
  v8 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v9 = *(v8 + 72);
  v13 = *(v8 + 64);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v13, v10);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return (*(**(a1 + 32) + 80))(*(a1 + 32), Index, a2, a4);
}

void sub_29A03318C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A033178);
}

void Alembic::Abc::v12::IScalarProperty::getParent(Alembic::Abc::v12::IScalarProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "IScalarProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A0332A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A033294);
}

void Alembic::Abc::v12::OArchive::~OArchive(Alembic::Abc::v12::OArchive *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

char *Alembic::Abc::v12::OArchive::getName@<X0>(Alembic::Abc::v12::OArchive *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 4) + 16))(*(this + 4));
  if (result[23] < 0)
  {
    return sub_29A008D14(a2, *result, *(result + 1));
  }

  v4 = *result;
  *(a2 + 16) = *(result + 2);
  *a2 = v4;
  return result;
}

void sub_29A033400(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  sub_29A008E78(v9, "");
  JUMPOUT(0x29A0333F0);
}

uint64_t Alembic::Abc::v12::OArchive::setCompressionHint(uint64_t this, int a2)
{
  if (a2 >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = a2;
  }

  if (v2 < 0)
  {
    LOBYTE(v2) = -1;
  }

  *(*(this + 32) + 8) = v2;
  return this;
}

void sub_29A0334E8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A0334D8);
}

void sub_29A0335A0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A033590);
}

void sub_29A033650(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A033640);
}

void Alembic::Abc::v12::OArchive::getTop(Alembic::Abc::v12::OArchive *this@<X0>, uint64_t a2@<X8>)
{
  v8 = this;
  v9 = "OArchive::getTop()";
  (*(**(this + 4) + 32))(&v6);
  v5[0] = 0;
  v5[2] = 0;
  v4[0] = 0;
  v4[2] = 0;
  v3[0] = 0;
  v3[2] = 0;
  sub_29A0337F8(a2, &v6, v5, v4, v3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A03374C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  v20 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v17 - 48, v20);
  }

  else
  {
    sub_29A02D6F8(v17 - 48, 0);
  }

  __cxa_end_catch();
  *(v16 + 8) = 2;
  sub_29A008E78((v16 + 16), "");
  *v16 = &unk_2A203D638;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  JUMPOUT(0x29A033738);
}

uint64_t sub_29A0337F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *a1 = &unk_2A203D638;
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v12 = a2[1];
    v15 = *a2;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = v10;
    v16 = 0;
  }

  v14[0] = 0;
  v14[2] = 0;
  *(a1 + 8) = sub_29A033910(&v15, a3, a4, a5, v14);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  return a1;
}

void sub_29A0338E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B284974(v13, v12, (v12 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_29A033910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 2;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void sub_29A033A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t Alembic::Abc::v12::OArrayProperty::OArrayProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = *(a2 + 40);
  v16[0] = *(a2 + 32);
  v16[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OArrayProperty::init(a1, v16, a3, a4, *a2, a5, a6, a7);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29A033B04(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OArrayProperty::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v21 = a5;
  sub_29A019350(v22, &v19);
  v24 = 0;
  v23 = 0u;
  v25 = 1;
  sub_29A01752C(&v19, v20[0]);
  sub_29A02E010(a6, &v21);
  sub_29A02E010(a7, &v21);
  sub_29A02E010(a8, &v21);
  *a1 = v21;
  v19 = a1;
  v20[0] = "OArrayProperty::init()";
  v13 = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    (*(**a2 + 24))(&v16);
    (*(*v16 + 24))(&v18);
    (*(*v18 + 48))(v18, v13);
    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  (*(**a2 + 104))(&v18);
  v14 = v18;
  v18 = 0uLL;
  v15 = *(a1 + 40);
  *(a1 + 32) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  sub_29A01752C(v22, v22[1]);
}

void sub_29A033D44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v19 = v18;
    sub_29A02F0A0(v14);
    sub_29A02D768(&a14, v19);
  }

  else
  {
    sub_29A02F0A0(v14);
    sub_29A02D6F8(&a14, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A033D10);
}

void sub_29A033DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A02E0BC(va);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OArrayProperty::~OArrayProperty(Alembic::Abc::v12::OArrayProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_29A033EC4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A033EB4);
}

void sub_29A033F74(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A033F64);
}

void sub_29A034020(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A034010);
}

void sub_29A0340CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A0340BCLL);
}

uint64_t Alembic::Abc::v12::OArrayProperty::setTimeSampling(uint64_t a1, void *a2)
{
  v12 = a1;
  v13 = "OArrayProperty::setTimeSampling()";
  (*(**(a1 + 32) + 32))(&v6);
  (*(*v6 + 24))(&v8);
  (*(*v8 + 24))(&v10);
  v4 = (*(*v10 + 48))(v10, *a2);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return (*(**(a1 + 32) + 88))(*(a1 + 32), v4);
}

void sub_29A03425C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v14 - 32, v16);
  }

  else
  {
    sub_29A02D6F8(v14 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A03424CLL);
}

void Alembic::Abc::v12::OArrayProperty::getParent(Alembic::Abc::v12::OArrayProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "OArrayProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A0343A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A034394);
}

uint64_t Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *a2;
  v11 = a2[1];
  v14[0] = v10;
  v14[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::init(a1, v14, a3, a4, a5, v13);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return a1;
}

{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = *a2;
    v14 = 0;
  }

  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  v9 = sub_29A034A40(&v13, a4, a5, v12, v11);
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v9;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

void sub_29A0344E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OCompoundProperty::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v29 = "OCompoundProperty::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(&v24, "invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(lpsrc, &__p);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, lpsrc);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  lpsrc[1] = 0;
  v21 = 0;
  lpsrc[0] = &lpsrc[1];
  LODWORD(v22) = 2;
  sub_29A019350(&v23, lpsrc);
  v26 = 0;
  v25 = 0u;
  v27 = 1;
  sub_29A01752C(lpsrc, lpsrc[1]);
  sub_29A02E010(a4, &v22);
  sub_29A02E010(a5, &v22);
  sub_29A02E010(a6, &v22);
  *a1 = v22;
  (*(**a2 + 88))(lpsrc);
  v11 = lpsrc[0];
  {
    v12 = lpsrc[1];
    if (lpsrc[1])
    {
      atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (lpsrc[1])
  {
    sub_29A014BEC(lpsrc[1]);
  }

  if (!*(a1 + 32))
  {
    (*(**a2 + 112))(lpsrc);
    v14 = *lpsrc;
    lpsrc[0] = 0;
    lpsrc[1] = 0;
    v15 = *(a1 + 40);
    *(a1 + 32) = v14;
    if (v15)
    {
      sub_29A014BEC(v15);
      if (lpsrc[1])
      {
        sub_29A014BEC(lpsrc[1]);
      }
    }
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  sub_29A01752C(&v23, v24);
}

void sub_29A034798(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
    sub_29A02D768(v7 - 80, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 80, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0346A4);
}

uint64_t Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14[0] = v10;
  v14[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::init(a1, v14, a3, a4, a5, v13);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return a1;
}

{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v13 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14(&v14, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = *(a2 + 32);
  }

  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v12 = &unk_2A203D638;
  v16 = v10;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OCompoundProperty::init(a1, &v12, a4, a5);
  Alembic::Abc::v12::OObject::~OObject(&v12);
  return a1;
}

void sub_29A034918(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

uint64_t Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = *a2;
    v13 = 0;
  }

  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v8 = sub_29A034A40(&v12, a3, a4, v11, v10);
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v8;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void sub_29A034A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A034A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 2;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void sub_29A034B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

void sub_29A034C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14(&v13, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
  }

  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v11 = &unk_2A203D638;
  v15 = v9;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OCompoundProperty::init(a1, &v11, a3, a4);
  Alembic::Abc::v12::OObject::~OObject(&v11);
  return a1;
}

void Alembic::Abc::v12::OCompoundProperty::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14(&v20, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
  }

  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v18 = &unk_2A203D638;
  v22 = v9;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[2] = 0;
  LODWORD(v16) = 0;
  LODWORD(v17) = 0;
  *a1 = sub_29A0356A8(&v18, a3, a4, v13, &v16);
  Alembic::Abc::v12::OObject::~OObject(&v18);
  v16 = a1;
  v17 = "OCompoundProperty::init( OObject)";
  Alembic::Abc::v12::OObject::getProperties(a2, v13);
  v11 = v14;
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v13);
}

void sub_29A034EA8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = v11;
    sub_29A02F0A0(v9);
    sub_29A02D768(va, v12);
  }

  else
  {
    sub_29A02F0A0(v9);
    sub_29A02D6F8(va, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A034E94);
}

void Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(Alembic::Abc::v12::OCompoundProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_29A0350C8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A0350B8);
}

void sub_29A035178(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((atomic_load_explicit(&qword_2A153ECC8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECC8))
    {
      v11 = operator new(0x50uLL);
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *(v11 + 6) = 1;
      v11[6] = 0;
      v11[5] = 0;
      v11[4] = v11 + 5;
      *(v11 + 14) = 127;
      *(v11 + 60) = 0;
      v11[8] = 0;
      v11[9] = 0;
      qword_2A153ECC0 = v11;
      __cxa_guard_release(&qword_2A153ECC8);
    }
  }

  JUMPOUT(0x29A035168);
}

void sub_29A0352AC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A03529CLL);
}

void Alembic::Abc::v12::OCompoundProperty::getProperty(Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter **this@<X0>, uint64_t a2@<X8>)
{
  Alembic::AbcCoreAbstract::v12::CompoundPropertyWriter::getProperty(this[4]);
  v4 = *this;
  *a2 = 2;
  sub_29A008E78((a2 + 8), "");
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v4;
    sub_29A014BEC(v6);
  }

  else
  {
    *a2 = v4;
  }
}

void sub_29A03539C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v14 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v14);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  *v11 = 2;
  sub_29A008E78((v11 + 8), "");
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  JUMPOUT(0x29A035388);
}

void Alembic::Abc::v12::OCompoundProperty::getProperty(int *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  v10 = "OCompoundProperty::getProperty( name)";
  (*(**(a1 + 4) + 88))(&v7);
  v4 = *a1;
  *a2 = 2;
  sub_29A008E78((a2 + 8), "");
  v5 = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v8;
    *a2 = v4;
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  else
  {
    *a2 = v4;
  }
}

void sub_29A0354E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v14 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v14);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  *v11 = 2;
  sub_29A008E78((v11 + 8), "");
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  JUMPOUT(0x29A0354D0);
}

void Alembic::Abc::v12::OCompoundProperty::getParent(Alembic::Abc::v12::OCompoundProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "OCompoundProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A035618(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A035604);
}

uint64_t sub_29A0356A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = v9;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

uint64_t Alembic::Abc::v12::OObject::OObject(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *a1 = &unk_2A203D638;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = *(a2 + 48);
  v14[0] = *(a2 + 40);
  v14[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OObject::init(a1, v14, a3, *(a2 + 8), a4, a5, a6);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return a1;
}

void sub_29A035888(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29B2849B4(v1, (v1 + 16));
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OObject::init(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  v18 = 0;
  __dst = &v17;
  v22 = a4;
  sub_29A019350(v23, &__dst);
  v25 = 0;
  v24 = 0u;
  v26 = 1;
  sub_29A01752C(&__dst, v17);
  sub_29A02E010(a5, &v22);
  sub_29A02E010(a6, &v22);
  sub_29A02E010(a7, &v22);
  *(a1 + 8) = v22;
  v21[3] = (a1 + 8);
  v21[4] = "OObject::init()";
  sub_29A037144(&__dst, a3, v23);
  (*(**a2 + 80))(&v15);
  v13 = v15;
  v15 = 0uLL;
  v14 = *(a1 + 48);
  *(a1 + 40) = v13;
  if (v14)
  {
    sub_29A014BEC(v14);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }
  }

  sub_29A01752C(v21, v21[1]);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  sub_29A01752C(v23, v23[1]);
}

void sub_29A035A34(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_29A0370F4(va);
  v8 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v9 = v8;
    sub_29A0370A8(v5);
    sub_29A02D768(va1, v9);
  }

  else
  {
    sub_29A0370A8(v5);
    sub_29A02D6F8(va1, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A035A00);
}

void sub_29A035A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A02E0BC(va);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OObject::~OObject(Alembic::Abc::v12::OObject *this)
{
  *this = &unk_2A203D638;
  v2 = *(this + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  Alembic::Abc::v12::OObject::~OObject(this);

  operator delete(v1);
}

uint64_t Alembic::Abc::v12::OObject::getHeader(Alembic::Abc::v12::OObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 16))(v1);
  }

  if ((atomic_load_explicit(&qword_2A153ECD8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECD8))
    {
      v3 = operator new(0x48uLL);
      v3[8] = 0;
      v3[7] = 0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      v3[6] = v3 + 7;
      qword_2A153ECD0 = v3;
      __cxa_guard_release(&qword_2A153ECD8);
    }
  }

  return qword_2A153ECD0;
}

void Alembic::Abc::v12::OObject::getArchive(Alembic::Abc::v12::OObject *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 8);
  v10 = this + 8;
  v11 = "OObject::getArchive()";
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 24))(&v8);
    v5 = *v3;
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    v6 = v9;
    *(a2 + 32) = v8;
    *(a2 + 40) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v9;
      *a2 = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v5;
    }
  }

  else
  {
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

void Alembic::Abc::v12::OObject::getParent(Alembic::Abc::v12::OObject *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 8);
  v11 = this + 8;
  v12 = "OObject::getParent()";
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 32))(&v9);
    v5 = *v3;
    v8[0] = 1;
    v8[2] = v5;
    v7[0] = 0;
    v7[2] = 0;
    v6[0] = 0;
    v6[2] = 0;
    sub_29A0337F8(a2, &v9, v8, v7, v6);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D638;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t Alembic::Abc::v12::OObject::getNumChildren(Alembic::Abc::v12::OObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 48))(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t Alembic::Abc::v12::OObject::getChildHeader(Alembic::Abc::v12::OObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 56))(v1);
  }

  if ((atomic_load_explicit(&qword_2A153ECE8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECE8))
    {
      v3 = operator new(0x48uLL);
      v3[8] = 0;
      v3[7] = 0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      v3[6] = v3 + 7;
      qword_2A153ECE0 = v3;
      __cxa_guard_release(&qword_2A153ECE8);
    }
  }

  return qword_2A153ECE0;
}

uint64_t Alembic::Abc::v12::OObject::getChildHeader(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(*v1 + 64))(v1);
  }

  else
  {
    return 0;
  }
}

void Alembic::Abc::v12::OObject::getChild(Alembic::Abc::v12::OObject *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 8);
  v13 = this + 8;
  v14 = "OObject::getChild( idx)";
  v4 = *(this + 5);
  if (v4)
  {
    Alembic::AbcCoreAbstract::v12::ObjectWriter::getChild(v4);
    v9 = v11;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *v3;
    v8[0] = 1;
    v8[2] = v5;
    v7[0] = 0;
    v7[2] = 0;
    v6[0] = 0;
    v6[2] = 0;
    sub_29A0337F8(a2, &v9, v8, v7, v6);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  else
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D638;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }
}

void Alembic::Abc::v12::OObject::getChild(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 8);
  v11 = a1 + 8;
  v12 = "OObject::getChild( name)";
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 72))(&v9);
    v5 = *v3;
    v8[0] = 1;
    v8[2] = v5;
    v7[0] = 0;
    v7[2] = 0;
    v6[0] = 0;
    v6[2] = 0;
    sub_29A0337F8(a2, &v9, v8, v7, v6);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D638;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }
}

void Alembic::Abc::v12::OObject::getProperties(Alembic::Abc::v12::OObject *this@<X0>, uint64_t a2@<X8>)
{
  v8 = this + 8;
  v9 = "OObject::getProperties()";
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 40))(&v6);
    v5[0] = 0;
    v5[2] = 0;
    v4[0] = 0;
    v4[2] = 0;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(a2, &v6, 0, v5, v4);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

uint64_t Alembic::Abc::v12::OObject::addChildInstance(Alembic::Abc::v12::OObject *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 39) < 0)
  {
    if (!*(a2 + 24))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a2 + 39))
  {
    return 0;
  }

LABEL_5:
  if (!*(a2 + 40) || !*(this + 5))
  {
    return 0;
  }

  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    return 0;
  }

  Alembic::Abc::v12::OObject::getArchive(this, &v50);
  Alembic::Abc::v12::OArchive::getName(&v50, &__dst);
  Alembic::Abc::v12::OObject::getArchive(a2, v55);
  Alembic::Abc::v12::OArchive::getName(v55, &v56);
  if (v59 >= 0)
  {
    v7 = HIBYTE(v59);
  }

  else
  {
    v7 = *(&__dst + 1);
  }

  v8 = HIBYTE(v57);
  v9 = SHIBYTE(v57);
  if (v57 < 0)
  {
    v8 = *(&v56 + 1);
  }

  if (v7 != v8)
  {
    v12 = 1;
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v57 >= 0)
  {
    v11 = &v56;
  }

  else
  {
    v11 = v56;
  }

  v12 = memcmp(p_dst, v11, v7) != 0;
  if (v9 < 0)
  {
LABEL_25:
    operator delete(v56);
  }

LABEL_26:
  Alembic::Abc::v12::OArchive::~OArchive(v55);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__dst);
  }

  Alembic::Abc::v12::OArchive::~OArchive(&v50);
  if (v12)
  {
    return 0;
  }

  Header = Alembic::Abc::v12::OObject::getHeader(a2);
  sub_29A008E78(v55, "isInstance");
  sub_29A02CFB4(Header + 48, &v55[0].__r_.__value_.__l.__data_, &v50);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v50.__r_.__value_.__l.__size_ == 1 && *v50.__r_.__value_.__l.__data_ == 49;
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  else
  {
    v14 = SHIBYTE(v50.__r_.__value_.__r.__words[2]) == 1 && v50.__r_.__value_.__s.__data_[0] == 49;
  }

  if (SHIBYTE(v55[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55[0].__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    return 0;
  }

  v17 = Alembic::Abc::v12::OObject::getHeader(a2);
  if (*(v17 + 47) < 0)
  {
    sub_29A008D14(&__dst, *(v17 + 24), *(v17 + 32));
  }

  else
  {
    __dst = *(v17 + 24);
    v59 = *(v17 + 40);
  }

  v18 = Alembic::Abc::v12::OObject::getHeader(this);
  v19 = v18;
  if (*(v18 + 47) >= 0)
  {
    v20 = *(v18 + 47);
  }

  else
  {
    v20 = *(v18 + 32);
  }

  v21 = &v50;
  sub_29A022DE0(&v50, v20 + 1);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v50.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if (*(v19 + 47) >= 0)
    {
      v22 = (v19 + 24);
    }

    else
    {
      v22 = *(v19 + 24);
    }

    memmove(v21, v22, v20);
  }

  *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
  v23 = *(a3 + 23);
  if (v23 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v23 >= 0)
  {
    v25 = *(a3 + 23);
  }

  else
  {
    v25 = *(a3 + 8);
  }

  v26 = std::string::append(&v50, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v57 = v26->__r_.__value_.__r.__words[2];
  v56 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v59 >= 0)
  {
    v28 = HIBYTE(v59);
  }

  else
  {
    v28 = *(&__dst + 1);
  }

  v29 = v53;
  sub_29A022DE0(v53, v28 + 1);
  if ((v54 & 0x80u) != 0)
  {
    v29 = v53[0];
  }

  if (v28)
  {
    if (v59 >= 0)
    {
      v30 = &__dst;
    }

    else
    {
      v30 = __dst;
    }

    memmove(v29, v30, v28);
  }

  *(v29 + v28) = 47;
  v31 = HIBYTE(v57);
  if (v57 >= 0)
  {
    v32 = &v56;
  }

  else
  {
    v32 = v56;
  }

  if (v57 < 0)
  {
    v31 = *(&v56 + 1);
  }

  if ((v54 & 0x80u) == 0)
  {
    v33 = v53;
  }

  else
  {
    v33 = v53[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v34 = v54;
  }

  else
  {
    v34 = v53[1];
  }

  if (v34)
  {
    if (v31 >= v34)
    {
      v35 = &v32[v31];
      v36 = *v33;
      v37 = v32;
      do
      {
        v38 = v31 - v34;
        if (v38 == -1)
        {
          break;
        }

        v39 = memchr(v37, v36, v38 + 1);
        if (!v39)
        {
          break;
        }

        v40 = v39;
        if (!memcmp(v39, v33, v34))
        {
          if (v40 == v35 || v40 != v32)
          {
            break;
          }

          goto LABEL_101;
        }

        v37 = v40 + 1;
        v31 = v35 - (v40 + 1);
      }

      while (v31 >= v34);
    }

    v52[2] = (this + 8);
    v52[3] = "OObject::addChildInstance()";
    v52[0] = 0;
    v52[1] = 0;
    v51 = v52;
    sub_29A008E78(&v50, "isInstance");
    sub_29A008E78(v55, "1");
    sub_29A036D0C(&v51, &v50, v55);
    if (SHIBYTE(v55[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    sub_29A036D58(v49, this);
    LODWORD(v55[0].__r_.__value_.__l.__data_) = 3;
    v55[0].__r_.__value_.__l.__size_ = &v51;
    LODWORD(__p) = 0;
    v44 = 0;
    v47 = 0;
    v48 = 0;
    Alembic::Abc::v12::OObject::OObject(&v50, v49, a3, v55, &__p, &v47);
    Alembic::Abc::v12::OObject::~OObject(v49);
    Alembic::Abc::v12::OObject::getProperties(&v50, v46);
    sub_29A008E78(&__p, ".instanceSource");
    v47 = 0;
    v48 = 0;
    v42[0] = 0;
    v42[2] = 0;
    v41[0] = 0;
    v41[2] = 0;
    sub_29A0371E8(v55, v46, &__p, &v47, v42, v41);
    if (v45 < 0)
    {
      operator delete(__p);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v46);
    Alembic::Abc::v12::OScalarProperty::set(v55, &__dst);
    Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v55);
    Alembic::Abc::v12::OObject::~OObject(&v50);
    sub_29A01752C(&v51, v52[0]);
    v15 = 1;
  }

  else
  {
LABEL_101:
    v15 = 0;
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__dst);
  }

  return v15;
}

void sub_29A036B50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, void *a46)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v46 - 192));
  Alembic::Abc::v12::OObject::~OObject(&a35);
  sub_29A01752C(&a45, a46);
  v49 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v46 - 232, v49);
  }

  else
  {
    sub_29A02D6F8(v46 - 232, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A036B18);
}

void sub_29A036C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 193) < 0)
  {
    operator delete(*(v37 - 216));
  }

  if (*(v37 - 121) < 0)
  {
    operator delete(*(v37 - 144));
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A036D0C(uint64_t **a1, __int128 *a2, const std::string *a3)
{
  v6 = a2;
  v4 = sub_29A00B038(a1, a2, &unk_29B431ED6, &v6);
  return std::string::operator=((v4 + 7), a3);
}

uint64_t sub_29A036D58(uint64_t a1, uint64_t a2)
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

  *a1 = &unk_2A203D638;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void Alembic::Abc::v12::OObject::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 40);
  v15 = *(a2 + 32);
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v13) = 0;
  LODWORD(v14) = 0;
  *(a1 + 8) = sub_29A036F70(&v15, a3, a4, a5, &v13);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v13 = a1 + 8;
  v14 = "OObject::init( OArchive)";
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 32))(&v12);
  v10 = v12;
  v12 = 0uLL;
  v11 = *(a1 + 48);
  *(a1 + 40) = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v12 + 1))
    {
      sub_29A014BEC(*(&v12 + 1));
    }
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A036EE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v15 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v16 = v15;
    sub_29A0370A8(v11);
    sub_29A02D768(&a11, v16);
  }

  else
  {
    sub_29A0370A8(v11);
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A036ECCLL);
}

uint64_t sub_29A036F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 2;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void sub_29A037074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

void sub_29A0370A8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  JUMPOUT(0x29C2C1A60);
}

uint64_t sub_29A0370F4(uint64_t a1)
{
  sub_29A01752C(a1 + 48, *(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A037144(void *__dst, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_29A008E78(__dst + 3, "");
  sub_29A019350(__dst + 6, a3);
  return __dst;
}

void sub_29A0371B4(_Unwind_Exception *exception_object)
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

uint64_t sub_29A0371E8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_29A0372C4(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0372A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A0372C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v24[34] = "OTypedScalarProperty::init()";
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
  LODWORD(__p[0]) = 12;
  (*(*v14 + 96))(v21);
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

void sub_29A0375A8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A0374F4);
}

uint64_t Alembic::Abc::v12::OScalarProperty::OScalarProperty(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v16 = *a2;
  v17 = a2[1];
  v19[0] = v16;
  v19[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OScalarProperty::init(a1, v19, a3, a4, a5, a6, a7, a8);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A037790(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OScalarProperty::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v22 = 2;
  sub_29A019350(v23, &v20);
  v25 = 0;
  v24 = 0u;
  v26 = 1;
  sub_29A01752C(&v20, v21[0]);
  sub_29A02E010(a5, &v22);
  sub_29A02E010(a6, &v22);
  sub_29A02E010(a7, &v22);
  sub_29A02E010(a8, &v22);
  *a1 = v22;
  v20 = a1;
  v21[0] = "OScalarProperty::init(p, n)";
  v14 = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    (*(**a2 + 24))(&v17);
    (*(*v17 + 24))(&v19);
    (*(*v19 + 48))(v19, v14);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  (*(**a2 + 96))(&v19);
  v15 = v19;
  v19 = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  sub_29A01752C(v23, v23[1]);
}

void sub_29A0379EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v19 = v18;
    sub_29A02F0A0(v14);
    sub_29A02D768(&a14, v19);
  }

  else
  {
    sub_29A02F0A0(v14);
    sub_29A02D6F8(&a14, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0379B4);
}

void sub_29A037A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A02E0BC(va);
  _Unwind_Resume(a1);
}

uint64_t Alembic::Abc::v12::OScalarProperty::OScalarProperty(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = *(a2 + 5);
  v18[0] = *(a2 + 4);
  v18[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  v17[0] = 1;
  v17[2] = v15;
  Alembic::Abc::v12::OScalarProperty::init(a1, v18, a3, a4, v17, a5, a6, a7);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29A037B9C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::OScalarProperty::~OScalarProperty(Alembic::Abc::v12::OScalarProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_29A037C5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A037C4CLL);
}

void sub_29A037D0C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A037CFCLL);
}

void sub_29A037DB8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A037DA8);
}

void sub_29A037E64(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A037E54);
}

uint64_t Alembic::Abc::v12::OScalarProperty::setTimeSampling(uint64_t a1, void *a2)
{
  v12 = a1;
  v13 = "OScalarProperty::setTimeSampling()";
  (*(**(a1 + 32) + 32))(&v6);
  (*(*v6 + 24))(&v8);
  (*(*v8 + 24))(&v10);
  v4 = (*(*v10 + 48))(v10, *a2);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return (*(**(a1 + 32) + 88))(*(a1 + 32), v4);
}

void sub_29A037FF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v14 - 32, v16);
  }

  else
  {
    sub_29A02D6F8(v14 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A037FE4);
}

void Alembic::Abc::v12::OScalarProperty::getParent(Alembic::Abc::v12::OScalarProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "OScalarProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A038140(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A03812CLL);
}

void Alembic::Abc::v12::SetReference(uint64_t **a1)
{
  sub_29A008E78(v4, "reference");
  sub_29A008E78(&__p, "1");
  v6 = v4;
  v2 = sub_29A00B038(a1, v4, &unk_29B431ED7, &v6);
  std::string::operator=((v2 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_29A038268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Alembic::Abc::v12::isReference(uint64_t a1)
{
  sub_29A008E78(__p, "reference");
  sub_29A02CFB4(a1 + 32, __p, v6);
  if (v7 < 0)
  {
    v2 = v6[1] == 1 && *v6[0] == 49;
    operator delete(v6[0]);
  }

  else
  {
    v2 = v7 == 1 && LOBYTE(v6[0]) == 49;
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A038344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Abc::v12::SetSourceName(uint64_t **a1, const std::string *a2)
{
  sub_29A008E78(__p, "sourceName");
  v7 = __p;
  v4 = sub_29A00B038(a1, __p, &unk_29B431ED8, &v7);
  std::string::operator=((v4 + 7), a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0383E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Abc::v12::GetSourceName(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A008E78(__p, "sourceName");
  sub_29A02CFB4(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A03845C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcCoreFactory::v12::IFactory::IFactory(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = 1;
  *(this + 8) = 1;
  *(this + 16) = 1;
  *(this + 40) = 2;
  return this;
}

{
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = 1;
  *(this + 8) = 1;
  *(this + 16) = 1;
  *(this + 40) = 2;
  return this;
}

void Alembic::AbcCoreFactory::v12::IFactory::~IFactory(Alembic::AbcCoreFactory::v12::IFactory *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

{
  v1 = *(this + 4);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

void Alembic::AbcCoreFactory::v12::IFactory::getArchive(uint64_t a1@<X0>, __int128 *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  Alembic::AbcCoreOgawa::v12::ReadArchive::ReadArchive(&v23, *(a1 + 8), *(a1 + 16) == 1);
  v13 = v23;
  v14 = v24;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_29A0292DC(&__p, v25, v26, (v26 - v25) >> 3);
  v8 = *(a1 + 32);
  v11 = *(a1 + 24);
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A038BD8(&v18, &v13, a2, 0, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    if (!HIBYTE(v20))
    {
      v9 = v21;
      if (v21)
      {
        *a3 = 1;
        v18 = *(a1 + 40);
        *a4 = v18;
        *(a4 + 8) = *__src;
        *(a4 + 24) = v20;
        goto LABEL_14;
      }
    }

LABEL_16:
    *a3 = 3;
    *a4 = 2;
    sub_29A008E78((a4 + 8), "");
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    goto LABEL_17;
  }

  if (__src[1] || !v21)
  {
    goto LABEL_16;
  }

  *a3 = 1;
  v18 = *(a1 + 40);
  *a4 = v18;
  sub_29A008D14((a4 + 8), __src[0], 0);
  v9 = v21;
LABEL_14:
  v10 = v22;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_17:
  Alembic::Abc::v12::IArchive::~IArchive(&v18);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_29A0386B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  Alembic::Abc::v12::IArchive::~IArchive(&a16);
  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcCoreFactory::v12::IFactory::getArchive(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  Alembic::AbcCoreLayer::v12::ReadArchive::ReadArchive(&v27);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = *a2;
  if (*a2 == *(a2 + 8))
  {
    goto LABEL_22;
  }

  v23 = 0;
  do
  {
    Alembic::AbcCoreFactory::v12::IFactory::getArchive(a1, v8, &v23, v20);
    v10 = v21;
    v9 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v9);
      if (!v10)
      {
        goto LABEL_11;
      }

      v18 = v21;
      v19 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_11;
      }

      v18 = v21;
      v19 = 0;
    }

    sub_29A01729C(&v24, &v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

LABEL_11:
    Alembic::Abc::v12::IArchive::~IArchive(v20);
    v8 = (v8 + 24);
  }

  while (v8 != *(a2 + 8));
  v11 = v24;
  if (v25 - v24 == 16)
  {
    *a3 = v23;
    v13 = *v11;
    v12 = v11[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 40);
    *a4 = 2;
    sub_29A008E78((a4 + 8), "");
    *(a4 + 32) = v13;
    *(a4 + 40) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      *a4 = v14;
      v15 = v12;
      goto LABEL_26;
    }

    *a4 = v14;
    goto LABEL_27;
  }

  if (v24 == v25)
  {
LABEL_22:
    *a3 = 3;
    *a4 = 2;
    sub_29A008E78((a4 + 8), "");
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    goto LABEL_27;
  }

  Alembic::AbcCoreLayer::v12::ReadArchive::operator()(&v24, v20);
  *a3 = 2;
  v16 = v20[0];
  if (*(&v20[0] + 1))
  {
    atomic_fetch_add_explicit((*(&v20[0] + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 40);
  *a4 = 2;
  sub_29A008E78((a4 + 8), "");
  *(a4 + 32) = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    *a4 = v17;
    sub_29A014BEC(*(&v16 + 1));
  }

  else
  {
    *a4 = v17;
  }

  v15 = *(&v20[0] + 1);
  if (*(&v20[0] + 1))
  {
LABEL_26:
    sub_29A014BEC(v15);
  }

LABEL_27:
  *&v20[0] = &v24;
  sub_29A0176E4(v20);
}

{
  Alembic::AbcCoreOgawa::v12::ReadArchive::ReadArchive(&v25, a2);
  v15 = v25;
  v16 = v26;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_29A0292DC(&v17, v27, v28, (v28 - v27) >> 3);
  sub_29A008E78(__p, "");
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = *(a1 + 24);
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A038BD8(&v20, &v15, __p, v7, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    if (!HIBYTE(v22))
    {
      v9 = v23;
      if (v23)
      {
        *a3 = 1;
        *a4 = v20;
        *(a4 + 8) = *__src;
        *(a4 + 24) = v22;
        goto LABEL_16;
      }
    }

LABEL_18:
    *a3 = 3;
    *a4 = 2;
    sub_29A008E78((a4 + 8), "");
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    goto LABEL_19;
  }

  if (__src[1] || !v23)
  {
    goto LABEL_18;
  }

  *a3 = 1;
  *a4 = v20;
  sub_29A008D14((a4 + 8), __src[0], 0);
  v9 = v23;
LABEL_16:
  v10 = v24;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_19:
  Alembic::Abc::v12::IArchive::~IArchive(&v20);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_29A038960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  a12 = &a19;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void sub_29A038B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23)
{
  Alembic::Abc::v12::IArchive::~IArchive(&a23);
  v25 = *(v23 - 56);
  if (v25)
  {
    *(v23 - 48) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A038BD8(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = a4;
  v16 = a1;
  v17 = "IArchive::IArchive( iFileName)";
  v10 = *(a5 + 8);
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::AbcCoreOgawa::v12::ReadArchive::operator()(a2, a3, &v15);
  v11 = v15;
  v15 = 0uLL;
  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29A038CA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v17 = v16;
    sub_29A02F0A0(v13);
    sub_29A02D768(&a13, v17);
  }

  else
  {
    sub_29A02F0A0(v13);
    sub_29A02D6F8(&a13, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A038C8CLL);
}

void sub_29A038D08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A038D50(uint64_t a1, __int128 **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203D680;
  *(a1 + 24) = 0u;
  v42 = (a1 + 24);
  v40 = (a1 + 48);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  pthread_mutex_init((a1 + 88), 0);
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  v3 = (a1 + 200);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = -1;
  v4 = operator new(0x48uLL);
  v4[7] = 0;
  v4[8] = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = v4 + 7;
  sub_29A0392CC((a1 + 200), v4);
  sub_29A039314(v40, a2[1] - *a2);
  v5 = a2;
  v6 = a2[1];
LABEL_2:
  v7 = *v5;
  while (v6 != v7)
  {
    if (*(v6-- - 2))
    {
      sub_29A017F80(v40, v6);
      if ((*(a1 + 47) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 32))
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!*(a1 + 47))
        {
          goto LABEL_10;
        }

LABEL_9:
        std::string::append(v42, ",");
      }

LABEL_10:
      v9 = (*(**v6 + 16))();
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      std::string::append(v42, v11, v12);
      v13 = (*(**v6 + 72))();
      if (v13)
      {
        v14 = 0;
        v43 = v13;
        do
        {
          v15 = v3;
          v16 = *(a1 + 160);
          if (v16 == *(a1 + 152))
          {
            v17 = 0;
            v21 = *(a1 + 160);
          }

          else
          {
            v17 = 0;
            v18 = 1;
            v16 = *(a1 + 152);
            do
            {
              (*(**v6 + 56))(&__str);
              v19 = *(v16 + 16 * v17);
              v20 = __str.__r_.__value_.__r.__words[0];
              if (__str.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__str.__r_.__value_.__l.__size_);
              }

              v16 = *(a1 + 152);
              v21 = *(a1 + 160);
              if (v19 == v20)
              {
                break;
              }

              v17 = v18++;
            }

            while (v17 < (v21 - v16) >> 4);
          }

          if (v17 == (v21 - v16) >> 4)
          {
            (*(**v6 + 56))(&__str);
            sub_29A01729C((a1 + 152), &__str);
            v3 = v15;
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(__str.__r_.__value_.__l.__size_);
            }

            __str.__r_.__value_.__r.__words[0] = (*(**v6 + 64))(*v6, v14);
            sub_29A018094((a1 + 176), &__str);
          }

          else
          {
            v22 = *(a1 + 176);
            v23 = (*(**v6 + 64))(*v6, v14);
            v24 = *(v22 + 8 * v17);
            if (v24 <= v23)
            {
              v24 = v23;
            }

            *(*(a1 + 176) + 8 * v17) = v24;
            v3 = v15;
          }

          v14 = (v14 + 1);
        }

        while (v14 != v43);
      }

      v25 = (*(**v6 + 24))();
      v26 = v25 + 1;
      v27 = *v25;
      if (*v25 != v25 + 1)
      {
        do
        {
          sub_29A02CFB4(*v3 + 48, v27 + 4, &__str);
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::append(&__str, " , ");
          }

          v29 = *(v27 + 79);
          if (v29 >= 0)
          {
            v30 = (v27 + 7);
          }

          else
          {
            v30 = v27[7];
          }

          if (v29 >= 0)
          {
            v31 = *(v27 + 79);
          }

          else
          {
            v31 = v27[8];
          }

          std::string::append(&__str, v30, v31);
          v32 = *v3;
          v45 = (v27 + 4);
          v33 = sub_29A00B038((v32 + 48), v27 + 4, &unk_29B431F44, &v45);
          std::string::operator=((v33 + 7), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v34 = v27[1];
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v27[2];
              v36 = *v35 == v27;
              v27 = v35;
            }

            while (!v36);
          }

          v27 = v35;
        }

        while (v35 != v26);
      }

      v37 = (*(**v6 + 80))();
      v38 = *(a1 + 216);
      if (v38 <= v37)
      {
        v38 = v37;
      }

      *(a1 + 216) = v38;
      v5 = a2;
      goto LABEL_2;
    }
  }

  return a1;
}

void sub_29A0391F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void **a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *(v19 + 80);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  __p = a10;
  sub_29A0176E4(&__p);
  if (*(v19 + 47) < 0)
  {
    operator delete(*a12);
  }

  v22 = *(v19 + 16);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  Alembic::AbcCoreAbstract::v12::ArchiveReader::~ArchiveReader(v19);
  _Unwind_Resume(a1);
}

void sub_29A0392CC(void *a1, uint64_t a2)
{
  sub_29A017588(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void **sub_29A039314(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v7 = &v4[16 * v6];
    v8 = v2[1] - *v2;
    v9 = &v4[v3 - v8];
    memcpy(v9, *v2, v8);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return sub_29A017C0C(v12);
  }

  return result;
}

void sub_29A0393B4(uint64_t a1)
{
  *a1 = &unk_2A203D680;
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 152);
  sub_29A0176E4(&v6);
  pthread_mutex_destroy((a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v6 = (a1 + 48);
  sub_29A0176E4(&v6);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  Alembic::AbcCoreAbstract::v12::ArchiveReader::~ArchiveReader(a1);
}

void sub_29A039474(uint64_t a1)
{
  sub_29A0393B4(a1);

  operator delete(v1);
}

uint64_t sub_29A0394B0@<X0>(uint64_t a1@<X0>, void ***a2@<X8>)
{
  pthread_mutex_lock((a1 + 88));
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    a2[1] = &v5->__vftable;
    if (v5)
    {
      v6 = *(a1 + 72);
      *a2 = v6;
      if (v6)
      {
        return pthread_mutex_unlock((a1 + 88));
      }
    }
  }

  else
  {
    v5 = 0;
  }

  memset(v20, 0, sizeof(v20));
  sub_29A039314(v20, (*(a1 + 56) - *(a1 + 48)) >> 4);
  for (i = *(a1 + 48); i != *(a1 + 56); i += 16)
  {
    (*(**i + 32))(&v18);
    sub_29A01729C(v20, &v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  v8 = operator new(0x118uLL);
  sub_29A014C58(&v16, (a1 + 8));
  v9 = *(a1 + 208);
  v14 = *(a1 + 200);
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A03BEE8(v8, &v16, v20, &v14);
  sub_29A0397BC(&v18, v8);
  v11 = v18;
  v10 = v19;
  v18 = 0;
  v19 = 0;
  *a2 = v11;
  a2[1] = &v10->__vftable;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 80);
  *(a1 + 72) = v11;
  *(a1 + 80) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v18 = v20;
  sub_29A0176E4(&v18);
  return pthread_mutex_unlock((a1 + 88));
}

void sub_29A039668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char a16)
{
  operator delete(v18);
  a14 = &a16;
  sub_29A0176E4(&a14);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  pthread_mutex_unlock((v16 + 88));
  _Unwind_Resume(a1);
}

uint64_t sub_29A0396F8@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 152);
  if (a2 >= ((*(result + 160) - v3) >> 4))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v4 = *(v3 + 16 * a2);
    *a3 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

double sub_29A039734@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29A039774(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 176);
  if (a2 >= ((*(a1 + 184) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t *sub_29A0397BC(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D738;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A03982C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2844C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A039848(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A039870(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A0398A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D788))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A0398E0(unint64_t a1, uint64_t *a2, __int128 **a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203D7B0;
  v5 = *a2;
  *(a1 + 24) = *a2;
  v6 = a2[1];
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 24);
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  if (!v5)
  {
    sub_29A008864(&__p);
    sub_29A00911C(&v16, "Invalid object in CprImpl(Object)", 33);
    std::stringbuf::str();
    sub_29A008C60(v14, &v12);
    if (v13 < 0)
    {
      operator delete(v12);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(exception, v14);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  __p = 0uLL;
  v16 = 0;
  v7 = operator new(0x50uLL);
  v8 = (*(*v5 + 16))(v5);
  sub_29A01CDF8(v7, &__p, (v8 + 48));
  sub_29A039B44((a1 + 64), v7);
  sub_29A039B8C(a1, a3);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A039A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  sub_29A019EE8(v22, *(v21 + 136));
  v24 = *(v21 + 104);
  if (v24)
  {
    *(v21 + 112) = v24;
    operator delete(v24);
  }

  __p = (v22 - 48);
  sub_29A03AA70(&__p);
  v25 = *(v21 + 72);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v21 + 48);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v21 + 32);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v28 = *(v21 + 16);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(v21);
  _Unwind_Resume(a1);
}

void sub_29A039B44(void *a1, uint64_t a2)
{
  sub_29A03AAE4(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

unint64_t sub_29A039B8C(unint64_t result, __int128 **a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v3 = result;
    v4 = (result + 136);
    do
    {
      result = (*(**v2 + 64))();
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          v6 = (*(**v2 + 72))(*v2, i);
          sub_29A008E78(__p, "prune");
          sub_29A02CFB4(v6 + 32, __p, &v36);
          if (v37 < 0)
          {
            v7 = *(&v36 + 1) == 1 && *v36 == 49;
            operator delete(v36);
          }

          else
          {
            v7 = v37 == 1 && v36 == 49;
          }

          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008E78(__p, "replace");
          sub_29A02CFB4(v6 + 32, __p, &v36);
          if (v37 < 0)
          {
            v8 = *(&v36 + 1) == 1 && *v36 == 49;
            operator delete(v36);
          }

          else
          {
            v8 = v37 == 1 && v36 == 49;
          }

          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = sub_29A01BCCC(v3 + 128, v6);
          if (v4 == v9)
          {
            if (!v7)
            {
              v24 = *(v3 + 144);
              *&v36 = v6;
              sub_29A01BB28((v3 + 128), v6, &unk_29B432366, &v36)[7] = v24;
              sub_29A03A8F0(v3 + 80, v24 + 1);
              sub_29A017F80((*(v3 + 80) + 24 * v24), v2);
              *&v36 = 0;
              *(&v36 + 1) = i;
              sub_29A03A998(v3 + 104, &v36);
            }
          }

          else
          {
            v10 = v9;
            if (v7)
            {
              v11 = *(v9 + 56);
              sub_29A03AEF0(&v36, *(v3 + 80) + 24 * v11 + 24, *(v3 + 88), (*(v3 + 80) + 24 * v11));
              v13 = v12;
              v14 = *(v3 + 88);
              if (v14 != v12)
              {
                do
                {
                  v14 -= 24;
                  *&v36 = v14;
                  sub_29A0176E4(&v36);
                }

                while (v14 != v13);
              }

              *(v3 + 88) = v13;
              v15 = *(v3 + 112);
              v16 = *(v3 + 104) + 16 * v11;
              v17 = (v16 + 16);
              if ((v16 + 16) != v15)
              {
                do
                {
                  v18 = v17[1];
                  *(v17 - 2) = *v17;
                  *(v17 - 1) = v18;
                  v17 += 2;
                }

                while (v17 != v15);
                v16 = (v17 - 2);
              }

              *(v3 + 112) = v16;
              sub_29A03AFA4((v3 + 128), v10);
              v19 = *(v3 + 128);
              if (v19 != v4)
              {
                do
                {
                  v20 = v19[7];
                  if (v20 > v11)
                  {
                    v19[7] = v20 - 1;
                  }

                  v21 = v19[1];
                  if (v21)
                  {
                    do
                    {
                      v22 = v21;
                      v21 = *v21;
                    }

                    while (v21);
                  }

                  else
                  {
                    do
                    {
                      v22 = v19[2];
                      v23 = *v22 == v19;
                      v19 = v22;
                    }

                    while (!v23);
                  }

                  v19 = v22;
                }

                while (v22 != v4);
              }
            }

            else if (*(v6 + 24) || (v25 = *(v9 + 56), v26 = 24 * v25, v27 = (*(v3 + 104) + 16 * v25), v28 = *(*(*(v3 + 80) + v26) + 16 * *v27), *((*(*v28 + 72))(v28, v27[1]) + 24)))
            {
              v29 = *(v10 + 56);
              sub_29A017738((*(v3 + 80) + 24 * v29));
              sub_29A017F80((*(v3 + 80) + 24 * v29), v2);
              v30 = (*(v3 + 104) + 16 * v29);
              *v30 = 0;
              v30[1] = i;
            }

            else
            {
              v31 = *(v10 + 56);
              if (v8)
              {
                sub_29A017738((*(v3 + 80) + 24 * v31));
              }

              sub_29A017F80((*(v3 + 80) + 24 * v31), v2);
              if (*(v6 + 48))
              {
                v32 = (*(v3 + 104) + 16 * v31);
                *v32 = ((*(*(v3 + 80) + 24 * v31 + 8) - *(*(v3 + 80) + 24 * v31)) >> 4) - 1;
                v32[1] = i;
              }
            }
          }

          result = (*(**v2 + 64))();
        }
      }

      ++v2;
    }

    while (v2 != a2[1]);
  }

  return result;
}

void sub_29A039FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A03A000(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203D7B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *a2;
  *(a1 + 40) = *a2;
  v5 = a2[1];
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *(a1 + 40);
  }

  *(a1 + 80) = 0u;
  *(a1 + 56) = a3;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  if (!v4)
  {
    sub_29A008864(v19);
    sub_29A00911C(v20, "Invalid compound in CprImpl(CprImplPtr, size_t)", 47);
    std::stringbuf::str();
    sub_29A008C60(__p, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(exception, __p);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = (*(*(a1 + 40) + 80) + 24 * *(a1 + 56));
  v19[0] = 0;
  v19[1] = 0;
  v20[0] = 0;
  sub_29A039314(v19, (v9[1] - *v9) >> 4);
  v10 = (*(**(a1 + 40) + 72))(*(a1 + 40), *(a1 + 56));
  if (*(v10 + 23) < 0)
  {
    sub_29A008D14(__p, *v10, *(v10 + 8));
  }

  else
  {
    *__p = *v10;
    v18 = *(v10 + 16);
  }

  for (i = *v9; i != v9[1]; i += 16)
  {
    (*(**i + 104))(v15);
    sub_29A01729C(v19, v15);
    if (v15[1])
    {
      sub_29A014BEC(v15[1]);
    }
  }

  sub_29A039B8C(a1, v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v19;
  sub_29A0176E4(__p);
  return a1;
}

void sub_29A03A264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a21);
  sub_29A019EE8(v22, *(v21 + 136));
  v24 = *(v21 + 104);
  if (v24)
  {
    *(v21 + 112) = v24;
    operator delete(v24);
  }

  sub_29A03AA70(&a21);
  v25 = *(v21 + 72);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v21 + 48);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v21 + 32);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v28 = *(v21 + 16);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(v21);
  _Unwind_Resume(a1);
}

void sub_29A03A340(uint64_t a1)
{
  *a1 = &unk_2A203D7B0;
  sub_29A019EE8(a1 + 128, *(a1 + 136));
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 80);
  sub_29A03AA70(&v7);
  v3 = *(a1 + 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  Alembic::AbcCoreAbstract::v12::CompoundPropertyReader::~CompoundPropertyReader(a1);
}

void sub_29A03A3EC(uint64_t a1)
{
  sub_29A03A340(a1);

  operator delete(v1);
}

uint64_t sub_29A03A414(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return *(a1 + 64);
  }

  else
  {
    return (*(**(a1 + 40) + 72))(*(a1 + 40), *(a1 + 56));
  }
}

uint64_t sub_29A03A47C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_29A03A498@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29A03A4F4(void *a1, unint64_t a2)
{
  v2 = a1[10];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[11] - v2) >> 3) <= a2)
  {
    sub_29A008864(&v12);
    v6 = sub_29A00911C(v13, "Out of range index in CprImpl::getPropertyHeader: ", 50);
    MEMORY[0x29C2C1F00](v6, a2);
    std::stringbuf::str();
    sub_29A008C60(v11, &__p);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_29A008E1C(exception, v11);
    __cxa_throw(v8, &unk_2A203B108, sub_29A008B08);
  }

  v3 = *(**(*(v2 + 24 * a2) + 16 * *(a1[13] + 16 * a2)) + 72);

  return v3();
}

void sub_29A03A618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A03A640(uint64_t a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1 + 128, a2);
  if (a1 + 136 == v3)
  {
    return 0;
  }

  v4 = *(**(*(*(a1 + 80) + 24 * *(v3 + 56)) + 16 * *(*(a1 + 104) + 16 * *(v3 + 56))) + 72);

  return v4();
}

uint64_t sub_29A03A6DC@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = sub_29A01BCCC(a1 + 128, a2);
  if (a1 + 136 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(**(*(*(a1 + 80) + 24 * *(result + 56) + 8) - 16) + 88);
    v7 = result + 32;
    v8 = *(*(*(a1 + 80) + 24 * *(result + 56) + 8) - 16);

    return v6(v8, v7);
  }

  return result;
}

uint64_t sub_29A03A778@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = sub_29A01BCCC(a1 + 128, a2);
  if (a1 + 136 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(**(*(*(a1 + 80) + 24 * *(result + 56) + 8) - 16) + 96);
    v7 = result + 32;
    v8 = *(*(*(a1 + 80) + 24 * *(result + 56) + 8) - 16);

    return v6(v8, v7);
  }

  return result;
}

void sub_29A03A814(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A01BCCC(a1 + 128, a2);
  if (a1 + 136 == v5)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = v5;
    v7 = operator new(0x98uLL);
    sub_29A014C58(&v8, (a1 + 8));
    sub_29A03A000(v7, &v8, *(v6 + 56));
    sub_29A03ABD8(&v10, v7);
    *a3 = v10;
    v10 = 0uLL;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }
}

void sub_29A03A8F0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A03ACFC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_29A0176E4(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_29A03A998(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v13 = &v11[16 * v10];
    *v12 = *a2;
    v6 = v12 + 16;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_29A03AA70(void ***a1)
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
        sub_29A0176E4(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_29A03AAE4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D878;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A03AB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A01D0A0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A03AB68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A03AB98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D8C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A03ABD8(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D8F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A03AC48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B284568(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A03AC64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A03AC8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A03ACBC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D940))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A03ACFC(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v11);
      v5 += v11;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = a1[1] - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v15;
    v19 = a1[2];
    a1[2] = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_29A03AE68(v20);
  }
}

void **sub_29A03AE68(void **a1)
{
  sub_29A03AE9C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A03AE9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29A0176E4(&v5);
  }
}

uint64_t sub_29A03AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A03AF64(a4);
      *a4 = *v5;
      a4[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29A03AF64(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A017738(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_29A03AFA4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_29A03AFE8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_29A03B05C(v6, a2);
  return v3;
}

uint64_t *sub_29A03B05C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_29A03B3DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203D968;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = *a2;
  v6 = a2[1];
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a4;
  v7 = a4[1];
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  pthread_mutex_init((a1 + 152), 0);
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  if (!*(a1 + 48))
  {
    sub_29A008864(&v14);
    sub_29A00911C(v15, "Invalid archive in OrImpl(Archive)", 34);
    std::stringbuf::str();
    sub_29A008C60(v13, &__p);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_29A008E1C(exception, v13);
    __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A03B638(a1, a3);
  return a1;
}

void sub_29A03B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&a16);
  sub_29A019EE8(v17, *(v16 + 264));
  v20 = *(v16 + 248);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_29A0176E4(&a16);
  pthread_mutex_destroy((v18 + 72));
  sub_29A03CE88(&a16);
  a16 = (v18 + 24);
  sub_29A03CDC0(&a16);
  a16 = v18;
  sub_29A0176E4(&a16);
  v21 = *(v16 + 72);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v22 = *(v16 + 56);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v23 = *(v16 + 32);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v16 + 16);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(v16);
  _Unwind_Resume(a1);
}

void **sub_29A03B638(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  result = sub_29A039314((a1 + 216), (*(a2 + 8) - *a2) >> 4);
  v75 = a2;
  if (v4 != *(a2 + 8))
  {
    v6 = (a1 + 264);
    do
    {
      (*(**v4 + 40))(__dst);
      sub_29A01729C((a1 + 216), __dst);
      if (__dst[1])
      {
        sub_29A014BEC(__dst[1]);
      }

      result = (*(**v4 + 48))();
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          v8 = (*(**v4 + 56))(*v4, i);
          v9 = v8;
          if (*(v8 + 23) < 0)
          {
            sub_29A008D14(__dst, *v8, *(v8 + 8));
          }

          else
          {
            v10 = *v8;
            v79 = *(v8 + 16);
            *__dst = v10;
          }

          if (*(v9 + 47) < 0)
          {
            sub_29A008D14(&v80, *(v9 + 24), *(v9 + 32));
          }

          else
          {
            v11 = *(v9 + 24);
            v81 = *(v9 + 40);
            v80 = v11;
          }

          sub_29A019350(v82, (v9 + 48));
          sub_29A008E78(__p, "prune");
          sub_29A02CFB4(v82, __p, &v83);
          if (SHIBYTE(v84) < 0)
          {
            v12 = v84 == 1 && *v83 == 49;
            operator delete(v83);
          }

          else
          {
            v12 = SHIBYTE(v84) == 1 && v83 == 49;
          }

          if (v77 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008E78(__p, "replace");
          sub_29A02CFB4(v82, __p, &v83);
          if (SHIBYTE(v84) < 0)
          {
            v13 = v84 == 1 && *v83 == 49;
            operator delete(v83);
          }

          else
          {
            v13 = SHIBYTE(v84) == 1 && v83 == 49;
          }

          if (v77 < 0)
          {
            operator delete(__p[0]);
          }

          v14 = sub_29A01BCCC(a1 + 256, __dst);
          v15 = v14;
          if (v6 == v14)
          {
            if (!v12)
            {
              v20 = *(a1 + 272);
              v83 = __dst;
              sub_29A01BB28((a1 + 256), __dst, &unk_29B4323D2, &v83)[7] = v20;
              v21 = operator new(0x48uLL);
              v22 = v21;
              if (SHIBYTE(v79) < 0)
              {
                sub_29A008D14(v21, __dst[0], __dst[1]);
              }

              else
              {
                *v21 = *__dst;
                v21[2] = v79;
              }

              if (SHIBYTE(v81) < 0)
              {
                sub_29A008D14((v22 + 24), v80, *(&v80 + 1));
              }

              else
              {
                *(v22 + 24) = v80;
                *(v22 + 40) = v81;
              }

              sub_29A019350((v22 + 48), v82);
              sub_29A017588(__p, v22);
              sub_29A017F80((a1 + 80), __p);
              sub_29A03CB78(a1 + 104, v20 + 1);
              v39 = *(a1 + 104);
              v40 = *v4;
              v41 = v4[1];
              if (v41)
              {
                atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
              }

              v42 = v39 + 24 * v20;
              v44 = *(v42 + 8);
              v43 = *(v42 + 16);
              if (v44 >= v43)
              {
                v46 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v42) >> 3);
                v47 = v46 + 1;
                if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_29A00C9A4();
                }

                v48 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v42) >> 3);
                if (2 * v48 > v47)
                {
                  v47 = 2 * v48;
                }

                if (v48 >= 0x555555555555555)
                {
                  v49 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v49 = v47;
                }

                v86 = v42;
                if (v49)
                {
                  v50 = sub_29A012C48(v42, v49);
                }

                else
                {
                  v50 = 0;
                }

                v69 = &v50[24 * v46];
                v70 = &v50[24 * v49];
                *v69 = v40;
                *(v69 + 1) = v41;
                *(v69 + 2) = i;
                v45 = v69 + 24;
                v71 = *(v42 + 8) - *v42;
                v72 = &v69[-v71];
                memcpy(&v69[-v71], *v42, v71);
                v73 = *v42;
                *v42 = v72;
                *&v84 = v73;
                *(v42 + 8) = v45;
                *(&v84 + 1) = v73;
                v74 = *(v42 + 16);
                *(v42 + 16) = v70;
                v85 = v74;
                v83 = v73;
                sub_29A03D11C(&v83);
              }

              else
              {
                *v44 = v40;
                v44[1] = v41;
                v45 = v44 + 3;
                v44[2] = i;
              }

              *(v42 + 8) = v45;
              sub_29A03CC20(a1 + 128, v20 + 1);
              if (__p[1])
              {
                sub_29A014BEC(__p[1]);
              }
            }
          }

          else
          {
            v16 = *(v14 + 56);
            if (v12)
            {
              sub_29A03D338(&v83, *(a1 + 104) + 24 * v16 + 24, *(a1 + 112), (*(a1 + 104) + 24 * v16));
              v18 = v17;
              v19 = *(a1 + 112);
              while (v19 != v18)
              {
                v19 -= 3;
                v83 = v19;
                sub_29A03CE34(&v83);
              }

              *(a1 + 112) = v18;
              sub_29A03D3EC(&v83, (*(a1 + 128) + 16 * v16 + 16), *(a1 + 136), *(a1 + 128) + 16 * v16);
              v27 = v26;
              for (j = *(a1 + 136); j != v27; j -= 16)
              {
                v29 = *(j - 8);
                if (v29)
                {
                  std::__shared_weak_count::__release_weak(v29);
                }
              }

              *(a1 + 136) = v27;
              sub_29A03D458(&v83, (*(a1 + 80) + 16 * v16 + 16), *(a1 + 88), *(a1 + 80) + 16 * v16);
              v31 = v30;
              for (k = *(a1 + 88); k != v31; k -= 16)
              {
                v33 = *(k - 8);
                if (v33)
                {
                  sub_29A014BEC(v33);
                }
              }

              *(a1 + 88) = v31;
              sub_29A03AFA4((a1 + 256), v15);
              v34 = *(a1 + 256);
              if (v34 != v6)
              {
                do
                {
                  v35 = v34[7];
                  if (v35 > v16)
                  {
                    v34[7] = v35 - 1;
                  }

                  v36 = v34[1];
                  if (v36)
                  {
                    do
                    {
                      v37 = v36;
                      v36 = *v36;
                    }

                    while (v36);
                  }

                  else
                  {
                    do
                    {
                      v37 = v34[2];
                      v38 = *v37 == v34;
                      v34 = v37;
                    }

                    while (!v38);
                  }

                  v34 = v37;
                }

                while (v37 != v6);
              }
            }

            else
            {
              v23 = 16 * v16;
              if (v13)
              {
                sub_29A03CCB0((*(a1 + 104) + 24 * v16));
                v84 = 0uLL;
                v83 = &v84;
                v24 = (*(*(a1 + 80) + 16 * v16) + 48);
                if (v24 == &v83)
                {
                  v25 = 0;
                }

                else
                {
                  sub_29A028554(v24, &v84, &v84);
                  v25 = v84;
                }

                sub_29A01752C(&v83, v25);
              }

              v51 = *(a1 + 104);
              v52 = *v4;
              v53 = v4[1];
              if (v53)
              {
                atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
              }

              v54 = v51 + 24 * v16;
              v56 = *(v54 + 8);
              v55 = *(v54 + 16);
              if (v56 >= v55)
              {
                v58 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v54) >> 3);
                v59 = v58 + 1;
                if (v58 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_29A00C9A4();
                }

                v60 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *v54) >> 3);
                if (2 * v60 > v59)
                {
                  v59 = 2 * v60;
                }

                if (v60 >= 0x555555555555555)
                {
                  v61 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v61 = v59;
                }

                v86 = v54;
                if (v61)
                {
                  v62 = sub_29A012C48(v54, v61);
                }

                else
                {
                  v62 = 0;
                }

                v63 = &v62[24 * v58];
                v64 = &v62[24 * v61];
                *v63 = v52;
                *(v63 + 1) = v53;
                *(v63 + 2) = i;
                v57 = v63 + 24;
                v65 = *(v54 + 8) - *v54;
                v66 = &v63[-v65];
                memcpy(&v63[-v65], *v54, v65);
                v67 = *v54;
                *v54 = v66;
                *&v84 = v67;
                *(v54 + 8) = v57;
                *(&v84 + 1) = v67;
                v68 = *(v54 + 16);
                *(v54 + 16) = v64;
                v85 = v68;
                v83 = v67;
                sub_29A03D11C(&v83);
              }

              else
              {
                *v56 = v52;
                v56[1] = v53;
                v57 = v56 + 3;
                v56[2] = i;
              }

              *(v54 + 8) = v57;
              sub_29A03CCFC(*(*(a1 + 80) + v23) + 48, v82);
            }
          }

          sub_29A01752C(v82, v82[1]);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80);
          }

          if (SHIBYTE(v79) < 0)
          {
            operator delete(__dst[0]);
          }

          result = (*(**v4 + 48))();
        }
      }

      v4 += 2;
    }

    while (v4 != *(v75 + 8));
  }

  return result;
}

void sub_29A03BDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35)
{
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03BEEC(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203D968;
  *(a1 + 24) = *a2;
  v4 = a2[1];
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  pthread_mutex_init((a1 + 152), 0);
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_29A008864(v22);
    sub_29A00911C(v23, "Invalid object in OrImpl(OrImplPtr, size_t)", 43);
    std::stringbuf::str();
    sub_29A008C60(&v20, &__p);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, &v20);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  v7 = *(v5 + 48);
  v6 = *(v5 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(a1 + 40);
  v10 = *(*(*(a1 + 24) + 80) + 16 * v9);
  v11 = *(*(*(a1 + 24) + 80) + 16 * v9 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 72);
  *(a1 + 64) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = (*(*(a1 + 24) + 104) + 24 * *(a1 + 40));
  v22[0] = 0;
  v22[1] = 0;
  v23[0] = 0;
  sub_29A039314(v22, 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3));
  for (i = *v13; i != v13[1]; i += 24)
  {
    (*(**i + 80))(&v20);
    sub_29A01729C(v22, &v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  sub_29A03B638(a1, v22);
  v20 = v22;
  sub_29A0176E4(&v20);
  return a1;
}

void sub_29A03C15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&a16);
  sub_29A019EE8(v17, *(v16 + 264));
  v20 = *(v16 + 248);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_29A0176E4(&a16);
  pthread_mutex_destroy((v18 + 72));
  sub_29A03CE88(&a16);
  a16 = (v18 + 24);
  sub_29A03CDC0(&a16);
  a16 = v18;
  sub_29A0176E4(&a16);
  v21 = *(v16 + 72);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v22 = *(v16 + 56);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v23 = *(v16 + 32);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v16 + 16);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(v16);
  _Unwind_Resume(a1);
}

void sub_29A03C258(uint64_t a1)
{
  *a1 = &unk_2A203D968;
  sub_29A019EE8(a1 + 256, *(a1 + 264));
  v2 = *(a1 + 248);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v7 = (a1 + 216);
  sub_29A0176E4(&v7);
  pthread_mutex_destroy((a1 + 152));
  v7 = (a1 + 128);
  sub_29A03CE88(&v7);
  v7 = (a1 + 104);
  sub_29A03CDC0(&v7);
  v7 = (a1 + 80);
  sub_29A0176E4(&v7);
  v3 = *(a1 + 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  Alembic::AbcCoreAbstract::v12::ObjectReader::~ObjectReader(a1);
}

void sub_29A03C33C(uint64_t a1)
{
  sub_29A03C258(a1);

  operator delete(v1);
}

uint64_t sub_29A03C36C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A03C388@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A03C3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  pthread_mutex_lock((a1 + 152));
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 248);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    a2[1] = v5;
    if (v5)
    {
      v6 = *(a1 + 240);
      *a2 = v6;
      if (v6)
      {
        return pthread_mutex_unlock((a1 + 152));
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = operator new(0x98uLL);
  sub_29A014C58(&v12, (a1 + 8));
  sub_29A039FFC(v7, &v12, (a1 + 216));
  sub_29A03ABD8(&v14, v7);
  v9 = v14;
  v8 = v15;
  v14 = 0;
  v15 = 0;
  *a2 = v9;
  a2[1] = v8;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 248);
  *(a1 + 240) = v9;
  *(a1 + 248) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return pthread_mutex_unlock((a1 + 152));
}

void sub_29A03C4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  pthread_mutex_unlock((v10 + 152));
  _Unwind_Resume(a1);
}

uint64_t sub_29A03C514(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  if (a2 >= (*(a1 + 88) - v2) >> 4)
  {
    sub_29A008864(&v11);
    v5 = sub_29A00911C(v12, "Out of range index in OrData::getChildHeader: ", 46);
    MEMORY[0x29C2C1F00](v5, a2);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  return *(v2 + 16 * a2);
}

void sub_29A03C5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A03C608(uint64_t a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1 + 256, a2);
  if (a1 + 264 == v3)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 80) + 16 * *(v3 + 56));
  }
}

uint64_t sub_29A03C654@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29A01BCCC(a1 + 256, a2);
  if (a1 + 264 == result)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v6 = result;
  pthread_mutex_lock((a1 + 152));
  v7 = (*(a1 + 128) + 16 * *(v6 + 56));
  *a3 = 0;
  a3[1] = 0;
  v8 = v7[1];
  if (!v8)
  {
    v9 = 0;
LABEL_8:
    v11 = operator new(0x118uLL);
    sub_29A014C58(&v16, (a1 + 8));
    sub_29A03BEEC(v11, &v16, *(v6 + 56));
    sub_29A0397BC(&v18, v11);
    v13 = v18;
    v12 = v19;
    v18 = 0;
    v19 = 0;
    *a3 = v13;
    a3[1] = v12;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (v19)
      {
        sub_29A014BEC(v19);
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v14 = (*(a1 + 128) + 16 * *(v6 + 56));
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v14[1];
    *v14 = v13;
    v14[1] = v12;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    return pthread_mutex_unlock((a1 + 152));
  }

  v9 = std::__shared_weak_count::lock(v8);
  a3[1] = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *v7;
  *a3 = *v7;
  if (!v10)
  {
    goto LABEL_8;
  }

  return pthread_mutex_unlock((a1 + 152));
}

void sub_29A03C794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  pthread_mutex_unlock((v10 + 152));
  _Unwind_Resume(a1);
}

uint64_t sub_29A03C7EC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 >= (*(result + 88) - *(result + 80)) >> 4)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v5 = result;
  pthread_mutex_lock((result + 152));
  v6 = (*(v5 + 128) + 16 * a2);
  *a3 = 0;
  a3[1] = 0;
  v7 = v6[1];
  if (!v7)
  {
    v8 = 0;
LABEL_8:
    v10 = operator new(0x118uLL);
    sub_29A014C58(&v15, (v5 + 8));
    sub_29A03BEEC(v10, &v15, a2);
    sub_29A0397BC(&v17, v10);
    v12 = v17;
    v11 = v18;
    v17 = 0;
    v18 = 0;
    *a3 = v12;
    a3[1] = v11;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (v18)
      {
        sub_29A014BEC(v18);
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v13 = (*(v5 + 128) + 16 * a2);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v13[1];
    *v13 = v12;
    v13[1] = v11;
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    return pthread_mutex_unlock((v5 + 152));
  }

  v8 = std::__shared_weak_count::lock(v7);
  a3[1] = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *v6;
  *a3 = *v6;
  if (!v9)
  {
    goto LABEL_8;
  }

  return pthread_mutex_unlock((v5 + 152));
}

void sub_29A03C920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  pthread_mutex_unlock((v10 + 152));
  _Unwind_Resume(a1);
}

double sub_29A03C978@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_29A03C9B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = (*(v2 + 104) + 24 * *(a1 + 40));
  v3 = *v4;
  if (v4[1] - *v4 != 24)
  {
    return 0;
  }

  (*(**v3 + 80))(&v8);
  v6 = (*(*v8 + 88))(v8, a2);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return v6;
}

void sub_29A03CA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03CA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = (*(v2 + 104) + 24 * *(a1 + 40));
  v3 = *v4;
  if (v4[1] - *v4 != 24)
  {
    return 0;
  }

  (*(**v3 + 80))(&v8);
  v6 = (*(*v8 + 96))(v8, a2);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return v6;
}

void sub_29A03CB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A03CB78(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A03CF28(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_29A03CE34(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_29A03CC20(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29A03D1A4(a1, v5);
  }
}

void sub_29A03CCB0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_29A03CCFC(uint64_t result, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    do
    {
      result = sub_29A00AF58(v4, v3 + 4);
      if (!result)
      {
        v9 = (v3 + 4);
        v5 = sub_29A00B038(v4, v3 + 4, &unk_29B4323D2, &v9);
        result = std::string::operator=((v5 + 7), (v3 + 7));
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

void sub_29A03CDC0(void ***a1)
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
        sub_29A03CE34(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_29A03CE34(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A03CCB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A03CE88(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A03CEDC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A03CEDC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_29A03CF28(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v11);
      v5 += v11;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = a1[1] - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v15;
    v19 = a1[2];
    a1[2] = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_29A03D094(v20);
  }
}

void **sub_29A03D094(void **a1)
{
  sub_29A03D0C8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A03D0C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29A03CE34(&v5);
  }
}

void **sub_29A03D11C(void **a1)
{
  sub_29A03D150(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A03D150(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      sub_29A014BEC(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

void sub_29A03D1A4(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19[4] = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * a2);
    v14 = &v12[16 * a2];
    v15 = a1[1] - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v14;
    v18 = a1[2];
    a1[2] = v13;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    sub_29A03D2B0(v19);
  }
}

void **sub_29A03D2B0(void **a1)
{
  sub_29A03D2E4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A03D2E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_29A03D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A03D3AC(a4);
      *a4 = *v5;
      a4[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29A03D3AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A03CCB0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__int128 *sub_29A03D3EC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *sub_29A03D458(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

double Alembic::AbcCoreLayer::v12::ReadArchive::operator()@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  sub_29A0393B0(v4, a1);
  sub_29A03D53C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t *sub_29A03D53C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203DA30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A03D5AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2848F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A03D5C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A03D5F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A03D620(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203DA80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void Alembic::AbcCoreLayer::v12::SetPrune(uint64_t **a1, int a2)
{
  if (a2)
  {
    sub_29A008E78(v5, "prune");
    sub_29A008E78(&__p, "1");
  }

  else
  {
    sub_29A008E78(v5, "prune");
    sub_29A008E78(&__p, "");
  }

  v7 = v5;
  v3 = sub_29A00B038(a1, v5, &unk_29B432502, &v7);
  std::string::operator=((v3 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_29A03D750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcCoreLayer::v12::SetReplace(uint64_t **a1, int a2)
{
  if (a2)
  {
    sub_29A008E78(v5, "replace");
    sub_29A008E78(&__p, "1");
  }

  else
  {
    sub_29A008E78(v5, "replace");
    sub_29A008E78(&__p, "");
  }

  v7 = v5;
  v3 = sub_29A00B038(a1, v5, &unk_29B432502, &v7);
  std::string::operator=((v3 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_29A03D87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::GetIArchiveBounds(Alembic::Abc::v12::IArchive *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Alembic::Abc::v12::IArchive::getTop(a1, v9);
  Alembic::Abc::v12::IObject::getProperties(v9, v10);
  sub_29A008E78(__p, ".childBnds");
  sub_29A03DA60(a4, v10, __p, a2, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v10);
  Alembic::Abc::v12::IObject::~IObject(v9);
}

void sub_29A03D94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v16 - 80));
  Alembic::Abc::v12::IObject::~IObject(&a16);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::CreateOArchiveBounds(Alembic::Abc::v12::OArchive *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Alembic::Abc::v12::OArchive::getTop(a1, v11);
  Alembic::Abc::v12::OObject::getProperties(v11, v12);
  sub_29A008E78(__p, ".childBnds");
  sub_29A03E0DC(a5, v12, __p, a2, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v12);
  Alembic::Abc::v12::OObject::~OObject(v11);
}

void sub_29A03DA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&a22);
  Alembic::Abc::v12::OObject::~OObject(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A03DA60(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *a2;
  *(&v46 + 1) = 0;
  v47[0] = 0;
  *&v46 = &v46 + 8;
  v48 = v10;
  sub_29A019350(v49, &v46);
  v51 = 0;
  v50 = 0u;
  v52 = 1;
  sub_29A01752C(&v46, *(&v46 + 1));
  sub_29A02E010(a4, &v48);
  sub_29A02E010(a5, &v48);
  *a1 = v48;
  v47[34] = a1;
  v47[35] = "ITypedScalarProperty::ITypedScalarProperty()";
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v46);
    v31 = sub_29A00911C(v47, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v31, "ITypedScalarProperty ctor", 25);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v33 = sub_29A008E1C(exception, __p);
    __cxa_throw(v33, &unk_2A203B108, sub_29A008B08);
  }

  v13 = (*(*v12 + 80))(v12, a3);
  v14 = v13;
  if (!v13)
  {
    sub_29A008864(&v46);
    v34 = sub_29A00911C(v47, "Nonexistent scalar property: ", 29);
    v35 = *(a3 + 23);
    if (v35 >= 0)
    {
      v36 = a3;
    }

    else
    {
      v36 = *a3;
    }

    if (v35 >= 0)
    {
      v37 = *(a3 + 23);
    }

    else
    {
      v37 = *(a3 + 8);
    }

    sub_29A00911C(v34, v36, v37);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v38 = __cxa_allocate_exception(0x20uLL);
    v39 = sub_29A008E1C(v38, __p);
    __cxa_throw(v39, &unk_2A203B108, sub_29A008B08);
  }

  v16 = *(v13 + 56) == 11 && *(v13 + 60) == 6 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A03DFEC(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 6;
    v40 = 11;
    v23 = sub_29A00D330(v22, &v40);
    v24 = sub_29A00911C(v23, ",\n...or incorrect match of interpretation: ", 43);
    sub_29A008E78(v42, "interpretation");
    sub_29A02CFB4(v14 + 32, v42, __p);
    if ((v45 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v26 = v45;
    }

    else
    {
      v26 = __p[1];
    }

    v27 = sub_29A00911C(v24, v25, v26);
    v28 = sub_29A00911C(v27, " to expected: ", 14);
    sub_29A00911C(v28, "box", 3);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, __p);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v12 + 88))(&v46, v12, a3);
  v17 = v46;
  v46 = 0uLL;
  v18 = *(a1 + 40);
  *(a1 + 32) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
    if (*(&v46 + 1))
    {
      sub_29A014BEC(*(&v46 + 1));
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (*(&v50 + 1))
  {
    sub_29A014BEC(*(&v50 + 1));
  }

  sub_29A01752C(v49, v49[1]);
  return a1;
}

void sub_29A03DEA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A03DC04);
}

uint64_t sub_29A03DFEC(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v9);
  if (v10 < 0)
  {
    v2 = v9[1] == 3 && *v9[0] == 28514 && *(v9[0] + 2) == 120;
    operator delete(v9[0]);
  }

  else
  {
    v2 = v10 == 3 && LOWORD(v9[0]) == 28514 && BYTE2(v9[0]) == 120;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A03E0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03E0DC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_29A03E1B8(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A03E198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A03E1B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = 0;
  v25[0] = 0;
  v23 = &v24;
  v26 = 2;
  sub_29A019350(v27, &v23);
  v29 = 0;
  v28 = 0u;
  v30 = 1;
  sub_29A01752C(&v23, v24);
  sub_29A02E010(a4, &v26);
  sub_29A02E010(a5, &v26);
  sub_29A02E010(a6, &v26);
  sub_29A02E010(a7, &v26);
  *a1 = v26;
  v25[33] = a1;
  v25[34] = "OTypedScalarProperty::init()";
  if (!*a2)
  {
    sub_29A008864(&v23);
    sub_29A00911C(v25, "NULL CompoundPropertyWriterPtr", 30);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_29A008E1C(exception, __p);
    __cxa_throw(v19, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v23, v27);
  sub_29A008E78(__p, "interpretation");
  sub_29A008E78(&__str, "box");
  v31 = __p;
  v13 = sub_29A00B038(&v23, __p, &unk_29B432503, &v31);
  std::string::operator=((v13 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v28;
  if (*(&v28 + 1))
  {
    atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  if (v14)
  {
    (*(*v15 + 24))(&__str);
    (*(*__str.__r_.__value_.__l.__data_ + 24))(__p);
    (*(*__p[0] + 48))(__p[0], v14);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    if (__str.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__str.__r_.__value_.__l.__size_);
    }

    v15 = *a2;
  }

  __str.__r_.__value_.__s.__data_[4] = 6;
  LODWORD(__str.__r_.__value_.__l.__data_) = 11;
  (*(*v15 + 96))(__p);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = *(a1 + 40);
  *(a1 + 32) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29A01752C(&v23, v24);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  sub_29A01752C(v27, v27[1]);
}

void sub_29A03E50C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A03E458);
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesQuadrics(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_29B432510[a1];
  }
}

BOOL Alembic::AbcGeom::v12::GeometryScopeNumValuesPolygon(unsigned int a1, uint64_t a2)
{
  if (a1 - 2 >= 3)
  {
    return a1 < 2;
  }

  else
  {
    return a2;
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesPointsPolygons(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1)
    {
      return 0;
    }
  }

  else
  {
    a2 = a3;
    if ((a1 - 2) >= 2)
    {
      a2 = a4;
      if (a1 != 4)
      {
        return 0;
      }
    }
  }

  return a2;
}

BOOL Alembic::AbcGeom::v12::GeometryScopeNumValuesPoints(unsigned int a1, uint64_t a2)
{
  if (a1 - 2 >= 3)
  {
    return a1 < 2;
  }

  else
  {
    return a2;
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesSubdivisionMesh(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1)
    {
      return 0;
    }
  }

  else
  {
    a2 = a3;
    if ((a1 - 2) >= 2)
    {
      a2 = a4;
      if (a1 != 4)
      {
        return 0;
      }
    }
  }

  return a2;
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesBilinearPatch(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_29B432510[a1];
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesBicubicPatch(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_29B432538[a1];
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesBilinearPatchMesh(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = 1;
  v6 = (a4 - a5) * (a2 - a3);
  if (a1 != 1)
  {
    v6 = 0;
  }

  if (a1)
  {
    v5 = v6;
  }

  if ((a1 - 2) >= 3)
  {
    return v5;
  }

  else
  {
    return a4 * a2;
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesBicubicPatchMesh(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = a2 - 3;
  v6 = a4 - 3;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 == 1)
    {
      return v6 * v5;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
LABEL_5:
        v5 += a3;
        v6 += a5;
        return v6 * v5;
      case 3:
        return a4 * a2;
      case 4:
        goto LABEL_5;
    }
  }

  return 0;
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesNuPatch(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 == 1)
    {
      return a2 - a3 + 1 + (a2 - a3 + 1) * (a4 - a5);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return (a4 - a5 + 2) * (a2 - a3 + 2);
      case 3:
        return a4 * a2;
      case 4:
        return (a4 - a5 + 2) * (a2 - a3 + 2);
    }
  }

  return 0;
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesLinearCurves(int a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = 1;
  v5 = a4 - (a2 << a3);
  if (a1 != 1)
  {
    v5 = 0;
  }

  if (a1)
  {
    v4 = v5;
  }

  if ((a1 - 2) >= 3)
  {
    return v4;
  }

  else
  {
    return a4;
  }
}

uint64_t Alembic::AbcGeom::v12::GeometryScopeNumValuesCubicCurves(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 == 1)
    {
      a4 -= a2;
      return a4;
    }

    return 0;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      return a4;
    }

    if (a1 != 4)
    {
      return 0;
    }
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  a4 -= v4;
  return a4;
}

void Alembic::AbcGeom::v12::SetIsUV(uint64_t **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_29A008E78(v5, "notUV");
    sub_29A008E78(&__p, "1");
    v7 = v5;
    v3 = sub_29A00B038(a1, v5, &unk_29B432508, &v7);
    std::string::operator=((v3 + 7), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }
}

void sub_29A03E9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Alembic::AbcGeom::v12::isUV(uint64_t a1)
{
  v2 = sub_29A03EAEC(a1 + 32);
  v3 = 0;
  if (!sub_29A03ED68(a1, 0))
  {
    return v3;
  }

  sub_29A008E78(v7, "notUV");
  sub_29A02CFB4(a1 + 32, v7, __p);
  if (v10 < 0)
  {
    if (__p[1] != 1)
    {
      goto LABEL_10;
    }

    v4 = __p[0];
  }

  else
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    v4 = __p;
  }

  if (*v4 == 49)
  {
    v3 = 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_10:
  v3 = v2 == 4 || (v2 & 0xFFFFFFFE) == 2;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  operator delete(__p[0]);
LABEL_18:
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v3;
}

void sub_29A03EAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03EAEC(uint64_t a1)
{
  sub_29A008E78(__p, "geoScope");
  sub_29A02CFB4(a1, __p, &v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    if (v20 == 3 && (*v19 == 28515 ? (v7 = *(v19 + 2) == 110) : (v7 = 0), v7))
    {
      v15 = 0;
      if ((v21 & 0x80) == 0)
      {
        return v15;
      }
    }

    else if (v20)
    {
      if (v20 == 3 && (*v19 == 28277 ? (v8 = *(v19 + 2) == 105) : (v8 = 0), v8))
      {
        v15 = 1;
      }

      else if (v20 == 3 && (*v19 == 24950 ? (v9 = *(v19 + 2) == 114) : (v9 = 0), v9))
      {
        v15 = 2;
        if ((v21 & 0x80) == 0)
        {
          return v15;
        }
      }

      else
      {
        if (v20 != 3 || (*v19 == 29814 ? (v10 = *(v19 + 2) == 120) : (v10 = 0), !v10))
        {
          v6 = v19;
          if (v20 != 3)
          {
            v15 = 127;
LABEL_66:
            operator delete(v6);
            return v15;
          }

          goto LABEL_45;
        }

        v15 = 3;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_65:
    v6 = v19;
    goto LABEL_66;
  }

  if (!v21)
  {
    return 0;
  }

  if (v21 != 3)
  {
    return 127;
  }

  if (v19 == 28515 && BYTE2(v19) == 110)
  {
    return 0;
  }

  if (v19 == 28277 && BYTE2(v19) == 105)
  {
    return 1;
  }

  if (v19 == 24950 && BYTE2(v19) == 114)
  {
    return 2;
  }

  if (v19 == 29814 && BYTE2(v19) == 120)
  {
    return 3;
  }

  v6 = &v19;
LABEL_45:
  v11 = bswap32(*v6 | (v6[2] << 16));
  v12 = v11 >= 0x66767200;
  v13 = v11 > 0x66767200;
  v14 = !v12;
  if (v13 == v14)
  {
    v15 = 4;
  }

  else
  {
    v15 = 127;
  }

  if (v21 < 0)
  {
    goto LABEL_65;
  }

  return v15;
}

void sub_29A03ED4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03ED68(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 != 2)
  {
    if (!v4)
    {
      sub_29A008E78(v19, "podName");
      sub_29A02CFB4(a1 + 32, v19, v21);
      if (v22 < 0)
      {
        if (v21[1] != 9)
        {
          v7 = 0;
LABEL_35:
          operator delete(v21[0]);
LABEL_36:
          if (v20 < 0)
          {
            operator delete(v19[0]);
          }

          return v7;
        }

        v5 = v21[0];
      }

      else
      {
        if (v22 != 9)
        {
          v7 = 0;
          goto LABEL_36;
        }

        v5 = v21;
      }

      v10 = *v5;
      v11 = *(v5 + 8);
      if (v10 == 0x5F323374616F6C66 && v11 == 116)
      {
        sub_29A008E78(v15, "podExtent");
        sub_29A02CFB4(a1 + 32, v15, __p);
        v13 = v18;
        if (v18 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if (atoi(v14) == 2)
        {
          v7 = sub_29A03EF80(a1 + 32, a2);
          v13 = v18;
        }

        else
        {
          v7 = 0;
        }

        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        if ((v22 & 0x80) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v7 = 0;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_35;
    }

    return 0;
  }

  if (*(a1 + 56) != 10 || *(a1 + 60) != 2)
  {
    return 0;
  }

  v8 = a1 + 32;

  return sub_29A03EF80(v8, a2);
}

void sub_29A03EF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A03EF80(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v9);
  if (v10 < 0)
  {
    v2 = v9[1] == 6 && *v9[0] == 1952671094 && *(v9[0] + 2) == 29295;
    operator delete(v9[0]);
  }

  else
  {
    v2 = v10 == 6 && LODWORD(v9[0]) == 1952671094 && WORD2(v9[0]) == 29295;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A03F05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Alembic::AbcGeom::v12::FilmBackXformOp *Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(Alembic::AbcGeom::v12::FilmBackXformOp *this)
{
  *this = 1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = 0;
  sub_29A03FB14(this + 4, 2uLL, &v3);
  return this;
}

void sub_29A03F0D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

int *Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(int *a1, int a2, __int128 *a3)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(a1 + 8, *a3, *(a3 + 1));
    a2 = *a1;
  }

  else
  {
    v4 = *a3;
    *(a1 + 3) = *(a3 + 2);
    *(a1 + 2) = v4;
  }

  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  v5 = (a1 + 8);
  *(a1 + 6) = 0;
  if (a2 == 2)
  {
    v10 = 0;
    sub_29A03FB14(&v11, 9uLL, &v10);
    v7 = *v5;
    if (*v5)
    {
      *(a1 + 5) = v7;
      operator delete(v7);
      *v5 = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
    }

    v8 = v11;
    *(a1 + 2) = v11;
    *(a1 + 6) = v12;
    *v8 = 0x3FF0000000000000;
    v8[4] = 0x3FF0000000000000;
    v8[8] = 0x3FF0000000000000;
  }

  else
  {
    if (a2 == 1)
    {
      v10 = 0;
      sub_29A03FB14(&v11, 2uLL, &v10);
    }

    else
    {
      if (a2)
      {
        return a1;
      }

      v10 = 0x3FF0000000000000;
      sub_29A03FB14(&v11, 2uLL, &v10);
    }

    v6 = *v5;
    if (*v5)
    {
      *(a1 + 5) = v6;
      operator delete(v6);
      *v5 = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
    }

    *(a1 + 2) = v11;
    *(a1 + 6) = v12;
  }

  return a1;
}

void sub_29A03F228(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(uint64_t a1, const std::string *a2)
{
  *(a1 + 8) = 0u;
  v3 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (a2->__r_.__value_.__l.__size_)
    {
      v4 = *a2->__r_.__value_.__l.__data_;
      goto LABEL_6;
    }

LABEL_12:
    *a1 = 1;
    v9 = 0;
    sub_29A03FB14(&v10, 2uLL, &v9);
    goto LABEL_20;
  }

  if (!*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_12;
  }

  v4 = a2->__r_.__value_.__s.__data_[0];
LABEL_6:
  if (v4 == 109)
  {
    *a1 = 2;
    std::string::basic_string(&v10, a2, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v9);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v10;
    v9 = 0;
    sub_29A03FB14(&v10, 9uLL, &v9);
    v5 = *(v3 + 24);
    if (v5)
    {
      *(a1 + 40) = v5;
      operator delete(v5);
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
    }

    v6 = v10.__r_.__value_.__r.__words[0];
    *(a1 + 32) = v10;
    *v6 = 0x3FF0000000000000;
    v6[4] = 0x3FF0000000000000;
    v6[8] = 0x3FF0000000000000;
    return a1;
  }

  if (v4 == 115)
  {
    *a1 = 0;
    std::string::basic_string(&v10, a2, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v9);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v10;
    v9 = 0x3FF0000000000000;
    sub_29A03FB14(&v10, 2uLL, &v9);
  }

  else
  {
    *a1 = 1;
    std::string::basic_string(&v10, a2, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v9);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v10;
    v9 = 0;
    sub_29A03FB14(&v10, 2uLL, &v9);
  }

LABEL_20:
  v7 = *(v3 + 24);
  if (v7)
  {
    *(a1 + 40) = v7;
    operator delete(v7);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
  }

  *(a1 + 32) = v10;
  return a1;
}

void sub_29A03F454(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *Alembic::AbcGeom::v12::FilmBackXformOp::getHint@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[31] < 0)
  {
    return sub_29A008D14(a2, *(this + 1), *(this + 2));
  }

  *a2 = *(this + 8);
  *(a2 + 16) = *(this + 3);
  return this;
}

void *Alembic::AbcGeom::v12::FilmBackXformOp::getTypeAndHint@<X0>(Alembic::AbcGeom::v12::FilmBackXformOp *this@<X0>, void *a2@<X8>)
{
  if (*this > 2u)
  {
    return sub_29A008E78(a2, "");
  }

  else
  {
    return std::operator+<char>();
  }
}

double Alembic::AbcGeom::v12::FilmBackXformOp::getChannelValue(Alembic::AbcGeom::v12::FilmBackXformOp *this, unint64_t a2)
{
  v2 = *(this + 4);
  result = 0.0;
  if (a2 <= (*(this + 5) - v2) >> 3)
  {
    return *(v2 + 8 * a2);
  }

  return result;
}

uint64_t Alembic::AbcGeom::v12::FilmBackXformOp::setChannelValue(uint64_t this, unint64_t a2, double a3)
{
  v3 = *(this + 32);
  if (a2 < (*(this + 40) - v3) >> 3)
  {
    *(v3 + 8 * a2) = a3;
  }

  return this;
}

double Alembic::AbcGeom::v12::FilmBackXformOp::setTranslate(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to set translate on non-translate op.", 49);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(a1 + 32);
  *v2 = *a2;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  return result;
}

void sub_29A03F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

double Alembic::AbcGeom::v12::FilmBackXformOp::setScale(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to set scale on non-scale op.", 41);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(a1 + 32);
  *v2 = *a2;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  return result;
}

void sub_29A03F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

double Alembic::AbcGeom::v12::FilmBackXformOp::setMatrix(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Cannot set non-matrix op from Abc::M33d", 39);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(a1 + 32);
  *v2 = *a2;
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(v2 + 64) = result;
  return result;
}

void sub_29A03F84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

__n128 Alembic::AbcGeom::v12::FilmBackXformOp::getTranslate@<Q0>(Alembic::AbcGeom::v12::FilmBackXformOp *this@<X0>, __n128 *a2@<X8>)
{
  if (*this != 1)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to get translate vector from non-translate op.", 58);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(this + 4);
  result = *v2;
  *a2 = *v2;
  return result;
}

void sub_29A03F928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

__n128 Alembic::AbcGeom::v12::FilmBackXformOp::getScale@<Q0>(Alembic::AbcGeom::v12::FilmBackXformOp *this@<X0>, __n128 *a2@<X8>)
{
  if (*this)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to get scaling vector from non-scale op.", 52);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(this + 4);
  result = *v2;
  *a2 = *v2;
  return result;
}

void sub_29A03FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

double Alembic::AbcGeom::v12::FilmBackXformOp::getMatrix@<D0>(Alembic::AbcGeom::v12::FilmBackXformOp *this@<X0>, uint64_t a2@<X8>)
{
  if (*this != 2)
  {
    sub_29A008864(&v11);
    sub_29A00911C(v12, "Can't get matrix from non-matrix op.", 36);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(this + 4);
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  v4 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v4;
  result = *(v2 + 64);
  *(a2 + 64) = result;
  return result;
}

void sub_29A03FAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void *sub_29A03FB14(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_29B430070)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_29A03FBD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t *Alembic::AbcGeom::v12::CameraSample::CameraSample(int64x2_t *this, double a2, double a3, double a4, double a5)
{
  this[8] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  this[9] = xmmword_29B432560;
  this[10] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  this[11].i64[1] = 0;
  this[12].i64[0] = 0;
  this[11].i64[0] = 0;
  sub_29A03FCA8(this);
  v10 = (a5 - a4) * 0.5;
  v11 = *&this->i64[1];
  v12 = (a2 - a3) * 0.5 * v11 / v10;
  *this[1].i64 = (v10 + a4) * v11 / (v10 + v10);
  *&this[1].i64[1] = v12;
  *this[2].i64 = v11 * (v10 * v12 / v11 + a3) * 0.5;
  *&this[2].i64[1] = v10;
  return this;
}

void sub_29A03FCA8(uint64_t a1)
{
  *a1 = xmmword_29B432570;
  *(a1 + 16) = xmmword_29B432580;
  *(a1 + 32) = xmmword_29B432590;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = xmmword_29B4325A0;
  *(a1 + 96) = xmmword_29B4325B0;
  *(a1 + 112) = xmmword_29B4325C0;
  *(a1 + 128) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 144) = xmmword_29B432560;
  *(a1 + 160) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = a1 + 176;
  v3 = *(a1 + 176);
  for (i = *(a1 + 184); i != v3; sub_29A040990(v2, i))
  {
    i -= 56;
  }

  *(a1 + 184) = v3;
}

double Alembic::AbcGeom::v12::CameraSample::getCoreValue(Alembic::AbcGeom::v12::CameraSample *this, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return *this;
    case 1:
      this = (this + 8);
      break;
    case 2:
      this = (this + 16);
      break;
    case 3:
      this = (this + 24);
      break;
    case 4:
      this = (this + 32);
      break;
    case 5:
      this = (this + 40);
      break;
    case 6:
      this = (this + 48);
      break;
    case 7:
      this = (this + 56);
      break;
    case 8:
      this = (this + 64);
      break;
    case 9:
      this = (this + 72);
      break;
    case 10:
      this = (this + 80);
      break;
    case 11:
      this = (this + 88);
      break;
    case 12:
      this = (this + 96);
      break;
    case 13:
      this = (this + 104);
      break;
    case 14:
      this = (this + 112);
      break;
    case 15:
      this = (this + 120);
      break;
    default:
      sub_29A008864(&v10);
      v4 = sub_29A00911C(v11, "Invalid index specified, must be 0-15 not: ", 43);
      MEMORY[0x29C2C1F00](v4, a2);
      std::stringbuf::str();
      sub_29A008C60(v9, &__p);
      if (v8 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_29A008E1C(exception, v9);
      __cxa_throw(v6, &unk_2A203B108, sub_29A008B08);
  }

  return *this;
}

void sub_29A03FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

long double Alembic::AbcGeom::v12::CameraSample::getFieldOfView(float64x2_t *this)
{
  v1 = vmulq_f64(*this, xmmword_29B4325D0);
  v2 = atan(vdivq_f64(vdupq_laneq_s64(v1, 1), v1).f64[0]);
  return v2 * 57.2957795 + v2 * 57.2957795;
}

double Alembic::AbcGeom::v12::CameraSample::getScreenWindow(Alembic::AbcGeom::v12::CameraSample *this, double *a2, double *a3, double *a4, double *a5)
{
  v9 = *(this + 5);
  v10 = (*(this + 2) + *(this + 2)) * v9 / *(this + 1);
  *a4 = -((*(this + 6) + 1.0) * v9);
  *a5 = (*(this + 7) + 1.0) * *(this + 5);
  v11 = *(this + 1);
  v12 = *(this + 5) * *(this + 3) / v11;
  v13 = (*(this + 4) + *(this + 4)) / v11;
  *a3 = -((*(this + 9) + 1.0) * v12);
  v14 = v12 * (*(this + 8) + 1.0);
  *a2 = v14;
  v15 = *a4;
  v16 = *a5;
  v17 = *a3;
  Alembic::AbcGeom::v12::CameraSample::getFilmBackMatrix(this, &v24);
  v18 = v32 + v14 * v29 + v15 * v26;
  v19 = (v31 + v14 * v28 + v15 * v25) / v18;
  v20 = v32 + v17 * v29 + v16 * v26;
  v21 = (v30 + v17 * v27 + v16 * v24) / v20;
  v22 = (v31 + v17 * v28 + v16 * v25) / v20;
  *a4 = v10 + (v30 + v14 * v27 + v15 * v24) / v18;
  *a2 = v13 + v19;
  *a5 = v10 + v21;
  result = v13 + v22;
  *a3 = v13 + v22;
  return result;
}

void Alembic::AbcGeom::v12::CameraSample::getFilmBackMatrix(Alembic::AbcGeom::v12::CameraSample *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v3 = *(this + 22);
  if (*(this + 23) == v3)
  {
    v29 = 0.0;
    v13 = 1.0;
    v28 = 1.0;
    v25 = 0.0;
    v24 = 1.0;
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1.0;
  v8 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 1.0;
  v12 = 0.0;
  v13 = 1.0;
  do
  {
    v14 = v3 + v5;
    v48 = *(v3 + v5);
    if (*(v3 + v5 + 31) < 0)
    {
      sub_29A008D14(&v49, *(v14 + 8), *(v14 + 16));
    }

    else
    {
      v15 = *(v14 + 8);
      v50 = *(v14 + 24);
      v49 = v15;
    }

    __p = 0;
    v52 = 0;
    v53 = 0;
    sub_29A00C8EC(&__p, *(v3 + v5 + 32), *(v3 + v5 + 40), (*(v3 + v5 + 40) - *(v3 + v5 + 32)) >> 3);
    v36 = v8;
    v37 = v13;
    v34 = v12;
    v35 = v7;
    v32 = v10;
    v33 = v11;
    v31 = v9;
    if (Alembic::AbcGeom::v12::FilmBackXformOp::isMatrixOp(&v48))
    {
      Alembic::AbcGeom::v12::FilmBackXformOp::getMatrix(&v48, &v40);
      v16 = v40.n128_f64[1];
      v17 = v40.n128_f64[0];
      v19 = v41;
      v18 = v42;
      v20 = v43;
      v21 = v44;
      v22 = v45;
      v23 = v46;
      v30 = v47;
      goto LABEL_15;
    }

    if (Alembic::AbcGeom::v12::FilmBackXformOp::isScaleOp(&v48))
    {
      Alembic::AbcGeom::v12::FilmBackXformOp::getScale(&v48, &v40);
      v30 = 1.0;
      v20 = v40.n128_f64[1];
      v17 = v40.n128_f64[0];
      v18 = 0.0;
      v23 = 0.0;
LABEL_13:
      v22 = 0.0;
      goto LABEL_14;
    }

    v18 = 0.0;
    v17 = 1.0;
    if (!Alembic::AbcGeom::v12::FilmBackXformOp::isTranslateOp(&v48))
    {
      v20 = 1.0;
      v23 = 0.0;
      v30 = 1.0;
      goto LABEL_13;
    }

    Alembic::AbcGeom::v12::FilmBackXformOp::getTranslate(&v48, &v40);
    v23 = v40.n128_f64[1];
    v22 = v40.n128_f64[0];
    v20 = 1.0;
    v30 = 1.0;
LABEL_14:
    v21 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
LABEL_15:
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    v24 = v16 * v31 + v17 * v35 + v19 * v38;
    v25 = v16 * v33 + v17 * v32 + v19 * v39;
    v26 = v16 * v34 + v17 * v36 + v19 * v37;
    v27 = v20 * v31 + v18 * v35 + v21 * v38;
    v28 = v20 * v33 + v18 * v32 + v21 * v39;
    v29 = v20 * v34 + v18 * v36 + v21 * v37;
    v38 = v23 * v31 + v22 * v35 + v30 * v38;
    v39 = v23 * v33 + v22 * v32 + v30 * v39;
    ++v6;
    v3 = *(this + 22);
    v5 += 56;
    v8 = v26;
    v9 = v27;
    v7 = v24;
    v13 = v23 * v34 + v22 * v36 + v30 * v37;
    v10 = v25;
    v11 = v28;
    v12 = v29;
  }

  while (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 23) - v3) >> 3));
  *(a2 + 48) = v38;
  *(a2 + 56) = v39;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
LABEL_22:
  *a2 = v24;
  *(a2 + 8) = v25;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 64) = v13;
}

void sub_29A0403BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v34[6] = a17;
  v34[7] = a18;
  v34[2] = a15;
  v34[3] = a10;
  *v34 = a14;
  v34[1] = a11;
  v34[4] = a12;
  v34[5] = a13;
  v34[8] = a16;
  sub_29A040898(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0404A0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A0409E8(a1, a2);
  }

  else
  {
    sub_29A040B34(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *Alembic::AbcGeom::v12::CameraSample::getOp@<X0>(Alembic::AbcGeom::v12::CameraSample *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 22);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 23) - v5) >> 3) <= a2)
  {
    sub_29A008864(&v15);
    v9 = sub_29A00911C(v16, "Invalid index in CameraSample: ", 31);
    MEMORY[0x29C2C1F00](v9, a2);
    std::stringbuf::str();
    sub_29A008C60(v14, &__p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(exception, v14);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  v6 = v5 + 56 * a2;
  *a3 = *v6;
  if (*(v6 + 31) < 0)
  {
    sub_29A008D14((a3 + 8), *(v6 + 8), *(v6 + 16));
  }

  else
  {
    v7 = *(v6 + 8);
    *(a3 + 24) = *(v6 + 24);
    *(a3 + 8) = v7;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return sub_29A00C8EC((a3 + 32), *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 3);
}

void sub_29A040638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::CameraSample::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 176);
  if (*a2 >= (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 184) - v2) >> 3)))
  {
    sub_29A008864(&v11);
    v5 = sub_29A00911C(v12, "Invalid index in CameraSample: ", 31);
    MEMORY[0x29C2C1F00](v5, *a2);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  return v2 + 56 * *a2;
}

{
  v2 = *(a1 + 176);
  if (*a2 >= (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 184) - v2) >> 3)))
  {
    sub_29A008864(&v11);
    v5 = sub_29A00911C(v12, "Invalid index in CameraSample: ", 31);
    MEMORY[0x29C2C1F00](v5, *a2);
    std::stringbuf::str();
    sub_29A008C60(v10, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v10);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  return v2 + 56 * *a2;
}

void sub_29A040760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A040870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A040898(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t Alembic::AbcGeom::v12::CameraSample::getNumOpChannels(Alembic::AbcGeom::v12::CameraSample *this)
{
  v1 = *(this + 22);
  if (*(this + 23) == v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v5 += Alembic::AbcGeom::v12::FilmBackXformOp::getNumChannels((v1 + v3));
    ++v4;
    v1 = *(this + 22);
    v3 += 56;
  }

  while (v4 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 23) - v1) >> 3));
  return v5;
}

void sub_29A040990(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

uint64_t sub_29A0409E8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *(&v16 + 1) = &v7[56 * v6];
  sub_29A040B34(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A040C18(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A040D84(&v14);
  return v13;
}